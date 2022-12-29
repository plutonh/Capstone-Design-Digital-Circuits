## created by write_timing_context -format icc2 -output results/ICC2_files/TOP.MCMM
puts "Information: sourcing [info script]";
remove_modes -all;remove_corners -all;remove_scenarios -all;
namespace eval 6358AB68 {
  variable _search_path $::search_path;
  set ::search_path [linsert $_search_path 0 [file normalize [file dirname [info script]]] ];

  source helper_script.tcl;
}


## IC Compiler Scenario: mode_norm.OC_rvt_ss0p95v125c
create_mode mode_norm.OC_rvt_ss0p95v125c;
create_corner mode_norm.OC_rvt_ss0p95v125c;
create_scenario -mode mode_norm.OC_rvt_ss0p95v125c -corner mode_norm.OC_rvt_ss0p95v125c -name mode_norm.OC_rvt_ss0p95v125c;
set_app_options -list { time.convert_constraint_from_bc_wc none};
namespace eval 6358AB68 {
  variable _se [get_message_info -limit CMD-005];set_message_info -id CMD-005 -limit 1;redirect -variable _tmp {catch {slarty;bartvast;};};unset _tmp;
  source -continue_on_error scenario_mode_norm_OC_rvt_ss0p95v125c.tcl;
  set_message_info -id CMD-005 -limit $_se; unset _se
}
## Scenario Status
## Test Power UI
set_scenario_status -none -setup true -hold false mode_norm.OC_rvt_ss0p95v125c;
if [string length [get_defined_attributes -class scenario {dynamic_power}]] {
  set_scenario_status -dynamic_power true -leakage_power true mode_norm.OC_rvt_ss0p95v125c;
} else {
  set_scenario_status -power [expr true || true] mode_norm.OC_rvt_ss0p95v125c;
}

## IC Compiler Scenario: mode_norm.OC_rvt_ff1p16vn40c
create_mode mode_norm.OC_rvt_ff1p16vn40c;
create_corner mode_norm.OC_rvt_ff1p16vn40c;
create_scenario -mode mode_norm.OC_rvt_ff1p16vn40c -corner mode_norm.OC_rvt_ff1p16vn40c -name mode_norm.OC_rvt_ff1p16vn40c;
set_app_options -list { time.convert_constraint_from_bc_wc none};
namespace eval 6358AB68 {
  variable _se [get_message_info -limit CMD-005];set_message_info -id CMD-005 -limit 1;redirect -variable _tmp {catch {slarty;bartvast;};};unset _tmp;
  source -continue_on_error scenario_mode_norm_OC_rvt_ff1p16vn40c.tcl;
  set_message_info -id CMD-005 -limit $_se; unset _se
}
## Scenario Status
## Test Power UI
set_scenario_status -none -setup true -hold false mode_norm.OC_rvt_ff1p16vn40c;
if [string length [get_defined_attributes -class scenario {dynamic_power}]] {
  set_scenario_status -dynamic_power true -leakage_power true mode_norm.OC_rvt_ff1p16vn40c;
} else {
  set_scenario_status -power [expr true || true] mode_norm.OC_rvt_ff1p16vn40c;
}
## have the max drc costing follow the setup costing and min drc costing follow the hold costing
if [sizeof_collection [get_scenarios -quiet -filter setup]] {set_scenario_status -max_cap true -max_tran true [get_scenarios -filter setup];}
if [sizeof_collection [get_scenarios -quiet -filter hold]] {set_scenario_status -min_cap true [get_scenarios -filter hold];}
set_app_options -list { time.convert_constraint_from_bc_wc none};

## these were the acive and current scenarios in the generation session
namespace eval 6358AB68 {
  variable inactive_scenarios [::remove_from_collection [::get_scenarios] [::get_scenarios [list mode_norm.OC_rvt_ss0p95v125c mode_norm.OC_rvt_ff1p16vn40c]]];
  ::set_scenario_status -active true *;
  if [::sizeof_collection $inactive_scenarios] {
    ::set_scenario_status -active false $inactive_scenarios;
  }
  if [::sizeof_collection [::get_scenarios -quiet mode_norm.OC_rvt_ff1p16vn40c]] {
    ::current_scenario mode_norm.OC_rvt_ff1p16vn40c;
  } else {
    puts "Warning: dc_shell current_scenario (mode_norm.OC_rvt_ff1p16vn40c) does not exist";
  }
}
namespace eval 6358AB68 {
  proc set_tlu_plus_files {args} {}; ## Do not want these applied globally
  variable _se [get_message_info -limit CMD-005];set_message_info -id CMD-005 -limit 1;redirect -variable _tmp {catch {slarty;bartvast;};};unset _tmp;
  source -continue_on_error design.tcl;
  set_message_info -id CMD-005 -limit $_se; unset _se
  set ::search_path $_search_path;
}
namespace delete 6358AB68;
puts "Information: sourced [info script]";
