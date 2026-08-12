// Abubakar Shuaibu — 08 July 2026 -1x4 Demultiplexer
module demux1x4(
    input I,
    input [1:0] S,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

    // Output logic
    assign Y0 = (~S[1] & ~S[0]) & I;
    assign Y1 = (~S[1] &  S[0]) & I;
    assign Y2 = ( S[1] & ~S[0]) & I;
    assign Y3 = ( S[1] &  S[0]) & I;

endmodule