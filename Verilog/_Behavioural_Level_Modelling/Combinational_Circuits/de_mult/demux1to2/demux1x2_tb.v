//========================================
// Author : Abubakar Shuaibu
// Testbench : 1x2 Demultiplexer
//========================================

module demux1x2_tb;

reg D;
reg S;

wire Y0;
wire Y1;

demux1x2 uut(
    .D(D),
    .S(S),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin

    // Monitor simulation results
    $monitor("Time=%0t D=%b S=%b Y0=%b Y1=%b",
             $time, D, S, Y0, Y1);

    // Apply test vectors
    D = 0; S = 0; #2;
    D = 1; S = 0; #2;
    D = 0; S = 1; #2;
    D = 1; S = 1; #2;

end

endmodule