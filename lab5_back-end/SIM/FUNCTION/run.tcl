#vcs -debug_access+all -lca -kdb -l func_sim.log \

vcs -debug_access+all -sverilog -kdb -lca -l func_sim.log \
../TESTBENCH/TB_TOP.v \
../../RTL/mul.v \
../../RTL/TOP.v

./simv -ucli -i fsdb.tcl -l func_simv.log
Verdi -ssf TOP.fsdb

fsdb2vcd TOP.fsdb -o TOP.vcd
vcd2saif -input TOP.vcd -output TOP.saif
