`timescale 1ns/1ps

module uart_gate_tb;

    // ============================================================
    // DUT Signals
    // ============================================================

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


    // ============================================================
    // Synthesized UART DUT
    //
    // CLKS_PER_BIT has already been resolved during synthesis.
    // Therefore, no parameter is passed here.
    // ============================================================

    uart_top dut (
        .clk         (clk),
        .rx_pin      (rx_pin),
        .tx_pin      (tx_pin),
        .loopback_en (loopback_en),
        .tx_start    (tx_start),
        .tx_data     (tx_data),
        .tx_done     (tx_done),
        .rx_valid    (rx_valid),
        .rx_data     (rx_data)
    );


    // ============================================================
    // Clock Generation
    //
    // 50 MHz clock
    // Period = 20 ns
    // ============================================================

    initial begin
        clk = 1'b0;

        forever #10 clk = ~clk;
    end


    // ============================================================
    // Gate-Level Waveform Dump
    // ============================================================

    initial begin
        $dumpfile("waves/gate_uart_trace.vcd");
        $dumpvars(0, uart_gate_tb);
    end


    // ============================================================
    // Global Simulation Timeout
    //
    // Prevents indefinite simulation if the DUT or testbench
    // becomes stuck.
    // ============================================================

    initial begin

        #1_000_000;

        $display("");
        $display("================================================");
        $display("       GATE-LEVEL SIMULATION TIMEOUT");
        $display("================================================");

        $display("TX_DONE  = %b", tx_done);
        $display("RX_VALID = %b", rx_valid);
        $display("TX_PIN   = %b", tx_pin);
        $display("RX_PIN   = %b", rx_pin);
        $display("TX_DATA  = 0x%02h", tx_data);
        $display("RX_DATA  = 0x%02h", rx_data);

        $display("PASS COUNT : %0d", pass_count);
        $display("FAIL COUNT : %0d", fail_count);

        $display("================================================");

        $finish;
    end


    // ============================================================
    // UART Transmission and Verification Task
    // ============================================================

    task transmit_and_check;

        input [7:0] data_in;

        begin

            // ----------------------------------------------------
            // Load transmit data
            // ----------------------------------------------------

            tx_data  = data_in;
            tx_start = 1'b1;


            // ----------------------------------------------------
            // Start transmission
            // ----------------------------------------------------

            @(posedge clk);

            tx_start = 1'b0;


            $display(
                "[INFO] Started TX: 0x%02h at time %0t ns",
                data_in,
                $time
            );


            // ----------------------------------------------------
            // Wait for receiver to complete reception
            //
            // RX_VALID occurs before TX_DONE because the receiver
            // recognizes the stop bit before the transmitter
            // completes its entire stop-bit interval.
            // ----------------------------------------------------

            wait (rx_valid == 1'b1);


            $display(
                "[INFO] RX_VALID for 0x%02h at time %0t ns",
                data_in,
                $time
            );


            // ----------------------------------------------------
            // Verify received data
            // ----------------------------------------------------

            if (rx_data == data_in) begin

                pass_count = pass_count + 1;

                $display(
                    "[PASS] TX = 0x%02h | RX = 0x%02h",
                    data_in,
                    rx_data
                );

            end
            else begin

                fail_count = fail_count + 1;

                $display(
                    "[FAIL] TX = 0x%02h | RX = 0x%02h",
                    data_in,
                    rx_data
                );

            end


            // ----------------------------------------------------
            // Wait for transmitter completion
            // ----------------------------------------------------

            wait (tx_done == 1'b1);


            $display(
                "[INFO] TX_DONE for 0x%02h at time %0t ns",
                data_in,
                $time
            );


            // ----------------------------------------------------
            // Allow RX valid and TX done to return low before
            // beginning the next transaction.
            // ----------------------------------------------------

            @(posedge clk);

            @(posedge clk);

        end

    endtask


    // ============================================================
    // Main Test Sequence
    // ============================================================

    initial begin

        // --------------------------------------------------------
        // Initial UART conditions
        // --------------------------------------------------------

        rx_pin      = 1'b1;
        loopback_en = 1'b1;

        tx_start = 1'b0;
        tx_data  = 8'h00;


        // --------------------------------------------------------
        // Allow synthesized design to settle
        // --------------------------------------------------------

        repeat (5) @(posedge clk);


        // --------------------------------------------------------
        // Test Header
        // --------------------------------------------------------

        $display("");
        $display("================================================");
        $display("       UART GATE-LEVEL SIMULATION TEST");
        $display("================================================");
        $display("");


        // --------------------------------------------------------
        // Test Vector 1
        // --------------------------------------------------------

        transmit_and_check(8'h55);


        // --------------------------------------------------------
        // Test Vector 2
        // --------------------------------------------------------

        transmit_and_check(8'hA5);


        // --------------------------------------------------------
        // Test Vector 3
        // --------------------------------------------------------

        transmit_and_check(8'h3C);


        // --------------------------------------------------------
        // Test Vector 4
        // --------------------------------------------------------

        transmit_and_check(8'hF0);


        // --------------------------------------------------------
        // Test Vector 5
        // --------------------------------------------------------

        transmit_and_check(8'h00);


        // --------------------------------------------------------
        // Test Vector 6
        // --------------------------------------------------------

        transmit_and_check(8'hFF);


        // --------------------------------------------------------
        // Final Verification Summary
        // --------------------------------------------------------

        $display("");
        $display("================================================");
        $display("              TEST SUMMARY");
        $display("================================================");

        $display("PASS COUNT : %0d", pass_count);
        $display("FAIL COUNT : %0d", fail_count);

        if (fail_count == 0) begin

            $display("");
            $display(">> GATE-LEVEL TEST RESULT: SUCCESS <<");
            $display("");

        end
        else begin

            $display("");
            $display(">> GATE-LEVEL TEST RESULT: FAILURE <<");
            $display("");

        end

        $display("================================================");
        $display("");


        // --------------------------------------------------------
        // End simulation
        // --------------------------------------------------------

        $finish;

    end

endmodule

