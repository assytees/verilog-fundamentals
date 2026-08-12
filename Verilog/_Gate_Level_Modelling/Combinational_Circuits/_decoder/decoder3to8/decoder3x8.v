// --Abubakar Shuaibu-- — 08th July 2026 -3x8 Decoder
module decoder3x8(A, B, C, EN, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);
    input A, B, C, EN;
    output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

    wire notA, notB, notC;

    not g0(notA, A);
    not g1(notB, B);
    not g2(notC, C);

    and g3(Y0, notA, notB, notC, EN);
    and g4(Y1, notA, notB, C, EN);
    and g5(Y2, notA, B, notC, EN);
    and g6(Y3, notA, B, C, EN);
    and g7(Y4, A, notB, notC, EN);
    and g8(Y5, A, notB, C, EN);
    and g9(Y6, A, B, notC, EN);
    and g10(Y7, A, B, C, EN);

endmodule