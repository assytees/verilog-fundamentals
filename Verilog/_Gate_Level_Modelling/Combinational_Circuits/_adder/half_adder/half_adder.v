module half_adder(
    input A,
    input B,
    output Sum,
    output Carry
);

//assign Sum = A ^ B;
//assign Carry = A & B;
xor xor1 (Sum,A,B); 
and and1 (Carry,A,B);

endmodule
