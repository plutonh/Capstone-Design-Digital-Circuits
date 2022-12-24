###################################################################

# Created by write_sdc on Mon Dec 19 22:16:59 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_operating_conditions ff1p16vn40c -library saed32rvt_ff1p16vn40c
set_max_area 0
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[15]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[14]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[13]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[12]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[11]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[10]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[9]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[8]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[7]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[6]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[5]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[4]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[3]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_A[0]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[15]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[14]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[13]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[12]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[11]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[10]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[9]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[8]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[7]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[6]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[5]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[4]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[3]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_B[0]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[15]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[14]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[13]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[12]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[11]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[10]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[9]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[8]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[7]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[6]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[5]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[4]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[3]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[2]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[1]}]
set_driving_cell -lib_cell NBUFFX2_RVT -library saed32rvt_ff1p16vn40c -pin Y   \
-no_design_rule [get_ports {data_in_C[0]}]
set_load -pin_load 0.569573 [get_ports {data_out[15]}]
set_load -pin_load 0.569573 [get_ports {data_out[14]}]
set_load -pin_load 0.569573 [get_ports {data_out[13]}]
set_load -pin_load 0.569573 [get_ports {data_out[12]}]
set_load -pin_load 0.569573 [get_ports {data_out[11]}]
set_load -pin_load 0.569573 [get_ports {data_out[10]}]
set_load -pin_load 0.569573 [get_ports {data_out[9]}]
set_load -pin_load 0.569573 [get_ports {data_out[8]}]
set_load -pin_load 0.569573 [get_ports {data_out[7]}]
set_load -pin_load 0.569573 [get_ports {data_out[6]}]
set_load -pin_load 0.569573 [get_ports {data_out[5]}]
set_load -pin_load 0.569573 [get_ports {data_out[4]}]
set_load -pin_load 0.569573 [get_ports {data_out[3]}]
set_load -pin_load 0.569573 [get_ports {data_out[2]}]
set_load -pin_load 0.569573 [get_ports {data_out[1]}]
set_load -pin_load 0.569573 [get_ports {data_out[0]}]
create_clock [get_ports CLK]  -name MAIN_CLOCK  -period 10  -waveform {0 5}
set_clock_uncertainty 0.5  [get_clocks MAIN_CLOCK]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports RESETn]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[15]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[14]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[13]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[12]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[11]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[10]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[9]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[8]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[7]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[6]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[5]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[4]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[3]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[2]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[1]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_A[0]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[15]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[14]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[13]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[12]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[11]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[10]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[9]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[8]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[7]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[6]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[5]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[4]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[3]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[2]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[1]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_B[0]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[15]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[14]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[13]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[12]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[11]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[10]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[9]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[8]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[7]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[6]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[5]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[4]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[3]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[2]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[1]}]
set_input_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_in_C[0]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[15]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[14]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[13]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[12]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[11]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[10]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[9]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[8]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[7]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[6]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[5]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[4]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[3]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[2]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[1]}]
set_output_delay -clock MAIN_CLOCK  -max 2  [get_ports {data_out[0]}]
