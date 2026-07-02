module mux8to1_tb;

reg i0, i1, i2, i3, i4, i5, i6, i7;
reg [2:0] sel;
wire y;

mux8to1 uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .i4(i4),
    .i5(i5),
    .i6(i6),
    .i7(i7),
    .sel(sel),
    .y(y)
);

initial begin
    $monitor("sel=%b => y=%b", sel, y);

    i0=0; i1=1; i2=0; i3=1;
    i4=0; i5=1; i6=0; i7=1;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    $finish;
end

endmodule
