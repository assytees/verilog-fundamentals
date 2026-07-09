//*****************************************************************************
// Module Name : siso_tb
// Author      : Abubakar Shuaibu
// Date        : 09 July 2026
// Description : Testbench for 4-bit Serial-In Serial-Out (SISO)
//               Shift Register.
//*****************************************************************************

module siso_tb;

reg clk;
reg sin;
wire sout;

// Instantiate the SISO Shift Register
siso dut(
    .clk(clk),
    .sin(sin),
    .sout(sout)
);

// Generate clock with 10 ns period
initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Apply test inputs
initial
begin
    // Generate waveform file
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, siso_tb);

    // Display signal values
    $monitor("Time=%0t clk=%b sin=%b sout=%b",
              $time, clk, sin, sout);

    // Apply serial input bits: 1 0 1 1
    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 1; #10;

    // Continue shifting zeros
    sin = 0; #10;
    sin = 0; #10;
    sin = 0; #10;
    sin = 0; #10;

    // End simulation
    $finish;
end

endmodule