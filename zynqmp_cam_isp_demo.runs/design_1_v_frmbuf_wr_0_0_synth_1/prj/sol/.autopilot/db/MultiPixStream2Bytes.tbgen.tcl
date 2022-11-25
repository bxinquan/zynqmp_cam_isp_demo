set moduleName MultiPixStream2Bytes
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
set C_modelName {MultiPixStream2Bytes}
set C_modelType { void 0 }
set C_modelArgList {
	{ img int 120 regular {fifo 0 volatile }  }
	{ bytePlanes1 int 256 regular {fifo 1 volatile }  }
	{ Height int 12 regular {fifo 0}  }
	{ WidthInPix int 13 regular {fifo 0}  }
	{ WidthInBytes int 15 regular {fifo 0}  }
	{ VideoFormat int 6 regular {fifo 0}  }
	{ WidthInBytes_c int 15 regular {fifo 1}  }
	{ height_c int 12 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 120, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes1", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Height", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInPix", "interface" : "fifo", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInBytes", "interface" : "fifo", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "VideoFormat", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInBytes_c", "interface" : "fifo", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
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
	{ img_dout sc_in sc_lv 120 signal 0 } 
	{ img_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ img_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ img_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_read sc_out sc_logic 1 signal 0 } 
	{ bytePlanes1_din sc_out sc_lv 256 signal 1 } 
	{ bytePlanes1_num_data_valid sc_in sc_lv 10 signal 1 } 
	{ bytePlanes1_fifo_cap sc_in sc_lv 10 signal 1 } 
	{ bytePlanes1_full_n sc_in sc_logic 1 signal 1 } 
	{ bytePlanes1_write sc_out sc_logic 1 signal 1 } 
	{ Height_dout sc_in sc_lv 12 signal 2 } 
	{ Height_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ Height_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ Height_empty_n sc_in sc_logic 1 signal 2 } 
	{ Height_read sc_out sc_logic 1 signal 2 } 
	{ WidthInPix_dout sc_in sc_lv 13 signal 3 } 
	{ WidthInPix_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ WidthInPix_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ WidthInPix_empty_n sc_in sc_logic 1 signal 3 } 
	{ WidthInPix_read sc_out sc_logic 1 signal 3 } 
	{ WidthInBytes_dout sc_in sc_lv 15 signal 4 } 
	{ WidthInBytes_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ WidthInBytes_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ WidthInBytes_empty_n sc_in sc_logic 1 signal 4 } 
	{ WidthInBytes_read sc_out sc_logic 1 signal 4 } 
	{ VideoFormat_dout sc_in sc_lv 6 signal 5 } 
	{ VideoFormat_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ VideoFormat_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ VideoFormat_empty_n sc_in sc_logic 1 signal 5 } 
	{ VideoFormat_read sc_out sc_logic 1 signal 5 } 
	{ WidthInBytes_c_din sc_out sc_lv 15 signal 6 } 
	{ WidthInBytes_c_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ WidthInBytes_c_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ WidthInBytes_c_full_n sc_in sc_logic 1 signal 6 } 
	{ WidthInBytes_c_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "img_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":120, "type": "signal", "bundle":{"name": "img", "role": "dout" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "empty_n" }} , 
 	{ "name": "img_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "read" }} , 
 	{ "name": "bytePlanes1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "din" }} , 
 	{ "name": "bytePlanes1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "full_n" }} , 
 	{ "name": "bytePlanes1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "write" }} , 
 	{ "name": "Height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Height", "role": "dout" }} , 
 	{ "name": "Height_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height", "role": "num_data_valid" }} , 
 	{ "name": "Height_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height", "role": "fifo_cap" }} , 
 	{ "name": "Height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height", "role": "empty_n" }} , 
 	{ "name": "Height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height", "role": "read" }} , 
 	{ "name": "WidthInPix_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "WidthInPix", "role": "dout" }} , 
 	{ "name": "WidthInPix_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthInPix", "role": "num_data_valid" }} , 
 	{ "name": "WidthInPix_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthInPix", "role": "fifo_cap" }} , 
 	{ "name": "WidthInPix_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInPix", "role": "empty_n" }} , 
 	{ "name": "WidthInPix_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInPix", "role": "read" }} , 
 	{ "name": "WidthInBytes_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "dout" }} , 
 	{ "name": "WidthInBytes_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "num_data_valid" }} , 
 	{ "name": "WidthInBytes_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "fifo_cap" }} , 
 	{ "name": "WidthInBytes_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "empty_n" }} , 
 	{ "name": "WidthInBytes_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "read" }} , 
 	{ "name": "VideoFormat_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "VideoFormat", "role": "dout" }} , 
 	{ "name": "VideoFormat_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "VideoFormat", "role": "num_data_valid" }} , 
 	{ "name": "VideoFormat_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "VideoFormat", "role": "fifo_cap" }} , 
 	{ "name": "VideoFormat_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "VideoFormat", "role": "empty_n" }} , 
 	{ "name": "VideoFormat_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "VideoFormat", "role": "read" }} , 
 	{ "name": "WidthInBytes_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "WidthInBytes_c", "role": "din" }} , 
 	{ "name": "WidthInBytes_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthInBytes_c", "role": "num_data_valid" }} , 
 	{ "name": "WidthInBytes_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthInBytes_c", "role": "fifo_cap" }} , 
 	{ "name": "WidthInBytes_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_c", "role": "full_n" }} , 
 	{ "name": "WidthInBytes_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_c", "role": "write" }} , 
 	{ "name": "height_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "height_c", "role": "din" }} , 
 	{ "name": "height_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "height_c", "role": "num_data_valid" }} , 
 	{ "name": "height_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "height_c", "role": "fifo_cap" }} , 
 	{ "name": "height_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_c", "role": "full_n" }} , 
 	{ "name": "height_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5"],
		"CDFG" : "MultiPixStream2Bytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "70804802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1_fu_304", "Port" : "img", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "1", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4_fu_278", "Port" : "img", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "bytePlanes1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "264", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1_fu_304", "Port" : "bytePlanes1", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "1", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4_fu_278", "Port" : "bytePlanes1", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthInPix", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInPix_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthInBytes", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "VideoFormat", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "VideoFormat_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthInBytes_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_Y8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state21", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state21"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state18"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_Y10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state18", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state18"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state17", "ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4_fu_278", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "12291",
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
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4_fu_278.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1_fu_304", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "16387",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pix_val_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "sub100_cast72", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp103", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pix_val_V_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_930_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_13ns_6ns_13_17_seq_1_U100", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiPixStream2Bytes {
		img {Type I LastRead 8 FirstWrite -1}
		bytePlanes1 {Type O LastRead -1 FirstWrite 6}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthInPix {Type I LastRead 0 FirstWrite -1}
		WidthInBytes {Type I LastRead 0 FirstWrite -1}
		VideoFormat {Type I LastRead 0 FirstWrite -1}
		WidthInBytes_c {Type O LastRead -1 FirstWrite 0}
		height_c {Type O LastRead -1 FirstWrite 0}}
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4 {
		pix_val_V_7 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_6 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_5 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_4 {Type I LastRead 0 FirstWrite -1}
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		bytePlanes1 {Type O LastRead -1 FirstWrite 6}
		cmp169_5 {Type I LastRead 0 FirstWrite -1}
		cmp169_4 {Type I LastRead 0 FirstWrite -1}
		cmp169_3 {Type I LastRead 0 FirstWrite -1}
		cmp169_2 {Type I LastRead 0 FirstWrite -1}
		cmp169_1 {Type I LastRead 0 FirstWrite -1}
		sub166_cast73 {Type I LastRead 0 FirstWrite -1}
		cmp169 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 6 FirstWrite -1}
		pix_val_V_15_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_14_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_13_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_12_out {Type O LastRead -1 FirstWrite 1}
		out_pix_V_11_out {Type IO LastRead 6 FirstWrite 6}
		raw_pix_V_5_out {Type IO LastRead 6 FirstWrite 6}}
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1 {
		pix_val_V_3 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_2 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_1 {Type I LastRead 0 FirstWrite -1}
		pix_val_V {Type I LastRead 0 FirstWrite -1}
		trunc_ln915_1 {Type I LastRead 0 FirstWrite -1}
		bytePlanes1 {Type O LastRead -1 FirstWrite 8}
		icmp_ln920 {Type I LastRead 0 FirstWrite -1}
		cmp103_6 {Type I LastRead 0 FirstWrite -1}
		cmp103_5 {Type I LastRead 0 FirstWrite -1}
		cmp103_4 {Type I LastRead 0 FirstWrite -1}
		cmp103_3 {Type I LastRead 0 FirstWrite -1}
		cmp103_2 {Type I LastRead 0 FirstWrite -1}
		cmp103_1 {Type I LastRead 0 FirstWrite -1}
		sub100_cast72 {Type I LastRead 0 FirstWrite -1}
		cmp103 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 8 FirstWrite -1}
		pix_val_V_11_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_10_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_9_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_8_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "70804802"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "70804802"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img { ap_fifo {  { img_dout fifo_port_we 0 120 }  { img_num_data_valid fifo_status_num_data_valid 0 2 }  { img_fifo_cap fifo_update 0 2 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_data 1 1 } } }
	bytePlanes1 { ap_fifo {  { bytePlanes1_din fifo_port_we 1 256 }  { bytePlanes1_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes1_fifo_cap fifo_update 0 10 }  { bytePlanes1_full_n fifo_status 0 1 }  { bytePlanes1_write fifo_data 1 1 } } }
	Height { ap_fifo {  { Height_dout fifo_port_we 0 12 }  { Height_num_data_valid fifo_status_num_data_valid 0 2 }  { Height_fifo_cap fifo_update 0 2 }  { Height_empty_n fifo_status 0 1 }  { Height_read fifo_data 1 1 } } }
	WidthInPix { ap_fifo {  { WidthInPix_dout fifo_port_we 0 13 }  { WidthInPix_num_data_valid fifo_status_num_data_valid 0 2 }  { WidthInPix_fifo_cap fifo_update 0 2 }  { WidthInPix_empty_n fifo_status 0 1 }  { WidthInPix_read fifo_data 1 1 } } }
	WidthInBytes { ap_fifo {  { WidthInBytes_dout fifo_port_we 0 15 }  { WidthInBytes_num_data_valid fifo_status_num_data_valid 0 3 }  { WidthInBytes_fifo_cap fifo_update 0 3 }  { WidthInBytes_empty_n fifo_status 0 1 }  { WidthInBytes_read fifo_data 1 1 } } }
	VideoFormat { ap_fifo {  { VideoFormat_dout fifo_port_we 0 6 }  { VideoFormat_num_data_valid fifo_status_num_data_valid 0 3 }  { VideoFormat_fifo_cap fifo_update 0 3 }  { VideoFormat_empty_n fifo_status 0 1 }  { VideoFormat_read fifo_data 1 1 } } }
	WidthInBytes_c { ap_fifo {  { WidthInBytes_c_din fifo_port_we 1 15 }  { WidthInBytes_c_num_data_valid fifo_status_num_data_valid 0 2 }  { WidthInBytes_c_fifo_cap fifo_update 0 2 }  { WidthInBytes_c_full_n fifo_status 0 1 }  { WidthInBytes_c_write fifo_data 1 1 } } }
	height_c { ap_fifo {  { height_c_din fifo_port_we 1 12 }  { height_c_num_data_valid fifo_status_num_data_valid 0 2 }  { height_c_fifo_cap fifo_update 0 2 }  { height_c_full_n fifo_status 0 1 }  { height_c_write fifo_data 1 1 } } }
}
