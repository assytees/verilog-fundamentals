// Abubakar Shuuaibu — 08 July 2026 - 8x3 Encoder (Gate-Level)
module encoder8x3(
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    output Y0,
    output Y1,
    output Y2
);

    // Generate encoded outputs
    or (Y0, I1, I3, I5, I7);
    or (Y1, I2, I3, I6, I7);
    or (Y2, I4, I5, I6, I7);

endmodule