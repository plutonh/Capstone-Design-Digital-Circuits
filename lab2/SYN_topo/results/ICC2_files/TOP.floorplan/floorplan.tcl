##################################################################
##  Created by: Design Compiler
##  Version: O-2018.06-SP4
##  Design: TOP
##  Date: Mon Oct  3 17:19:28 2022
##  Command: write_floorplan
##################################################################
set _dirName__0 [file dirname [file normalize [info script]]]


################################################################################
# Read DEF
################################################################################


read_def -allow_cell_creation ${_dirName__0}/floorplan.def


################################################################################
# Bounds
################################################################################




################################################################################
# Route guides
################################################################################




################################################################################
# Blockages
################################################################################




################################################################################
# Voltage areas
################################################################################




################################################################################
# RP groups
################################################################################


if {[file exists ${_dirName__0}/rp.tcl]} {
source ${_dirName__0}/rp.tcl
}


################################################################################
# User Shapes
################################################################################




################################################################################
# Routing directions
################################################################################


set_ignored_layers -rc_congestion_ignored_layers {M8 M9 MRDL } -min_routing_layer {M1} -max_routing_layer {M7} -verbose
set_attribute [get_layer M1] routing_direction horizontal
set_attribute [get_layer M2] routing_direction vertical
set_attribute [get_layer M3] routing_direction horizontal
set_attribute [get_layer M4] routing_direction vertical
set_attribute [get_layer M5] routing_direction horizontal
set_attribute [get_layer M6] routing_direction vertical
set_attribute [get_layer M7] routing_direction horizontal
set_attribute [get_layer M8] routing_direction vertical
set_attribute [get_layer M9] routing_direction horizontal
set_attribute [get_layer MRDL] routing_direction vertical


################################################################################
# Routing Rules
################################################################################


# option added by compile_layer_aware_optimization edit if necessary
source ${_dirName__0}/routing_rule.lao.tcl
source ${_dirName__0}/routing_rule.tcl
source ${_dirName__0}/routing_rule.net.tcl
source ${_dirName__0}/routing_rule.layer.tcl
