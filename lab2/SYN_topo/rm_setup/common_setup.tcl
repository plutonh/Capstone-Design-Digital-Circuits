puts "RM-Info: Running script [info script]\n"

##########################################################################################
# Variables common to all reference methodology scripts
# Script: common_setup.tcl
# Version: M-2016.12-SP4 (July 17, 2017)
# Copyright (C) 2007-2017 Synopsys, Inc. All rights reserved.
##########################################################################################

set DESIGN_NAME                   "TOP"  ;#  The name of the top-level design


set DESIGN_REF_DATA_PATH          ""  ;#  Absolute path prefix variable for library/design data.
                                       #  Use this variable to prefix the common absolute path  
                                       #  to the common variables defined below.
                                       #  Absolute paths are mandatory for hierarchical 
                                       #  reference methodology flow.

##########################################################################################
# Hierarchical Flow Design Variables
##########################################################################################

set HIERARCHICAL_DESIGNS           "" ;# List of hierarchical block design names "DesignA DesignB" ...
set HIERARCHICAL_CELLS             "" ;# List of hierarchical block cell instance names "u_DesignA u_DesignB" ...

##########################################################################################
# Library Setup Variables
##########################################################################################

# For the following variables, use a blank space to separate multiple entries.
# Example: set TARGET_LIBRARY_FILES "lib1.db lib2.db lib3.db"

set dc_source_path ../RTL

# Edit this with style of full path
set PDK /data/SYNOPSYS/lib/32nm/SAED32nm_EDK
set LIB $PDK/lib

set std_lvt_library_path "/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_lvt/db_ccs"
set std_rvt_library_path "/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_rvt/db_ccs"
set std_hvt_library_path "/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_hvt/db_ccs"
set gpio_library_path "/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/io_std/db_ccs"
set powerio_library_path "/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/io_sp/db_ccs"

set ADDITIONAL_SEARCH_PATH "\
$dc_source_path \
$std_lvt_library_path \
$std_rvt_library_path \
$std_hvt_library_path \
$gpio_library_path \
$powerio_library_path \
./mcmm_cons \
./script \
./results \
"
#$SRAM_library_path \

set TARGET_LIBRARY_FILES          " \
saed32rvt_ff1p16vn40c.db \
saed32rvt_ss0p95v125c.db \
"

set ADDITIONAL_LINK_LIB_FILES     "\
"
#saed32rvt_ff1p16vn40c.db \
#saed32rvt_ss0p95v125c.db"

set synthetic_library dw_foundation.sldb
#set SYMBOL_LIBRARY_FILES          cmos10lprvt_m.sdb                     ;#  Symbol library file

set hdlin_enable_configurations true
set hdlin_enable_rtldrc_info true
set test_default_scan_style multiplexed_flip_flop

set MIN_LIBRARY_FILES             ""  ;#  List of max min library pairs "max1 min1 max2 min2 max3 min3"...

set MW_REFERENCE_CONTROL_FILE     ""  ;#  Reference Control file to define the Milkyway reference libs

set MIN_ROUTING_LAYER            "M1"   ;# Min routing layer
set MAX_ROUTING_LAYER            "M7"   ;# Max routing layer
# set MIN_ROUTING_LAYER            ""   ;# Min routing layer
# set MAX_ROUTING_LAYER            ""   ;# Max routing layer

set TECH $PDK/tech
set MILKYWAY $TECH/milkyway
set STARRC $TECH/star_rcxt

#set SUB_DESIGN_DIR                  "/home/smkcow/QnA/digital/example_smkcow_DC_ICC2"

# User-defined Milkyway design library name
set MW_DESIGN_LIB                 MY_DESIGN_LIB

# Milkyway reference libraries
set MW_REFERENCE_LIB_DIRS       "/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_rvt/milkyway/saed32nm_rvt_1p9m"
#set MW_REFERENCE_LIB_DIRS       "/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_rvt/milkyway/saed32nm_rvt_1p9m \
#                                /data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/sram/milkyway/SRAM32NM"

set TECH_FILE                   "/data/SYNOPSYS/lib/32nm/SAED32_EDK/tech/milkyway/saed32nm_1p9m_mw.tf"

#Physical Library
set MAP_FILE                    "/data/SYNOPSYS/lib/32nm/SAED32_EDK/tech/star_rcxt/saed32nm_tf_itf_tluplus.map"
set TLUPLUS_MAX_FILE            "/data/SYNOPSYS/lib/32nm/SAED32_EDK/tech/star_rcxt/saed32nm_1p9m_Cmax.tluplus"
set TLUPLUS_MIN_FILE            "/data/SYNOPSYS/lib/32nm/SAED32_EDK/tech/star_rcxt/saed32nm_1p9m_Cmin.tluplus"
set NXTGRD_MAX_FILE             "/data/SYNOPSYS/lib/32nm/SAED32_EDK/tech/star_rcxt/saed32nm_1p9m_Cmax.nxtgrd"
set NXTGRD_MIN_FILE             "/data/SYNOPSYS/lib/32nm/SAED32_EDK/tech/star_rcxt/saed32nm_1p9m_Cmix.nxtgrd"

set LIBRARY_DONT_USE_FILE        ""   ;# Tcl file with library modifications for dont_use
set LIBRARY_DONT_USE_PRE_COMPILE_LIST ""; #Tcl file for customized don't use list before first compile
set LIBRARY_DONT_USE_PRE_INCR_COMPILE_LIST "";# Tcl file with library modifications for dont_use before incr compile
##########################################################################################
# Multivoltage Common Variables
#
# Define the following multivoltage common variables for the reference methodology scripts 
# for multivoltage flows. 
# Use as few or as many of the following definitions as needed by your design.
##########################################################################################

#set PD1                          ""           ;# Name of power domain/voltage area  1
#set VA1_COORDINATES              {}           ;# Coordinates for voltage area 1
#set MW_POWER_NET1                "VDD1"       ;# Power net for voltage area 1
#
#set PD2                          ""           ;# Name of power domain/voltage area  2
#set VA2_COORDINATES              {}           ;# Coordinates for voltage area 2
#set MW_POWER_NET2                "VDD2"       ;# Power net for voltage area 2
#
#set PD3                          ""           ;# Name of power domain/voltage area  3
#set VA3_COORDINATES              {}           ;# Coordinates for voltage area 3
#set MW_POWER_NET3                "VDD3"       ;# Power net for voltage area 3
#
#set PD4                          ""           ;# Name of power domain/voltage area  4
#set VA4_COORDINATES              {}           ;# Coordinates for voltage area 4
#set MW_POWER_NET4                "VDD4"       ;# Power net for voltage area 4

puts "RM-Info: Completed script [info script]\n"

