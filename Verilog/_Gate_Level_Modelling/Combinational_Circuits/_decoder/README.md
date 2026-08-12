# Decoder (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of 2×4 and 3×8 decoders using Verilog HDL gate primitives. Each design converts a binary input into one of several unique output lines, where only one output is active for each input combination.

## What is a Decoder?

A decoder is a combinational logic circuit that converts an n-bit binary input into one of 2ⁿ output lines. For every valid input combination, exactly one output is asserted HIGH while all remaining outputs remain LOW. Decoders are fundamental building blocks in digital systems for selecting devices, memory locations, and control signals.

## Gate-Level Modeling

Gate-level modeling describes a digital circuit by interconnecting Verilog gate primitives such as `and`, `or`, and `not`. This modeling style closely represents the physical hardware implementation and provides a clear understanding of the underlying logic connections.

## Implementations Included

- 2×4 Decoder
- 3×8 Decoder

Each implementation includes an individual testbench for functional verification.

## Folder Structure

```text
Decoder/
├── decoder_2x4_gate.v
├── decoder_2x4_gate_tb.v
├── decoder_3x8_gate.v
├── decoder_3x8_gate_tb.v
└── README.md
```

## Applications

Decoders are commonly used in:

- Memory address decoding
- Chip select circuits
- Instruction decoding
- Digital control systems
- Data routing
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the gate-level implementation of decoders using Verilog HDL gate primitives. These designs illustrate how combinational logic circuits translate binary inputs into unique outputs and serve as essential building blocks in modern digital systems.

## Author

**Abubakar Shuaibu**

Computer Science Graduate | Verilog HDL Digital Design Portfolio