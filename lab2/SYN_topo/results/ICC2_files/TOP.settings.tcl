
##################################################################
# Created by :	Design Compiler (Topographical)
# Version    :	O-2018.06-SP4 Nov 27, 2018
# Date       :	Mon Oct  3 17:19:28 2022
# Command    :	write_icc2_files -environment_only	\
#		-o results/ICC2_files/TOP.settings.tcl 
##################################################################

##################################################################
# Set application variables for app 
##################################################################
set_app_var search_path "$search_path . ../RTL                                 \
/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_lvt/db_ccs                      \
/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_rvt/db_ccs                      \
/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_hvt/db_ccs                      \
/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/io_std/db_ccs                           \
/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/io_sp/db_ccs ./mcmm_cons ./script       \
./results  . /data/SYNOPSYS/syn/2018.06-SP4/libraries/syn                      \
/data/SYNOPSYS/syn/2018.06-SP4/minpower/syn                                    \
/data/SYNOPSYS/syn/2018.06-SP4/dw/syn_ver                                      \
/data/SYNOPSYS/syn/2018.06-SP4/dw/sim_ver "

##################################################################
# Set application variables for design 
##################################################################
set_app_options -name design.bus_delimiters -value {[]}

##################################################################
# Set application variables for mv 
##################################################################
set_app_options -name mv.cells.no_main_power_violations -value true 

##################################################################
# Set application variables for power 
##################################################################
set_app_options -name power.default_static_probability -value 0.5 
set_app_options -name power.default_toggle_rate -value 0.1 
set_app_options -name power.default_toggle_rate_reference_clock -value fastest
set_app_options -name mv.upf.enable_golden_upf -value false 

##################################################################
# Set application variables for time 
##################################################################
set_app_options -name time.enable_clock_to_data_analysis -value false 
set_app_options -name time.high_fanout_net_pin_capacitance -value 1.000000pF
set_app_options -name time.high_fanout_net_threshold -value 1000 
set_app_options -name time.use_special_default_path_groups -value false 
set_app_options -name time.remove_clock_reconvergence_pessimism -value false 
set_app_options -name time.gclock_source_network_num_master_registers -value   \
10000000 
set_app_options -name time.disable_cond_default_arcs -value false 
set_app_options -name time.crpr_remove_clock_to_data_crp -value false 
set_app_options -name time.clock_reconvergence_pessimism -value normal 
set_app_options -name time.case_analysis_sequential_propagation -value never 

##################################################################
# Set application variables for place 
##################################################################
set_app_options -name place.coarse.channel_detect_mode -value false
set_app_options -name place.coarse.icg_auto_bound -value false
set_app_options -name place.coarse.enable_enhanced_soft_blockages -value true 
set_app_options -name place.coarse.max_density -value 0.75

##################################################################
# Set application variables for opt 
##################################################################
set_app_options -name opt.timing.effort -value high

##################################################################
# Set attributes 
##################################################################

##################################################################
# Commands 
##################################################################

current_design TOP

set_isolate_ports -type buffer [get_ports {y[7]}]
set_isolate_ports -type buffer [get_ports {y[6]}]
set_isolate_ports -type buffer [get_ports {y[5]}]
set_isolate_ports -type buffer [get_ports {y[4]}]
set_isolate_ports -type buffer [get_ports {y[3]}]
set_isolate_ports -type buffer [get_ports {y[2]}]
set_isolate_ports -type buffer [get_ports {y[1]}]
set_isolate_ports -type buffer [get_ports {y[0]}]
##################################################################
