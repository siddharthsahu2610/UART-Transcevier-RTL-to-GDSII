PROJECT_DIR = $(shell pwd)

RTL_SRCS    = $(PROJECT_DIR)/rtl/uart_rx.v \
              $(PROJECT_DIR)/rtl/uart_tx.v \
              $(PROJECT_DIR)/rtl/uart_top.v
TB_SRC      = $(PROJECT_DIR)/tb/uart_top_tb.v
CPP_MAIN    = $(PROJECT_DIR)/tb/sim_main.cpp

VERILATOR_FLAGS = -Wall --timing --trace -cc --exe \
                  -I$(PROJECT_DIR)/rtl -I$(PROJECT_DIR)/tb \
                  -Wno-DECLFILENAME \
                  -Wno-UNUSEDSIGNAL \
                  -Wno-PROCASSINIT \
                  -Wno-INITIALDLY

.PHONY: all sim wave clean

all: sim

sim:
	@mkdir -p sim
	@echo "--- Compiling with Verilator ---"
	verilator $(VERILATOR_FLAGS) $(RTL_SRCS) $(TB_SRC) $(CPP_MAIN) --top-module uart_top_tb
	@echo "--- Building C++ Executable ---"
	make -C obj_dir -f Vuart_top_tb.mk Vuart_top_tb
	@echo "--- Running Verilator Simulation ---"
	./obj_dir/Vuart_top_tb

wave:
	gtkwave sim/uart_trace.vcd &

clean:
	rm -rf obj_dir sim

