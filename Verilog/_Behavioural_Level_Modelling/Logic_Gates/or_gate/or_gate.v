//*****************************************************************************
// Module Name : or_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input OR gate using behavioral modeling.
//*****************************************************************************

module or_gate(

    input a, b,      // Input signals
    output reg y     // Output signal

);

// Perform OR operation
always @(*) begin
    y = a | b;
end

endmodule