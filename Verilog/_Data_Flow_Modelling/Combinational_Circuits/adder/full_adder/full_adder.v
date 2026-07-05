//*****************************************************************************
// Module Name : full_adder
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 1-bit Full Adder using dataflow modeling.
//*****************************************************************************

module full_adder(

    input A, B, Cin,      // Input signals
    output Sum, Carry     // Sum and carry outputs

);

// Compute sum and carry using continuous assignments
assign Sum   = A ^ B ^ Cin;
assign Carry = (A & B) | (Cin & (A ^ B));

endmodule