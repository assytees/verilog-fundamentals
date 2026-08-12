# Comparator

## Overview

A comparator is a combinational circuit used to compare two binary values. It determines whether one input is greater than, less than, or equal to the other input.

This project implements both a **1-bit Comparator** and a **2-bit Comparator** using **Verilog HDL** with the **Dataflow Modelling** style.

## Features

- 1-Bit Comparator
- 2-Bit Comparator
- Dataflow Modelling
- Separate testbench for each design
- Simulation using `$monitor`

## Outputs

The comparator generates three output signals:

| Output | Description |
|---------|-------------|
| GT | High (1) when A > B |
| LT | High (1) when A < B |
| EQ | High (1) when A = B |

## Project Structure

```
Comparator/
│── comparator_1bit.v
│── comparator_1bit_tb.v
│── comparator_2bit.v
│── comparator_2bit_tb.v
└── README.md
```

## Simulation Tool

- Synopsys Verdi

## Language

- Verilog HDL

## Modelling Style

- Dataflow Modelling

## Learning Outcome

After completing this project, you should be able to:

- Understand the operation of digital comparators.
- Compare binary numbers using Verilog operators.
- Implement combinational circuits using Dataflow Modelling.
- Write and simulate Verilog testbenches.s