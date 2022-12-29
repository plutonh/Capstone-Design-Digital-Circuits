
#################################################################################
# Design Compiler Reference Methodology Script for Top-Down MCMM Flow
# Script: dc.tcl
# Version: M-2016.12-SP4 (July 17, 2017)
# Copyright (C) 2007-2016 Synopsys, Inc. All rights reserved.
#################################################################################

set_host_options -max_cores 8
#compile_seqmap_honor_sync_set_reset true
if { $OPTIMIZATION_FLOW == "hplp"} {
 #set_app_var hdlin_infer_multibit default_all
 set_app_var hdlin_infer_multibit never
}

set_app_var hdlin_infer_mux all

set_app_var spg_enable_via_resistance_support true

if {[file exists [which ${LIBRARY_DONT_USE_PRE_COMPILE_LIST}]]} {
  puts "RM-Info: Sourcing script file [which ${LIBRARY_DONT_USE_PRE_COMPILE_LIST}]\n"
  source -echo -verbose $LIBRARY_DONT_USE_PRE_COMPILE_LIST
}

set_check_library_options -mcmm -logic_vs_physical

check_library -logic_library_name { \
saed32rvt_ff1p16vn40c.db \
saed32rvt_ss0p95v125c.db \
} > ${REPORTS_DIR}/00_report_check_library.rpt

check_tlu_plus_files > ${REPORTS_DIR}/01_report_check_tlu_plus.rpt

set_svf ${RESULTS_DIR}/${DCRM_SVF_OUTPUT_FILE}

saif_map -start

define_design_lib WORK -path ./WORK

analyze -format verilog ${RTL_SOURCE_FILES}
elaborate ${DESIGN_NAME}

current_design ${DESIGN_NAME}
redirect -tee -file ${REPORTS_DIR}/02_link.rpt {link}

write -hierarchy -format ddc -output ${RESULTS_DIR}/${DCRM_ELABORATED_DESIGN_DDC_OUTPUT_FILE}

#set_multibit_options -mode timing_driven

remove_scenario -all

puts "RM-Info: Sourcing script file [which ${DCRM_MCMM_SCENARIOS_SETUP_FILE}]\n"
redirect -tee -file ${REPORTS_DIR}/03_source.rpt {source -echo -verbose ${DCRM_MCMM_SCENARIOS_SETUP_FILE}}
redirect -tee -file ${REPORTS_DIR}/04_${DESIGN_NAME}.check_timing {check_timing}

current_scenario mode_norm.OC_rvt_ss0p95v125c
set scenario [current_scenario]
read_sdc [dcrm_mcmm_filename ${DCRM_SDC_INPUT_FILE} ${scenario}]
set_operating_conditions ss0p95v125c -library saed32rvt_ss0p95v125c -analysis_type on_chip_variation

current_scenario mode_norm.OC_rvt_ff1p16vn40c
set scenario [current_scenario]
read_sdc [dcrm_mcmm_filename ${DCRM_SDC_INPUT_FILE} ${scenario}]
set_operating_conditions ff1p16vn40c -library saed32rvt_ff1p16vn40c -analysis_type on_chip_variation

report_scenarios > ${REPORTS_DIR}/05_${DCRM_MCMM_SCENARIOS_REPORT}
# Below command outputs html files
check_scenarios -output ${REPORTS_DIR}

redirect -tee -file ${REPORTS_DIR}/06_${DESIGN_NAME}.report_port.reports {report_port -verbose}

set current_scenario_saved [current_scenario]
foreach scenario [all_active_scenarios] {
  current_scenario ${scenario}
  set ports_clock_root [filter_collection [get_attribute [get_clocks] sources] object_class==port]
  group_path -name REGOUT -to [all_outputs] 
  group_path -name REGIN -from [remove_from_collection [all_inputs] ${ports_clock_root}] 
  group_path -name FEEDTHROUGH -from [remove_from_collection [all_inputs] ${ports_clock_root}] -to [all_outputs]
}
current_scenario ${current_scenario_saved}

set_clock_gating_style -positive_edge_logic {integrated}

