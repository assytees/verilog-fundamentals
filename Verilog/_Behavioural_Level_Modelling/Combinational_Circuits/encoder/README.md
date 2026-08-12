# 4×2 and 8×3 Encoders — Behavioral Verilog

## Overview

This project contains two digital encoder designs implemented using **Behavioral Verilog Modeling**:

1. **4×2 Encoder**
2. **8×3 Encoder**

Both encoders convert an active input line into its corresponding binary representation.

The project also includes testbenches for verifying the functionality of each encoder through simulation.

---

# 1. 4×2 Encoder

## Description

A **4-to-2 encoder** has four input lines and two output lines.

The encoder assumes that only one input is HIGH (`1`) at a time. The active input is converted into a 2-bit binary value.

### Inputs

```text
I0, I1, I2, I3
```

### Outputs

```text
Y1, Y0
```

## Truth Table

| I3 | I2 | I1 | I0 | Y1 | Y0 |
|---:|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 0 | 0 | 1 | 1 |

### Encoding Operation

```text
I0 → 00
I1 → 01
I2 → 10
I3 → 11
```

## Verilog Design

The 4×2 encoder uses an `always @(*)` block and a `case` statement to implement the combinational logic.

```verilog
module encoder4x2(
    input I0,
    input I1,
    input I2,
    input I3,
    output reg Y1,
    output reg Y0
);

always @(*) begin
    case ({I3, I2, I1, I0})

        4'b0001: begin
            Y1 = 0;
            Y0 = 0;
        end

        4'b0010: begin
            Y1 = 0;
            Y0 = 1;
        end

        4'b0100: begin
            Y1 = 1;
            Y0 = 0;
        end

        4'b1000: begin
            Y1 = 1;
            Y0 = 1;
        end

        default: begin
            Y1 = 0;
            Y0 = 0;
        end

    endcase
end

endmodule
```

---

# 2. 8×3 Encoder

## Description

An **8-to-3 encoder** has eight input lines and three output lines.

The encoder converts the active input into a corresponding 3-bit binary value.

### Inputs

```text
I0, I1, I2, I3, I4, I5, I6, I7
```

### Outputs

```text
Y2, Y1, Y0
```

The encoder assumes that only one input is HIGH (`1`) at a time.

## Truth Table

| I7 | I6 | I5 | I4 | I3 | I2 | I1 | I0 | Y2 | Y1 | Y0 |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 1 |
| 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 1 | 0 |
| 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 1 | 1 |
| 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 1 |
| 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 1 |

### Encoding Operation

```text
I0 → 000
I1 → 001
I2 → 010
I3 → 011
I4 → 100
I5 → 101
I6 → 110
I7 → 111
```

## Verilog Design

```verilog
module encoder8x3(
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    output reg Y2,
    output reg Y1,
    output reg Y0
);

always @(*) begin
    case ({I7, I6, I5, I4, I3, I2, I1, I0})

        8'b00000001: begin
            Y2 = 0;
            Y1 = 0;
            Y0 = 0;
        end

        8'b00000010: begin
            Y2 = 0;
            Y1 = 0;
            Y0 = 1;
        end

        8'b00000100: begin
            Y2 = 0;
            Y1 = 1;
            Y0 = 0;
        end

        8'b00001000: begin
            Y2 = 0;
            Y1 = 1;
            Y0 = 1;
        end

        8'b00010000: begin
            Y2 = 1;
            Y1 = 0;
            Y0 = 0;
        end

        8'b00100000: begin
            Y2 = 1;
            Y1 = 0;
            Y0 = 1;
        end

        8'b01000000: begin
            Y2 = 1;
            Y1 = 1;
            Y0 = 0;
        end

        8'b10000000: begin
            Y2 = 1;
            Y1 = 1;
            Y0 = 1;
        end

        default: begin
            Y2 = 0;
            Y1 = 0;
            Y0 = 0;
        end

    endcase
end

endmodule
```

---

# 3. Testbenches

## 4×2 Encoder Testbench

The testbench applies each valid input combination sequentially and monitors the outputs.

```verilog
module encoder4x2_tb;

reg I0, I1, I2, I3;
wire Y1, Y0;

encoder4x2 dut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .Y1(Y1),
    .Y0(Y0)
);

initial begin

    $monitor("I3=%b I2=%b I1=%b I0=%b | Y1=%b Y0=%b",
             I3, I2, I1, I0, Y1, Y0);

    I3=0; I2=0; I1=0; I0=1;

    #10 I3=0; I2=0; I1=1; I0=0;

    #10 I3=0; I2=1; I1=0; I0=0;

    #10 I3=1; I2=0; I1=0; I0=0;

    #10 $finish;

end

endmodule
```

