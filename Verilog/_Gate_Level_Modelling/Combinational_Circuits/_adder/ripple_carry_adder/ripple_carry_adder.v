// -- Abubakar Shuaibu — 05 July 2026 - Ripple Carry Adder --
module ripple_carry_adder(A0, A1, A2, A3, B0, B1, B2, B3, Cin, S0, S1, S2, S3, Cout);
    input A0, A1, A2, A3, B0, B1, B2, B3, Cin;
    output S0, S1, S2, S3, Cout;

    wire c1, c2, c3;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12;

    // Bit 0 Stage
    xor g0(w1, A0, B0);
    xor g1(S0, w1, Cin);
    and g2(w2, w1, Cin);
    and g3(w3, A0, B0);
    or  g4(c1, w2, w3);

    // Bit 1 Stage
    xor g5(w4, A1, B1);
    xor g6(S1, w4, c1);
    and g7(w5, w4, c1);
    and g8(w6, A1, B1);
    or  g9(c2, w5, w6);

    // Bit 2 Stage
    xor g10(w7, A2, B2);
    xor g11(S2, w7, c2);
    and g12(w8, w7, c2);
    and g13(w9, A2, B2);
    or  g14(c3, w8, w9);

    // Bit 3 Stage
    xor g15(w10, A3, B3);
    xor g16(S3, w10, c3);
    and g17(w11, w10, c3);
    and g18(w12, A3, B3);
    or  g19(Cout, w11, w12);

endmodule