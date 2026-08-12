# Multiplexer (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of multiplexers using Verilog HDL. The designs demonstrate how different input signals can be selected and routed to a single output using select lines.

## What is a Multiplexer?

A multiplexer (MUX) is a combinational logic circuit that selects one input from multiple inputs and transfers the selected input to a single output. The selection is controlled by binary select lines. Multiplexers are widely used in digital systems for data routing, bus switching, arithmetic circuits, communication systems, and processor design.

## Behavioral Modeling

Behavioral modeling describes the functionality of a circuit without specifying its hardware implementation. In this approach, the output behavior is defined using procedural statements, making the design easier to understand, verify, and modify.

## Implementations Included

- 2×1 Multiplexer
- 4×1 Multiplexer
- 8×1 Multiplexer

Each implementation is accompanied by an individual testbench to verify its functionality.

## Folder Structure

```
Multiplexer/
├── mux2x1.v
├── mux2x1_tb.v
├── mux4x1.v
├── mux4x1_tb.v
├── mux8x1.v
├── mux8x1_tb.v
└── README.md
```

## Applications

Multiplexers are commonly used in:

- Data selection and routing
- Digital communication systems
- Processor and ALU design
- Memory address selection
- Embedded systems
- FPGA and ASIC designs

## Author

**Abubakar Shuaibu**

Computer Science Graduate | Verilog HDL Digital Design Portfolio