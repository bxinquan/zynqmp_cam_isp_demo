// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec 17 00:31:32 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_vcu_0_0/design_1_vcu_0_0_stub.v
// Design      : design_1_vcu_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vcu_v1_2_6_vcu,Vivado 2022.1" *)
module design_1_vcu_0_0(s_axi_lite_aclk, vcu_resetn, pll_ref_clk, 
  pl_vcu_awaddr_axi_lite_apb, pl_vcu_awprot_axi_lite_apb, pl_vcu_awvalid_axi_lite_apb, 
  vcu_pl_awready_axi_lite_apb, pl_vcu_wdata_axi_lite_apb, pl_vcu_wstrb_axi_lite_apb, 
  pl_vcu_wvalid_axi_lite_apb, vcu_pl_wready_axi_lite_apb, vcu_pl_bresp_axi_lite_apb, 
  vcu_pl_bvalid_axi_lite_apb, pl_vcu_bready_axi_lite_apb, pl_vcu_araddr_axi_lite_apb, 
  pl_vcu_arprot_axi_lite_apb, pl_vcu_arvalid_axi_lite_apb, vcu_pl_arready_axi_lite_apb, 
  vcu_pl_rdata_axi_lite_apb, vcu_pl_rresp_axi_lite_apb, vcu_pl_rvalid_axi_lite_apb, 
  pl_vcu_rready_axi_lite_apb, m_axi_mcu_aclk, m_axi_enc_aclk, m_axi_dec_aclk, 
  vcu_host_interrupt, vcu_pl_mcu_m_axi_ic_dc_araddr, vcu_pl_mcu_m_axi_ic_dc_arburst, 
  vcu_pl_mcu_m_axi_ic_dc_arcache, vcu_pl_mcu_m_axi_ic_dc_arid, 
  vcu_pl_mcu_m_axi_ic_dc_arlen, vcu_pl_mcu_m_axi_ic_dc_arlock, 
  vcu_pl_mcu_m_axi_ic_dc_arprot, vcu_pl_mcu_m_axi_ic_dc_arqos, 
  pl_vcu_mcu_m_axi_ic_dc_arready, vcu_pl_mcu_m_axi_ic_dc_arsize, 
  vcu_pl_mcu_m_axi_ic_dc_arvalid, vcu_pl_mcu_m_axi_ic_dc_awaddr, 
  vcu_pl_mcu_m_axi_ic_dc_awburst, vcu_pl_mcu_m_axi_ic_dc_awcache, 
  vcu_pl_mcu_m_axi_ic_dc_awid, vcu_pl_mcu_m_axi_ic_dc_awlen, 
  vcu_pl_mcu_m_axi_ic_dc_awlock, vcu_pl_mcu_m_axi_ic_dc_awprot, 
  vcu_pl_mcu_m_axi_ic_dc_awqos, pl_vcu_mcu_m_axi_ic_dc_awready, 
  vcu_pl_mcu_m_axi_ic_dc_awsize, vcu_pl_mcu_m_axi_ic_dc_awvalid, 
  pl_vcu_mcu_m_axi_ic_dc_bid, vcu_pl_mcu_m_axi_ic_dc_bready, 
  pl_vcu_mcu_m_axi_ic_dc_bresp, pl_vcu_mcu_m_axi_ic_dc_bvalid, 
  pl_vcu_mcu_m_axi_ic_dc_rdata, pl_vcu_mcu_m_axi_ic_dc_rid, 
  pl_vcu_mcu_m_axi_ic_dc_rlast, vcu_pl_mcu_m_axi_ic_dc_rready, 
  pl_vcu_mcu_m_axi_ic_dc_rresp, pl_vcu_mcu_m_axi_ic_dc_rvalid, 
  vcu_pl_mcu_m_axi_ic_dc_wdata, vcu_pl_mcu_m_axi_ic_dc_wlast, 
  pl_vcu_mcu_m_axi_ic_dc_wready, vcu_pl_mcu_m_axi_ic_dc_wstrb, 
  vcu_pl_mcu_m_axi_ic_dc_wvalid, vcu_pl_enc_wstrb1, vcu_pl_enc_wstrb0, 
  vcu_pl_enc_awregion1, vcu_pl_enc_awregion0, vcu_pl_enc_arregion1, vcu_pl_enc_arregion0, 
  vcu_pl_dec_wstrb1, vcu_pl_dec_wstrb0, vcu_pl_dec_awregion1, vcu_pl_dec_awregion0, 
  vcu_pl_dec_arregion1, vcu_pl_dec_arregion0, vcu_pl_enc_awlock1, vcu_pl_enc_awlock0, 
  vcu_pl_enc_arlock1, vcu_pl_enc_arlock0, vcu_pl_dec_awlock1, vcu_pl_dec_awlock0, 
  vcu_pl_dec_arlock1, vcu_pl_dec_arlock0, vcu_pl_enc_araddr0, vcu_pl_enc_arburst0, 
  vcu_pl_enc_arid0, vcu_pl_enc_arlen0, pl_vcu_enc_arready0, vcu_pl_enc_arsize0, 
  vcu_pl_enc_arvalid0, vcu_pl_enc_awaddr0, vcu_pl_enc_awburst0, vcu_pl_enc_awid0, 
  vcu_pl_enc_awlen0, pl_vcu_enc_awready0, vcu_pl_enc_awsize0, vcu_pl_enc_awvalid0, 
  vcu_pl_enc_bready0, pl_vcu_enc_bvalid0, pl_vcu_enc_bid0, pl_vcu_enc_rdata0, 
  pl_vcu_enc_rid0, pl_vcu_enc_rlast0, vcu_pl_enc_rready0, pl_vcu_enc_rvalid0, 
  vcu_pl_enc_wdata0, vcu_pl_enc_wlast0, pl_vcu_enc_bresp0, pl_vcu_enc_rresp0, 
  pl_vcu_enc_wready0, vcu_pl_enc_wvalid0, vcu_pl_enc_awprot0, vcu_pl_enc_arprot0, 
  vcu_pl_enc_awcache0, vcu_pl_enc_arcache0, vcu_pl_enc_awqos0, vcu_pl_enc_arqos0, 
  vcu_pl_enc_araddr1, vcu_pl_enc_arburst1, vcu_pl_enc_arid1, vcu_pl_enc_arlen1, 
  pl_vcu_enc_arready1, vcu_pl_enc_arsize1, vcu_pl_enc_arvalid1, vcu_pl_enc_awaddr1, 
  vcu_pl_enc_awburst1, vcu_pl_enc_awid1, vcu_pl_enc_awlen1, pl_vcu_enc_awready1, 
  vcu_pl_enc_awsize1, vcu_pl_enc_awvalid1, vcu_pl_enc_bready1, pl_vcu_enc_bvalid1, 
  pl_vcu_enc_bid1, pl_vcu_enc_rdata1, pl_vcu_enc_rid1, pl_vcu_enc_rlast1, 
  vcu_pl_enc_rready1, pl_vcu_enc_rvalid1, vcu_pl_enc_wdata1, vcu_pl_enc_wlast1, 
  pl_vcu_enc_bresp1, pl_vcu_enc_rresp1, pl_vcu_enc_wready1, vcu_pl_enc_wvalid1, 
  vcu_pl_enc_awprot1, vcu_pl_enc_arprot1, vcu_pl_enc_awcache1, vcu_pl_enc_arcache1, 
  vcu_pl_enc_awqos1, vcu_pl_enc_arqos1, vcu_pl_dec_araddr0, vcu_pl_dec_arburst0, 
  vcu_pl_dec_arid0, vcu_pl_dec_arlen0, pl_vcu_dec_arready0, vcu_pl_dec_arsize0, 
  vcu_pl_dec_arvalid0, vcu_pl_dec_awaddr0, vcu_pl_dec_awburst0, vcu_pl_dec_awid0, 
  vcu_pl_dec_awlen0, pl_vcu_dec_awready0, vcu_pl_dec_awsize0, vcu_pl_dec_awvalid0, 
  vcu_pl_dec_bready0, pl_vcu_dec_bvalid0, pl_vcu_dec_bid0, pl_vcu_dec_rdata0, 
  pl_vcu_dec_rid0, pl_vcu_dec_rlast0, vcu_pl_dec_rready0, pl_vcu_dec_rvalid0, 
  vcu_pl_dec_wdata0, vcu_pl_dec_wlast0, pl_vcu_dec_bresp0, pl_vcu_dec_rresp0, 
  pl_vcu_dec_wready0, vcu_pl_dec_wvalid0, vcu_pl_dec_awprot0, vcu_pl_dec_arprot0, 
  vcu_pl_dec_awcache0, vcu_pl_dec_arcache0, vcu_pl_dec_awqos0, vcu_pl_dec_arqos0, 
  vcu_pl_dec_araddr1, vcu_pl_dec_arburst1, vcu_pl_dec_arid1, vcu_pl_dec_arlen1, 
  pl_vcu_dec_arready1, vcu_pl_dec_arsize1, vcu_pl_dec_arvalid1, vcu_pl_dec_awaddr1, 
  vcu_pl_dec_awburst1, vcu_pl_dec_awid1, vcu_pl_dec_awlen1, pl_vcu_dec_awready1, 
  vcu_pl_dec_awsize1, vcu_pl_dec_awvalid1, vcu_pl_dec_bready1, pl_vcu_dec_bvalid1, 
  pl_vcu_dec_bid1, pl_vcu_dec_rdata1, pl_vcu_dec_rid1, pl_vcu_dec_rlast1, 
  vcu_pl_dec_rready1, pl_vcu_dec_rvalid1, vcu_pl_dec_wdata1, vcu_pl_dec_wlast1, 
  pl_vcu_dec_bresp1, pl_vcu_dec_rresp1, pl_vcu_dec_wready1, vcu_pl_dec_wvalid1, 
  vcu_pl_dec_awprot1, vcu_pl_dec_arprot1, vcu_pl_dec_awcache1, vcu_pl_dec_arcache1, 
  vcu_pl_dec_awqos1, vcu_pl_dec_arqos1)
