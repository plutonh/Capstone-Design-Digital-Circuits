compile -area_effort medium -map_effort high

report_area > reports/synth_area.rpt
report_design > reports/synth_design.rpt 
report_cell > reports/synth_cells.rpt
report_qor > reports/synth_qor.rpt
report_resources > reports/synth_resources.rpt
report_timing -max_paths 10 > reports/synth_timing.rpt
report_power -analysis_effort medium > reports/synth_power.rpt


write_sdc results/config_pipelined_mul_A.sdc -version 2.0
write -f ddc -hierarchy -output results/config_pipelined_mul_A.ddc
write -hierarchy -format verilog -output results/config_pipelined_mul_A_HDL.v
