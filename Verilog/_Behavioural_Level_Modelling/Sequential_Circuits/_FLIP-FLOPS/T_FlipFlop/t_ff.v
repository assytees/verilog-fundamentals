//*****************************************************************************
// Module Name : t_ff
// Author      : Abubakar Shuaibu
// Date        : 09 July 2026
// Description : T Flip-Flop using behavioral modeling.
//*****************************************************************************
module t_ff(
    input T,
    input clk,
    input reset,
    output reg Q
);

always @(posedge clk)
begin
    if (reset)
        Q <= 0;
    else if (T == 0)
        Q <= Q;      // Hold
    else
        Q <= ~Q;     // Toggle
end

endmodule
