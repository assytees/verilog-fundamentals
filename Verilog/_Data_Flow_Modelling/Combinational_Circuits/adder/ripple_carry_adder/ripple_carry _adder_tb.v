module ripple_carry_adder_tb;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

// Instantiate DUT
ripple_carry_adder dut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    // Display outputs
    $monitor("A=%b B=%b Cin=%b | Sum=%b Cout=%b",
              A, B, Cin, Sum, Cout);

    // Test Case 1
    A = 4'b0000; B = 4'b0000; Cin = 0;

    // Test Case 2
    #10 A = 4'b0011; B = 4'b0101; Cin = 0;

    // Test Case 3
    #10 A = 4'b1010; B = 4'b0101; Cin = 0;

    // Test Case 4
    #10 A = 4'b1111; B = 4'b0001; Cin = 0;

    // Test Case 5
    #10 A = 4'b1111; B = 4'b1111; Cin = 1;

end

endmodule