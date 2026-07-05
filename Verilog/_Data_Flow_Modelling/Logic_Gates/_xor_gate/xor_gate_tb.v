//*****************************************************************************
// Module Name : xor_gate_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for the 2-input XOR gate using dataflow modeling.
//*****************************************************************************

module xor_gate_tb;

reg a, b;        // Test inputs
wire y;          // DUT output

// Instantiate the Device Under Test (DUT)
xor_gate uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin

    // Display input and output values during simulation
    $monitor("a=%b, b=%b, y=%b", a, b, y);

    // Apply all input combinations
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;      // End simulation

end

// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, xor_gate_tb);
end

endmodule