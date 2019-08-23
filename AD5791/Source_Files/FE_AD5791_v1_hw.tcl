# TCL File Generated by Component Editor 18.0
# Mon May 20 11:07:51 MDT 2019
# DO NOT MODIFY


# 
# FE_AD5791_v1 "FE_AD5791_v1" v1.0
#  2019.05.20.11:07:51
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module FE_AD5791_v1
# 
set_module_property DESCRIPTION ""
set_module_property NAME FE_AD5791_v1
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME FE_AD5791_v1
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL FE_AD5791_v1
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file FE_AD5791_v1.vhd VHDL PATH FE_AD5791_v1.vhd TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point Line_Out
# 
add_interface Line_Out avalon_streaming end
set_interface_property Line_Out associatedClock sys_clk
set_interface_property Line_Out associatedReset sys_reset
set_interface_property Line_Out dataBitsPerSymbol 8
set_interface_property Line_Out errorDescriptor ""
set_interface_property Line_Out firstSymbolInHighOrderBits true
set_interface_property Line_Out maxChannel 0
set_interface_property Line_Out readyLatency 0
set_interface_property Line_Out ENABLED true
set_interface_property Line_Out EXPORT_OF ""
set_interface_property Line_Out PORT_NAME_MAP ""
set_interface_property Line_Out CMSIS_SVD_VARIABLES ""
set_interface_property Line_Out SVD_ADDRESS_GROUP ""

add_interface_port Line_Out AD5791_data_in data Input 32
add_interface_port Line_Out AD5791_error_in error Input 2
add_interface_port Line_Out AD5791_valid_in valid Input 1


# 
# connection point connect_to_AD5791
# 
add_interface connect_to_AD5791 conduit end
set_interface_property connect_to_AD5791 associatedClock spi_clk
set_interface_property connect_to_AD5791 associatedReset sys_reset
set_interface_property connect_to_AD5791 ENABLED true
set_interface_property connect_to_AD5791 EXPORT_OF ""
set_interface_property connect_to_AD5791 PORT_NAME_MAP ""
set_interface_property connect_to_AD5791 CMSIS_SVD_VARIABLES ""
set_interface_property connect_to_AD5791 SVD_ADDRESS_GROUP ""

add_interface_port connect_to_AD5791 AD5791_CLR_n_out ad5791_clr_n_out Output 1
add_interface_port connect_to_AD5791 AD5791_LDAC_n_out ad5791_ldac_n_out Output 1
add_interface_port connect_to_AD5791 AD5791_MISO_out ad5791_miso_out Input 1
add_interface_port connect_to_AD5791 AD5791_MOSI_in ad5791_mosi_in Output 1
add_interface_port connect_to_AD5791 AD5791_SCLK_out ad5791_sclk_out Output 1
add_interface_port connect_to_AD5791 AD5791_SYNC_n_out ad5791_sync_n_out Output 1


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
# connection point spi_clk
# 
add_interface spi_clk clock end
set_interface_property spi_clk clockRate 0
set_interface_property spi_clk ENABLED true
set_interface_property spi_clk EXPORT_OF ""
set_interface_property spi_clk PORT_NAME_MAP ""
set_interface_property spi_clk CMSIS_SVD_VARIABLES ""
set_interface_property spi_clk SVD_ADDRESS_GROUP ""

add_interface_port spi_clk spi_clk clk Input 1


# 
# connection point sys_reset
# 
add_interface sys_reset reset end
set_interface_property sys_reset associatedClock sys_clk
set_interface_property sys_reset synchronousEdges DEASSERT
set_interface_property sys_reset ENABLED true
set_interface_property sys_reset EXPORT_OF ""
set_interface_property sys_reset PORT_NAME_MAP ""
set_interface_property sys_reset CMSIS_SVD_VARIABLES ""
set_interface_property sys_reset SVD_ADDRESS_GROUP ""

add_interface_port sys_reset sys_reset_n reset_n Input 1


# 
# connection point double_spi_clk
# 
add_interface double_spi_clk clock end
set_interface_property double_spi_clk clockRate 0
set_interface_property double_spi_clk ENABLED true
set_interface_property double_spi_clk EXPORT_OF ""
set_interface_property double_spi_clk PORT_NAME_MAP ""
set_interface_property double_spi_clk CMSIS_SVD_VARIABLES ""
set_interface_property double_spi_clk SVD_ADDRESS_GROUP ""

add_interface_port double_spi_clk double_spi_clk_in clk Input 1

