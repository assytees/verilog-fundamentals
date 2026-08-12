// Abubakar Shuaibu — 05 July 2026 -mux8x1
module mux8x1(
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    input [2:0] S,
    output reg Y
);

always @(*) begin
    case(S)
        3'b000: Y = I0;
        3'b001: Y = I1;
        3'b010: Y = I2;
        3'b011: Y = I3;
        3'b100: Y = I4;
        3'b101: Y = I5;
        3'b110: Y = I6;
        3'b111: Y = I7;
        default: Y = 1'b0;
    endcase
end

endmodule