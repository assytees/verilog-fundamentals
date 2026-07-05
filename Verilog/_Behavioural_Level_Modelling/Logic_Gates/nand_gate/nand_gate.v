//*****************************************************************************
// Module Name : nand_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input NAND gate using behavioral modeling.
//*****************************************************************************

module nand_gate(

    input a, b,      // Input signals
    output reg y     // Output signal

);

// Perform NAND operation
always @(*) begin
    y = ~(a & b);
end

endmodule