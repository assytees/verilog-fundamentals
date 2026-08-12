// Abubakar Shuaibu — 05 July 2026 -decoder3x8
module decoder3x8(
    input [2:0] A,
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

    // Activate one output based on the input
    Y0 = 1'b0;
    Y1 = 1'b0;
    Y2 = 1'b0;
    Y3 = 1'b0;
    Y4 = 1'b0;
    Y5 = 1'b0;
    Y6 = 1'b0;
    Y7 = 1'b0;

    case(A)
        3'b000: Y0 = 1'b1;
        3'b001: Y1 = 1'b1;
        3'b010: Y2 = 1'b1;
        3'b011: Y3 = 1'b1;
        3'b100: Y4 = 1'b1;
        3'b101: Y5 = 1'b1;
        3'b110: Y6 = 1'b1;
        3'b111: Y7 = 1'b1;
        default: begin
            Y0 = 1'b0;
            Y1 = 1'b0;
            Y2 = 1'b0;
            Y3 = 1'b0;
            Y4 = 1'b0;
            Y5 = 1'b0;
            Y6 = 1'b0;
            Y7 = 1'b0;
        end
    endcase

end

endmodule