//========================================
// Author : Abubakar Shuaibu
// Testbench : 4x1 Multiplexer
//========================================

module mux4x1_tb;

reg I0, I1, I2, I3;
reg [1:0] S;

wire Y;

mux4x1 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S(S),
    .Y(Y)
);

initial begin

    // Monitor input and output changes
    $monitor("I0=%b I1=%b I2=%b I3=%b S=%b Y=%b",
             I0, I1, I2, I3, S, Y);

    I0=1; I1=0; I2=0; I3=0;

    S=2'b00; #2;
    S=2'b01; #2;
    S=2'b10; #2;
    S=2'b11; #2;

end

endmodule