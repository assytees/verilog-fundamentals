//*****************************************************************************
// Module Name : mux2x1_bhv_modelling_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for the 2-to-1 Multiplexer using behavioral modeling.
//*****************************************************************************

module mux2x1_bhv_modelling_tb();

reg a, b, s;      // Test inputs
wire y;           // DUT output

// Instantiate the Device Under Test (DUT)
mux2x1_bhv_modelling dut(a, b, s, y);

initial begin

    // Display input and output values during simulation
    $monitor("a=%0d, b=%0d, s=%0d, y=%0d", a, b, s, y);

    // Apply all possible input combinations (2³ = 8)
    a = 0; b = 0; s = 0;
    #2 a = 0; b = 0; s = 1;
    #2 a = 0; b = 1; s = 0;
    #2 a = 0; b = 1; s = 1;
    #2 a = 1; b = 0; s = 0;
    #2 a = 1; b = 0; s = 1;
    #2 a = 1; b = 1; s = 0;
    #2 a = 1; b = 1; s = 1;

end

// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, mux2x1_bhv_modelling_tb);
end

endmodule