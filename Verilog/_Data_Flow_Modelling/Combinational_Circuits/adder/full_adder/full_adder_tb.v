module full_adder_tb;

reg A, B, Cin;
wire Sum, Carry;

full_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $monitor("A=%b B=%b Cin=%b => Sum=%b Carry=%b",
              A, B, Cin, Sum, Carry);

    A=0; B=0; Cin=0; #10;
    A=0; B=0; Cin=1; #10;
    A=0; B=1; Cin=0; #10;
    A=0; B=1; Cin=1; #10;
    A=1; B=0; Cin=0; #10;
    A=1; B=0; Cin=1; #10;
    A=1; B=1; Cin=0; #10;
    A=1; B=1; Cin=1; #10;

    $finish;
end
initial begin
      $fsdbDumpfile("dump.fsdb");
      $fsdbDumpvars(0,full_adder_tb);
end


endmodule
