//*****************************************************************************
// Module Name : decoder2to4_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for the 2-to-4 Decoder using dataflow modeling.
//*****************************************************************************

module decoder2to4_tb;

reg A, B;                 // Test inputs
wire Y0, Y1, Y2, Y3;      // DUT outputs

// Instantiate the Device Under Test (DUT)
decoder2to4 uut(
    .A(A),
    .B(B),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    // Display input and output values during simulation
    $monitor("A=%b B=%b => Y0=%b Y1=%b Y2=%b Y3=%b",
              A, B, Y0, Y1, Y2, Y3);

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
    $fsdbDumpvars(0, decoder2to4_tb);
end

endmodule