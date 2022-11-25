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
	{ img int 24 regular {fifo 0 volatile }  }
	{ bytePlanes_plane01 int 64 regular {fifo 1 volatile }  }
	{ bytePlanes_plane12 int 64 regular {fifo 1 volatile }  }
	{ Height int 12 regular {fifo 0}  }
	{ WidthInPix int 3 regular {fifo 0}  }
	{ WidthInBytes int 15 regular {fifo 0}  }
	{ VideoFormat int 6 regular {fifo 0}  }
	{ WidthInBytes_c int 15 regular {fifo 1}  }
	{ height_c int 12 regular {fifo 1}  }
	{ video_format_c int 6 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "bytePlanes_plane01", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bytePlanes_plane12", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Height", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInPix", "interface" : "fifo", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInBytes", "interface" : "fifo", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "VideoFormat", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInBytes_c", "interface" : "fifo", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_c", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "video_format_c", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_dout sc_in sc_lv 24 signal 0 } 
	{ img_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ img_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ img_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_read sc_out sc_logic 1 signal 0 } 
	{ bytePlanes_plane01_din sc_out sc_lv 64 signal 1 } 
	{ bytePlanes_plane01_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ bytePlanes_plane01_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ bytePlanes_plane01_full_n sc_in sc_logic 1 signal 1 } 
	{ bytePlanes_plane01_write sc_out sc_logic 1 signal 1 } 
	{ bytePlanes_plane12_din sc_out sc_lv 64 signal 2 } 
	{ bytePlanes_plane12_num_data_valid sc_in sc_lv 11 signal 2 } 
	{ bytePlanes_plane12_fifo_cap sc_in sc_lv 11 signal 2 } 
	{ bytePlanes_plane12_full_n sc_in sc_logic 1 signal 2 } 
	{ bytePlanes_plane12_write sc_out sc_logic 1 signal 2 } 
	{ Height_dout sc_in sc_lv 12 signal 3 } 
	{ Height_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ Height_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ Height_empty_n sc_in sc_logic 1 signal 3 } 
	{ Height_read sc_out sc_logic 1 signal 3 } 
	{ WidthInPix_dout sc_in sc_lv 3 signal 4 } 
	{ WidthInPix_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ WidthInPix_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ WidthInPix_empty_n sc_in sc_logic 1 signal 4 } 
	{ WidthInPix_read sc_out sc_logic 1 signal 4 } 
	{ WidthInBytes_dout sc_in sc_lv 15 signal 5 } 
	{ WidthInBytes_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ WidthInBytes_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ WidthInBytes_empty_n sc_in sc_logic 1 signal 5 } 
	{ WidthInBytes_read sc_out sc_logic 1 signal 5 } 
	{ VideoFormat_dout sc_in sc_lv 6 signal 6 } 
	{ VideoFormat_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ VideoFormat_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ VideoFormat_empty_n sc_in sc_logic 1 signal 6 } 
	{ VideoFormat_read sc_out sc_logic 1 signal 6 } 
	{ WidthInBytes_c_din sc_out sc_lv 15 signal 7 } 
	{ WidthInBytes_c_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ WidthInBytes_c_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ WidthInBytes_c_full_n sc_in sc_logic 1 signal 7 } 
	{ WidthInBytes_c_write sc_out sc_logic 1 signal 7 } 
	{ height_c_din sc_out sc_lv 12 signal 8 } 
	{ height_c_num_data_valid sc_in sc_lv 2 signal 8 } 
	{ height_c_fifo_cap sc_in sc_lv 2 signal 8 } 
	{ height_c_full_n sc_in sc_logic 1 signal 8 } 
	{ height_c_write sc_out sc_logic 1 signal 8 } 
	{ video_format_c_din sc_out sc_lv 6 signal 9 } 
	{ video_format_c_num_data_valid sc_in sc_lv 2 signal 9 } 
	{ video_format_c_fifo_cap sc_in sc_lv 2 signal 9 } 
	{ video_format_c_full_n sc_in sc_logic 1 signal 9 } 
	{ video_format_c_write sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "img", "role": "dout" }} , 
 	{ "name": "img_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "num_data_valid" }} , 
 	{ "name": "img_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img", "role": "fifo_cap" }} , 
 	{ "name": "img_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "empty_n" }} , 
 	{ "name": "img_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "read" }} , 
 	{ "name": "bytePlanes_plane01_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "din" }} , 
 	{ "name": "bytePlanes_plane01_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane01_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane01_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "full_n" }} , 
 	{ "name": "bytePlanes_plane01_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane01", "role": "write" }} , 
 	{ "name": "bytePlanes_plane12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bytePlanes_plane12", "role": "din" }} , 
 	{ "name": "bytePlanes_plane12_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes_plane12", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes_plane12_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bytePlanes_plane12", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes_plane12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane12", "role": "full_n" }} , 
 	{ "name": "bytePlanes_plane12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes_plane12", "role": "write" }} , 
 	{ "name": "Height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Height", "role": "dout" }} , 
 	{ "name": "Height_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height", "role": "num_data_valid" }} , 
 	{ "name": "Height_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height", "role": "fifo_cap" }} , 
 	{ "name": "Height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height", "role": "empty_n" }} , 
 	{ "name": "Height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height", "role": "read" }} , 
 	{ "name": "WidthInPix_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInPix", "role": "dout" }} , 
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
 	{ "name": "height_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_c", "role": "write" }} , 
 	{ "name": "video_format_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "video_format_c", "role": "din" }} , 
 	{ "name": "video_format_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "video_format_c", "role": "num_data_valid" }} , 
 	{ "name": "video_format_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "video_format_c", "role": "fifo_cap" }} , 
 	{ "name": "video_format_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "video_format_c", "role": "full_n" }} , 
 	{ "name": "video_format_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "video_format_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "9", "11", "12"],
		"CDFG" : "MultiPixStream2Bytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "283141442",
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
					{"ID" : "7", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_549_5_fu_409", "Port" : "img", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "9", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_511_1_fu_427", "Port" : "img", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "3", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_763_11_fu_357", "Port" : "img", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "1", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_887_16_fu_330", "Port" : "img", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8_fu_384", "Port" : "img", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "bytePlanes_plane01", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "960", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_549_5_fu_409", "Port" : "bytePlanes_plane01", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "9", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_511_1_fu_427", "Port" : "bytePlanes_plane01", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "3", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_763_11_fu_357", "Port" : "bytePlanes_plane01", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "1", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_887_16_fu_330", "Port" : "bytePlanes_plane01", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8_fu_384", "Port" : "bytePlanes_plane01", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "bytePlanes_plane12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "960", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8_fu_384", "Port" : "bytePlanes_plane12", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
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
					{"Name" : "height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "video_format_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "video_format_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_YUYV8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_UYVY8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state16", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state16"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_Y_UV8_Y_UV8_420", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_RGB8_YUV8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state4", "ap_ST_fsm_state7", "ap_ST_fsm_state10", "ap_ST_fsm_state13", "ap_ST_fsm_state16", "ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_BGR8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state4", "ap_ST_fsm_state10", "ap_ST_fsm_state12", "ap_ST_fsm_state13", "ap_ST_fsm_state16", "ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_887_16_fu_330", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_887_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "21851",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pix_val_V_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp550_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp550_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp550", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln872", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp497_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp497_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp497_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp497_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp497_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp497_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub494", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp497", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bytePlanes_plane01", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pix_val_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_23_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_887_16", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_887_16_fu_330.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_763_11_fu_357", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_763_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "21851",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pix_val_V_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp411_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp411_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp411", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln749", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp360_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp360_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp360_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp360_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp360_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp360_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub357", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp360", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bytePlanes_plane01", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pix_val_V_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_763_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_763_11_fu_357.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8_fu_384", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "65539",
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
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8_fu_384.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_549_5_fu_409", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_549_5",
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
			{"Name" : "pix_val_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_val_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln534_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes_plane01", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bytePlanes_plane01_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_ln539", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp121_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp121_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub118_cast106", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp121", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pix_val_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_val_V_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_549_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_549_5_fu_409.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_511_1_fu_427", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "MultiPixStream2Bytes_Pipeline_VITIS_LOOP_511_1",
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
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_511_1_fu_427.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_13ns_14ns_27_4_1_U145", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_13ns_14ns_27_4_1_U146", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiPixStream2Bytes {
		img {Type I LastRead 8 FirstWrite -1}
		bytePlanes_plane01 {Type O LastRead -1 FirstWrite 4}
		bytePlanes_plane12 {Type O LastRead -1 FirstWrite 8}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthInPix {Type I LastRead 0 FirstWrite -1}
		WidthInBytes {Type I LastRead 0 FirstWrite -1}
		VideoFormat {Type I LastRead 0 FirstWrite -1}
		WidthInBytes_c {Type O LastRead -1 FirstWrite 0}
		height_c {Type O LastRead -1 FirstWrite 0}
		video_format_c {Type O LastRead -1 FirstWrite 0}}
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_887_16 {
		pix_val_V_17 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_16 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_15 {Type I LastRead 0 FirstWrite -1}
		trunc_ln4 {Type I LastRead 0 FirstWrite -1}
		cmp550_2 {Type I LastRead 0 FirstWrite -1}
		cmp550_1 {Type I LastRead 0 FirstWrite -1}
		cmp550 {Type I LastRead 0 FirstWrite -1}
		icmp_ln872 {Type I LastRead 0 FirstWrite -1}
		cmp497_6 {Type I LastRead 0 FirstWrite -1}
		cmp497_5 {Type I LastRead 0 FirstWrite -1}
		cmp497_4 {Type I LastRead 0 FirstWrite -1}
		cmp497_3 {Type I LastRead 0 FirstWrite -1}
		cmp497_2 {Type I LastRead 0 FirstWrite -1}
		cmp497_1 {Type I LastRead 0 FirstWrite -1}
		sub494 {Type I LastRead 0 FirstWrite -1}
		cmp497 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 8 FirstWrite -1}
		bytePlanes_plane01 {Type O LastRead -1 FirstWrite 4}
		pix_val_V_27_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_26_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_23_out {Type O LastRead -1 FirstWrite 1}}
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_763_11 {
		pix_val_V_14 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_13 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_12 {Type I LastRead 0 FirstWrite -1}
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		cmp411_2 {Type I LastRead 0 FirstWrite -1}
		cmp411_1 {Type I LastRead 0 FirstWrite -1}
		cmp411 {Type I LastRead 0 FirstWrite -1}
		icmp_ln749 {Type I LastRead 0 FirstWrite -1}
		cmp360_6 {Type I LastRead 0 FirstWrite -1}
		cmp360_5 {Type I LastRead 0 FirstWrite -1}
		cmp360_4 {Type I LastRead 0 FirstWrite -1}
		cmp360_3 {Type I LastRead 0 FirstWrite -1}
		cmp360_2 {Type I LastRead 0 FirstWrite -1}
		cmp360_1 {Type I LastRead 0 FirstWrite -1}
		sub357 {Type I LastRead 0 FirstWrite -1}
		cmp360 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 8 FirstWrite -1}
		bytePlanes_plane01 {Type O LastRead -1 FirstWrite 4}
		pix_val_V_22_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_19_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_18_out {Type O LastRead -1 FirstWrite 1}}
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8 {
		pix_val_V_5 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_4 {Type I LastRead 0 FirstWrite -1}
		trunc_ln571_1 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane12 {Type O LastRead -1 FirstWrite 8}
		bytePlanes_plane01 {Type O LastRead -1 FirstWrite 8}
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
		pix_val_V_11_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_10_out {Type O LastRead -1 FirstWrite 1}}
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_549_5 {
		pix_val_V_3 {Type I LastRead 0 FirstWrite -1}
		pix_val_V_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln534_1 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane01 {Type O LastRead -1 FirstWrite 4}
		icmp_ln539 {Type I LastRead 0 FirstWrite -1}
		cmp121_2 {Type I LastRead 0 FirstWrite -1}
		cmp121_1 {Type I LastRead 0 FirstWrite -1}
		sub118_cast106 {Type I LastRead 0 FirstWrite -1}
		cmp121 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 4 FirstWrite -1}
		pix_val_V_9_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_8_out {Type O LastRead -1 FirstWrite 1}}
	MultiPixStream2Bytes_Pipeline_VITIS_LOOP_511_1 {
		pix_val_V_1 {Type I LastRead 0 FirstWrite -1}
		pix_val_V {Type I LastRead 0 FirstWrite -1}
		trunc_ln496_1 {Type I LastRead 0 FirstWrite -1}
		bytePlanes_plane01 {Type O LastRead -1 FirstWrite 4}
		icmp_ln501 {Type I LastRead 0 FirstWrite -1}
		cmp43_2 {Type I LastRead 0 FirstWrite -1}
		cmp43_1 {Type I LastRead 0 FirstWrite -1}
		sub40_cast105 {Type I LastRead 0 FirstWrite -1}
		cmp43 {Type I LastRead 0 FirstWrite -1}
		img {Type I LastRead 4 FirstWrite -1}
		pix_val_V_7_out {Type O LastRead -1 FirstWrite 1}
		pix_val_V_6_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "283141442"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "283141442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img { ap_fifo {  { img_dout fifo_port_we 0 24 }  { img_num_data_valid fifo_status_num_data_valid 0 2 }  { img_fifo_cap fifo_update 0 2 }  { img_empty_n fifo_status 0 1 }  { img_read fifo_data 1 1 } } }
	bytePlanes_plane01 { ap_fifo {  { bytePlanes_plane01_din fifo_port_we 1 64 }  { bytePlanes_plane01_num_data_valid fifo_status_num_data_valid 0 11 }  { bytePlanes_plane01_fifo_cap fifo_update 0 11 }  { bytePlanes_plane01_full_n fifo_status 0 1 }  { bytePlanes_plane01_write fifo_data 1 1 } } }
	bytePlanes_plane12 { ap_fifo {  { bytePlanes_plane12_din fifo_port_we 1 64 }  { bytePlanes_plane12_num_data_valid fifo_status_num_data_valid 0 11 }  { bytePlanes_plane12_fifo_cap fifo_update 0 11 }  { bytePlanes_plane12_full_n fifo_status 0 1 }  { bytePlanes_plane12_write fifo_data 1 1 } } }
	Height { ap_fifo {  { Height_dout fifo_port_we 0 12 }  { Height_num_data_valid fifo_status_num_data_valid 0 2 }  { Height_fifo_cap fifo_update 0 2 }  { Height_empty_n fifo_status 0 1 }  { Height_read fifo_data 1 1 } } }
	WidthInPix { ap_fifo {  { WidthInPix_dout fifo_port_we 0 3 }  { WidthInPix_num_data_valid fifo_status_num_data_valid 0 2 }  { WidthInPix_fifo_cap fifo_update 0 2 }  { WidthInPix_empty_n fifo_status 0 1 }  { WidthInPix_read fifo_data 1 1 } } }
	WidthInBytes { ap_fifo {  { WidthInBytes_dout fifo_port_we 0 15 }  { WidthInBytes_num_data_valid fifo_status_num_data_valid 0 3 }  { WidthInBytes_fifo_cap fifo_update 0 3 }  { WidthInBytes_empty_n fifo_status 0 1 }  { WidthInBytes_read fifo_data 1 1 } } }
	VideoFormat { ap_fifo {  { VideoFormat_dout fifo_port_we 0 6 }  { VideoFormat_num_data_valid fifo_status_num_data_valid 0 3 }  { VideoFormat_fifo_cap fifo_update 0 3 }  { VideoFormat_empty_n fifo_status 0 1 }  { VideoFormat_read fifo_data 1 1 } } }
	WidthInBytes_c { ap_fifo {  { WidthInBytes_c_din fifo_port_we 1 15 }  { WidthInBytes_c_num_data_valid fifo_status_num_data_valid 0 2 }  { WidthInBytes_c_fifo_cap fifo_update 0 2 }  { WidthInBytes_c_full_n fifo_status 0 1 }  { WidthInBytes_c_write fifo_data 1 1 } } }
	height_c { ap_fifo {  { height_c_din fifo_port_we 1 12 }  { height_c_num_data_valid fifo_status_num_data_valid 0 2 }  { height_c_fifo_cap fifo_update 0 2 }  { height_c_full_n fifo_status 0 1 }  { height_c_write fifo_data 1 1 } } }
	video_format_c { ap_fifo {  { video_format_c_din fifo_port_we 1 6 }  { video_format_c_num_data_valid fifo_status_num_data_valid 0 2 }  { video_format_c_fifo_cap fifo_update 0 2 }  { video_format_c_full_n fifo_status 0 1 }  { video_format_c_write fifo_data 1 1 } } }
}
