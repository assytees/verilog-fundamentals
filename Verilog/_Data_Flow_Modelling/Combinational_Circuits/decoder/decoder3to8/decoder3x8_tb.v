module decoder3x8_tb;

reg A;
reg B;
reg C;

wire Y0;
wire Y1;
wire Y2;
wire Y3;
wire Y4;
wire Y5;
wire Y6;
wire Y7;

// Instantiate the Design Under Test (DUT)
decoder3x8 dut(
    .A(A),
    .B(B),
    .C(C),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
);

initial begin

    // Display the inputs and outputs
    $monitor("A=%b B=%b C=%b | Y0=%b Y1=%b Y2=%b Y3=%b Y4=%b Y5=%b Y6=%b Y7=%b",
              A, B, C, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);

    // Test Case 1: Input = 000
    A = 0; B = 0; C = 0;

    // Test Case 2: Input = 001
    #10 A = 0; B = 0; C = 1;

    // Test Case 3: Input = 010
    #10 A = 0; B = 1; C = 0;

    // Test Case 4: Input = 011
    #10 A = 0; B = 1; C = 1;

    // Test Case 5: Input = 100
    #10 A = 1; B = 0; C = 0;

    // Test Case 6: Input = 101
    #10 A = 1; B = 0; C = 1;

    // Test Case 7: Input = 110
    #10 A = 1; B = 1; C = 0;

    // Test Case 8: Input = 111
    #10 A = 1; B = 1; C = 1;

end

endmodule