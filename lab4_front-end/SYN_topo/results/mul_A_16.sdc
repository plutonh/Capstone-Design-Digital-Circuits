###################################################################

# Created by write_sdc on Mon Oct 31 23:47:18 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_operating_conditions ff1p16vn40c -library saed32rvt_ff1p16vn40c
set_max_area 0
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[15]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[14]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[13]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[12]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[11]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[10]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[9]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[8]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[7]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[6]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[5]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[4]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[3]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {a[0]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[15]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[14]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[13]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[12]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[11]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[10]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[9]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[8]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[7]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[6]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[5]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[4]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[3]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {b[0]}]
set_load -pin_load 0.569573 [get_ports {y[31]}]
set_load -pin_load 0.569573 [get_ports {y[30]}]
set_load -pin_load 0.569573 [get_ports {y[29]}]
set_load -pin_load 0.569573 [get_ports {y[28]}]
set_load -pin_load 0.569573 [get_ports {y[27]}]
set_load -pin_load 0.569573 [get_ports {y[26]}]
set_load -pin_load 0.569573 [get_ports {y[25]}]
set_load -pin_load 0.569573 [get_ports {y[24]}]
set_load -pin_load 0.569573 [get_ports {y[23]}]
set_load -pin_load 0.569573 [get_ports {y[22]}]
set_load -pin_load 0.569573 [get_ports {y[21]}]
set_load -pin_load 0.569573 [get_ports {y[20]}]
set_load -pin_load 0.569573 [get_ports {y[19]}]
set_load -pin_load 0.569573 [get_ports {y[18]}]
set_load -pin_load 0.569573 [get_ports {y[17]}]
set_load -pin_load 0.569573 [get_ports {y[16]}]
set_load -pin_load 0.569573 [get_ports {y[15]}]
set_load -pin_load 0.569573 [get_ports {y[14]}]
set_load -pin_load 0.569573 [get_ports {y[13]}]
set_load -pin_load 0.569573 [get_ports {y[12]}]
set_load -pin_load 0.569573 [get_ports {y[11]}]
set_load -pin_load 0.569573 [get_ports {y[10]}]
set_load -pin_load 0.569573 [get_ports {y[9]}]
set_load -pin_load 0.569573 [get_ports {y[8]}]
set_load -pin_load 0.569573 [get_ports {y[7]}]
set_load -pin_load 0.569573 [get_ports {y[6]}]
set_load -pin_load 0.569573 [get_ports {y[5]}]
set_load -pin_load 0.569573 [get_ports {y[4]}]
set_load -pin_load 0.569573 [get_ports {y[3]}]
set_load -pin_load 0.569573 [get_ports {y[2]}]
set_load -pin_load 0.569573 [get_ports {y[1]}]
set_load -pin_load 0.569573 [get_ports {y[0]}]
create_clock [get_ports CLK]  -name MAIN_CLOCK  -period 5  -waveform {0 2.5}
set_clock_uncertainty 0.5  [get_clocks MAIN_CLOCK]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports RESETn]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[15]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[14]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[13]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[12]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[11]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[10]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[9]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[8]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[7]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[6]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[5]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[4]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[3]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[2]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[1]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {a[0]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[15]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[14]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[13]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[12]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[11]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[10]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[9]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[8]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[7]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[6]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[5]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[4]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[3]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[2]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[1]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {b[0]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[31]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[30]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[29]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[28]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[27]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[26]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[25]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[24]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[23]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[22]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[21]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[20]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[19]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[18]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[17]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[16]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[15]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[14]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[13]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[12]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[11]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[10]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[9]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[8]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[7]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[6]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[5]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[4]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[3]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[2]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[1]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {y[0]}]
