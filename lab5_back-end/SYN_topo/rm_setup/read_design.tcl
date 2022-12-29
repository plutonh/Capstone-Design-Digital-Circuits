analyze -library WORK -format verilog ../RTL/mul.v
elaborate -architecture verilog -library WORK mul
check_design
