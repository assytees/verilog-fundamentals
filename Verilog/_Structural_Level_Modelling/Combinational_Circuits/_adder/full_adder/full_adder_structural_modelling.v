module full_adder_structural_modelling (a,b,Cin,sum,carry);
input a,b,Cin;
output sum,carry;
wire sum1, carry1,carry2;
half_adder ha1(sum1, carry1,a,b);
half_adder ha2(sum, carry2,sum1, Cin);
or or1(carry ,carry2,carry1);
endmodule
