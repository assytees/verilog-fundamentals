//*****************************************************************************
// Module Name : dec2x4_bhv_modelling_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for the 2-to-4 Decoder using behavioral modeling.
//*****************************************************************************

module dec2x4_bhv_modelling_tb();

reg a, b;                 // Test inputs
wire y0, y1, y2, y3;      // DUT outputs

// Instantiate the Device Under Test (DUT)
dec2x4_bhv_modelling dut(a, b, y0, y1, y2, y3);

initial begin

    // Display input and output values during simulation
    $monitor("a=%0d,b=%0d,y0=%0d,y1=%0d,y2=%0d,y3=%0d",
              a, b, y0, y1, y2, y3);

    // Apply all input combinations
    a = 0; b = 0;
    #2 a = 0; b = 1;
    #2 a = 1; b = 0;
    #2 a = 1; b = 1;

end

// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, dec2x4_bhv_modelling_tb);
end

endmodule