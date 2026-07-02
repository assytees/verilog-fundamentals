module mux2x1_gatelevel(a, b, s, y);

input a, b, s;
output y;

wire s_not;
wire w1, w2;

not  G1(s_not, s);
and  G2(w1, s_not, a);
and  G3(w2, s, b);
or   G4(y, w1, w2);

endmodule
