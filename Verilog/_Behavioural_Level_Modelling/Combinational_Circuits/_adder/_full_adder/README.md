# Full Adder (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of a Full Adder using Verilog HDL. The design performs the addition of three one-bit binary inputs and produces a Sum and Carry output.

## What is a Full Adder?

A Full Adder is a combinational logic circuit that adds two binary digits together with a carry input from a previous stage. Unlike a Half Adder, it can process an incoming carry, making it suitable for multi-bit binary addition.

## Behavioral Modeling

The Full Adder is implemented by describing its functional behavior using procedural statements. The Sum output is obtained using XOR operations, while the Carry output is generated from the logical combination of the input bits.

## Folder Structure

```text
Full_Adder/
├── full_adder.v
├── full_adder_tb.v
└── README.md
```

## Applications

- Arithmetic Logic Units (ALUs)
- Multi-bit binary addition
- Processors and microcontrollers
- Digital arithmetic circuits
- FPGA and ASIC designs

## Conclusion

This project demonstrates the behavioral implementation of a Full Adder, an essential building block for designing larger arithmetic circuits such as Ripple Carry Adders and arithmetic units.

## Author

**Abubakar Shuaibu**

Computer Science Graduate | Verilog HDL Digital Design Portfolio