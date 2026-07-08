//*****************************************************************************
// Module Name : jk_flipflop_bhv_case
// Author      : Abubakar Shuaibu
// Date        : 07 July 2026
// Description : JK Flip-Flop using behavioral modeling with a case statement.
//*****************************************************************************

module jk_flipflop_bhv_case(
    input j,          // J input
    input k,          // K input
    input clk,        // Clock input
    input rst,        // Asynchronous reset
    output reg q      // Output
);

// JK Flip-Flop operation
always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 1'b0;    // Reset output
    else begin
        case ({j, k})
            2'b00: q <= q;      // No change
            2'b01: q <= 1'b0;   // Reset
            2'b10: q <= 1'b1;   // Set
            2'b11: q <= ~q;     // Toggle
            default: q <= q;
        endcase
    end
end

endmodule

/*This is a standard behavioral implementation using:

always @(posedge clk or posedge rst) for edge-triggered operation.
An if statement for the asynchronous reset.
A case statement to implement the four JK flip-flop operating modes. */