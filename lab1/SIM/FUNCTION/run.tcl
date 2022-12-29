vcs -debug_access+all -lca -kdb -l func_sim.log \
../TESTBENCH/tb_full_adder.v \
../../RTL/full_adder.v 

./simv -ucli -i fsdb.tcl -l func_simv.log
Verdi -ssf full_adder.fsdb

#fsdb2vcd carry_ripple_adder.fsdb -o carry_ripple_adder.vcd
#vcd2saif -input carry_ripple_adder.vcd -output carry_ripple_adder.saif
