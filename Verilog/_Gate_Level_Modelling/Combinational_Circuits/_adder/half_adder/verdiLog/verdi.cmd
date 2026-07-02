simSetSimulator "-vcssv" -exec \
           "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Gate_Level_Modelling/Combinational_Circuits/adder/half_adder/simv" \
           -args
debImport "-dbdir" \
          "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Gate_Level_Modelling/Combinational_Circuits/adder/half_adder/simv.daidir"
debLoadSimResult \
           /home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Gate_Level_Modelling/Combinational_Circuits/adder/half_adder/dump.fsdb
wvCreateWindow
srcHBSelect "half_adder_tb.uut" -win $_nTrace1
srcHBSelect "half_adder_tb.uut" -win $_nTrace1
srcHBSelect "half_adder_tb.uut" -win $_nTrace1
srcHBSelect "half_adder_tb.uut" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "half_adder_tb.uut"
schZoomOut -win $_nSchema3
debExit
