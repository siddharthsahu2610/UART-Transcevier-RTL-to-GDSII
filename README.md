UART Transceiver --- RTL to GDSII Implementation

A synthesizable UART transceiver implemented in Verilog RTL and takenthrough an ASIC-oriented digital design flow:

RTL → Functional Verification → Logic Synthesis → SKY130 TechnologyMapping → Static Timing Analysis → Floorplanning → Placement → CTS →Routing → Parasitic Extraction → Physical Signoff → GDSII

1. Project Overview

This project demonstrates the transformation of a behavioral UART designinto a technology-specific physical implementation using Yosys,OpenSTA, OpenLane and the SKY130A PDK.

The design contains: - UART transmitter RTL - UART receiver RTL -Top-level UART integration - RTL functional verification - Synthesizedgate-level representation - SKY130 standard-cell mapped netlist -Pre-layout STA - Full OpenLane physical implementation - Post-routetiming/signoff - GDSII, DEF, LEF, SDF and SPEF generation - DRC, LVS,antenna and ERC/CVC checks

2. Repository Structure

uart_transceiver/
├── Makefile
├── README.md
├── rtl/
│   ├── uart_rx.v
│   ├── uart_top.v
│   └── uart_tx.v
├── tb/
│   ├── sim_main.cpp
│   ├── sim_gate_main.cpp
│   ├── uart_top_tb.v
│   └── uart_gate_tb.v
├── scripts/
│   ├── synth.ys
│   ├── synth_sky130.ys
│   ├── uart_top.sdc
│   └── run_sta.tcl
├── synth/
│   ├── synth_uart_top.v
│   └── uart_sky130.v
├── reports/
│   └── final/
└── physical_design/
    ├── def/uart_top.def
    ├── gds/uart_top.gds
    ├── lef/uart_top.lef
    ├── sdf/
    │   ├── uart_top.sdf
    │   └── uart_top.Typical.sdf
    ├── spef/
    │   ├── uart_top.nom.spef
    │   └── uart_top.spef
    └── verilog/
        ├── uart_top.nl.v
        └── uart_top.v

Large temporary OpenLane run data was intentionally excluded; onlyrelevant final physical artifacts are retained.

3. UART RTL Architecture

The design is organized into:

                 +----------------------+
                 |      uart_top        |
                 |                      |
TX data -------->|   UART Transmitter   |----> tx
                 |                      |
RX data <--------|    UART Receiver    |<---- rx
                 +----------------------+
                         |
                        clk

The RTL is synthesizable and maps into flip-flops, multiplexers andcombinational standard-cell logic.

4. RTL Design and Verification

RTL describes the intended logical behavior without specifying physicalcells.

The verification flow: 1. Compile RTL. 2. Instantiate the UARTtestbench. 3. Apply serial communication sequences. 4. Observetransmitter/receiver behavior. 5. Generate waveforms. 6. Debugprotocol/timing behavior.

Relevant files:

rtl/uart_rx.v
rtl/uart_tx.v
rtl/uart_top.v
tb/uart_top_tb.v
tb/sim_main.cpp

5. Logic Synthesis with Yosys

Synthesis bridges behavioral HDL and gate-level hardware. Thesynthesizer reads Verilog, understands the hardware, optimizes it andproduces a structural netlist.

Typical stages are:

Parser --- reads Verilog, checks syntax, hierarchy and widths.

Procedural extraction (proc) --- converts clocked proceduresinto explicit sequential hardware.

FSM processing (fsm) --- detects and optimizes state machines.

RTL optimization (opt) --- performs constant propagation,dead-code removal and Boolean simplification.

Technology mapping (techmap) --- lowers generic logic intohardware primitives.

Flattening --- permits cross-module optimization.

ABC --- performs Boolean optimization, restructuring andcombinational mapping.

Statistics/netlist generation --- produces implementationstatistics and the synthesized Verilog.

Scripts:

scripts/synth.ys
scripts/synth_sky130.ys

Outputs:

synth/synth_uart_top.v
synth/uart_sky130.v

A key synthesis quality check is avoiding unintended latches caused byincomplete combinational assignments.

6. Gate-Level Functional Verification

Synthesis transforms behavioral RTL into structural gate-level hardware.Gate-Level Simulation (GLS) verifies that synthesis preserved theintended logical behavior.

Objectives: - Verify functional equivalence between RTL and synthesizedhardware. - Reuse the verification environment. - Generate gate-levelwaveforms. - Compare gate-level behavior against RTL. - Detectsynthesis-induced functional mismatches.

RTL simulation is behavioral and easier to debug; GLS uses structurallogic and is generally slower and harder to interpret.

Relevant files:

tb/uart_gate_tb.v
tb/sim_gate_main.cpp

Functional GLS does not by itself model complete physical effects suchas routing delay, clock skew, setup/hold behavior, power or extractedparasitics.

7. SKY130 Technology Mapping

