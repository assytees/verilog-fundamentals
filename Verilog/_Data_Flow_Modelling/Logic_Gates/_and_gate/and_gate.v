//*****************************************************************************
// Module Name : and_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input AND gate using dataflow modeling.
//*****************************************************************************

module and_gate(

    input a, b,      // Input signals
    output y         // Output signal

);

// Perform AND operation using continuous assignment
assign y = a & b;

endmodule