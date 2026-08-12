// Abubakar Shuaibu — 05 July 2026 -demux1x2
module demux1x2(
    input D,
    input S,
    output reg Y0,
    output reg Y1
);

always @(*) begin
    // Route the input to the selected output
    Y0 = 1'b0;
    Y1 = 1'b0;

    case (S)
        1'b0: Y0 = D;
        1'b1: Y1 = D;
    endcase
end

endmodule