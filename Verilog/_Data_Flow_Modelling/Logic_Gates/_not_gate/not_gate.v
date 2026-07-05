//*****************************************************************************
// Module Name : not_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 1-input NOT gate using dataflow modeling.
//*****************************************************************************

module not_gate(

    input a,       // Input signal
    output y       // Output signal

);

// Perform NOT operation using continuous assignment
assign y = ~a;

endmodule