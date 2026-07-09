simSetSimulator "-vcssv" -exec \
           "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/JK_FlipFlop/simv" \
           -args
debImport "-dbdir" \
          "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/JK_FlipFlop/simv.daidir"
debLoadSimResult \
           /home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/JK_FlipFlop/dump.fsdb
wvCreateWindow
srcHBSelect "jk_ff_tb.dut" -win $_nTrace1
srcHBSelect "jk_ff_tb.dut" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "jk_ff_tb.dut"
srcHBSelect "jk_ff_tb.dut" -win $_nTrace1
wvCreateWindow
wvSetPosition -win $_nWave4 {("G1" 0)}
wvOpenFile -win $_nWave4 \
           {/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/JK_FlipFlop/dump.fsdb}
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave4
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 0
wvScrollDown -win $_nWave4 0
wvScrollDown -win $_nWave4 0
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollDown -win $_nWave4 0
debExit
