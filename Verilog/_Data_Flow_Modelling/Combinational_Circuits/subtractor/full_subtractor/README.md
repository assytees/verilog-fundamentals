# Full Subtractor

## Overview

A Full Subtractor is a combinational circuit that subtracts two binary bits along with a borrow input. It produces a difference output and a borrow output.

This project implements a **Full Subtractor** using **Verilog HDL** with the **Dataflow Modelling** technique.

## Inputs

- A
- B
- Bin (Borrow In)

## Outputs

- Diff (Difference)
- Bout (Borrow Out)

## Files

```
Full_Subtractor/
│── full_subtractor.v
│── full_subtractor_tb.v
└── README.md
```

## Features

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

- Understand the operation of a full subtractor.
- Perform binary subtraction with a borrow input.
- Implement a full subtractor using Dataflow Modelling.
- Verify the design using a Verilog testbench.