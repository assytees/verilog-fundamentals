//*****************************************************************************
// Module Name : encoder4to2
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 4-to-2 Encoder using dataflow modeling.
//*****************************************************************************

module encoder4to2(

    input D0, D1, D2, D3,    // Encoder inputs
    output Y0, Y1            // Encoded outputs

);

// Generate encoded outputs
assign Y0 = D1 | D3;
assign Y1 = D2 | D3;

// Alternative gate-level implementation
// or or1(Y0, D1, D3);
// or or2(Y1, D2, D3);

endmodule