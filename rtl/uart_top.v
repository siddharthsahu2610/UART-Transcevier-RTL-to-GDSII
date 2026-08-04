`timescale 1ns/1ps

module uart_top #(
    parameter CLKS_PER_BIT = 217
)(
    input  wire       clk,

    // Serial Pins
    input  wire       rx_pin,
    output wire       tx_pin,

    // Control
    input  wire       loopback_en, // 1 = Direct internal RX-TX loopback

    // Transmitter Interface
    input  wire       tx_start,
    input  wire [7:0] tx_data,
    output wire       tx_done,

    // Receiver Interface
    output wire       rx_valid,
    output wire [7:0] rx_data
);

    wire internal_rx_pin;
    wire internal_tx_pin;

    assign internal_rx_pin = loopback_en ? internal_tx_pin : rx_pin;
    assign tx_pin          = internal_tx_pin;

    uart_tx #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) u_tx (
        .clk     (clk),
        .tx_start(tx_start),
        .tx_data (tx_data),
        .tx      (internal_tx_pin),
        .tx_done (tx_done)
    );

    uart_rx #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) u_rx (
        .clk     (clk),
        .rx      (internal_rx_pin),
        .rx_valid(rx_valid),
        .rx_data (rx_data)
    );

endmodule

