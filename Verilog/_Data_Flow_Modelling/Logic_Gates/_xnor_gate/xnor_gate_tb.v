//*****************************************************************************
// Module Name : xnor_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input XNOR gate using dataflow modeling.
//*****************************************************************************

module xnor_gate(

    input a, b,      // Input signals
    output y         // Output signal

);

// Perform XNOR operation using continuous assignment
assign y = ~(a ^ b);

endmodule