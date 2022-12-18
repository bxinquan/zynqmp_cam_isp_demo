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
	{ pix_val_V_7 int 10 regular  }
	{ pix_val_V_6 int 10 regular  }
	{ pix_val_V_5 int 10 regular  }
	{ pix_val_V_4 int 10 regular  }
	{ trunc_ln1 int 11 regular  }
	{ bytePlanes1 int 256 regular {fifo 1 volatile }  }
	{ cmp169_5 int 1 regular  }
	{ cmp169_4 int 1 regular  }
	{ cmp169_3 int 1 regular  }
	{ cmp169_2 int 1 regular  }
	{ cmp169_1 int 1 regular  }
	{ sub166_cast73 int 11 regular  }
	{ cmp169 int 1 regular  }
	{ img int 120 regular {fifo 0 volatile }  }
	{ pix_val_V_15_out int 10 regular {pointer 1}  }
	{ pix_val_V_14_out int 10 regular {pointer 1}  }
	{ pix_val_V_13_out int 10 regular {pointer 1}  }
	{ pix_val_V_12_out int 10 regular {pointer 1}  }
	{ out_pix_V_11_out int 256 regular {pointer 2}  }
	{ raw_pix_V_5_out int 256 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pix_val_V_7", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_val_V_6", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_val_V_5", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "pix_val_V_4", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln1", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes1", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cmp169_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp169_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp169_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp169_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp169_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub166_cast73", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "cmp169", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 120, "direction" : "READONLY"} , 
 	{ "Name" : "pix_val_V_15_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_val_V_14_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_val_V_13_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pix_val_V_12_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_pix_V_11_out", "interface" : "wire", "bitwidth" : 256, "direction" : "READWRITE"} , 
 	{ "Name" : "raw_pix_V_5_out", "interface" : "wire", "bitwidth" : 256, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 120 signal 13 } 
	{ img_num_data_valid sc_in sc_lv 2 signal 13 } 
	{ img_fifo_cap sc_in sc_lv 2 signal 13 } 
	{ img_empty_n sc_in sc_logic 1 signal 13 } 
	{ img_read sc_out sc_logic 1 signal 13 } 
	{ pix_val_V_7 sc_in sc_lv 10 signal 0 } 
	{ pix_val_V_6 sc_in sc_lv 10 signal 1 } 
	{ pix_val_V_5 sc_in sc_lv 10 signal 2 } 
	{ pix_val_V_4 sc_in sc_lv 10 signal 3 } 
	{ trunc_ln1 sc_in sc_lv 11 signal 4 } 
	{ bytePlanes1_din sc_out sc_lv 256 signal 5 } 
	{ bytePlanes1_num_data_valid sc_in sc_lv 10 signal 5 } 
	{ bytePlanes1_fifo_cap sc_in sc_lv 10 signal 5 } 
	{ bytePlanes1_full_n sc_in sc_logic 1 signal 5 } 
	{ bytePlanes1_write sc_out sc_logic 1 signal 5 } 
	{ cmp169_5 sc_in sc_lv 1 signal 6 } 
	{ cmp169_4 sc_in sc_lv 1 signal 7 } 
	{ cmp169_3 sc_in sc_lv 1 signal 8 } 
	{ cmp169_2 sc_in sc_lv 1 signal 9 } 
	{ cmp169_1 sc_in sc_lv 1 signal 10 } 
	{ sub166_cast73 sc_in sc_lv 11 signal 11 } 
	{ cmp169 sc_in sc_lv 1 signal 12 } 
	{ pix_val_V_15_out sc_out sc_lv 10 signal 14 } 
	{ pix_val_V_15_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ pix_val_V_14_out sc_out sc_lv 10 signal 15 } 
	{ pix_val_V_14_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ pix_val_V_13_out sc_out sc_lv 10 signal 16 } 
	{ pix_val_V_13_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ pix_val_V_12_out sc_out sc_lv 10 signal 17 } 
	{ pix_val_V_12_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ out_pix_V_11_out_i sc_in sc_lv 256 signal 18 } 
	{ out_pix_V_11_out_o sc_out sc_lv 256 signal 18 } 
	{ out_pix_V_11_out_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ raw_pix_V_5_out_i sc_in sc_lv 256 signal 19 } 
	{ raw_pix_V_5_out_o sc_out sc_lv 256 signal 19 } 
	{ raw_pix_V_5_out_o_ap_vld sc_out sc_logic 1 outvld 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":120, "type": "signal", "bundle":{"name": "img", "role": "dout" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "empty_n" }} , 
 	{ "name": "img_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "read" }} , 
 	{ "name": "pix_val_V_7", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_val_V_7", "role": "default" }} , 
 	{ "name": "pix_val_V_6", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_val_V_6", "role": "default" }} , 
 	{ "name": "pix_val_V_5", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_val_V_5", "role": "default" }} , 
 	{ "name": "pix_val_V_4", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_val_V_4", "role": "default" }} , 
 	{ "name": "trunc_ln1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "trunc_ln1", "role": "default" }} , 
 	{ "name": "bytePlanes1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "din" }} , 
 	{ "name": "bytePlanes1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "full_n" }} , 
 	{ "name": "bytePlanes1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "write" }} , 
 	{ "name": "cmp169_5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp169_5", "role": "default" }} , 
 	{ "name": "cmp169_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp169_4", "role": "default" }} , 
 	{ "name": "cmp169_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp169_3", "role": "default" }} , 
 	{ "name": "cmp169_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp169_2", "role": "default" }} , 
 	{ "name": "cmp169_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp169_1", "role": "default" }} , 
 	{ "name": "sub166_cast73", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sub166_cast73", "role": "default" }} , 
 	{ "name": "cmp169", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp169", "role": "default" }} , 
 	{ "name": "pix_val_V_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_val_V_15_out", "role": "default" }} , 
 	{ "name": "pix_val_V_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_val_V_15_out", "role": "ap_vld" }} , 
 	{ "name": "pix_val_V_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_val_V_14_out", "role": "default" }} , 
 	{ "name": "pix_val_V_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_val_V_14_out", "role": "ap_vld" }} , 
 	{ "name": "pix_val_V_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_val_V_13_out", "role": "default" }} , 
 	{ "name": "pix_val_V_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_val_V_13_out", "role": "ap_vld" }} , 
 	{ "name": "pix_val_V_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pix_val_V_12_out", "role": "default" }} , 
 	{ "name": "pix_val_V_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pix_val_V_12_out", "role": "ap_vld" }} , 
 	{ "name": "out_pix_V_11_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "out_pix_V_11_out", "role": "i" }} , 
 	{ "name": "out_pix_V_11_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "out_pix_V_11_out", "role": "o" }} , 
 	{ "name": "out_pix_V_11_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_pix_V_11_out", "role": "o_ap_vld" }} , 
 	{ "name": "raw_pix_V_5_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "raw_pix_V_5_out", "role": "i" }} , 
 	{ "name": "raw_pix_V_5_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "raw_pix_V_5_out", "role": "o" }} , 
 	{ "name": "raw_pix_V_5_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "raw_pix_V_5_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12292",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pix_val_V_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmp169_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp169_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp169_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp169_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp169_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub166_cast73", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp169", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pix_val_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_pix_V_11_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "raw_pix_V_5_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_966_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4 {
		pix_val_V_7 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_6 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_5 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_4 {Type I LastRead 0 FirstWrite -1}
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		bytePlanes1 {Type O LastRead -1 FirstWrite 7}
		cmp169_5 {Type I LastRead 0 FirstWrite -1}
		cmp169_4 {Type I LastRead 0 FirstWrite -1}
		cmp169_3 {Type I LastRead 0 FirstWrite -1}
		cmp169_2 {Type I LastRead 0 FirstWrite -1}
		cmp169_1 {Type I LastRead 0 FirstWrite -1}
		sub166_cast73 {Type I LastRead 0 FirstWrite -1}
		cmp169 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 6 FirstWrite -1}
		pix_val_V_15_out {Type O LastRead -1 FirstWrite 2}
		pix_val_V_14_out {Type O LastRead -1 FirstWrite 2}
		pix_val_V_13_out {Type O LastRead -1 FirstWrite 2}
		pix_val_V_12_out {Type O LastRead -1 FirstWrite 2}
		out_pix_V_11_out {Type IO LastRead 7 FirstWrite 7}
		raw_pix_V_5_out {Type IO LastRead 7 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "12292"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "12292"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pix_val_V_7 { ap_none {  { pix_val_V_7 in_data 0 10 } } }
	pix_val_V_6 { ap_none {  { pix_val_V_6 in_data 0 10 } } }
	pix_val_V_5 { ap_none {  { pix_val_V_5 in_data 0 10 } } }
	pix_val_V_4 { ap_none {  { pix_val_V_4 in_data 0 10 } } }
	trunc_ln1 { ap_none {  { trunc_ln1 in_data 0 11 } } }
	bytePlanes1 { ap_fifo {  { bytePlanes1_din fifo_port_we 1 256 }  { bytePlanes1_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes1_fifo_cap fifo_update 0 10 }  { bytePlanes1_full_n fifo_status 0 1 }  { bytePlanes1_write fifo_data 1 1 } } }
	cmp169_5 { ap_none {  { cmp169_5 in_data 0 1 } } }
	cmp169_4 { ap_none {  { cmp169_4 in_data 0 1 } } }
	cmp169_3 { ap_none {  { cmp169_3 in_data 0 1 } } }
	cmp169_2 { ap_none {  { cmp169_2 in_data 0 1 } } }
	cmp169_1 { ap_none {  { cmp169_1 in_data 0 1 } } }
	sub166_cast73 { ap_none {  { sub166_cast73 in_data 0 11 } } }
	cmp169 { ap_none {  { cmp169 in_data 0 1 } } }
	img { ap_fifo {  { img_dout fifo_port_we 0 120 }  { img_num_data_valid fifo_status_num_data_valid 0 2 }  { img_fifo_cap fifo_update 0 2 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_data 1 1 } } }
	pix_val_V_15_out { ap_vld {  { pix_val_V_15_out out_data 1 10 }  { pix_val_V_15_out_ap_vld out_vld 1 1 } } }
	pix_val_V_14_out { ap_vld {  { pix_val_V_14_out out_data 1 10 }  { pix_val_V_14_out_ap_vld out_vld 1 1 } } }
	pix_val_V_13_out { ap_vld {  { pix_val_V_13_out out_data 1 10 }  { pix_val_V_13_out_ap_vld out_vld 1 1 } } }
	pix_val_V_12_out { ap_vld {  { pix_val_V_12_out out_data 1 10 }  { pix_val_V_12_out_ap_vld out_vld 1 1 } } }
	out_pix_V_11_out { ap_ovld {  { out_pix_V_11_out_i in_data 0 256 }  { out_pix_V_11_out_o out_data 1 256 }  { out_pix_V_11_out_o_ap_vld out_vld 1 1 } } }
	raw_pix_V_5_out { ap_ovld {  { raw_pix_V_5_out_i in_data 0 256 }  { raw_pix_V_5_out_o out_data 1 256 }  { raw_pix_V_5_out_o_ap_vld out_vld 1 1 } } }
}
