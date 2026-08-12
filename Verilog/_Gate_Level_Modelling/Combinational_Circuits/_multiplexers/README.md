# Multiplexer (Gate-Level Modeling)

## Overview

This folder contains the gate-level implementation of 2×1, 4×1, and 8×1 multiplexers using Verilog HDL gate primitives. Each design selects one input from multiple input lines based on the select signals.

## What is a Multiplexer?

A multiplexer (MUX) is a combinational logic circuit that selects one input from multiple inputs and forwards it to a single output. The selected input is determined by the values of the select lines.

## Gate-Level Modeling

Gate-level modeling represents a digital circuit by interconnecting Verilog gate primitives such as `and`, `or`, and `not`. This approach closely reflects the hardware implementation of multiplexers.

## Implementations Included

- 2×1 Multiplexer
- 4×1 Multiplexer
- 8×1 Multiplexer

Each implementation includes an individual testbench for functional verification.

## Folder Structure

```text
Multiplexer/
├── mux2x1.v
├── mux2x1_tb.v
├── mux4x1.v
├── mux4x1_tb.v
├── mux8x1.v
├── mux8x1_tb.v
└── README.md
```

## Applications

- Data selection
- Bus switching
- Communication systems
- Processor data routing
- FPGA and ASIC digital designs

## Conclusion

This project demonstrates the gate-level implementation of multiplexers using Verilog gate primitives. These circuits illustrate how logic gates can be interconnected to perform efficient data selection in digital systems.

## Author

**Abubakar Shuaibu**

Computer Science Graduate | Verilog HDL Digital Design Portfolio