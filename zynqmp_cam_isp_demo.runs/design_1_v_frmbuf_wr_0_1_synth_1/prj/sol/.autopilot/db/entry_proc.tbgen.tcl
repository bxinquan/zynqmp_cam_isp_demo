set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {entry_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ HwReg_frm_buffer int 32 regular  }
	{ HwReg_frm_buffer_c int 32 regular {fifo 1}  }
	{ HwReg_frm_buffer2 int 32 regular  }
	{ HwReg_frm_buffer2_c int 32 regular {fifo 1}  }
	{ p_read int 15 regular  }
	{ WidthInBytes_c9 int 15 regular {fifo 1}  }
	{ p_read1 int 16 regular {ap_stable 0} }
	{ stride_c int 16 regular {fifo 1}  }
	{ p_read2 int 6 regular  }
	{ video_format_c11 int 6 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "HwReg_frm_buffer", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_frm_buffer_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_frm_buffer2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_frm_buffer2_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInBytes_c9", "interface" : "fifo", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stride_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "video_format_c11", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ HwReg_frm_buffer sc_in sc_lv 32 signal 0 } 
	{ HwReg_frm_buffer_c_din sc_out sc_lv 32 signal 1 } 
	{ HwReg_frm_buffer_c_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ HwReg_frm_buffer_c_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ HwReg_frm_buffer_c_full_n sc_in sc_logic 1 signal 1 } 
	{ HwReg_frm_buffer_c_write sc_out sc_logic 1 signal 1 } 
	{ HwReg_frm_buffer2 sc_in sc_lv 32 signal 2 } 
	{ HwReg_frm_buffer2_c_din sc_out sc_lv 32 signal 3 } 
	{ HwReg_frm_buffer2_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ HwReg_frm_buffer2_c_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ HwReg_frm_buffer2_c_full_n sc_in sc_logic 1 signal 3 } 
	{ HwReg_frm_buffer2_c_write sc_out sc_logic 1 signal 3 } 
	{ p_read sc_in sc_lv 15 signal 4 } 
	{ WidthInBytes_c9_din sc_out sc_lv 15 signal 5 } 
	{ WidthInBytes_c9_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ WidthInBytes_c9_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ WidthInBytes_c9_full_n sc_in sc_logic 1 signal 5 } 
	{ WidthInBytes_c9_write sc_out sc_logic 1 signal 5 } 
	{ p_read1 sc_in sc_lv 16 signal 6 } 
	{ stride_c_din sc_out sc_lv 16 signal 7 } 
	{ stride_c_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ stride_c_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ stride_c_full_n sc_in sc_logic 1 signal 7 } 
	{ stride_c_write sc_out sc_logic 1 signal 7 } 
	{ p_read2 sc_in sc_lv 6 signal 8 } 
	{ video_format_c11_din sc_out sc_lv 6 signal 9 } 
	{ video_format_c11_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ video_format_c11_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ video_format_c11_full_n sc_in sc_logic 1 signal 9 } 
	{ video_format_c11_write sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "HwReg_frm_buffer", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HwReg_frm_buffer", "role": "default" }} , 
 	{ "name": "HwReg_frm_buffer_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HwReg_frm_buffer_c", "role": "din" }} , 
 	{ "name": "HwReg_frm_buffer_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_frm_buffer_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_frm_buffer_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_frm_buffer_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_frm_buffer_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_frm_buffer_c", "role": "full_n" }} , 
 	{ "name": "HwReg_frm_buffer_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_frm_buffer_c", "role": "write" }} , 
 	{ "name": "HwReg_frm_buffer2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HwReg_frm_buffer2", "role": "default" }} , 
 	{ "name": "HwReg_frm_buffer2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HwReg_frm_buffer2_c", "role": "din" }} , 
 	{ "name": "HwReg_frm_buffer2_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_frm_buffer2_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_frm_buffer2_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_frm_buffer2_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_frm_buffer2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_frm_buffer2_c", "role": "full_n" }} , 
 	{ "name": "HwReg_frm_buffer2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_frm_buffer2_c", "role": "write" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "WidthInBytes_c9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "WidthInBytes_c9", "role": "din" }} , 
 	{ "name": "WidthInBytes_c9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes_c9", "role": "num_data_valid" }} , 
 	{ "name": "WidthInBytes_c9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "WidthInBytes_c9", "role": "fifo_cap" }} , 
 	{ "name": "WidthInBytes_c9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_c9", "role": "full_n" }} , 
 	{ "name": "WidthInBytes_c9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes_c9", "role": "write" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "stride_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "stride_c", "role": "din" }} , 
 	{ "name": "stride_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stride_c", "role": "num_data_valid" }} , 
 	{ "name": "stride_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "stride_c", "role": "fifo_cap" }} , 
 	{ "name": "stride_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride_c", "role": "full_n" }} , 
 	{ "name": "stride_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride_c", "role": "write" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "video_format_c11_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "video_format_c11", "role": "din" }} , 
 	{ "name": "video_format_c11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "video_format_c11", "role": "num_data_valid" }} , 
 	{ "name": "video_format_c11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "video_format_c11", "role": "fifo_cap" }} , 
 	{ "name": "video_format_c11_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "video_format_c11", "role": "full_n" }} , 
 	{ "name": "video_format_c11_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "video_format_c11", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "HwReg_frm_buffer", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_frm_buffer_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_frm_buffer_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_frm_buffer2", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_frm_buffer2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_frm_buffer2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthInBytes_c9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_c9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stride_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "video_format_c11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "video_format_c11_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		HwReg_frm_buffer {Type I LastRead 0 FirstWrite -1}
		HwReg_frm_buffer_c {Type O LastRead -1 FirstWrite 0}
		HwReg_frm_buffer2 {Type I LastRead 0 FirstWrite -1}
		HwReg_frm_buffer2_c {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		WidthInBytes_c9 {Type O LastRead -1 FirstWrite 0}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		stride_c {Type O LastRead -1 FirstWrite 0}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		video_format_c11 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	HwReg_frm_buffer { ap_none {  { HwReg_frm_buffer in_data 0 32 } } }
	HwReg_frm_buffer_c { ap_fifo {  { HwReg_frm_buffer_c_din fifo_port_we 1 32 }  { HwReg_frm_buffer_c_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_frm_buffer_c_fifo_cap fifo_update 0 3 }  { HwReg_frm_buffer_c_full_n fifo_status 0 1 }  { HwReg_frm_buffer_c_write fifo_data 1 1 } } }
	HwReg_frm_buffer2 { ap_none {  { HwReg_frm_buffer2 in_data 0 32 } } }
	HwReg_frm_buffer2_c { ap_fifo {  { HwReg_frm_buffer2_c_din fifo_port_we 1 32 }  { HwReg_frm_buffer2_c_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_frm_buffer2_c_fifo_cap fifo_update 0 3 }  { HwReg_frm_buffer2_c_full_n fifo_status 0 1 }  { HwReg_frm_buffer2_c_write fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 15 } } }
	WidthInBytes_c9 { ap_fifo {  { WidthInBytes_c9_din fifo_port_we 1 15 }  { WidthInBytes_c9_num_data_valid fifo_status_num_data_valid 0 3 }  { WidthInBytes_c9_fifo_cap fifo_update 0 3 }  { WidthInBytes_c9_full_n fifo_status 0 1 }  { WidthInBytes_c9_write fifo_data 1 1 } } }
	p_read1 { ap_stable {  { p_read1 in_data 0 16 } } }
	stride_c { ap_fifo {  { stride_c_din fifo_port_we 1 16 }  { stride_c_num_data_valid fifo_status_num_data_valid 0 3 }  { stride_c_fifo_cap fifo_update 0 3 }  { stride_c_full_n fifo_status 0 1 }  { stride_c_write fifo_data 1 1 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 6 } } }
	video_format_c11 { ap_fifo {  { video_format_c11_din fifo_port_we 1 6 }  { video_format_c11_num_data_valid fifo_status_num_data_valid 0 3 }  { video_format_c11_fifo_cap fifo_update 0 3 }  { video_format_c11_full_n fifo_status 0 1 }  { video_format_c11_write fifo_data 1 1 } } }
}
