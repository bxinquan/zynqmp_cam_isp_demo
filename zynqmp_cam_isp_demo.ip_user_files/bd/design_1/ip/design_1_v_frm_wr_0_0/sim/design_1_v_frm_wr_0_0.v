// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:v_frmbuf_wr:2.4
// IP Revision: 0

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_v_frm_wr_0_0 (
  s_axi_CTRL_AWADDR,
  s_axi_CTRL_AWVALID,
  s_axi_CTRL_AWREADY,
  s_axi_CTRL_WDATA,
  s_axi_CTRL_WSTRB,
  s_axi_CTRL_WVALID,
  s_axi_CTRL_WREADY,
  s_axi_CTRL_BRESP,
  s_axi_CTRL_BVALID,
  s_axi_CTRL_BREADY,
  s_axi_CTRL_ARADDR,
  s_axi_CTRL_ARVALID,
  s_axi_CTRL_ARREADY,
  s_axi_CTRL_RDATA,
  s_axi_CTRL_RRESP,
  s_axi_CTRL_RVALID,
  s_axi_CTRL_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_mm_video_AWADDR,
  m_axi_mm_video_AWLEN,
  m_axi_mm_video_AWSIZE,
  m_axi_mm_video_AWBURST,
  m_axi_mm_video_AWLOCK,
  m_axi_mm_video_AWREGION,
  m_axi_mm_video_AWCACHE,
  m_axi_mm_video_AWPROT,
  m_axi_mm_video_AWQOS,
  m_axi_mm_video_AWVALID,
  m_axi_mm_video_AWREADY,
  m_axi_mm_video_WDATA,
  m_axi_mm_video_WSTRB,
  m_axi_mm_video_WLAST,
  m_axi_mm_video_WVALID,
  m_axi_mm_video_WREADY,
  m_axi_mm_video_BRESP,
  m_axi_mm_video_BVALID,
  m_axi_mm_video_BREADY,
  m_axi_mm_video_ARADDR,
  m_axi_mm_video_ARLEN,
  m_axi_mm_video_ARSIZE,
  m_axi_mm_video_ARBURST,
  m_axi_mm_video_ARLOCK,
  m_axi_mm_video_ARREGION,
  m_axi_mm_video_ARCACHE,
  m_axi_mm_video_ARPROT,
  m_axi_mm_video_ARQOS,
  m_axi_mm_video_ARVALID,
  m_axi_mm_video_ARREADY,
  m_axi_mm_video_RDATA,
  m_axi_mm_video_RRESP,
  m_axi_mm_video_RLAST,
  m_axi_mm_video_RVALID,
  m_axi_mm_video_RREADY,
  s_axis_video_TVALID,
  s_axis_video_TREADY,
  s_axis_video_TDATA,
  s_axis_video_TKEEP,
  s_axis_video_TSTRB,
  s_axis_video_TUSER,
  s_axis_video_TLAST,
  s_axis_video_TID,
  s_axis_video_TDEST
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *)
input wire [6 : 0] s_axi_CTRL_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID" *)
input wire s_axi_CTRL_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY" *)
output wire s_axi_CTRL_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA" *)
input wire [31 : 0] s_axi_CTRL_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB" *)
input wire [3 : 0] s_axi_CTRL_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID" *)
input wire s_axi_CTRL_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY" *)
output wire s_axi_CTRL_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP" *)
output wire [1 : 0] s_axi_CTRL_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID" *)
output wire s_axi_CTRL_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY" *)
input wire s_axi_CTRL_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *)
input wire [6 : 0] s_axi_CTRL_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *)
input wire s_axi_CTRL_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *)
output wire s_axi_CTRL_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA" *)
output wire [31 : 0] s_axi_CTRL_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP" *)
output wire [1 : 0] s_axi_CTRL_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID" *)
output wire s_axi_CTRL_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1,\
 NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *)
input wire s_axi_CTRL_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:m_axi_mm_video:s_axis_video, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video AWADDR" *)
output wire [31 : 0] m_axi_mm_video_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video AWLEN" *)
output wire [7 : 0] m_axi_mm_video_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video AWSIZE" *)
output wire [2 : 0] m_axi_mm_video_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video AWBURST" *)
output wire [1 : 0] m_axi_mm_video_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video AWLOCK" *)
output wire [1 : 0] m_axi_mm_video_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video AWREGION" *)
output wire [3 : 0] m_axi_mm_video_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video AWCACHE" *)
output wire [3 : 0] m_axi_mm_video_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video AWPROT" *)
output wire [2 : 0] m_axi_mm_video_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video AWQOS" *)
output wire [3 : 0] m_axi_mm_video_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video AWVALID" *)
output wire m_axi_mm_video_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video AWREADY" *)
input wire m_axi_mm_video_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video WDATA" *)
output wire [127 : 0] m_axi_mm_video_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video WSTRB" *)
output wire [15 : 0] m_axi_mm_video_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video WLAST" *)
output wire m_axi_mm_video_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video WVALID" *)
output wire m_axi_mm_video_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video WREADY" *)
input wire m_axi_mm_video_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video BRESP" *)
input wire [1 : 0] m_axi_mm_video_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video BVALID" *)
input wire m_axi_mm_video_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video BREADY" *)
output wire m_axi_mm_video_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video ARADDR" *)
output wire [31 : 0] m_axi_mm_video_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video ARLEN" *)
output wire [7 : 0] m_axi_mm_video_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video ARSIZE" *)
output wire [2 : 0] m_axi_mm_video_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video ARBURST" *)
output wire [1 : 0] m_axi_mm_video_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video ARLOCK" *)
output wire [1 : 0] m_axi_mm_video_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video ARREGION" *)
output wire [3 : 0] m_axi_mm_video_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video ARCACHE" *)
output wire [3 : 0] m_axi_mm_video_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video ARPROT" *)
output wire [2 : 0] m_axi_mm_video_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video ARQOS" *)
output wire [3 : 0] m_axi_mm_video_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video ARVALID" *)
output wire m_axi_mm_video_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video ARREADY" *)
input wire m_axi_mm_video_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video RDATA" *)
input wire [127 : 0] m_axi_mm_video_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video RRESP" *)
input wire [1 : 0] m_axi_mm_video_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video RLAST" *)
input wire m_axi_mm_video_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video RVALID" *)
input wire m_axi_mm_video_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_mm_video, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 4, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS\
 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mm_video RREADY" *)
