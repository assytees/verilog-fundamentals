// Abubakar Shuaibu — 05 July 2026 -demux1x8
module demux1x8(
    input D,
    input [2:0] S,
    output reg Y0,
    output reg Y1,
    output reg Y2,
    output reg Y3,
    output reg Y4,
    output reg Y5,
    output reg Y6,
    output reg Y7
);

always @(*) begin

    // Route the input to the selected output
    Y0 = 0;
    Y1 = 0;
    Y2 = 0;
    Y3 = 0;
    Y4 = 0;
    Y5 = 0;
    Y6 = 0;
    Y7 = 0;

    case (S)
        3'b000: Y0 = D;
        3'b001: Y1 = D;
        3'b010: Y2 = D;
        3'b011: Y3 = D;
        3'b100: Y4 = D;
        3'b101: Y5 = D;
        3'b110: Y6 = D;
        3'b111: Y7 = D;
        default: begin
            Y0 = 0;
            Y1 = 0;
            Y2 = 0;
            Y3 = 0;
            Y4 = 0;
            Y5 = 0;
            Y6 = 0;
            Y7 = 0;
        end
    endcase

end

endmodule