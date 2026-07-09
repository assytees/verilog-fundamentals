//*****************************************************************************
// Module Name : d_ff
// Author      : Abubakar Shuaibu
// Date        : 09 July 2026
// Description : D Flip-Flop using behavioral modeling.
//*****************************************************************************
module d_ff(
    input D,
    input clk,
    input reset,
    output reg Q
);

always @(posedge clk)
begin
    if (reset)
        Q <= 0;
    else if (D == 0)
        Q <= 0;
    else
        Q <= 1;
end

endmodule
