//*****************************************************************************
// Module Name : encoder4to2_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for the 4-to-2 Encoder using dataflow modeling.
//*****************************************************************************

module encoder4to2_tb;

reg D0, D1, D2, D3;      // Test inputs
wire Y0, Y1;             // DUT outputs

// Instantiate the Device Under Test (DUT)
encoder4to2 uut(
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin

    // Display input and output values during simulation
    $monitor("D3=%b D2=%b D1=%b D0=%b => Y1=%b Y0=%b",
              D3, D2, D1, D0, Y1, Y0);

    // Apply valid encoder input combinations
    D3 = 0; D2 = 0; D1 = 0; D0 = 1; #10;
    D3 = 0; D2 = 0; D1 = 1; D0 = 0; #10;
    D3 = 0; D2 = 1; D1 = 0; D0 = 0; #10;
    D3 = 1; D2 = 0; D1 = 0; D0 = 0; #10;

    $finish;      // End simulation

end

// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, encoder4to2_tb);
end

endmodule