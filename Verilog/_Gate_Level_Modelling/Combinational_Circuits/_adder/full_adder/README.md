# Full Adder (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of a Full Adder using Verilog HDL gate primitives. The design performs the addition of two single-bit binary inputs together with a carry input and produces the Sum and Carry outputs.

## What is a Full Adder?

A Full Adder is a combinational logic circuit that adds three single-bit binary values: two input bits and a carry input from a previous stage. It generates two outputs:

- **Sum (S)** – Represents the result of the addition.
- **Carry Out (Cout)** – Represents the carry generated for the next stage.

Full Adders are the fundamental building blocks of multi-bit binary adders.

## Gate-Level Modeling

Gate-level modeling describes a digital circuit by interconnecting Verilog gate primitives such as `xor`, `and`, and `or`. This modeling style closely represents the actual hardware implementation and provides a clear understanding of the circuit's logic.

## Implementations Included

- Full Adder

The implementation includes an individual testbench for functional verification.

## Folder Structure

```text
Full_Adder/
├── full_adder_gate.v
├── full_adder_gate_tb.v
└── README.md
```

## Applications

Full Adders are commonly used in:

- Multi-bit binary addition
- Arithmetic Logic Units (ALUs)
- Digital processors
- Embedded systems
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the gate-level implementation of a Full Adder using Verilog HDL gate primitives. It illustrates how combinational logic performs binary addition with carry propagation and serves as a fundamental building block for arithmetic circuits.

## Author

**Abubakar Shuaibu**

Computer Science Graduate | Verilog HDL Digital Design Portfolio