module encoder8x3_tb;

reg I0, I1, I2, I3, I4, I5, I6, I7;
wire Y2, Y1, Y0;

// Instantiate DUT
encoder8x3 dut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .Y2(Y2),
    .Y1(Y1),
    .Y0(Y0)
);

initial begin

    $monitor("I7=%b I6=%b I5=%b I4=%b I3=%b I2=%b I1=%b I0=%b | Y=%b%b%b",
              I7,I6,I5,I4,I3,I2,I1,I0,Y2,Y1,Y0);

    I7=0; I6=0; I5=0; I4=0; I3=0; I2=0; I1=0; I0=1;
    #10 I0=0; I1=1;
    #10 I1=0; I2=1;
    #10 I2=0; I3=1;
    #10 I3=0; I4=1;
    #10 I4=0; I5=1;
    #10 I5=0; I6=1;
    #10 I6=0; I7=1;

    #10 $finish;

end

endmodule