vcs -debug_access+all -lca -kdb -l func_sim.log \
../TESTBENCH/tb_floating.v \
../../RTL/floating_MAC_16_v1.v \
../../RTL/array_mult.v \
../../RTL/kogge_stone_adder.v

./simv -ucli -i fsdb.tcl -l func_simv.log
Verdi -ssf floating_MAC_16_v1.fsdb

fsdb2vcd floating_MAC_16_v1.fsdb -o floating_MAC_16_v1.vcd
vcd2saif -input floating_MAC_16_v1.vcd -output floating_MAC_16_v1.saif
