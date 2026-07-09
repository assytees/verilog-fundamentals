simSetSimulator "-vcssv" -exec \
           "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/REGISTERS/SISO/simv" \
           -args
debImport "-dbdir" \
          "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/REGISTERS/SISO/simv.daidir"
debLoadSimResult \
           /home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits2/REGISTERS/SISO/dump.fsdb
wvCreateWindow
debExit
