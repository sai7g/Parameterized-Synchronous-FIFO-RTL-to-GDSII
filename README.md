# Parameterized Synchronous FIFO — RTL to GDSII

A parameterized, single-clock synchronous FIFO designed in Verilog and taken through functional verification, logic synthesis, physical implementation, parasitic extraction, and layout stream-out using the SKY130A platform.

## Design Features

- Parameterized data width and address width.
- FIFO depth defined as `2^ADDR_WIDTH`.
- Full and empty status flags.
- Almost-full and almost-empty programmable thresholds.
- Occupancy counter.
- Modular RTL architecture separating control, memory, and top-level integration.

## Default Configuration

| Parameter | Value |
|---|---:|
| DATA_WIDTH | 8 |
| ADDR_WIDTH | 4 |
| FIFO Depth | 16 |
| ALMOST_FULL_LEVEL | 14 |
| ALMOST_EMPTY_LEVEL | 2 |
| Clock | 100 MHz |

## RTL Structure

- `rtl/fifo_ctrl.v` — FIFO pointer, occupancy, and status-flag control.
- `rtl/fifo_mem.v` — FIFO storage.
- `rtl/sync_fifo.v` — Top-level FIFO integration.
- `tb/tb_sync_fifo.v` — Functional testbench.

## Verification and Synthesis

- Functional simulation using Icarus Verilog.
- 117,784 checks completed with zero reported errors.
- Waveform inspection using GTKWave.
- Logic synthesis using Yosys.
- 383 synthesized cells: 145 sequential and 238 combinational.
- Reported synthesized cell area: 5,755.52 µm².

## Physical Design

Implementation platform: SKY130A  
Standard-cell library: `sky130_fd_sc_hd`  
Physical-design flow: OpenLane 2 / OpenROAD

The implementation included floorplanning, placement, clock-tree synthesis, timing repair, global routing, detailed routing, parasitic extraction, and post-route timing analysis.

Selected post-route results:

| Metric | Result |
|---|---:|
| Detailed-route iterations | 64 |
| Final detailed-route violations | 0 |
| Extracted signal nets reported by routing | 582 |
| Detailed-route wire length | 14,958 µm |
| Extracted SPEF corners | Min / Nominal / Max |
| Worst setup slack across reported corners | +3.4001 ns |
| Worst hold slack across reported corners | +0.1531 ns |

Post-route timing was evaluated across nine process, voltage, and temperature corner combinations. The reported setup and hold violation counts were zero at those corners.

## Physical Deliverables

The `results/physical_design/` directory contains selected outputs:

- Magic and KLayout GDSII layouts.
- Standard-cell LEF abstract.
- Final DEF.
- Synthesized and physical netlists.
- SDC timing constraints.
- Minimum, nominal, and maximum SPEF files.
- Post-route metrics.

The original OpenLane run directories are excluded from Git tracking to avoid uploading large intermediate databases and duplicated artifacts. They remain available locally.

## Important Verification Notes

- Zero detailed-routing violations are not equivalent to independent Magic or KLayout DRC signoff.
- Post-route STA results do not by themselves establish manufacturing signoff.
- The reported IR-drop analysis used the OpenLane fallback configuration without explicit voltage-source location files; it is not package-aware power-integrity signoff.
- Additional physical verification stages, including independent DRC and LVS checks, must be assessed before making a manufacturing-signoff claim.

## Tools

- Verilog
- Icarus Verilog
- GTKWave
- Yosys
- OpenLane 2
- OpenROAD
- SKY130A PDK
- Magic
- KLayout
- Python
- Docker
- WSL2 Ubuntu

