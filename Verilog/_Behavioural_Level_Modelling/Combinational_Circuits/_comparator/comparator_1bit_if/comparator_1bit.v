module comparator_1bit(
    input A,
    input B,
    output reg Greater,
    output reg Equal,
    output reg Less
);

always @(*) begin
    if (A > B) begin
        Greater = 1;
        Equal   = 0;
        Less    = 0;
    end
    else if (A < B) begin
        Greater = 0;
        Equal   = 0;
        Less    = 1;
    end
    else begin
        Greater = 0;
        Equal   = 1;
        Less    = 0;
    end
end

endmodule