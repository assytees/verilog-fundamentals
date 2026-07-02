module encoder8to3(
    input D0,
    input D1,
    input D2,
    input D3,
    input D4,
    input D5,
    input D6,
    input D7,
    output Y0,
    output Y1,
    output Y2
);

assign Y0 = D1 | D3 | D5 | D7;
assign Y1 = D2 | D3 | D6 | D7;
assign Y2 = D4 | D5 | D6 | D7;

endmodule
