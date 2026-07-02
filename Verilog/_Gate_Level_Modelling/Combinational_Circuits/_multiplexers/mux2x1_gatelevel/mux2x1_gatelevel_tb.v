module mux2x1_gatelevel_tb;

reg a, b, s;
wire y;

mux2x1_gatelevel uut(a, b, s, y);

initial begin
    $monitor("a=%b b=%b s=%b y=%b", a, b, s, y);

    a=0; b=0; s=0; #10;
    a=0; b=1; s=0; #10;
    a=1; b=0; s=0; #10;
    a=1; b=1; s=0; #10;

    a=0; b=0; s=1; #10;
    a=0; b=1; s=1; #10;
    a=1; b=0; s=1; #10;
    a=1; b=1; s=1; #10;

    $finish;
end

endmodule
