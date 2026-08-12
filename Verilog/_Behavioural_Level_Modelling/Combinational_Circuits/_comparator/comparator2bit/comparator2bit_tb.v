//========================================
// Author : Abubakar Shuaibu
// Testbench : 2-Bit Comparator
//========================================

module comparator2bit_tb;

reg [1:0] A;
reg [1:0] B;

wire G;
wire L;
wire E;

comparator2bit uut(
    .A(A),
    .B(B),
    .G(G),
    .L(L),
    .E(E)
);

initial begin

    // Monitor simulation results
    $monitor("Time=%0t A=%b B=%b G=%b L=%b E=%b",
             $time, A, B, G, L, E);

    // Apply test vectors
    A = 2'b00; B = 2'b00; #2;
    A = 2'b01; B = 2'b10; #2;
    A = 2'b11; B = 2'b01; #2;
    A = 2'b10; B = 2'b10; #2;

end

endmodule