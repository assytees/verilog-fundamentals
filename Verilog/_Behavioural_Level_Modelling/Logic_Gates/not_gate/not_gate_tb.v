//*****************************************************************************
// Module Name : not_gate_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for the 1-input NOT gate.
//*****************************************************************************

module not_gate_tb;

reg a;          // Test input
wire y;         // DUT output

// Instantiate the Device Under Test (DUT)
not_gate uut (
    .a(a),
    .y(y)
);

initial begin

    // Display input and output values during simulation
    $monitor("a=%b, y=%b", a, y);

    // Apply all input combinations
    a = 0; #10;
    a = 1; #10;

    $finish;      // End simulation

end

// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, not_gate_tb);
end

endmodule