# TCL File Generated by Component Editor 18.0
# Wed Dec 05 11:01:48 MST 2018
# DO NOT MODIFY


# 
# FE_Qsys_Simple_HAv8 "FE_Qsys_Simple_HAv8" v1.0
#  2018.12.05.11:01:48
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module FE_Qsys_Simple_HAv8
# 
set_module_property DESCRIPTION ""
set_module_property NAME FE_Qsys_Simple_HAv8
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME FE_Qsys_Simple_HAv8
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false
set_module_property GROUP "FPGA Open Speech Tools"

# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL FE_Qsys_Simple_HAv8
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file FE_Qsys_Simple_HAv8.vhd VHDL PATH FE_Qsys_Simple_HAv8.vhd TOP_LEVEL_FILE


# 
# parameters
# 

# 
# module assignments
# 
set_module_assignment embeddedsw.dts.compatible dev,fe-Simple-HAv8
set_module_assignment embeddedsw.dts.group Simple-HAv8
set_module_assignment embeddedsw.dts.vendor fe

# 
# display items
# 


# 
# connection point avalon_slave
# 
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock sys_clk
set_interface_property avalon_slave associatedReset sys_reset_n
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits WORDS
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave maximumPendingWriteTransactions 0
set_interface_property avalon_slave readLatency 0
set_interface_property avalon_slave readWaitTime 1
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave avalon_slave_address address Input 4
add_interface_port avalon_slave avalon_slave_read read Input 1
add_interface_port avalon_slave avalon_slave_write write Input 1
add_interface_port avalon_slave avalon_slave_writedata writedata Input 32
add_interface_port avalon_slave avalon_slave_readdata readdata Output 32
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point sys_clk
# 
add_interface sys_clk clock end
set_interface_property sys_clk clockRate 0
set_interface_property sys_clk ENABLED true
set_interface_property sys_clk EXPORT_OF ""
set_interface_property sys_clk PORT_NAME_MAP ""
set_interface_property sys_clk CMSIS_SVD_VARIABLES ""
set_interface_property sys_clk SVD_ADDRESS_GROUP ""

add_interface_port sys_clk sys_clk clk Input 1


# 
# connection point audio_pll_clk
# 
add_interface audio_pll_clk clock end
set_interface_property audio_pll_clk clockRate 0
set_interface_property audio_pll_clk ENABLED true
set_interface_property audio_pll_clk EXPORT_OF ""
set_interface_property audio_pll_clk PORT_NAME_MAP ""
set_interface_property audio_pll_clk CMSIS_SVD_VARIABLES ""
set_interface_property audio_pll_clk SVD_ADDRESS_GROUP ""

add_interface_port audio_pll_clk audio_pll_clk clk Input 1


# 
# connection point sys_reset_n
# 
add_interface sys_reset_n reset end
set_interface_property sys_reset_n associatedClock sys_clk
set_interface_property sys_reset_n synchronousEdges DEASSERT
set_interface_property sys_reset_n ENABLED true
set_interface_property sys_reset_n EXPORT_OF ""
set_interface_property sys_reset_n PORT_NAME_MAP ""
set_interface_property sys_reset_n CMSIS_SVD_VARIABLES ""
set_interface_property sys_reset_n SVD_ADDRESS_GROUP ""

add_interface_port sys_reset_n sys_reset_n reset_n Input 1


# 
# connection point data_in_left
# 
add_interface data_in_left avalon_streaming end
set_interface_property data_in_left associatedClock sys_clk
set_interface_property data_in_left associatedReset sys_reset_n
set_interface_property data_in_left dataBitsPerSymbol 8
set_interface_property data_in_left errorDescriptor ""
set_interface_property data_in_left firstSymbolInHighOrderBits true
set_interface_property data_in_left maxChannel 0
set_interface_property data_in_left readyLatency 0
set_interface_property data_in_left ENABLED true
set_interface_property data_in_left EXPORT_OF ""
set_interface_property data_in_left PORT_NAME_MAP ""
set_interface_property data_in_left CMSIS_SVD_VARIABLES ""
set_interface_property data_in_left SVD_ADDRESS_GROUP ""

add_interface_port data_in_left data_in_left_data data Input 32
add_interface_port data_in_left data_in_left_error error Input 2
add_interface_port data_in_left data_in_left_valid valid Input 1


# 
# connection point data_in_right
# 
add_interface data_in_right avalon_streaming end
set_interface_property data_in_right associatedClock sys_clk
set_interface_property data_in_right associatedReset sys_reset_n
set_interface_property data_in_right dataBitsPerSymbol 8
set_interface_property data_in_right errorDescriptor ""
set_interface_property data_in_right firstSymbolInHighOrderBits true
set_interface_property data_in_right maxChannel 0
set_interface_property data_in_right readyLatency 0
set_interface_property data_in_right ENABLED true
set_interface_property data_in_right EXPORT_OF ""
set_interface_property data_in_right PORT_NAME_MAP ""
set_interface_property data_in_right CMSIS_SVD_VARIABLES ""
set_interface_property data_in_right SVD_ADDRESS_GROUP ""

add_interface_port data_in_right data_in_right_data data Input 32
add_interface_port data_in_right data_in_right_error error Input 2
add_interface_port data_in_right data_in_right_valid valid Input 1


# 
# connection point data_out_left
# 
add_interface data_out_left avalon_streaming start
set_interface_property data_out_left associatedClock sys_clk
set_interface_property data_out_left associatedReset sys_reset_n
set_interface_property data_out_left dataBitsPerSymbol 8
set_interface_property data_out_left errorDescriptor ""
set_interface_property data_out_left firstSymbolInHighOrderBits true
set_interface_property data_out_left maxChannel 0
set_interface_property data_out_left readyLatency 0
set_interface_property data_out_left ENABLED true
set_interface_property data_out_left EXPORT_OF ""
set_interface_property data_out_left PORT_NAME_MAP ""
set_interface_property data_out_left CMSIS_SVD_VARIABLES ""
set_interface_property data_out_left SVD_ADDRESS_GROUP ""

add_interface_port data_out_left data_out_left_data data Output 32
add_interface_port data_out_left data_out_left_error error Output 2
add_interface_port data_out_left data_out_left_valid valid Output 1


# 
# connection point data_out_right
# 
add_interface data_out_right avalon_streaming start
set_interface_property data_out_right associatedClock sys_clk
set_interface_property data_out_right associatedReset sys_reset_n
set_interface_property data_out_right dataBitsPerSymbol 8
set_interface_property data_out_right errorDescriptor ""
set_interface_property data_out_right firstSymbolInHighOrderBits true
set_interface_property data_out_right maxChannel 0
set_interface_property data_out_right readyLatency 0
set_interface_property data_out_right ENABLED true
set_interface_property data_out_right EXPORT_OF ""
set_interface_property data_out_right PORT_NAME_MAP ""
set_interface_property data_out_right CMSIS_SVD_VARIABLES ""
set_interface_property data_out_right SVD_ADDRESS_GROUP ""

add_interface_port data_out_right data_out_right_data data Output 32
add_interface_port data_out_right data_out_right_error error Output 2
add_interface_port data_out_right data_out_right_valid valid Output 1

