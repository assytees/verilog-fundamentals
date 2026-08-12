// Abubakar Shuaibu — 05 July 2026 -encoder4x2 (Behavioral)

module encoder4x2(
    input I0,
    input I1,
    input I2,
    input I3,
    output reg Y1,
    output reg Y0
);

always @(*) begin
    case ({I3, I2, I1, I0})
        4'b0001: begin
            Y1 = 0;
            Y0 = 0;
        end

        4'b0010: begin
            Y1 = 0;
            Y0 = 1;
        end

        4'b0100: begin
            Y1 = 1;
            Y0 = 0;
        end

        4'b1000: begin
            Y1 = 1;
            Y0 = 1;
        end

        default: begin
            Y1 = 0;
            Y0 = 0;
        end
    endcase
end

endmodule