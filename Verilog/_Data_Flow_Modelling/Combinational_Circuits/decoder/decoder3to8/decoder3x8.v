// Abubakar Shuaibu — 05 July 2026 -3x8 Decoder
module decoder3x8(
    input A,
    input B,
    input C,
    output Y0,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5,
    output Y6,
    output Y7
);

    // Output Y0 is HIGH when ABC = 000
    assign Y0 = ~A & ~B & ~C;

    // Output Y1 is HIGH when ABC = 001
    assign Y1 = ~A & ~B & C;

    // Output Y2 is HIGH when ABC = 010
    assign Y2 = ~A & B & ~C;

    // Output Y3 is HIGH when ABC = 011
    assign Y3 = ~A & B & C;

    // Output Y4 is HIGH when ABC = 100
    assign Y4 = A & ~B & ~C;

    // Output Y5 is HIGH when ABC = 101
    assign Y5 = A & ~B & C;

    // Output Y6 is HIGH when ABC = 110
    assign Y6 = A & B & ~C;

    // Output Y7 is HIGH when ABC = 111
    assign Y7 = A & B & C;

endmodule