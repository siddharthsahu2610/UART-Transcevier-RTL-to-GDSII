`timescale 1ns/1ps
//======================================================
// UART Receiver (UART RX)
// Receives serial UART data and converts it into
// an 8-bit parallel output.
//======================================================

module uart_rx
#(
    parameter CLKS_PER_BIT = 217
)
(
    input        clk,          // System Clock
    input        rx,           // Serial UART Input

    output       rx_valid,     // High when one byte is received
    output [7:0] rx_data       // Received 8-bit Data
);

//------------------------------------------------------
// FSM State Encoding
//------------------------------------------------------
parameter STATE_IDLE    = 3'b000;
parameter STATE_START   = 3'b001;
parameter STATE_DATA    = 3'b010;
parameter STATE_STOP    = 3'b011;
parameter STATE_CLEANUP = 3'b100;

//------------------------------------------------------
// Internal Registers
//------------------------------------------------------
reg [7:0] baud_cnt     = 0;      // Counts clock cycles for one UART bit
reg [2:0] bit_cnt      = 0;      // Counts received data bits (0-7)
reg [7:0] rx_shift_reg = 0;      // Stores received byte
reg       rx_valid_reg = 0;      // Internal valid signal
reg [2:0] state        = 0;      // Current FSM state

//------------------------------------------------------
// UART Receiver State Machine
//------------------------------------------------------
always @(posedge clk)
begin

    case(state)

    //--------------------------------------------------
    // IDLE STATE
    //--------------------------------------------------
    STATE_IDLE:
    begin
        rx_valid_reg <= 1'b0;
        baud_cnt     <= 0;
        bit_cnt      <= 0;

        if(rx == 1'b0)
            state <= STATE_START;
        else
            state <= STATE_IDLE;
    end

    //--------------------------------------------------
    // START BIT DETECTION
    //--------------------------------------------------
    STATE_START:
    begin
        if(baud_cnt == (CLKS_PER_BIT-1)/2)
        begin
            if(rx == 1'b0)
            begin
                baud_cnt <= 0;
                state    <= STATE_DATA;
            end
            else
                state <= STATE_IDLE;
        end
        else
        begin
            baud_cnt <= baud_cnt + 1;
            state    <= STATE_START;
        end
    end

    //--------------------------------------------------
    // RECEIVE DATA BITS
    //--------------------------------------------------
    STATE_DATA:
    begin
        if(baud_cnt < CLKS_PER_BIT-1)
        begin
            baud_cnt <= baud_cnt + 1;
            state    <= STATE_DATA;
        end
        else
        begin
            baud_cnt <= 0;

            // Store received bit (LSB First)
            rx_shift_reg[bit_cnt] <= rx;

            if(bit_cnt < 7)
            begin
                bit_cnt <= bit_cnt + 1;
                state   <= STATE_DATA;
            end
            else
            begin
                bit_cnt <= 0;
                state   <= STATE_STOP;
            end
        end
    end

    //--------------------------------------------------
    // STOP BIT
    //--------------------------------------------------
    STATE_STOP:
    begin
        if(baud_cnt < CLKS_PER_BIT-1)
        begin
            baud_cnt <= baud_cnt + 1;
            state    <= STATE_STOP;
        end
        else
        begin
            rx_valid_reg <= 1'b1;
            baud_cnt     <= 0;
            state        <= STATE_CLEANUP;
        end
    end

    //--------------------------------------------------
    // CLEANUP STATE
    //--------------------------------------------------
    STATE_CLEANUP:
    begin
        rx_valid_reg <= 1'b0;
        state <= STATE_IDLE;
    end

    //--------------------------------------------------
    // DEFAULT STATE
    //--------------------------------------------------
    default:
        state <= STATE_IDLE;

    endcase

end

//------------------------------------------------------
// Output Assignments
//------------------------------------------------------
assign rx_valid = rx_valid_reg;
assign rx_data  = rx_shift_reg;

endmodule

