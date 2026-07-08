simSetSimulator "-vcssv" -exec \
           "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits/casex_example/simv" \
           -args
debImport "-dbdir" \
          "/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits/casex_example/simv.daidir"
debLoadSimResult \
           /home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits/casex_example/dump.fsdb
wvCreateWindow
srcHBSelect "casex_example_tb.dut" -win $_nTrace1
srcHBSelect "casex_example_tb.dut" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "casex_example_tb.dut"
srcHBSelect "casex_example_tb.dut" -win $_nTrace1
wvCreateWindow
wvSetPosition -win $_nWave4 {("G1" 0)}
wvOpenFile -win $_nWave4 \
           {/home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits/casex_example/dump.fsdb}
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave4
wvZoomIn -win $_nWave4
wvZoomIn -win $_nWave4
wvZoomIn -win $_nWave4
wvZoomIn -win $_nWave4
schSelect -win $_nSchema3 -inst "casex_example:Always0:13:34:Combo"
schPushViewIn -win $_nSchema3
srcSetScope "casex_example_tb.dut" -delim "." -win $_nTrace1
srcSelect -win $_nTrace1 -range {13 34 1 4 1 1}
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
debExit
