set moduleName MultiPixStream2Bytes_Pipeline_VITIS_LOOP_511_1
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
set C_modelName {MultiPixStream2Bytes_Pipeline_VITIS_LOOP_511_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ pix_val_V_1 int 8 regular  }
	{ pix_val_V int 8 regular  }
	{ trunc_ln496_1 int 13 regular  }
	{ bytePlanes_plane01 int 64 regular {fifo 1 volatile }  }
	{ icmp_ln501 int 1 regular  }
	{ cmp43_2 int 1 regular  }
	{ cmp43_1 int 1 regular  }
	{ sub40_cast105 int 13 regular  }
	{ cmp43 int 1 regular  }
	{ img int 24 regular {fifo 0 volatile }  }
	{ pix_val_V_7_out int 8 regular {pointer 1}  }
	{ pix_val_V_6_out int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pix_val_V_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pix_val_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln496_1", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes_plane01", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "icmp_ln501", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp43_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp43_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub40_cast105", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "cmp43", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "pix_val_V_7_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_val_V_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 24 signal 9 } 
	{ img_num_data_valid sc_in sc_lv 2 signal 9 } 
	{ img_fifo_cap sc_in sc_lv 2 signal 9 } 
	{ img_empty_n sc_in sc_logic 1 signal 9 } 
	{ img_read sc_out sc_logic 1 signal 9 } 
	{ pix_val_V_1 sc_in sc_lv 8 signal 0 } 
	{ pix_val_V sc_in sc_lv 8 signal 1 } 
	{ trunc_ln496_1 sc_in sc_lv 13 signal 2 } 
	{ bytePlanes_plane01_din sc_out sc_lv 64 signal 3 } 
	{ bytePlanes_plane01_num_data_valid sc_in sc_lv 11 signal 3 } 
	{ bytePlanes_plane01_fifo_cap sc_in sc_lv 11 signal 3 } 
	{ bytePlanes_plane01_full_n sc_in sc_logic 1 signal 3 } 
	{ bytePlanes_plane01_write sc_out sc_logic 1 signal 3 } 
	{ icmp_ln501 sc_in sc_lv 1 signal 4 } 
	{ cmp43_2 sc_in sc_lv 1 signal 5 } 
	{ cmp43_1 sc_in sc_lv 1 signal 6 } 
	{ sub40_cast105 sc_in sc_lv 13 signal 7 } 
	{ cmp43 sc_in sc_lv 1 signal 8 } 
	{ pix_val_V_7_out sc_out sc_lv 8 signal 10 } 
	{ pix_val_V_7_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ pix_val_V_6_out sc_out sc_lv 8 signal 11 } 
	{ pix_val_V_6_out_ap_vld sc_out sc_logic 1 outvld 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "img", "role": "dout" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "empty_n" }} , 
 	{ "name": "img_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "read" }} , 
 	{ "name": "pix_val_V_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_val_V_1", "role": "default" }} , 
 	{ "name": "pix_val_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_val_V", "role": "default" }} , 
 	{ "name": "trunc_ln496_1", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "trunc_ln496_1", "role": "default" }} , 
 	{ "name": "bytePlanes_plane01_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "din" }} , 
 	{ "name": "bytePlanes_plane01_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane01_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane01_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "full_n" }} , 
 	{ "name": "bytePlanes_plane01_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "write" }} , 
 	{ "name": "icmp_ln501", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln501", "role": "default" }} , 
 	{ "name": "cmp43_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp43_2", "role": "default" }} , 
 	{ "name": "cmp43_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp43_1", "role": "default" }} , 
 	{ "name": "sub40_cast105", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "sub40_cast105", "role": "default" }} , 
 	{ "name": "cmp43", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp43", "role": "default" }} , 
 	{ "name": "pix_val_V_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_val_V_7_out", "role": "default" }} , 
 	{ "name": "pix_val_V_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_val_V_7_out", "role": "ap_vld" }} , 
 	{ "name": "pix_val_V_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_val_V_6_out", "role": "default" }} , 
 	{ "name": "pix_val_V_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_val_V_6_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_511_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "32772",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pix_val_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln496_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes_plane01", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_ln501", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp43_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp43_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub40_cast105", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp43", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pix_val_V_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_511_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_511_1 {
		pix_val_V_1 {Type I LastRead 0 FirstWrite -1}
		pix_val_V {Type I LastRead 0 FirstWrite -1}
		trunc_ln496_1 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane01 {Type O LastRead -1 FirstWrite 5}
		icmp_ln501 {Type I LastRead 0 FirstWrite -1}
		cmp43_2 {Type I LastRead 0 FirstWrite -1}
		cmp43_1 {Type I LastRead 0 FirstWrite -1}
		sub40_cast105 {Type I LastRead 0 FirstWrite -1}
		cmp43 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 4 FirstWrite -1}
		pix_val_V_7_out {Type O LastRead -1 FirstWrite 2}
		pix_val_V_6_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "32772"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "32772"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pix_val_V_1 { ap_none {  { pix_val_V_1 in_data 0 8 } } }
	pix_val_V { ap_none {  { pix_val_V in_data 0 8 } } }
	trunc_ln496_1 { ap_none {  { trunc_ln496_1 in_data 0 13 } } }
	bytePlanes_plane01 { ap_fifo {  { bytePlanes_plane01_din fifo_port_we 1 64 }  { bytePlanes_plane01_num_data_valid fifo_status_num_data_valid 0 11 }  { bytePlanes_plane01_fifo_cap fifo_update 0 11 }  { bytePlanes_plane01_full_n fifo_status 0 1 }  { bytePlanes_plane01_write fifo_data 1 1 } } }
	icmp_ln501 { ap_none {  { icmp_ln501 in_data 0 1 } } }
	cmp43_2 { ap_none {  { cmp43_2 in_data 0 1 } } }
	cmp43_1 { ap_none {  { cmp43_1 in_data 0 1 } } }
	sub40_cast105 { ap_none {  { sub40_cast105 in_data 0 13 } } }
	cmp43 { ap_none {  { cmp43 in_data 0 1 } } }
	img { ap_fifo {  { img_dout fifo_port_we 0 24 }  { img_num_data_valid fifo_status_num_data_valid 0 2 }  { img_fifo_cap fifo_update 0 2 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_data 1 1 } } }
	pix_val_V_7_out { ap_vld {  { pix_val_V_7_out out_data 1 8 }  { pix_val_V_7_out_ap_vld out_vld 1 1 } } }
	pix_val_V_6_out { ap_vld {  { pix_val_V_6_out out_data 1 8 }  { pix_val_V_6_out_ap_vld out_vld 1 1 } } }
}