if {[shell_is_in_topographical_mode]} {

if { ${MIN_ROUTING_LAYER} != ""} {
set_ignored_layers -min_routing_layer ${MIN_ROUTING_LAYER}
}
if { ${MAX_ROUTING_LAYER} != ""} {
set_ignored_layers -max_routing_layer ${MAX_ROUTING_LAYER}
}

report_ignored_layers

if {[file exists [which ${DCRM_DCT_DEF_INPUT_FILE}]]} {
  puts "RM-Info: Reading in DEF file [which ${DCRM_DCT_DEF_INPUT_FILE}]\n"
  extract_physical_constraints ${DCRM_DCT_DEF_INPUT_FILE}
  if { $OPTIMIZATION_FLOW == "hplp"} {
    extract_physical_constraints -allow_physical_cells ${DCRM_DCT_DEF_INPUT_FILE}  
  }
}

if {[file exists [which ${DCRM_DCT_FLOORPLAN_INPUT_FILE}.objects]]} {
  puts "RM-Info: Reading in secondary floorplan file [which ${DCRM_DCT_FLOORPLAN_INPUT_FILE}.objects]\n"
  read_floorplan ${DCRM_DCT_FLOORPLAN_INPUT_FILE}.objects
}

if {[file exists [which ${DCRM_DCT_FLOORPLAN_INPUT_FILE}]]} {
  puts "RM-Info: Reading in floorplan file [which ${DCRM_DCT_FLOORPLAN_INPUT_FILE}]\n"
  read_floorplan ${DCRM_DCT_FLOORPLAN_INPUT_FILE}
}

if {[file exists [which ${DCRM_DCT_PHYSICAL_CONSTRAINTS_INPUT_FILE}]]} {
  set_app_var enable_rule_based_query true
  puts "RM-Info: Sourcing script file [which ${DCRM_DCT_PHYSICAL_CONSTRAINTS_INPUT_FILE}]\n"
  source -echo -verbose ${DCRM_DCT_PHYSICAL_CONSTRAINTS_INPUT_FILE}
  set_app_var enable_rule_based_query false 
}

write_floorplan -all ${RESULTS_DIR}/${DCRM_DCT_FLOORPLAN_OUTPUT_FILE}

report_physical_constraints > ${REPORTS_DIR}/${DCRM_DCT_PHYSICAL_CONSTRAINTS_REPORT}
}

set_fix_multiple_port_nets -all -buffer_constants

check_design -summary
check_design > ${REPORTS_DIR}/07_${DCRM_CHECK_DESIGN_REPORT}


set_app_var compile_timing_high_effort true
set_app_var placer_max_cell_density_threshold 0.75        
set_app_var psynopt_tns_high_effort true
set_app_var power_cg_physically_aware_cg true
set_app_var placer_tns_driven true
set_app_var power_low_power_placement true
set_dynamic_optimization true
set_app_var compile_register_replication_across_hierarchy true 

compile_ultra -spg -no_autoungroup -check_only > ${REPORTS_DIR}/${DESIGN_NAME}.compile_ultra_check_only.rpt

# compile_ultra -scan -gate_clock -spg
# compile_ultra -scan -gate_clock -spg > ${REPORTS_DIR}/${DESIGN_NAME}.compile_ultra.rpt
# compile_ultra -spg -no_autoungroup > ${REPORTS_DIR}/08_${DESIGN_NAME}.compile_ultra.rpt
compile_ultra -spg -no_autoungroup > ${REPORTS_DIR}/${DESIGN_NAME}.compile_ultra.rpt

write -format ddc -hierarchy -output ${RESULTS_DIR}/${DCRM_COMPILE_ULTRA_DDC_OUTPUT_FILE}

change_names -rules verilog -hierarchy
write_icc2_files -force  -output ${RESULTS_DIR}/${DCRM_FINAL_DESIGN_ICC2}
write -format verilog -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_VERILOG_OUTPUT_FILE}
write -format ddc     -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_DDC_OUTPUT_FILE}
set_svf -off

write_scan_def -output ${RESULTS_DIR}/${DCRM_DFT_FINAL_SCANDEF_OUTPUT_FILE}
check_scan_def > ${REPORTS_DIR}/${DCRM_DFT_FINAL_CHECK_SCAN_DEF_REPORT}
write_test_model -format ctl -output ${RESULTS_DIR}/${DCRM_DFT_FINAL_CTL_OUTPUT_FILE}

report_dft_signal > ${REPORTS_DIR}/${DCRM_DFT_FINAL_DFT_SIGNALS_REPORT}

write_test_protocol -test_mode Internal_scan -output ${RESULTS_DIR}/${DCRM_DFT_FINAL_PROTOCOL_OUTPUT_FILE}
current_test_mode Internal_scan
report_scan_path > ${REPORTS_DIR}/${DCRM_DFT_FINAL_SCAN_PATH_REPORT}
dft_drc
dft_drc -verbose > ${REPORTS_DIR}/${DCRM_DFT_DRC_FINAL_REPORT}

