module demux1to2_tb();
reg a,s;
wire y0,y1;
demux1to2 dut(a,s,y0,y1);
initial begin
	$monitor("a=%0d, s=%0d, y0=%0d, y1=%0d",a,s,y0,y1);
	a=0; s=0;
	#2 a=0; s=1;
	#2 a=1; s=0;
        #2 a=1; s=1;

end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,demux1to2_tb);
end
endmodule
