set moduleName MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_0_3_0_0_0_5159_lcssa185 int 10 regular  }
	{ p_0_0_0_0_0_5138_lcssa176 int 10 regular  }
	{ trunc_ln int 12 regular  }
	{ bytePlanes1 int 128 regular {fifo 1 volatile }  }
	{ cmp169_5 int 1 regular  }
	{ cmp169_4 int 1 regular  }
	{ cmp169_3 int 1 regular  }
	{ cmp169_2 int 1 regular  }
	{ cmp169_1 int 1 regular  }
	{ sub166_cast44 int 12 regular  }
	{ cmp169 int 1 regular  }
	{ img int 60 regular {fifo 0 volatile }  }
	{ p_0_3_0_0_0_5158_out int 10 regular {pointer 1}  }
	{ p_0_0_0_0_0_5137_out int 10 regular {pointer 1}  }
	{ out_pix_V_7_out int 128 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_0_3_0_0_0_5159_lcssa185", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0_0_0_5138_lcssa176", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cmp169_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp169_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp169_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp169_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp169_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub166_cast44", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "cmp169", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_3_0_0_0_5158_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0_0_0_5137_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_pix_V_7_out", "interface" : "wire", "bitwidth" : 128, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 60 signal 11 } 
	{ img_num_data_valid sc_in sc_lv 2 signal 11 } 
	{ img_fifo_cap sc_in sc_lv 2 signal 11 } 
	{ img_empty_n sc_in sc_logic 1 signal 11 } 
	{ img_read sc_out sc_logic 1 signal 11 } 
	{ p_0_3_0_0_0_5159_lcssa185 sc_in sc_lv 10 signal 0 } 
	{ p_0_0_0_0_0_5138_lcssa176 sc_in sc_lv 10 signal 1 } 
	{ trunc_ln sc_in sc_lv 12 signal 2 } 
	{ bytePlanes1_din sc_out sc_lv 128 signal 3 } 
	{ bytePlanes1_num_data_valid sc_in sc_lv 10 signal 3 } 
	{ bytePlanes1_fifo_cap sc_in sc_lv 10 signal 3 } 
	{ bytePlanes1_full_n sc_in sc_logic 1 signal 3 } 
	{ bytePlanes1_write sc_out sc_logic 1 signal 3 } 
	{ cmp169_5 sc_in sc_lv 1 signal 4 } 
	{ cmp169_4 sc_in sc_lv 1 signal 5 } 
	{ cmp169_3 sc_in sc_lv 1 signal 6 } 
	{ cmp169_2 sc_in sc_lv 1 signal 7 } 
	{ cmp169_1 sc_in sc_lv 1 signal 8 } 
	{ sub166_cast44 sc_in sc_lv 12 signal 9 } 
	{ cmp169 sc_in sc_lv 1 signal 10 } 
	{ p_0_3_0_0_0_5158_out sc_out sc_lv 10 signal 12 } 
	{ p_0_3_0_0_0_5158_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ p_0_0_0_0_0_5137_out sc_out sc_lv 10 signal 13 } 
	{ p_0_0_0_0_0_5137_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ out_pix_V_7_out_i sc_in sc_lv 128 signal 14 } 
	{ out_pix_V_7_out_o sc_out sc_lv 128 signal 14 } 
	{ out_pix_V_7_out_o_ap_vld sc_out sc_logic 1 outvld 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "img", "role": "dout" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "empty_n" }} , 
 	{ "name": "img_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "read" }} , 
 	{ "name": "p_0_3_0_0_0_5159_lcssa185", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_3_0_0_0_5159_lcssa185", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_0_5138_lcssa176", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0_5138_lcssa176", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "bytePlanes1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "din" }} , 
 	{ "name": "bytePlanes1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "full_n" }} , 
 	{ "name": "bytePlanes1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "write" }} , 
 	{ "name": "cmp169_5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp169_5", "role": "default" }} , 
 	{ "name": "cmp169_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp169_4", "role": "default" }} , 
 	{ "name": "cmp169_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp169_3", "role": "default" }} , 
 	{ "name": "cmp169_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp169_2", "role": "default" }} , 
 	{ "name": "cmp169_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp169_1", "role": "default" }} , 
 	{ "name": "sub166_cast44", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sub166_cast44", "role": "default" }} , 
 	{ "name": "cmp169", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp169", "role": "default" }} , 
 	{ "name": "p_0_3_0_0_0_5158_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_3_0_0_0_5158_out", "role": "default" }} , 
 	{ "name": "p_0_3_0_0_0_5158_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_3_0_0_0_5158_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0_5137_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0_5137_out", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_0_5137_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0_5137_out", "role": "ap_vld" }} , 
 	{ "name": "out_pix_V_7_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "out_pix_V_7_out", "role": "i" }} , 
 	{ "name": "out_pix_V_7_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "out_pix_V_7_out", "role": "o" }} , 
 	{ "name": "out_pix_V_7_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_pix_V_7_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "24579",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_0_3_0_0_0_5159_lcssa185", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_0_5138_lcssa176", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmp169_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp169_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp169_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp169_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp169_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub166_cast44", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp169", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_0_3_0_0_0_5158_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_0_5137_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_pix_V_7_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_966_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4 {
		p_0_3_0_0_0_5159_lcssa185 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_0_5138_lcssa176 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		bytePlanes1 {Type O LastRead -1 FirstWrite 6}
		cmp169_5 {Type I LastRead 0 FirstWrite -1}
		cmp169_4 {Type I LastRead 0 FirstWrite -1}
		cmp169_3 {Type I LastRead 0 FirstWrite -1}
		cmp169_2 {Type I LastRead 0 FirstWrite -1}
		cmp169_1 {Type I LastRead 0 FirstWrite -1}
		sub166_cast44 {Type I LastRead 0 FirstWrite -1}
		cmp169 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 6 FirstWrite -1}
		p_0_3_0_0_0_5158_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0_0_0_5137_out {Type O LastRead -1 FirstWrite 1}
		out_pix_V_7_out {Type IO LastRead 6 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "24579"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "24579"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_0_3_0_0_0_5159_lcssa185 { ap_none {  { p_0_3_0_0_0_5159_lcssa185 in_data 0 10 } } }
	p_0_0_0_0_0_5138_lcssa176 { ap_none {  { p_0_0_0_0_0_5138_lcssa176 in_data 0 10 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 12 } } }
	bytePlanes1 { ap_fifo {  { bytePlanes1_din fifo_port_we 1 128 }  { bytePlanes1_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes1_fifo_cap fifo_update 0 10 }  { bytePlanes1_full_n fifo_status 0 1 }  { bytePlanes1_write fifo_data 1 1 } } }
	cmp169_5 { ap_none {  { cmp169_5 in_data 0 1 } } }
	cmp169_4 { ap_none {  { cmp169_4 in_data 0 1 } } }
	cmp169_3 { ap_none {  { cmp169_3 in_data 0 1 } } }
	cmp169_2 { ap_none {  { cmp169_2 in_data 0 1 } } }
	cmp169_1 { ap_none {  { cmp169_1 in_data 0 1 } } }
	sub166_cast44 { ap_none {  { sub166_cast44 in_data 0 12 } } }
	cmp169 { ap_none {  { cmp169 in_data 0 1 } } }
	img { ap_fifo {  { img_dout fifo_port_we 0 60 }  { img_num_data_valid fifo_status_num_data_valid 0 2 }  { img_fifo_cap fifo_update 0 2 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_data 1 1 } } }
	p_0_3_0_0_0_5158_out { ap_vld {  { p_0_3_0_0_0_5158_out out_data 1 10 }  { p_0_3_0_0_0_5158_out_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0_5137_out { ap_vld {  { p_0_0_0_0_0_5137_out out_data 1 10 }  { p_0_0_0_0_0_5137_out_ap_vld out_vld 1 1 } } }
	out_pix_V_7_out { ap_ovld {  { out_pix_V_7_out_i in_data 0 128 }  { out_pix_V_7_out_o out_data 1 128 }  { out_pix_V_7_out_o_ap_vld out_vld 1 1 } } }
}
