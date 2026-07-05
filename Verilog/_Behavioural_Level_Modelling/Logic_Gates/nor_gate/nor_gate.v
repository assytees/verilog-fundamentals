//*****************************************************************************
// Module Name : nor_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input NOR gate using behavioral modeling.
//*****************************************************************************

module nor_gate(

    input a, b,      // Input signals
    output reg y     // Output signal

);

// Perform NOR operation
always @(*) begin
    y = ~(a | b);
end

endmodule