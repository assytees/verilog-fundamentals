// Abubakar Shuaibu — 08th July 2026 - 1x8 Demultiplexer (Gate-Level)
module demux1x8(
    input D,
    input [2:0] S,
    output Y0,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5,
    output Y6,
    output Y7
);

wire S0n, S1n, S2n;

not (S0n, S[0]);
not (S1n, S[1]);
not (S2n, S[2]);

// Route data to one selected output
and (Y0, D, S2n, S1n, S0n);
and (Y1, D, S2n, S1n, S[0]);
and (Y2, D, S2n, S[1], S0n);
and (Y3, D, S2n, S[1], S[0]);
and (Y4, D, S[2], S1n, S0n);
and (Y5, D, S[2], S1n, S[0]);
and (Y6, D, S[2], S[1], S0n);
and (Y7, D, S[2], S[1], S[0]);

endmodule