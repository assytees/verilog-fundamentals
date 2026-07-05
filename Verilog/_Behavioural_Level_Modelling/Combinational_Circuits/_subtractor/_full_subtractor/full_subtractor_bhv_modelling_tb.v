//*****************************************************************************
// Module Name : full_subtractor_bhv_modelling_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for the Full Subtractor using behavioral modeling.
//*****************************************************************************

module full_subtractor_bhv_modelling_tb();

reg a, b, cin;            // Test inputs
wire diff, borrow;        // DUT outputs

// Instantiate the Device Under Test (DUT)
full_subtractor_bhv_modelling dut(
    a,
    b,
    cin,
    diff,
    borrow
);

initial begin

    // Display input and output values during simulation
    $monitor("a=%0d, b=%0d, cin=%0d, diff=%0d, borrow=%0d",
              a, b, cin, diff, borrow);

    // Apply all possible input combinations (2³ = 8)
    a = 0; b = 0; cin = 0;
    #2 a = 0; b = 0; cin = 1;
    #2 a = 0; b = 1; cin = 0;
    #2 a = 0; b = 1; cin = 1;
    #2 a = 1; b = 0; cin = 0;
    #2 a = 1; b = 0; cin = 1;
    #2 a = 1; b = 1; cin = 0;
    #2 a = 1; b = 1; cin = 1;

    #2 $finish;           // End simulation

end

// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, full_subtractor_bhv_modelling_tb);
end

endmodule