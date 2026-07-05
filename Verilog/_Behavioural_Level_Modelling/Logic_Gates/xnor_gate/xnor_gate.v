//*****************************************************************************
// Module Name : xnor_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input XNOR gate using behavioral modeling.
//*****************************************************************************

module xnor_gate(

    input a, b,      // Input signals
    output reg y     // Output signal

);

// Perform XNOR operation
always @(*) begin
    y = ~(a ^ b);
end

endmodule