module mux4to1_tb;

reg i0, i1, i2, i3;
reg [1:0] sel;
wire y;

mux4to1 uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .sel(sel),
    .y(y)
);

initial begin
    $monitor("sel=%b | i0=%b i1=%b i2=%b i3=%b => y=%b",
              sel, i0, i1, i2, i3, y);

    i0 = 0; i1 = 1; i2 = 0; i3 = 1;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;
end

endmodule
