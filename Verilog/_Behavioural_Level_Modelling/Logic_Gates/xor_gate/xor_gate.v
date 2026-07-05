//*****************************************************************************
// Module Name : xor_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input XOR gate using behavioral modeling.
//*****************************************************************************

module xor_gate(

    input a, b,      // Input signals
    output reg y     // Output signal

);

// Perform XOR operation
always @(*) begin
    y = a ^ b;
end

endmodule