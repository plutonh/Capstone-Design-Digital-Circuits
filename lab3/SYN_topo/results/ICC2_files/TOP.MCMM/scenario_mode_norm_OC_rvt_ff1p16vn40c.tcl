if { [namespace current] != {::6358AB68} } { error {This script [file tail [info script]] should not be sourced directly}; }
###################################################################

# Created by write_script -format dctcl for scenario                           \
[mode_norm.OC_rvt_ff1p16vn40c] on Wed Oct 26 12:37:12 2022

###################################################################

# Set the current_design #
current_design TOP


set_tlu_plus_files -max_tluplus                                                \
/data/SYNOPSYS/lib/32nm/SAED32_EDK/tech/star_rcxt/saed32nm_1p9m_Cmax.tluplus   \
-min_tluplus                                                                   \
/data/SYNOPSYS/lib/32nm/SAED32_EDK/tech/star_rcxt/saed32nm_1p9m_Cmin.tluplus   \
-tech2itf_map                                                                  \
/data/SYNOPSYS/lib/32nm/SAED32_EDK/tech/star_rcxt/saed32nm_tf_itf_tluplus.map 
set_operating_conditions -analysis_type on_chip_variation ff1p16vn40c -library \
saed32rvt_ff1p16vn40c
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{a[3]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{a[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{a[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{a[0]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{b[3]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{b[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{b[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -pin Y -no_design_rule [get_ports       \
{b[0]}]
set_load -pin_load 0.569573 [get_ports {y[7]}]
set_load -pin_load 0.569573 [get_ports {y[6]}]
set_load -pin_load 0.569573 [get_ports {y[5]}]
set_load -pin_load 0.569573 [get_ports {y[4]}]
set_load -pin_load 0.569573 [get_ports {y[3]}]
set_load -pin_load 0.569573 [get_ports {y[2]}]
set_load -pin_load 0.569573 [get_ports {y[1]}]
set_load -pin_load 0.569573 [get_ports {y[0]}]
set_switching_activity -period 1 -toggle_rate 0.02 -static_probability 0.5     \
[get_ports RESETn]
set_switching_activity -period 1 -toggle_rate 0.0179077 -static_probability    \
0.752258 [get_pins PAM/partials_reg_0__0_/QN]
set_switching_activity -period 1 -toggle_rate 0.0183533 -static_probability    \
0.743301 [get_pins PAM/partials_reg_0__1_/QN]
set_switching_activity -period 1 -toggle_rate 0.0184509 -static_probability    \
0.74707 [get_pins PAM/partials_reg_0__2_/QN]
set_switching_activity -period 1 -toggle_rate 0.0187866 -static_probability    \
0.749451 [get_pins PAM/partials_reg_0__3_/QN]
set_switching_activity -period 1 -toggle_rate 0.0179077 -static_probability    \
0.752258 [get_pins PAM/partials_reg_1__0_/QN]
set_switching_activity -period 1 -toggle_rate 0.0329163 -static_probability    \
0.620697 [get_pins PAM/partials_reg_1__1_/QN]
set_switching_activity -period 1 -toggle_rate 0.0313477 -static_probability    \
0.628967 [get_pins PAM/partials_reg_1__2_/QN]
set_switching_activity -period 1 -toggle_rate 0.0344116 -static_probability    \
0.625534 [get_pins PAM/partials_reg_1__3_/QN]
set_switching_activity -period 1 -toggle_rate 0.0215088 -static_probability    \
0.801575 [get_pins PAM/partials_reg_1__4_/QN]
set_switching_activity -period 1 -toggle_rate 0.0104797 -static_probability    \
0.922607 [get_pins PAM/partials_reg_1__5_/QN]
set_switching_activity -period 1 -toggle_rate 0.0179077 -static_probability    \
0.752258 [get_pins PAM/partials_reg_2__0_/QN]
set_switching_activity -period 1 -toggle_rate 0.0329163 -static_probability    \
0.620697 [get_pins PAM/partials_reg_2__1_/QN]
set_switching_activity -period 1 -toggle_rate 0.0424683 -static_probability    \
0.567139 [get_pins PAM/partials_reg_2__2_/QN]
set_switching_activity -period 1 -toggle_rate 0.0453613 -static_probability    \
0.565979 [get_pins PAM/partials_reg_2__3_/QN]
set_switching_activity -period 1 -toggle_rate 0.0375793 -static_probability    \
0.675583 [get_pins PAM/partials_reg_2__4_/QN]
set_switching_activity -period 1 -toggle_rate 0.0294495 -static_probability    \
0.759857 [get_pins PAM/partials_reg_2__5_/QN]
set_switching_activity -period 1 -toggle_rate 0.0133484 -static_probability    \
0.893646 [get_pins PAM/partials_reg_2__6_/QN]
set_switching_activity -period 1 -toggle_rate 0.0179077 -static_probability    \
0.752258 [get_pins PAM/partials_reg_3__0_/QN]
set_switching_activity -period 1 -toggle_rate 0.0329163 -static_probability    \
0.620697 [get_pins PAM/partials_reg_3__1_/QN]
set_switching_activity -period 1 -toggle_rate 0.0424683 -static_probability    \
0.567139 [get_pins PAM/partials_reg_3__2_/QN]
set_switching_activity -period 1 -toggle_rate 0.0532288 -static_probability    \
0.532867 [get_pins PAM/partials_reg_3__3_/QN]
set_switching_activity -period 1 -toggle_rate 0.0480591 -static_probability    \
0.605515 [get_pins PAM/partials_reg_3__4_/QN]
set_switching_activity -period 1 -toggle_rate 0.042981 -static_probability     \
0.662308 [get_pins PAM/partials_reg_3__5_/QN]
set_switching_activity -period 1 -toggle_rate 0.0312927 -static_probability    \
0.748367 [get_pins PAM/partials_reg_3__6_/QN]
set_switching_activity -period 1 -toggle_rate 0.0152344 -static_probability    \
0.875366 [get_pins PAM/partials_reg_3__7_/QN]
set_switching_activity -period 1 -toggle_rate 0.0186829 -static_probability    \
0.506958 [get_pins PAM/b_pipe_reg_2__0_/QN]
set_switching_activity -period 1 -toggle_rate 0.0186951 -static_probability    \
0.506638 [get_pins PAM/b_pipe_reg_1__0_/QN]
set_switching_activity -period 1 -toggle_rate 0.0185242 -static_probability    \
0.506317 [get_pins PAM/b_pipe_reg_0__0_/QN]
set_switching_activity -period 1 -toggle_rate 0.0187622 -static_probability    \
0.501389 [get_pins PAM/b_pipe_reg_2__1_/QN]
set_switching_activity -period 1 -toggle_rate 0.0187683 -static_probability    \
0.500992 [get_pins PAM/b_pipe_reg_1__1_/QN]
set_switching_activity -period 1 -toggle_rate 0.0186096 -static_probability    \
0.50061 [get_pins PAM/b_pipe_reg_0__1_/QN]
set_switching_activity -period 1 -toggle_rate 0.0193054 -static_probability    \
0.501709 [get_pins PAM/b_pipe_reg_2__2_/QN]
set_switching_activity -period 1 -toggle_rate 0.0193237 -static_probability    \
0.50119 [get_pins PAM/b_pipe_reg_1__2_/QN]
set_switching_activity -period 1 -toggle_rate 0.0191528 -static_probability    \
0.500687 [get_pins PAM/b_pipe_reg_0__2_/QN]
set_switching_activity -period 1 -toggle_rate 0.0190979 -static_probability    \
0.496124 [get_pins PAM/b_pipe_reg_2__3_/QN]
set_switching_activity -period 1 -toggle_rate 0.0191223 -static_probability    \
0.495621 [get_pins PAM/b_pipe_reg_1__3_/QN]
set_switching_activity -period 1 -toggle_rate 0.0189392 -static_probability    \
0.49501 [get_pins PAM/b_pipe_reg_0__3_/QN]
set_switching_activity -period 1 -toggle_rate 0.019397 -static_probability     \
0.508301 [get_pins PAM/a_pipe_reg_0__1_/QN]
set_switching_activity -period 1 -toggle_rate 0.0196777 -static_probability    \
0.507004 [get_pins PAM/a_pipe_reg_1__2_/QN]
set_switching_activity -period 1 -toggle_rate 0.0194519 -static_probability    \
0.506592 [get_pins PAM/a_pipe_reg_0__2_/QN]
set_switching_activity -period 1 -toggle_rate 0.0195435 -static_probability    \
0.505447 [get_pins PAM/a_pipe_reg_2__3_/QN]
set_switching_activity -period 1 -toggle_rate 0.0195618 -static_probability    \
0.504776 [get_pins PAM/a_pipe_reg_1__3_/QN]
set_switching_activity -period 1 -toggle_rate 0.0193481 -static_probability    \
0.504105 [get_pins PAM/a_pipe_reg_0__3_/QN]
create_clock [get_ports CLK]  -name MAIN_CLOCK  -period 5  -waveform {0 2.5}
set_clock_latency 0.1  [get_clocks MAIN_CLOCK]
set_clock_uncertainty 0.5  [get_clocks MAIN_CLOCK]
set_clock_transition -min -fall 0.1 [get_clocks MAIN_CLOCK]
set_clock_transition -min -rise 0.1 [get_clocks MAIN_CLOCK]
set_clock_transition -max -fall 0.1 [get_clocks MAIN_CLOCK]
set_clock_transition -max -rise 0.1 [get_clocks MAIN_CLOCK]
group_path -name FEEDTHROUGH  -from [list [get_ports {a[3]}] [get_ports        \
{a[2]}] [get_ports {a[1]}] [get_ports {a[0]}] [get_ports {b[3]}] [get_ports    \
{b[2]}] [get_ports {b[1]}] [get_ports {b[0]}] [get_ports RESETn]]  -to [list   \
[get_ports {y[7]}] [get_ports {y[6]}] [get_ports {y[5]}] [get_ports {y[4]}]    \
[get_ports {y[3]}] [get_ports {y[2]}] [get_ports {y[1]}] [get_ports {y[0]}]]
group_path -name REGIN  -from [list [get_ports {a[3]}] [get_ports {a[2]}]      \
[get_ports {a[1]}] [get_ports {a[0]}] [get_ports {b[3]}] [get_ports {b[2]}]    \
[get_ports {b[1]}] [get_ports {b[0]}] [get_ports RESETn]]
group_path -name REGOUT  -to [list [get_ports {y[7]}] [get_ports {y[6]}]       \
[get_ports {y[5]}] [get_ports {y[4]}] [get_ports {y[3]}] [get_ports {y[2]}]    \
[get_ports {y[1]}] [get_ports {y[0]}]]
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
set_timing_derate -late -net_delay  1.036 
set_timing_derate -late -cell_delay 1.036 
set compile_inbound_cell_optimization false
set compile_inbound_max_cell_percentage 10.0
