module mux8to1(
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    input [2:0] sel,
    output y
);

assign y = (sel == 3'b000) ? i0 :
           (sel == 3'b001) ? i1 :
           (sel == 3'b010) ? i2 :
           (sel == 3'b011) ? i3 :
           (sel == 3'b100) ? i4 :
           (sel == 3'b101) ? i5 :
           (sel == 3'b110) ? i6 :
                             i7;

endmodule
