# Multiplexer

## Overview

A multiplexer (MUX) is a combinational circuit that selects one input from multiple input lines and forwards it to a single output based on the value of the select line(s).

This project implements multiplexers using **Verilog HDL** with the **Dataflow Modelling** technique.

## Implemented Circuits

- 2×1 Multiplexer
- 4×1 Multiplexer

## Project Structure

```
Multiplexer/
│── mux2x1.v
│── mux2x1_tb.v
│── mux4x1.v
│── mux4x1_tb.v
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

- Understand the operation of multiplexers.
- Select one input from multiple inputs using select lines.
- Implement multiplexers using Dataflow Modelling.
- Verify the design using a Verilog testbench.