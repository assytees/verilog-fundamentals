simSetSimulator "-vcssv" -exec \
           "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/not_gate/simv" \
           -args
debImport "-dbdir" \
          "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/not_gate/simv.daidir"
debLoadSimResult \
           /home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/not_gate/dump.fsdb
wvCreateWindow
srcHBSelect "not_gate_tb.uut" -win $_nTrace1
srcHBSelect "not_gate_tb.uut" -win $_nTrace1
wvCreateWindow
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/not_gate/dump.fsdb}
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
srcHBSelect "not_gate_tb.uut" -win $_nTrace1
srcHBSelect "not_gate_tb.uut" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "not_gate_tb.uut"
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "not_gate_tb"
schSelect -win $_nSchema6 -inst "uut"
schPushViewIn -win $_nSchema6
debExit
