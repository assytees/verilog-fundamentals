//*****************************************************************************
// Module Name : comparator1bit_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for the 1-bit Comparator using dataflow modeling.
//*****************************************************************************

module comparator1bit_tb;

reg A, B;                        // Test inputs
wire A_gt_B, A_eq_B, A_lt_B;     // DUT outputs

// Instantiate the Device Under Test (DUT)
comparator1bit uut(
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_eq_B(A_eq_B),
    .A_lt_B(A_lt_B)
);

initial begin

    // Display input and output values during simulation
    $monitor("A=%b B=%b => GT=%b EQ=%b LT=%b",
              A, B, A_gt_B, A_eq_B, A_lt_B);

    // Apply all input combinations
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;      // End simulation

end

// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, comparator1bit_tb);
end

endmodule