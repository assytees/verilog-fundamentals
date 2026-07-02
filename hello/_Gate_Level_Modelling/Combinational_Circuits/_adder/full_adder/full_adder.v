module full_adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Carry
);

wire w1, w2, w3;

// Sum = A ^ B ^ Cin
xor x1(w1, A, B);
xor x2(Sum, w1, Cin);

// Carry = (A & B) | (Cin & (A ^ B))
and a1(w2, A, B);
and a2(w3, Cin, w1);
or  o1(Carry, w2, w3);

endmodule

/*
Explanation
xor x1(w1, A, B);
Computes A XOR B and stores the result in w1.
xor x2(Sum, w1, Cin);
Computes (A XOR B) XOR Cin to produce the Sum.
and a1(w2, A, B);
Computes A AND B.
and a2(w3, Cin, w1);
Computes Cin AND (A XOR B).
or o1(Carry, w2, w3);
Computes (A AND B) OR (Cin AND (A XOR B)) to produce the Carry.

This implementation is functionally equivalent to the original dataflow description but explicitly instantiates the logic gates, making it a true gate-level model.
*/
