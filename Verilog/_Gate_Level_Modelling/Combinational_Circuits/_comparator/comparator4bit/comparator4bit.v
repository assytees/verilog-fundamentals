// Abubakar Shuaibu — 08 July 2026 - 4-Bit Magnitude Comparator

module comparator4bit(A3, A2, A1, A0, B3, B2, B1, B0, A_gt_B, A_lt_B, A_eq_B);
    input A3, A2, A1, A0, B3, B2, B1, B0;
    output A_gt_B, A_lt_B, A_eq_B;

    wire notA3, notA2, notA1, notA0, notB3, notB2, notB1, notB0;
    wire x3, x2, x1, x0;
    wire g3_gt, g2_gt, g1_gt, g0_gt;
    wire g3_lt, g2_lt, g1_lt, g0_lt;

    // Invert inputs
    not n0(notA3, A3); not n1(notA2, A2); not n2(notA1, A1); not n3(notA0, A0);
    not n4(notB3, B3); not n5(notB2, B2); not n6(notB1, B1); not n7(notB0, B0);

    // Bit-level equality conditions
    xnor e3(x3, A3, B3);
    xnor e2(x2, A2, B2);
    xnor e1(x1, A1, B1);
    xnor e0(x0, A0, B0);

    // Equality output logic
    and a_eq(A_eq_B, x3, x2, x1, x0);

    // Greater Than output logic
    and ag3(g3_gt, A3, notB3);
    and ag2(g2_gt, x3, A2, notB2);
    and ag1(g1_gt, x3, x2, A1, notB1);
    and ag0(g0_gt, x3, x2, x1, A0, notB0);
    or  a_gt(A_gt_B, g3_gt, g2_gt, g1_gt, g0_gt);

    // Less Than output logic
    and al3(g3_lt, notA3, B3);
    and al2(g2_lt, x3, notA2, B2);
    and al1(g1_lt, x3, x2, notA1, B1);
    and al0(g0_lt, x3, x2, x1, notA0, B0);
    or  a_lt(A_lt_B, g3_lt, g2_lt, g1_lt, g0_lt);

endmodule