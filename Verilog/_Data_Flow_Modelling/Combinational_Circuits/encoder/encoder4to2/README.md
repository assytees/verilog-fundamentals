# Encoder

## Overview

An encoder is a combinational circuit that converts one active input line into its corresponding binary code at the output.

This project implements encoders using **Verilog HDL** with the **Dataflow Modelling** technique.

## Implemented Circuits

- 4×2 Encoder
- 8×3 Encoder

## Project Structure

```
Encoder/
│── encoder4x2.v
│── encoder4x2_tb.v
│── encoder8x3.v
│── encoder8x3_tb.v
└── README.md
```

## Features

- Dataflow Modelling
- Separate testbench for each design
- Simulation using `$monitor`
- Well-commented and easy to understand

## Simulation Tool

- Synopsys Verdi

## Language

- Verilog HDL

## Learning Outcomes

After completing this project, you will be able to:

- Understand the operation of digital encoders.
- Convert an active input into its binary representation.
- Implement encoders using Dataflow Modelling.
- Write and simulate Verilog testbenches.