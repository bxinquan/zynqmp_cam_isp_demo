set moduleName v_frmbuf_wr
set isTopModule 1
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
set C_modelName {v_frmbuf_wr}
set C_modelType { void 0 }
set C_modelArgList {
	{ mm_video int 256 regular {axi_master 1}  }
	{ width uint 16 regular {axi_slave 0}  }
	{ height uint 16 regular {axi_slave 0}  }
	{ stride uint 16 regular {axi_slave 0}  }
	{ video_format uint 16 regular {axi_slave 0}  }
	{ frm_buffer int 32 regular {axi_slave 0}  }
	{ frm_buffer2 int 32 unused {axi_slave 0}  }
	{ frm_buffer3 int 32 unused {axi_slave 0}  }
	{ s_axis_video_V_data_V int 120 regular {axi_s 0 volatile  { s_axis_video Data } }  }
	{ s_axis_video_V_keep_V int 15 regular {axi_s 0 volatile  { s_axis_video Keep } }  }
	{ s_axis_video_V_strb_V int 15 regular {axi_s 0 volatile  { s_axis_video Strb } }  }
	{ s_axis_video_V_user_V int 1 regular {axi_s 0 volatile  { s_axis_video User } }  }
	{ s_axis_video_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_video Last } }  }
	{ s_axis_video_V_id_V int 1 regular {axi_s 0 volatile  { s_axis_video ID } }  }
	{ s_axis_video_V_dest_V int 1 regular {axi_s 0 volatile  { s_axis_video Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mm_video", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "frm_buffer","offset": { "type": "dynamic","port_name": "frm_buffer","bundle": "CTRL"},"direction": "WRITEONLY"},{"cName": "frm_buffer2","offset": { "type": "dynamic","port_name": "frm_buffer2","bundle": "CTRL"},},{"cName": "frm_buffer3","offset": { "type": "dynamic","port_name": "frm_buffer3","bundle": "CTRL"},}]}]} , 
 	{ "Name" : "width", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "height", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "stride", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "video_format", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "frm_buffer", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "frm_buffer2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "frm_buffer3", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":84}, "offset_end" : {"in":91}} , 
 	{ "Name" : "s_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 120, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_mm_video_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mm_video_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mm_video_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_mm_video_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mm_video_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_mm_video_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mm_video_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mm_video_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mm_video_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mm_video_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mm_video_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mm_video_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mm_video_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mm_video_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mm_video_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mm_video_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_mm_video_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_mm_video_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_mm_video_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mm_video_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mm_video_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mm_video_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mm_video_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_mm_video_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mm_video_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_mm_video_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mm_video_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mm_video_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mm_video_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mm_video_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mm_video_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mm_video_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mm_video_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mm_video_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mm_video_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mm_video_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_mm_video_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_mm_video_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mm_video_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_mm_video_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mm_video_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mm_video_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mm_video_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mm_video_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mm_video_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axis_video_TDATA sc_in sc_lv 120 signal 8 } 
	{ s_axis_video_TVALID sc_in sc_logic 1 invld 14 } 
	{ s_axis_video_TREADY sc_out sc_logic 1 inacc 14 } 
	{ s_axis_video_TKEEP sc_in sc_lv 15 signal 9 } 
	{ s_axis_video_TSTRB sc_in sc_lv 15 signal 10 } 
	{ s_axis_video_TUSER sc_in sc_lv 1 signal 11 } 
	{ s_axis_video_TLAST sc_in sc_lv 1 signal 12 } 
	{ s_axis_video_TID sc_in sc_lv 1 signal 13 } 
	{ s_axis_video_TDEST sc_in sc_lv 1 signal 14 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"v_frmbuf_wr","role":"start","value":"0","valid_bit":"0"},{"name":"v_frmbuf_wr","role":"continue","value":"0","valid_bit":"4"},{"name":"v_frmbuf_wr","role":"auto_start","value":"0","valid_bit":"7"},{"name":"width","role":"data","value":"16"},{"name":"height","role":"data","value":"24"},{"name":"stride","role":"data","value":"32"},{"name":"video_format","role":"data","value":"40"},{"name":"frm_buffer","role":"data","value":"48"},{"name":"frm_buffer2","role":"data","value":"60"},{"name":"frm_buffer3","role":"data","value":"84"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"v_frmbuf_wr","role":"start","value":"0","valid_bit":"0"},{"name":"v_frmbuf_wr","role":"done","value":"0","valid_bit":"1"},{"name":"v_frmbuf_wr","role":"idle","value":"0","valid_bit":"2"},{"name":"v_frmbuf_wr","role":"ready","value":"0","valid_bit":"3"},{"name":"v_frmbuf_wr","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_mm_video_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mm_video_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mm_video_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mm_video", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mm_video_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "AWID" }} , 
 	{ "name": "m_axi_mm_video_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mm_video", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_mm_video_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "mm_video", "role": "WDATA" }} , 
 	{ "name": "m_axi_mm_video_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mm_video", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mm_video_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "WLAST" }} , 
 	{ "name": "m_axi_mm_video_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "WID" }} , 
 	{ "name": "m_axi_mm_video_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "WUSER" }} , 
 	{ "name": "m_axi_mm_video_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mm_video_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mm_video_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mm_video", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mm_video_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "ARID" }} , 
 	{ "name": "m_axi_mm_video_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mm_video", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_mm_video_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "mm_video", "role": "RDATA" }} , 
 	{ "name": "m_axi_mm_video_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "RLAST" }} , 
 	{ "name": "m_axi_mm_video_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "RID" }} , 
 	{ "name": "m_axi_mm_video_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "RUSER" }} , 
 	{ "name": "m_axi_mm_video_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mm_video", "role": "RRESP" }} , 
 	{ "name": "m_axi_mm_video_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "BVALID" }} , 
 	{ "name": "m_axi_mm_video_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "BREADY" }} , 
 	{ "name": "m_axi_mm_video_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mm_video", "role": "BRESP" }} , 
 	{ "name": "m_axi_mm_video_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "BID" }} , 
 	{ "name": "m_axi_mm_video_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mm_video", "role": "BUSER" }} , 
 	{ "name": "s_axis_video_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":120, "type": "signal", "bundle":{"name": "s_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "s_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "s_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45"],
		"CDFG" : "v_frmbuf_wr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "70804810",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mm_video", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_FrmbufWrHlsDataFlow_fu_186", "Port" : "mm_video", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "video_format", "Type" : "None", "Direction" : "I"},
			{"Name" : "frm_buffer", "Type" : "None", "Direction" : "I"},
			{"Name" : "frm_buffer2", "Type" : "None", "Direction" : "I"},
			{"Name" : "frm_buffer3", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_FrmbufWrHlsDataFlow_fu_186", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_FrmbufWrHlsDataFlow_fu_186", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_FrmbufWrHlsDataFlow_fu_186", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_FrmbufWrHlsDataFlow_fu_186", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_FrmbufWrHlsDataFlow_fu_186", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_FrmbufWrHlsDataFlow_fu_186", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_FrmbufWrHlsDataFlow_fu_186", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "BYTES_PER_PIXEL", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "MEMORY2LIVE", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BYTES_PER_PIXEL_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MEMORY2LIVE_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186", "Parent" : "0", "Child" : ["4", "5", "14", "20", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "FrmbufWrHlsDataFlow",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "70804805",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "entry_proc_U0"},
			{"ID" : "5", "Name" : "AXIvideo2MultiPixStream_U0"}],
		"OutputProcess" : [
			{"ID" : "20", "Name" : "Bytes2AXIMMvideo_U0"}],
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_data_V"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_keep_V"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_strb_V"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_user_V"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_last_V"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_id_V"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video_V_dest_V"}]},
			{"Name" : "mm_video", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "Bytes2AXIMMvideo_U0", "Port" : "mm_video"}]},
			{"Name" : "HwReg_frm_buffer", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.entry_proc_U0", "Parent" : "3",
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
			{"Name" : "HwReg_frm_buffer_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "23", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_frm_buffer_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthInBytes_c9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "24", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_c9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stride_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "video_format_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "video_format_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0", "Parent" : "3", "Child" : ["6", "8", "10", "12", "13"],
		"CDFG" : "AXIvideo2MultiPixStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "3313446",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_205", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_225", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "10", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_254", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_205", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_225", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "10", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_254", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_205", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_225", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "10", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_254", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_205", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_225", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "10", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_254", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_205", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_225", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "10", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_254", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_205", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_225", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "10", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_254", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_205", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_225", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "10", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_254", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_225", "Port" : "img", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_c10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_c10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_205", "Parent" : "5", "Child" : ["7"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axi_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_last_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_start", "PipelineType" : "NotSupport"}]},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_205.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_225", "Parent" : "5", "Child" : ["9"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_width",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "1054",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sof_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_last_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_data_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "div_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "cond", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln235", "Type" : "None", "Direction" : "I"},
			{"Name" : "img", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "eol_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_data_V_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_width", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_225.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_254", "Parent" : "5", "Child" : ["11"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "axi_data_2_lcssa", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_last_2_lcssa", "Type" : "None", "Direction" : "I"},
			{"Name" : "eol_0_lcssa", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axi_data_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_last_V_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_eol", "PipelineType" : "NotSupport"}]},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_254.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_reg_unsigned_short_s_fu_280", "Parent" : "5",
		"CDFG" : "reg_unsigned_short_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.AXIvideo2MultiPixStream_U0.grp_reg_unsigned_short_s_fu_321", "Parent" : "5",
		"CDFG" : "reg_unsigned_short_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0", "Parent" : "3", "Child" : ["15", "17", "19"],
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
		"StartSource" : "4",
		"StartFifo" : "start_for_MultiPixStream2Bytes_U0_U",
		"Port" : [
			{"Name" : "img", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1_fu_304", "Port" : "img", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "15", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4_fu_278", "Port" : "img", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "bytePlanes1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "30", "DependentChanDepth" : "264", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1_fu_304", "Port" : "bytePlanes1", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "15", "SubInstance" : "grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4_fu_278", "Port" : "bytePlanes1", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthInPix", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInPix_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthInBytes", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "24", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "VideoFormat", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "VideoFormat_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthInBytes_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_Y8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state21", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state21"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state18"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_Y10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state18", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state18"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state17", "ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4_fu_278", "Parent" : "14", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4_fu_278.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1_fu_304", "Parent" : "14", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.MultiPixStream2Bytes_U0.urem_13ns_6ns_13_17_seq_1_U100", "Parent" : "14"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.Bytes2AXIMMvideo_U0", "Parent" : "3", "Child" : ["21"],
		"CDFG" : "Bytes2AXIMMvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "9326881",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_Bytes2AXIMMvideo_U0_U",
		"Port" : [
			{"Name" : "bytePlanes1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "30", "DependentChanDepth" : "264", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1_fu_145", "Port" : "bytePlanes1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mm_video", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mm_video_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "mm_video_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1_fu_145", "Port" : "mm_video", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "dstImg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "23", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstImg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthInBytes", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthInBytes_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "StrideInBytes", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "StrideInBytes_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_Bytes2AXIMMvideo_1plane", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "109", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state109"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.Bytes2AXIMMvideo_U0.grp_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1_fu_145", "Parent" : "20", "Child" : ["22"],
		"CDFG" : "Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "2051",
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
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.Bytes2AXIMMvideo_U0.grp_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.HwReg_frm_buffer_c_U", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.WidthInBytes_c9_U", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.stride_c_U", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.video_format_c_U", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.img_U", "Parent" : "3"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.width_c_U", "Parent" : "3"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.height_c10_U", "Parent" : "3"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.bytePlanes_plane0_U", "Parent" : "3"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.WidthInBytes_c_U", "Parent" : "3"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.height_c_U", "Parent" : "3"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.start_for_MultiPixStream2Bytes_U0_U", "Parent" : "3"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrmbufWrHlsDataFlow_fu_186.start_for_Bytes2AXIMMvideo_U0_U", "Parent" : "3"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mm_video_m_axi_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_15s_3ns_15_1_1_U147", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_15ns_16ns_31_4_1_U148", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_data_V_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_keep_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_strb_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_user_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_last_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_id_V_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_frmbuf_wr {
		mm_video {Type O LastRead 5 FirstWrite 2}
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		video_format {Type I LastRead 0 FirstWrite -1}
		frm_buffer {Type I LastRead 0 FirstWrite -1}
		frm_buffer2 {Type I LastRead -1 FirstWrite -1}
		frm_buffer3 {Type I LastRead -1 FirstWrite -1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		BYTES_PER_PIXEL {Type I LastRead -1 FirstWrite -1}
		MEMORY2LIVE {Type I LastRead -1 FirstWrite -1}}
	FrmbufWrHlsDataFlow {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		mm_video {Type O LastRead 5 FirstWrite 2}
		HwReg_frm_buffer {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 1 FirstWrite -1}
		p_read25 {Type I LastRead 1 FirstWrite -1}}
	entry_proc {
		HwReg_frm_buffer {Type I LastRead 0 FirstWrite -1}
		HwReg_frm_buffer_c {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		WidthInBytes_c9 {Type O LastRead -1 FirstWrite 0}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		stride_c {Type O LastRead -1 FirstWrite 0}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		video_format_c {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		img {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		width_c {Type O LastRead -1 FirstWrite 0}
		height_c10 {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_V_out {Type O LastRead -1 FirstWrite 0}
		axi_last_V_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_width {
		sof_2 {Type I LastRead 0 FirstWrite -1}
		axi_last_V_2 {Type I LastRead 0 FirstWrite -1}
		axi_data_V_2 {Type I LastRead 0 FirstWrite -1}
		div_cast {Type I LastRead 0 FirstWrite -1}
		cond {Type I LastRead 0 FirstWrite -1}
		icmp_ln235 {Type I LastRead 0 FirstWrite -1}
		img {Type O LastRead -1 FirstWrite 1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		eol_out {Type O LastRead -1 FirstWrite 0}
		axi_data_V_3_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol {
		axi_data_2_lcssa {Type I LastRead 0 FirstWrite -1}
		axi_last_2_lcssa {Type I LastRead 0 FirstWrite -1}
		eol_0_lcssa {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_V_4_out {Type O LastRead -1 FirstWrite 0}
		axi_last_V_4_out {Type O LastRead -1 FirstWrite 0}}
	reg_unsigned_short_s {
		d {Type I LastRead 0 FirstWrite -1}}
	reg_unsigned_short_s {
		d {Type I LastRead 0 FirstWrite -1}}
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
		pix_val_V_8_out {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "29", "Max" : "70804810"}
	, {"Name" : "Interval", "Min" : "30", "Max" : "70804811"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mm_video { m_axi {  { m_axi_mm_video_AWVALID VALID 1 1 }  { m_axi_mm_video_AWREADY READY 0 1 }  { m_axi_mm_video_AWADDR ADDR 1 32 }  { m_axi_mm_video_AWID ID 1 1 }  { m_axi_mm_video_AWLEN SIZE 1 8 }  { m_axi_mm_video_AWSIZE BURST 1 3 }  { m_axi_mm_video_AWBURST LOCK 1 2 }  { m_axi_mm_video_AWLOCK CACHE 1 2 }  { m_axi_mm_video_AWCACHE PROT 1 4 }  { m_axi_mm_video_AWPROT QOS 1 3 }  { m_axi_mm_video_AWQOS REGION 1 4 }  { m_axi_mm_video_AWREGION USER 1 4 }  { m_axi_mm_video_AWUSER DATA 1 1 }  { m_axi_mm_video_WVALID VALID 1 1 }  { m_axi_mm_video_WREADY READY 0 1 }  { m_axi_mm_video_WDATA FIFONUM 1 256 }  { m_axi_mm_video_WSTRB STRB 1 32 }  { m_axi_mm_video_WLAST LAST 1 1 }  { m_axi_mm_video_WID ID 1 1 }  { m_axi_mm_video_WUSER DATA 1 1 }  { m_axi_mm_video_ARVALID VALID 1 1 }  { m_axi_mm_video_ARREADY READY 0 1 }  { m_axi_mm_video_ARADDR ADDR 1 32 }  { m_axi_mm_video_ARID ID 1 1 }  { m_axi_mm_video_ARLEN SIZE 1 8 }  { m_axi_mm_video_ARSIZE BURST 1 3 }  { m_axi_mm_video_ARBURST LOCK 1 2 }  { m_axi_mm_video_ARLOCK CACHE 1 2 }  { m_axi_mm_video_ARCACHE PROT 1 4 }  { m_axi_mm_video_ARPROT QOS 1 3 }  { m_axi_mm_video_ARQOS REGION 1 4 }  { m_axi_mm_video_ARREGION USER 1 4 }  { m_axi_mm_video_ARUSER DATA 1 1 }  { m_axi_mm_video_RVALID VALID 0 1 }  { m_axi_mm_video_RREADY READY 1 1 }  { m_axi_mm_video_RDATA FIFONUM 0 256 }  { m_axi_mm_video_RLAST LAST 0 1 }  { m_axi_mm_video_RID ID 0 1 }  { m_axi_mm_video_RUSER DATA 0 1 }  { m_axi_mm_video_RRESP RESP 0 2 }  { m_axi_mm_video_BVALID VALID 0 1 }  { m_axi_mm_video_BREADY READY 1 1 }  { m_axi_mm_video_BRESP RESP 0 2 }  { m_axi_mm_video_BID ID 0 1 }  { m_axi_mm_video_BUSER DATA 0 1 } } }
	s_axis_video_V_data_V { axis {  { s_axis_video_TDATA in_data 0 120 } } }
	s_axis_video_V_keep_V { axis {  { s_axis_video_TKEEP in_data 0 15 } } }
	s_axis_video_V_strb_V { axis {  { s_axis_video_TSTRB in_data 0 15 } } }
	s_axis_video_V_user_V { axis {  { s_axis_video_TUSER in_data 0 1 } } }
	s_axis_video_V_last_V { axis {  { s_axis_video_TLAST in_data 0 1 } } }
	s_axis_video_V_id_V { axis {  { s_axis_video_TID in_data 0 1 } } }
	s_axis_video_V_dest_V { axis {  { s_axis_video_TVALID in_vld 0 1 }  { s_axis_video_TREADY in_acc 1 1 }  { s_axis_video_TDEST in_data 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict mm_video {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 4 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ mm_video 100 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ mm_video 100 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
