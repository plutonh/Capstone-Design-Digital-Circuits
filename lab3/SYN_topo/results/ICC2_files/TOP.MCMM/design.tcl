if { [namespace current] != {::6358AB68} } { error {This script [file tail [info script]] should not be sourced directly}; }
###################################################################

# Created by write_script -format dctcl for global constraints on Wed Oct 26   \
12:37:12 2022

###################################################################

# Set the current_design #
current_design TOP

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_area 0
set_fix_multiple_port_nets -all -buffer_constants
set_local_link_library {saed32rvt_ff1p16vn40c.db,saed32rvt_ss0p95v125c.db}
set_register_merging [current_design] 17
set_isolate_ports -type buffer [get_ports {y[7]}]
set_isolate_ports -type buffer [get_ports {y[6]}]
set_isolate_ports -type buffer [get_ports {y[5]}]
set_isolate_ports -type buffer [get_ports {y[4]}]
set_isolate_ports -type buffer [get_ports {y[3]}]
set_isolate_ports -type buffer [get_ports {y[2]}]
set_isolate_ports -type buffer [get_ports {y[1]}]
set_isolate_ports -type buffer [get_ports {y[0]}]
set_ideal_network [get_ports CLK]
set_ideal_network [get_ports RESETn]
set compile_inbound_cell_optimization false
set compile_inbound_max_cell_percentage 10.0
