//========================================
// Author : Abubakar Shuaibu
// Testbench : 4-Bit Comparator
//========================================

module comparator4bit_tb;

reg [3:0] A;
reg [3:0] B;

wire G;
wire L;
wire E;

comparator4bit uut(
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
    A = 4'b0011; B = 4'b0011; #2;
    A = 4'b0110; B = 4'b0010; #2;
    A = 4'b0001; B = 4'b0100; #2;
    A = 4'b1111; B = 4'b1111; #2;

end

endmodule