//*****************************************************************************
// Module Name : jk_flipflop_bhv_case_tb
// Author      : Abubakar Shuaibu
// Date        : 07 July 2026
// Description : Testbench for JK Flip-Flop using behavioral modeling.
//*****************************************************************************

module jk_flipflop_bhv_case_tb;

// Testbench signals
reg j, k, clk, rst;
wire q;

// Instantiate the Unit Under Test (UUT)
jk_flipflop_bhv_case uut (
    .j(j),
    .k(k),
    .clk(clk),
    .rst(rst),
    .q(q)
);

// Clock generation (10 ns period)
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Apply test vectors
initial begin

    // Initialize inputs
    j = 0;
    k = 0;
    rst = 1;

    // Hold reset for one clock cycle
    #10;
    rst = 0;

    // Test 1: Hold (Q remains unchanged)
    j = 0; k = 0;
    #10;

    // Test 2: Reset (Q = 0)
    j = 0; k = 1;
    #10;

    // Test 3: Set (Q = 1)
    j = 1; k = 0;
    #10;

    // Test 4: Toggle (Q changes every clock edge)
    j = 1; k = 1;
    #10;
    #10;
    #10;

    // Test 5: Hold again
    j = 0; k = 0;
    #10;

    // End simulation
    $stop;

end
// Generate FSDB waveform file
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, jk_flipflop_bhv_case_tb);
end


endmodule
