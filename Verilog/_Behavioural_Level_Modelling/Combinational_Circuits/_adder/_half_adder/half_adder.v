//*****************************************************************************
// Module Name : half_adder
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description :
// This module implements a 1-bit Half Adder using behavioral modeling.
// A Half Adder adds two 1-bit binary inputs (A and B) and produces
// a Sum and a Carry output. Unlike a Full Adder, it does not have
// a carry-in (Cin) input.
//*****************************************************************************

module half_adder(

    input A, B,              // Declare the two 1-bit input signals:
                              // A = First operand
                              // B = Second operand

    output reg Sum, Carry     // Declare the outputs as 'reg' because they
                              // are assigned inside an always block.
                              // Sum   = Result of binary addition
                              // Carry = Carry generated from the addition

);

    // Behavioral block that executes whenever any input changes.
    // The (*) automatically includes all signals referenced in the block.
    always @(*) begin

        // Calculate the Sum output.
        // XOR produces a logic 1 only when the inputs are different.
        // Truth Table:
        // A B | Sum
        // 0 0 | 0
        // 0 1 | 1
        // 1 0 | 1
        // 1 1 | 0
        Sum = A ^ B;

        // Calculate the Carry output.
        // AND produces a logic 1 only when both inputs are 1.
        // Truth Table:
        // A B | Carry
        // 0 0 | 0
        // 0 1 | 0
        // 1 0 | 0
        // 1 1 | 1
        Carry = A & B;

    end

endmodule // End of the half_adder module