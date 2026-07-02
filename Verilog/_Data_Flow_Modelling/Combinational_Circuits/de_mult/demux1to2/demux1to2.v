module demux1to2(
    input d,
    input sel,
    output y0,
    output y1
);

assign y0 = (sel == 1'b0) ? d : 1'b0;
assign y1 = (sel == 1'b1) ? d : 1'b0;

endmodule
