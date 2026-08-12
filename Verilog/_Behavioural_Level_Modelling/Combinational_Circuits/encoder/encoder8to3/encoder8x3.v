// Abubakar Shuaibu — 05 July 2026 — encoder8x3 (Behavioral)

module encoder8x3(
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    output reg Y2,
    output reg Y1,
    output reg Y0
);

always @(*) begin
    case ({I7,I6,I5,I4,I3,I2,I1,I0})
        8'b00000001: {Y2,Y1,Y0} = 3'b000;
        8'b00000010: {Y2,Y1,Y0} = 3'b001;
        8'b00000100: {Y2,Y1,Y0} = 3'b010;
        8'b00001000: {Y2,Y1,Y0} = 3'b011;
        8'b00010000: {Y2,Y1,Y0} = 3'b100;
        8'b00100000: {Y2,Y1,Y0} = 3'b101;
        8'b01000000: {Y2,Y1,Y0} = 3'b110;
        8'b10000000: {Y2,Y1,Y0} = 3'b111;
        default:     {Y2,Y1,Y0} = 3'b000;
    endcase
end

endmodule