output wire m_axi_mm_video_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TVALID" *)
input wire s_axis_video_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TREADY" *)
output wire s_axis_video_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TDATA" *)
input wire [63 : 0] s_axis_video_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TKEEP" *)
input wire [7 : 0] s_axis_video_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TSTRB" *)
input wire [7 : 0] s_axis_video_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TUSER" *)
input wire s_axis_video_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TLAST" *)
input wire s_axis_video_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TID" *)
input wire s_axis_video_TID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 8, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TDEST" *)
input wire s_axis_video_TDEST;

  design_1_v_frm_wr_0_0_v_frmbuf_wr #(
    .C_S_AXI_CTRL_ADDR_WIDTH(7),
    .C_S_AXI_CTRL_DATA_WIDTH(32),
    .C_M_AXI_MM_VIDEO_ADDR_WIDTH(32),
    .C_M_AXI_MM_VIDEO_DATA_WIDTH(128),
    .C_M_AXI_MM_VIDEO_PROT_VALUE(3'H0),
    .C_M_AXI_MM_VIDEO_CACHE_VALUE(4'H3)
  ) inst (
    .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),
    .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
    .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),
    .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),
    .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),
    .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),
    .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),
    .s_axi_CTRL_BRESP(s_axi_CTRL_BRESP),
    .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
    .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
    .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),
    .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
    .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),
    .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),
    .s_axi_CTRL_RRESP(s_axi_CTRL_RRESP),
    .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
    .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_mm_video_AWADDR(m_axi_mm_video_AWADDR),
    .m_axi_mm_video_AWLEN(m_axi_mm_video_AWLEN),
    .m_axi_mm_video_AWSIZE(m_axi_mm_video_AWSIZE),
    .m_axi_mm_video_AWBURST(m_axi_mm_video_AWBURST),
    .m_axi_mm_video_AWLOCK(m_axi_mm_video_AWLOCK),
    .m_axi_mm_video_AWREGION(m_axi_mm_video_AWREGION),
    .m_axi_mm_video_AWCACHE(m_axi_mm_video_AWCACHE),
    .m_axi_mm_video_AWPROT(m_axi_mm_video_AWPROT),
    .m_axi_mm_video_AWQOS(m_axi_mm_video_AWQOS),
    .m_axi_mm_video_AWVALID(m_axi_mm_video_AWVALID),
    .m_axi_mm_video_AWREADY(m_axi_mm_video_AWREADY),
    .m_axi_mm_video_WDATA(m_axi_mm_video_WDATA),
    .m_axi_mm_video_WSTRB(m_axi_mm_video_WSTRB),
    .m_axi_mm_video_WLAST(m_axi_mm_video_WLAST),
    .m_axi_mm_video_WVALID(m_axi_mm_video_WVALID),
    .m_axi_mm_video_WREADY(m_axi_mm_video_WREADY),
    .m_axi_mm_video_BRESP(m_axi_mm_video_BRESP),
    .m_axi_mm_video_BVALID(m_axi_mm_video_BVALID),
    .m_axi_mm_video_BREADY(m_axi_mm_video_BREADY),
    .m_axi_mm_video_ARADDR(m_axi_mm_video_ARADDR),
    .m_axi_mm_video_ARLEN(m_axi_mm_video_ARLEN),
    .m_axi_mm_video_ARSIZE(m_axi_mm_video_ARSIZE),
    .m_axi_mm_video_ARBURST(m_axi_mm_video_ARBURST),
    .m_axi_mm_video_ARLOCK(m_axi_mm_video_ARLOCK),
    .m_axi_mm_video_ARREGION(m_axi_mm_video_ARREGION),
    .m_axi_mm_video_ARCACHE(m_axi_mm_video_ARCACHE),
    .m_axi_mm_video_ARPROT(m_axi_mm_video_ARPROT),
    .m_axi_mm_video_ARQOS(m_axi_mm_video_ARQOS),
    .m_axi_mm_video_ARVALID(m_axi_mm_video_ARVALID),
    .m_axi_mm_video_ARREADY(m_axi_mm_video_ARREADY),
    .m_axi_mm_video_RDATA(m_axi_mm_video_RDATA),
    .m_axi_mm_video_RRESP(m_axi_mm_video_RRESP),
    .m_axi_mm_video_RLAST(m_axi_mm_video_RLAST),
    .m_axi_mm_video_RVALID(m_axi_mm_video_RVALID),
    .m_axi_mm_video_RREADY(m_axi_mm_video_RREADY),
    .s_axis_video_TVALID(s_axis_video_TVALID),
    .s_axis_video_TREADY(s_axis_video_TREADY),
    .s_axis_video_TDATA(s_axis_video_TDATA),
    .s_axis_video_TKEEP(s_axis_video_TKEEP),
    .s_axis_video_TSTRB(s_axis_video_TSTRB),
    .s_axis_video_TUSER(s_axis_video_TUSER),
    .s_axis_video_TLAST(s_axis_video_TLAST),
    .s_axis_video_TID(s_axis_video_TID),
    .s_axis_video_TDEST(s_axis_video_TDEST)
  );
endmodule
