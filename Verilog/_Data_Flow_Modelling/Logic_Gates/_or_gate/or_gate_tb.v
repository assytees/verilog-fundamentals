//*****************************************************************************
// Module Name : or_gate_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for the 2-input OR gate using dataflow modeling.
//*****************************************************************************

module or_gate_tb;

reg a, b;      // Test inputs
wire y;        // DUT output

// Instantiate the Device Under Test (DUT)
or_gate dut(a, b, y);

initial begin

    // Display input and output values during simulation
    $monitor("a=%0d, b=%0d, y=%0d", a, b, y);

    // Apply all input combinations
    #2 a = 0; b = 0;
    #2 a = 0; b = 1;
    #2 a = 1; b = 0;
    #2 a = 1; b = 1;

    #2 $finish;      // End simulation

end

// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, or_gate_tb);
end

endmodule