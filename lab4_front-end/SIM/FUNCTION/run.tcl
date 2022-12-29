#vcs -debug_access+all -lca -kdb -l func_sim.log \

vcs -debug_access+all -sverilog -kdb -lca -l func_sim.log \
../TESTBENCH/tb_mul.v \
../../RTL/mul_A.v

./simv -ucli -i fsdb.tcl -l func_simv.log
Verdi -ssf mul_A.fsdb

fsdb2vcd mul_A.fsdb -o mul_A.vcd
vcd2saif -input mul_A.vcd -output mul_A.saif
