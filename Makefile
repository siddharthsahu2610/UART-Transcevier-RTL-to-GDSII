PROJECT_DIR = $(shell pwd)

RTL_SRCS    = $(PROJECT_DIR)/rtl/uart_rx.v \
              $(PROJECT_DIR)/rtl/uart_tx.v \
              $(PROJECT_DIR)/rtl/uart_top.v

TB_SRC      = $(PROJECT_DIR)/tb/uart_top_tb.v
CPP_MAIN    = $(PROJECT_DIR)/tb/sim_main.cpp

SYNTH_NETLIST = $(PROJECT_DIR)/synth/synth_uart_top.v

VERILATOR_FLAGS = -Wall --timing --trace -cc --exe \
                  -I$(PROJECT_DIR)/rtl -I$(PROJECT_DIR)/tb \
                  -Wno-DECLFILENAME \
                  -Wno-UNUSEDSIGNAL \
                  -Wno-PROCASSINIT \
                  -Wno-INITIALDLY

.PHONY: all sim synth wave clean

all: sim

# ----------------------------------------------------
# RTL Simulation
# ----------------------------------------------------
sim:
	@mkdir -p sim
	@echo "=== RTL Simulation ==="
	verilator $(VERILATOR_FLAGS) $(RTL_SRCS) $(TB_SRC) $(CPP_MAIN) --top-module uart_top_tb
	make -C obj_dir -f Vuart_top_tb.mk Vuart_top_tb
	./obj_dir/Vuart_top_tb

# ----------------------------------------------------
# Logic Synthesis
# ----------------------------------------------------
synth:
	@mkdir -p synth reports
	@echo "=== Running Yosys Synthesis ==="
	yosys scripts/synth.ys | tee reports/yosys.log

# ----------------------------------------------------
# View Waveforms
# ----------------------------------------------------
wave:
	gtkwave sim/uart_trace.vcd &

# ----------------------------------------------------
# Clean Generated Files
# ----------------------------------------------------
clean:
	rm -rf obj_dir sim
	rm -f reports/*.log
	rm -f synth/*.v

