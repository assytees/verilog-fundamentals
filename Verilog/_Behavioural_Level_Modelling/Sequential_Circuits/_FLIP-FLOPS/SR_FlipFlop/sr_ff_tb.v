//*****************************************************************************
// Module Name : sr_ff_tb
// Author      : Abubakar Shuaibu
// Date        : 09 July 2026
// Description : Testbench for SR Flip-Flop.
//*****************************************************************************
module sr_ff_tb;

reg S,R, clk,reset;
wire Q;

sr_ff dut(
	.S(S),
	.R(R),
	.clk(clk),
	.reset(reset),
	.Q(Q)
);
initial begin 
clk =0;
forever #5 clk=~clk;
end 
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,sr_ff_tb);
	$monitor("clk=%b reset=%b S=%b R=%b Q=%b", clk, reset,S,R,Q);
	reset =1; S=0; R=0;#10;//initialise
	reset =0; S=0; R=0;#10;//hold

reset =0; S=0;//reset

reset =0; S=1; R=0;#10;//set
reset =0; S=1; R=1;#10;//invalid
$finish;
end

endmodule




