# TCL File Generated by Component Editor 18.0
# Mon Nov 19 13:15:33 MST 2018
# DO NOT MODIFY


# 
# FE_Qsys_Simple_HA "FE_Qsys_Simple_HA" v1.0
#  2018.11.19.13:15:33
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module FE_Qsys_Simple_HA
# 
set_module_property DESCRIPTION ""
set_module_property NAME FE_Qsys_Simple_HA
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME FE_Qsys_Simple_HA
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL FE_Qsys_Simple_HA
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file FE_Qsys_Simple_HA.vhd VHDL PATH FE_Qsys_Simple_HA.vhd TOP_LEVEL_FILE


# 
# parameters
# 


# 
# module assignments
# 
set_module_assignment embeddedsw.dts.compatible dev,fe-Simple-HA
set_module_assignment embeddedsw.dts.group Simple-HA
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
# connection point data_left_in
# 
add_interface data_left_in avalon_streaming end
set_interface_property data_left_in associatedClock sys_clk
set_interface_property data_left_in associatedReset sys_reset_n
set_interface_property data_left_in dataBitsPerSymbol 8
set_interface_property data_left_in errorDescriptor ""
set_interface_property data_left_in firstSymbolInHighOrderBits true
set_interface_property data_left_in maxChannel 0
set_interface_property data_left_in readyLatency 0
set_interface_property data_left_in ENABLED true
set_interface_property data_left_in EXPORT_OF ""
set_interface_property data_left_in PORT_NAME_MAP ""
set_interface_property data_left_in CMSIS_SVD_VARIABLES ""
set_interface_property data_left_in SVD_ADDRESS_GROUP ""

add_interface_port data_left_in data_in_left_data data Input 32
add_interface_port data_left_in data_in_left_error error Input 2
add_interface_port data_left_in data_in_left_valid valid Input 1


# 
# connection point data_right_in
# 
add_interface data_right_in avalon_streaming end
set_interface_property data_right_in associatedClock sys_clk
set_interface_property data_right_in associatedReset sys_reset_n
set_interface_property data_right_in dataBitsPerSymbol 8
set_interface_property data_right_in errorDescriptor ""
set_interface_property data_right_in firstSymbolInHighOrderBits true
set_interface_property data_right_in maxChannel 0
set_interface_property data_right_in readyLatency 0
set_interface_property data_right_in ENABLED true
set_interface_property data_right_in EXPORT_OF ""
set_interface_property data_right_in PORT_NAME_MAP ""
set_interface_property data_right_in CMSIS_SVD_VARIABLES ""
set_interface_property data_right_in SVD_ADDRESS_GROUP ""

add_interface_port data_right_in data_in_right_data data Input 32
add_interface_port data_right_in data_in_right_error error Input 2
add_interface_port data_right_in data_in_right_valid valid Input 1


# 
# connection point data_left_out
# 
add_interface data_left_out avalon_streaming start
set_interface_property data_left_out associatedClock sys_clk
set_interface_property data_left_out associatedReset sys_reset_n
set_interface_property data_left_out dataBitsPerSymbol 8
set_interface_property data_left_out errorDescriptor ""
set_interface_property data_left_out firstSymbolInHighOrderBits true
set_interface_property data_left_out maxChannel 0
set_interface_property data_left_out readyLatency 0
set_interface_property data_left_out ENABLED true
set_interface_property data_left_out EXPORT_OF ""
set_interface_property data_left_out PORT_NAME_MAP ""
set_interface_property data_left_out CMSIS_SVD_VARIABLES ""
set_interface_property data_left_out SVD_ADDRESS_GROUP ""

add_interface_port data_left_out data_out_left_data data Output 32
add_interface_port data_left_out data_out_left_error error Output 2
add_interface_port data_left_out data_out_left_valid valid Output 1


# 
# connection point data_right_out
# 
add_interface data_right_out avalon_streaming start
set_interface_property data_right_out associatedClock sys_clk
set_interface_property data_right_out associatedReset sys_reset_n
set_interface_property data_right_out dataBitsPerSymbol 8
set_interface_property data_right_out errorDescriptor ""
set_interface_property data_right_out firstSymbolInHighOrderBits true
set_interface_property data_right_out maxChannel 0
set_interface_property data_right_out readyLatency 0
set_interface_property data_right_out ENABLED true
set_interface_property data_right_out EXPORT_OF ""
set_interface_property data_right_out PORT_NAME_MAP ""
set_interface_property data_right_out CMSIS_SVD_VARIABLES ""
set_interface_property data_right_out SVD_ADDRESS_GROUP ""

add_interface_port data_right_out data_out_right_data data Output 32
add_interface_port data_right_out data_out_right_error error Output 2
add_interface_port data_right_out data_out_right_valid valid Output 1


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

