//========================================
// Author : Abubakar Shuaibu
// Testbench : 8x1 Multiplexer
//Date: 08th July, 2026
//========================================

module mux8x1_tb;

reg I0, I1, I2, I3, I4, I5, I6, I7;
reg [2:0] S;

wire Y;

mux8x1 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .S(S),
    .Y(Y)
);

initial begin

    // Monitor input and output changes
    $monitor("S=%b Y=%b", S, Y);

    I0=1; I1=0; I2=0; I3=0;
    I4=0; I5=0; I6=0; I7=0;

    S=3'b000; #2;

    I0=0; I1=1;
    S=3'b001; #2;

    I1=0; I2=1;
    S=3'b010; #2;

    I2=0; I3=1;
    S=3'b011; #2;

    I3=0; I4=1;
    S=3'b100; #2;

    I4=0; I5=1;
    S=3'b101; #2;

    I5=0; I6=1;
    S=3'b110; #2;

    I6=0; I7=1;
    S=3'b111; #2;

end

endmodule