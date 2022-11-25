set moduleName MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1
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
set C_modelName {MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ sub_ln291 int 4 regular  }
	{ map_V_2_out int 5 regular {pointer 1}  }
	{ map_V_1_out int 5 regular {pointer 1}  }
	{ map_V_out int 5 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sub_ln291", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "map_V_2_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "map_V_1_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "map_V_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sub_ln291 sc_in sc_lv 4 signal 0 } 
	{ map_V_2_out sc_out sc_lv 5 signal 1 } 
	{ map_V_2_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ map_V_1_out sc_out sc_lv 5 signal 2 } 
	{ map_V_1_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ map_V_out sc_out sc_lv 5 signal 3 } 
	{ map_V_out_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sub_ln291", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sub_ln291", "role": "default" }} , 
 	{ "name": "map_V_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "map_V_2_out", "role": "default" }} , 
 	{ "name": "map_V_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "map_V_2_out", "role": "ap_vld" }} , 
 	{ "name": "map_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "map_V_1_out", "role": "default" }} , 
 	{ "name": "map_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "map_V_1_out", "role": "ap_vld" }} , 
 	{ "name": "map_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "map_V_out", "role": "default" }} , 
 	{ "name": "map_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "map_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_ln291", "Type" : "None", "Direction" : "I"},
			{"Name" : "map_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "map_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "map_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mapComp", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_289_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mapComp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1 {
		sub_ln291 {Type I LastRead 0 FirstWrite -1}
		map_V_2_out {Type O LastRead -1 FirstWrite 0}
		map_V_1_out {Type O LastRead -1 FirstWrite 0}
		map_V_out {Type O LastRead -1 FirstWrite 0}
		mapComp {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sub_ln291 { ap_none {  { sub_ln291 in_data 0 4 } } }
	map_V_2_out { ap_vld {  { map_V_2_out out_data 1 5 }  { map_V_2_out_ap_vld out_vld 1 1 } } }
	map_V_1_out { ap_vld {  { map_V_1_out out_data 1 5 }  { map_V_1_out_ap_vld out_vld 1 1 } } }
	map_V_out { ap_vld {  { map_V_out out_data 1 5 }  { map_V_out_ap_vld out_vld 1 1 } } }
}
