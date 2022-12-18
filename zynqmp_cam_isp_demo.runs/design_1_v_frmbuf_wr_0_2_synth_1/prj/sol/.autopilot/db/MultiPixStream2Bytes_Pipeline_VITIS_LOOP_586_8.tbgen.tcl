set moduleName MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8
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
set C_modelName {MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8}
set C_modelType { void 0 }
set C_modelArgList {
	{ pix_val_V_5 int 8 regular  }
	{ pix_val_V_4 int 8 regular  }
	{ trunc_ln571_1 int 13 regular  }
	{ bytePlanes_plane12 int 64 regular {fifo 1 volatile }  }
	{ bytePlanes_plane01 int 64 regular {fifo 1 volatile }  }
	{ brmerge153 int 1 regular  }
	{ icmp_ln576 int 1 regular  }
	{ cmp212_6 int 1 regular  }
	{ cmp212_5 int 1 regular  }
	{ cmp212_4 int 1 regular  }
	{ cmp212_3 int 1 regular  }
	{ cmp212_2 int 1 regular  }
	{ cmp212_1 int 1 regular  }
	{ sub209_cast107 int 13 regular  }
	{ cmp212 int 1 regular  }
	{ img int 24 regular {fifo 0 volatile }  }
	{ pix_val_V_11_out int 8 regular {pointer 1}  }
	{ pix_val_V_10_out int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pix_val_V_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pix_val_V_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln571_1", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes_plane12", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bytePlanes_plane01", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "brmerge153", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln576", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp212_6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp212_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp212_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp212_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp212_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp212_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub209_cast107", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "cmp212", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "pix_val_V_11_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_val_V_10_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 24 signal 15 } 
	{ img_num_data_valid sc_in sc_lv 2 signal 15 } 
	{ img_fifo_cap sc_in sc_lv 2 signal 15 } 
	{ img_empty_n sc_in sc_logic 1 signal 15 } 
	{ img_read sc_out sc_logic 1 signal 15 } 
	{ pix_val_V_5 sc_in sc_lv 8 signal 0 } 
	{ pix_val_V_4 sc_in sc_lv 8 signal 1 } 
	{ trunc_ln571_1 sc_in sc_lv 13 signal 2 } 
	{ bytePlanes_plane12_din sc_out sc_lv 64 signal 3 } 
	{ bytePlanes_plane12_num_data_valid sc_in sc_lv 11 signal 3 } 
	{ bytePlanes_plane12_fifo_cap sc_in sc_lv 11 signal 3 } 
	{ bytePlanes_plane12_full_n sc_in sc_logic 1 signal 3 } 
	{ bytePlanes_plane12_write sc_out sc_logic 1 signal 3 } 
	{ bytePlanes_plane01_din sc_out sc_lv 64 signal 4 } 
	{ bytePlanes_plane01_num_data_valid sc_in sc_lv 11 signal 4 } 
	{ bytePlanes_plane01_fifo_cap sc_in sc_lv 11 signal 4 } 
	{ bytePlanes_plane01_full_n sc_in sc_logic 1 signal 4 } 
	{ bytePlanes_plane01_write sc_out sc_logic 1 signal 4 } 
	{ brmerge153 sc_in sc_lv 1 signal 5 } 
	{ icmp_ln576 sc_in sc_lv 1 signal 6 } 
	{ cmp212_6 sc_in sc_lv 1 signal 7 } 
	{ cmp212_5 sc_in sc_lv 1 signal 8 } 
	{ cmp212_4 sc_in sc_lv 1 signal 9 } 
	{ cmp212_3 sc_in sc_lv 1 signal 10 } 
	{ cmp212_2 sc_in sc_lv 1 signal 11 } 
	{ cmp212_1 sc_in sc_lv 1 signal 12 } 
	{ sub209_cast107 sc_in sc_lv 13 signal 13 } 
	{ cmp212 sc_in sc_lv 1 signal 14 } 
	{ pix_val_V_11_out sc_out sc_lv 8 signal 16 } 
	{ pix_val_V_11_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ pix_val_V_10_out sc_out sc_lv 8 signal 17 } 
	{ pix_val_V_10_out_ap_vld sc_out sc_logic 1 outvld 17 } 
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
 	{ "name": "pix_val_V_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_val_V_5", "role": "default" }} , 
 	{ "name": "pix_val_V_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_val_V_4", "role": "default" }} , 
 	{ "name": "trunc_ln571_1", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "trunc_ln571_1", "role": "default" }} , 
 	{ "name": "bytePlanes_plane12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bytePlanes_plane12", "role": "din" }} , 
 	{ "name": "bytePlanes_plane12_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes_plane12", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane12_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes_plane12", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane12", "role": "full_n" }} , 
 	{ "name": "bytePlanes_plane12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane12", "role": "write" }} , 
 	{ "name": "bytePlanes_plane01_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "din" }} , 
 	{ "name": "bytePlanes_plane01_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane01_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane01_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "full_n" }} , 
 	{ "name": "bytePlanes_plane01_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "write" }} , 
 	{ "name": "brmerge153", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brmerge153", "role": "default" }} , 
 	{ "name": "icmp_ln576", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln576", "role": "default" }} , 
 	{ "name": "cmp212_6", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp212_6", "role": "default" }} , 
 	{ "name": "cmp212_5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp212_5", "role": "default" }} , 
 	{ "name": "cmp212_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp212_4", "role": "default" }} , 
 	{ "name": "cmp212_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp212_3", "role": "default" }} , 
 	{ "name": "cmp212_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp212_2", "role": "default" }} , 
 	{ "name": "cmp212_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp212_1", "role": "default" }} , 
 	{ "name": "sub209_cast107", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "sub209_cast107", "role": "default" }} , 
 	{ "name": "cmp212", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp212", "role": "default" }} , 
 	{ "name": "pix_val_V_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_val_V_11_out", "role": "default" }} , 
 	{ "name": "pix_val_V_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_val_V_11_out", "role": "ap_vld" }} , 
 	{ "name": "pix_val_V_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_val_V_10_out", "role": "default" }} , 
 	{ "name": "pix_val_V_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_val_V_10_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "65540",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pix_val_V_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln571_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes_plane12", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bytePlanes_plane01", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "brmerge153", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln576", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp212_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp212_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp212_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp212_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp212_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp212_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub209_cast107", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp212", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pix_val_V_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_586_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8 {
		pix_val_V_5 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_4 {Type I LastRead 0 FirstWrite -1}
		trunc_ln571_1 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane12 {Type O LastRead -1 FirstWrite 9}
		bytePlanes_plane01 {Type O LastRead -1 FirstWrite 9}
		brmerge153 {Type I LastRead 0 FirstWrite -1}
		icmp_ln576 {Type I LastRead 0 FirstWrite -1}
		cmp212_6 {Type I LastRead 0 FirstWrite -1}
		cmp212_5 {Type I LastRead 0 FirstWrite -1}
		cmp212_4 {Type I LastRead 0 FirstWrite -1}
		cmp212_3 {Type I LastRead 0 FirstWrite -1}
		cmp212_2 {Type I LastRead 0 FirstWrite -1}
		cmp212_1 {Type I LastRead 0 FirstWrite -1}
		sub209_cast107 {Type I LastRead 0 FirstWrite -1}
		cmp212 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 8 FirstWrite -1}
		pix_val_V_11_out {Type O LastRead -1 FirstWrite 2}
		pix_val_V_10_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "65540"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "65540"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pix_val_V_5 { ap_none {  { pix_val_V_5 in_data 0 8 } } }
	pix_val_V_4 { ap_none {  { pix_val_V_4 in_data 0 8 } } }
	trunc_ln571_1 { ap_none {  { trunc_ln571_1 in_data 0 13 } } }
	bytePlanes_plane12 { ap_fifo {  { bytePlanes_plane12_din fifo_port_we 1 64 }  { bytePlanes_plane12_num_data_valid fifo_status_num_data_valid 0 11 }  { bytePlanes_plane12_fifo_cap fifo_update 0 11 }  { bytePlanes_plane12_full_n fifo_status 0 1 }  { bytePlanes_plane12_write fifo_data 1 1 } } }
	bytePlanes_plane01 { ap_fifo {  { bytePlanes_plane01_din fifo_port_we 1 64 }  { bytePlanes_plane01_num_data_valid fifo_status_num_data_valid 0 11 }  { bytePlanes_plane01_fifo_cap fifo_update 0 11 }  { bytePlanes_plane01_full_n fifo_status 0 1 }  { bytePlanes_plane01_write fifo_data 1 1 } } }
	brmerge153 { ap_none {  { brmerge153 in_data 0 1 } } }
	icmp_ln576 { ap_none {  { icmp_ln576 in_data 0 1 } } }
	cmp212_6 { ap_none {  { cmp212_6 in_data 0 1 } } }
	cmp212_5 { ap_none {  { cmp212_5 in_data 0 1 } } }
	cmp212_4 { ap_none {  { cmp212_4 in_data 0 1 } } }
	cmp212_3 { ap_none {  { cmp212_3 in_data 0 1 } } }
	cmp212_2 { ap_none {  { cmp212_2 in_data 0 1 } } }
	cmp212_1 { ap_none {  { cmp212_1 in_data 0 1 } } }
	sub209_cast107 { ap_none {  { sub209_cast107 in_data 0 13 } } }
	cmp212 { ap_none {  { cmp212 in_data 0 1 } } }
	img { ap_fifo {  { img_dout fifo_port_we 0 24 }  { img_num_data_valid fifo_status_num_data_valid 0 2 }  { img_fifo_cap fifo_update 0 2 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_data 1 1 } } }
	pix_val_V_11_out { ap_vld {  { pix_val_V_11_out out_data 1 8 }  { pix_val_V_11_out_ap_vld out_vld 1 1 } } }
	pix_val_V_10_out { ap_vld {  { pix_val_V_10_out out_data 1 8 }  { pix_val_V_10_out_ap_vld out_vld 1 1 } } }
}
