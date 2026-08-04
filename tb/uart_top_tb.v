`timescale 1ns/1ps

module uart_top_tb;

    reg        clk;
    reg        rx_pin;
    wire       tx_pin;
    reg        loopback_en;

    reg        tx_start;
    reg  [7:0] tx_data;
    wire       tx_done;

    wire       rx_valid;
    wire [7:0] rx_data;

    integer pass_count = 0;
    integer fail_count = 0;

    // Instantiate Top Module with small CLKS_PER_BIT=16 for fast simulation
    uart_top #(
        .CLKS_PER_BIT(16)
    ) dut (
        .clk        (clk),
        .rx_pin     (rx_pin),
        .tx_pin     (tx_pin),
        .loopback_en(loopback_en),
        .tx_start   (tx_start),
        .tx_data    (tx_data),
        .tx_done    (tx_done),
        .rx_valid   (rx_valid),
        .rx_data    (rx_data)
    );

    // Clock Generation (50 MHz -> Period 20 ns)
    always #10 clk = ~clk;

    // Dump VCD trace for GTKWave
    initial begin
        $dumpfile("sim/uart_trace.vcd");
        $dumpvars(0, uart_top_tb);
    end

    // Task to transmit a byte and verify reception via loopback
    task send_and_verify(input [7:0] data_in);
        begin
            @(posedge clk);
            tx_data  <= data_in;
            tx_start <= 1'b1;
            @(posedge clk);
            tx_start <= 1'b0;

            // Wait for receiver to complete capture
            wait(rx_valid);
            @(posedge clk);

            if (rx_data === data_in) begin
                $display("[PASS] Sent: 0x%h | Received: 0x%h", data_in, rx_data);
                pass_count = pass_count + 1;
            end else begin
                $display("[FAIL] Sent: 0x%h | Received: 0x%h", data_in, rx_data);
                fail_count = fail_count + 1;
            end

            repeat(20) @(posedge clk);
        end
    endtask

    // Main Simulation Stimulus
    initial begin
        clk         = 0;
        rx_pin      = 1'b1; // Idle state for serial line
        loopback_en = 1'b1; // Enable internal TX -> RX loopback
        tx_start    = 1'b0;
        tx_data     = 8'h00;

        #100;

        $display("\n==================================================");
        $display("   STARTING UART TRANSCEIVER TESTBENCH           ");
        $display("==================================================\n");

        send_and_verify(8'hA5);
        send_and_verify(8'h5A);
        send_and_verify(8'hFF);
        send_and_verify(8'h3C);

        #500;
        $display("\n==================================================");
        $display("  VERIFICATION COMPLETE                           ");
        $display("  PASSED: %0d | FAILED: %0d                          ", pass_count, fail_count);
        $display("==================================================\n");

        if (fail_count == 0)
            $display(">> TEST RESULT: SUCCESS <<\n");
        else
            $display(">> TEST RESULT: FAILURE <<\n");

        $finish;
    end

endmodule

