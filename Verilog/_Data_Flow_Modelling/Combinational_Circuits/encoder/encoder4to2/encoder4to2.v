module encoder4to2(
    input D0,
    input D1,
    input D2,
    input D3,
    output Y0,
    output Y1
);

assign Y0 = D1 | D3;
assign Y1 = D2 | D3;
//or or1(Y0,D1,D3); //GateLevel
//or or2(Y1,D2,D3);

endmodule
