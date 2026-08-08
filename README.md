# Synthesizable UART Transceiver: RTL to GDSII ASIC Flow

This repository contains the full digital ASIC implementation of a synthesizable Universal Asynchronous Receiver-Transmitter (UART) transceiver. The design transitions from behavioral Verilog Register-Transfer Level (RTL) through logic synthesis, static timing signoff, and automated physical design using OpenLane, targeting the SkyWater 130nm (SKY130) open-source Process Design Kit (PDK).

---

## 1. Executive Summary

* **Target PDK:** SkyWater 130nm High Density Standard Cell Library (`sky130_fd_sc_hd`)
* **Clock Frequency:** 50 MHz (20 ns Period)
* **Design Core Utilization:** 30%
* **Total Standard Cell Count:** ~211 cells (47 D-Flip-Flops)
* **EDA Tools Used:** Yosys (Synthesis), OpenROAD (P&R/CTS), OpenSTA (Timing), Magic/KLayout (DRC/GDS), Netgen (LVS)
* **Final Signoff Status:** Passed DRC, LVS, Antenna, ERC/CVC, and Post-Route Setup/Hold STA with 0 zero-slack violations.

---

## 2. ASIC Design Flow Overview

1. **RTL Design & Functional Verification**
* Transceiver functional modelling (`uart_tx.v`, `uart_rx.v`, `uart_top.v`).
* Behavioral testbench verification (`sim_main.cpp`, `uart_top_tb.v`) to confirm protocol timing and frame integrity.


2. **Logic Synthesis & Technology Mapping**
* Inferred flip-flops, multiplexers, and state machine (FSM) optimization using Yosys.
* Mapping generic Boolean logic into target `sky130_fd_sc_hd` library primitives.
* Functional Gate-Level Simulation (GLS) to confirm post-synthesis functional equivalence.


3. **Pre-Layout Static Timing Analysis (STA)**
* Verification against Synopsys Design Constraints (SDC) using OpenSTA and Liberty delay models (`.lib`).
* Baseline verification for Worst Negative Slack (WNS) and Total Negative Slack (TNS).


4. **Physical Design (OpenLane Flow)**
* **Floorplanning & PDN:** Core area definition, aspect ratio setup, and Power Distribution Network generation.
* **Placement:** Global and detailed cell placement with target cell density constraints.
* **Clock Tree Synthesis (CTS):** Clock buffer insertion to balance skew and control propagation latency.
* **Routing:** Global and detailed routing of signal and clock networks.


5. **Parasitic Extraction & Physical Signoff**
* Parasitic RC extraction (SPEF) from final layout geometries.
* Post-route STA with actual interconnect delays and Standard Delay Format (SDF) back-annotation.
* Physical signoff: Design Rule Checking (DRC), Layout Versus Schematic (LVS), Antenna rule checking, and GDSII XOR verification.



---

## 3. Physical Implementation Data & Signoff Metrics

### Post-Route Timing Signoff

* **Setup Slack:** Passed (0 Violations, Positive Margin)
* **Hold Slack:** Passed (0 Violations, Positive Margin)
* **Max Slew Violations:** 0
* **Max Capacitance Violations:** 0
* **Max Fanout Warnings:** 3 (Internal clock buffer pins exceeding fanout threshold limit of 10)

### Physical Signoff Verification

* **DRC Violations (Magic / KLayout):** 0
* **LVS Errors (Netgen):** 0
* **Antenna Violations:** 0
* **ERC / CVC Checks:** 0 Errors
* **GDS XOR Differences:** 0

---

## 4. Repository Structure

```text
uart_transceiver/
|-- Makefile
|-- README.md
|-- rtl/
|   |-- uart_rx.v
|   |-- uart_tx.v
|   `-- uart_top.v
|-- tb/
|   |-- sim_main.cpp
|   |-- sim_gate_main.cpp
|   |-- uart_top_tb.v
|   `-- uart_gate_tb.v
|-- scripts/
|   |-- synth.ys
|   |-- synth_sky130.ys
|   |-- uart_top.sdc
|   `-- run_sta.tcl
|-- synth/
|   |-- synth_uart_top.v
|   `-- uart_sky130.v
|-- reports/
|   `-- final/
`-- physical_design/
    |-- def/uart_top.def
    |-- gds/uart_top.gds
    |-- lef/uart_top.lef
    |-- sdf/
    |   |-- uart_top.sdf
    |   `-- uart_top.Typical.sdf
    |-- spef/
    |   |-- uart_top.nom.spef
    |   `-- uart_top.spef
    `-- verilog/
        |-- uart_top.nl.v
        `-- uart_top.v

```

---

## 5. Artifact Deliverables Description

* **GDSII (`physical_design/gds/`):** The final stream format file representing physical mask layout data ready for fabrication.
* **DEF (`physical_design/def/`):** Physical placement and routing representation of all standard cells and nets.
* **LEF (`physical_design/lef/`):** Abstracted block view containing boundary, pin locations, and metal blockage data.
* **SPEF (`physical_design/spef/`):** Standard Parasitic Exchange Format file containing extracted wire resistance and capacitance values.
* **SDF (`physical_design/sdf/`):** Standard Delay Format file containing delay annotations for post-layout gate-level timing simulation.
* **Structural Verilog (`physical_design/verilog/`):** Gate-level netlists reflecting post-implementation power, ground, and clock-tree modifications.

---

## 6. Documented Limitations

1. **Clock Buffer Fanout Warnings:** Three internal clock-buffer outputs (`clkbuf_2_1__f_clk/X`, `clkbuf_2_2__f_clk/X`, `clkbuf_2_3__f_clk/X`) drive a fanout load of 11 to 13 cells against a target maximum limit of 10. These warnings do not cause functional or timing violations.
2. **PDN Scaling:** Power network generation scaled back grid complexity due to small physical core area boundaries.
3. **IR-Drop Analysis:** Run without localized voltage source maps (`VSRC_LOC_FILES`); output static estimates serve as generalized approximations.
