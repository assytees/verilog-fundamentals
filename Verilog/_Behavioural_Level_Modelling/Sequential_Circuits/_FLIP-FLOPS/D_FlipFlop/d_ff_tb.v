//*****************************************************************************
// Module Name : d_ff
// Author      : Abubakar Shuaibu
// Date        : 09 July 2026
// Description : TEST-BENCH - D Flip-Flop using behavioral modeling.
//*****************************************************************************
module d_ff_tb;

reg D, clk, reset;
wire Q;

// DUT Instantiation
d_ff dut(
    .D(D),
    .clk(clk),
    .reset(reset),
    .Q(Q)
);

// Clock Generation
initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test Stimulus
initial
begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,d_ff_tb);
    $monitor("clk=%b reset=%b D=%b Q=%b", clk, reset, D, Q);

    reset = 1; D = 0; #10;   // Initialize

    reset = 0; D = 0; #10;   // 0

    reset = 0; D = 1; #10;   // 1

    reset = 0; D = 0; #10;   // 0

    reset = 0; D = 1; #10;   // 1

    $finish;
end

endmodule
