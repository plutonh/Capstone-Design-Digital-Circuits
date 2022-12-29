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
# Read cell expansion data
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/TOP.cell.exp]} {
read_cell_expansion -input ${_DCG_ICC2_DIR_}/TOP.cell.exp 
}



