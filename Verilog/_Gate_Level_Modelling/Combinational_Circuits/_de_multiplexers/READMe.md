# Demultiplexer (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of 1×2, 1×4, and 1×8 demultiplexers using Verilog HDL gate primitives. Each design routes a single data input to one of several outputs based on the select lines.

## What is a Demultiplexer?

A demultiplexer (DEMUX) is a combinational logic circuit that accepts one data input and directs it to one of several output lines. The selected output is determined by the value of the select inputs, while all other outputs remain inactive.

## Gate-Level Modeling

Gate-level modeling describes a digital circuit by connecting Verilog gate primitives such as `and` and `not`. This modeling style closely represents the actual hardware implementation of the circuit and provides a clear view of the logic connections.

## Implementations Included

- 1×2 Demultiplexer
- 1×4 Demultiplexer
- 1×8 Demultiplexer

Each implementation includes an individual testbench for functional verification.

## Folder Structure

```text
Demultiplexer/
├── demux1x2.v
├── demux1x2_tb.v
├── demux1x4.v
├── demux1x4_tb.v
├── demux1x8.v
├── demux1x8_tb.v
└── README.md
```

## Applications

Demultiplexers are commonly used in:

- Data distribution
- Signal routing
- Memory addressing
- Communication systems
- Embedded systems
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the gate-level implementation of demultiplexers using Verilog HDL gate primitives. These designs illustrate how logic gates can be combined to perform data routing and serve as essential building blocks in digital systems.

## Author

**Abubakar Shuaibu**

Computer Science Graduate | Verilog HDL Digital Design Portfolio