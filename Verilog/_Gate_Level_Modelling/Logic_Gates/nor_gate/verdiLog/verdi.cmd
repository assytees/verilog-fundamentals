simSetSimulator "-vcssv" -exec \
           "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/nor_gate/simv" \
           -args
debImport "-dbdir" \
          "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/nor_gate/simv.daidir"
debLoadSimResult \
           /home/dvvfirst3/Abubakar_Shuaibu/Verilog/GateLevelModelling/nor_gate/dump.fsdb
wvCreateWindow
srcHBSelect "nor_gate_tb.uut" -win $_nTrace1
srcHBSelect "nor_gate_tb.uut" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "nor_gate_tb.uut"
schSelect -win $_nSchema3 -inst "nor1"
schPushViewIn -win $_nSchema3
debExit
