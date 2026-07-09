//*****************************************************************************
// Module Name : t_ff_tb
// Author      : Abubakar Shuaibu
// Date        : 09 July 2026
// Description : Testbench for T Flip-Flop.
//*****************************************************************************
module t_ff_tb;

reg T, clk, reset;
wire Q;

// DUT Instantiation
t_ff dut(
    .T(T),
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
	$fsdbDumpvars(0,t_ff_tb);

    $monitor("clk=%b reset=%b T=%b Q=%b", clk, reset, T, Q);

    reset = 1; T = 0; #10;   // Initialize

    reset = 0; T = 0; #10;   // 0 - Hold

    reset = 0; T = 1; #10;   // 1 - Toggle

    reset = 0; T = 0; #10;   // 0 - Hold

    reset = 0; T = 1; #10;   // 1 - Toggle

    $finish;
end

endmodule
