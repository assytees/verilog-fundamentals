module full_adder_tb;

    reg A;
    reg B;
    reg Cin;

    wire Sum;
    wire Carry;

    // Instantiate the Unit Under Test (UUT)
    full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Carry(Carry)
    );

    initial begin
        $display("A B Cin | Sum Carry");
        $monitor("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Carry);

        A = 0; B = 0; Cin = 0; #10;
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        A = 1; B = 0; Cin = 1; #10;
        A = 1; B = 1; Cin = 0; #10;
        A = 1; B = 1; Cin = 1; #10;

        $finish;
    end

    initial begin
        //$dumpfile("full_adder.vcd");   // For GTKWave
        //$dumpvars(0, full_adder_tb);

        // Uncomment these if using VCS + Verdi
         $fsdbDumpfile("dump.fsdb");
         $fsdbDumpvars(0, full_adder_tb);
    end

endmodule
