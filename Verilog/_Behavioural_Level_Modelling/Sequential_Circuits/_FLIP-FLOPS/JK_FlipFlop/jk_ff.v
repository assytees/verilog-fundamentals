//*****************************************************************************
// Module Name : jk_ff
// Author      : Abubakar Shuaibu
// Date        : 09 July 2026
// Description : JK Flip-Flop using behavioral modeling.
//*****************************************************************************
module jk_ff(
    input clk,
    input J,
    input K,
    input rst,
    output reg Q
);

always @(posedge clk)
begin
    if(!rst)
	    Q<=0;
    else
	case ({J, K})
        2'b00: Q <= Q;      // No Change
        2'b01: Q <= 1'b0;   // Reset
        2'b10: Q <= 1'b1;   // Set
        2'b11: Q <= ~Q;     // Toggle
        default: Q <= 1'bx;
    endcase
end
endmodule
