set moduleName MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1
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
set C_modelName {MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_0_3_0_0_0130_795_lcssa125 int 10 regular  }
	{ p_0_0_0_0_0124_767_lcssa116 int 10 regular  }
	{ trunc_ln915_1 int 12 regular  }
	{ bytePlanes1 int 128 regular {fifo 1 volatile }  }
	{ icmp_ln920 int 1 regular  }
	{ cmp103_6 int 1 regular  }
	{ cmp103_5 int 1 regular  }
	{ cmp103_4 int 1 regular  }
	{ cmp103_3 int 1 regular  }
	{ cmp103_2 int 1 regular  }
	{ cmp103_1 int 1 regular  }
	{ sub100_cast43 int 12 regular  }
	{ cmp103 int 1 regular  }
	{ img int 60 regular {fifo 0 volatile }  }
	{ p_0_3_0_0_0130_794_out int 10 regular {pointer 1}  }
	{ p_0_0_0_0_0124_766_out int 10 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_0_3_0_0_0130_795_lcssa125", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_0_0_0124_767_lcssa116", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln915_1", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "icmp_ln920", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp103_6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp103_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp103_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp103_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp103_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp103_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub100_cast43", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "cmp103", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_3_0_0_0130_794_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_0_0_0124_766_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 60 signal 13 } 
	{ img_num_data_valid sc_in sc_lv 2 signal 13 } 
	{ img_fifo_cap sc_in sc_lv 2 signal 13 } 
	{ img_empty_n sc_in sc_logic 1 signal 13 } 
	{ img_read sc_out sc_logic 1 signal 13 } 
	{ p_0_3_0_0_0130_795_lcssa125 sc_in sc_lv 10 signal 0 } 
	{ p_0_0_0_0_0124_767_lcssa116 sc_in sc_lv 10 signal 1 } 
	{ trunc_ln915_1 sc_in sc_lv 12 signal 2 } 
	{ bytePlanes1_din sc_out sc_lv 128 signal 3 } 
	{ bytePlanes1_num_data_valid sc_in sc_lv 10 signal 3 } 
	{ bytePlanes1_fifo_cap sc_in sc_lv 10 signal 3 } 
	{ bytePlanes1_full_n sc_in sc_logic 1 signal 3 } 
	{ bytePlanes1_write sc_out sc_logic 1 signal 3 } 
	{ icmp_ln920 sc_in sc_lv 1 signal 4 } 
	{ cmp103_6 sc_in sc_lv 1 signal 5 } 
	{ cmp103_5 sc_in sc_lv 1 signal 6 } 
	{ cmp103_4 sc_in sc_lv 1 signal 7 } 
	{ cmp103_3 sc_in sc_lv 1 signal 8 } 
	{ cmp103_2 sc_in sc_lv 1 signal 9 } 
	{ cmp103_1 sc_in sc_lv 1 signal 10 } 
	{ sub100_cast43 sc_in sc_lv 12 signal 11 } 
	{ cmp103 sc_in sc_lv 1 signal 12 } 
	{ p_0_3_0_0_0130_794_out sc_out sc_lv 10 signal 14 } 
	{ p_0_3_0_0_0130_794_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ p_0_0_0_0_0124_766_out sc_out sc_lv 10 signal 15 } 
	{ p_0_0_0_0_0124_766_out_ap_vld sc_out sc_logic 1 outvld 15 } 
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
 	{ "name": "p_0_3_0_0_0130_795_lcssa125", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_3_0_0_0130_795_lcssa125", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_0124_767_lcssa116", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0124_767_lcssa116", "role": "default" }} , 
 	{ "name": "trunc_ln915_1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "trunc_ln915_1", "role": "default" }} , 
 	{ "name": "bytePlanes1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "din" }} , 
 	{ "name": "bytePlanes1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "full_n" }} , 
 	{ "name": "bytePlanes1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "write" }} , 
 	{ "name": "icmp_ln920", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln920", "role": "default" }} , 
 	{ "name": "cmp103_6", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp103_6", "role": "default" }} , 
 	{ "name": "cmp103_5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp103_5", "role": "default" }} , 
 	{ "name": "cmp103_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp103_4", "role": "default" }} , 
 	{ "name": "cmp103_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp103_3", "role": "default" }} , 
 	{ "name": "cmp103_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp103_2", "role": "default" }} , 
 	{ "name": "cmp103_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp103_1", "role": "default" }} , 
 	{ "name": "sub100_cast43", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sub100_cast43", "role": "default" }} , 
 	{ "name": "cmp103", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp103", "role": "default" }} , 
 	{ "name": "p_0_3_0_0_0130_794_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_3_0_0_0130_794_out", "role": "default" }} , 
 	{ "name": "p_0_3_0_0_0130_794_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_3_0_0_0130_794_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0124_766_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_0_0_0_0_0124_766_out", "role": "default" }} , 
 	{ "name": "p_0_0_0_0_0124_766_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0124_766_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "32771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_0_3_0_0_0130_795_lcssa125", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_0124_767_lcssa116", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln915_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_ln920", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp103_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp103_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp103_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp103_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp103_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp103_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub100_cast43", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp103", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_0_3_0_0_0130_794_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_0124_766_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_930_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1 {
		p_0_3_0_0_0130_795_lcssa125 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_0124_767_lcssa116 {Type I LastRead 0 FirstWrite -1}
		trunc_ln915_1 {Type I LastRead 0 FirstWrite -1}
		bytePlanes1 {Type O LastRead -1 FirstWrite 8}
		icmp_ln920 {Type I LastRead 0 FirstWrite -1}
		cmp103_6 {Type I LastRead 0 FirstWrite -1}
		cmp103_5 {Type I LastRead 0 FirstWrite -1}
		cmp103_4 {Type I LastRead 0 FirstWrite -1}
		cmp103_3 {Type I LastRead 0 FirstWrite -1}
		cmp103_2 {Type I LastRead 0 FirstWrite -1}
		cmp103_1 {Type I LastRead 0 FirstWrite -1}
		sub100_cast43 {Type I LastRead 0 FirstWrite -1}
		cmp103 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 8 FirstWrite -1}
		p_0_3_0_0_0130_794_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0_0_0124_766_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "32771"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "32771"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_0_3_0_0_0130_795_lcssa125 { ap_none {  { p_0_3_0_0_0130_795_lcssa125 in_data 0 10 } } }
	p_0_0_0_0_0124_767_lcssa116 { ap_none {  { p_0_0_0_0_0124_767_lcssa116 in_data 0 10 } } }
	trunc_ln915_1 { ap_none {  { trunc_ln915_1 in_data 0 12 } } }
	bytePlanes1 { ap_fifo {  { bytePlanes1_din fifo_port_we 1 128 }  { bytePlanes1_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes1_fifo_cap fifo_update 0 10 }  { bytePlanes1_full_n fifo_status 0 1 }  { bytePlanes1_write fifo_data 1 1 } } }
	icmp_ln920 { ap_none {  { icmp_ln920 in_data 0 1 } } }
	cmp103_6 { ap_none {  { cmp103_6 in_data 0 1 } } }
	cmp103_5 { ap_none {  { cmp103_5 in_data 0 1 } } }
	cmp103_4 { ap_none {  { cmp103_4 in_data 0 1 } } }
	cmp103_3 { ap_none {  { cmp103_3 in_data 0 1 } } }
	cmp103_2 { ap_none {  { cmp103_2 in_data 0 1 } } }
	cmp103_1 { ap_none {  { cmp103_1 in_data 0 1 } } }
	sub100_cast43 { ap_none {  { sub100_cast43 in_data 0 12 } } }
	cmp103 { ap_none {  { cmp103 in_data 0 1 } } }
	img { ap_fifo {  { img_dout fifo_port_we 0 60 }  { img_num_data_valid fifo_status_num_data_valid 0 2 }  { img_fifo_cap fifo_update 0 2 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_data 1 1 } } }
	p_0_3_0_0_0130_794_out { ap_vld {  { p_0_3_0_0_0130_794_out out_data 1 10 }  { p_0_3_0_0_0130_794_out_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0124_766_out { ap_vld {  { p_0_0_0_0_0124_766_out out_data 1 10 }  { p_0_0_0_0_0124_766_out_ap_vld out_vld 1 1 } } }
}
