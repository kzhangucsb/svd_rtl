# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "COL_A_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COL_U_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_PARA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PROD_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.COL_A_MAX { PARAM_VALUE.COL_A_MAX } {
	# Procedure called to update COL_A_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COL_A_MAX { PARAM_VALUE.COL_A_MAX } {
	# Procedure called to validate COL_A_MAX
	return true
}

proc update_PARAM_VALUE.COL_U_MAX { PARAM_VALUE.COL_U_MAX } {
	# Procedure called to update COL_U_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COL_U_MAX { PARAM_VALUE.COL_U_MAX } {
	# Procedure called to validate COL_U_MAX
	return true
}

proc update_PARAM_VALUE.DATA_PARA { PARAM_VALUE.DATA_PARA } {
	# Procedure called to update DATA_PARA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_PARA { PARAM_VALUE.DATA_PARA } {
	# Procedure called to validate DATA_PARA
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.PROD_WIDTH { PARAM_VALUE.PROD_WIDTH } {
	# Procedure called to update PROD_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PROD_WIDTH { PARAM_VALUE.PROD_WIDTH } {
	# Procedure called to validate PROD_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.PROD_WIDTH { MODELPARAM_VALUE.PROD_WIDTH PARAM_VALUE.PROD_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PROD_WIDTH}] ${MODELPARAM_VALUE.PROD_WIDTH}
}

proc update_MODELPARAM_VALUE.DATA_PARA { MODELPARAM_VALUE.DATA_PARA PARAM_VALUE.DATA_PARA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_PARA}] ${MODELPARAM_VALUE.DATA_PARA}
}

proc update_MODELPARAM_VALUE.COL_A_MAX { MODELPARAM_VALUE.COL_A_MAX PARAM_VALUE.COL_A_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COL_A_MAX}] ${MODELPARAM_VALUE.COL_A_MAX}
}

proc update_MODELPARAM_VALUE.COL_U_MAX { MODELPARAM_VALUE.COL_U_MAX PARAM_VALUE.COL_U_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COL_U_MAX}] ${MODELPARAM_VALUE.COL_U_MAX}
}