write_test_protocol -test_mode ScanCompression_mode -output ${RESULTS_DIR}/${DCRM_DFT_FINAL_SCAN_COMPR_PROTOCOL_OUTPUT_FILE}
current_test_mode ScanCompression_mode
report_scan_path > ${REPORTS_DIR}/${DCRM_DFT_FINAL_SCAN_COMPR_SCAN_PATH_REPORT}
dft_drc 
dft_drc -verbose > ${REPORTS_DIR}/${DCRM_DFT_DRC_FINAL_SCAN_COMPR_REPORT}

write_floorplan -all ${RESULTS_DIR}/${DCRM_DCT_FINAL_FLOORPLAN_OUTPUT_FILE}

if {[info exists DCRM_DCT_SPG_PLACEMENT_OUTPUT_FILE]} {
  write_def -components -output ${RESULTS_DIR}/${DCRM_DCT_SPG_PLACEMENT_OUTPUT_FILE}
}

set_app_var write_sdc_output_lumped_net_capacitance false
set_app_var write_sdc_output_net_resistance false

set all_active_scenario_saved [all_active_scenarios]
set current_scenario_saved [current_scenario]
set_active_scenarios -all

foreach scenario [all_active_scenarios] {
  current_scenario ${scenario}
  write_parasitics -output ${RESULTS_DIR}/[dcrm_mcmm_filename ${DCRM_DCT_FINAL_SPEF_OUTPUT_FILE} ${scenario}]
  write_sdf ${RESULTS_DIR}/[dcrm_mcmm_filename ${DCRM_DCT_FINAL_SDF_OUTPUT_FILE} ${scenario}]
}

current_scenario ${current_scenario_saved}
set_active_scenarios ${all_active_scenario_saved}

saif_map -type ptpx -write_map ${RESULTS_DIR}/${DESIGN_NAME}.mapped.SAIF.namemap

report_constraint -all_violators -verbose >> ${REPORTS_DIR}/10_${DESIGN_NAME}.report_constraint.reports
report_qor > ${REPORTS_DIR}/11_${DCRM_FINAL_QOR_REPORT}
report_timing -scenarios [all_active_scenarios] -transition_time -nets -attributes -nosplit > ${REPORTS_DIR}/12_${DCRM_FINAL_TIMING_REPORT}
report_tlu_plus_files  > ${REPORTS_DIR}/13_report_tlu_plus_files.reports
report_area -physical -nosplit > ${REPORTS_DIR}/14_${DCRM_FINAL_AREA_REPORT}
report_area -designware  > ${REPORTS_DIR}/15_${DCRM_FINAL_DESIGNWARE_AREA_REPORT}
report_resources -hierarchy > ${REPORTS_DIR}/16_${DCRM_FINAL_RESOURCES_REPORT}
report_clock_gating -nosplit > ${REPORTS_DIR}/17_${DCRM_FINAL_CLOCK_GATING_REPORT}

set icc_snapshot_storage_location ${REPORTS_DIR}/${DCRM_DCT_FINAL_QOR_SNAPSHOT_FOLDER}
create_qor_snapshot -name ${DCRM_DCT_FINAL_QOR_SNAPSHOT_REPORT} > ${REPORTS_DIR}/${DCRM_DCT_FINAL_QOR_SNAPSHOT_REPORT}


set current_scenario_saved [current_scenario]
foreach scenario [all_active_scenarios] {
  current_scenario ${scenario}
  report_saif -hierarchy -missing -rtl_saif > ${RESULTS_DIR}/${DESIGN_NAME}_${current_scenario_saved}.saif
}

current_scenario ${current_scenario_saved}
report_power -analysis_effort high -verbose -scenarios [all_active_scenarios] -nosplit > ${REPORTS_DIR}/18_${DCRM_FINAL_POWER_REPORT}
report_clock_gating -nosplit > ${REPORTS_DIR}/19_${DCRM_FINAL_CLOCK_GATING_REPORT}
report_congestion > ${REPORTS_DIR}/20_${DCRM_DCT_FINAL_CONGESTION_REPORT}


gui_start
set MyLayout [gui_create_window -type LayoutWindow]
report_congestion -build_map
gui_show_map -map "Global Route Congestion" -show true
gui_zoom -window [gui_get_current_window -view] -full
gui_write_window_image -format png -file ${REPORTS_DIR}/${DCRM_DCT_FINAL_CONGESTION_MAP_OUTPUT_FILE}
gui_write_window_image -window ${MyLayout} -format png -file ${REPORTS_DIR}/${DCRM_DCT_FINAL_CONGESTION_MAP_WINDOW_OUTPUT_FILE}
gui_stop

write_milkyway -overwrite -output ${DCRM_FINAL_MW_CEL_NAME}

gui_start
