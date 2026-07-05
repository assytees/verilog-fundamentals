//*****************************************************************************
// Module Name : encoder8to3
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 8-to-3 Encoder using dataflow modeling.
//*****************************************************************************

module encoder8to3(

    input D0, D1, D2, D3, D4, D5, D6, D7,  // Encoder inputs
    output Y0, Y1, Y2                      // Encoded outputs

);

// Generate encoded outputs
assign Y0 = D1 | D3 | D5 | D7;
assign Y1 = D2 | D3 | D6 | D7;
assign Y2 = D4 | D5 | D6 | D7;

endmodule