// --Abubakar Shuaibu -- 08 July 2026 -1x4 Demultiplexer (Gate-Level)
module demux1x4(
    input D,
    input [1:0] S,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

wire S0n, S1n;

not (S0n, S[0]);
not (S1n, S[1]);

// Route data to one output
and (Y0, D, S1n, S0n);
and (Y1, D, S1n, S[0]);
and (Y2, D, S[1], S0n);
and (Y3, D, S[1], S[0]);

endmodule