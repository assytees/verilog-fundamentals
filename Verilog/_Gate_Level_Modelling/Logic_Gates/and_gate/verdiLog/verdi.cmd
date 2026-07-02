simSetSimulator "-vcssv" -exec \
           "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/and_gate/simv" \
           -args
debImport "-dbdir" \
          "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/and_gate/simv.daidir"
debLoadSimResult \
           /home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/and_gate/dump.fsdb
wvCreateWindow
srcHBSelect "and_gate_tb.uut" -win $_nTrace1
wvCreateWindow
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/and_gate/dump.fsdb}
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave3
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "and_gate_tb"
schSelect -win $_nSchema5 -inst "uut"
schSelect -win $_nSchema5 -inst "and_gate_tb:Init1:24:27:Init"
schSelect -win $_nSchema5 -inst "uut"
srcHBSelect "and_gate_tb.uut" -win $_nTrace1
srcHBSelect "and_gate_tb.uut" -win $_nTrace1
srcSetScope "and_gate_tb.uut" -delim "." -win $_nTrace1
srcHBSelect "and_gate_tb.uut" -win $_nTrace1
srcHBSelect "and_gate_tb.uut" -win $_nTrace1
srcHBSelect "and_gate_tb.uut" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "and_gate_tb.uut"
srcHBSelect "and_gate_tb.uut" -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
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
wvZoomIn -win $_nWave3
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
schCreateWindow -delim "." -win $_nSchema1 -scope "and_gate_tb.uut"
debExit
