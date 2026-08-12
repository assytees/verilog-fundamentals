// Abubakar Shuaibu — 05 July 2026 -half_subtractor
module half_subtractor(
    input A,
    input B,
    output reg Difference,
    output reg Borrow
);

always @(*) begin

    // Calculate difference and borrow
    Difference = A ^ B;
    Borrow     = (~A) & B;

end

endmodule