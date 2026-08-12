# Half Subtractor (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of a Half Subtractor using Verilog HDL. The circuit subtracts one single-bit binary number from another and produces the Difference and Borrow outputs.

## What is a Half Subtractor?

A Half Subtractor is a combinational logic circuit that performs the subtraction of two single-bit binary numbers. It generates a Difference output and a Borrow output but does not accept a borrow input from a previous stage.

## Behavioral Modeling

The circuit behavior is described using procedural statements. The Difference output is generated using the XOR operation, while the Borrow output is produced using the complement of the minuend and the subtrahend.

## Folder Structure

```text
Half_Subtractor/
├── half_subtractor.v
├── half_subtractor_tb.v
└── README.md
```

## Applications

- Binary subtraction
- Arithmetic circuits
- ALUs
- Digital processors
- FPGA and ASIC designs

## Conclusion

This project demonstrates the behavioral implementation of a Half Subtractor and provides the foundation for constructing more advanced subtraction circuits such as the Full Subtractor.

## Author

**Rahma A. Dalhat**

Computer Science Graduate | Verilog HDL Digital Design Portfolio