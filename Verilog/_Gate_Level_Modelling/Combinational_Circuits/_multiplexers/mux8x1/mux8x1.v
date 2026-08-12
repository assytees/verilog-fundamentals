// Abubakar Shuaibu — 08 July 2026 - 8x1 Multiplexer (Gate-Level)
module mux8x1(
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    input [2:0] S,
    output Y
);

wire S0n, S1n, S2n;
wire w1, w2, w3, w4, w5, w6, w7, w8;

not (S0n, S[0]);
not (S1n, S[1]);
not (S2n, S[2]);

// Generate data paths
and (w1, I0, S2n, S1n, S0n);
and (w2, I1, S2n, S1n, S[0]);
and (w3, I2, S2n, S[1], S0n);
and (w4, I3, S2n, S[1], S[0]);
and (w5, I4, S[2], S1n, S0n);
and (w6, I5, S[2], S1n, S[0]);
and (w7, I6, S[2], S[1], S0n);
and (w8, I7, S[2], S[1], S[0]);

// Produce output
or (Y, w1, w2, w3, w4, w5, w6, w7, w8);

endmodule