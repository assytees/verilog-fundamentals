//*****************************************************************************
// Module Name : or_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input OR gate using dataflow modeling.
//*****************************************************************************

module or_gate(

    input a, b,      // Input signals
    output y         // Output signal

);

// Perform OR operation using continuous assignment
assign y = a | b;

endmodule