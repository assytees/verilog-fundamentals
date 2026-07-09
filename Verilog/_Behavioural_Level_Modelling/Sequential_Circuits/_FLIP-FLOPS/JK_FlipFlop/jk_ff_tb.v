//*****************************************************************************
// Module Name : jk_ff
// Author      : Abubakar Shuaibu
// Date        : 09 July 2026
// Description : TEST_BENCH - JK Flip-Flop using behavioral modeling.
//*****************************************************************************
module jk_ff_tb;
reg clk,rst;
reg J, K;
wire Q;

// DUT Instantiation
jk_ff dut (
    .clk(clk),
    .rst(rst),
    .J(J),
    .K(K),
    .Q(Q)
);

// Clock Generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test Vectors
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,jk_ff_tb);
	clk=0; rst=0;
    J = 0; K = 0;   // No Change
    #10;

    J = 0; K = 1;   // Reset
    #10;

    J = 1; K = 0;   // Set
    #10;

    J = 1; K = 1;   // Toggle
    #10;

    J = 1; K = 1;   // Toggle Again
    #10;

    $finish;
end
   

endmodule
