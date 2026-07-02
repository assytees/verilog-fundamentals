module comparator2bit_tb();
reg a0,a1,b0,b1;
wire L,E,G;
comparator2bit dut(a0,a1,b0,b1,L,E,G);
initial begin
	$monitor("a0=%0d,a1=%0d,b0=%0d,b1=%0d,L=%0d,E=%0d,G=%0d",a0,a1,b0,b1,L,E,G);
	a0=0; a1=0; b0=0; b1=0;
	#2 a0=0; a1=0; b0=0; b1=1;
	#2 a0=0; a1=0; b0=1; b1=0;
	#2 a0=0; a1=0; b0=1; b1=1;
	#2 a0=0; a1=1; b0=0; b1=0;
	#2 a0=0; a1=1; b0=0; b1=1;
	#2 a0=0; a1=1; b0=1; b1=0;
	#2 a0=0; a1=1; b0=1; b1=1;
	#2 a0=1; a1=0; b0=0; b1=0;
	#2 a0=1; a1=0; b0=0; b1=1;
	#2 a0=1; a1=0; b0=1; b1=0;
	#2 a0=1; a1=0; b0=1; b1=1;
	#2 a0=1; a1=1; b0=0; b1=0;
	#2 a0=1; a1=1; b0=0; b1=1;
	#2 a0=1; a1=1; b0=1; b1=0;
	#2 a0=1; a1=1; b0=1; b1=1;
end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,comparator2bit_tb);
end
	endmodule

