Generic synthesis produces technology-independent cells such as:

_DFF_P_
_AND_
_MUX_
_NAND_
_NOR_

Technology mapping converts them into cells from the targetsemiconductor library:

Generic logic
     ↓
Technology mapping
     ↓
SKY130 standard-cell netlist

Project target:

PDK: sky130A
Standard Cell Library: sky130_fd_sc_hd

Examples:

_DFF_P_ → sky130_fd_sc_hd__dfxtp_1

Other mapped cells include:

sky130_fd_sc_hd__nand2_1
sky130_fd_sc_hd__nor2_1
sky130_fd_sc_hd__mux2_1
sky130_fd_sc_hd__xor2_1

The mapped netlist contains approximately:

211 SKY130 standard-cell references
47 DFF references

8. SKY130 Library Files

The recorded Liberty library is:

sky130_fd_sc_hd__tt_025C_1v80.lib

Liberty provides: - Cell names - Cell area - Input capacitance - Outputcharacteristics - Propagation delays - Setup/hold times - Timing arcs -Power characteristics

Important physical-design formats:

File      Purpose

.lib    Timing, power and electrical characterization.lef    Physical abstract/layout information.gds    Physical layout geometry.spef   Extracted parasitic R/C information.sdf    Timing delay annotation

9. Static Timing Analysis

STA determines whether timing paths meet their constraints withoutapplying individual simulation vectors.

The timing flow is:

RTL
 ↓
Synthesis
 ↓
SKY130 Mapping
 ↓
Gate-Level Netlist
 ↓
STA

The Liberty timing models provide cell delay, slew, capacitance, setup,hold and timing-arc information.

Clock Constraint

The project uses:

Clock period:   20 ns
Clock frequency: 50 MHz

The SDC is:

scripts/uart_top.sdc

Principal clock constraint:

create_clock -name clk -period 20.0 [get_ports clk]

Clock uncertainty and external timing assumptions are also specified.

Setup Timing

Setup asks whether data reaches the destination early enough before thecapture edge.

Simplified:

Tclk ≥ TCQ + Tlogic + Tsetup + Tuncertainty

Recorded worst pre-layout setup path:

Data arrival time  = 1.894 ns
Data required time = 19.677 ns
Setup slack        = 17.783 ns

Therefore setup passed with substantial positive margin.

Hold Timing

Hold asks whether data remains stable for the required time after thecapture edge.

Simplified:

TCQ + Tlogic ≥ Thold + Tuncertainty

Recorded result:

Data arrival time  = 0.363 ns
Data required time = 0.162 ns
Hold slack         = 0.201 ns

Therefore hold passed.

WNS and TNS

WNS is the worst timing slack among analyzed paths. A healthy timingresult has WNS ≥ 0.

TNS is the sum of negative slack from violating paths.

Recorded pre-layout result:

TNS = 0
WNS = 0 or positive

10. Full OpenLane Physical Implementation

The SKY130-mapped design was taken through:

SKY130 Netlist
      ↓
Floorplanning
      ↓
Power Distribution Network
      ↓
Placement
      ↓
Clock Tree Synthesis
      ↓
Routing
      ↓
Parasitic Extraction
      ↓
Post-route STA
      ↓
Physical Signoff
      ↓
GDSII

Successful run:

OpenLane Version: 1.0.2
OpenLane Commit: ff5509f65b17bfa4068d5336495ab1718987ff69
Run ID: RUN_2026.08.08_13.21.01
Design: uart_top
PDK: sky130A
Standard Cell Library: sky130_fd_sc_hd
Clock Period: 20 ns
Clock Frequency: 50 MHz
Flow Status: SUCCESS

Configuration used:

FP_SIZING       = relative
FP_CORE_UTIL    = 30%
FP_ASPECT_RATIO = 1.0
PL_TARGET_DENSITY = 0.40
RUN_CTS         = true
RUN_ROUTING     = true

Physical stages

Floorplanning established the core/die region and utilizationtarget.

PDN was successfully generated. Because the core was small, OpenLanescaled the power grid down.

Placement placed standard cells while considering density, timingand congestion.

CTS built the clock distribution network.

Routing physically connected signal and clock nets.

Parasitic extraction produced SPEF files for the routed design.

11. Post-Route Timing Signoff

Physical implementation introduces wire resistance, capacitance, routingdelay, clock skew and buffering. Therefore timing was checked againafter routing.

Final signoff:

Setup violations:          0
Hold violations:           0
Maximum slew violations:   0
Maximum capacitance:       0

Therefore:

Post-route setup timing = PASS
Post-route hold timing  = PASS

12. Known Clock Fanout Warning

Three clock-buffer maximum-fanout violations remained:

Pin                       Fanout   Limit

clkbuf_2_1__f_clk/X         13      10clkbuf_2_2__f_clk/X         13      10clkbuf_2_3__f_clk/X         11      10

The final report recorded:

