module ripple_carry_adder_tb;
    reg A0, A1, A2, A3, B0, B1, B2, B3, Cin;
    wire S0, S1, S2, S3, Cout;

    ripple_carry_adder dut(A0, A1, A2, A3, B0, B1, B2, B3, Cin, S0, S1, S2, S3, Cout);

    initial begin
        $monitor("Cin=%b A3A2A1A0=%b%b%b%b B3B2B1B0=%b%b%b%b | Cout=%b S3S2S1S0=%b%b%b%b", Cin, A3, A2, A1, A0, B3, B2, B1, B0, Cout, S3, S2, S1, S0);
        
        Cin = 0; A3=0; A2=0; A1=0; A0=0; B3=0; B2=0; B1=0; B0=0;
        #2 Cin = 0; A3=0; A2=0; A1=1; A0=1; B3=0; B2=0; B1=0; B0=1;
        #2 Cin = 0; A3=0; A2=1; A1=0; A0=1; B3=0; B2=1; B1=0; B0=1;
        #2 Cin = 1; A3=1; A2=1; A1=1; A0=1; B3=0; B2=0; B1=0; B0=0;
        #2 Cin = 1; A3=1; A2=1; A1=1; A0=1; B3=1; B2=1; B1=1; B0=1;
    end
endmodule