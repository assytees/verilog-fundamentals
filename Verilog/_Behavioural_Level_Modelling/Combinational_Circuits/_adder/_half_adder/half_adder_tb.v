//*****************************************************************************
// Module Name : half_adder_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for verifying the functionality of the Half Adder.
//*****************************************************************************

module half_adder_tb;

reg A, B;              // Test inputs
wire Sum, Carry;       // DUT outputs

// Instantiate the Device Under Test (DUT)
half_adder dut(
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin

    // Display signal values during simulation
    $monitor("Time=%0t A=%b B=%b Sum=%b Carry=%b",
              $time, A, B, Sum, Carry);

    // Apply all input combinations
    A = 0; B = 0;
    #10 A = 0; B = 1;
    #10 A = 1; B = 0;
    #10 A = 1; B = 1;

    #10 $finish;        // End simulation

end

// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, half_adder_tb);
end

endmodule