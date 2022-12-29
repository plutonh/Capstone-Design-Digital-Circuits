## In/Out
set INPUTPORT [remove_from_collection [all_inputs] [get_ports "CLK RESETn"]]
set OUTPUTPORT [all_outputs]

set REFLIB saed32rvt_ff1p16vn40c
set BUFFER "NBUFFX2_RVT"
set BUF_IN_PIN "A"
set BUF_OUT_PIN "Y"

set_load [load_of $REFLIB/$BUFFER/$BUF_IN_PIN] $OUTPUTPORT
set_driving_cell -library $REFLIB -lib_cell $BUFFER -pin $BUF_OUT_PIN -no_design_rule $INPUTPORT

set_operating_conditions ss0p95v125c -library saed32rvt_ss0p95v125c
