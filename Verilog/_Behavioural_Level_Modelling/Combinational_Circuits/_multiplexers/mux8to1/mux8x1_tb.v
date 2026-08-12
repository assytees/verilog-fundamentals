//========================================
// Author  : Abubakar Shuaibu
// Testbench : 8x1 Multiplexer
//========================================

module mux8x1_tb;

reg I0;
reg I1;
reg I2;
reg I3;
reg I4;
reg I5;
reg I6;
reg I7;
reg [2:0] S;

wire Y;

// Module instantiation
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

    $monitor("Time=%0t | S=%b | Y=%b",
             $time, S, Y);

    I0=0;
    I1=1;
    I2=0;
    I3=1;
    I4=0;
    I5=1;
    I6=0;
    I7=1;

    S=3'b000;
    #2;

    S=3'b001;
    #2;

    S=3'b010;
    #2;

    S=3'b011;
    #2;

    S=3'b100;
    #2;

    S=3'b101;
    #2;

    S=3'b110;
    #2;

    S=3'b111;
    #2;

end

endmodule