//*****************************************************************************
// Module Name : and_gate
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-input AND gate using behavioral modeling with an if-else statement.
//*****************************************************************************

module and_gate(

    input a, b,      // Input signals
    output reg y     // Output signal

);

// Perform AND operation using if-else
always @(*) begin
    if (a == 1'b1 && b == 1'b1)
        y = 1'b1;    // Output is 1 when both inputs are 1
    else
        y = 1'b0;    // Otherwise, output is 0
end

endmodule