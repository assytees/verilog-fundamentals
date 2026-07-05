//*****************************************************************************
// Module Name : comparator1bit
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 1-bit Comparator using dataflow modeling.
//*****************************************************************************

module comparator1bit(

    input A, B,                    // Input signals
    output A_gt_B,                 // A greater than B
    output A_eq_B,                 // A equal to B
    output A_lt_B                  // A less than B

);

// Compare the two input bits
assign A_gt_B = A & ~B;
assign A_eq_B = ~(A ^ B);
assign A_lt_B = ~A & B;

endmodule