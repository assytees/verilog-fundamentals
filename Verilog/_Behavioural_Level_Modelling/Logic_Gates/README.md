# Logic Gates (Behavioral Modeling)

## Overview

This folder contains the behavioral implementation of the seven basic logic gates using Verilog HDL. Behavioral modeling describes the operation of a digital circuit by defining its functional behavior using procedural statements such as `always` blocks, rather than using gate primitives or module interconnections.

## Logic Gates Included

- AND Gate
- OR Gate
- NOT Gate
- NAND Gate
- NOR Gate
- XOR Gate
- XNOR Gate

## About Logic Gates

Logic gates are the fundamental building blocks of digital systems. They perform basic logical operations on one or more binary inputs to produce a single binary output. These gates form the basis of combinational and sequential circuits used in computers, processors, communication systems, and other digital electronic devices.

## Behavioral Modeling

In behavioral modeling, the desired functionality of a circuit is described without specifying the physical hardware implementation. This modeling style commonly uses `always @(*)` blocks to define the output based on changes in the input signals. It is suitable for describing digital logic at a high level of abstraction.

## Folder Contents

Each logic gate is organized in its own folder and contains:
- Verilog source code (`.v`)
- Testbench (`_tb.v`)

## Simulation

Each design is verified using an individual testbench that:
- Applies different input combinations.
- Displays simulation results using `$monitor`.
- Uses a `#2` delay between test cases.
- Does not include the `` `timescale `` directive.
- Does not use `$finish`.

## Author

**Abubakar Shuaibu**

Computer Science Graduate | Digital Design & Verilog HDL Portfolio