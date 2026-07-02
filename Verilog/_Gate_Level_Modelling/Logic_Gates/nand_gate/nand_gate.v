module nand_gate (
    input a,
    input b,
    output y
);

//assign y = ~(a & b);
nand nand1(y,a,b);

endmodule
