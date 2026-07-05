//*****************************************************************************
// Module Name : full_adder_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for the 1-bit Full Adder using dataflow modeling.
//*****************************************************************************

module full_adder_tb;

reg A, B, Cin;          // Test inputs
wire Sum, Carry;        // DUT outputs

// Instantiate the Device Under Test (DUT)
full_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin

    // Display input and output values during simulation
    $monitor("A=%b B=%b Cin=%b => Sum=%b Carry=%b",
              A, B, Cin, Sum, Carry);

    // Apply all input combinations
    A = 0; B = 0; Cin = 0; #10;
    A = 0; B = 0; Cin = 1; #10;
    A = 0; B = 1; Cin = 0; #10;
    A = 0; B = 1; Cin = 1; #10;
    A = 1; B = 0; Cin = 0; #10;
    A = 1; B = 0; Cin = 1; #10;
    A = 1; B = 1; Cin = 0; #10;
    A = 1; B = 1; Cin = 1; #10;

    $finish;      // End simulation

end

// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, full_adder_tb);
end

endmodule