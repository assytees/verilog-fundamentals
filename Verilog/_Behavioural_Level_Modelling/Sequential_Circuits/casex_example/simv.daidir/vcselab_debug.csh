#!/bin/csh -f

cd /home/dvvfirst3/Abubakar_Shuaibu/Verilog/_Behavioural_Level_Modelling/Sequential_Circuits/casex_example

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/home/tool/synopsys/tools/vcs/R-2020.12-SP1/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

