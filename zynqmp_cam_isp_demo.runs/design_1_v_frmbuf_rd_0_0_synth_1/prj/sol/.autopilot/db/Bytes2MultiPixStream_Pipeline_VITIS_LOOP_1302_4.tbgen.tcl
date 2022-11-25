set moduleName Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4
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
set C_modelName {Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln int 13 regular  }
	{ icmp_ln1292 int 1 regular  }
	{ cmp226_4 int 1 regular  }
	{ cmp226_3 int 1 regular  }
	{ cmp226_2 int 1 regular  }
	{ cmp226_1 int 1 regular  }
	{ bytePlanes1 int 64 regular {fifo 0 volatile }  }
	{ sub222_cast17 int 13 regular  }
	{ cmp226 int 1 regular  }
	{ img int 30 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln1292", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp226_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp226_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp226_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp226_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes1", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sub222_cast17", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "cmp226", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_din sc_out sc_lv 30 signal 9 } 
	{ img_num_data_valid sc_in sc_lv 2 signal 9 } 
	{ img_fifo_cap sc_in sc_lv 2 signal 9 } 
	{ img_full_n sc_in sc_logic 1 signal 9 } 
	{ img_write sc_out sc_logic 1 signal 9 } 
	{ trunc_ln sc_in sc_lv 13 signal 0 } 
	{ icmp_ln1292 sc_in sc_lv 1 signal 1 } 
	{ cmp226_4 sc_in sc_lv 1 signal 2 } 
	{ cmp226_3 sc_in sc_lv 1 signal 3 } 
	{ cmp226_2 sc_in sc_lv 1 signal 4 } 
	{ cmp226_1 sc_in sc_lv 1 signal 5 } 
	{ bytePlanes1_dout sc_in sc_lv 64 signal 6 } 
	{ bytePlanes1_num_data_valid sc_in sc_lv 11 signal 6 } 
	{ bytePlanes1_fifo_cap sc_in sc_lv 11 signal 6 } 
	{ bytePlanes1_empty_n sc_in sc_logic 1 signal 6 } 
	{ bytePlanes1_read sc_out sc_logic 1 signal 6 } 
	{ sub222_cast17 sc_in sc_lv 13 signal 7 } 
	{ cmp226 sc_in sc_lv 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "img", "role": "din" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "full_n" }} , 
 	{ "name": "img_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "write" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "icmp_ln1292", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln1292", "role": "default" }} , 
 	{ "name": "cmp226_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp226_4", "role": "default" }} , 
 	{ "name": "cmp226_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp226_3", "role": "default" }} , 
 	{ "name": "cmp226_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp226_2", "role": "default" }} , 
 	{ "name": "cmp226_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp226_1", "role": "default" }} , 
 	{ "name": "bytePlanes1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "dout" }} , 
 	{ "name": "bytePlanes1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "empty_n" }} , 
 	{ "name": "bytePlanes1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "read" }} , 
 	{ "name": "sub222_cast17", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "sub222_cast17", "role": "default" }} , 
 	{ "name": "cmp226", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp226", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "49154",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1292", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp226_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp226_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp226_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp226_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bytePlanes1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sub222_cast17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp226", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1302_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4 {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		icmp_ln1292 {Type I LastRead 0 FirstWrite -1}
		cmp226_4 {Type I LastRead 0 FirstWrite -1}
		cmp226_3 {Type I LastRead 0 FirstWrite -1}
		cmp226_2 {Type I LastRead 0 FirstWrite -1}
		cmp226_1 {Type I LastRead 0 FirstWrite -1}
		bytePlanes1 {Type I LastRead 1 FirstWrite -1}
		sub222_cast17 {Type I LastRead 0 FirstWrite -1}
		cmp226 {Type I LastRead 0 FirstWrite -1}
		img {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "49154"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "49154"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln { ap_none {  { trunc_ln in_data 0 13 } } }
	icmp_ln1292 { ap_none {  { icmp_ln1292 in_data 0 1 } } }
	cmp226_4 { ap_none {  { cmp226_4 in_data 0 1 } } }
	cmp226_3 { ap_none {  { cmp226_3 in_data 0 1 } } }
	cmp226_2 { ap_none {  { cmp226_2 in_data 0 1 } } }
	cmp226_1 { ap_none {  { cmp226_1 in_data 0 1 } } }
	bytePlanes1 { ap_fifo {  { bytePlanes1_dout fifo_port_we 0 64 }  { bytePlanes1_num_data_valid fifo_status_num_data_valid 0 11 }  { bytePlanes1_fifo_cap fifo_update 0 11 }  { bytePlanes1_empty_n fifo_status 0 1 }  { bytePlanes1_read fifo_data 1 1 } } }
	sub222_cast17 { ap_none {  { sub222_cast17 in_data 0 13 } } }
	cmp226 { ap_none {  { cmp226 in_data 0 1 } } }
	img { ap_fifo {  { img_din fifo_port_we 1 30 }  { img_num_data_valid fifo_status_num_data_valid 0 2 }  { img_fifo_cap fifo_update 0 2 }  { img_full_n fifo_status 0 1 }  { img_write fifo_data 1 1 } } }
}
