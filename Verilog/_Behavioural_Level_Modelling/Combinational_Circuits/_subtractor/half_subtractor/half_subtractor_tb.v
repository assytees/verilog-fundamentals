//========================================
// Author : Abubakar Shuaibu
// Testbench : Half Subtractor
//========================================

module half_subtractor_tb;

reg A;
reg B;

wire Difference;
wire Borrow;

half_subtractor uut(
    .A(A),
    .B(B),
    .Difference(Difference),
    .Borrow(Borrow)
);

initial begin

    // Monitor simulation results
    $monitor("Time=%0t A=%b B=%b Difference=%b Borrow=%b",
             $time, A, B, Difference, Borrow);

    // Apply test vectors
    A=0; B=0; #2;
    A=0; B=1; #2;
    A=1; B=0; #2;
    A=1; B=1; #2;

end

endmodule