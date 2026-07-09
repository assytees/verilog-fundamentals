//*****************************************************************************
// Module Name : sr_ff
// Author      : Abubakar Shuaibu
// Date        : 09 July 2026
// Description : SR Flip-Flop using behavioral modeling.
//*****************************************************************************
module sr_ff(
    input S,
    input R,
    input clk,
    input reset,
    output reg Q
);

always @(posedge clk)
begin
    if (reset)
        Q <= 0;
    else if (S == 0 && R == 0)
        Q <= Q;
    else if (S == 0 && R == 1)
        Q <= 0;
    else if (S == 1 && R == 0)
        Q <= 1;
    else
        Q <= 1'bx;
end

endmodule


