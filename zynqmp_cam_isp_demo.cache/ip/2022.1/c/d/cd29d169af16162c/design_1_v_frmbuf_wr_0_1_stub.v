// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec 10 20:40:49 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_v_frmbuf_wr_0_1_stub.v
// Design      : design_1_v_frmbuf_wr_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "design_1_v_frmbuf_wr_0_1_v_frmbuf_wr,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_CTRL_AWADDR, s_axi_CTRL_AWVALID, 
  s_axi_CTRL_AWREADY, s_axi_CTRL_WDATA, s_axi_CTRL_WSTRB, s_axi_CTRL_WVALID, 
  s_axi_CTRL_WREADY, s_axi_CTRL_BRESP, s_axi_CTRL_BVALID, s_axi_CTRL_BREADY, 
  s_axi_CTRL_ARADDR, s_axi_CTRL_ARVALID, s_axi_CTRL_ARREADY, s_axi_CTRL_RDATA, 
  s_axi_CTRL_RRESP, s_axi_CTRL_RVALID, s_axi_CTRL_RREADY, ap_clk, ap_rst_n, interrupt, 
  m_axi_mm_video_AWADDR, m_axi_mm_video_AWLEN, m_axi_mm_video_AWSIZE, 
  m_axi_mm_video_AWBURST, m_axi_mm_video_AWLOCK, m_axi_mm_video_AWREGION, 
  m_axi_mm_video_AWCACHE, m_axi_mm_video_AWPROT, m_axi_mm_video_AWQOS, 
  m_axi_mm_video_AWVALID, m_axi_mm_video_AWREADY, m_axi_mm_video_WDATA, 
  m_axi_mm_video_WSTRB, m_axi_mm_video_WLAST, m_axi_mm_video_WVALID, 
  m_axi_mm_video_WREADY, m_axi_mm_video_BRESP, m_axi_mm_video_BVALID, 
  m_axi_mm_video_BREADY, m_axi_mm_video_ARADDR, m_axi_mm_video_ARLEN, 
  m_axi_mm_video_ARSIZE, m_axi_mm_video_ARBURST, m_axi_mm_video_ARLOCK, 
  m_axi_mm_video_ARREGION, m_axi_mm_video_ARCACHE, m_axi_mm_video_ARPROT, 
  m_axi_mm_video_ARQOS, m_axi_mm_video_ARVALID, m_axi_mm_video_ARREADY, 
  m_axi_mm_video_RDATA, m_axi_mm_video_RRESP, m_axi_mm_video_RLAST, 
  m_axi_mm_video_RVALID, m_axi_mm_video_RREADY, s_axis_video_TVALID, s_axis_video_TREADY, 
  s_axis_video_TDATA, s_axis_video_TKEEP, s_axis_video_TSTRB, s_axis_video_TUSER, 
  s_axis_video_TLAST, s_axis_video_TID, s_axis_video_TDEST)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTRL_AWADDR[6:0],s_axi_CTRL_AWVALID,s_axi_CTRL_AWREADY,s_axi_CTRL_WDATA[31:0],s_axi_CTRL_WSTRB[3:0],s_axi_CTRL_WVALID,s_axi_CTRL_WREADY,s_axi_CTRL_BRESP[1:0],s_axi_CTRL_BVALID,s_axi_CTRL_BREADY,s_axi_CTRL_ARADDR[6:0],s_axi_CTRL_ARVALID,s_axi_CTRL_ARREADY,s_axi_CTRL_RDATA[31:0],s_axi_CTRL_RRESP[1:0],s_axi_CTRL_RVALID,s_axi_CTRL_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_mm_video_AWADDR[31:0],m_axi_mm_video_AWLEN[7:0],m_axi_mm_video_AWSIZE[2:0],m_axi_mm_video_AWBURST[1:0],m_axi_mm_video_AWLOCK[1:0],m_axi_mm_video_AWREGION[3:0],m_axi_mm_video_AWCACHE[3:0],m_axi_mm_video_AWPROT[2:0],m_axi_mm_video_AWQOS[3:0],m_axi_mm_video_AWVALID,m_axi_mm_video_AWREADY,m_axi_mm_video_WDATA[63:0],m_axi_mm_video_WSTRB[7:0],m_axi_mm_video_WLAST,m_axi_mm_video_WVALID,m_axi_mm_video_WREADY,m_axi_mm_video_BRESP[1:0],m_axi_mm_video_BVALID,m_axi_mm_video_BREADY,m_axi_mm_video_ARADDR[31:0],m_axi_mm_video_ARLEN[7:0],m_axi_mm_video_ARSIZE[2:0],m_axi_mm_video_ARBURST[1:0],m_axi_mm_video_ARLOCK[1:0],m_axi_mm_video_ARREGION[3:0],m_axi_mm_video_ARCACHE[3:0],m_axi_mm_video_ARPROT[2:0],m_axi_mm_video_ARQOS[3:0],m_axi_mm_video_ARVALID,m_axi_mm_video_ARREADY,m_axi_mm_video_RDATA[63:0],m_axi_mm_video_RRESP[1:0],m_axi_mm_video_RLAST,m_axi_mm_video_RVALID,m_axi_mm_video_RREADY,s_axis_video_TVALID,s_axis_video_TREADY,s_axis_video_TDATA[23:0],s_axis_video_TKEEP[2:0],s_axis_video_TSTRB[2:0],s_axis_video_TUSER,s_axis_video_TLAST,s_axis_video_TID,s_axis_video_TDEST" */;
  input [6:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [6:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_mm_video_AWADDR;
  output [7:0]m_axi_mm_video_AWLEN;
  output [2:0]m_axi_mm_video_AWSIZE;
  output [1:0]m_axi_mm_video_AWBURST;
  output [1:0]m_axi_mm_video_AWLOCK;
  output [3:0]m_axi_mm_video_AWREGION;
  output [3:0]m_axi_mm_video_AWCACHE;
  output [2:0]m_axi_mm_video_AWPROT;
  output [3:0]m_axi_mm_video_AWQOS;
  output m_axi_mm_video_AWVALID;
  input m_axi_mm_video_AWREADY;
  output [63:0]m_axi_mm_video_WDATA;
  output [7:0]m_axi_mm_video_WSTRB;
  output m_axi_mm_video_WLAST;
  output m_axi_mm_video_WVALID;
  input m_axi_mm_video_WREADY;
  input [1:0]m_axi_mm_video_BRESP;
  input m_axi_mm_video_BVALID;
  output m_axi_mm_video_BREADY;
  output [31:0]m_axi_mm_video_ARADDR;
  output [7:0]m_axi_mm_video_ARLEN;
  output [2:0]m_axi_mm_video_ARSIZE;
  output [1:0]m_axi_mm_video_ARBURST;
  output [1:0]m_axi_mm_video_ARLOCK;
  output [3:0]m_axi_mm_video_ARREGION;
  output [3:0]m_axi_mm_video_ARCACHE;
  output [2:0]m_axi_mm_video_ARPROT;
  output [3:0]m_axi_mm_video_ARQOS;
  output m_axi_mm_video_ARVALID;
  input m_axi_mm_video_ARREADY;
  input [63:0]m_axi_mm_video_RDATA;
  input [1:0]m_axi_mm_video_RRESP;
  input m_axi_mm_video_RLAST;
  input m_axi_mm_video_RVALID;
  output m_axi_mm_video_RREADY;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input s_axis_video_TUSER;
  input s_axis_video_TLAST;
  input s_axis_video_TID;
  input s_axis_video_TDEST;
endmodule
