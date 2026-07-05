//*****************************************************************************
// Module Name : nand_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input NAND gate using dataflow modeling.
//*****************************************************************************

module nand_gate(

    input a, b,      // Input signals
    output y         // Output signal

);

// Perform NAND operation using continuous assignment
assign y = ~(a & b);

endmodule