---

# 4. 8×3 Encoder Testbench

The 8×3 testbench activates each of the eight inputs one after another.

```verilog
module encoder8x3_tb;

reg I0, I1, I2, I3, I4, I5, I6, I7;
wire Y2, Y1, Y0;

encoder8x3 dut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .Y2(Y2),
    .Y1(Y1),
    .Y0(Y0)
);

initial begin

    $monitor("I7=%b I6=%b I5=%b I4=%b I3=%b I2=%b I1=%b I0=%b | Y2=%b Y1=%b Y0=%b",
             I7, I6, I5, I4, I3, I2, I1, I0,
             Y2, Y1, Y0);

    I7=0; I6=0; I5=0; I4=0;
    I3=0; I2=0; I1=0; I0=1;

    #10 I7=0; I6=0; I5=0; I4=0;
         I3=0; I2=0; I1=1; I0=0;

    #10 I7=0; I6=0; I5=0; I4=0;
         I3=0; I2=1; I1=0; I0=0;

    #10 I7=0; I6=0; I5=0; I4=0;
         I3=1; I2=0; I1=0; I0=0;

    #10 I7=0; I6=0; I5=0; I4=1;
         I3=0; I2=0; I1=0; I0=0;

    #10 I7=0; I6=0; I5=1; I4=0;
         I3=0; I2=0; I1=0; I0=0;

    #10 I7=0; I6=1; I5=0; I4=0;
         I3=0; I2=0; I1=0; I0=0;

    #10 I7=1; I6=0; I5=0; I4=0;
         I3=0; I2=0; I1=0; I0=0;

    #10 $finish;

end

endmodule
```

---

# 5. Expected Simulation Results

## 4×2 Encoder

```text
I3=0 I2=0 I1=0 I0=1 | Y1=0 Y0=0
I3=0 I2=0 I1=1 I0=0 | Y1=0 Y0=1
I3=0 I2=1 I1=0 I0=0 | Y1=1 Y0=0
I3=1 I2=0 I1=0 I0=0 | Y1=1 Y0=1
```

## 8×3 Encoder

```text
I7 I6 I5 I4 I3 I2 I1 I0 | Y2 Y1 Y0

0  0  0  0  0  0  0  1 | 0  0  0
0  0  0  0  0  0  1  0 | 0  0  1
0  0  0  0  0  1  0  0 | 0  1  0
0  0  0  0  1  0  0  0 | 0  1  1
0  0  0  1  0  0  0  0 | 1  0  0
0  0  1  0  0  0  0  0 | 1  0  1
0  1  0  0  0  0  0  0 | 1  1  0
1  0  0  0  0  0  0  0 | 1  1  1
```

---

# 6. Project File Structure

Both encoders and their testbenches can be kept in a single project:

```text
encoder-project/
│
├── encoder4x2.v
├── encoder8x3.v
├── encoder4x2_tb.v
├── encoder8x3_tb.v
└── README.md
```

Alternatively, the two design modules can be placed in a **single Verilog source file**:

```text
encoder.v
```

containing both:

```verilog
module encoder4x2
```

and:

```verilog
module encoder8x3
```

with their testbenches kept separately.

---

# 7. Simulation Using Icarus Verilog

If all design modules and testbenches are in separate files, compile them as follows:

### 4×2 Encoder

```bash
iverilog -o encoder4x2_sim encoder4x2.v encoder4x2_tb.v
vvp encoder4x2_sim
```

### 8×3 Encoder

```bash
iverilog -o encoder8x3_sim encoder8x3.v encoder8x3_tb.v
vvp encoder8x3_sim
```

---

# 8. Important Note

Both designs are **simple encoders** and are not priority encoders.

Therefore, only **one input should be HIGH at a time**.

For example, the following is valid for the 8×3 encoder:

```text
I7 I6 I5 I4 I3 I2 I1 I0
0  0  0  0  0  0  1  0
```

The output is:

```text
Y2 Y1 Y0
0  0  1
```

If multiple inputs are HIGH simultaneously, the input combination does not represent a valid condition for this simple encoder and the `default` case produces `000`.

---

# 9. Learning Objectives

By completing this project, students should understand:

- The concept of digital encoders.
- The difference between input and output lines in an encoder.
- 4×2 and 8×3 encoder truth tables.
- Binary encoding.
- Behavioral modeling in Verilog.
- The use of `always @(*)`.
- The use of `case` statements.
- Concatenation of input signals.
- Testbench development.
- `$monitor` and `$finish`.
- Simulation and verification of combinational circuits.

---

# Author

**Abubakar Shuaibu**

**Date:** 05 July 2026

**Topic:** 4×2 and 8×3 Encoders — Behavioral Verilog