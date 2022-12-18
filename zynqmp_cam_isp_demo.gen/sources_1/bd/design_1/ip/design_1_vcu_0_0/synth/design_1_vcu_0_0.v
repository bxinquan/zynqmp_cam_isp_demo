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


// IP VLNV: xilinx.com:ip:vcu:1.2
// IP Revision: 6

(* X_CORE_INFO = "vcu_v1_2_6_vcu,Vivado 2022.1" *)
(* CHECK_LICENSE_TYPE = "design_1_vcu_0_0,vcu_v1_2_6_vcu,{}" *)
(* CORE_GENERATION_INFO = "design_1_vcu_0_0,vcu_v1_2_6_vcu,{x_ipProduct=Vivado 2022.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=vcu,x_ipVersion=1.2,x_ipCoreRevision=6,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,ENABLEENCODER=TRUE,ENABLEDECODER=TRUE,ENCODERCODING=H.265,DECODERCODING=H.265,ENCODERCODINGTYPE=INTRA_ONLY,DECODERCODINGTYPE=INTRA_ONLY,ENCHORRESOLUTION=3840,ENCVERRESOLUTION=2160,DECHORRESOLUTION=3840,DECVERRESOLUTION=2160,ENCODERCOLORDEPTH=10,DECODERCOLORDEPTH=10,ENCODERCHROMAFORMAT=4_2_2,DECODERCHROMAFORMAT=4\
_2_2,CORECLKFREQ=667,ENCODERNUMCORES=4,DECODERNUMCORES=2,HDL_TEST_PORT_EN=0,HDL_VCU_TEST_EN=0,HDL_ENCODER_EN=1,HDL_NUM_STREAMS=0,HDL_MAX_NUM_CORES=0,HDL_NUM_CONCURRENT_STREAMS=0,HDL_VIDEO_STANDARD=0,HDL_CODING_TYPE=1,HDL_FRAME_SIZE_X=3840,HDL_FRAME_SIZE_Y=2160,HDL_FPS=60,HDL_COLOR_DEPTH=0,HDL_COLOR_FORMAT=0,HDL_ENC_BUFFER_EN=1,HDL_RAM_TYPE=0,HDL_DECODER_EN=1,HDL_DEC_VIDEO_STANDARD=0,HDL_DEC_FRAME_SIZE_X=3840,HDL_DEC_FRAME_SIZE_Y=2160,HDL_DEC_FPS=60,HDL_DEC_CODING_TYPE=1,HDL_DEC_COLOR_DEPTH=0,HDL\
_DEC_COLOR_FORMAT=0,HDL_ENC_BUFFER_MANUAL_OVERRIDE=0,HDL_ENC_BUFFER_MOTION_VEC_RANGE=0,HDL_ENC_BUFFER_B_FRAME=0,HDL_WPP_EN=0,HDL_MEM_DEPTH=11168,HDL_TABLE_NO=2,HDL_PLL_BYPASS=0,HDL_MCU_CLK=444,HDL_CORE_CLK=667,HDL_ENC_CLK=0,HDL_PLL_CLK_HI=33,HDL_PLL_CLK_LO=32,HDL_AXI_ENC_CLK=0,HDL_AXI_DEC_CLK=0,HDL_AXI_MCU_CLK=1077894184,HDL_AXI_ENC_BASE0=0,HDL_AXI_ENC_BASE1=0,HDL_AXI_DEC_BASE0=0,HDL_AXI_DEC_BASE1=0,HDL_AXI_MCU_BASE=0,HDL_AXI_ENC_RANGE0=0,HDL_AXI_ENC_RANGE1=0,HDL_AXI_DEC_RANGE0=0,HDL_AXI_DEC_RAN\
GE1=0,HDL_AXI_MCU_RANGE=0,C_VCU_AXILITEAPB_DATA_WIDTH=32,C_VCU_ENC0_DATA_WIDTH=128,C_VCU_ENC1_DATA_WIDTH=128,C_VCU_DEC0_DATA_WIDTH=128,C_VCU_DEC1_DATA_WIDTH=128,C_VCU_MCU_DATA_WIDTH=32}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_vcu_0_0 (
  s_axi_lite_aclk,
  vcu_resetn,
  pll_ref_clk,
  pl_vcu_awaddr_axi_lite_apb,
  pl_vcu_awprot_axi_lite_apb,
  pl_vcu_awvalid_axi_lite_apb,
  vcu_pl_awready_axi_lite_apb,
  pl_vcu_wdata_axi_lite_apb,
  pl_vcu_wstrb_axi_lite_apb,
  pl_vcu_wvalid_axi_lite_apb,
  vcu_pl_wready_axi_lite_apb,
  vcu_pl_bresp_axi_lite_apb,
  vcu_pl_bvalid_axi_lite_apb,
  pl_vcu_bready_axi_lite_apb,
  pl_vcu_araddr_axi_lite_apb,
  pl_vcu_arprot_axi_lite_apb,
  pl_vcu_arvalid_axi_lite_apb,
  vcu_pl_arready_axi_lite_apb,
  vcu_pl_rdata_axi_lite_apb,
  vcu_pl_rresp_axi_lite_apb,
  vcu_pl_rvalid_axi_lite_apb,
  pl_vcu_rready_axi_lite_apb,
  m_axi_mcu_aclk,
  m_axi_enc_aclk,
  m_axi_dec_aclk,
  vcu_host_interrupt,
  vcu_pl_mcu_m_axi_ic_dc_araddr,
  vcu_pl_mcu_m_axi_ic_dc_arburst,
  vcu_pl_mcu_m_axi_ic_dc_arcache,
  vcu_pl_mcu_m_axi_ic_dc_arid,
  vcu_pl_mcu_m_axi_ic_dc_arlen,
  vcu_pl_mcu_m_axi_ic_dc_arlock,
  vcu_pl_mcu_m_axi_ic_dc_arprot,
  vcu_pl_mcu_m_axi_ic_dc_arqos,
  pl_vcu_mcu_m_axi_ic_dc_arready,
  vcu_pl_mcu_m_axi_ic_dc_arsize,
  vcu_pl_mcu_m_axi_ic_dc_arvalid,
  vcu_pl_mcu_m_axi_ic_dc_awaddr,
  vcu_pl_mcu_m_axi_ic_dc_awburst,
  vcu_pl_mcu_m_axi_ic_dc_awcache,
  vcu_pl_mcu_m_axi_ic_dc_awid,
  vcu_pl_mcu_m_axi_ic_dc_awlen,
  vcu_pl_mcu_m_axi_ic_dc_awlock,
  vcu_pl_mcu_m_axi_ic_dc_awprot,
  vcu_pl_mcu_m_axi_ic_dc_awqos,
  pl_vcu_mcu_m_axi_ic_dc_awready,
  vcu_pl_mcu_m_axi_ic_dc_awsize,
  vcu_pl_mcu_m_axi_ic_dc_awvalid,
  pl_vcu_mcu_m_axi_ic_dc_bid,
  vcu_pl_mcu_m_axi_ic_dc_bready,
  pl_vcu_mcu_m_axi_ic_dc_bresp,
  pl_vcu_mcu_m_axi_ic_dc_bvalid,
  pl_vcu_mcu_m_axi_ic_dc_rdata,
  pl_vcu_mcu_m_axi_ic_dc_rid,
  pl_vcu_mcu_m_axi_ic_dc_rlast,
  vcu_pl_mcu_m_axi_ic_dc_rready,
  pl_vcu_mcu_m_axi_ic_dc_rresp,
  pl_vcu_mcu_m_axi_ic_dc_rvalid,
  vcu_pl_mcu_m_axi_ic_dc_wdata,
  vcu_pl_mcu_m_axi_ic_dc_wlast,
  pl_vcu_mcu_m_axi_ic_dc_wready,
  vcu_pl_mcu_m_axi_ic_dc_wstrb,
  vcu_pl_mcu_m_axi_ic_dc_wvalid,
  vcu_pl_enc_wstrb1,
  vcu_pl_enc_wstrb0,
  vcu_pl_enc_awregion1,
  vcu_pl_enc_awregion0,
  vcu_pl_enc_arregion1,
  vcu_pl_enc_arregion0,
  vcu_pl_dec_wstrb1,
  vcu_pl_dec_wstrb0,
  vcu_pl_dec_awregion1,
  vcu_pl_dec_awregion0,
  vcu_pl_dec_arregion1,
  vcu_pl_dec_arregion0,
  vcu_pl_enc_awlock1,
  vcu_pl_enc_awlock0,
  vcu_pl_enc_arlock1,
  vcu_pl_enc_arlock0,
  vcu_pl_dec_awlock1,
  vcu_pl_dec_awlock0,
  vcu_pl_dec_arlock1,
  vcu_pl_dec_arlock0,
  vcu_pl_enc_araddr0,
  vcu_pl_enc_arburst0,
  vcu_pl_enc_arid0,
  vcu_pl_enc_arlen0,
  pl_vcu_enc_arready0,
  vcu_pl_enc_arsize0,
  vcu_pl_enc_arvalid0,
  vcu_pl_enc_awaddr0,
  vcu_pl_enc_awburst0,
  vcu_pl_enc_awid0,
  vcu_pl_enc_awlen0,
  pl_vcu_enc_awready0,
  vcu_pl_enc_awsize0,
  vcu_pl_enc_awvalid0,
  vcu_pl_enc_bready0,
  pl_vcu_enc_bvalid0,
  pl_vcu_enc_bid0,
  pl_vcu_enc_rdata0,
  pl_vcu_enc_rid0,
  pl_vcu_enc_rlast0,
  vcu_pl_enc_rready0,
  pl_vcu_enc_rvalid0,
  vcu_pl_enc_wdata0,
  vcu_pl_enc_wlast0,
  pl_vcu_enc_bresp0,
  pl_vcu_enc_rresp0,
  pl_vcu_enc_wready0,
  vcu_pl_enc_wvalid0,
  vcu_pl_enc_awprot0,
  vcu_pl_enc_arprot0,
  vcu_pl_enc_awcache0,
  vcu_pl_enc_arcache0,
  vcu_pl_enc_awqos0,
  vcu_pl_enc_arqos0,
  vcu_pl_enc_araddr1,
  vcu_pl_enc_arburst1,
  vcu_pl_enc_arid1,
  vcu_pl_enc_arlen1,
  pl_vcu_enc_arready1,
  vcu_pl_enc_arsize1,
  vcu_pl_enc_arvalid1,
  vcu_pl_enc_awaddr1,
  vcu_pl_enc_awburst1,
  vcu_pl_enc_awid1,
  vcu_pl_enc_awlen1,
  pl_vcu_enc_awready1,
  vcu_pl_enc_awsize1,
  vcu_pl_enc_awvalid1,
  vcu_pl_enc_bready1,
  pl_vcu_enc_bvalid1,
  pl_vcu_enc_bid1,
  pl_vcu_enc_rdata1,
  pl_vcu_enc_rid1,
  pl_vcu_enc_rlast1,
  vcu_pl_enc_rready1,
  pl_vcu_enc_rvalid1,
  vcu_pl_enc_wdata1,
  vcu_pl_enc_wlast1,
  pl_vcu_enc_bresp1,
  pl_vcu_enc_rresp1,
  pl_vcu_enc_wready1,
  vcu_pl_enc_wvalid1,
  vcu_pl_enc_awprot1,
  vcu_pl_enc_arprot1,
  vcu_pl_enc_awcache1,
  vcu_pl_enc_arcache1,
  vcu_pl_enc_awqos1,
  vcu_pl_enc_arqos1,
  vcu_pl_dec_araddr0,
  vcu_pl_dec_arburst0,
  vcu_pl_dec_arid0,
  vcu_pl_dec_arlen0,
  pl_vcu_dec_arready0,
  vcu_pl_dec_arsize0,
  vcu_pl_dec_arvalid0,
  vcu_pl_dec_awaddr0,
  vcu_pl_dec_awburst0,
  vcu_pl_dec_awid0,
  vcu_pl_dec_awlen0,
  pl_vcu_dec_awready0,
  vcu_pl_dec_awsize0,
  vcu_pl_dec_awvalid0,
  vcu_pl_dec_bready0,
  pl_vcu_dec_bvalid0,
  pl_vcu_dec_bid0,
  pl_vcu_dec_rdata0,
  pl_vcu_dec_rid0,
  pl_vcu_dec_rlast0,
  vcu_pl_dec_rready0,
  pl_vcu_dec_rvalid0,
  vcu_pl_dec_wdata0,
  vcu_pl_dec_wlast0,
  pl_vcu_dec_bresp0,
  pl_vcu_dec_rresp0,
  pl_vcu_dec_wready0,
  vcu_pl_dec_wvalid0,
  vcu_pl_dec_awprot0,
  vcu_pl_dec_arprot0,
  vcu_pl_dec_awcache0,
  vcu_pl_dec_arcache0,
  vcu_pl_dec_awqos0,
  vcu_pl_dec_arqos0,
  vcu_pl_dec_araddr1,
  vcu_pl_dec_arburst1,
  vcu_pl_dec_arid1,
  vcu_pl_dec_arlen1,
  pl_vcu_dec_arready1,
  vcu_pl_dec_arsize1,
  vcu_pl_dec_arvalid1,
  vcu_pl_dec_awaddr1,
  vcu_pl_dec_awburst1,
  vcu_pl_dec_awid1,
  vcu_pl_dec_awlen1,
  pl_vcu_dec_awready1,
  vcu_pl_dec_awsize1,
  vcu_pl_dec_awvalid1,
  vcu_pl_dec_bready1,
  pl_vcu_dec_bvalid1,
  pl_vcu_dec_bid1,
  pl_vcu_dec_rdata1,
  pl_vcu_dec_rid1,
  pl_vcu_dec_rlast1,
  vcu_pl_dec_rready1,
  pl_vcu_dec_rvalid1,
  vcu_pl_dec_wdata1,
  vcu_pl_dec_wlast1,
  pl_vcu_dec_bresp1,
  pl_vcu_dec_rresp1,
  pl_vcu_dec_wready1,
  vcu_pl_dec_wvalid1,
  vcu_pl_dec_awprot1,
  vcu_pl_dec_arprot1,
  vcu_pl_dec_awcache1,
  vcu_pl_dec_arcache1,
  vcu_pl_dec_awqos1,
  vcu_pl_dec_arqos1
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE_CLK, ASSOCIATED_BUSIF S_AXI_LITE, FREQ_HZ 99999000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_LITE_CLK CLK" *)
input wire s_axi_lite_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *)
input wire vcu_resetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PLL_REF_CLK_IN, FREQ_HZ 33333000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 PLL_REF_CLK_IN CLK" *)
input wire pll_ref_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *)
input wire [19 : 0] pl_vcu_awaddr_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT" *)
input wire [2 : 0] pl_vcu_awprot_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *)
input wire [0 : 0] pl_vcu_awvalid_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *)
output wire [0 : 0] vcu_pl_awready_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *)
input wire [31 : 0] pl_vcu_wdata_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *)
input wire [3 : 0] pl_vcu_wstrb_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *)
input wire [0 : 0] pl_vcu_wvalid_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *)
output wire [0 : 0] vcu_pl_wready_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *)
output wire [1 : 0] vcu_pl_bresp_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *)
output wire [0 : 0] vcu_pl_bvalid_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *)
input wire [0 : 0] pl_vcu_bready_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *)
input wire [19 : 0] pl_vcu_araddr_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT" *)
input wire [2 : 0] pl_vcu_arprot_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *)
input wire [0 : 0] pl_vcu_arvalid_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *)
output wire [0 : 0] vcu_pl_arready_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *)
output wire [31 : 0] vcu_pl_rdata_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *)
output wire [1 : 0] vcu_pl_rresp_axi_lite_apb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *)
output wire [0 : 0] vcu_pl_rvalid_axi_lite_apb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE, NUM_WRITE_OUTSTANDING 1, NUM_READ_OUTSTANDING 1, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999000, ID_WIDTH 0, ADDR_WIDTH 20, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, NUM_READ_THREADS 1, NUM_W\
RITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *)
input wire [0 : 0] pl_vcu_rready_axi_lite_apb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MCU_CLK, ASSOCIATED_BUSIF M_AXI_MCU, FREQ_HZ 299997000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_MCU_CLK CLK" *)
input wire m_axi_mcu_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ENC_CLK, ASSOCIATED_BUSIF M_AXI_ENC0:M_AXI_ENC1, FREQ_HZ 299997000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_ENC_CLK CLK" *)
input wire m_axi_enc_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_DEC_CLK, ASSOCIATED_BUSIF M_AXI_DEC0:M_AXI_DEC1, FREQ_HZ 299997000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_DEC_CLK CLK" *)
input wire m_axi_dec_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PINT_REQ, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 PINT_REQ INTERRUPT" *)
output wire vcu_host_interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU ARADDR" *)
output wire [43 : 0] vcu_pl_mcu_m_axi_ic_dc_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU ARBURST" *)
output wire [1 : 0] vcu_pl_mcu_m_axi_ic_dc_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU ARCACHE" *)
output wire [3 : 0] vcu_pl_mcu_m_axi_ic_dc_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU ARID" *)
output wire [2 : 0] vcu_pl_mcu_m_axi_ic_dc_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU ARLEN" *)
output wire [7 : 0] vcu_pl_mcu_m_axi_ic_dc_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU ARLOCK" *)
output wire vcu_pl_mcu_m_axi_ic_dc_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU ARPROT" *)
output wire [2 : 0] vcu_pl_mcu_m_axi_ic_dc_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU ARQOS" *)
output wire [3 : 0] vcu_pl_mcu_m_axi_ic_dc_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU ARREADY" *)
input wire pl_vcu_mcu_m_axi_ic_dc_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU ARSIZE" *)
output wire [2 : 0] vcu_pl_mcu_m_axi_ic_dc_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU ARVALID" *)
output wire vcu_pl_mcu_m_axi_ic_dc_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU AWADDR" *)
output wire [43 : 0] vcu_pl_mcu_m_axi_ic_dc_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU AWBURST" *)
output wire [1 : 0] vcu_pl_mcu_m_axi_ic_dc_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU AWCACHE" *)
output wire [3 : 0] vcu_pl_mcu_m_axi_ic_dc_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU AWID" *)
output wire [2 : 0] vcu_pl_mcu_m_axi_ic_dc_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU AWLEN" *)
output wire [7 : 0] vcu_pl_mcu_m_axi_ic_dc_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU AWLOCK" *)
output wire vcu_pl_mcu_m_axi_ic_dc_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU AWPROT" *)
output wire [2 : 0] vcu_pl_mcu_m_axi_ic_dc_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU AWQOS" *)
output wire [3 : 0] vcu_pl_mcu_m_axi_ic_dc_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU AWREADY" *)
input wire pl_vcu_mcu_m_axi_ic_dc_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU AWSIZE" *)
output wire [2 : 0] vcu_pl_mcu_m_axi_ic_dc_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU AWVALID" *)
output wire vcu_pl_mcu_m_axi_ic_dc_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU BID" *)
input wire [2 : 0] pl_vcu_mcu_m_axi_ic_dc_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU BREADY" *)
output wire vcu_pl_mcu_m_axi_ic_dc_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU BRESP" *)
input wire [1 : 0] pl_vcu_mcu_m_axi_ic_dc_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU BVALID" *)
input wire pl_vcu_mcu_m_axi_ic_dc_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU RDATA" *)
input wire [31 : 0] pl_vcu_mcu_m_axi_ic_dc_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU RID" *)
input wire [2 : 0] pl_vcu_mcu_m_axi_ic_dc_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU RLAST" *)
input wire pl_vcu_mcu_m_axi_ic_dc_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU RREADY" *)
output wire vcu_pl_mcu_m_axi_ic_dc_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU RRESP" *)
input wire [1 : 0] pl_vcu_mcu_m_axi_ic_dc_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU RVALID" *)
input wire pl_vcu_mcu_m_axi_ic_dc_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU WDATA" *)
output wire [31 : 0] vcu_pl_mcu_m_axi_ic_dc_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU WLAST" *)
output wire vcu_pl_mcu_m_axi_ic_dc_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU WREADY" *)
input wire pl_vcu_mcu_m_axi_ic_dc_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU WSTRB" *)
output wire [3 : 0] vcu_pl_mcu_m_axi_ic_dc_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MCU, NUM_WRITE_OUTSTANDING 32, NUM_READ_OUTSTANDING 32, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 299997000, ID_WIDTH 3, ADDR_WIDTH 44, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, NUM_READ_THREADS 1, NUM_W\
RITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MCU WVALID" *)
output wire vcu_pl_mcu_m_axi_ic_dc_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 WSTRB" *)
output wire [15 : 0] vcu_pl_enc_wstrb1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 WSTRB" *)
output wire [15 : 0] vcu_pl_enc_wstrb0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 AWREGION" *)
output wire [3 : 0] vcu_pl_enc_awregion1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 AWREGION" *)
output wire [3 : 0] vcu_pl_enc_awregion0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 ARREGION" *)
output wire [3 : 0] vcu_pl_enc_arregion1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 ARREGION" *)
output wire [3 : 0] vcu_pl_enc_arregion0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 WSTRB" *)
output wire [15 : 0] vcu_pl_dec_wstrb1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 WSTRB" *)
output wire [15 : 0] vcu_pl_dec_wstrb0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 AWREGION" *)
output wire [3 : 0] vcu_pl_dec_awregion1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 AWREGION" *)
output wire [3 : 0] vcu_pl_dec_awregion0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 ARREGION" *)
output wire [3 : 0] vcu_pl_dec_arregion1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 ARREGION" *)
output wire [3 : 0] vcu_pl_dec_arregion0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 AWLOCK" *)
output wire vcu_pl_enc_awlock1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 AWLOCK" *)
output wire vcu_pl_enc_awlock0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 ARLOCK" *)
output wire vcu_pl_enc_arlock1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 ARLOCK" *)
output wire vcu_pl_enc_arlock0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 AWLOCK" *)
output wire vcu_pl_dec_awlock1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 AWLOCK" *)
output wire vcu_pl_dec_awlock0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 ARLOCK" *)
output wire vcu_pl_dec_arlock1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 ARLOCK" *)
output wire vcu_pl_dec_arlock0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 ARADDR" *)
output wire [43 : 0] vcu_pl_enc_araddr0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 ARBURST" *)
output wire [1 : 0] vcu_pl_enc_arburst0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 ARID" *)
output wire [3 : 0] vcu_pl_enc_arid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 ARLEN" *)
output wire [7 : 0] vcu_pl_enc_arlen0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 ARREADY" *)
input wire pl_vcu_enc_arready0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 ARSIZE" *)
output wire [2 : 0] vcu_pl_enc_arsize0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 ARVALID" *)
output wire vcu_pl_enc_arvalid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 AWADDR" *)
output wire [43 : 0] vcu_pl_enc_awaddr0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 AWBURST" *)
output wire [1 : 0] vcu_pl_enc_awburst0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 AWID" *)
output wire [3 : 0] vcu_pl_enc_awid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 AWLEN" *)
output wire [7 : 0] vcu_pl_enc_awlen0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 AWREADY" *)
input wire pl_vcu_enc_awready0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 AWSIZE" *)
output wire [2 : 0] vcu_pl_enc_awsize0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 AWVALID" *)
output wire vcu_pl_enc_awvalid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 BREADY" *)
output wire vcu_pl_enc_bready0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 BVALID" *)
input wire pl_vcu_enc_bvalid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 BID" *)
input wire [3 : 0] pl_vcu_enc_bid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 RDATA" *)
input wire [127 : 0] pl_vcu_enc_rdata0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 RID" *)
input wire [3 : 0] pl_vcu_enc_rid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 RLAST" *)
input wire pl_vcu_enc_rlast0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 RREADY" *)
output wire vcu_pl_enc_rready0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 RVALID" *)
input wire pl_vcu_enc_rvalid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 WDATA" *)
output wire [127 : 0] vcu_pl_enc_wdata0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 WLAST" *)
output wire vcu_pl_enc_wlast0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 BRESP" *)
input wire [1 : 0] pl_vcu_enc_bresp0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 RRESP" *)
input wire [1 : 0] pl_vcu_enc_rresp0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 WREADY" *)
input wire pl_vcu_enc_wready0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 WVALID" *)
output wire vcu_pl_enc_wvalid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 AWPROT" *)
output wire [2 : 0] vcu_pl_enc_awprot0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 ARPROT" *)
output wire [2 : 0] vcu_pl_enc_arprot0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 AWCACHE" *)
output wire [3 : 0] vcu_pl_enc_awcache0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 ARCACHE" *)
output wire [3 : 0] vcu_pl_enc_arcache0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 AWQOS" *)
output wire [3 : 0] vcu_pl_enc_awqos0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ENC0, SUPPORTS_NARROW_BURST 0, HAS_BURST 0, NUM_WRITE_OUTSTANDING 32, NUM_READ_OUTSTANDING 32, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 299997000, ID_WIDTH 4, ADDR_WIDTH 44, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, NUM_READ_THREADS 1, NUM\
_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC0 ARQOS" *)
output wire [3 : 0] vcu_pl_enc_arqos0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 ARADDR" *)
output wire [43 : 0] vcu_pl_enc_araddr1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 ARBURST" *)
output wire [1 : 0] vcu_pl_enc_arburst1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 ARID" *)
output wire [3 : 0] vcu_pl_enc_arid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 ARLEN" *)
output wire [7 : 0] vcu_pl_enc_arlen1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 ARREADY" *)
input wire pl_vcu_enc_arready1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 ARSIZE" *)
output wire [2 : 0] vcu_pl_enc_arsize1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 ARVALID" *)
output wire vcu_pl_enc_arvalid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 AWADDR" *)
output wire [43 : 0] vcu_pl_enc_awaddr1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 AWBURST" *)
output wire [1 : 0] vcu_pl_enc_awburst1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 AWID" *)
output wire [3 : 0] vcu_pl_enc_awid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 AWLEN" *)
output wire [7 : 0] vcu_pl_enc_awlen1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 AWREADY" *)
input wire pl_vcu_enc_awready1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 AWSIZE" *)
output wire [2 : 0] vcu_pl_enc_awsize1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 AWVALID" *)
output wire vcu_pl_enc_awvalid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 BREADY" *)
output wire vcu_pl_enc_bready1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 BVALID" *)
input wire pl_vcu_enc_bvalid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 BID" *)
input wire [3 : 0] pl_vcu_enc_bid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 RDATA" *)
input wire [127 : 0] pl_vcu_enc_rdata1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 RID" *)
input wire [3 : 0] pl_vcu_enc_rid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 RLAST" *)
input wire pl_vcu_enc_rlast1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 RREADY" *)
output wire vcu_pl_enc_rready1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 RVALID" *)
input wire pl_vcu_enc_rvalid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 WDATA" *)
output wire [127 : 0] vcu_pl_enc_wdata1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 WLAST" *)
output wire vcu_pl_enc_wlast1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 BRESP" *)
input wire [1 : 0] pl_vcu_enc_bresp1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 RRESP" *)
input wire [1 : 0] pl_vcu_enc_rresp1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 WREADY" *)
input wire pl_vcu_enc_wready1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 WVALID" *)
output wire vcu_pl_enc_wvalid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 AWPROT" *)
output wire [2 : 0] vcu_pl_enc_awprot1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 ARPROT" *)
output wire [2 : 0] vcu_pl_enc_arprot1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 AWCACHE" *)
output wire [3 : 0] vcu_pl_enc_awcache1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 ARCACHE" *)
output wire [3 : 0] vcu_pl_enc_arcache1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 AWQOS" *)
output wire [3 : 0] vcu_pl_enc_awqos1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ENC1, SUPPORTS_NARROW_BURST 0, HAS_BURST 0, NUM_WRITE_OUTSTANDING 32, NUM_READ_OUTSTANDING 32, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 299997000, ID_WIDTH 4, ADDR_WIDTH 44, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, NUM_READ_THREADS 1, NUM\
_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_ENC1 ARQOS" *)
output wire [3 : 0] vcu_pl_enc_arqos1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 ARADDR" *)
output wire [43 : 0] vcu_pl_dec_araddr0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 ARBURST" *)
output wire [1 : 0] vcu_pl_dec_arburst0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 ARID" *)
output wire [3 : 0] vcu_pl_dec_arid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 ARLEN" *)
output wire [7 : 0] vcu_pl_dec_arlen0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 ARREADY" *)
input wire pl_vcu_dec_arready0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 ARSIZE" *)
output wire [2 : 0] vcu_pl_dec_arsize0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 ARVALID" *)
output wire vcu_pl_dec_arvalid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 AWADDR" *)
output wire [43 : 0] vcu_pl_dec_awaddr0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 AWBURST" *)
output wire [1 : 0] vcu_pl_dec_awburst0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 AWID" *)
output wire [3 : 0] vcu_pl_dec_awid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 AWLEN" *)
output wire [7 : 0] vcu_pl_dec_awlen0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 AWREADY" *)
input wire pl_vcu_dec_awready0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 AWSIZE" *)
output wire [2 : 0] vcu_pl_dec_awsize0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 AWVALID" *)
output wire vcu_pl_dec_awvalid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 BREADY" *)
output wire vcu_pl_dec_bready0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 BVALID" *)
input wire pl_vcu_dec_bvalid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 BID" *)
input wire [3 : 0] pl_vcu_dec_bid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 RDATA" *)
input wire [127 : 0] pl_vcu_dec_rdata0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 RID" *)
input wire [3 : 0] pl_vcu_dec_rid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 RLAST" *)
input wire pl_vcu_dec_rlast0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 RREADY" *)
output wire vcu_pl_dec_rready0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 RVALID" *)
input wire pl_vcu_dec_rvalid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 WDATA" *)
output wire [127 : 0] vcu_pl_dec_wdata0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 WLAST" *)
output wire vcu_pl_dec_wlast0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 BRESP" *)
input wire [1 : 0] pl_vcu_dec_bresp0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 RRESP" *)
input wire [1 : 0] pl_vcu_dec_rresp0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 WREADY" *)
input wire pl_vcu_dec_wready0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 WVALID" *)
output wire vcu_pl_dec_wvalid0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 AWPROT" *)
output wire [2 : 0] vcu_pl_dec_awprot0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 ARPROT" *)
output wire [2 : 0] vcu_pl_dec_arprot0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 AWCACHE" *)
output wire [3 : 0] vcu_pl_dec_awcache0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 ARCACHE" *)
output wire [3 : 0] vcu_pl_dec_arcache0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 AWQOS" *)
output wire [3 : 0] vcu_pl_dec_awqos0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_DEC0, SUPPORTS_NARROW_BURST 0, HAS_BURST 0, NUM_WRITE_OUTSTANDING 32, NUM_READ_OUTSTANDING 32, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 299997000, ID_WIDTH 4, ADDR_WIDTH 44, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, NUM_READ_THREADS 1, NUM\
_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC0 ARQOS" *)
output wire [3 : 0] vcu_pl_dec_arqos0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 ARADDR" *)
output wire [43 : 0] vcu_pl_dec_araddr1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 ARBURST" *)
output wire [1 : 0] vcu_pl_dec_arburst1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 ARID" *)
output wire [3 : 0] vcu_pl_dec_arid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 ARLEN" *)
output wire [7 : 0] vcu_pl_dec_arlen1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 ARREADY" *)
input wire [0 : 0] pl_vcu_dec_arready1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 ARSIZE" *)
output wire [2 : 0] vcu_pl_dec_arsize1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 ARVALID" *)
output wire vcu_pl_dec_arvalid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 AWADDR" *)
output wire [43 : 0] vcu_pl_dec_awaddr1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 AWBURST" *)
output wire [1 : 0] vcu_pl_dec_awburst1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 AWID" *)
output wire [3 : 0] vcu_pl_dec_awid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 AWLEN" *)
output wire [7 : 0] vcu_pl_dec_awlen1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 AWREADY" *)
input wire [0 : 0] pl_vcu_dec_awready1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 AWSIZE" *)
output wire [2 : 0] vcu_pl_dec_awsize1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 AWVALID" *)
output wire vcu_pl_dec_awvalid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 BREADY" *)
output wire vcu_pl_dec_bready1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 BVALID" *)
input wire [0 : 0] pl_vcu_dec_bvalid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 BID" *)
input wire [3 : 0] pl_vcu_dec_bid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 RDATA" *)
input wire [127 : 0] pl_vcu_dec_rdata1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 RID" *)
input wire [3 : 0] pl_vcu_dec_rid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 RLAST" *)
input wire pl_vcu_dec_rlast1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 RREADY" *)
output wire vcu_pl_dec_rready1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 RVALID" *)
input wire pl_vcu_dec_rvalid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 WDATA" *)
output wire [127 : 0] vcu_pl_dec_wdata1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 WLAST" *)
output wire vcu_pl_dec_wlast1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 BRESP" *)
input wire [1 : 0] pl_vcu_dec_bresp1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 RRESP" *)
input wire [1 : 0] pl_vcu_dec_rresp1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 WREADY" *)
input wire pl_vcu_dec_wready1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 WVALID" *)
output wire vcu_pl_dec_wvalid1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 AWPROT" *)
output wire [2 : 0] vcu_pl_dec_awprot1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 ARPROT" *)
output wire [2 : 0] vcu_pl_dec_arprot1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 AWCACHE" *)
output wire [3 : 0] vcu_pl_dec_awcache1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 ARCACHE" *)
output wire [3 : 0] vcu_pl_dec_arcache1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 AWQOS" *)
output wire [3 : 0] vcu_pl_dec_awqos1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_DEC1, SUPPORTS_NARROW_BURST 0, HAS_BURST 0, NUM_WRITE_OUTSTANDING 32, NUM_READ_OUTSTANDING 32, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 299997000, ID_WIDTH 4, ADDR_WIDTH 44, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, NUM_READ_THREADS 1, NUM\
_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_DEC1 ARQOS" *)
output wire [3 : 0] vcu_pl_dec_arqos1;

  vcu_v1_2_6_vcu #(
    .ENABLEENCODER("TRUE"),
    .ENABLEDECODER("TRUE"),
    .ENCODERCODING("H.265"),
    .DECODERCODING("H.265"),
    .ENCODERCODINGTYPE("INTRA_ONLY"),
    .DECODERCODINGTYPE("INTRA_ONLY"),
    .ENCHORRESOLUTION(3840),
    .ENCVERRESOLUTION(2160),
    .DECHORRESOLUTION(3840),
    .DECVERRESOLUTION(2160),
    .ENCODERCOLORDEPTH(10),
    .DECODERCOLORDEPTH(10),
    .ENCODERCHROMAFORMAT("4_2_2"),
    .DECODERCHROMAFORMAT("4_2_2"),
    .CORECLKFREQ(667),
    .ENCODERNUMCORES(4),
    .DECODERNUMCORES(2),
    .HDL_TEST_PORT_EN(0),
    .HDL_VCU_TEST_EN(0),
    .HDL_ENCODER_EN(1),
    .HDL_NUM_STREAMS(0),
    .HDL_MAX_NUM_CORES(0),
    .HDL_NUM_CONCURRENT_STREAMS(0),
    .HDL_VIDEO_STANDARD(0),
    .HDL_CODING_TYPE(1),
    .HDL_FRAME_SIZE_X(3840),
    .HDL_FRAME_SIZE_Y(2160),
    .HDL_FPS(60),
    .HDL_COLOR_DEPTH(0),
    .HDL_COLOR_FORMAT(0),
    .HDL_ENC_BUFFER_EN(1),
    .HDL_RAM_TYPE(0),
    .HDL_DECODER_EN(1),
    .HDL_DEC_VIDEO_STANDARD(0),
    .HDL_DEC_FRAME_SIZE_X(3840),
    .HDL_DEC_FRAME_SIZE_Y(2160),
    .HDL_DEC_FPS(60),
    .HDL_DEC_CODING_TYPE(1),
    .HDL_DEC_COLOR_DEPTH(0),
    .HDL_DEC_COLOR_FORMAT(0),
    .HDL_ENC_BUFFER_MANUAL_OVERRIDE(0),
    .HDL_ENC_BUFFER_MOTION_VEC_RANGE(0),
    .HDL_ENC_BUFFER_B_FRAME(0),
    .HDL_WPP_EN(0),
    .HDL_MEM_DEPTH(11168),
    .HDL_TABLE_NO(2),
    .HDL_PLL_BYPASS(0),
    .HDL_MCU_CLK(444),
    .HDL_CORE_CLK(667),
    .HDL_ENC_CLK(0),
    .HDL_PLL_CLK_HI(33),
    .HDL_PLL_CLK_LO(32),
    .HDL_AXI_ENC_CLK(0),
    .HDL_AXI_DEC_CLK(0),
    .HDL_AXI_MCU_CLK(1077894184),
    .HDL_AXI_ENC_BASE0(0),
    .HDL_AXI_ENC_BASE1(0),
    .HDL_AXI_DEC_BASE0(0),
    .HDL_AXI_DEC_BASE1(0),
    .HDL_AXI_MCU_BASE(0),
    .HDL_AXI_ENC_RANGE0(0),
    .HDL_AXI_ENC_RANGE1(0),
    .HDL_AXI_DEC_RANGE0(0),
    .HDL_AXI_DEC_RANGE1(0),
    .HDL_AXI_MCU_RANGE(0),
    .C_VCU_AXILITEAPB_DATA_WIDTH(32),
    .C_VCU_ENC0_DATA_WIDTH(128),
    .C_VCU_ENC1_DATA_WIDTH(128),
    .C_VCU_DEC0_DATA_WIDTH(128),
    .C_VCU_DEC1_DATA_WIDTH(128),
    .C_VCU_MCU_DATA_WIDTH(32)
  ) inst (
    .REF_CLK_IN_P(1'B0),
    .REF_CLK_IN_N(1'B0),
    .SYS_1X_CLK_IN_P(1'B0),
    .SYS_1X_CLK_IN_N(1'B0),
    .SYS_2X_CLK_IN_P(1'B0),
    .SYS_2X_CLK_IN_N(1'B0),
    .SERDES_CLK_IN_P(1'B0),
    .SERDES_CLK_IN_N(1'B0),
    .refclk(),
    .sys1xclk(),
    .systemrst_refclk_b(),
    .systemrst_b(),
    .GLOBAL_RESET(),
    .CONFIG_LOOP_IN(1'B0),
    .CONFIG_LOOP_OUT(),
    .ENCB11_CORE42_OUT_P(),
    .ENCB11_CORE42_OUT_N(),
    .ENCA33_CORE39_P(),
    .ENCA33_CORE39_N(),
    .ENCA12_CORE18_P(),
    .ENCA12_CORE18_N(),
    .ENCA31_CORE37_P(),
    .ENCA31_CORE37_N(),
    .CORE41_DEC34_P(),
    .CORE41_DEC34_N(),
    .CORE20_DEC36_P(),
    .CORE20_DEC36_N(),
    .ENCB11_CORE42_IN_P(16'B0),
    .ENCB11_CORE42_IN_N(16'B0),
    .ENCA32_CORE38_P(24'B0),
    .ENCA32_CORE38_N(24'B0),
    .ENCA13_CORE19_P(22'B0),
    .ENCA13_CORE19_N(22'B0),
    .ENCA11_CORE17_P(22'B0),
    .ENCA11_CORE17_N(22'B0),
    .CORE21_DEC15_P(24'B0),
    .CORE21_DEC15_N(24'B0),
    .CORE40_DEC35_P(24'B0),
    .CORE40_DEC35_N(24'B0),
    .s_axi_lite_aclk(s_axi_lite_aclk),
    .vcu_resetn(vcu_resetn),
    .pll_ref_clk(pll_ref_clk),
    .core_clk(1'B0),
    .mcu_clk(1'B0),
    .pl_vcu_awaddr_axi_lite_apb(pl_vcu_awaddr_axi_lite_apb),
    .pl_vcu_awprot_axi_lite_apb(pl_vcu_awprot_axi_lite_apb),
    .pl_vcu_awvalid_axi_lite_apb(pl_vcu_awvalid_axi_lite_apb),
    .vcu_pl_awready_axi_lite_apb(vcu_pl_awready_axi_lite_apb),
    .pl_vcu_wdata_axi_lite_apb(pl_vcu_wdata_axi_lite_apb),
    .pl_vcu_wstrb_axi_lite_apb(pl_vcu_wstrb_axi_lite_apb),
    .pl_vcu_wvalid_axi_lite_apb(pl_vcu_wvalid_axi_lite_apb),
    .vcu_pl_wready_axi_lite_apb(vcu_pl_wready_axi_lite_apb),
    .vcu_pl_bresp_axi_lite_apb(vcu_pl_bresp_axi_lite_apb),
    .vcu_pl_bvalid_axi_lite_apb(vcu_pl_bvalid_axi_lite_apb),
    .pl_vcu_bready_axi_lite_apb(pl_vcu_bready_axi_lite_apb),
    .pl_vcu_araddr_axi_lite_apb(pl_vcu_araddr_axi_lite_apb),
    .pl_vcu_arprot_axi_lite_apb(pl_vcu_arprot_axi_lite_apb),
    .pl_vcu_arvalid_axi_lite_apb(pl_vcu_arvalid_axi_lite_apb),
    .vcu_pl_arready_axi_lite_apb(vcu_pl_arready_axi_lite_apb),
    .vcu_pl_rdata_axi_lite_apb(vcu_pl_rdata_axi_lite_apb),
    .vcu_pl_rresp_axi_lite_apb(vcu_pl_rresp_axi_lite_apb),
    .vcu_pl_rvalid_axi_lite_apb(vcu_pl_rvalid_axi_lite_apb),
    .pl_vcu_rready_axi_lite_apb(pl_vcu_rready_axi_lite_apb),
    .m_axi_mcu_aclk(m_axi_mcu_aclk),
    .m_axi_enc_aclk(m_axi_enc_aclk),
    .m_axi_dec_aclk(m_axi_dec_aclk),
    .vcu_host_interrupt(vcu_host_interrupt),
    .vcu_pl_mcu_m_axi_ic_dc_araddr(vcu_pl_mcu_m_axi_ic_dc_araddr),
    .vcu_pl_mcu_m_axi_ic_dc_arburst(vcu_pl_mcu_m_axi_ic_dc_arburst),
    .vcu_pl_mcu_m_axi_ic_dc_arcache(vcu_pl_mcu_m_axi_ic_dc_arcache),
    .vcu_pl_mcu_m_axi_ic_dc_arid(vcu_pl_mcu_m_axi_ic_dc_arid),
    .vcu_pl_mcu_m_axi_ic_dc_arlen(vcu_pl_mcu_m_axi_ic_dc_arlen),
    .vcu_pl_mcu_m_axi_ic_dc_arlock(vcu_pl_mcu_m_axi_ic_dc_arlock),
    .vcu_pl_mcu_m_axi_ic_dc_arprot(vcu_pl_mcu_m_axi_ic_dc_arprot),
    .vcu_pl_mcu_m_axi_ic_dc_arqos(vcu_pl_mcu_m_axi_ic_dc_arqos),
    .pl_vcu_mcu_m_axi_ic_dc_arready(pl_vcu_mcu_m_axi_ic_dc_arready),
    .vcu_pl_mcu_m_axi_ic_dc_arsize(vcu_pl_mcu_m_axi_ic_dc_arsize),
    .vcu_pl_mcu_m_axi_ic_dc_arvalid(vcu_pl_mcu_m_axi_ic_dc_arvalid),
    .vcu_pl_mcu_m_axi_ic_dc_awaddr(vcu_pl_mcu_m_axi_ic_dc_awaddr),
    .vcu_pl_mcu_m_axi_ic_dc_awburst(vcu_pl_mcu_m_axi_ic_dc_awburst),
    .vcu_pl_mcu_m_axi_ic_dc_awcache(vcu_pl_mcu_m_axi_ic_dc_awcache),
    .vcu_pl_mcu_m_axi_ic_dc_awid(vcu_pl_mcu_m_axi_ic_dc_awid),
    .vcu_pl_mcu_m_axi_ic_dc_awlen(vcu_pl_mcu_m_axi_ic_dc_awlen),
    .vcu_pl_mcu_m_axi_ic_dc_awlock(vcu_pl_mcu_m_axi_ic_dc_awlock),
    .vcu_pl_mcu_m_axi_ic_dc_awprot(vcu_pl_mcu_m_axi_ic_dc_awprot),
    .vcu_pl_mcu_m_axi_ic_dc_awqos(vcu_pl_mcu_m_axi_ic_dc_awqos),
    .pl_vcu_mcu_m_axi_ic_dc_awready(pl_vcu_mcu_m_axi_ic_dc_awready),
    .vcu_pl_mcu_m_axi_ic_dc_awsize(vcu_pl_mcu_m_axi_ic_dc_awsize),
    .vcu_pl_mcu_m_axi_ic_dc_awvalid(vcu_pl_mcu_m_axi_ic_dc_awvalid),
    .pl_vcu_mcu_m_axi_ic_dc_bid(pl_vcu_mcu_m_axi_ic_dc_bid),
    .vcu_pl_mcu_m_axi_ic_dc_bready(vcu_pl_mcu_m_axi_ic_dc_bready),
    .pl_vcu_mcu_m_axi_ic_dc_bresp(pl_vcu_mcu_m_axi_ic_dc_bresp),
    .pl_vcu_mcu_m_axi_ic_dc_bvalid(pl_vcu_mcu_m_axi_ic_dc_bvalid),
    .pl_vcu_mcu_m_axi_ic_dc_rdata(pl_vcu_mcu_m_axi_ic_dc_rdata),
    .pl_vcu_mcu_m_axi_ic_dc_rid(pl_vcu_mcu_m_axi_ic_dc_rid),
    .pl_vcu_mcu_m_axi_ic_dc_rlast(pl_vcu_mcu_m_axi_ic_dc_rlast),
    .vcu_pl_mcu_m_axi_ic_dc_rready(vcu_pl_mcu_m_axi_ic_dc_rready),
    .pl_vcu_mcu_m_axi_ic_dc_rresp(pl_vcu_mcu_m_axi_ic_dc_rresp),
    .pl_vcu_mcu_m_axi_ic_dc_rvalid(pl_vcu_mcu_m_axi_ic_dc_rvalid),
    .vcu_pl_mcu_m_axi_ic_dc_wdata(vcu_pl_mcu_m_axi_ic_dc_wdata),
    .vcu_pl_mcu_m_axi_ic_dc_wlast(vcu_pl_mcu_m_axi_ic_dc_wlast),
    .pl_vcu_mcu_m_axi_ic_dc_wready(pl_vcu_mcu_m_axi_ic_dc_wready),
    .vcu_pl_mcu_m_axi_ic_dc_wstrb(vcu_pl_mcu_m_axi_ic_dc_wstrb),
    .vcu_pl_mcu_m_axi_ic_dc_wvalid(vcu_pl_mcu_m_axi_ic_dc_wvalid),
    .vcu_pl_core_status_clk_pll(),
    .vcu_pl_mcu_status_clk_pll(),
    .vcu_pl_pll_status_pll_lock(),
    .vcu_pl_pwr_supply_status_vccaux(),
    .vcu_pl_pwr_supply_status_vcuint(),
    .pl_vcu_mcu_venc_debug_clk(1'B0),
    .pl_vcu_mcu_venc_debug_sys_rst(1'B0),
    .pl_vcu_mcu_venc_debug_rst(1'B0),
    .pl_vcu_mcu_venc_debug_capture(1'B0),
    .pl_vcu_mcu_venc_debug_reg_en(8'B0),
    .pl_vcu_mcu_venc_debug_shift(1'B0),
    .pl_vcu_mcu_venc_debug_tdi(1'B0),
    .vcu_pl_mcu_venc_debug_tdo(),
    .pl_vcu_mcu_venc_debug_update(1'B0),
    .pl_vcu_mcu_vdec_debug_clk(1'B0),
    .pl_vcu_mcu_vdec_debug_sys_rst(1'B0),
    .pl_vcu_mcu_vdec_debug_rst(1'B0),
    .pl_vcu_mcu_vdec_debug_capture(1'B0),
    .pl_vcu_mcu_vdec_debug_reg_en(8'B0),
    .pl_vcu_mcu_vdec_debug_shift(1'B0),
    .pl_vcu_mcu_vdec_debug_tdi(1'B0),
    .vcu_pl_mcu_vdec_debug_tdo(),
    .pl_vcu_mcu_vdec_debug_update(1'B0),
    .vcu_pl_enc_wstrb1(vcu_pl_enc_wstrb1),
    .vcu_pl_enc_wstrb0(vcu_pl_enc_wstrb0),
    .vcu_pl_enc_awregion1(vcu_pl_enc_awregion1),
    .vcu_pl_enc_awregion0(vcu_pl_enc_awregion0),
    .vcu_pl_enc_arregion1(vcu_pl_enc_arregion1),
    .vcu_pl_enc_arregion0(vcu_pl_enc_arregion0),
    .vcu_pl_dec_wstrb1(vcu_pl_dec_wstrb1),
    .vcu_pl_dec_wstrb0(vcu_pl_dec_wstrb0),
    .vcu_pl_dec_awregion1(vcu_pl_dec_awregion1),
    .vcu_pl_dec_awregion0(vcu_pl_dec_awregion0),
    .vcu_pl_dec_arregion1(vcu_pl_dec_arregion1),
    .vcu_pl_dec_arregion0(vcu_pl_dec_arregion0),
    .vcu_pl_enc_awlock1(vcu_pl_enc_awlock1),
    .vcu_pl_enc_awlock0(vcu_pl_enc_awlock0),
    .vcu_pl_enc_arlock1(vcu_pl_enc_arlock1),
    .vcu_pl_enc_arlock0(vcu_pl_enc_arlock0),
    .vcu_pl_dec_awlock1(vcu_pl_dec_awlock1),
    .vcu_pl_dec_awlock0(vcu_pl_dec_awlock0),
    .vcu_pl_dec_arlock1(vcu_pl_dec_arlock1),
    .vcu_pl_dec_arlock0(vcu_pl_dec_arlock0),
    .vcu_pl_enc_araddr0(vcu_pl_enc_araddr0),
    .vcu_pl_enc_arburst0(vcu_pl_enc_arburst0),
    .vcu_pl_enc_arid0(vcu_pl_enc_arid0),
    .vcu_pl_enc_arlen0(vcu_pl_enc_arlen0),
    .pl_vcu_enc_arready0(pl_vcu_enc_arready0),
    .vcu_pl_enc_arsize0(vcu_pl_enc_arsize0),
    .vcu_pl_enc_arvalid0(vcu_pl_enc_arvalid0),
    .vcu_pl_enc_awaddr0(vcu_pl_enc_awaddr0),
    .vcu_pl_enc_awburst0(vcu_pl_enc_awburst0),
    .vcu_pl_enc_awid0(vcu_pl_enc_awid0),
    .vcu_pl_enc_awlen0(vcu_pl_enc_awlen0),
    .pl_vcu_enc_awready0(pl_vcu_enc_awready0),
    .vcu_pl_enc_awsize0(vcu_pl_enc_awsize0),
    .vcu_pl_enc_awvalid0(vcu_pl_enc_awvalid0),
    .vcu_pl_enc_bready0(vcu_pl_enc_bready0),
    .pl_vcu_enc_bvalid0(pl_vcu_enc_bvalid0),
    .pl_vcu_enc_bid0(pl_vcu_enc_bid0),
    .pl_vcu_enc_rdata0(pl_vcu_enc_rdata0),
    .pl_vcu_enc_rid0(pl_vcu_enc_rid0),
    .pl_vcu_enc_rlast0(pl_vcu_enc_rlast0),
    .vcu_pl_enc_rready0(vcu_pl_enc_rready0),
    .pl_vcu_enc_rvalid0(pl_vcu_enc_rvalid0),
    .vcu_pl_enc_wdata0(vcu_pl_enc_wdata0),
    .vcu_pl_enc_wlast0(vcu_pl_enc_wlast0),
    .pl_vcu_enc_bresp0(pl_vcu_enc_bresp0),
    .pl_vcu_enc_rresp0(pl_vcu_enc_rresp0),
    .pl_vcu_enc_wready0(pl_vcu_enc_wready0),
    .vcu_pl_enc_wvalid0(vcu_pl_enc_wvalid0),
    .vcu_pl_enc_awprot0(vcu_pl_enc_awprot0),
    .vcu_pl_enc_arprot0(vcu_pl_enc_arprot0),
    .vcu_pl_enc_awcache0(vcu_pl_enc_awcache0),
    .vcu_pl_enc_arcache0(vcu_pl_enc_arcache0),
    .vcu_pl_enc_awqos0(vcu_pl_enc_awqos0),
    .vcu_pl_enc_arqos0(vcu_pl_enc_arqos0),
    .vcu_pl_enc_araddr1(vcu_pl_enc_araddr1),
    .vcu_pl_enc_arburst1(vcu_pl_enc_arburst1),
    .vcu_pl_enc_arid1(vcu_pl_enc_arid1),
    .vcu_pl_enc_arlen1(vcu_pl_enc_arlen1),
    .pl_vcu_enc_arready1(pl_vcu_enc_arready1),
    .vcu_pl_enc_arsize1(vcu_pl_enc_arsize1),
    .vcu_pl_enc_arvalid1(vcu_pl_enc_arvalid1),
    .vcu_pl_enc_awaddr1(vcu_pl_enc_awaddr1),
    .vcu_pl_enc_awburst1(vcu_pl_enc_awburst1),
    .vcu_pl_enc_awid1(vcu_pl_enc_awid1),
    .vcu_pl_enc_awlen1(vcu_pl_enc_awlen1),
    .pl_vcu_enc_awready1(pl_vcu_enc_awready1),
    .vcu_pl_enc_awsize1(vcu_pl_enc_awsize1),
    .vcu_pl_enc_awvalid1(vcu_pl_enc_awvalid1),
    .vcu_pl_enc_bready1(vcu_pl_enc_bready1),
    .pl_vcu_enc_bvalid1(pl_vcu_enc_bvalid1),
    .pl_vcu_enc_bid1(pl_vcu_enc_bid1),
    .pl_vcu_enc_rdata1(pl_vcu_enc_rdata1),
    .pl_vcu_enc_rid1(pl_vcu_enc_rid1),
    .pl_vcu_enc_rlast1(pl_vcu_enc_rlast1),
    .vcu_pl_enc_rready1(vcu_pl_enc_rready1),
    .pl_vcu_enc_rvalid1(pl_vcu_enc_rvalid1),
    .vcu_pl_enc_wdata1(vcu_pl_enc_wdata1),
    .vcu_pl_enc_wlast1(vcu_pl_enc_wlast1),
    .pl_vcu_enc_bresp1(pl_vcu_enc_bresp1),
    .pl_vcu_enc_rresp1(pl_vcu_enc_rresp1),
    .pl_vcu_enc_wready1(pl_vcu_enc_wready1),
    .vcu_pl_enc_wvalid1(vcu_pl_enc_wvalid1),
    .vcu_pl_enc_awprot1(vcu_pl_enc_awprot1),
    .vcu_pl_enc_arprot1(vcu_pl_enc_arprot1),
    .vcu_pl_enc_awcache1(vcu_pl_enc_awcache1),
    .vcu_pl_enc_arcache1(vcu_pl_enc_arcache1),
    .vcu_pl_enc_awqos1(vcu_pl_enc_awqos1),
    .vcu_pl_enc_arqos1(vcu_pl_enc_arqos1),
    .vcu_pl_dec_araddr0(vcu_pl_dec_araddr0),
    .vcu_pl_dec_arburst0(vcu_pl_dec_arburst0),
    .vcu_pl_dec_arid0(vcu_pl_dec_arid0),
    .vcu_pl_dec_arlen0(vcu_pl_dec_arlen0),
    .pl_vcu_dec_arready0(pl_vcu_dec_arready0),
    .vcu_pl_dec_arsize0(vcu_pl_dec_arsize0),
    .vcu_pl_dec_arvalid0(vcu_pl_dec_arvalid0),
    .vcu_pl_dec_awaddr0(vcu_pl_dec_awaddr0),
    .vcu_pl_dec_awburst0(vcu_pl_dec_awburst0),
    .vcu_pl_dec_awid0(vcu_pl_dec_awid0),
    .vcu_pl_dec_awlen0(vcu_pl_dec_awlen0),
    .pl_vcu_dec_awready0(pl_vcu_dec_awready0),
    .vcu_pl_dec_awsize0(vcu_pl_dec_awsize0),
    .vcu_pl_dec_awvalid0(vcu_pl_dec_awvalid0),
    .vcu_pl_dec_bready0(vcu_pl_dec_bready0),
    .pl_vcu_dec_bvalid0(pl_vcu_dec_bvalid0),
    .pl_vcu_dec_bid0(pl_vcu_dec_bid0),
    .pl_vcu_dec_rdata0(pl_vcu_dec_rdata0),
    .pl_vcu_dec_rid0(pl_vcu_dec_rid0),
    .pl_vcu_dec_rlast0(pl_vcu_dec_rlast0),
    .vcu_pl_dec_rready0(vcu_pl_dec_rready0),
    .pl_vcu_dec_rvalid0(pl_vcu_dec_rvalid0),
    .vcu_pl_dec_wdata0(vcu_pl_dec_wdata0),
    .vcu_pl_dec_wlast0(vcu_pl_dec_wlast0),
    .pl_vcu_dec_bresp0(pl_vcu_dec_bresp0),
    .pl_vcu_dec_rresp0(pl_vcu_dec_rresp0),
    .pl_vcu_dec_wready0(pl_vcu_dec_wready0),
    .vcu_pl_dec_wvalid0(vcu_pl_dec_wvalid0),
    .vcu_pl_dec_awprot0(vcu_pl_dec_awprot0),
    .vcu_pl_dec_arprot0(vcu_pl_dec_arprot0),
    .vcu_pl_dec_awcache0(vcu_pl_dec_awcache0),
    .vcu_pl_dec_arcache0(vcu_pl_dec_arcache0),
    .vcu_pl_dec_awqos0(vcu_pl_dec_awqos0),
    .vcu_pl_dec_arqos0(vcu_pl_dec_arqos0),
    .vcu_pl_dec_araddr1(vcu_pl_dec_araddr1),
    .vcu_pl_dec_arburst1(vcu_pl_dec_arburst1),
    .vcu_pl_dec_arid1(vcu_pl_dec_arid1),
    .vcu_pl_dec_arlen1(vcu_pl_dec_arlen1),
    .pl_vcu_dec_arready1(pl_vcu_dec_arready1),
    .vcu_pl_dec_arsize1(vcu_pl_dec_arsize1),
    .vcu_pl_dec_arvalid1(vcu_pl_dec_arvalid1),
    .vcu_pl_dec_awaddr1(vcu_pl_dec_awaddr1),
    .vcu_pl_dec_awburst1(vcu_pl_dec_awburst1),
    .vcu_pl_dec_awid1(vcu_pl_dec_awid1),
    .vcu_pl_dec_awlen1(vcu_pl_dec_awlen1),
    .pl_vcu_dec_awready1(pl_vcu_dec_awready1),
    .vcu_pl_dec_awsize1(vcu_pl_dec_awsize1),
    .vcu_pl_dec_awvalid1(vcu_pl_dec_awvalid1),
    .vcu_pl_dec_bready1(vcu_pl_dec_bready1),
    .pl_vcu_dec_bvalid1(pl_vcu_dec_bvalid1),
    .pl_vcu_dec_bid1(pl_vcu_dec_bid1),
    .pl_vcu_dec_rdata1(pl_vcu_dec_rdata1),
    .pl_vcu_dec_rid1(pl_vcu_dec_rid1),
    .pl_vcu_dec_rlast1(pl_vcu_dec_rlast1),
    .vcu_pl_dec_rready1(vcu_pl_dec_rready1),
    .pl_vcu_dec_rvalid1(pl_vcu_dec_rvalid1),
    .vcu_pl_dec_wdata1(vcu_pl_dec_wdata1),
    .vcu_pl_dec_wlast1(vcu_pl_dec_wlast1),
    .pl_vcu_dec_bresp1(pl_vcu_dec_bresp1),
    .pl_vcu_dec_rresp1(pl_vcu_dec_rresp1),
    .pl_vcu_dec_wready1(pl_vcu_dec_wready1),
    .vcu_pl_dec_wvalid1(vcu_pl_dec_wvalid1),
    .vcu_pl_dec_awprot1(vcu_pl_dec_awprot1),
    .vcu_pl_dec_arprot1(vcu_pl_dec_arprot1),
    .vcu_pl_dec_awcache1(vcu_pl_dec_awcache1),
    .vcu_pl_dec_arcache1(vcu_pl_dec_arcache1),
    .vcu_pl_dec_awqos1(vcu_pl_dec_awqos1),
    .vcu_pl_dec_arqos1(vcu_pl_dec_arqos1)
  );
endmodule
