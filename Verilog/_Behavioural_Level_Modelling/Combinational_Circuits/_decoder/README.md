# Decoder (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of 2×4 and 3×8 decoders using Verilog HDL. These designs demonstrate how binary input combinations are translated into unique output lines using behavioral modeling techniques.

## What is a Decoder?

A decoder is a combinational logic circuit that converts an *n*-bit binary input into one of *2ⁿ* unique output lines. For every valid input combination, only one output is asserted while all other outputs remain inactive. Decoders are commonly used for signal selection, address decoding, and control logic in digital systems.

## Behavioral Modeling

Behavioral modeling focuses on describing the functional behavior of a circuit rather than its hardware structure. In these implementations, `always @(*)` blocks and `case` statements are used to determine which output line is activated for each input combination.

## Implementations Included

- 2×4 Decoder
- 3×8 Decoder

Each implementation includes a dedicated testbench for functional verification.

## Folder Structure

```text
Decoder/
├── decoder2x4.v
├── decoder2x4_tb.v
├── decoder3x8.v
├── decoder3x8_tb.v
└── README.md
```

## Applications

Decoders are widely used in:

- Memory address decoding
- Instruction decoding in processors
- Chip select logic
- Display control systems
- Data routing and control circuits
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the behavioral implementation of commonly used decoder circuits in Verilog HDL. These designs provide a solid understanding of binary decoding and serve as important building blocks for larger digital systems.

## Author

**Abubakar Shuaibu**

Computer Science Graduate | Verilog HDL Digital Design 
