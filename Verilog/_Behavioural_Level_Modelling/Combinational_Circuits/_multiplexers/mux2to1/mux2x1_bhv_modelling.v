//*****************************************************************************
// Module Name : mux2x1_bhv_modelling
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-to-1 Multiplexer using behavioral modeling.
//*****************************************************************************

module mux2x1_bhv_modelling(a, b, s, y);

input a, b, s;      // Data inputs and select line
output y;
reg y;              // Output declared as reg for always block

// Select one of the two inputs based on s
always @(*) begin
    y = s ? b : a;  // If s=1, output b; otherwise, output a
end

endmodule