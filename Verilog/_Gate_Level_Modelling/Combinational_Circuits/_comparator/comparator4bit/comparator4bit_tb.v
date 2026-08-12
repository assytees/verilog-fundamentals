module comparator4bit_tb;
    reg A3, A2, A1, A0, B3, B2, B1, B0;
    wire A_gt_B, A_lt_B, A_eq_B;

    comparator4bit dut(A3, A2, A1, A0, B3, B2, B1, B0, A_gt_B, A_lt_B, A_eq_B);

    initial begin
        $monitor("A3A2A1A0=%b%b%b%b B3B2B1B0=%b%b%b%b | A_gt_B=%b A_lt_B=%b A_eq_B=%b", A3, A2, A1, A0, B3, B2, B1, B0, A_gt_B, A_lt_B, A_eq_B);
        
        A3=0; A2=0; A1=0; A0=0; B3=0; B2=0; B1=0; B0=0;
        #2 A3=1; A2=0; A1=1; A0=0; B3=0; B2=1; B1=1; B0=1;
        #2 A3=0; A2=1; A1=1; A0=0; B3=1; B2=0; B1=0; B0=0;
        #2 A3=1; A2=1; A1=0; A0=1; B3=1; A2=1; B1=0; B0=1;
    end