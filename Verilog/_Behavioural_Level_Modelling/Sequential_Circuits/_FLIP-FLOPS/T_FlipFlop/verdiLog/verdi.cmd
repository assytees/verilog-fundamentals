simSetSimulator "-vcssv" -exec \
           "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/T_FlipFlop/simv" \
           -args
debImport "-dbdir" \
          "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/T_FlipFlop/simv.daidir"
debLoadSimResult \
           /home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/T_FlipFlop/dump.fsdb
wvCreateWindow
srcHBSelect "t_ff_tb.dut" -win $_nTrace1
srcHBSelect "t_ff_tb.dut" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "t_ff_tb.dut"
debExit
