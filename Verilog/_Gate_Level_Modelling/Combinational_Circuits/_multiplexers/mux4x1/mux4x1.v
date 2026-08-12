// Abubakar Shuaibu — 08 July 2026 - 4x1 Multiplexer (Gate-Level)
module mux4x1(
    input I0,
    input I1,
    input I2,
    input I3,
    input [1:0] S,
    output Y
);

wire S0n, S1n;
wire w1, w2, w3, w4;

not (S0n, S[0]);
not (S1n, S[1]);

// Generate data paths
and (w1, I0, S1n, S0n);
and (w2, I1, S1n, S[0]);
and (w3, I2, S[1], S0n);
and (w4, I3, S[1], S[0]);

// Produce output
or (Y, w1, w2, w3, w4);

endmodule