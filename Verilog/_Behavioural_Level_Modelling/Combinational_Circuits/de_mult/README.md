# Demultiplexer (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of 1×2, 1×4, and 1×8 demultiplexers using Verilog HDL. Each design demonstrates how a single input can be directed to one of several outputs based on the select lines.

## What is a Demultiplexer?

A demultiplexer (DEMUX) is a combinational logic circuit that takes a single input and routes it to one of several output lines. The destination output is determined by the value of the select lines, while all other outputs remain inactive.

## Behavioral Modeling

Behavioral modeling describes the functionality of a circuit by specifying its input-output behavior without defining the internal hardware structure. In these implementations, the routing operation is described using `always @(*)` blocks and `case` statements.

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
- Memory and register selection
- Communication systems
- Signal routing
- Embedded systems
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the behavioral implementation of demultiplexers with different output configurations. These designs illustrate how digital data can be routed efficiently and serve as fundamental building blocks in larger combinational logic systems.

## Author

**Abubakar Shuaibu**

Computer Science Graduate | Verilog HDL Digital Design Portfolio