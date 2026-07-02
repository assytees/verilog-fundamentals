simSetSimulator "-vcssv" -exec \
           "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Gate_Level_Modelling/Combinational_Circuits/adder/full_adder/simv" \
           -args
debImport "-dbdir" \
          "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Gate_Level_Modelling/Combinational_Circuits/adder/full_adder/simv.daidir"
debLoadSimResult \
           /home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Gate_Level_Modelling/Combinational_Circuits/adder/full_adder/dump.fsdb
wvCreateWindow
srcHBSelect "full_adder_tb.uut" -win $_nTrace1
srcHBSelect "full_adder_tb.uut" -win $_nTrace1
srcHBSelect "full_adder_tb.uut" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "full_adder_tb.uut"
schSelect -win $_nSchema3 -inst "x1"
schSelect -win $_nSchema3 -signal "B"
schDeselectAll -win $_nSchema3
schSelect -win $_nSchema3 -inst "x1"
schSelect -win $_nSchema3 -inst "a2"
schPushViewIn -win $_nSchema3
srcDeselectAll -win $_nTrace1
debExit
