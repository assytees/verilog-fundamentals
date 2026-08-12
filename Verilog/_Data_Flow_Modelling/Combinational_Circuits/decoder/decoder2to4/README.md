# Decoder

## Overview

A decoder is a combinational circuit that converts an n-bit binary input into one of 2ⁿ unique output lines. For every input combination, only one output is HIGH while all others remain LOW.

This project implements decoders using **Verilog HDL** with the **Dataflow Modelling** technique.

## Implemented Circuits

- 2×4 Decoder
- 3×8 Decoder

## Project Structure

```
Decoder/
│── decoder2x4.v
│── decoder2x4_tb.v
│── decoder3x8.v
│── decoder3x8_tb.v
└── README.md
```

## Features

- Dataflow Modelling
- Separate testbench for each decoder
- Verified using `$monitor`
- Well-commented and easy to understand

## Simulation Tool

- Synopsys Verdi

## Language

- Verilog HDL

## Learning Outcomes

After completing this project, you will be able to:

- Understand the operation of digital decoders.
- Design 2×4 and 3×8 decoders using Boolean expressions.
- Implement combinational circuits using Dataflow Modelling.
- Write and simulate Verilog testbenches.