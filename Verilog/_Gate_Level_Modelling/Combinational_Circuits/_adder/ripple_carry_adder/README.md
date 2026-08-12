# Ripple Carry Adder (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of a 4-bit Ripple Carry Adder (RCA) using Verilog HDL gate primitives. The design performs the addition of two 4-bit binary numbers by connecting four full-adder stages using logic gates.

## What is a Ripple Carry Adder?

A Ripple Carry Adder (RCA) is a combinational arithmetic circuit used to add two multi-bit binary numbers. It consists of multiple full adder stages connected in series, where the carry output of one stage becomes the carry input of the next stage.

The carry signal propagates (or "ripples") from the least significant bit (LSB) to the most significant bit (MSB), giving the circuit its name.

## Gate-Level Modeling

Gate-level modeling describes a digital circuit by interconnecting Verilog gate primitives such as `xor`, `and`, and `or`. This modeling style closely represents the actual hardware implementation and provides a clear understanding of how arithmetic operations are performed at the logic gate level.

## Implementations Included

- 4-Bit Ripple Carry Adder

The implementation includes an individual testbench for functional verification.

## Folder Structure

```text
Ripple_Carry_Adder/
├── ripple_carry_adder_gate.v
├── ripple_carry_adder_gate_tb.v
└── README.md
```

## Applications

Ripple Carry Adders are commonly used in:

- Binary arithmetic operations
- Arithmetic Logic Units (ALUs)
- Digital processors
- Embedded systems
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the gate-level implementation of a 4-bit Ripple Carry Adder using Verilog HDL gate primitives. It illustrates how individual logic gates are combined to perform multi-bit binary addition and serves as a foundation for understanding more advanced adder architectures.

## Author: **Abubakar Shuaibu**
Computer Science Graduate | Verilog HDL Digital Design Portfolio