###################################################################

# Created by write_sdc for scenario [mode_norm.OC_rvt_ss0p95v125c] on Wed Oct 26 12:36:48 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_operating_conditions -analysis_type on_chip_variation ss0p95v125c -library saed32rvt_ss0p95v125c
set_max_area 0
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ss0p95v125c -pin Y -no_design_rule [get_ports {a[3]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ss0p95v125c -pin Y -no_design_rule [get_ports {a[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ss0p95v125c -pin Y -no_design_rule [get_ports {a[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ss0p95v125c -pin Y -no_design_rule [get_ports {a[0]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ss0p95v125c -pin Y -no_design_rule [get_ports {b[3]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ss0p95v125c -pin Y -no_design_rule [get_ports {b[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ss0p95v125c -pin Y -no_design_rule [get_ports {b[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ss0p95v125c -pin Y -no_design_rule [get_ports {b[0]}]
set_load -pin_load 0.511854 [get_ports {y[7]}]
set_load -pin_load 0.511854 [get_ports {y[6]}]
set_load -pin_load 0.511854 [get_ports {y[5]}]
set_load -pin_load 0.511854 [get_ports {y[4]}]
set_load -pin_load 0.511854 [get_ports {y[3]}]
set_load -pin_load 0.511854 [get_ports {y[2]}]
set_load -pin_load 0.511854 [get_ports {y[1]}]
set_load -pin_load 0.511854 [get_ports {y[0]}]
set_ideal_network [get_ports CLK]
set_ideal_network [get_ports RESETn]
create_clock [get_ports CLK]  -name MAIN_CLOCK  -period 5  -waveform {0 2.5}
set_clock_latency 0.1  [get_clocks MAIN_CLOCK]
set_clock_uncertainty 0.5  [get_clocks MAIN_CLOCK]
set_clock_transition -min -fall 0.1 [get_clocks MAIN_CLOCK]
set_clock_transition -min -rise 0.1 [get_clocks MAIN_CLOCK]
set_clock_transition -max -fall 0.1 [get_clocks MAIN_CLOCK]
set_clock_transition -max -rise 0.1 [get_clocks MAIN_CLOCK]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {a[3]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {a[2]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {a[1]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {a[0]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {b[3]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {b[2]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {b[1]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {b[0]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[7]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[6]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[5]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[4]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[3]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[2]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[1]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[0]}]
set_timing_derate -early -net_delay 0.964 
set_timing_derate -early -cell_delay 0.964 
