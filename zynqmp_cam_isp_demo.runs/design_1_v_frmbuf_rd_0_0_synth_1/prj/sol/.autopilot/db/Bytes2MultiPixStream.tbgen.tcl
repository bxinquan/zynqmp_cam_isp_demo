set moduleName Bytes2MultiPixStream
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {Bytes2MultiPixStream}
set C_modelType { void 0 }
set C_modelArgList {
	{ bytePlanes1 int 64 regular {fifo 0 volatile }  }
	{ img int 30 regular {fifo 1 volatile }  }
	{ Height int 12 regular {fifo 0}  }
	{ Width int 12 regular {fifo 0}  }
	{ WidthInBytes int 15 regular {fifo 0}  }
	{ VideoFormat int 6 regular {fifo 0}  }
	{ width_c int 12 regular {fifo 1}  }
	{ height_c int 12 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bytePlanes1", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Height", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "Width", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInBytes", "interface" : "fifo", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "VideoFormat", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "width_c", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_c", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bytePlanes1_dout sc_in sc_lv 64 signal 0 } 
	{ bytePlanes1_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ bytePlanes1_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ bytePlanes1_empty_n sc_in sc_logic 1 signal 0 } 
	{ bytePlanes1_read sc_out sc_logic 1 signal 0 } 
	{ img_din sc_out sc_lv 30 signal 1 } 
	{ img_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ img_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ img_full_n sc_in sc_logic 1 signal 1 } 
	{ img_write sc_out sc_logic 1 signal 1 } 
	{ Height_dout sc_in sc_lv 12 signal 2 } 
	{ Height_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ Height_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ Height_empty_n sc_in sc_logic 1 signal 2 } 
	{ Height_read sc_out sc_logic 1 signal 2 } 
	{ Width_dout sc_in sc_lv 12 signal 3 } 
	{ Width_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ Width_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ Width_empty_n sc_in sc_logic 1 signal 3 } 
	{ Width_read sc_out sc_logic 1 signal 3 } 
	{ WidthInBytes_dout sc_in sc_lv 15 signal 4 } 
	{ WidthInBytes_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ WidthInBytes_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ WidthInBytes_empty_n sc_in sc_logic 1 signal 4 } 
	{ WidthInBytes_read sc_out sc_logic 1 signal 4 } 
	{ VideoFormat_dout sc_in sc_lv 6 signal 5 } 
	{ VideoFormat_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ VideoFormat_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ VideoFormat_empty_n sc_in sc_logic 1 signal 5 } 
	{ VideoFormat_read sc_out sc_logic 1 signal 5 } 
	{ width_c_din sc_out sc_lv 12 signal 6 } 
	{ width_c_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ width_c_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ width_c_full_n sc_in sc_logic 1 signal 6 } 
	{ width_c_write sc_out sc_logic 1 signal 6 } 
	{ height_c_din sc_out sc_lv 12 signal 7 } 
	{ height_c_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ height_c_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ height_c_full_n sc_in sc_logic 1 signal 7 } 
	{ height_c_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bytePlanes1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "dout" }} , 
 	{ "name": "bytePlanes1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "empty_n" }} , 
 	{ "name": "bytePlanes1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "read" }} , 
 	{ "name": "img_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "img", "role": "din" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "full_n" }} , 
 	{ "name": "img_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "write" }} , 
 	{ "name": "Height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Height", "role": "dout" }} , 
 	{ "name": "Height_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height", "role": "num_data_valid" }} , 
 	{ "name": "Height_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height", "role": "fifo_cap" }} , 
 	{ "name": "Height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height", "role": "empty_n" }} , 
 	{ "name": "Height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height", "role": "read" }} , 
 	{ "name": "Width_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Width", "role": "dout" }} , 
 	{ "name": "Width_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Width", "role": "num_data_valid" }} , 
 	{ "name": "Width_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Width", "role": "fifo_cap" }} , 
 	{ "name": "Width_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Width", "role": "empty_n" }} , 
 	{ "name": "Width_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Width", "role": "read" }} , 
 	{ "name": "WidthInBytes_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "dout" }} , 
 	{ "name": "WidthInBytes_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "num_data_valid" }} , 
 	{ "name": "WidthInBytes_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "fifo_cap" }} , 
 	{ "name": "WidthInBytes_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "empty_n" }} , 
 	{ "name": "WidthInBytes_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "read" }} , 
 	{ "name": "VideoFormat_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "VideoFormat", "role": "dout" }} , 
 	{ "name": "VideoFormat_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "VideoFormat", "role": "num_data_valid" }} , 
 	{ "name": "VideoFormat_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "VideoFormat", "role": "fifo_cap" }} , 
 	{ "name": "VideoFormat_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "VideoFormat", "role": "empty_n" }} , 
 	{ "name": "VideoFormat_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "VideoFormat", "role": "read" }} , 
 	{ "name": "width_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "width_c", "role": "din" }} , 
 	{ "name": "width_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "width_c", "role": "num_data_valid" }} , 
 	{ "name": "width_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "width_c", "role": "fifo_cap" }} , 
 	{ "name": "width_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_c", "role": "full_n" }} , 
 	{ "name": "width_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_c", "role": "write" }} , 
 	{ "name": "height_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "height_c", "role": "din" }} , 
 	{ "name": "height_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "height_c", "role": "num_data_valid" }} , 
 	{ "name": "height_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "height_c", "role": "fifo_cap" }} , 
 	{ "name": "height_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_c", "role": "full_n" }} , 
 	{ "name": "height_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5"],
		"CDFG" : "Bytes2MultiPixStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "283132803",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bytePlanes1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "960", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1_fu_234", "Port" : "bytePlanes1", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "1", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4_fu_218", "Port" : "bytePlanes1", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1_fu_234", "Port" : "img", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "1", "SubInstance" : "grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4_fu_218", "Port" : "img", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthInBytes", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "VideoFormat", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "VideoFormat_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_Y8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state22", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state22"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_Y10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state18", "ap_ST_fsm_state22"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4_fu_218", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4_fu_218.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1_fu_234", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "65538",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln1249_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln1252", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp125_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp125_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp125_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp125_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp125_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp125_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bytePlanes1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sub121_cast16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp125", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1262_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_12ns_4ns_3_16_seq_1_U41", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Bytes2MultiPixStream {
		bytePlanes1 {Type I LastRead 1 FirstWrite -1}
		img {Type O LastRead -1 FirstWrite 1}
		Height {Type I LastRead 0 FirstWrite -1}
		Width {Type I LastRead 0 FirstWrite -1}
		WidthInBytes {Type I LastRead 0 FirstWrite -1}
		VideoFormat {Type I LastRead 0 FirstWrite -1}
		width_c {Type O LastRead -1 FirstWrite 0}
		height_c {Type O LastRead -1 FirstWrite 0}}
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
		img {Type O LastRead -1 FirstWrite 1}}
	Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1 {
		trunc_ln1249_1 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1252 {Type I LastRead 0 FirstWrite -1}
		cmp125_6 {Type I LastRead 0 FirstWrite -1}
		cmp125_5 {Type I LastRead 0 FirstWrite -1}
		cmp125_4 {Type I LastRead 0 FirstWrite -1}
		cmp125_3 {Type I LastRead 0 FirstWrite -1}
		cmp125_2 {Type I LastRead 0 FirstWrite -1}
		cmp125_1 {Type I LastRead 0 FirstWrite -1}
		bytePlanes1 {Type I LastRead 1 FirstWrite -1}
		sub121_cast16 {Type I LastRead 0 FirstWrite -1}
		cmp125 {Type I LastRead 0 FirstWrite -1}
		img {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "283132803"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "283132803"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bytePlanes1 { ap_fifo {  { bytePlanes1_dout fifo_port_we 0 64 }  { bytePlanes1_num_data_valid fifo_status_num_data_valid 0 11 }  { bytePlanes1_fifo_cap fifo_update 0 11 }  { bytePlanes1_empty_n fifo_status 0 1 }  { bytePlanes1_read fifo_data 1 1 } } }
	img { ap_fifo {  { img_din fifo_port_we 1 30 }  { img_num_data_valid fifo_status_num_data_valid 0 2 }  { img_fifo_cap fifo_update 0 2 }  { img_full_n fifo_status 0 1 }  { img_write fifo_data 1 1 } } }
	Height { ap_fifo {  { Height_dout fifo_port_we 0 12 }  { Height_num_data_valid fifo_status_num_data_valid 0 2 }  { Height_fifo_cap fifo_update 0 2 }  { Height_empty_n fifo_status 0 1 }  { Height_read fifo_data 1 1 } } }
	Width { ap_fifo {  { Width_dout fifo_port_we 0 12 }  { Width_num_data_valid fifo_status_num_data_valid 0 3 }  { Width_fifo_cap fifo_update 0 3 }  { Width_empty_n fifo_status 0 1 }  { Width_read fifo_data 1 1 } } }
	WidthInBytes { ap_fifo {  { WidthInBytes_dout fifo_port_we 0 15 }  { WidthInBytes_num_data_valid fifo_status_num_data_valid 0 2 }  { WidthInBytes_fifo_cap fifo_update 0 2 }  { WidthInBytes_empty_n fifo_status 0 1 }  { WidthInBytes_read fifo_data 1 1 } } }
	VideoFormat { ap_fifo {  { VideoFormat_dout fifo_port_we 0 6 }  { VideoFormat_num_data_valid fifo_status_num_data_valid 0 3 }  { VideoFormat_fifo_cap fifo_update 0 3 }  { VideoFormat_empty_n fifo_status 0 1 }  { VideoFormat_read fifo_data 1 1 } } }
	width_c { ap_fifo {  { width_c_din fifo_port_we 1 12 }  { width_c_num_data_valid fifo_status_num_data_valid 0 2 }  { width_c_fifo_cap fifo_update 0 2 }  { width_c_full_n fifo_status 0 1 }  { width_c_write fifo_data 1 1 } } }
	height_c { ap_fifo {  { height_c_din fifo_port_we 1 12 }  { height_c_num_data_valid fifo_status_num_data_valid 0 2 }  { height_c_fifo_cap fifo_update 0 2 }  { height_c_full_n fifo_status 0 1 }  { height_c_write fifo_data 1 1 } } }
}
