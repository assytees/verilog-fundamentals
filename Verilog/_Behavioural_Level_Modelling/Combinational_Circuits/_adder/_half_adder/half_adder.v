module half_adder(
    input A, B,
    output reg Sum, Carry
);

always @(*) begin
    Sum   = A ^ B;
    Carry = A & B;
end

endmodule
