PROJECT_DIR = $(shell pwd)

# ============================================================
# RTL SOURCES
# ============================================================

RTL_SRCS = $(PROJECT_DIR)/rtl/uart_rx.v \
           $(PROJECT_DIR)/rtl/uart_tx.v \
           $(PROJECT_DIR)/rtl/uart_top.v

# ============================================================
# TESTBENCH SOURCES
# ============================================================

RTL_TB  = $(PROJECT_DIR)/tb/uart_top_tb.v
RTL_CPP = $(PROJECT_DIR)/tb/sim_main.cpp

GATE_TB  = $(PROJECT_DIR)/tb/uart_gate_tb.v
GATE_CPP = $(PROJECT_DIR)/tb/sim_gate_main.cpp

# ============================================================
# SYNTHESIS
# ============================================================

SYNTH_SCRIPT  = $(PROJECT_DIR)/scripts/synth.ys
SYNTH_NETLIST = $(PROJECT_DIR)/synth/synth_uart_top.v

# ============================================================
# VERILATOR OPTIONS
# ============================================================

VERILATOR_COMMON = --timing --trace -Wall \
                   --Wno-fatal \
                   -Wno-DECLFILENAME \
                   -Wno-TIMESCALEMOD \
                   -Wno-UNUSEDSIGNAL \
                   -Wno-PROCASSINIT \
                   -Wno-INITIALDLY

VERILATOR_INCLUDES = -I$(PROJECT_DIR)/rtl \
                     -I$(PROJECT_DIR)/tb

# ============================================================
# DEFAULT TARGET
# ============================================================

.PHONY: all sim synth gate wave clean

all: sim

# ============================================================
# RTL FUNCTIONAL SIMULATION
# ============================================================

sim:
	@mkdir -p sim waves
	@echo ""
	@echo "================================================"
	@echo "          RTL FUNCTIONAL SIMULATION"
	@echo "================================================"
	@echo ""

	verilator $(VERILATOR_COMMON) \
	          --cc --exe \
	          $(VERILATOR_INCLUDES) \
	          $(RTL_SRCS) \
	          $(RTL_TB) \
	          $(RTL_CPP) \
	          --top-module uart_top_tb

	make -C obj_dir -f Vuart_top_tb.mk Vuart_top_tb

	./obj_dir/Vuart_top_tb

# ============================================================
# LOGIC SYNTHESIS
# ============================================================

synth:
	@mkdir -p synth reports
	@echo ""
	@echo "================================================"
	@echo "             YOSYS LOGIC SYNTHESIS"
	@echo "================================================"
	@echo ""

	yosys $(SYNTH_SCRIPT) | tee reports/yosys.log

# ============================================================
# GATE-LEVEL FUNCTIONAL SIMULATION
# ============================================================

gate:
	@mkdir -p waves
	@echo ""
	@echo "================================================"
	@echo "       GATE-LEVEL FUNCTIONAL SIMULATION"
	@echo "================================================"
	@echo ""

	@if [ ! -f "$(SYNTH_NETLIST)" ]; then \
		echo "ERROR: Synthesized netlist not found."; \
		echo "Run 'make synth' first."; \
		exit 1; \
	fi

	verilator $(VERILATOR_COMMON) \
	          --cc --exe \
	          $(VERILATOR_INCLUDES) \
	          $(SYNTH_NETLIST) \
	          $(GATE_TB) \
	          $(GATE_CPP) \
	          --top-module uart_gate_tb

	make -C obj_dir -f Vuart_gate_tb.mk Vuart_gate_tb

	./obj_dir/Vuart_gate_tb

# ============================================================
# WAVEFORM VIEWER
# ============================================================

wave:
	@echo "Opening gate-level waveform..."
	gtkwave waves/gate_uart_trace.vcd &

# ============================================================
# CLEAN BUILD ARTIFACTS
# ============================================================

clean:
	@echo "Cleaning generated build files..."

	rm -rf obj_dir
	rm -rf sim

	rm -f waves/*.vcd
	rm -f waves/*.fst
	rm -f waves/*.gtkw

	rm -f reports/*.log

# ============================================================
# HELP
# ============================================================

help:
	@echo ""
	@echo "UART Transceiver Build System"
	@echo ""
	@echo "Available targets:"
	@echo ""
	@echo "  make sim       - Run RTL functional simulation"
	@echo "  make synth     - Run Yosys logic synthesis"
	@echo "  make gate      - Run gate-level functional simulation"
	@echo "  make wave      - Open gate-level waveform"
	@echo "  make clean     - Remove generated build artifacts"
	@echo "  make help      - Display this help message"
	@echo ""

