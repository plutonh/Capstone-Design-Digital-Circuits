# The unit of time in this library is 1ns 
# The unit of capacitance in this library is 1pF 

# reset_design

## Clock Basics
create_clock -period 5 -name MAIN_CLOCK [get_ports CLK]
set_clock_latency 0.1 [get_clocks MAIN_CLOCK] 
set_clock_uncertainty 0.5  [get_clocks MAIN_CLOCK]
set_clock_transition 0.1 [get_clocks MAIN_CLOCK]

## In/Out
set INPUTPORT [remove_from_collection [all_inputs] [get_ports "CLK RESETn"]]
set OUTPUTPORT [all_outputs]

set_input_delay -clock MAIN_CLOCK -max 0.4 $INPUTPORT

set_output_delay -clock MAIN_CLOCK -max 0.3 $OUTPUTPORT

## Area Constraint
set_max_area 0

## ENVIRONMENTAL ATTRIBUTES 
# set_driving_cell -lib_cell PBIDIR_18_18_NT_DR -library io_gppr_cmos28lpp_t18_ss_0p950v_1p650v_125c -no_design_rule [all_inputs]
# set_load [load_of io_gppr_cmos28lpp_t18_ss_0p950v_1p650v_125c/PBIDIR_18_18_NT_DR/A] [all_outputs]

set REFLIB saed32rvt_ff1p16vn40c
set BUFFER "NBUFFX2_RVT"
set BUF_IN_PIN "A"
set BUF_OUT_PIN "Y"

#set_load [expr 2 * [load_of $REFLIB/$BUFFER/$BUF_IN_PIN]] $OUTPUTPORT
set_load [load_of $REFLIB/$BUFFER/$BUF_IN_PIN] $OUTPUTPORT
set_driving_cell -library $REFLIB -lib_cell $BUFFER -pin $BUF_OUT_PIN -no_design_rule $INPUTPORT

# set_driving_cell -lib_cell PBIDIR_18_18_NT_DR -library io_gppr_cmos28lpp_t18_ss_0p950v_1p650v_125c -no_design_rule [all_inputs]
# set_load [load_of io_gppr_cmos28lpp_t18_ss_0p950v_1p650v_125c/PBIDIR_18_18_NT_DR/A] [all_outputs]

#set_wire_load_mode "top"
#set auto_wire_load_selection false
#set_wire_load_model -name zero-wire-load-model

##ETC ATTRIBUTES

#set_max_fanout 200 [all_inputs]
#set_max_transition 1.5 [current_design]
#set_max_capacitance 150 [current_design]

# pin name of sub module was changed so dont touch
# set_dont_touch UTOP/Ufifo
# set_dont_touch UTOP/Umemory_wrapper

# We usually don't know the external capaciatnce 
# so insert buffers to isolate and protect inner logics
set_isolate_ports $OUTPUTPORT
set_ideal_network [get_ports "CLK RESETn"]

# no through pass assign syntax => insert buffers
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs -constants
