# Half Subtractor (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of a Half Subtractor using Verilog HDL gate primitives. The design performs the subtraction of two single-bit binary inputs and produces the Difference and Borrow outputs.

## What is a Half Subtractor?

A Half Subtractor is a combinational logic circuit that subtracts one binary digit from another. It accepts two single-bit inputs and generates two outputs:

- **Difference (D)** – Represents the result of the subtraction.
- **Borrow (B)** – Indicates whether a borrow is required from the next higher bit.

Unlike a Full Subtractor, a Half Subtractor does not accept a borrow input from a previous stage.

## Gate-Level Modeling

Gate-level modeling describes a digital circuit by interconnecting Verilog gate primitives such as `xor`, `not`, and `and`. This modeling style closely represents the actual hardware implementation and clearly illustrates the logic connections.

## Implementations Included

- Half Subtractor

The implementation includes an individual testbench for functional verification.

## Folder Structure

```text
Half_Subtractor/
├── half_subtractor_gate.v
├── half_subtractor_gate_tb.v
└── README.md
```

## Applications

Half Subtractors are commonly used in:

- Binary subtraction
- Arithmetic Logic Units (ALUs)
- Digital calculators
- Digital arithmetic circuits
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the gate-level implementation of a Half Subtractor using Verilog HDL gate primitives. It illustrates how basic logic gates perform binary subtraction and forms the foundation for designing more advanced arithmetic circuits.

## Author

**Abubakar Shuaibu**

Computer Science Graduate | Verilog HDL Digital Design Portfolio