//*****************************************************************************
// Module Name : dec2x4_bhv_modelling
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-to-4 Decoder using behavioral modeling.
//*****************************************************************************

module dec2x4_bhv_modelling(a, b, y0, y1, y2, y3);

input a, b;              // Decoder inputs
output y0, y1, y2, y3;   // Decoder outputs
reg y0, y1, y2, y3;      // Outputs declared as reg for always block

// Decode inputs to activate one output
always @(*) begin
    y0 = (~a & ~b);      // Output 0 active for 00
    y1 = (~a &  b);      // Output 1 active for 01
    y2 = ( a & ~b);      // Output 2 active for 10
    y3 = ( a &  b);      // Output 3 active for 11
end

endmodule