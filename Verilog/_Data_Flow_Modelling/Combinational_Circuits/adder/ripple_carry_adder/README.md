# 4-Bit Ripple Carry Adder

## Overview

A Ripple Carry Adder (RCA) is a combinational circuit used to add two multi-bit binary numbers. The carry generated from one stage is passed to the next stage, causing the carry to ripple through the adder.

This project implements a **4-Bit Ripple Carry Adder** using **Verilog HDL** with the **Dataflow Modelling** technique.

## Inputs

- A[3:0]
- B[3:0]
- Cin (Carry In)

## Outputs

- Sum[3:0]
- Cout (Carry Out)

## Files

```
Ripple_Carry_Adder/
│── ripple_carry_adder.v
│── ripple_carry_adder_tb.v
└── README.md
```

## Features

- 4-bit binary addition
- Dataflow Modelling
- Separate testbench
- Simulation using `$monitor`
- Well-commented and easy to understand

## Simulation Tool

- Synopsys Verdi

## Language

- Verilog HDL

## Learning Outcomes

After completing this project, you will be able to:

- Understand the operation of a ripple carry adder.
- Perform multi-bit binary addition.
- Observe how carry propagates from one stage to the next.
- Verify the design using a Verilog testbench.