Max slew violation count   = 0
Max fanout violation count = 3
Max cap violation count    = 0

These warnings did not result in setup or hold violations and did notprevent successful OpenLane completion.

13. Physical Signoff

Check                               Result

DRC                           0 violationsLVS                               0 errorsAntenna                       0 violationsERC/CVC                           0 errorsKLayout vs Magic GDS XOR     0 differencesSetup                                 PASSHold                                  PASSMax slew                      0 violationsMax capacitance               0 violationsMax fanout                    3 violations

OpenLane reported no XOR differences between the KLayout and Magic GDSrepresentations.

14. Final Physical Artifacts

GDSII

physical_design/gds/uart_top.gds

Physical layout geometry.

DEF

physical_design/def/uart_top.def

Placement and routing representation.

LEF

physical_design/lef/uart_top.lef

Physical abstract representation.

Gate-Level Verilog

physical_design/verilog/uart_top.v
physical_design/verilog/uart_top.nl.v

Post-implementation structural netlists.

SDF

physical_design/sdf/uart_top.sdf
physical_design/sdf/uart_top.Typical.sdf

Timing-delay annotation files.

The OpenLane run also generated Slowest/Fastest/Typical SDF views, whichwere retained in the original run but the repository keeps the principaland Typical views to remain compact.

SPEF

physical_design/spef/uart_top.spef
physical_design/spef/uart_top.nom.spef

Extracted parasitic resistance/capacitance information.

15. Tool and PDK Environment

Recorded final project environment:

OpenLane:
1.0.2

OpenLane Commit:
ff5509f65b17bfa4068d5336495ab1718987ff69

Yosys:
0.30+48
git sha1 14d50a176d5

OpenROAD:
41a51eaf4ca2171c92ff38afb91eb37bbd3f36da

OpenSTA:
2.4.0

PDK:
sky130A

Standard Cell Library:
sky130_fd_sc_hd

The recorded PDK root was:

/home/siddharthsahu2610/.ciel

16. Final Flow Summary

UART RTL
   ↓
RTL Functional Verification
   ↓
Yosys Logic Synthesis
   ↓
Generic Gate-Level Netlist
   ↓
SKY130 Technology Mapping
   ↓
Pre-layout STA
   ↓
OpenLane Floorplanning
   ↓
PDN
   ↓
Placement
   ↓
CTS
   ↓
Routing
   ↓
Parasitic Extraction
   ↓
Post-route STA
   ↓
DRC / LVS / Antenna / ERC
   ↓
GDSII

17. Final Project Status

Stage                       Status

UART RTL                    COMPLETEDRTL Verification            COMPLETEDLogic Synthesis             COMPLETEDSKY130 Technology Mapping   COMPLETEDPre-layout STA              COMPLETEDFloorplanning               COMPLETEDPDN                         COMPLETEDPlacement                   COMPLETEDCTS                         COMPLETEDRouting                     COMPLETEDParasitic Extraction        COMPLETEDPost-route STA              COMPLETEDDRC                         PASSEDLVS                         PASSEDAntenna                     PASSEDERC/CVC                     PASSEDGDSII Generation            COMPLETED

18. Known Limitations

The successful run retained these warnings:

Three clock-buffer maximum-fanout violations.

PDN scaling because of the small core area.

IR-drop analysis was performed without VSRC_LOC_FILES, so theIR-drop values may not represent an accurate source-location model.

Physical-only cells such as tap, decap and filler cells wereblackboxed during STA.

These warnings are documented rather than hidden. They did not preventsuccessful physical signoff.

19. Learning Outcomes

This project provides practical exposure to:

Verilog RTL design

UART protocol implementation

Sequential/combinational logic

RTL simulation

Gate-level simulation

Yosys synthesis

FSM extraction and optimization

Boolean optimization

ABC technology mapping

SKY130 standard cells

Liberty timing models

SDC constraints

Static Timing Analysis

Setup and hold timing

WNS and TNS

Floorplanning

Placement

Power distribution

Clock Tree Synthesis

Routing

Parasitic extraction

SPEF and SDF

DRC

LVS

Antenna checking

ERC/CVC

GDSII generation

OpenLane RTL-to-GDSII implementation

20. Conclusion

This project demonstrates a complete ASIC-oriented digitalimplementation of a UART transceiver from behavioral Verilog RTL toSKY130 physical layout.

The final OpenLane flow completed successfully and produced:

Technology-mapped standard-cell netlist

Placed and routed design

Extracted parasitics

Timing models

DEF

LEF

GDSII

Post-layout Verilog

Physical signoff reports

Final signoff achieved:

Setup violations  = 0
Hold violations   = 0
DRC violations    = 0
LVS errors        = 0
Antenna violations = 0
ERC/CVC errors    = 0
GDS XOR differences = 0

The only documented implementation issue is the three clock-bufferfanout violations described above.

This completes the project's primary RTL-to-GDSII implementationflow.
