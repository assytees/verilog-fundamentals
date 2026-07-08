//*****************************************************************************
// Testbench for casex_example
//*****************************************************************************

module casex_example_tb;          // Begin testbench module

reg [1:0] data;                  // Declare a 2-bit register to drive the DUT input

wire [3:0] out;                  // Declare a 4-bit wire to receive DUT output

// Instantiate the Device Under Test (DUT)
casex_example dut(data, out);

initial begin                    // Initial block executes only once at simulation start

    // Continuously prints values whenever data or out changes
    $monitor("data=%b, out=%d", data, out);

    // Time = 0
    data = 2'bx1;                // Apply x1 to the input

    // Wait 1 time unit
    #1 data = 2'b0x;             // Apply 0x

    // Wait another 1 time unit
    #1 data = 2'bx0;             // Apply x0

    // Wait another 1 time unit
    #1 data = 2'bz1;             // Apply z1

    // Wait another 1 time unit
    #1 data = 2'b0z;             // Apply 0z

    // Wait another 1 time unit
    #1 data = 2'bz0;             // Apply z0

    // Wait another 1 time unit
    #1 data = 2'b1z;             // Apply 1z

end                              // End of initial block
// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, casex_example_tb);
end

endmodule                        // End of testbench
