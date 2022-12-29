###################################################################

# Created by write_sdc for scenario [mode_norm.OC_rvt_ff1p16vn40c] on Mon Oct 3 17:19:15 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_operating_conditions -analysis_type on_chip_variation ff1p16vn40c -library saed32rvt_ff1p16vn40c
set_max_area 0
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y -no_design_rule [get_ports {a[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y -no_design_rule [get_ports {a[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y -no_design_rule [get_ports {a[0]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y -no_design_rule [get_ports {b[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y -no_design_rule [get_ports {b[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y -no_design_rule [get_ports {b[0]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y -no_design_rule [get_ports {c[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y -no_design_rule [get_ports {c[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y -no_design_rule [get_ports {c[0]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y -no_design_rule [get_ports {d[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y -no_design_rule [get_ports {d[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y -no_design_rule [get_ports {d[0]}]
set_load -pin_load 0.569573 [get_ports {y[7]}]
set_load -pin_load 0.569573 [get_ports {y[6]}]
set_load -pin_load 0.569573 [get_ports {y[5]}]
set_load -pin_load 0.569573 [get_ports {y[4]}]
set_load -pin_load 0.569573 [get_ports {y[3]}]
set_load -pin_load 0.569573 [get_ports {y[2]}]
set_load -pin_load 0.569573 [get_ports {y[1]}]
set_load -pin_load 0.569573 [get_ports {y[0]}]
set_ideal_network [get_ports CLK]
set_ideal_network [get_ports RESETn]
create_clock [get_ports CLK]  -name MAIN_CLOCK  -period 5  -waveform {0 2.5}
set_clock_latency 0.1  [get_clocks MAIN_CLOCK]
set_clock_uncertainty 0.5  [get_clocks MAIN_CLOCK]
set_clock_transition -min -fall 0.1 [get_clocks MAIN_CLOCK]
set_clock_transition -min -rise 0.1 [get_clocks MAIN_CLOCK]
set_clock_transition -max -fall 0.1 [get_clocks MAIN_CLOCK]
set_clock_transition -max -rise 0.1 [get_clocks MAIN_CLOCK]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {a[2]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {a[1]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {a[0]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {b[2]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {b[1]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {b[0]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {c[2]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {c[1]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {c[0]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {d[2]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {d[1]}]
set_input_delay -clock MAIN_CLOCK  -max 0.4  [get_ports {d[0]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[7]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[6]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[5]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[4]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[3]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[2]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[1]}]
set_output_delay -clock MAIN_CLOCK  -max 0.3  [get_ports {y[0]}]
set_timing_derate -late -net_delay 1.036 
set_timing_derate -late -cell_delay 1.036 