/* synthesis syn_black_box black_box_pad_pin="s_axi_lite_aclk,vcu_resetn,pll_ref_clk,pl_vcu_awaddr_axi_lite_apb[19:0],pl_vcu_awprot_axi_lite_apb[2:0],pl_vcu_awvalid_axi_lite_apb[0:0],vcu_pl_awready_axi_lite_apb[0:0],pl_vcu_wdata_axi_lite_apb[31:0],pl_vcu_wstrb_axi_lite_apb[3:0],pl_vcu_wvalid_axi_lite_apb[0:0],vcu_pl_wready_axi_lite_apb[0:0],vcu_pl_bresp_axi_lite_apb[1:0],vcu_pl_bvalid_axi_lite_apb[0:0],pl_vcu_bready_axi_lite_apb[0:0],pl_vcu_araddr_axi_lite_apb[19:0],pl_vcu_arprot_axi_lite_apb[2:0],pl_vcu_arvalid_axi_lite_apb[0:0],vcu_pl_arready_axi_lite_apb[0:0],vcu_pl_rdata_axi_lite_apb[31:0],vcu_pl_rresp_axi_lite_apb[1:0],vcu_pl_rvalid_axi_lite_apb[0:0],pl_vcu_rready_axi_lite_apb[0:0],m_axi_mcu_aclk,m_axi_enc_aclk,m_axi_dec_aclk,vcu_host_interrupt,vcu_pl_mcu_m_axi_ic_dc_araddr[43:0],vcu_pl_mcu_m_axi_ic_dc_arburst[1:0],vcu_pl_mcu_m_axi_ic_dc_arcache[3:0],vcu_pl_mcu_m_axi_ic_dc_arid[2:0],vcu_pl_mcu_m_axi_ic_dc_arlen[7:0],vcu_pl_mcu_m_axi_ic_dc_arlock,vcu_pl_mcu_m_axi_ic_dc_arprot[2:0],vcu_pl_mcu_m_axi_ic_dc_arqos[3:0],pl_vcu_mcu_m_axi_ic_dc_arready,vcu_pl_mcu_m_axi_ic_dc_arsize[2:0],vcu_pl_mcu_m_axi_ic_dc_arvalid,vcu_pl_mcu_m_axi_ic_dc_awaddr[43:0],vcu_pl_mcu_m_axi_ic_dc_awburst[1:0],vcu_pl_mcu_m_axi_ic_dc_awcache[3:0],vcu_pl_mcu_m_axi_ic_dc_awid[2:0],vcu_pl_mcu_m_axi_ic_dc_awlen[7:0],vcu_pl_mcu_m_axi_ic_dc_awlock,vcu_pl_mcu_m_axi_ic_dc_awprot[2:0],vcu_pl_mcu_m_axi_ic_dc_awqos[3:0],pl_vcu_mcu_m_axi_ic_dc_awready,vcu_pl_mcu_m_axi_ic_dc_awsize[2:0],vcu_pl_mcu_m_axi_ic_dc_awvalid,pl_vcu_mcu_m_axi_ic_dc_bid[2:0],vcu_pl_mcu_m_axi_ic_dc_bready,pl_vcu_mcu_m_axi_ic_dc_bresp[1:0],pl_vcu_mcu_m_axi_ic_dc_bvalid,pl_vcu_mcu_m_axi_ic_dc_rdata[31:0],pl_vcu_mcu_m_axi_ic_dc_rid[2:0],pl_vcu_mcu_m_axi_ic_dc_rlast,vcu_pl_mcu_m_axi_ic_dc_rready,pl_vcu_mcu_m_axi_ic_dc_rresp[1:0],pl_vcu_mcu_m_axi_ic_dc_rvalid,vcu_pl_mcu_m_axi_ic_dc_wdata[31:0],vcu_pl_mcu_m_axi_ic_dc_wlast,pl_vcu_mcu_m_axi_ic_dc_wready,vcu_pl_mcu_m_axi_ic_dc_wstrb[3:0],vcu_pl_mcu_m_axi_ic_dc_wvalid,vcu_pl_enc_wstrb1[15:0],vcu_pl_enc_wstrb0[15:0],vcu_pl_enc_awregion1[3:0],vcu_pl_enc_awregion0[3:0],vcu_pl_enc_arregion1[3:0],vcu_pl_enc_arregion0[3:0],vcu_pl_dec_wstrb1[15:0],vcu_pl_dec_wstrb0[15:0],vcu_pl_dec_awregion1[3:0],vcu_pl_dec_awregion0[3:0],vcu_pl_dec_arregion1[3:0],vcu_pl_dec_arregion0[3:0],vcu_pl_enc_awlock1,vcu_pl_enc_awlock0,vcu_pl_enc_arlock1,vcu_pl_enc_arlock0,vcu_pl_dec_awlock1,vcu_pl_dec_awlock0,vcu_pl_dec_arlock1,vcu_pl_dec_arlock0,vcu_pl_enc_araddr0[43:0],vcu_pl_enc_arburst0[1:0],vcu_pl_enc_arid0[3:0],vcu_pl_enc_arlen0[7:0],pl_vcu_enc_arready0,vcu_pl_enc_arsize0[2:0],vcu_pl_enc_arvalid0,vcu_pl_enc_awaddr0[43:0],vcu_pl_enc_awburst0[1:0],vcu_pl_enc_awid0[3:0],vcu_pl_enc_awlen0[7:0],pl_vcu_enc_awready0,vcu_pl_enc_awsize0[2:0],vcu_pl_enc_awvalid0,vcu_pl_enc_bready0,pl_vcu_enc_bvalid0,pl_vcu_enc_bid0[3:0],pl_vcu_enc_rdata0[127:0],pl_vcu_enc_rid0[3:0],pl_vcu_enc_rlast0,vcu_pl_enc_rready0,pl_vcu_enc_rvalid0,vcu_pl_enc_wdata0[127:0],vcu_pl_enc_wlast0,pl_vcu_enc_bresp0[1:0],pl_vcu_enc_rresp0[1:0],pl_vcu_enc_wready0,vcu_pl_enc_wvalid0,vcu_pl_enc_awprot0[2:0],vcu_pl_enc_arprot0[2:0],vcu_pl_enc_awcache0[3:0],vcu_pl_enc_arcache0[3:0],vcu_pl_enc_awqos0[3:0],vcu_pl_enc_arqos0[3:0],vcu_pl_enc_araddr1[43:0],vcu_pl_enc_arburst1[1:0],vcu_pl_enc_arid1[3:0],vcu_pl_enc_arlen1[7:0],pl_vcu_enc_arready1,vcu_pl_enc_arsize1[2:0],vcu_pl_enc_arvalid1,vcu_pl_enc_awaddr1[43:0],vcu_pl_enc_awburst1[1:0],vcu_pl_enc_awid1[3:0],vcu_pl_enc_awlen1[7:0],pl_vcu_enc_awready1,vcu_pl_enc_awsize1[2:0],vcu_pl_enc_awvalid1,vcu_pl_enc_bready1,pl_vcu_enc_bvalid1,pl_vcu_enc_bid1[3:0],pl_vcu_enc_rdata1[127:0],pl_vcu_enc_rid1[3:0],pl_vcu_enc_rlast1,vcu_pl_enc_rready1,pl_vcu_enc_rvalid1,vcu_pl_enc_wdata1[127:0],vcu_pl_enc_wlast1,pl_vcu_enc_bresp1[1:0],pl_vcu_enc_rresp1[1:0],pl_vcu_enc_wready1,vcu_pl_enc_wvalid1,vcu_pl_enc_awprot1[2:0],vcu_pl_enc_arprot1[2:0],vcu_pl_enc_awcache1[3:0],vcu_pl_enc_arcache1[3:0],vcu_pl_enc_awqos1[3:0],vcu_pl_enc_arqos1[3:0],vcu_pl_dec_araddr0[43:0],vcu_pl_dec_arburst0[1:0],vcu_pl_dec_arid0[3:0],vcu_pl_dec_arlen0[7:0],pl_vcu_dec_arready0,vcu_pl_dec_arsize0[2:0],vcu_pl_dec_arvalid0,vcu_pl_dec_awaddr0[43:0],vcu_pl_dec_awburst0[1:0],vcu_pl_dec_awid0[3:0],vcu_pl_dec_awlen0[7:0],pl_vcu_dec_awready0,vcu_pl_dec_awsize0[2:0],vcu_pl_dec_awvalid0,vcu_pl_dec_bready0,pl_vcu_dec_bvalid0,pl_vcu_dec_bid0[3:0],pl_vcu_dec_rdata0[127:0],pl_vcu_dec_rid0[3:0],pl_vcu_dec_rlast0,vcu_pl_dec_rready0,pl_vcu_dec_rvalid0,vcu_pl_dec_wdata0[127:0],vcu_pl_dec_wlast0,pl_vcu_dec_bresp0[1:0],pl_vcu_dec_rresp0[1:0],pl_vcu_dec_wready0,vcu_pl_dec_wvalid0,vcu_pl_dec_awprot0[2:0],vcu_pl_dec_arprot0[2:0],vcu_pl_dec_awcache0[3:0],vcu_pl_dec_arcache0[3:0],vcu_pl_dec_awqos0[3:0],vcu_pl_dec_arqos0[3:0],vcu_pl_dec_araddr1[43:0],vcu_pl_dec_arburst1[1:0],vcu_pl_dec_arid1[3:0],vcu_pl_dec_arlen1[7:0],pl_vcu_dec_arready1[0:0],vcu_pl_dec_arsize1[2:0],vcu_pl_dec_arvalid1,vcu_pl_dec_awaddr1[43:0],vcu_pl_dec_awburst1[1:0],vcu_pl_dec_awid1[3:0],vcu_pl_dec_awlen1[7:0],pl_vcu_dec_awready1[0:0],vcu_pl_dec_awsize1[2:0],vcu_pl_dec_awvalid1,vcu_pl_dec_bready1,pl_vcu_dec_bvalid1[0:0],pl_vcu_dec_bid1[3:0],pl_vcu_dec_rdata1[127:0],pl_vcu_dec_rid1[3:0],pl_vcu_dec_rlast1,vcu_pl_dec_rready1,pl_vcu_dec_rvalid1,vcu_pl_dec_wdata1[127:0],vcu_pl_dec_wlast1,pl_vcu_dec_bresp1[1:0],pl_vcu_dec_rresp1[1:0],pl_vcu_dec_wready1,vcu_pl_dec_wvalid1,vcu_pl_dec_awprot1[2:0],vcu_pl_dec_arprot1[2:0],vcu_pl_dec_awcache1[3:0],vcu_pl_dec_arcache1[3:0],vcu_pl_dec_awqos1[3:0],vcu_pl_dec_arqos1[3:0]" */;
  input s_axi_lite_aclk;
  input vcu_resetn;
  input pll_ref_clk;
  input [19:0]pl_vcu_awaddr_axi_lite_apb;
  input [2:0]pl_vcu_awprot_axi_lite_apb;
  input [0:0]pl_vcu_awvalid_axi_lite_apb;
  output [0:0]vcu_pl_awready_axi_lite_apb;
  input [31:0]pl_vcu_wdata_axi_lite_apb;
  input [3:0]pl_vcu_wstrb_axi_lite_apb;
  input [0:0]pl_vcu_wvalid_axi_lite_apb;
  output [0:0]vcu_pl_wready_axi_lite_apb;
  output [1:0]vcu_pl_bresp_axi_lite_apb;
  output [0:0]vcu_pl_bvalid_axi_lite_apb;
  input [0:0]pl_vcu_bready_axi_lite_apb;
  input [19:0]pl_vcu_araddr_axi_lite_apb;
  input [2:0]pl_vcu_arprot_axi_lite_apb;
  input [0:0]pl_vcu_arvalid_axi_lite_apb;
  output [0:0]vcu_pl_arready_axi_lite_apb;
  output [31:0]vcu_pl_rdata_axi_lite_apb;
  output [1:0]vcu_pl_rresp_axi_lite_apb;
  output [0:0]vcu_pl_rvalid_axi_lite_apb;
  input [0:0]pl_vcu_rready_axi_lite_apb;
  input m_axi_mcu_aclk;
  input m_axi_enc_aclk;
  input m_axi_dec_aclk;
  output vcu_host_interrupt;
  output [43:0]vcu_pl_mcu_m_axi_ic_dc_araddr;
  output [1:0]vcu_pl_mcu_m_axi_ic_dc_arburst;
  output [3:0]vcu_pl_mcu_m_axi_ic_dc_arcache;
  output [2:0]vcu_pl_mcu_m_axi_ic_dc_arid;
  output [7:0]vcu_pl_mcu_m_axi_ic_dc_arlen;
  output vcu_pl_mcu_m_axi_ic_dc_arlock;
  output [2:0]vcu_pl_mcu_m_axi_ic_dc_arprot;
  output [3:0]vcu_pl_mcu_m_axi_ic_dc_arqos;
  input pl_vcu_mcu_m_axi_ic_dc_arready;
  output [2:0]vcu_pl_mcu_m_axi_ic_dc_arsize;
  output vcu_pl_mcu_m_axi_ic_dc_arvalid;
  output [43:0]vcu_pl_mcu_m_axi_ic_dc_awaddr;
  output [1:0]vcu_pl_mcu_m_axi_ic_dc_awburst;
  output [3:0]vcu_pl_mcu_m_axi_ic_dc_awcache;
  output [2:0]vcu_pl_mcu_m_axi_ic_dc_awid;
  output [7:0]vcu_pl_mcu_m_axi_ic_dc_awlen;
  output vcu_pl_mcu_m_axi_ic_dc_awlock;
  output [2:0]vcu_pl_mcu_m_axi_ic_dc_awprot;
  output [3:0]vcu_pl_mcu_m_axi_ic_dc_awqos;
  input pl_vcu_mcu_m_axi_ic_dc_awready;
  output [2:0]vcu_pl_mcu_m_axi_ic_dc_awsize;
  output vcu_pl_mcu_m_axi_ic_dc_awvalid;
  input [2:0]pl_vcu_mcu_m_axi_ic_dc_bid;
  output vcu_pl_mcu_m_axi_ic_dc_bready;
  input [1:0]pl_vcu_mcu_m_axi_ic_dc_bresp;
  input pl_vcu_mcu_m_axi_ic_dc_bvalid;
  input [31:0]pl_vcu_mcu_m_axi_ic_dc_rdata;
  input [2:0]pl_vcu_mcu_m_axi_ic_dc_rid;
  input pl_vcu_mcu_m_axi_ic_dc_rlast;
  output vcu_pl_mcu_m_axi_ic_dc_rready;
  input [1:0]pl_vcu_mcu_m_axi_ic_dc_rresp;
  input pl_vcu_mcu_m_axi_ic_dc_rvalid;
  output [31:0]vcu_pl_mcu_m_axi_ic_dc_wdata;
  output vcu_pl_mcu_m_axi_ic_dc_wlast;
  input pl_vcu_mcu_m_axi_ic_dc_wready;
  output [3:0]vcu_pl_mcu_m_axi_ic_dc_wstrb;
  output vcu_pl_mcu_m_axi_ic_dc_wvalid;
  output [15:0]vcu_pl_enc_wstrb1;
  output [15:0]vcu_pl_enc_wstrb0;
  output [3:0]vcu_pl_enc_awregion1;
  output [3:0]vcu_pl_enc_awregion0;
  output [3:0]vcu_pl_enc_arregion1;
  output [3:0]vcu_pl_enc_arregion0;
  output [15:0]vcu_pl_dec_wstrb1;
  output [15:0]vcu_pl_dec_wstrb0;
  output [3:0]vcu_pl_dec_awregion1;
  output [3:0]vcu_pl_dec_awregion0;
  output [3:0]vcu_pl_dec_arregion1;
  output [3:0]vcu_pl_dec_arregion0;
  output vcu_pl_enc_awlock1;
  output vcu_pl_enc_awlock0;
  output vcu_pl_enc_arlock1;
  output vcu_pl_enc_arlock0;
  output vcu_pl_dec_awlock1;
  output vcu_pl_dec_awlock0;
  output vcu_pl_dec_arlock1;
  output vcu_pl_dec_arlock0;
  output [43:0]vcu_pl_enc_araddr0;
  output [1:0]vcu_pl_enc_arburst0;
  output [3:0]vcu_pl_enc_arid0;
  output [7:0]vcu_pl_enc_arlen0;
  input pl_vcu_enc_arready0;
  output [2:0]vcu_pl_enc_arsize0;
  output vcu_pl_enc_arvalid0;
  output [43:0]vcu_pl_enc_awaddr0;
  output [1:0]vcu_pl_enc_awburst0;
  output [3:0]vcu_pl_enc_awid0;
  output [7:0]vcu_pl_enc_awlen0;
  input pl_vcu_enc_awready0;
  output [2:0]vcu_pl_enc_awsize0;
  output vcu_pl_enc_awvalid0;
  output vcu_pl_enc_bready0;
  input pl_vcu_enc_bvalid0;
  input [3:0]pl_vcu_enc_bid0;
  input [127:0]pl_vcu_enc_rdata0;
  input [3:0]pl_vcu_enc_rid0;
  input pl_vcu_enc_rlast0;
  output vcu_pl_enc_rready0;
  input pl_vcu_enc_rvalid0;
  output [127:0]vcu_pl_enc_wdata0;
  output vcu_pl_enc_wlast0;
  input [1:0]pl_vcu_enc_bresp0;
  input [1:0]pl_vcu_enc_rresp0;
  input pl_vcu_enc_wready0;
  output vcu_pl_enc_wvalid0;
  output [2:0]vcu_pl_enc_awprot0;
  output [2:0]vcu_pl_enc_arprot0;
  output [3:0]vcu_pl_enc_awcache0;
  output [3:0]vcu_pl_enc_arcache0;
  output [3:0]vcu_pl_enc_awqos0;
  output [3:0]vcu_pl_enc_arqos0;
  output [43:0]vcu_pl_enc_araddr1;
  output [1:0]vcu_pl_enc_arburst1;
  output [3:0]vcu_pl_enc_arid1;
  output [7:0]vcu_pl_enc_arlen1;
  input pl_vcu_enc_arready1;
  output [2:0]vcu_pl_enc_arsize1;
  output vcu_pl_enc_arvalid1;
  output [43:0]vcu_pl_enc_awaddr1;
  output [1:0]vcu_pl_enc_awburst1;
  output [3:0]vcu_pl_enc_awid1;
  output [7:0]vcu_pl_enc_awlen1;
  input pl_vcu_enc_awready1;
  output [2:0]vcu_pl_enc_awsize1;
  output vcu_pl_enc_awvalid1;
  output vcu_pl_enc_bready1;
  input pl_vcu_enc_bvalid1;
  input [3:0]pl_vcu_enc_bid1;
  input [127:0]pl_vcu_enc_rdata1;
  input [3:0]pl_vcu_enc_rid1;
  input pl_vcu_enc_rlast1;
  output vcu_pl_enc_rready1;
  input pl_vcu_enc_rvalid1;
  output [127:0]vcu_pl_enc_wdata1;
  output vcu_pl_enc_wlast1;
  input [1:0]pl_vcu_enc_bresp1;
  input [1:0]pl_vcu_enc_rresp1;
  input pl_vcu_enc_wready1;
  output vcu_pl_enc_wvalid1;
  output [2:0]vcu_pl_enc_awprot1;
  output [2:0]vcu_pl_enc_arprot1;
  output [3:0]vcu_pl_enc_awcache1;
  output [3:0]vcu_pl_enc_arcache1;
  output [3:0]vcu_pl_enc_awqos1;
  output [3:0]vcu_pl_enc_arqos1;
  output [43:0]vcu_pl_dec_araddr0;
  output [1:0]vcu_pl_dec_arburst0;
  output [3:0]vcu_pl_dec_arid0;
  output [7:0]vcu_pl_dec_arlen0;
  input pl_vcu_dec_arready0;
  output [2:0]vcu_pl_dec_arsize0;
  output vcu_pl_dec_arvalid0;
  output [43:0]vcu_pl_dec_awaddr0;
  output [1:0]vcu_pl_dec_awburst0;
  output [3:0]vcu_pl_dec_awid0;
  output [7:0]vcu_pl_dec_awlen0;
  input pl_vcu_dec_awready0;
  output [2:0]vcu_pl_dec_awsize0;
  output vcu_pl_dec_awvalid0;
  output vcu_pl_dec_bready0;
  input pl_vcu_dec_bvalid0;
  input [3:0]pl_vcu_dec_bid0;
  input [127:0]pl_vcu_dec_rdata0;
  input [3:0]pl_vcu_dec_rid0;
  input pl_vcu_dec_rlast0;
  output vcu_pl_dec_rready0;
  input pl_vcu_dec_rvalid0;
  output [127:0]vcu_pl_dec_wdata0;
  output vcu_pl_dec_wlast0;
  input [1:0]pl_vcu_dec_bresp0;
  input [1:0]pl_vcu_dec_rresp0;
  input pl_vcu_dec_wready0;
  output vcu_pl_dec_wvalid0;
  output [2:0]vcu_pl_dec_awprot0;
  output [2:0]vcu_pl_dec_arprot0;
  output [3:0]vcu_pl_dec_awcache0;
  output [3:0]vcu_pl_dec_arcache0;
  output [3:0]vcu_pl_dec_awqos0;
  output [3:0]vcu_pl_dec_arqos0;
  output [43:0]vcu_pl_dec_araddr1;
  output [1:0]vcu_pl_dec_arburst1;
  output [3:0]vcu_pl_dec_arid1;
  output [7:0]vcu_pl_dec_arlen1;
  input [0:0]pl_vcu_dec_arready1;
  output [2:0]vcu_pl_dec_arsize1;
  output vcu_pl_dec_arvalid1;
  output [43:0]vcu_pl_dec_awaddr1;
  output [1:0]vcu_pl_dec_awburst1;
  output [3:0]vcu_pl_dec_awid1;
  output [7:0]vcu_pl_dec_awlen1;
  input [0:0]pl_vcu_dec_awready1;
  output [2:0]vcu_pl_dec_awsize1;
  output vcu_pl_dec_awvalid1;
  output vcu_pl_dec_bready1;
  input [0:0]pl_vcu_dec_bvalid1;
  input [3:0]pl_vcu_dec_bid1;
  input [127:0]pl_vcu_dec_rdata1;
  input [3:0]pl_vcu_dec_rid1;
  input pl_vcu_dec_rlast1;
  output vcu_pl_dec_rready1;
  input pl_vcu_dec_rvalid1;
  output [127:0]vcu_pl_dec_wdata1;
  output vcu_pl_dec_wlast1;
  input [1:0]pl_vcu_dec_bresp1;
  input [1:0]pl_vcu_dec_rresp1;
  input pl_vcu_dec_wready1;
  output vcu_pl_dec_wvalid1;
  output [2:0]vcu_pl_dec_awprot1;
  output [2:0]vcu_pl_dec_arprot1;
  output [3:0]vcu_pl_dec_awcache1;
  output [3:0]vcu_pl_dec_arcache1;
  output [3:0]vcu_pl_dec_awqos1;
  output [3:0]vcu_pl_dec_arqos1;
endmodule
