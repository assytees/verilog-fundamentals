//*****************************************************************************
// Module Name : casex_example
// Description : Demonstrates the use of the CASEX statement in Verilog.
//               CASEX treats both 'x' (unknown) and 'z' (high impedance)
//               as don't-care bits during comparison.
//*****************************************************************************

module casex_example(              // Begin module declaration
    input [1:0] data,             // Declare a 2-bit input named data
    output reg [3:0] out);        // Declare a 4-bit output register named out

// Always block executes whenever any input inside the block changes
always @(*) begin

    // CASEX compares 'data' with each case item.
    // Both x and z are treated as don't-care bits.
    casex(data)

        2'b0z: out = 1;           // Matches 00, 01, 0x and 0z
        2'bz0: out = 2;           // Matches 00, 10, x0 and z0
        2'b1z: out = 3;           // Matches 10, 11, 1x and 1z
        2'bxz: out = 4;           // Matches almost every input because both bits are don't-care

        2'b0x: out = 5;           // Matches 00, 01, 0x and 0z
        2'bx0: out = 6;           // Matches 00, 10, x0 and z0
        2'b1x: out = 7;           // Matches 10, 11, 1x and 1z
        2'bx1: out = 8;           // Matches 01, 11, x1 and z1

        // Executes only if none of the above cases match
        default: $display("Invalid sel input");

    endcase                       // End of CASEX statement

end                               // End of always block

endmodule                         // End of module