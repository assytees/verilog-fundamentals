//*****************************************************************************
// Module Name : demux1to2_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Testbench for the 1-to-2 Demultiplexer using dataflow modeling.
//*****************************************************************************

module demux1to2_tb;

reg d, sel;        // Test inputs
wire y0, y1;       // DUT outputs

// Instantiate the Device Under Test (DUT)
demux1to2 uut(
    .d(d),
    .sel(sel),
    .y0(y0),
    .y1(y1)
);

initial begin

    // Display input and output values during simulation
    $monitor("d=%b sel=%b => y0=%b y1=%b", d, sel, y0, y1);

    // Apply test cases
    d = 1;
    sel = 0; #10;
    sel = 1; #10;

    d = 0; sel = 0; #10;
    d = 1; sel = 1; #10;

    $finish;      // End simulation

end

// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, demux1to2_tb);
end

endmodule