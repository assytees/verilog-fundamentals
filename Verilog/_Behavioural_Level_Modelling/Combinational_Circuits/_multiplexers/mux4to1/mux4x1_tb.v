//========================================
// Author  : Abubakar Shuaibu
// Testbench : 4x1 Multiplexer
//========================================

module mux4x1_tb;

reg I0;
reg I1;
reg I2;
reg I3;
reg [1:0] S;
wire Y;

// Module instantiation
mux4x1 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S(S),
    .Y(Y)
);

initial begin

    $monitor("Time=%0t | I0=%b I1=%b I2=%b I3=%b S=%b | Y=%b",
              $time, I0, I1, I2, I3, S, Y);

    I0=0; I1=1; I2=0; I3=1;

    S=2'b00;
    #2;

    S=2'b01;
    #2;

    S=2'b10;
    #2;

    S=2'b11;
    #2;

end

endmodule