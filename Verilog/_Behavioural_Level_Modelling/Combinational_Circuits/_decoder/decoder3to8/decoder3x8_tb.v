//========================================
// Author : Abubakar Shuaibu
// Testbench : 3x8 Decoder
//========================================

module decoder3x8_tb;

reg [2:0] A;

wire Y0;
wire Y1;
wire Y2;
wire Y3;
wire Y4;
wire Y5;
wire Y6;
wire Y7;

decoder3x8 uut(
    .A(A),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
);

initial begin

    // Monitor simulation results
    $monitor("Time=%0t A=%b Y0=%b Y1=%b Y2=%b Y3=%b Y4=%b Y5=%b Y6=%b Y7=%b",
              $time, A, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);

    // Apply test vectors
    A = 3'b000; #2;
    A = 3'b001; #2;
    A = 3'b010; #2;
    A = 3'b011; #2;
    A = 3'b100; #2;
    A = 3'b101; #2;
    A = 3'b110; #2;
    A = 3'b111; #2;

end

endmodule