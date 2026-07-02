simSetSimulator "-vcssv" -exec \
           "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/xnor_gate/simv" \
           -args
debImport "-dbdir" \
          "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/xnor_gate/simv.daidir"
debLoadSimResult \
           /home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/xnor_gate/dump.fsdb
wvCreateWindow
srcHBSelect "xnor_gate_tb.uut" -win $_nTrace1
srcHBSelect "xnor_gate_tb.uut" -win $_nTrace1
wvCreateWindow
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/xnor_gate/dump.fsdb}
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave3
srcHBSelect "xnor_gate_tb.uut" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "xnor_gate_tb.uut"
schSelect -win $_nSchema4 -inst "xnor1"
schPushViewIn -win $_nSchema4
debExit
