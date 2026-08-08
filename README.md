# UART-Transcevier-RTL-to-GDSII
# UART Transceiver — RTL to Gate-Level Implementation

A synthesizable UART transceiver designed in Verilog RTL and taken through functional verification, logic synthesis, gate-level netlist generation, and post-synthesis gate-level simulation (GLS).

The project demonstrates a complete digital-design ASIC flow from behavioral RTL through synthesized gate-level hardware verification.

---

## 1. Project Overview

UART (Universal Asynchronous Receiver/Transmitter) is a serial communication protocol commonly used for low-speed asynchronous communication between digital systems.

This project implements:
- **UART Transmitter (TX):** Parallel-to-serial conversion with configurable baud rate.
- **UART Receiver (RX):** Serial-to-parallel conversion with mid-bit sampling and start-bit verification.
- **Top-Level Integration:** Integrated TX and RX with an internal loopback multiplexer.
- **Self-Checking RTL Testbench:** C++ driven testbench using Verilator for automated PASS/FAIL reporting.
- **Logic Synthesis:** Yosys-based elaboration, Boolean optimization, and technology mapping.
- **Gate-Level Netlist Generation:** Flat structural netlist output using primitive logic elements.
- **Gate-Level Simulation (GLS):** Functional equivalence verification of the synthesized netlist.
- **Waveform Analysis:** VCD trace generation and inspection via GTKWave.

---

## 2. Theoretical Background & Context

### 2.1 The Role of Gate-Level Simulation (GLS)
In modern digital IC design, RTL verification proves that a *behavioral model* is algorithmically correct. However, silicon is manufactured from physical logic gates (`NAND`, `NOR`, `DFF`), not high-level constructs (`if-else`, `case`).

### 2.2 RTL vs. Gate Netlist Structural Changes
When Yosys transforms RTL (uart_top.v) into a gate netlist (synth_uart_top.v), structural transformations occur:
- Elimination of Procedural Blocks: High-level abstractions like always @(posedge clk) and state variables are converted into explicit combinational logic clouds driving edge-triggered D Flip-Flops.
- Flattening and Variable Renaming: Module boundaries (uart_tx and uart_rx) are flattened into a single top-level design, with internal signals mapped to auto-generated net names (e.g., _0421_).
- Optimized Boolean Topologies: Logic expressions are rewritten to minimize area and gate count, merging simple assignments into complex primitive gates (AOI/OAI/NAND/NOR).


GNU Make: Build system automation
Git: Distributed revision control
