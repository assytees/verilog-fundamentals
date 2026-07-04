module and_gate (
    input a,
    input b,
    output reg y
);

always @(*) begin
    if (a == 1'b1 && b == 1'b1)
        y = 1'b1;
    else
        y = 1'b0;
end

endmodule