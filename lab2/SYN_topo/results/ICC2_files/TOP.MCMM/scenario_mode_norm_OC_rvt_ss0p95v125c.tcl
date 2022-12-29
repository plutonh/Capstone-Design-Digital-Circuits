if { [namespace current] != {::633A9B10} } { error {This script [file tail [info script]] should not be sourced directly}; }
###################################################################

# Created by write_script -format dctcl for scenario                           \
[mode_norm.OC_rvt_ss0p95v125c] on Mon Oct  3 17:19:28 2022

###################################################################

# Set the current_design #
current_design TOP


set_tlu_plus_files -max_tluplus                                                \
/data/SYNOPSYS/lib/32nm/SAED32_EDK/tech/star_rcxt/saed32nm_1p9m_Cmax.tluplus   \
-min_tluplus                                                                   \
/data/SYNOPSYS/lib/32nm/SAED32_EDK/tech/star_rcxt/saed32nm_1p9m_Cmin.tluplus   \
-tech2itf_map                                                                  \
/data/SYNOPSYS/lib/32nm/SAED32_EDK/tech/star_rcxt/saed32nm_tf_itf_tluplus.map 
set_operating_conditions -analysis_type on_chip_variation ss0p95v125c -library \
saed32rvt_ss0p95v125c
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{a[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{a[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{a[0]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{b[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{b[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{b[0]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{c[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{c[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{c[0]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{d[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{d[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{d[0]}]
set_load -pin_load 0.511854 [get_ports {y[7]}]
set_load -pin_load 0.511854 [get_ports {y[6]}]
set_load -pin_load 0.511854 [get_ports {y[5]}]
set_load -pin_load 0.511854 [get_ports {y[4]}]
set_load -pin_load 0.511854 [get_ports {y[3]}]
set_load -pin_load 0.511854 [get_ports {y[2]}]
set_load -pin_load 0.511854 [get_ports {y[1]}]
set_load -pin_load 0.511854 [get_ports {y[0]}]
set_switching_activity -period 1 -toggle_rate 0.00612245 -static_probability   \
0.489796 [get_ports {a[2]}]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.489796 [get_ports {a[1]}]
set_switching_activity -period 1 -toggle_rate 0.0244898 -static_probability    \
0.510204 [get_ports {a[0]}]
set_switching_activity -period 1 -toggle_rate 0.00612245 -static_probability   \
0.489796 [get_ports {b[2]}]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.510204 [get_ports {b[1]}]
set_switching_activity -period 1 -toggle_rate 0.0244898 -static_probability    \
0.489796 [get_ports {b[0]}]
set_switching_activity -period 1 -toggle_rate 0.00612245 -static_probability   \
0.489796 [get_ports {c[2]}]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.510204 [get_ports {c[1]}]
set_switching_activity -period 1 -toggle_rate 0.0244898 -static_probability    \
0.510204 [get_ports {c[0]}]
set_switching_activity -period 1 -toggle_rate 0.00612245 -static_probability   \
0.510204 [get_ports {d[2]}]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.489796 [get_ports {d[1]}]
set_switching_activity -period 1 -toggle_rate 0.0244898 -static_probability    \
0.489796 [get_ports {d[0]}]
set_switching_activity -period 1 -toggle_rate 0.05 -static_probability         \
0.510204 [get_ports CLK]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_ports RESETn]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {y[7]}]
set_switching_activity -period 1 -toggle_rate 0.00612245 -static_probability   \
0.367347 [get_ports {y[6]}]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.244898 [get_ports {y[5]}]
set_switching_activity -period 1 -toggle_rate 0.0183673 -static_probability    \
0.387755 [get_ports {y[4]}]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.489796 [get_ports {y[3]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_ports {y[2]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {y[1]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_ports {y[0]}]
set_switching_activity -period 1 -toggle_rate 0.00612245 -static_probability   \
0.489796 [get_pins {Np1/a[2]}]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.489796 [get_pins {Np1/a[1]}]
set_switching_activity -period 1 -toggle_rate 0.0244898 -static_probability    \
0.510204 [get_pins {Np1/a[0]}]
set_switching_activity -period 1 -toggle_rate 0.00612245 -static_probability   \
0.489796 [get_pins {Np1/b[2]}]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.510204 [get_pins {Np1/b[1]}]
set_switching_activity -period 1 -toggle_rate 0.0244898 -static_probability    \
0.489796 [get_pins {Np1/b[0]}]
set_switching_activity -period 1 -toggle_rate 0.00612245 -static_probability   \
0.489796 [get_pins {Np1/c[2]}]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.510204 [get_pins {Np1/c[1]}]
set_switching_activity -period 1 -toggle_rate 0.0244898 -static_probability    \
0.510204 [get_pins {Np1/c[0]}]
set_switching_activity -period 1 -toggle_rate 0.00612245 -static_probability   \
0.510204 [get_pins {Np1/d[2]}]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.489796 [get_pins {Np1/d[1]}]
set_switching_activity -period 1 -toggle_rate 0.0244898 -static_probability    \
0.489796 [get_pins {Np1/d[0]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins Np1/RESETn]
set_switching_activity -period 1 -toggle_rate 0.05 -static_probability         \
0.510204 [get_pins Np1/CLK]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {Np1/y[7]}]
set_switching_activity -period 1 -toggle_rate 0.00612245 -static_probability   \
0.367347 [get_pins {Np1/y[6]}]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.244898 [get_pins {Np1/y[5]}]
set_switching_activity -period 1 -toggle_rate 0.0183673 -static_probability    \
0.387755 [get_pins {Np1/y[4]}]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.489796 [get_pins {Np1/y[3]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {Np1/y[2]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {Np1/y[1]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {Np1/y[0]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins Np1/y_reg_0_/Q]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins Np1/y_reg_0_/QN]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins Np1/y_reg_1_/Q]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins Np1/y_reg_1_/QN]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins Np1/y_reg_2_/Q]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins Np1/y_reg_2_/QN]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.489796 [get_pins Np1/y_reg_3_/Q]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.510204 [get_pins Np1/y_reg_3_/QN]
set_switching_activity -period 1 -toggle_rate 0.0183673 -static_probability    \
0.387755 [get_pins Np1/y_reg_4_/Q]
set_switching_activity -period 1 -toggle_rate 0.0183673 -static_probability    \
0.612245 [get_pins Np1/y_reg_4_/QN]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.244898 [get_pins Np1/y_reg_5_/Q]
set_switching_activity -period 1 -toggle_rate 0.0122449 -static_probability    \
0.755102 [get_pins Np1/y_reg_5_/QN]
set_switching_activity -period 1 -toggle_rate 0.00612245 -static_probability   \
0.367347 [get_pins Np1/y_reg_6_/Q]
set_switching_activity -period 1 -toggle_rate 0.00612245 -static_probability   \
0.632653 [get_pins Np1/y_reg_6_/QN]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins Np1/y_reg_7_/Q]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins Np1/y_reg_7_/QN]
create_clock [get_ports CLK]  -name MAIN_CLOCK  -period 5  -waveform {0 2.5}
set_clock_latency 0.1  [get_clocks MAIN_CLOCK]
set_clock_uncertainty 0.5  [get_clocks MAIN_CLOCK]
set_clock_transition -min -fall 0.1 [get_clocks MAIN_CLOCK]
set_clock_transition -min -rise 0.1 [get_clocks MAIN_CLOCK]
set_clock_transition -max -fall 0.1 [get_clocks MAIN_CLOCK]
set_clock_transition -max -rise 0.1 [get_clocks MAIN_CLOCK]
group_path -name FEEDTHROUGH  -from [list [get_ports {a[2]}] [get_ports        \
{a[1]}] [get_ports {a[0]}] [get_ports {b[2]}] [get_ports {b[1]}] [get_ports    \
{b[0]}] [get_ports {c[2]}] [get_ports {c[1]}] [get_ports {c[0]}] [get_ports    \
{d[2]}] [get_ports {d[1]}] [get_ports {d[0]}] [get_ports RESETn]]  -to [list   \
[get_ports {y[7]}] [get_ports {y[6]}] [get_ports {y[5]}] [get_ports {y[4]}]    \
[get_ports {y[3]}] [get_ports {y[2]}] [get_ports {y[1]}] [get_ports {y[0]}]]
group_path -name REGIN  -from [list [get_ports {a[2]}] [get_ports {a[1]}]      \
[get_ports {a[0]}] [get_ports {b[2]}] [get_ports {b[1]}] [get_ports {b[0]}]    \
[get_ports {c[2]}] [get_ports {c[1]}] [get_ports {c[0]}] [get_ports {d[2]}]    \
[get_ports {d[1]}] [get_ports {d[0]}] [get_ports RESETn]]
group_path -name REGOUT  -to [list [get_ports {y[7]}] [get_ports {y[6]}]       \
[get_ports {y[5]}] [get_ports {y[4]}] [get_ports {y[3]}] [get_ports {y[2]}]    \
[get_ports {y[1]}] [get_ports {y[0]}]]
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
set_timing_derate -early -net_delay  0.964 
set_timing_derate -early -cell_delay 0.964 
set compile_inbound_cell_optimization false
set compile_inbound_max_cell_percentage 10.0
