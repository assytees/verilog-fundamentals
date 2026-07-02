#!/bin/csh -f

cd /home/dvvfirst3/Abubakar_Shuaibu/Verilog/logic_gates/or_gate

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/home/server2/synopsys/tools/vcs/R-2020.12-SP1/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

