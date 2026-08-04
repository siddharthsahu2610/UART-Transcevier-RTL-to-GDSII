`timescale 1ns/10ps
//======================================================
// UART Transmitter (UART TX)
// Converts 8-bit parallel data into serial UART data
//======================================================

module uart_tx
#(
    parameter CLKS_PER_BIT = 217
)
(
    input clk,
    input tx_start,
    input [7:0] tx_data,

    output tx,
    output tx_done
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
reg [7:0] baud_cnt      = 0;
reg [2:0] bit_cnt       = 0;
reg [7:0] tx_shift_reg  = 0;

reg tx_reg              = 1'b1;
reg tx_done_reg         = 1'b0;

reg [2:0] state         = STATE_IDLE;

//------------------------------------------------------
// UART Transmitter FSM
//------------------------------------------------------
always @(posedge clk)
begin

    case(state)

    //--------------------------------------------------
    // IDLE STATE
    //--------------------------------------------------
    STATE_IDLE:
    begin
        tx_reg      <= 1'b1;
        tx_done_reg <= 1'b0;
        baud_cnt    <= 0;
        bit_cnt     <= 0;

        if(tx_start == 1'b1)
        begin
            tx_shift_reg <= tx_data;
            state <= STATE_START;
        end
        else
            state <= STATE_IDLE;
    end

    //--------------------------------------------------
    // START BIT
    //--------------------------------------------------
    STATE_START:
    begin
        tx_reg <= 1'b0;

        if(baud_cnt < CLKS_PER_BIT-1)
        begin
            baud_cnt <= baud_cnt + 1;
            state <= STATE_START;
        end
        else
        begin
            baud_cnt <= 0;
            state <= STATE_DATA;
        end
    end

    //--------------------------------------------------
    // DATA BITS
    //--------------------------------------------------
    STATE_DATA:
    begin
        tx_reg <= tx_shift_reg[bit_cnt];

        if(baud_cnt < CLKS_PER_BIT-1)
        begin
            baud_cnt <= baud_cnt + 1;
            state <= STATE_DATA;
        end
        else
        begin
            baud_cnt <= 0;
            if(bit_cnt < 7)
            begin
                bit_cnt <= bit_cnt + 1;
                state <= STATE_DATA;
            end
            else
            begin
                bit_cnt <= 0;
                state <= STATE_STOP;
            end
        end
    end

    //--------------------------------------------------
    // STOP BIT
    //--------------------------------------------------
    STATE_STOP:
    begin
        tx_reg <= 1'b1;
        if(baud_cnt < CLKS_PER_BIT-1)
        begin
            baud_cnt <= baud_cnt + 1;
            state <= STATE_STOP;
        end
        else
        begin
            baud_cnt <= 0;
            tx_done_reg <= 1'b1;
            state <= STATE_CLEANUP;
        end
    end

    //--------------------------------------------------
    // CLEANUP
    //--------------------------------------------------
    STATE_CLEANUP:
    begin
        tx_done_reg <= 1'b0;
        state <= STATE_IDLE;
    end

    //--------------------------------------------------
    // DEFAULT
    //--------------------------------------------------
    default:
        state <= STATE_IDLE;
    endcase
end

//------------------------------------------------------
// Output Assignments
//------------------------------------------------------
assign tx      = tx_reg;
assign tx_done = tx_done_reg;

endmodule

