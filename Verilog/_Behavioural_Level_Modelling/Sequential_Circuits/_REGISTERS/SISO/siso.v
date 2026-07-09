//*****************************************************************************
// Module Name : siso
// Author      : Abubakar Shuaibu
// Date        : 09 July 2026
// Description : 4-bit Serial-In Serial-Out (SISO) Shift Register using
//               behavioral modeling.
//*****************************************************************************

module siso(
    input clk,          // Clock input
    input sin,          // Serial input
    output sout         // Serial output
);

reg [3:0] q;            // Shift register

// Trigger on the positive edge of the clock
always @(posedge clk)
begin
    q[3] <= sin;        // Load serial input
    q[2] <= q[3];       // Shift data
    q[1] <= q[2];
    q[0] <= q[1];
end

// Serial output
assign sout = q[0];

endmodule