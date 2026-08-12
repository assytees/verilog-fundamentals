//========================================
// Author : Abubakar Shuaibu
// Testbench : 8x3 Encoder
//========================================

module encoder8x3_tb;

reg I0, I1, I2, I3, I4, I5, I6, I7;

wire Y0, Y1, Y2;

encoder8x3 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2)
);

initial begin

    // Monitor input and output changes
    $monitor("I0=%b I1=%b I2=%b I3=%b I4=%b I5=%b I6=%b I7=%b Y2=%b Y1=%b Y0=%b",
             I0, I1, I2, I3, I4, I5, I6, I7, Y2, Y1, Y0);

    I0=1; I1=0; I2=0; I3=0; I4=0; I5=0; I6=0; I7=0; #2;
    I0=0; I1=1; I2=0; I3=0; I4=0; I5=0; I6=0; I7=0; #2;
    I0=0; I1=0; I2=1; I3=0; I4=0; I5=0; I6=0; I7=0; #2;
    I0=0; I1=0; I2=0; I3=1; I4=0; I5=0; I6=0; I7=0; #2;
    I0=0; I1=0; I2=0; I3=0; I4=1; I5=0; I6=0; I7=0; #2;
    I0=0; I1=0; I2=0; I3=0; I4=0; I5=1; I6=0; I7=0; #2;
    I0=0; I1=0; I2=0; I3=0; I4=0; I5=0; I6=1; I7=0; #2;
    I0=0; I1=0; I2=0; I3=0; I4=0; I5=0; I6=0; I7=1; #2;

end

endmodule