//*****************************************************************************
// Module Name : nor_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input NOR gate using dataflow modeling.
//*****************************************************************************

module nor_gate(

    input a, b,      // Input signals
    output y         // Output signal

);

// Perform NOR operation using continuous assignment
assign y = ~(a | b);

endmodule