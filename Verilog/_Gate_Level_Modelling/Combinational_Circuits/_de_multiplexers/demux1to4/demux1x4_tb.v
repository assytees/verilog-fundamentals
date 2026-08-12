//========================================
// Author : Rahma A. Dalhat
// Testbench : 1x4 Demultiplexer
//========================================

module demux1x4_tb;

reg D;
reg [1:0] S;

wire Y0;
wire Y1;
wire Y2;
wire Y3;

demux1x4 uut(
    .D(D),
    .S(S),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    // Monitor input and output changes
    $monitor("D=%b S=%b Y0=%b Y1=%b Y2=%b Y3=%b",
             D, S, Y0, Y1, Y2, Y3);

    D=1;

    S=2'b00; #2;
    S=2'b01; #2;
    S=2'b10; #2;
    S=2'b11; #2;

end

endmodule