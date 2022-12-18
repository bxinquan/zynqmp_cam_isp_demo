set moduleName Bytes2AXIMMvideo
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
set C_modelName {Bytes2AXIMMvideo}
set C_modelType { void 0 }
set C_modelArgList {
	{ bytePlanes1 int 128 regular {fifo 0 volatile }  }
	{ mm_video int 128 regular {axi_master 1}  }
	{ dstImg int 32 regular {fifo 0}  }
	{ Height int 12 regular {fifo 0}  }
	{ WidthInBytes int 15 regular {fifo 0}  }
	{ StrideInBytes int 16 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bytePlanes1", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "mm_video", "interface" : "axi_master", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "frm_buffer","offset": { "type": "dynamic","port_name": "frm_buffer","bundle": "CTRL"},"direction": "WRITEONLY"},{"cName": "frm_buffer2","offset": { "type": "dynamic","port_name": "frm_buffer2","bundle": "CTRL"},},{"cName": "frm_buffer3","offset": { "type": "dynamic","port_name": "frm_buffer3","bundle": "CTRL"},}]}]} , 
 	{ "Name" : "dstImg", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Height", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "WidthInBytes", "interface" : "fifo", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "StrideInBytes", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 78
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bytePlanes1_dout sc_in sc_lv 128 signal 0 } 
	{ bytePlanes1_num_data_valid sc_in sc_lv 10 signal 0 } 
	{ bytePlanes1_fifo_cap sc_in sc_lv 10 signal 0 } 
	{ bytePlanes1_empty_n sc_in sc_logic 1 signal 0 } 
	{ bytePlanes1_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_mm_video_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_mm_video_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_mm_video_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_mm_video_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_mm_video_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_mm_video_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_mm_video_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_mm_video_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_mm_video_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_mm_video_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_mm_video_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_mm_video_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_mm_video_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_mm_video_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_mm_video_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_mm_video_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_mm_video_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_mm_video_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_mm_video_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_mm_video_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_mm_video_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_mm_video_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_mm_video_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_mm_video_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_mm_video_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_mm_video_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_mm_video_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_mm_video_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_mm_video_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_mm_video_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_mm_video_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_mm_video_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_mm_video_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_mm_video_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_mm_video_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_mm_video_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_mm_video_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_mm_video_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_mm_video_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_mm_video_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_mm_video_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_mm_video_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_mm_video_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_mm_video_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_mm_video_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_mm_video_BUSER sc_in sc_lv 1 signal 1 } 
	{ dstImg_dout sc_in sc_lv 32 signal 2 } 
	{ dstImg_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ dstImg_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ dstImg_empty_n sc_in sc_logic 1 signal 2 } 
	{ dstImg_read sc_out sc_logic 1 signal 2 } 
	{ Height_dout sc_in sc_lv 12 signal 3 } 
	{ Height_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ Height_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ Height_empty_n sc_in sc_logic 1 signal 3 } 
	{ Height_read sc_out sc_logic 1 signal 3 } 
	{ WidthInBytes_dout sc_in sc_lv 15 signal 4 } 
	{ WidthInBytes_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ WidthInBytes_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ WidthInBytes_empty_n sc_in sc_logic 1 signal 4 } 
	{ WidthInBytes_read sc_out sc_logic 1 signal 4 } 
	{ StrideInBytes_dout sc_in sc_lv 16 signal 5 } 
	{ StrideInBytes_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ StrideInBytes_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ StrideInBytes_empty_n sc_in sc_logic 1 signal 5 } 
	{ StrideInBytes_read sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bytePlanes1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "dout" }} , 
 	{ "name": "bytePlanes1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "num_data_valid" }} , 
 	{ "name": "bytePlanes1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "fifo_cap" }} , 
 	{ "name": "bytePlanes1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "empty_n" }} , 
 	{ "name": "bytePlanes1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bytePlanes1", "role": "read" }} , 
 	{ "name": "m_axi_mm_video_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mm_video_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mm_video_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mm_video", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mm_video_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "AWID" }} , 
 	{ "name": "m_axi_mm_video_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mm_video", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mm_video_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mm_video", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mm_video_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mm_video", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mm_video_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mm_video", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mm_video_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mm_video", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mm_video_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mm_video", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mm_video_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mm_video", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mm_video_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mm_video", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mm_video_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mm_video_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "WVALID" }} , 
 	{ "name": "m_axi_mm_video_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "WREADY" }} , 
 	{ "name": "m_axi_mm_video_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "mm_video", "role": "WDATA" }} , 
 	{ "name": "m_axi_mm_video_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mm_video", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mm_video_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "WLAST" }} , 
 	{ "name": "m_axi_mm_video_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "WID" }} , 
 	{ "name": "m_axi_mm_video_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "WUSER" }} , 
 	{ "name": "m_axi_mm_video_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mm_video_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mm_video_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mm_video", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mm_video_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "ARID" }} , 
 	{ "name": "m_axi_mm_video_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mm_video", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mm_video_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mm_video", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mm_video_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mm_video", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mm_video_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mm_video", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mm_video_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mm_video", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mm_video_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mm_video", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mm_video_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mm_video", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mm_video_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mm_video", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mm_video_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mm_video_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "RVALID" }} , 
 	{ "name": "m_axi_mm_video_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "RREADY" }} , 
 	{ "name": "m_axi_mm_video_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "mm_video", "role": "RDATA" }} , 
 	{ "name": "m_axi_mm_video_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "RLAST" }} , 
 	{ "name": "m_axi_mm_video_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "RID" }} , 
 	{ "name": "m_axi_mm_video_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mm_video", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_mm_video_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "RUSER" }} , 
 	{ "name": "m_axi_mm_video_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mm_video", "role": "RRESP" }} , 
 	{ "name": "m_axi_mm_video_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "BVALID" }} , 
 	{ "name": "m_axi_mm_video_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "BREADY" }} , 
 	{ "name": "m_axi_mm_video_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mm_video", "role": "BRESP" }} , 
 	{ "name": "m_axi_mm_video_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "BID" }} , 
 	{ "name": "m_axi_mm_video_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "BUSER" }} , 
 	{ "name": "dstImg_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dstImg", "role": "dout" }} , 
 	{ "name": "dstImg_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dstImg", "role": "num_data_valid" }} , 
 	{ "name": "dstImg_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dstImg", "role": "fifo_cap" }} , 
 	{ "name": "dstImg_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dstImg", "role": "empty_n" }} , 
 	{ "name": "dstImg_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dstImg", "role": "read" }} , 
 	{ "name": "Height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Height", "role": "dout" }} , 
 	{ "name": "Height_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height", "role": "num_data_valid" }} , 
 	{ "name": "Height_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height", "role": "fifo_cap" }} , 
 	{ "name": "Height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height", "role": "empty_n" }} , 
 	{ "name": "Height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height", "role": "read" }} , 
 	{ "name": "WidthInBytes_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "dout" }} , 
 	{ "name": "WidthInBytes_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "num_data_valid" }} , 
 	{ "name": "WidthInBytes_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "fifo_cap" }} , 
 	{ "name": "WidthInBytes_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "empty_n" }} , 
 	{ "name": "WidthInBytes_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthInBytes", "role": "read" }} , 
 	{ "name": "StrideInBytes_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "StrideInBytes", "role": "dout" }} , 
 	{ "name": "StrideInBytes_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "StrideInBytes", "role": "num_data_valid" }} , 
 	{ "name": "StrideInBytes_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "StrideInBytes", "role": "fifo_cap" }} , 
 	{ "name": "StrideInBytes_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StrideInBytes", "role": "empty_n" }} , 
 	{ "name": "StrideInBytes_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "StrideInBytes", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Bytes2AXIMMvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "18174241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bytePlanes1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "480", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1_fu_141", "Port" : "bytePlanes1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mm_video", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mm_video_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "mm_video_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1_fu_141", "Port" : "mm_video", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "dstImg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstImg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthInBytes", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StrideInBytes", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "StrideInBytes_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_Bytes2AXIMMvideo_1plane", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "109", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state109"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1_fu_141", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mm_video", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mm_video_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln1086", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "bytePlanes1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bytePlanes1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1086_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1_fu_141.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	Bytes2AXIMMvideo {
		bytePlanes1 {Type I LastRead 1 FirstWrite -1}
		mm_video {Type O LastRead 5 FirstWrite 2}
		dstImg {Type I LastRead 0 FirstWrite -1}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthInBytes {Type I LastRead 0 FirstWrite -1}
		StrideInBytes {Type I LastRead 0 FirstWrite -1}}
	Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1 {
		mm_video {Type O LastRead -1 FirstWrite 2}
		sext_ln1086 {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		bytePlanes1 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "18174241"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "18174241"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bytePlanes1 { ap_fifo {  { bytePlanes1_dout fifo_port_we 0 128 }  { bytePlanes1_num_data_valid fifo_status_num_data_valid 0 10 }  { bytePlanes1_fifo_cap fifo_update 0 10 }  { bytePlanes1_empty_n fifo_status 0 1 }  { bytePlanes1_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_mm_video_AWVALID VALID 1 1 }  { m_axi_mm_video_AWREADY READY 0 1 }  { m_axi_mm_video_AWADDR ADDR 1 32 }  { m_axi_mm_video_AWID ID 1 1 }  { m_axi_mm_video_AWLEN SIZE 1 32 }  { m_axi_mm_video_AWSIZE BURST 1 3 }  { m_axi_mm_video_AWBURST LOCK 1 2 }  { m_axi_mm_video_AWLOCK CACHE 1 2 }  { m_axi_mm_video_AWCACHE PROT 1 4 }  { m_axi_mm_video_AWPROT QOS 1 3 }  { m_axi_mm_video_AWQOS REGION 1 4 }  { m_axi_mm_video_AWREGION USER 1 4 }  { m_axi_mm_video_AWUSER DATA 1 1 }  { m_axi_mm_video_WVALID VALID 1 1 }  { m_axi_mm_video_WREADY READY 0 1 }  { m_axi_mm_video_WDATA FIFONUM 1 128 }  { m_axi_mm_video_WSTRB STRB 1 16 }  { m_axi_mm_video_WLAST LAST 1 1 }  { m_axi_mm_video_WID ID 1 1 }  { m_axi_mm_video_WUSER DATA 1 1 }  { m_axi_mm_video_ARVALID VALID 1 1 }  { m_axi_mm_video_ARREADY READY 0 1 }  { m_axi_mm_video_ARADDR ADDR 1 32 }  { m_axi_mm_video_ARID ID 1 1 }  { m_axi_mm_video_ARLEN SIZE 1 32 }  { m_axi_mm_video_ARSIZE BURST 1 3 }  { m_axi_mm_video_ARBURST LOCK 1 2 }  { m_axi_mm_video_ARLOCK CACHE 1 2 }  { m_axi_mm_video_ARCACHE PROT 1 4 }  { m_axi_mm_video_ARPROT QOS 1 3 }  { m_axi_mm_video_ARQOS REGION 1 4 }  { m_axi_mm_video_ARREGION USER 1 4 }  { m_axi_mm_video_ARUSER DATA 1 1 }  { m_axi_mm_video_RVALID VALID 0 1 }  { m_axi_mm_video_RREADY READY 1 1 }  { m_axi_mm_video_RDATA FIFONUM 0 128 }  { m_axi_mm_video_RLAST LAST 0 1 }  { m_axi_mm_video_RID ID 0 1 }  { m_axi_mm_video_RFIFONUM LEN 0 9 }  { m_axi_mm_video_RUSER DATA 0 1 }  { m_axi_mm_video_RRESP RESP 0 2 }  { m_axi_mm_video_BVALID VALID 0 1 }  { m_axi_mm_video_BREADY READY 1 1 }  { m_axi_mm_video_BRESP RESP 0 2 }  { m_axi_mm_video_BID ID 0 1 }  { m_axi_mm_video_BUSER DATA 0 1 } } }
	dstImg { ap_fifo {  { dstImg_dout fifo_port_we 0 32 }  { dstImg_num_data_valid fifo_status_num_data_valid 0 3 }  { dstImg_fifo_cap fifo_update 0 3 }  { dstImg_empty_n fifo_status 0 1 }  { dstImg_read fifo_data 1 1 } } }
	Height { ap_fifo {  { Height_dout fifo_port_we 0 12 }  { Height_num_data_valid fifo_status_num_data_valid 0 2 }  { Height_fifo_cap fifo_update 0 2 }  { Height_empty_n fifo_status 0 1 }  { Height_read fifo_data 1 1 } } }
	WidthInBytes { ap_fifo {  { WidthInBytes_dout fifo_port_we 0 15 }  { WidthInBytes_num_data_valid fifo_status_num_data_valid 0 2 }  { WidthInBytes_fifo_cap fifo_update 0 2 }  { WidthInBytes_empty_n fifo_status 0 1 }  { WidthInBytes_read fifo_data 1 1 } } }
	StrideInBytes { ap_fifo {  { StrideInBytes_dout fifo_port_we 0 16 }  { StrideInBytes_num_data_valid fifo_status_num_data_valid 0 3 }  { StrideInBytes_fifo_cap fifo_update 0 3 }  { StrideInBytes_empty_n fifo_status 0 1 }  { StrideInBytes_read fifo_data 1 1 } } }
}
