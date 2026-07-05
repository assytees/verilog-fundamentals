//*****************************************************************************
// Module Name : decoder2to4
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 2-to-4 Decoder using dataflow modeling.
//*****************************************************************************

module decoder2to4(

    input A, B,              // Input signals
    output Y0, Y1, Y2, Y3    // Decoder outputs

);

// Decode the inputs to one active output
assign Y0 = ~A & ~B;
assign Y1 = ~A &  B;
assign Y2 =  A & ~B;
assign Y3 =  A &  B;

endmodule