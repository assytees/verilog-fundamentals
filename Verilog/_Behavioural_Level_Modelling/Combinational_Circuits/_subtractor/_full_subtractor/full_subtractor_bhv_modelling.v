//*****************************************************************************
// Module Name : full_subtractor_bhv_modelling
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : Full Subtractor using behavioral modeling.
//*****************************************************************************

module full_subtractor_bhv_modelling(a, b, cin, diff, borrow);

input a, b, cin;          // Inputs: minuend, subtrahend, and borrow-in
output borrow, diff;
reg borrow, diff;         // Outputs assigned in always block

// Compute difference and borrow
always @(*) begin
    diff   = a ^ b ^ cin;                        // Difference output
    borrow = (~a & b) | (~a & cin) | (b & cin); // Borrow output
end

endmodule