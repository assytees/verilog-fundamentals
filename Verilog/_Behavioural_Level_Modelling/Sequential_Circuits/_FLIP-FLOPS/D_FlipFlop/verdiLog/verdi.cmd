simSetSimulator "-vcssv" -exec \
           "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/D_FlipFlop/simv" \
           -args
debImport "-dbdir" \
          "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/D_FlipFlop/simv.daidir"
debLoadSimResult \
           /home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/D_FlipFlop/dump.fsdb
wvCreateWindow
srcHBSelect "d_ff_tb.dut" -win $_nTrace1
srcHBSelect "d_ff_tb.dut" -win $_nTrace1
wvCreateWindow
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/D_FlipFlop/dump.fsdb}
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave3
debExit
