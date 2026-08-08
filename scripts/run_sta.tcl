# ============================================================
# UART Transceiver - OpenSTA Pre-Layout STA
# ============================================================

read_liberty /home/siddharthsahu2610/.ciel/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

read_verilog synth/uart_sky130.v

link_design uart_top

read_sdc scripts/uart_top.sdc

puts "=============================================="
puts " UART PRE-LAYOUT STATIC TIMING ANALYSIS"
puts "=============================================="

report_checks -path_delay max -fields {slew cap input_pins fanout} -digits 3

puts "=============================================="
puts " HOLD TIMING"
puts "=============================================="

report_checks -path_delay min -fields {slew cap input_pins fanout} -digits 3

puts "=============================================="
puts " WORST SLACK"
puts "=============================================="

report_worst_slack -max
report_worst_slack -min

puts "=============================================="
puts " TNS / WNS"
puts "=============================================="

report_tns
report_wns
