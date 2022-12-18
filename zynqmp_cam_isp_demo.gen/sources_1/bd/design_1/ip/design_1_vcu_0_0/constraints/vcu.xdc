

#PROJECT_PARAM.ARCHITECTURE        
#PROJECT_PARAM.DEVICE               
#PROJECT_PARAM.PACKAGE      
#PROJECT_PARAM.SPEED_GRADE  
#PROJECT_PARAM.TEMPERATURE_GRADE     
#PROJECT_PARAM.SILICON_REVISION      
#PROJECT_PARAM.FAMILY                
#PROJECT_PARAM.PART                  
#PROJECT_PARAM.IO_STANDARDS          
#PROJECT_PARAM.FAMILY_ISE            
#PROJECT_PARAM.PART_ISE              
#PROJECT_PARAM.PREFHDL               
#PROJECT_PARAM.USE_RDI_CUSTOMIZATION 
#PROJECT_PARAM.USE_RDI_GENERATION    
#PROJECT_PARAM.BOARD                 
#PROJECT_PARAM.SIMLANGUAGE

##
# Need to name the softip_regs to vcu_softip_regs to remove any name issues

# commented below scripts on 24/10/2018:

#set_false_path -from [get_pins -hierarchical -filter  { NAME =~ "*softip_regs/vcu_reset_f2_reg/C"}]
#set_false_path -from [get_pins -hierarchical -filter  { NAME =~ "*softip_regs/vcu_reset_encClk_f2_reg/C"}]
#set_false_path -to [get_pins -hierarchical -filter  { NAME =~ "*softip_regs/vcu_reset_f2_reg/D"}]
#set_false_path -to [get_pins -hierarchical -filter  { NAME =~ "*softip_regs/vcu_reset_encClk_f2_reg/D"}]
#set_false_path -to [get_pins -hierarchical -filter  { NAME =~ "*softip_regs/vcu_reset_f1_reg/D"}]
#set_false_path -to [get_pins -hierarchical -filter  { NAME =~ "*softip_regs/vcu_reset_encClk_f1_reg/D"}]

# below scripts are modified which direclty pointing to cell on 24/10/18:

set_false_path -from [get_pins -filter {REF_PIN_NAME=~C} -of_objects [get_cells -hierarchical vcu_reset_f2_reg]]
set_false_path -from [get_pins -filter {REF_PIN_NAME=~C} -of_objects [get_cells -hierarchical vcu_reset_encClk_f2_reg]]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~D} -of_objects [get_cells -hierarchical vcu_reset_f2_reg]]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~D} -of_objects [get_cells -hierarchical vcu_reset_encClk_f2_reg]]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~D} -of_objects [get_cells -hierarchical vcu_reset_f1_reg]]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~D} -of_objects [get_cells -hierarchical vcu_reset_encClk_f1_reg]]

#set_false_path -from [get_pins -hierarchical -filter  { NAME =~ "*/inst/softip_regs/vcu_reset_f2_reg/C"}]
#set_false_path -from [get_pins -hierarchical -filter  { NAME =~ "*/inst/softip_regs/vcu_reset_encClk_f2_reg/C"}]
#set_false_path -to [get_pins -hierarchical -filter  { NAME =~ "*/inst/softip_regs/vcu_reset_f2_reg/D"}]
#set_false_path -to [get_pins -hierarchical -filter  { NAME =~ "*/inst/softip_regs/vcu_reset_encClk_f2_reg/D"}]
#set_false_path -to [get_pins -hierarchical -filter  { NAME =~ "*/inst/softip_regs/vcu_reset_f1_reg/D"}]
#set_false_path -to [get_pins -hierarchical -filter  { NAME =~ "*/inst/softip_regs/vcu_reset_encClk_f1_reg/D"}]

######## 100ps extra hold margin for "ES2" part ##########################################


######## 100ps extra hold margin for "ES2" part ##########################################



#########################################################################################
#################  Example Usage ########################################################
#########################################################################################

#
#
#
#
#
#
#
#

#
#
#


#########################################################################################################################

#set_false_path -to [get_pins -hierarchical -filter  { NAME =~ "*/inst/softip_regs/vcu_reset_f1_reg/S"}]
#set_false_path -to [get_pins -hierarchical -filter  { NAME =~ "*/inst/softip_regs/vcu_reset_encClk_f1_reg/S"}]
#set_false_path -to [get_pins -hierarchical -filter  { NAME =~ "*/inst/softip_regs/vcu_reset_f2_reg/S"}]
#set_false_path -to [get_pins -hierarchical -filter  { NAME =~ "*/inst/softip_regs/vcu_reset_encClk_f2_reg/S"}]

#get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXIMCUCLK"}
#get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXIENCCLK"}
#get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXIDECCLK"}
#get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXILITECLK"}
#get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUENCL2CCLK"}
# 

#set_false_path -from [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/softip_regs/mcp_patch/*_reg*/C"}] -through [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/*AXI*LITE*"}]
#set_false_path -to [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/softip_regs/mcp_patch/*_reg*/D"}] -from [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXILITECLK"}]


#set_false_path -from [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXIMCUCLK"}] -through [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/*AXI*LITE*"}]
#set_false_path -through [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/*MCU*AXI*"}] -from [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXILITECLK"}]

#set_false_path -from [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/softip_regs/mcp_patch/*_reg*/C"}] -to [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/softip_regs/*_reg*/D"}]
#set_false_path -to [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/softip_regs/mcp_patch/*_reg*/D"}] -from [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/softip_regs/*_reg*/C"}]



#############   Old Ones ###########################


#max delay const on signal to change clock 
#set_false_path -from [get_pins -hierarchical -filter  { NAME =~ "*vcu_*/inst/softip_regs/mcp_patch/clock*enable_reg/C"} ]


# L2C clk to MCU clock
#set_false_path  -from [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXIMCUCLK"} ]] -to    [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUENCL2CCLK"} ]] 
#set_false_path  -to   [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXIMCUCLK"} ]] -from  [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUENCL2CCLK"} ]] 

# AXI Lite clk to MCU clock
#set_false_path  -from [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXIMCUCLK"} ]] -to    [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXILITECLK"} ]] 
#set_false_path  -to   [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXIMCUCLK"} ]] -from  [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXILITECLK"} ]] 

# AXI Lite clk to L2C clock
#set_false_path  -from [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUENCL2CCLK"} ]] -to    [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXILITECLK"} ]] 
#set_false_path  -to   [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUENCL2CCLK"} ]] -from  [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXILITECLK"} ]] 

# AXI Lite clk to Enc clock
#set_false_path  -from [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXIENCCLK"} ]] -to    [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXILITECLK"} ]] 
#set_false_path  -to   [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXIENCCLK"} ]] -from  [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXILITECLK"} ]] 

# AXI Lite clk to Dec clock
#set_false_path  -from [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXIDECCLK"} ]] -to    [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXILITECLK"} ]] 
#set_false_path  -to   [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXIDECCLK"} ]] -from  [get_clocks -of_objects [get_pins  -hierarchical -filter { NAME =~ "*vcu_*/inst/VCU*/PLVCUAXILITECLK"} ]] 

