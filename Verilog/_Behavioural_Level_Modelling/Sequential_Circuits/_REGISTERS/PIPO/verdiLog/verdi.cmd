simSetSimulator "-vcssv" -exec \
           "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/REGISTERS/PIPO/simv" \
           -args
debImport "-dbdir" \
          "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/REGISTERS/PIPO/simv.daidir"
debLoadSimResult \
           /home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/REGISTERS/PIPO/dump.fsdb
wvCreateWindow
srcHBSelect "pipo_tb.dut" -win $_nTrace1
srcHBSelect "pipo_tb.dut" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "pipo_tb.dut"
debExit
