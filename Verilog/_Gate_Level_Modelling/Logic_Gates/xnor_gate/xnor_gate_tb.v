module xnor_gate_tb;

reg a, b;
wire y;

// Instantiate the XNOR gate
xnor_gate uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $monitor("a=%b, b=%b, y=%b", a, b, y);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
end
initial begin
      $fsdbDumpfile("dump.fsdb");
      $fsdbDumpvars(0,xnor_gate_tb);
end




endmodule
