# Full Subtractor (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of a Full Subtractor using Verilog HDL gate primitives. The design performs the subtraction of two single-bit binary inputs while considering a borrow input from the previous stage.

## What is a Full Subtractor?

A Full Subtractor is a combinational logic circuit that subtracts two binary digits while taking into account a borrow input. It accepts three inputs:

- **A** – Minuend
- **B** – Subtrahend
- **Bin** – Borrow input

It produces two outputs:

- **Difference (D)**
- **Borrow Out (Bout)**

A Full Subtractor is commonly used to build multi-bit binary subtractors.

## Gate-Level Modeling

Gate-level modeling describes a digital circuit by interconnecting Verilog gate primitives such as `xor`, `and`, `or`, and `not`. This modeling style closely represents the actual hardware implementation and provides a clear understanding of the circuit's logic.

## Implementations Included

- Full Subtractor

The implementation includes an individual testbench for functional verification.

## Folder Structure

```text
Full_Subtractor/
├── full_subtractor_gate.v
├── full_subtractor_gate_tb.v
└── README.md
```

## Applications

Full Subtractors are commonly used in:

- Multi-bit binary subtraction
- Arithmetic Logic Units (ALUs)
- Digital processors
- Embedded systems
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the gate-level implementation of a Full Subtractor using Verilog HDL gate primitives. It illustrates how combinational logic performs binary subtraction with borrow propagation and serves as a fundamental building block for arithmetic circuits.

## Author

**Abubakar Shuaibu**

Computer Science Graduate | Verilog HDL Digital Design Portfolio