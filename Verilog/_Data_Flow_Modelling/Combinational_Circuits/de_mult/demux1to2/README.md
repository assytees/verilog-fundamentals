# Demultiplexer

## Overview

A demultiplexer (DEMUX) is a combinational circuit that routes a single input to one of several outputs based on the value of the select line(s).

This project implements demultiplexers using **Verilog HDL** with the **Dataflow Modelling** technique.

## Implemented Circuits

- 1×2 Demultiplexer
- 1×4 Demultiplexer

## Project Structure

```
Demultiplexer/
│── demux1x2.v
│── demux1x2_tb.v
│── demux1x4.v
│── demux1x4_tb.v
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

- Understand the operation of a demultiplexer.
- Route one input to multiple outputs using select lines.
- Implement demultiplexers using Dataflow Modelling.
- Write and simulate Verilog testbenches.