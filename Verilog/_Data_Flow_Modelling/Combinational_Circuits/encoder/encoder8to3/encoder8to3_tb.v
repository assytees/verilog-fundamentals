//*****************************************************************************
// Module Name : encoder8to3_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for the 8-to-3 Encoder using dataflow modeling.
//*****************************************************************************

module encoder8to3_tb;

reg D0, D1, D2, D3, D4, D5, D6, D7;   // Test inputs
wire Y0, Y1, Y2;                      // DUT outputs

// Instantiate the Device Under Test (DUT)
encoder8to3 uut(
    .D0(D0), .D1(D1), .D2(D2), .D3(D3),
    .D4(D4), .D5(D5), .D6(D6), .D7(D7),
    .Y0(Y0), .Y1(Y1), .Y2(Y2)
);

initial begin

    // Display output values during simulation
    $monitor("Y2=%b Y1=%b Y0=%b", Y2, Y1, Y0);

    // Apply valid encoder input combinations
    D0=1; D1=0; D2=0; D3=0; D4=0; D5=0; D6=0; D7=0; #10;
    D0=0; D1=1; D2=0; D3=0; D4=0; D5=0; D6=0; D7=0; #10;
    D0=0; D1=0; D2=1; D3=0; D4=0; D5=0; D6=0; D7=0; #10;
    D0=0; D1=0; D2=0; D3=1; D4=0; D5=0; D6=0; D7=0; #10;
    D0=0; D1=0; D2=0; D3=0; D4=1; D5=0; D6=0; D7=0; #10;
    D0=0; D1=0; D2=0; D3=0; D4=0; D5=1; D6=0; D7=0; #10;
    D0=0; D1=0; D2=0; D3=0; D4=0; D5=0; D6=1; D7=0; #10;
    D0=0; D1=0; D2=0; D3=0; D4=0; D5=0; D6=0; D7=1; #10;

    $finish;      // End simulation

end

// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, encoder8to3_tb);
end

endmodule