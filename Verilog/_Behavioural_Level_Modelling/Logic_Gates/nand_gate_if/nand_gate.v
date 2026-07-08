//*****************************************************************************
// Module Name : nand_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input NAND gate using behavioral modeling with if-else.
//*****************************************************************************

module nand_gate(

    input a, b,      // Input signals
    output reg y     // Output signal

);

// Perform NAND operation using if-else
always @(*) begin
    if (a == 1'b1 && b == 1'b1)
        y = 1'b0;
    else
        y = 1'b1;
end

endmodule