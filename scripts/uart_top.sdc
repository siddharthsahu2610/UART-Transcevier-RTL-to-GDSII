# ============================================================
# UART Transceiver - Pre-Layout Static Timing Constraints
# SKY130 / OpenSTA
# ============================================================

# System clock: 50 MHz
create_clock -name clk -period 20.0 [get_ports clk]

# Clock uncertainty
set_clock_uncertainty 0.2 [get_clocks clk]

# External input timing assumptions
set_input_delay 1.0 -clock clk [get_ports tx_start]
set_input_delay 1.0 -clock clk [get_ports tx_data]
set_input_delay 1.0 -clock clk [get_ports loopback_en]

# UART RX is asynchronous to clk.
# It is intentionally not constrained as a synchronous data input.

# External output timing assumptions
set_output_delay 1.0 -clock clk [get_ports tx_pin]
set_output_delay 1.0 -clock clk [get_ports tx_done]
set_output_delay 1.0 -clock clk [get_ports rx_valid]
set_output_delay 1.0 -clock clk [get_ports rx_data]
