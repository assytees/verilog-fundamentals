//Abubakar Shuaibu
module encoder4x2_tb;

reg I0, I1, I2, I3;
wire Y1, Y0;

// Instantiate DUT
encoder4x2 dut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .Y1(Y1),
    .Y0(Y0)
);

initial begin

    $monitor("I3=%b I2=%b I1=%b I0=%b | Y1=%b Y0=%b",
              I3, I2, I1, I0, Y1, Y0);

    // Test Case 1
    I3=0; I2=0; I1=0; I0=1;

    // Test Case 2
    #10 I3=0; I2=0; I1=1; I0=0;

    // Test Case 3
    #10 I3=0; I2=1; I1=0; I0=0;

    // Test Case 4
    #10 I3=1; I2=0; I1=0; I0=0;

    #10 $finish;

end

endmodule