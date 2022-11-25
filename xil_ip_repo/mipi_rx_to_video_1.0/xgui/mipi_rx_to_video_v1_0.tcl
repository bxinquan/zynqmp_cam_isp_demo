# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LANES_NUM" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "DATA_BITS" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "DATA_DELAY_INSIDE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_DELAY_NTAPS" -parent ${Page_0}
  set HS_SETTLE_DELAY [ipgui::add_param $IPINST -name "HS_SETTLE_DELAY" -parent ${Page_0}]
  set_property tooltip {Hs Settle (Unit:clk_byte)} ${HS_SETTLE_DELAY}


}

proc update_PARAM_VALUE.DATA_BITS { PARAM_VALUE.DATA_BITS } {
	# Procedure called to update DATA_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_BITS { PARAM_VALUE.DATA_BITS } {
	# Procedure called to validate DATA_BITS
	return true
}

proc update_PARAM_VALUE.DATA_DELAY_INSIDE { PARAM_VALUE.DATA_DELAY_INSIDE } {
	# Procedure called to update DATA_DELAY_INSIDE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_DELAY_INSIDE { PARAM_VALUE.DATA_DELAY_INSIDE } {
	# Procedure called to validate DATA_DELAY_INSIDE
	return true
}

proc update_PARAM_VALUE.DATA_DELAY_NTAPS { PARAM_VALUE.DATA_DELAY_NTAPS } {
	# Procedure called to update DATA_DELAY_NTAPS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_DELAY_NTAPS { PARAM_VALUE.DATA_DELAY_NTAPS } {
	# Procedure called to validate DATA_DELAY_NTAPS
	return true
}

proc update_PARAM_VALUE.HS_SETTLE_DELAY { PARAM_VALUE.HS_SETTLE_DELAY } {
	# Procedure called to update HS_SETTLE_DELAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HS_SETTLE_DELAY { PARAM_VALUE.HS_SETTLE_DELAY } {
	# Procedure called to validate HS_SETTLE_DELAY
	return true
}

proc update_PARAM_VALUE.LANES_NUM { PARAM_VALUE.LANES_NUM } {
	# Procedure called to update LANES_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LANES_NUM { PARAM_VALUE.LANES_NUM } {
	# Procedure called to validate LANES_NUM
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.LANES_NUM { MODELPARAM_VALUE.LANES_NUM PARAM_VALUE.LANES_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LANES_NUM}] ${MODELPARAM_VALUE.LANES_NUM}
}

proc update_MODELPARAM_VALUE.DATA_BITS { MODELPARAM_VALUE.DATA_BITS PARAM_VALUE.DATA_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_BITS}] ${MODELPARAM_VALUE.DATA_BITS}
}

proc update_MODELPARAM_VALUE.DATA_DELAY_INSIDE { MODELPARAM_VALUE.DATA_DELAY_INSIDE PARAM_VALUE.DATA_DELAY_INSIDE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_DELAY_INSIDE}] ${MODELPARAM_VALUE.DATA_DELAY_INSIDE}
}

proc update_MODELPARAM_VALUE.DATA_DELAY_NTAPS { MODELPARAM_VALUE.DATA_DELAY_NTAPS PARAM_VALUE.DATA_DELAY_NTAPS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_DELAY_NTAPS}] ${MODELPARAM_VALUE.DATA_DELAY_NTAPS}
}

proc update_MODELPARAM_VALUE.HS_SETTLE_DELAY { MODELPARAM_VALUE.HS_SETTLE_DELAY PARAM_VALUE.HS_SETTLE_DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HS_SETTLE_DELAY}] ${MODELPARAM_VALUE.HS_SETTLE_DELAY}
}

