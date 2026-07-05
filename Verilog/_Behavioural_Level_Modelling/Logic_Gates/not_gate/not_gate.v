//*****************************************************************************
// Module Name : not_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 1-input NOT gate using behavioral modeling.
//*****************************************************************************

module not_gate(

    input a,         // Input signal
    output reg y     // Output signal

);

// Perform NOT operation
always @(*) begin
    y = ~a;
end

endmodule