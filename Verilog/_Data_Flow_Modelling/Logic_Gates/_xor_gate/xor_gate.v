//*****************************************************************************
// Module Name : xor_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input XOR gate using dataflow modeling.
//*****************************************************************************

module xor_gate(

    input a, b,      // Input signals
    output y         // Output signal

);

// Perform XOR operation using continuous assignment
assign y = a ^ b;

endmodule