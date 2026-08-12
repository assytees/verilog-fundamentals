module demux1x4_tb;

reg I;
reg [1:0] S;

wire Y0;
wire Y1;
wire Y2;
wire Y3;

// Instantiate DUT
demux1x4 dut(
    .I(I),
    .S(S),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    // Display outputs
    $monitor("I=%b S=%b Y0=%b Y1=%b Y2=%b Y3=%b",
              I, S, Y0, Y1, Y2, Y3);

    // Test cases
    I=1; S=2'b00;
    #10 S=2'b01;
    #10 S=2'b10;
    #10 S=2'b11;

end

endmodule