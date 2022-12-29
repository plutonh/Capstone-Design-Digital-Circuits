set _DCG_ICC2_DIR_ [file dirname [file normalize [info script]]]



##################################################################
# Read Design
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/TOP.v]} {
read_verilog ${_DCG_ICC2_DIR_}/TOP.v -top TOP
}



##################################################################
# Read settings
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/TOP.settings.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/TOP.settings.tcl 
}



##################################################################
# Read SDC
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/TOP.MCMM/top.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/TOP.MCMM/top.tcl 
}



##################################################################
# Read Floorplan
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/TOP.floorplan/floorplan.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/TOP.floorplan/floorplan.tcl 
}



##################################################################
# Read scan DEF
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/TOP.scan.def]} {
read_def ${_DCG_ICC2_DIR_}/TOP.scan.def 
}



##################################################################
# Read the SAIF
##################################################################
set __DCGICC2_CURRENT_SCENARIO__ [current_scenario]
if {[file exists ${_DCG_ICC2_DIR_}/TOP.SAIF/scenario_mode_norm.OC_rvt_ss0p95v125c.saif]} {
current_scenario mode_norm.OC_rvt_ss0p95v125c; read_saif ${_DCG_ICC2_DIR_}/TOP.SAIF/scenario_mode_norm.OC_rvt_ss0p95v125c.saif 
}
if {[file exists ${_DCG_ICC2_DIR_}/TOP.SAIF/scenario_mode_norm.OC_rvt_ff1p16vn40c.saif]} {
current_scenario mode_norm.OC_rvt_ff1p16vn40c; read_saif ${_DCG_ICC2_DIR_}/TOP.SAIF/scenario_mode_norm.OC_rvt_ff1p16vn40c.saif 
}
current_scenario ${__DCGICC2_CURRENT_SCENARIO__}



##################################################################
# Read cell expansion data
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/TOP.cell.exp]} {
read_cell_expansion -input ${_DCG_ICC2_DIR_}/TOP.cell.exp 
}



