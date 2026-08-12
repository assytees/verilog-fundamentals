module decoder3x8_tb;
    reg A, B, C, EN;
    wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

    decoder3x8 uut(A, B, C, EN, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);

    initial begin
        $monitor("EN=%b A=%b B=%b C=%b | Y7=%b Y6=%b Y5=%b Y4=%b Y3=%b Y2=%b Y1=%b Y0=%b", EN, A, B, C, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0);
        
        EN = 0; A = 0; B = 0; C = 0;
        
        #2 EN = 1; A = 0; B = 0; C = 0;
        #2 EN = 1; A = 0; B = 0; C = 1;
        #2 EN = 1; A = 0; B = 1; C = 0;
        #2 EN = 1; A = 0; B = 1; C = 1;
        #2 EN = 1; A = 1; B = 0; C = 0;
        #2 EN = 1; A = 1; B = 0; C = 1;
        #2 EN = 1; A = 1; B = 1; C = 0;
        #2 EN = 1; A = 1; B = 1; C = 1;
    end
endmodule