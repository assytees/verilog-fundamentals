//*****************************************************************************
// Module Name : and_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input AND gate using behavioral modeling.
//*****************************************************************************

module and_gate(

    input a, b,      // Input signals
    output reg y     // Output signal

);

// Perform AND operation
always @(*) begin
    y = a & b;
end

endmodule