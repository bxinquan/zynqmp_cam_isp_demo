////-----------------------------------------------------------------------------
// vcu_v1_2_6
// 
//-----------------------------------------------------------------------------
//
// ************************************************************************
// ** DISCLAIMER OF LIABILITY                                            **
// **                                                                    **
// ** This file contains proprietary and confidential information of     **
// ** Xilinx, Inc. ("Xilinx"), that is distributed under a license       **
// ** from Xilinx, and may be used, copied and/or diSCLosed only         **
// ** pursuant to the terms of a valid license agreement with Xilinx.    **
// **                                                                    **
// ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION              **
// ** ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER         **
// ** EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT                **
// ** LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,          **
// ** MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx      **
// ** does not warrant that functions included in the Materials will     **
// ** meet the requirements of Licensee, or that the operation of the    **
// ** Materials will be uninterrupted or error-free, or that defects     **
// ** in the Materials will be corrected. Furthermore, Xilinx does       **
// ** not warrant or make any representations regarding use, or the      **
// ** results of the use, of the Materials in terms of correctness,      **
// ** accuracy, reliability or otherwise.                                **
// **                                                                    **
// ** Xilinx products are not designed or intended to be fail-safe,      **
// ** or for use in any application requiring fail-safe performance,     **
// ** such as life-support or safety devices or systems, Class III       **
// ** medical devices, nuclear facilities, applications related to       **
// ** the deployment of airbags, or any other applications that could    **
// ** lead to death, personal injury or severe property or               **
// ** environmental damage (individually and collectively, "critical     **
// ** applications"). Customer assumes the sole risk and liability       **
// ** of any use of Xilinx products in critical applications,            **
// ** subject only to applicable laws and regulations governing          **
// ** limitations on product liability.                                  **
// **                                                                    **
// ** Copyright 2016 Xilinx, Inc.                                        **
// ** All rights reserved.                                               **
// **                                                                    **
// ** This disclaimer and copyright notice must be retained as part      **
// ** of this file at all times.                                         **
// ************************************************************************
//
//-----------------------------------------------------------------------------
// Filename:    vcu_v1_2_6_vcu
// Version:       v1.00.a
// Description:   This is the wrapper file for VCU. 
//-----------------------------------------------------------------------------
// Structure:   This section shows the hierarchical structure of 
//              vcu_wrapper.
//
//              --vcu_v1_2_vcu.v
//                    --VCU.v - Unisim component
//-----------------------------------------------------------------------------
// Author:      prathib
//
// History:
//
//prathib      03/30/2016      -- First version
// ~~~~~~
// Created the First version v1_0_v1.00.a
// ^^^^^^
//------------------------------------------------------------------------------


module vcu_v1_2_6_vcu
#(
parameter C_VCU_AXILITEAPB_DATA_WIDTH      = 32,
parameter C_VCU_ENC0_DATA_WIDTH      = 128,
parameter C_VCU_ENC1_DATA_WIDTH      = 128,
parameter C_VCU_DEC0_DATA_WIDTH      = 128,
parameter C_VCU_DEC1_DATA_WIDTH      = 128,
parameter C_VCU_MCU_DATA_WIDTH      = 32,
parameter HDL_PIPELINE_DEPTH = 6,

// EP params
parameter C_RATIO         = 56,
parameter C_RATIO_CORE    = 56,
parameter C_ENCB11_CORE42_IN  = 16,
parameter C_ENCB11_CORE42_OUT = 6,
parameter C_ENCA33_CORE39 = 24,
parameter C_ENCA32_CORE38 = 24,
parameter C_ENCA12_CORE18 = 24,
parameter C_ENCA31_CORE37 = 24,
parameter C_ENCA13_CORE19 = 22,
parameter C_ENCA11_CORE17 = 22,
parameter C_GPU31_CORE22  = 0, //22,
parameter C_IOU19_CORE12  = 0, //21,//Originally 22,1 pin is used for config loop
parameter C_IOU17_CORE13  = 0, //22,
parameter C_IOU18_CORE16  = 0, //22,
parameter C_CORE21_DEC15 = 24,
parameter C_CORE40_DEC35 = 24,
parameter C_CORE41_DEC34 = 24,
parameter C_CORE20_DEC36 = 23, //Originally 24,1 pin is used for config loop


// XPE Variables
parameter ENABLEENCODER = "TRUE",
parameter ENABLEDECODER = "TRUE",
parameter ENCODERCODING = "H.265",
parameter DECODERCODING = "H.265",
parameter ENCODERCODINGTYPE = "INTRA_ONLY",
parameter DECODERCODINGTYPE = "INTRA_ONLY",
parameter ENCHORRESOLUTION = 3840,
parameter ENCVERRESOLUTION = 2160,
parameter DECHORRESOLUTION = 3840,
parameter DECVERRESOLUTION = 2160,
parameter ENCODERCOLORDEPTH = 10,
parameter DECODERCOLORDEPTH = 10,
parameter ENCODERCHROMAFORMAT = "4:2:2",
parameter DECODERCHROMAFORMAT = "4:2:2",
parameter CORECLKFREQ = 667,
parameter ENCODERNUMCORES = 4,
parameter DECODERNUMCORES = 2,

parameter HDL_TEST_PORT_EN = 0,
parameter HDL_VCU_TEST_EN = 0, // new Variable
parameter HDL_ENCODER_EN = 1,
parameter HDL_DECODER_EN = 1,
parameter HDL_TABLE_NO = 2,
parameter HDL_MEM_DEPTH = 2048, // 2K
parameter HDL_RAM_TYPE = 0,
parameter HDL_PLL_BYPASS = 1,
parameter HDL_MEMORY_SIZE = 2, // 2K
parameter HDL_COLOR_DEPTH = 0,
parameter HDL_FRAME_SIZE_X = 1863,
parameter HDL_FRAME_SIZE_Y = 2713,
parameter HDL_COLOR_FORMAT = 0,
parameter HDL_VIDEO_STANDARD = 0,
parameter HDL_CODING_TYPE = 0,
parameter HDL_ENC_BUFFER_EN = 0,
parameter HDL_FPS = 0,
parameter HDL_ENC_CLK = 200,
parameter HDL_MCU_CLK = 0,
//parameter HDL_MCU_DEBUG = 0,
parameter HDL_PLL_CLK_HI = 0,
parameter HDL_PLL_CLK_LO = 0,
parameter HDL_CORE_CLK = 0,
parameter HDL_NUM_STREAMS = 1,
parameter HDL_MAX_NUM_CORES = 1,
parameter HDL_NUM_CONCURRENT_STREAMS = 1,

parameter HDL_DEC_VIDEO_STANDARD = 0,
parameter HDL_DEC_FRAME_SIZE_X = 0,
parameter HDL_DEC_FRAME_SIZE_Y = 0,
parameter HDL_DEC_FPS = 0,
parameter HDL_DEC_CODING_TYPE = 0,
parameter HDL_DEC_COLOR_DEPTH = 0,
parameter HDL_DEC_COLOR_FORMAT = 0,

parameter HDL_ENC_BUFFER_MANUAL_OVERRIDE = 0,
parameter HDL_ENC_BUFFER_MOTION_VEC_RANGE = 0,
parameter HDL_ENC_BUFFER_B_FRAME = 0,
parameter HDL_WPP_EN = 0,

parameter HDL_AXI_ENC_CLK = 99,
parameter HDL_AXI_DEC_CLK = 99,
parameter HDL_AXI_MCU_CLK = 99,
parameter HDL_AXI_ENC_BASE0 = 99,
parameter HDL_AXI_ENC_BASE1 = 99,
parameter HDL_AXI_DEC_BASE0 = 99,
parameter HDL_AXI_DEC_BASE1 = 99,
parameter HDL_AXI_MCU_BASE = 99,
parameter HDL_AXI_ENC_RANGE0 = 99,
parameter HDL_AXI_ENC_RANGE1 = 99,
parameter HDL_AXI_DEC_RANGE0 = 99,
parameter HDL_AXI_DEC_RANGE1 = 99,
parameter HDL_AXI_MCU_RANGE = 99 

)
(
//VCU-AXI-SLAVE
input  wire                                     s_axi_lite_aclk,
input  wire  [19:0]                             pl_vcu_awaddr_axi_lite_apb,
input  wire  [2:0]                              pl_vcu_awprot_axi_lite_apb,
input  wire                                     pl_vcu_awvalid_axi_lite_apb,
output wire                                     vcu_pl_awready_axi_lite_apb,
input  wire  [C_VCU_AXILITEAPB_DATA_WIDTH-1:0]  pl_vcu_wdata_axi_lite_apb,
input  wire  [3:0]                              pl_vcu_wstrb_axi_lite_apb,
input  wire                                     pl_vcu_wvalid_axi_lite_apb,
output wire                                     vcu_pl_wready_axi_lite_apb,
output wire  [1:0]                              vcu_pl_bresp_axi_lite_apb,
output wire                                     vcu_pl_bvalid_axi_lite_apb,
input  wire                                     pl_vcu_bready_axi_lite_apb,
input  wire  [19:0]                             pl_vcu_araddr_axi_lite_apb,
input  wire  [2:0]                              pl_vcu_arprot_axi_lite_apb,
input  wire                                     pl_vcu_arvalid_axi_lite_apb,
output wire                                     vcu_pl_arready_axi_lite_apb,
output wire  [C_VCU_AXILITEAPB_DATA_WIDTH-1:0]  vcu_pl_rdata_axi_lite_apb,
output wire  [1:0]                              vcu_pl_rresp_axi_lite_apb,
output wire                                     vcu_pl_rvalid_axi_lite_apb,
input  wire                                     pl_vcu_rready_axi_lite_apb,

//VCU-ENC-AXI-MASTER
input  wire                                     m_axi_enc_aclk,

//VCU-ENC-AXI-MASTER0
output wire  [43:0]                             vcu_pl_enc_araddr0,
output wire  [1:0]                              vcu_pl_enc_arburst0, 
output wire  [3:0]                              vcu_pl_enc_arid0,    
output wire  [7:0]                              vcu_pl_enc_arlen0,
input  wire                                     pl_vcu_enc_arready0,
output wire  [2:0]                              vcu_pl_enc_arsize0,
output wire                                     vcu_pl_enc_arvalid0,
output wire  [43:0]                             vcu_pl_enc_awaddr0,
output wire  [1:0]                              vcu_pl_enc_awburst0,
output wire  [3:0]                              vcu_pl_enc_awid0,    
output wire  [7:0]                              vcu_pl_enc_awlen0,
input  wire                                     pl_vcu_enc_awready0,
output wire  [2:0]                              vcu_pl_enc_awsize0,
output wire                                     vcu_pl_enc_awvalid0,
output wire                                     vcu_pl_enc_bready0,
input  wire                                     pl_vcu_enc_bvalid0,
input  wire  [3:0]                              pl_vcu_enc_bid0,     
input  wire  [C_VCU_ENC0_DATA_WIDTH-1:0]        pl_vcu_enc_rdata0,
input  wire  [3:0]                              pl_vcu_enc_rid0,     
input  wire                                     pl_vcu_enc_rlast0,
output wire                                     vcu_pl_enc_rready0,
input  wire                                     pl_vcu_enc_rvalid0,
output wire  [C_VCU_ENC0_DATA_WIDTH-1:0]        vcu_pl_enc_wdata0,
output wire                                     vcu_pl_enc_wlast0,
input  wire  [1:0]                              pl_vcu_enc_bresp0,
input  wire  [1:0]                              pl_vcu_enc_rresp0,
input  wire                                     pl_vcu_enc_wready0,
output wire                                     vcu_pl_enc_wvalid0,
output wire  [2:0]                              vcu_pl_enc_awprot0,
output wire  [2:0]                              vcu_pl_enc_arprot0,
output wire  [3:0]                              vcu_pl_enc_awcache0,   
output wire  [3:0]                              vcu_pl_enc_arcache0,
output wire  [3:0]                              vcu_pl_enc_awqos0,
output wire  [3:0]                              vcu_pl_enc_arqos0,

//VCU-ENC-AXI-MASTER1
output wire  [43:0]                             vcu_pl_enc_araddr1,
output wire  [1:0]                              vcu_pl_enc_arburst1,
output wire  [3:0]                              vcu_pl_enc_arid1,
output wire  [7:0]                              vcu_pl_enc_arlen1,
input  wire                                     pl_vcu_enc_arready1,
output wire  [2:0]                              vcu_pl_enc_arsize1,
output wire                                     vcu_pl_enc_arvalid1,
output wire  [43:0]                             vcu_pl_enc_awaddr1,
output wire  [1:0]                              vcu_pl_enc_awburst1,
output wire  [3:0]                              vcu_pl_enc_awid1,
output wire  [7:0]                              vcu_pl_enc_awlen1,
input  wire                                     pl_vcu_enc_awready1,
output wire  [2:0]                              vcu_pl_enc_awsize1,
output wire                                     vcu_pl_enc_awvalid1,
output wire                                     vcu_pl_enc_bready1,
input  wire                                     pl_vcu_enc_bvalid1,
input  wire  [3:0]                              pl_vcu_enc_bid1,
input  wire  [C_VCU_ENC1_DATA_WIDTH-1:0]        pl_vcu_enc_rdata1,
input  wire  [3:0]                              pl_vcu_enc_rid1,
input  wire                                     pl_vcu_enc_rlast1,
output wire                                     vcu_pl_enc_rready1,
input  wire                                     pl_vcu_enc_rvalid1,
output wire  [C_VCU_ENC1_DATA_WIDTH-1:0]        vcu_pl_enc_wdata1,
output wire                                     vcu_pl_enc_wlast1,
input  wire  [1:0]                              pl_vcu_enc_bresp1,
input  wire  [1:0]                              pl_vcu_enc_rresp1,
input  wire                                     pl_vcu_enc_wready1,
output wire                                     vcu_pl_enc_wvalid1,
output wire  [2:0]                              vcu_pl_enc_awprot1,
output wire  [2:0]                              vcu_pl_enc_arprot1,
output wire  [3:0]                              vcu_pl_enc_awcache1,
output wire  [3:0]                              vcu_pl_enc_arcache1,
output wire  [3:0]                              vcu_pl_enc_awqos1,
output wire  [3:0]                              vcu_pl_enc_arqos1,

//VCU-DEC-AXI-MASTER
input  wire                                     m_axi_dec_aclk,

//VCU-DEC-AXI-MASTER0
output wire  [43:0]                             vcu_pl_dec_araddr0,
output wire  [1:0]                              vcu_pl_dec_arburst0,
output wire  [3:0]                              vcu_pl_dec_arid0,
output wire  [7:0]                              vcu_pl_dec_arlen0,
input  wire                                     pl_vcu_dec_arready0,
output wire  [2:0]                              vcu_pl_dec_arsize0,
output wire                                     vcu_pl_dec_arvalid0,
output wire  [43:0]                             vcu_pl_dec_awaddr0,
output wire  [1:0]                              vcu_pl_dec_awburst0,
output wire  [3:0]                              vcu_pl_dec_awid0,
output wire  [7:0]                              vcu_pl_dec_awlen0,
input  wire                                     pl_vcu_dec_awready0,
output wire  [2:0]                              vcu_pl_dec_awsize0,
output wire                                     vcu_pl_dec_awvalid0,
output wire                                     vcu_pl_dec_bready0,
input  wire                                     pl_vcu_dec_bvalid0,
input  wire  [3:0]                              pl_vcu_dec_bid0,
input  wire  [C_VCU_DEC0_DATA_WIDTH-1:0]        pl_vcu_dec_rdata0,
input  wire  [3:0]                              pl_vcu_dec_rid0,
input  wire                                     pl_vcu_dec_rlast0,
output wire                                     vcu_pl_dec_rready0,
input  wire                                     pl_vcu_dec_rvalid0,
output wire  [C_VCU_DEC0_DATA_WIDTH-1:0]        vcu_pl_dec_wdata0,
output wire                                     vcu_pl_dec_wlast0,
input  wire  [1:0]                              pl_vcu_dec_bresp0,
input  wire  [1:0]                              pl_vcu_dec_rresp0,
input  wire                                     pl_vcu_dec_wready0,
output wire                                     vcu_pl_dec_wvalid0,
output wire  [2:0]                              vcu_pl_dec_awprot0,
output wire  [2:0]                              vcu_pl_dec_arprot0,
output wire  [3:0]                              vcu_pl_dec_awcache0,
output wire  [3:0]                              vcu_pl_dec_arcache0,
output wire  [3:0]                              vcu_pl_dec_awqos0,
output wire  [3:0]                              vcu_pl_dec_arqos0,

//VCU-DEC-AXI-MASTER1
output wire  [43:0]                             vcu_pl_dec_araddr1,
output wire  [1:0]                              vcu_pl_dec_arburst1,
output wire  [3:0]                              vcu_pl_dec_arid1,
output wire  [7:0]                              vcu_pl_dec_arlen1,
input  wire                                     pl_vcu_dec_arready1,
output wire  [2:0]                              vcu_pl_dec_arsize1,
output wire                                     vcu_pl_dec_arvalid1,
output wire  [43:0]                             vcu_pl_dec_awaddr1,
output wire  [1:0]                              vcu_pl_dec_awburst1,
output wire  [3:0]                              vcu_pl_dec_awid1,
output wire  [7:0]                              vcu_pl_dec_awlen1,
input  wire                                     pl_vcu_dec_awready1,
output wire  [2:0]                              vcu_pl_dec_awsize1,
output wire                                     vcu_pl_dec_awvalid1,
output wire                                     vcu_pl_dec_bready1,
input  wire                                     pl_vcu_dec_bvalid1,
input  wire  [3:0]                              pl_vcu_dec_bid1,
input  wire  [C_VCU_DEC1_DATA_WIDTH-1:0]        pl_vcu_dec_rdata1,
input  wire  [3:0]                              pl_vcu_dec_rid1,
input  wire                                     pl_vcu_dec_rlast1,
output wire                                     vcu_pl_dec_rready1,
input  wire                                     pl_vcu_dec_rvalid1,
output wire  [C_VCU_DEC1_DATA_WIDTH-1:0]        vcu_pl_dec_wdata1,
output wire                                     vcu_pl_dec_wlast1,
input  wire  [1:0]                              pl_vcu_dec_bresp1,
input  wire  [1:0]                              pl_vcu_dec_rresp1,
input  wire                                     pl_vcu_dec_wready1,
output wire                                     vcu_pl_dec_wvalid1,
output wire  [2:0]                              vcu_pl_dec_awprot1,
output wire  [2:0]                              vcu_pl_dec_arprot1,
output wire  [3:0]                              vcu_pl_dec_awcache1,
output wire  [3:0]                              vcu_pl_dec_arcache1,
output wire  [3:0]                              vcu_pl_dec_awqos1,
output wire  [3:0]                              vcu_pl_dec_arqos1,

//VCU-MCU-AXI -MASTER
input  wire                                     m_axi_mcu_aclk,
output wire  [43:0]                             vcu_pl_mcu_m_axi_ic_dc_araddr,
output wire  [1:0]                              vcu_pl_mcu_m_axi_ic_dc_arburst,
output wire  [3:0]                              vcu_pl_mcu_m_axi_ic_dc_arcache,
output wire  [2:0]                              vcu_pl_mcu_m_axi_ic_dc_arid,
output wire  [7:0]                              vcu_pl_mcu_m_axi_ic_dc_arlen,
output wire                                     vcu_pl_mcu_m_axi_ic_dc_arlock,
output wire  [2:0]                              vcu_pl_mcu_m_axi_ic_dc_arprot,
output wire  [3:0]                              vcu_pl_mcu_m_axi_ic_dc_arqos,
input  wire                                     pl_vcu_mcu_m_axi_ic_dc_arready,
output wire  [2:0]                              vcu_pl_mcu_m_axi_ic_dc_arsize,
output wire                                     vcu_pl_mcu_m_axi_ic_dc_arvalid,
output wire  [43:0]                             vcu_pl_mcu_m_axi_ic_dc_awaddr,
output wire  [1:0]                              vcu_pl_mcu_m_axi_ic_dc_awburst,
output wire  [3:0]                              vcu_pl_mcu_m_axi_ic_dc_awcache,
output wire  [2:0]                              vcu_pl_mcu_m_axi_ic_dc_awid,
output wire  [7:0]                              vcu_pl_mcu_m_axi_ic_dc_awlen,
output wire                                     vcu_pl_mcu_m_axi_ic_dc_awlock,
output wire  [2:0]                              vcu_pl_mcu_m_axi_ic_dc_awprot,
output wire  [3:0]                              vcu_pl_mcu_m_axi_ic_dc_awqos,
input  wire                                     pl_vcu_mcu_m_axi_ic_dc_awready,
output wire  [2:0]                              vcu_pl_mcu_m_axi_ic_dc_awsize,
output wire                                     vcu_pl_mcu_m_axi_ic_dc_awvalid,
input  wire  [2:0]                              pl_vcu_mcu_m_axi_ic_dc_bid,
output wire                                     vcu_pl_mcu_m_axi_ic_dc_bready,
input  wire  [1:0]                              pl_vcu_mcu_m_axi_ic_dc_bresp,
input  wire                                     pl_vcu_mcu_m_axi_ic_dc_bvalid,
input  wire  [C_VCU_MCU_DATA_WIDTH-1:0]         pl_vcu_mcu_m_axi_ic_dc_rdata,
input  wire  [2:0]                              pl_vcu_mcu_m_axi_ic_dc_rid,
input  wire                                     pl_vcu_mcu_m_axi_ic_dc_rlast,
output wire                                     vcu_pl_mcu_m_axi_ic_dc_rready,
input  wire  [1:0]                              pl_vcu_mcu_m_axi_ic_dc_rresp,
input  wire                                     pl_vcu_mcu_m_axi_ic_dc_rvalid,
output wire  [C_VCU_MCU_DATA_WIDTH-1:0]         vcu_pl_mcu_m_axi_ic_dc_wdata,
output wire                                     vcu_pl_mcu_m_axi_ic_dc_wlast,
input  wire                                     pl_vcu_mcu_m_axi_ic_dc_wready,
output wire  [3:0]                              vcu_pl_mcu_m_axi_ic_dc_wstrb,
output wire                                     vcu_pl_mcu_m_axi_ic_dc_wvalid,

// EP Ports

input wire                                      REF_CLK_IN_P,
input wire                                      REF_CLK_IN_N,
input wire                                      SYS_1X_CLK_IN_P,
input wire                                      SYS_1X_CLK_IN_N,
input wire                                      SYS_2X_CLK_IN_P,
input wire                                      SYS_2X_CLK_IN_N,
input wire                                      SERDES_CLK_IN_P,
input wire                                      SERDES_CLK_IN_N,

output wire                                     refclk,
output wire                                     sys1xclk,
output wire                                     systemrst_refclk_b,
output wire                                     systemrst_b,

input wire  [3:0]                               GLOBAL_RESET,
input wire                                      CONFIG_LOOP_IN,
output wire                                     CONFIG_LOOP_OUT,

output wire [5:0]                               ENCB11_CORE42_OUT_P,
output wire [5:0]                               ENCB11_CORE42_OUT_N,
output wire [23:0]                              ENCA33_CORE39_P,
output wire [23:0]                              ENCA33_CORE39_N,
output wire [23:0]                              ENCA12_CORE18_P,
output wire [23:0]                              ENCA12_CORE18_N,
output wire [23:0]                              ENCA31_CORE37_P,
output wire [23:0]                              ENCA31_CORE37_N,
output wire [23:0]                              CORE41_DEC34_P,
output wire [23:0]                              CORE41_DEC34_N,
output wire [22:0]                              CORE20_DEC36_P,
output wire [22:0]                              CORE20_DEC36_N,

input wire  [15:0]                              ENCB11_CORE42_IN_P,
input wire  [15:0]                              ENCB11_CORE42_IN_N,
input wire  [23:0]                              ENCA32_CORE38_P,
input wire  [23:0]                              ENCA32_CORE38_N,
input wire  [21:0]                              ENCA13_CORE19_P,
input wire  [21:0]                              ENCA13_CORE19_N,
input wire  [21:0]                              ENCA11_CORE17_P,
input wire  [21:0]                              ENCA11_CORE17_N,
input wire  [23:0]                              CORE21_DEC15_P,
input wire  [23:0]                              CORE21_DEC15_N,
input wire  [23:0]                              CORE40_DEC35_P,
input wire  [23:0]                              CORE40_DEC35_N,

//VCU - SPARE
input  wire  [5:0]                              pl_vcu_spare_port_in1,
input  wire  [5:0]                              pl_vcu_spare_port_in2,
input  wire  [5:0]                              pl_vcu_spare_port_in3,
input  wire  [5:0]                              pl_vcu_spare_port_in4,
input  wire  [5:0]                              pl_vcu_spare_port_in5,
input  wire  [5:0]                              pl_vcu_spare_port_in6,
input  wire  [5:0]                              pl_vcu_spare_port_in7,
input  wire  [5:0]                              pl_vcu_spare_port_in8,
input  wire  [5:0]                              pl_vcu_spare_port_in9,
input  wire  [5:0]                              pl_vcu_spare_port_in10,
input  wire  [5:0]                              pl_vcu_spare_port_in11,
input  wire  [5:0]                              pl_vcu_spare_port_in12,
input  wire  [5:0]                              pl_vcu_spare_port_in13,
output wire  [1:0]                              vcu_pl_spare_port_out1,
output wire  [1:0]                              vcu_pl_spare_port_out2,
output wire  [1:0]                              vcu_pl_spare_port_out3,
output wire  [1:0]                              vcu_pl_spare_port_out4,
output wire  [1:0]                              vcu_pl_spare_port_out5,
output wire  [1:0]                              vcu_pl_spare_port_out6,
output wire  [1:0]                              vcu_pl_spare_port_out7,
output wire  [1:0]                              vcu_pl_spare_port_out8,
output wire  [5:0]                              vcu_pl_spare_port_out9,
output wire  [5:0]                              vcu_pl_spare_port_out10,
output wire  [5:0]                              vcu_pl_spare_port_out11,
output wire  [5:0]                              vcu_pl_spare_port_out12,
output wire  [5:0]                              vcu_pl_spare_port_out13,

//VCU - FABRIC
input  wire                                     core_clk,
input  wire                                     mcu_clk,
input  wire                                     pll_ref_clk,
output wire                                     vcu_pl_core_status_clk_pll,
output wire                                     vcu_pl_mcu_status_clk_pll,
output wire                                     vcu_pl_pll_status_pll_lock,
input  wire                                     vcu_resetn,
output wire                                     vcu_pl_pwr_supply_status_vccaux,
output wire                                     vcu_pl_pwr_supply_status_vcuint,
input  wire                                     vcu_pwr_stable,
output wire                                     vcu_host_interrupt,

//output wire                                     clock_high_enable,
//output wire                                     clock_low_enable,

//VCU - L2C
// L2C bus is internally connected except the clk which needs to be driven from outside.
//TBD : removing now  input  wire                                     enc_buffer_clk,
// output wire                                     vcu_pl_enc_al_l2c_rvalid,
// input  wire                                     pl_vcu_enc_al_l2c_rready,
// output wire  [16:0]                             vcu_pl_enc_al_l2c_addr,
// input  wire  [319:0]                            pl_vcu_enc_al_l2c_rdata,
// output wire                                     vcu_pl_enc_al_l2c_wvalid,
// output wire  [319:0]                            vcu_pl_enc_al_l2c_wdata,

//VCU - ENC - DEBUG
input  wire                                     pl_vcu_mcu_venc_debug_clk,
input  wire                                     pl_vcu_mcu_venc_debug_sys_rst,
input  wire                                     pl_vcu_mcu_venc_debug_rst,
input  wire                                     pl_vcu_mcu_venc_debug_capture,
input  wire  [7:0]                              pl_vcu_mcu_venc_debug_reg_en,
input  wire                                     pl_vcu_mcu_venc_debug_shift,
input  wire                                     pl_vcu_mcu_venc_debug_tdi,
output wire                                     vcu_pl_mcu_venc_debug_tdo,
input  wire                                     pl_vcu_mcu_venc_debug_update,

//VCU - DEC - DEBUG
input  wire                                     pl_vcu_mcu_vdec_debug_clk,
input  wire                                     pl_vcu_mcu_vdec_debug_sys_rst,
input  wire                                     pl_vcu_mcu_vdec_debug_rst,
input  wire                                     pl_vcu_mcu_vdec_debug_capture,
input  wire  [7:0]                              pl_vcu_mcu_vdec_debug_reg_en,
input  wire                                     pl_vcu_mcu_vdec_debug_shift,
input  wire                                     pl_vcu_mcu_vdec_debug_tdi,
output wire                                     vcu_pl_mcu_vdec_debug_tdo,
input  wire                                     pl_vcu_mcu_vdec_debug_update,

//VCU - TEST
/*
input  wire  [53:0]                             vcu_test_in,
output wire  [53:0]                             vcu_test_out,
*/

//VCU - IOCHAR
/*
input  wire                                     pl_vcu_iochar_enc_axi0_data_in,
input  wire                                     pl_vcu_iochar_enc_axi1_data_in,
input  wire                                     pl_vcu_iochar_enc_cache_data_in,
input  wire                                     pl_vcu_iochar_mcu_axi_data_in,
input  wire                                     pl_vcu_iochar_dec_axi0_data_in,
input  wire                                     pl_vcu_iochar_dec_axi1_data_in,
input  wire                                     pl_vcu_iochar_data_in_sel_n,
output wire                                     vcu_pl_iochar_enc_axi0_data_out,
output wire                                     vcu_pl_iochar_enc_axi1_data_out,
output wire                                     vcu_pl_iochar_enc_cache_data_out,
output wire                                     vcu_pl_iochar_mcu_axi_data_out,
output wire                                     vcu_pl_iochar_dec_axi0_data_out,
output wire                                     vcu_pl_iochar_dec_axi1_data_out,
*/

//VCU - TEST
// Based on req for PLL debug..
//input  wire  [3:0]                            vcu_pll_test_sel,
//input  wire  [2:0]                            vcu_pll_test_ck_sel,
//input  wire                                   vcu_pll_test_fract_en,
//input  wire                                   vcu_pll_test_fract_clk_sel,

/*
output wire  [31:0]                             vcu_pll_test_out,
output wire                                     vcu_rstest_pll_lock,
input  wire                                     pl_vcu_scan_clk,
input  wire                                     pl_vcu_scan_wrap_clk,
input  wire                                     pl_vcu_scan_edt_clk,
input  wire                                     pl_vcu_scan_edtlowp_en_n,
input  wire                                     pl_vcu_scanenable_clkctrl_n,
input  wire                                     pl_vcu_scan_mode_n,
input  wire                                     pl_vcu_scan_reset_n,
input  wire                                     pl_vcu_scan_en_n,
input  wire  [1:0]                              pl_vcu_scan_wrap_ctrl_n,
input  wire  [6:0]                              pl_vcu_scan_part_ctrl_n,
input  wire                                     pl_vcu_scan_edt_update_n,
input  wire                                     pl_vcu_scan_edt_bypass_n,
input  wire  [2:0]                              pl_vcu_scan_in_enc,
output wire  [2:0]                              vcu_pl_scan_out_enc0,
output wire  [2:0]                              vcu_pl_scan_out_enc1,
output wire  [2:0]                              vcu_pl_scan_out_enc2,
output wire  [2:0]                              vcu_pl_scan_out_enc3,
input  wire  [2:0]                              pl_vcu_scan_in_dec,
output wire  [2:0]                              vcu_pl_scan_out_dec0,
output wire  [2:0]                              vcu_pl_scan_out_dec1,
input  wire  [2:0]                              pl_vcu_scan_in_top,
output wire  [2:0]                              vcu_pl_scan_out_top,
input  wire                                     pl_vcu_scan_in_clk_ctrl,
output wire                                     vcu_pl_scan_out_clk_ctrl,
input  wire                                     pl_vcu_scan_test_type_n,
input  wire                                     pl_vcu_scan_chopp_trigger_n,
input  wire                                     pl_vcu_scan_ram_bypass_n,
input  wire  [5:0]                              pl_vcu_scan_spare_in,
output wire  [5:0]                              vcu_pl_scan_spare_out,
input  wire  [1:0]                              pl_vcu_mbist_spare_in,
output wire  [1:0]                              vcu_pl_mbist_spare_out,
input  wire                                     pl_vcu_mbist_jtap_tck,
input  wire                                     pl_vcu_mbist_jtap_tms,
input  wire                                     pl_vcu_mbist_jtap_tdi,
output wire                                     vcu_pl_mbist_jtap_tdo,
input  wire                                     pl_vcu_mbist_jtap_trst,
output wire                                     vcu_pl_mbist_comparator_value,
input  wire                                     pl_vcu_mbist_enable_n,
*/

// EP Teams inputs
output wire  [15:0]                             vcu_pl_enc_wstrb1,
output wire  [15:0]                             vcu_pl_enc_wstrb0,
output wire  [15:0]                             vcu_pl_dec_wstrb1,
output wire  [15:0]                             vcu_pl_dec_wstrb0,

output wire  [3:0]                              vcu_pl_enc_awregion1,
output wire  [3:0]                              vcu_pl_enc_awregion0,
output wire  [3:0]                              vcu_pl_enc_arregion1,
output wire  [3:0]                              vcu_pl_enc_arregion0,
output wire  [3:0]                              vcu_pl_dec_awregion1,
output wire  [3:0]                              vcu_pl_dec_awregion0,
output wire  [3:0]                              vcu_pl_dec_arregion1,
output wire  [3:0]                              vcu_pl_dec_arregion0,

output wire                                     vcu_pl_enc_awlock1,
output wire                                     vcu_pl_enc_awlock0,
output wire                                     vcu_pl_enc_arlock1,
output wire                                     vcu_pl_enc_arlock0,
output wire                                     vcu_pl_dec_awlock1,
output wire                                     vcu_pl_dec_awlock0,
output wire                                     vcu_pl_dec_arlock1,
output wire                                     vcu_pl_dec_arlock0 

);

//parameter C_XDEVICEFAMILY = `FAMILY_VIRTEX7;
parameter log2_C_RAM_DEPTH = clogb2(HDL_MEM_DEPTH -1);

wire  [43:0]                             mcu_wt_snoop_addr_pll_change;
wire  [15:0]                             pll_high_low_value;

wire  [3:0]                              vcu_pll_test_sel;
wire  [2:0]                              vcu_pll_test_ck_sel;
wire                                     vcu_pll_test_fract_en;
wire                                     vcu_pll_test_fract_clk_sel;

wire  [255:0]                            pl_vcu_enc_al_l2c_rdata_from_mem;
wire  [255:0]                            vcu_pl_enc_al_l2c_wdata_to_mem;

wire  [319:0]                            vcu_pl_enc_al_l2c_wdata;
wire  [319:0]                            pl_vcu_enc_al_l2c_rdata;
wire                                     vcu_pl_enc_al_l2c_rvalid;
wire                                     pl_vcu_enc_al_l2c_rready;
wire  [log2_C_RAM_DEPTH - 1:0]           vcu_pl_enc_al_l2c_addr;
wire                                     vcu_pl_enc_al_l2c_wvalid;

reg  [319:0]                             vcu_pl_enc_al_l2c_wdata_r1;
reg  [319:0]                             pl_vcu_enc_al_l2c_rdata_r1;
reg                                      vcu_pl_enc_al_l2c_rvalid_r1;
reg                                      pl_vcu_enc_al_l2c_rready_r1;
reg  [log2_C_RAM_DEPTH - 1:0]            vcu_pl_enc_al_l2c_addr_r1;
reg                                      vcu_pl_enc_al_l2c_wvalid_r1;

reg  [319:0]                             vcu_pl_enc_al_l2c_wdata_r2;
reg  [319:0]                             pl_vcu_enc_al_l2c_rdata_r2;
reg                                      vcu_pl_enc_al_l2c_rvalid_r2;
reg                                      pl_vcu_enc_al_l2c_rready_r2;
reg  [log2_C_RAM_DEPTH - 1:0]            vcu_pl_enc_al_l2c_addr_r2;
reg                                      vcu_pl_enc_al_l2c_wvalid_r2;

wire                                     pl_vcu_enc_al_l2c_rready_final;
wire                                     pl_vcu_enc_al_l2c_rready_read;
reg                                      pl_vcu_enc_al_l2c_rready_read_1;
reg                                      pl_vcu_enc_al_l2c_rready_read_2;
reg                                      pl_vcu_enc_al_l2c_rready_read_3;
wire                                     mem_rst;
wire                                     mem_enable;
wire                                     vcu_gasket_enable;

wire                                     vcu_pl_arready_axi_lite_apb_i;
wire  [C_VCU_AXILITEAPB_DATA_WIDTH-1:0]  vcu_pl_rdata_axi_lite_apb_i;
wire  [1:0]                              vcu_pl_rresp_axi_lite_apb_i;
wire                                     vcu_pl_rvalid_axi_lite_apb_i;
wire                                     pl_vcu_rready_axi_lite_apb_i;
wire                                     lc_vcu_arvalid_axi_lite_apb;
wire                                     lc_pl_arready_axi_lite_apb;

wire  [19:0]                             lc_vcu_awaddr_axi_lite_apb;
wire  [2:0]                              lc_vcu_awprot_axi_lite_apb;
wire  [C_VCU_AXILITEAPB_DATA_WIDTH-1:0]  lc_vcu_wdata_axi_lite_apb;
wire  [3:0]                              lc_vcu_wstrb_axi_lite_apb;
wire                                     lc_vcu_bready_axi_lite_apb;

wire                                     vcu_pl_awready_axi_lite_apb_i;
wire                                     vcu_pl_wready_axi_lite_apb_i;
wire [1:0]                               vcu_pl_bresp_axi_lite_apb_i;
wire                                     vcu_pl_bvalid_axi_lite_apb_i;
wire                                     pl_vcu_wvalid_axi_lite_apb_i;
wire                                     pl_vcu_awvalid_axi_lite_apb_i;

wire                                     enc_buffer_clk;

wire                                     vcu_pl_enc_awprot0_onebit;
wire                                     vcu_pl_enc_arprot0_onebit;
wire                                     vcu_pl_enc_awprot1_onebit;
wire                                     vcu_pl_enc_arprot1_onebit;
wire                                     vcu_pl_dec_awprot0_onebit;
wire                                     vcu_pl_dec_arprot0_onebit;
wire                                     vcu_pl_dec_awprot1_onebit;
wire                                     vcu_pl_dec_arprot1_onebit;

wire                                     vcu_resetn_soft;
wire                                     vcu_resetn_soft_ec;


reg [HDL_PIPELINE_DEPTH+4-1:0]             shift_reg;

// function called clogb2 that returns an integer which has the 
// value of the ceiling of the log base 2.                      
function integer clogb2 (input integer bit_depth);   
integer bitdepth ;
  begin                  
    bitdepth = bit_depth;                                         
    for(clogb2=0; bitdepth>0; clogb2=clogb2+1)                   
      bitdepth = bitdepth >> 1;                                 
  end                                                           
endfunction 



assign vcu_test_in = 54'hFFFFFFFFFFFFFF;
assign pl_vcu_iochar_enc_axi0_data_in = 1'b1;
assign pl_vcu_iochar_enc_axi1_data_in = 1'b1;
assign pl_vcu_iochar_enc_cache_data_in = 1'b1;
assign pl_vcu_iochar_mcu_axi_data_in = 1'b1;
assign pl_vcu_iochar_dec_axi0_data_in = 1'b1;
assign pl_vcu_iochar_dec_axi1_data_in = 1'b1;
assign pl_vcu_iochar_data_in_sel_n = 1'b1;

//assign vcu_pll_test_sel = 4'b1111;
//assign vcu_pll_test_ck_sel = 3'b111;
//assign vcu_pll_test_fract_en = 1'b1;
//assign vcu_pll_test_fract_clk_sel = 1'b1;

assign pl_vcu_scan_clk = 1'b1;
assign pl_vcu_scan_wrap_clk = 1'b1;
assign pl_vcu_scan_edt_clk = 1'b1;
assign pl_vcu_scan_edtlowp_en_n = 1'b1;
assign pl_vcu_scanenable_clkctrl_n = 1'b1;
assign pl_vcu_scan_mode_n = 1'b1;
assign pl_vcu_scan_reset_n = 1'b1;
assign pl_vcu_scan_en_n = 1'b1;
assign pl_vcu_scan_wrap_ctrl_n = 2'b11;
assign pl_vcu_scan_part_ctrl_n = 7'b1111111;
assign pl_vcu_scan_edt_update_n = 1'b1;
assign pl_vcu_scan_edt_bypass_n = 1'b1;
assign pl_vcu_scan_in_enc = 3'b111;
assign pl_vcu_scan_in_dec = 3'b111;
assign pl_vcu_scan_in_top = 3'b111;
assign pl_vcu_scan_in_clk_ctrl = 1'b1;
assign pl_vcu_scan_test_type_n = 1'b1;
assign pl_vcu_scan_chopp_trigger_n = 1'b1;
assign pl_vcu_scan_ram_bypass_n = 1'b1;
assign pl_vcu_scan_spare_in  = 6'b111111;
assign pl_vcu_mbist_spare_in = 2'b11;
assign pl_vcu_mbist_jtap_tck = 1'b1;
assign pl_vcu_mbist_jtap_tms = 1'b1;
assign pl_vcu_mbist_jtap_tdi = 1'b1;
assign pl_vcu_mbist_jtap_trst = 1'b1;
assign pl_vcu_mbist_enable_n = 1'b1;
assign pl_vcu_spare_port_in1 = 6'b111111;
assign pl_vcu_spare_port_in2 = 6'b111111;
assign pl_vcu_spare_port_in3 = 6'b111111;
assign pl_vcu_spare_port_in4 = 6'b111111;
assign pl_vcu_spare_port_in5 = 6'b111111;
assign pl_vcu_spare_port_in6 = 6'b111111;
assign pl_vcu_spare_port_in7 = 6'b111111;
assign pl_vcu_spare_port_in8 = 6'b111111;
assign pl_vcu_spare_port_in9 = 6'b111111;
assign pl_vcu_spare_port_in10 = 6'b111111;
assign pl_vcu_spare_port_in11 = 6'b111111;
assign pl_vcu_spare_port_in12 = 6'b111111;
assign pl_vcu_spare_port_in13 = 6'b111111;

assign pl_vcu_enc_al_l2c_rready       = 1'b1;
assign pl_vcu_enc_al_l2c_rready_final = pl_vcu_enc_al_l2c_rready_read;
assign mem_rst = !vcu_resetn_soft_ec;
assign mem_enable = vcu_pl_enc_al_l2c_rvalid_r2 | vcu_pl_enc_al_l2c_wvalid_r2;
assign enc_buffer_clk =  m_axi_enc_aclk; // Taking clock for enc buffer from axi clock


   always @ (posedge enc_buffer_clk)
   begin
      if (vcu_resetn_soft_ec == 1'b0) begin
          vcu_pl_enc_al_l2c_rvalid_r1 <= 'h0;
          vcu_pl_enc_al_l2c_rvalid_r2 <= 'h0;
          vcu_pl_enc_al_l2c_wvalid_r1 <= 'h0;
          vcu_pl_enc_al_l2c_wvalid_r2 <= 'h0;
          vcu_pl_enc_al_l2c_addr_r1   <= 'h0;
          vcu_pl_enc_al_l2c_addr_r2   <= 'h0;
          vcu_pl_enc_al_l2c_wdata_r1  <= 'h0;
          vcu_pl_enc_al_l2c_wdata_r2  <= 'h0;

          pl_vcu_enc_al_l2c_rdata_r1  <= 'h0;
          pl_vcu_enc_al_l2c_rdata_r2  <= 'h0;
	  end else  begin
          vcu_pl_enc_al_l2c_rvalid_r1 <= vcu_pl_enc_al_l2c_rvalid;
          vcu_pl_enc_al_l2c_rvalid_r2 <= vcu_pl_enc_al_l2c_rvalid_r1;
          vcu_pl_enc_al_l2c_wvalid_r1 <= vcu_pl_enc_al_l2c_wvalid;
          vcu_pl_enc_al_l2c_wvalid_r2 <= vcu_pl_enc_al_l2c_wvalid_r1;
          vcu_pl_enc_al_l2c_addr_r1   <= vcu_pl_enc_al_l2c_addr;
          vcu_pl_enc_al_l2c_addr_r2   <= vcu_pl_enc_al_l2c_addr_r1;
          vcu_pl_enc_al_l2c_wdata_r1  <= vcu_pl_enc_al_l2c_wdata;
          vcu_pl_enc_al_l2c_wdata_r2  <= vcu_pl_enc_al_l2c_wdata_r1;

          pl_vcu_enc_al_l2c_rdata_r1  <= pl_vcu_enc_al_l2c_rdata;
          pl_vcu_enc_al_l2c_rdata_r2  <= pl_vcu_enc_al_l2c_rdata_r1;
      end
   end


   always @ (posedge enc_buffer_clk)
   begin
      if (vcu_resetn_soft_ec == 1'b0) begin
          shift_reg <= 'h0;
	  end else  begin
          shift_reg <= {shift_reg[HDL_PIPELINE_DEPTH+4-2:0], vcu_pl_enc_al_l2c_rvalid};
      end
   end   
  assign pl_vcu_enc_al_l2c_rready_read = shift_reg[HDL_PIPELINE_DEPTH+4-1];

//  always @ (posedge pl_vcu_enc_l2c_clk) begin
//     pl_vcu_enc_al_l2c_rready_read_1 <= vcu_pl_enc_al_l2c_rvalid;
//  end
//  assign pl_vcu_enc_al_l2c_rready_read = pl_vcu_enc_al_l2c_rready_read_1;
 
 generate 
   if ((HDL_ENCODER_EN == 1) && (HDL_ENC_BUFFER_EN == 1)) begin
	 if ((HDL_TABLE_NO == 2) || (HDL_TABLE_NO == 4)) begin 

        assign pl_vcu_enc_al_l2c_rdata = {pl_vcu_enc_al_l2c_rdata_from_mem[255:248],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[247:240],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[239:232],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[231:224],2'b00,
                                          pl_vcu_enc_al_l2c_rdata_from_mem[223:216],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[215:208],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[207:200],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[199:192],2'b00,
                                          pl_vcu_enc_al_l2c_rdata_from_mem[191:184],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[183:176],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[175:168],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[167:160],2'b00,
                                          pl_vcu_enc_al_l2c_rdata_from_mem[159:152],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[151:144],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[143:136],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[135:128],2'b00,
                                          pl_vcu_enc_al_l2c_rdata_from_mem[127:120],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[119:112],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[111:104],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[103:96], 2'b00,
                                          pl_vcu_enc_al_l2c_rdata_from_mem[95:88],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[87:80],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[79:72],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[71:64],2'b00,
                                          pl_vcu_enc_al_l2c_rdata_from_mem[63:56],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[55:48],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[47:40],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[39:32],2'b00,
                                          pl_vcu_enc_al_l2c_rdata_from_mem[31:24],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[23:16],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[15:8],2'b00, pl_vcu_enc_al_l2c_rdata_from_mem[7:0]
                                         };

        assign vcu_pl_enc_al_l2c_wdata_to_mem = {vcu_pl_enc_al_l2c_wdata_r2[317:310], vcu_pl_enc_al_l2c_wdata_r2[307:300], vcu_pl_enc_al_l2c_wdata_r2[297:290], vcu_pl_enc_al_l2c_wdata_r2[287:280],
                                                 vcu_pl_enc_al_l2c_wdata_r2[277:270], vcu_pl_enc_al_l2c_wdata_r2[267:260], vcu_pl_enc_al_l2c_wdata_r2[257:250], vcu_pl_enc_al_l2c_wdata_r2[247:240],
                                                 vcu_pl_enc_al_l2c_wdata_r2[237:230], vcu_pl_enc_al_l2c_wdata_r2[227:220], vcu_pl_enc_al_l2c_wdata_r2[217:210], vcu_pl_enc_al_l2c_wdata_r2[207:200],
                                                 vcu_pl_enc_al_l2c_wdata_r2[197:190], vcu_pl_enc_al_l2c_wdata_r2[187:180], vcu_pl_enc_al_l2c_wdata_r2[177:170], vcu_pl_enc_al_l2c_wdata_r2[167:160],
                                                 vcu_pl_enc_al_l2c_wdata_r2[157:150], vcu_pl_enc_al_l2c_wdata_r2[147:140], vcu_pl_enc_al_l2c_wdata_r2[137:130], vcu_pl_enc_al_l2c_wdata_r2[127:120],
                                                 vcu_pl_enc_al_l2c_wdata_r2[117:110], vcu_pl_enc_al_l2c_wdata_r2[107:100], vcu_pl_enc_al_l2c_wdata_r2[97:90], vcu_pl_enc_al_l2c_wdata_r2[87:80],
                                                 vcu_pl_enc_al_l2c_wdata_r2[77:70], vcu_pl_enc_al_l2c_wdata_r2[67:60], vcu_pl_enc_al_l2c_wdata_r2[57:50], vcu_pl_enc_al_l2c_wdata_r2[47:40],
                                                 vcu_pl_enc_al_l2c_wdata_r2[37:30], vcu_pl_enc_al_l2c_wdata_r2[27:20], vcu_pl_enc_al_l2c_wdata_r2[17:10], vcu_pl_enc_al_l2c_wdata_r2[7:0]
										   };

     end
   end
 endgenerate

 generate 
    if ((HDL_ENCODER_EN == 1) && (HDL_ENC_BUFFER_EN == 1)) begin
 	  // HDL_TABLE_NO == 0 is no Enc Memory
	  if ((HDL_TABLE_NO == 0) || (HDL_ENC_BUFFER_EN == 0 )) begin
           //assign pl_vcu_enc_al_l2c_rdata  = 'h0; 
		   //assign vcu_pl_enc_al_l2c_wdata_to_mem = 'h0;
           ////assign pl_vcu_enc_l2c_clk = 1'b0;
           ////assign pl_vcu_enc_al_l2c_rready_final = 1'b0;
	  end
	  if ((HDL_TABLE_NO == 1) && (HDL_RAM_TYPE == 1)) begin // Only BRAM, 10 bit
         
	 xpm_memory_spram # (
           
             // Common module parameters
             .MEMORY_SIZE        (320*HDL_MEM_DEPTH),           // depth multiplied by width 20*320
             .MEMORY_PRIMITIVE   ("block"),        //string; "block" or "ultra";
             .MEMORY_INIT_FILE   ("none"),         //string; "none" or "<filename>.mem" 
             .MEMORY_INIT_PARAM  (""    ),         //string;  
             .USE_MEM_INIT       (0),              //integer; 0,1
             .WAKEUP_TIME        ("disable_sleep"),//string; "disable_sleep" or "use_sleep_pin" 
             .MESSAGE_CONTROL    (0),              //integer; 0,1
           
             // Port A module parameters
             .WRITE_DATA_WIDTH_A (320),             //
             .READ_DATA_WIDTH_A  (320),             //
             .BYTE_WRITE_WIDTH_A (320),             //integer; 8, 9, or WRITE_DATA_WIDTH_A value
             .ADDR_WIDTH_A       (log2_C_RAM_DEPTH),              //positive integer
             .READ_RESET_VALUE_A ("0"),            //string
             .READ_LATENCY_A     (HDL_PIPELINE_DEPTH),           //non-negative integer
             .WRITE_MODE_A       ("write_first")    //string; "write_first", "read_first", "no_change" 
           
           ) mem_bram_10bps (
           
             // Common module ports
             .sleep          (1'b0),
           
             // Port A module ports
             .clka           (enc_buffer_clk),
             .rsta           (mem_rst),
             .ena            (mem_enable),
             .regcea         (1'b1),
             .wea            (vcu_pl_enc_al_l2c_wvalid_r2),
             .addra          (vcu_pl_enc_al_l2c_addr_r2),
             .dina           (vcu_pl_enc_al_l2c_wdata_r2),
             .injectsbiterra (1'b0),  //do not change
             .injectdbiterra (1'b0),  //do not change
             .douta          (pl_vcu_enc_al_l2c_rdata),
             .sbiterra       (),      //do not change
             .dbiterra       ()       //do not change
           
           );
      end

	  if ((HDL_TABLE_NO == 1) && (HDL_RAM_TYPE == 0)) begin // Only URAM, 10 bit
           // xpm_memory_spram: Single Port RAM
           // Xilinx Parameterized Macro, Version 2016.3
           xpm_memory_spram # (
           
             // Common module parameters
             .MEMORY_SIZE        (320*HDL_MEM_DEPTH),           // depth multiplied by width 20*320
             .MEMORY_PRIMITIVE   ("ultra"),        //string; "block" or "ultra";
             .MEMORY_INIT_FILE   ("none"),         //string; "none" or "<filename>.mem" 
             .MEMORY_INIT_PARAM  (""    ),         //string;  
             .USE_MEM_INIT       (0),              //integer; 0,1
             .WAKEUP_TIME        ("disable_sleep"),//string; "disable_sleep" or "use_sleep_pin" 
             .MESSAGE_CONTROL    (0),              //integer; 0,1
           
             // Port A module parameters
             .WRITE_DATA_WIDTH_A (320),             //
             .READ_DATA_WIDTH_A  (320),             //
             .BYTE_WRITE_WIDTH_A (320),             //integer; 8, 9, or WRITE_DATA_WIDTH_A value
             .ADDR_WIDTH_A       (log2_C_RAM_DEPTH),              //positive integer
             .READ_RESET_VALUE_A ("0"),            //string
             .READ_LATENCY_A     (HDL_PIPELINE_DEPTH),              //non-negative integer
             .WRITE_MODE_A       ("write_first")    //string; "write_first", "read_first", "no_change" 
           
           ) mem_uram_10bps (
           
             // Common module ports
             .sleep          (1'b0),
           
             // Port A module ports
             .clka           (enc_buffer_clk),
             .rsta           (mem_rst),
             .ena            (mem_enable),
             .regcea         (1'b1),
             .wea            (vcu_pl_enc_al_l2c_wvalid_r2),
             .addra          (vcu_pl_enc_al_l2c_addr_r2),
             .dina           (vcu_pl_enc_al_l2c_wdata_r2),
             .injectsbiterra (1'b0),  //do not change
             .injectdbiterra (1'b0),  //do not change
             .douta          (pl_vcu_enc_al_l2c_rdata),
             .sbiterra       (),      //do not change
             .dbiterra       ()       //do not change
           
           );
            
      end

	  // 8-bit full search URAM/BRAM
	  if ((HDL_TABLE_NO == 2) && (HDL_RAM_TYPE == 1)) begin // Only BRAM, 8 bit

            xpm_memory_spram # (
           
             // Common module parameters
             .MEMORY_SIZE        (256*HDL_MEM_DEPTH),           // depth multiplied by width 20*256
             .MEMORY_PRIMITIVE   ("block"),        //string; "block" or "ultra";
             .MEMORY_INIT_FILE   ("none"),         //string; "none" or "<filename>.mem" 
             .MEMORY_INIT_PARAM  (""    ),         //string;  
             .USE_MEM_INIT       (0),              //integer; 0,1
             .WAKEUP_TIME        ("disable_sleep"),//string; "disable_sleep" or "use_sleep_pin" 
             .MESSAGE_CONTROL    (0),              //integer; 0,1
           
             // Port A module parameters
             .WRITE_DATA_WIDTH_A (256),             //
             .READ_DATA_WIDTH_A  (256),             //
             .BYTE_WRITE_WIDTH_A (256),             //integer; 8, 9, or WRITE_DATA_WIDTH_A value
             .ADDR_WIDTH_A       (log2_C_RAM_DEPTH),              //positive integer
             .READ_RESET_VALUE_A ("0"),            //string
             .READ_LATENCY_A     (HDL_PIPELINE_DEPTH),              //non-negative integer
             .WRITE_MODE_A       ("write_first")    //string; "write_first", "read_first", "no_change" 
           
           ) mem_bram_8bps (
           
             // Common module ports
             .sleep          (1'b0),
           
             // Port A module ports
             .clka           (enc_buffer_clk),
             .rsta           (mem_rst),
             .ena            (mem_enable),
             .regcea         (1'b1),
             .wea            (vcu_pl_enc_al_l2c_wvalid_r2),
             .addra          (vcu_pl_enc_al_l2c_addr_r2),
             .dina           (vcu_pl_enc_al_l2c_wdata_to_mem),
             .injectsbiterra (1'b0),  //do not change
             .injectdbiterra (1'b0),  //do not change
             .douta          (pl_vcu_enc_al_l2c_rdata_from_mem),
             .sbiterra       (),      //do not change
             .dbiterra       ()       //do not change
           
           );

   end
	  if ((HDL_TABLE_NO == 2) && (HDL_RAM_TYPE == 0)) begin // Only URAM, 8 bit
           // xpm_memory_spram: Single Port RAM
           // Xilinx Parameterized Macro, Version 2016.3
           xpm_memory_spram # (
           
             // Common module parameters
             .MEMORY_SIZE        (256*HDL_MEM_DEPTH),           // depth multiplied by width 20*256
             .MEMORY_PRIMITIVE   ("ultra"),        //string; "block" or "ultra";
             .MEMORY_INIT_FILE   ("none"),         //string; "none" or "<filename>.mem" 
             .MEMORY_INIT_PARAM  (""    ),         //string;  
             .USE_MEM_INIT       (0),              //integer; 0,1
             .WAKEUP_TIME        ("disable_sleep"),//string; "disable_sleep" or "use_sleep_pin" 
             .MESSAGE_CONTROL    (0),              //integer; 0,1
           
             // Port A module parameters
             .WRITE_DATA_WIDTH_A (256),             //
             .READ_DATA_WIDTH_A  (256),             //
             .BYTE_WRITE_WIDTH_A (256),             //integer; 8, 9, or WRITE_DATA_WIDTH_A value
             .ADDR_WIDTH_A       (log2_C_RAM_DEPTH),              //positive integer
             .READ_RESET_VALUE_A ("0"),            //string
             .READ_LATENCY_A     (HDL_PIPELINE_DEPTH),              //non-negative integer
             .WRITE_MODE_A       ("write_first")    //string; "write_first", "read_first", "no_change" 
           
           ) mem_uram_8bps (
           
             // Common module ports
             .sleep          (1'b0),
           
             // Port A module ports
             .clka           (enc_buffer_clk),
             .rsta           (mem_rst),
             .ena            (mem_enable),
             .regcea         (1'b1),
             .wea            (vcu_pl_enc_al_l2c_wvalid_r2),
             .addra          (vcu_pl_enc_al_l2c_addr_r2),
             .dina           (vcu_pl_enc_al_l2c_wdata_to_mem),
             .injectsbiterra (1'b0),  //do not change
             .injectdbiterra (1'b0),  //do not change
             .douta          (pl_vcu_enc_al_l2c_rdata_from_mem),
             .sbiterra       (),      //do not change
             .dbiterra       ()       //do not change
           
           );
	  end
	  if(HDL_TABLE_NO == 3) begin
		 //URAM is 72*4 and BRAM is 36 :- total 324 > 320
		 //This is 10 bit full search URAM and BRAM combo
           // xpm_memory_spram: Single Port RAM
           // Xilinx Parameterized Macro, Version 2016.3
           xpm_memory_spram # (
           
             // Common module parameters
             .MEMORY_SIZE        (288*HDL_MEM_DEPTH),           // depth multiplied by width 20*288
             .MEMORY_PRIMITIVE   ("ultra"),        //string; "block" or "ultra";
             .MEMORY_INIT_FILE   ("none"),         //string; "none" or "<filename>.mem" 
             .MEMORY_INIT_PARAM  (""    ),         //string;  
             .USE_MEM_INIT       (0),              //integer; 0,1
             .WAKEUP_TIME        ("disable_sleep"),//string; "disable_sleep" or "use_sleep_pin" 
             .MESSAGE_CONTROL    (0),              //integer; 0,1
           
             // Port A module parameters
             .WRITE_DATA_WIDTH_A (288),             //
             .READ_DATA_WIDTH_A  (288),             //
             .BYTE_WRITE_WIDTH_A (288),             //integer; 8, 9, or WRITE_DATA_WIDTH_A value
             .ADDR_WIDTH_A       (log2_C_RAM_DEPTH),              //positive integer
             .READ_RESET_VALUE_A ("0"),            //string
             .READ_LATENCY_A     (HDL_PIPELINE_DEPTH),          //non-negative integer
             .WRITE_MODE_A       ("write_first")   //string; "write_first", "read_first", "no_change" 
           
           ) mem_combo_uram_10bps (
           
             // Common module ports
             .sleep          (1'b0),
           
             // Port A module ports
             .clka           (enc_buffer_clk),
             .rsta           (mem_rst),
             .ena            (mem_enable),
             .regcea         (1'b1),
             .wea            (vcu_pl_enc_al_l2c_wvalid_r2),
             .addra          (vcu_pl_enc_al_l2c_addr_r2),
             .dina           (vcu_pl_enc_al_l2c_wdata_r2[319:32]),
             .injectsbiterra (1'b0),  //do not change
             .injectdbiterra (1'b0),  //do not change
             .douta          (pl_vcu_enc_al_l2c_rdata[319:32]),
             .sbiterra       (),      //do not change
             .dbiterra       ()       //do not change
           
           );

	 xpm_memory_spram # (
           
             // Common module parameters
             .MEMORY_SIZE        (32*HDL_MEM_DEPTH),           // depth multiplied by width 20*320
             .MEMORY_PRIMITIVE   ("block"),        //string; "block" or "ultra";
             .MEMORY_INIT_FILE   ("none"),         //string; "none" or "<filename>.mem" 
             .MEMORY_INIT_PARAM  (""    ),         //string;  
             .USE_MEM_INIT       (0),              //integer; 0,1
             .WAKEUP_TIME        ("disable_sleep"),//string; "disable_sleep" or "use_sleep_pin" 
             .MESSAGE_CONTROL    (0),              //integer; 0,1
           
             // Port A module parameters
             .WRITE_DATA_WIDTH_A (32),             //
             .READ_DATA_WIDTH_A  (32),             //
             .BYTE_WRITE_WIDTH_A (32),             //integer; 8, 9, or WRITE_DATA_WIDTH_A value
             .ADDR_WIDTH_A       (log2_C_RAM_DEPTH),              //positive integer
             .READ_RESET_VALUE_A ("0"),            //string
             .READ_LATENCY_A     (HDL_PIPELINE_DEPTH),           //non-negative integer
             .WRITE_MODE_A       ("write_first")    //string; "write_first", "read_first", "no_change" 
           
           ) mem_combo_bram_10bps (
           
             // Common module ports
             .sleep          (1'b0),
           
             // Port A module ports
             .clka           (enc_buffer_clk),
             .rsta           (mem_rst),
             .ena            (mem_enable),
             .regcea         (1'b1),
             .wea            (vcu_pl_enc_al_l2c_wvalid_r2),
             .addra          (vcu_pl_enc_al_l2c_addr_r2),
             .dina           (vcu_pl_enc_al_l2c_wdata_r2[31:0]),
             .injectsbiterra (1'b0),  //do not change
             .injectdbiterra (1'b0),  //do not change
             .douta          (pl_vcu_enc_al_l2c_rdata[31:0]),
             .sbiterra       (),      //do not change
             .dbiterra       ()       //do not change
           
           );
      end
	  // 8 bit full search using BRAM and URAM combo.
	  if(HDL_TABLE_NO == 4) begin
           // xpm_memory_spram: Single Port RAM
           // Xilinx Parameterized Macro, Version 2016.3
           xpm_memory_spram # (
           
             // Common module parameters
             .MEMORY_SIZE        (216*HDL_MEM_DEPTH),           // depth multiplied by width 20*216
             .MEMORY_PRIMITIVE   ("ultra"),        //string; "block" or "ultra";
             .MEMORY_INIT_FILE   ("none"),         //string; "none" or "<filename>.mem" 
             .MEMORY_INIT_PARAM  (""    ),         //string;  
             .USE_MEM_INIT       (0),              //integer; 0,1
             .WAKEUP_TIME        ("disable_sleep"),//string; "disable_sleep" or "use_sleep_pin" 
             .MESSAGE_CONTROL    (0),              //integer; 0,1
           
             // Port A module parameters
             .WRITE_DATA_WIDTH_A (216),             //
             .READ_DATA_WIDTH_A  (216),             //
             .BYTE_WRITE_WIDTH_A (216),             //integer; 8, 9, or WRITE_DATA_WIDTH_A value
             .ADDR_WIDTH_A       (log2_C_RAM_DEPTH),              //positive integer
             .READ_RESET_VALUE_A ("0"),            //string
             .READ_LATENCY_A     (HDL_PIPELINE_DEPTH),              //non-negative integer
             .WRITE_MODE_A       ("write_first")    //string; "write_first", "read_first", "no_change" 
           
           ) mem_combo_uram_8bps (
           
             // Common module ports
             .sleep          (1'b0),
           
             // Port A module ports
             .clka           (enc_buffer_clk),
             .rsta           (mem_rst),
             .ena            (mem_enable),
             .regcea         (1'b1),
             .wea            (vcu_pl_enc_al_l2c_wvalid_r2),
             .addra          (vcu_pl_enc_al_l2c_addr_r2),
             //.dina           (vcu_pl_enc_al_l2c_wdata[260:45]),
             .dina           (vcu_pl_enc_al_l2c_wdata_to_mem[255:40]),
             .injectsbiterra (1'b0),  //do not change
             .injectdbiterra (1'b0),  //do not change
             //.douta          (pl_vcu_enc_al_l2c_rdata[260:45]),
             .douta          (pl_vcu_enc_al_l2c_rdata_from_mem[255:40]),
             .sbiterra       (),      //do not change
             .dbiterra       ()       //do not change
           
           );

           xpm_memory_spram # (
           
             // Common module parameters
             .MEMORY_SIZE        (36*HDL_MEM_DEPTH),           // depth multiplied by width 20*256
             .MEMORY_PRIMITIVE   ("block"),        //string; "block" or "ultra";
             .MEMORY_INIT_FILE   ("none"),         //string; "none" or "<filename>.mem" 
             .MEMORY_INIT_PARAM  (""    ),         //string;  
             .USE_MEM_INIT       (0),              //integer; 0,1
             .WAKEUP_TIME        ("disable_sleep"),//string; "disable_sleep" or "use_sleep_pin" 
             .MESSAGE_CONTROL    (0),              //integer; 0,1
           
             // Port A module parameters
             .WRITE_DATA_WIDTH_A (36),             //
             .READ_DATA_WIDTH_A  (36),             //
             .BYTE_WRITE_WIDTH_A (36),             //integer; 8, 9, or WRITE_DATA_WIDTH_A value
             .ADDR_WIDTH_A       (log2_C_RAM_DEPTH),              //positive integer
             .READ_RESET_VALUE_A ("0"),            //string
             .READ_LATENCY_A     (HDL_PIPELINE_DEPTH),              //non-negative integer
             .WRITE_MODE_A       ("write_first")    //string; "write_first", "read_first", "no_change" 
           
           ) mem_combo_bram_8bps_0 (
           
             // Common module ports
             .sleep          (1'b0),
           
             // Port A module ports
             .clka           (enc_buffer_clk),
             .rsta           (mem_rst),
             .ena            (mem_enable),
             .regcea         (1'b1),
             .wea            (vcu_pl_enc_al_l2c_wvalid_r2),
             .addra          (vcu_pl_enc_al_l2c_addr_r2),
             .dina           (vcu_pl_enc_al_l2c_wdata_to_mem[39:4]),
             .injectsbiterra (1'b0),  //do not change
             .injectdbiterra (1'b0),  //do not change
             .douta          (pl_vcu_enc_al_l2c_rdata_from_mem[39:4]),
             .sbiterra       (),      //do not change
             .dbiterra       ()       //do not change
           
           );
          
           xpm_memory_spram # (
           
             // Common module parameters
             .MEMORY_SIZE        (4*HDL_MEM_DEPTH),           // depth multiplied by width 20*256
             .MEMORY_PRIMITIVE   ("block"),        //string; "block" or "ultra";
             .MEMORY_INIT_FILE   ("none"),         //string; "none" or "<filename>.mem" 
             .MEMORY_INIT_PARAM  (""    ),         //string;  
             .USE_MEM_INIT       (0),              //integer; 0,1
             .WAKEUP_TIME        ("disable_sleep"),//string; "disable_sleep" or "use_sleep_pin" 
             .MESSAGE_CONTROL    (0),              //integer; 0,1
           
             // Port A module parameters
             .WRITE_DATA_WIDTH_A (4),             //
             .READ_DATA_WIDTH_A  (4),             //
             .BYTE_WRITE_WIDTH_A (4),             //integer; 8, 9, or WRITE_DATA_WIDTH_A value
             .ADDR_WIDTH_A       (log2_C_RAM_DEPTH),              //positive integer
             .READ_RESET_VALUE_A ("0"),            //string
             .READ_LATENCY_A     (HDL_PIPELINE_DEPTH),              //non-negative integer
             .WRITE_MODE_A       ("write_first")    //string; "write_first", "read_first", "no_change" 
           
           ) mem_combo_bram_8bps_1 (
           
             // Common module ports
             .sleep          (1'b0),
           
             // Port A module ports
             .clka           (enc_buffer_clk),
             .rsta           (mem_rst),
             .ena            (mem_enable),
             .regcea         (1'b1),
             .wea            (vcu_pl_enc_al_l2c_wvalid_r2),
             .addra          (vcu_pl_enc_al_l2c_addr_r2),
             .dina           (vcu_pl_enc_al_l2c_wdata_to_mem[3:0]),
             .injectsbiterra (1'b0),  //do not change
             .injectdbiterra (1'b0),  //do not change
             .douta          (pl_vcu_enc_al_l2c_rdata_from_mem[3:0]),
             .sbiterra       (),      //do not change
             .dbiterra       ()       //do not change
           
           );
   end
   end
endgenerate

assign vcu_pl_enc_awprot0  = {1'b0 , vcu_pl_enc_awprot0_onebit, 1'b0 };
assign vcu_pl_enc_arprot0  = {1'b0 , vcu_pl_enc_arprot0_onebit, 1'b0 };
assign vcu_pl_enc_awprot1  = {1'b0 , vcu_pl_enc_awprot1_onebit, 1'b0 };
assign vcu_pl_enc_arprot1  = {1'b0 , vcu_pl_enc_arprot1_onebit, 1'b0 };
assign vcu_pl_dec_awprot0  = {1'b0 , vcu_pl_dec_awprot0_onebit, 1'b0 };
assign vcu_pl_dec_arprot0  = {1'b0 , vcu_pl_dec_arprot0_onebit, 1'b0 };
assign vcu_pl_dec_awprot1  = {1'b0 , vcu_pl_dec_awprot1_onebit, 1'b0 };
assign vcu_pl_dec_arprot1  = {1'b0 , vcu_pl_dec_arprot1_onebit, 1'b0 };


assign vcu_pl_enc_wstrb1   = 16'hFFFF;
assign vcu_pl_enc_wstrb0   = 16'hFFFF;
assign vcu_pl_dec_wstrb1   = 16'hFFFF;
assign vcu_pl_dec_wstrb0   = 16'hFFFF;

assign vcu_pl_enc_awregion1 = 4'h0;
assign vcu_pl_enc_awregion0 = 4'h0;
assign vcu_pl_enc_arregion1 = 4'h0;
assign vcu_pl_enc_arregion0 = 4'h0;
assign vcu_pl_dec_awregion1 = 4'h0;
assign vcu_pl_dec_awregion0 = 4'h0;
assign vcu_pl_dec_arregion1 = 4'h0;
assign vcu_pl_dec_arregion0 = 4'h0;

assign vcu_pl_enc_awlock1 = 1'b0;
assign vcu_pl_enc_awlock0 = 1'b0;
assign vcu_pl_enc_arlock1 = 1'b0;
assign vcu_pl_enc_arlock0 = 1'b0;
assign vcu_pl_dec_awlock1 = 1'b0;
assign vcu_pl_dec_awlock0 = 1'b0;
assign vcu_pl_dec_arlock1 = 1'b0;
assign vcu_pl_dec_arlock0 = 1'b0;


// Regular instance
VCU #(
// Will be un-commented once VCU.yml has XPE updates
   .ENABLEENCODER(ENABLEENCODER),
   .ENABLEDECODER(ENABLEDECODER),
   .ENCODERCODING(ENCODERCODING),
   .DECODERCODING(DECODERCODING),
   //.ENCODERCODINGTYPE(ENCODERCODINGTYPE),
   //.DECODERCODINGTYPE(DECODERCODINGTYPE),
   .ENCHORRESOLUTION(ENCHORRESOLUTION),
   .ENCVERTRESOLUTION(ENCVERRESOLUTION),
   .DECHORRESOLUTION(DECHORRESOLUTION),
   .DECVERTRESOLUTION(DECVERRESOLUTION),
   .ENCODERCOLORDEPTH(ENCODERCOLORDEPTH),
   .DECODERCOLORDEPTH(DECODERCOLORDEPTH),
   .ENCODERCHROMAFORMAT(ENCODERCHROMAFORMAT),
   .DECODERCHROMAFORMAT(DECODERCHROMAFORMAT),
   .CORECLKREQ(CORECLKFREQ),
   .ENCODERNUMCORES(ENCODERNUMCORES),
   .DECODERNUMCORES(DECODERNUMCORES)
  ) VCU_i (
  .PLVCUAXILITECLK (s_axi_lite_aclk),
  .PLVCUAWADDRAXILITEAPB (lc_vcu_awaddr_axi_lite_apb),
  .PLVCUAWPROTAXILITEAPB (lc_vcu_awprot_axi_lite_apb),
  .PLVCUAWVALIDAXILITEAPB (pl_vcu_awvalid_axi_lite_apb_i),
  .VCUPLAWREADYAXILITEAPB (vcu_pl_awready_axi_lite_apb_i),
  .PLVCUWDATAAXILITEAPB (lc_vcu_wdata_axi_lite_apb),
  .PLVCUWSTRBAXILITEAPB (lc_vcu_wstrb_axi_lite_apb),
  .PLVCUWVALIDAXILITEAPB (pl_vcu_wvalid_axi_lite_apb_i),
  .VCUPLWREADYAXILITEAPB (vcu_pl_wready_axi_lite_apb_i),
  .VCUPLBRESPAXILITEAPB (vcu_pl_bresp_axi_lite_apb_i),
  .VCUPLBVALIDAXILITEAPB (vcu_pl_bvalid_axi_lite_apb_i),
  .PLVCUBREADYAXILITEAPB (lc_vcu_bready_axi_lite_apb),
  .PLVCUARADDRAXILITEAPB (pl_vcu_araddr_axi_lite_apb),
  .PLVCUARPROTAXILITEAPB (pl_vcu_arprot_axi_lite_apb),
  .PLVCUARVALIDAXILITEAPB (lc_vcu_arvalid_axi_lite_apb),
  .VCUPLARREADYAXILITEAPB (vcu_pl_arready_axi_lite_apb_i),
  .VCUPLRDATAAXILITEAPB (vcu_pl_rdata_axi_lite_apb_i),
  .VCUPLRRESPAXILITEAPB (vcu_pl_rresp_axi_lite_apb_i),
  .VCUPLRVALIDAXILITEAPB (vcu_pl_rvalid_axi_lite_apb_i),
  .PLVCURREADYAXILITEAPB (pl_vcu_rready_axi_lite_apb_i),
  .PLVCUAXIENCCLK (m_axi_enc_aclk),
  .VCUPLENCARADDR0 (vcu_pl_enc_araddr0),
  .VCUPLENCARBURST0 (vcu_pl_enc_arburst0),
  .VCUPLENCARID0 (vcu_pl_enc_arid0),
  .VCUPLENCARLEN0 (vcu_pl_enc_arlen0),
  .PLVCUENCARREADY0 (pl_vcu_enc_arready0),
  .VCUPLENCARSIZE0 (vcu_pl_enc_arsize0),
  .VCUPLENCARVALID0 (vcu_pl_enc_arvalid0),
  .VCUPLENCAWADDR0 (vcu_pl_enc_awaddr0),
  .VCUPLENCAWBURST0 (vcu_pl_enc_awburst0),
  .VCUPLENCAWID0 (vcu_pl_enc_awid0),
  .VCUPLENCAWLEN0 (vcu_pl_enc_awlen0),
  .PLVCUENCAWREADY0 (pl_vcu_enc_awready0),
  .VCUPLENCAWSIZE0 (vcu_pl_enc_awsize0),
  .VCUPLENCAWVALID0 (vcu_pl_enc_awvalid0),
  .VCUPLENCBREADY0 (vcu_pl_enc_bready0),
  .PLVCUENCBVALID0 (pl_vcu_enc_bvalid0),
  .PLVCUENCBID0 (pl_vcu_enc_bid0),
  .PLVCUENCRDATA0 (pl_vcu_enc_rdata0),
  .PLVCUENCRID0 (pl_vcu_enc_rid0),
  .PLVCUENCRLAST0 (pl_vcu_enc_rlast0),
  .VCUPLENCRREADY0 (vcu_pl_enc_rready0),
  .PLVCUENCRVALID0 (pl_vcu_enc_rvalid0),
  .VCUPLENCWDATA0 (vcu_pl_enc_wdata0),
  .VCUPLENCWLAST0 (vcu_pl_enc_wlast0),
  .PLVCUENCBRESP0 (pl_vcu_enc_bresp0),
  .PLVCUENCRRESP0 (pl_vcu_enc_rresp0),
  .PLVCUENCWREADY0 (pl_vcu_enc_wready0),
  .VCUPLENCWVALID0 (vcu_pl_enc_wvalid0),
  .VCUPLENCAWPROT0 (vcu_pl_enc_awprot0_onebit),
  .VCUPLENCARPROT0 (vcu_pl_enc_arprot0_onebit),
  .VCUPLENCAWCACHE0 (vcu_pl_enc_awcache0),
  .VCUPLENCARCACHE0 (vcu_pl_enc_arcache0),
  .VCUPLENCAWQOS0 (vcu_pl_enc_awqos0),
  .VCUPLENCARQOS0 (vcu_pl_enc_arqos0),
  .VCUPLENCARADDR1 (vcu_pl_enc_araddr1),
  .VCUPLENCARBURST1 (vcu_pl_enc_arburst1),
  .VCUPLENCARID1 (vcu_pl_enc_arid1),
  .VCUPLENCARLEN1 (vcu_pl_enc_arlen1),
  .PLVCUENCARREADY1 (pl_vcu_enc_arready1),
  .VCUPLENCARSIZE1 (vcu_pl_enc_arsize1),
  .VCUPLENCARVALID1 (vcu_pl_enc_arvalid1),
  .VCUPLENCAWADDR1 (vcu_pl_enc_awaddr1),
  .VCUPLENCAWBURST1 (vcu_pl_enc_awburst1),
  .VCUPLENCAWID1 (vcu_pl_enc_awid1),
  .VCUPLENCAWLEN1 (vcu_pl_enc_awlen1),
  .PLVCUENCAWREADY1 (pl_vcu_enc_awready1),
  .VCUPLENCAWSIZE1 (vcu_pl_enc_awsize1),
  .VCUPLENCAWVALID1 (vcu_pl_enc_awvalid1),
  .VCUPLENCBREADY1 (vcu_pl_enc_bready1),
  .PLVCUENCBVALID1 (pl_vcu_enc_bvalid1),
  .PLVCUENCBID1 (pl_vcu_enc_bid1),
  .PLVCUENCRDATA1 (pl_vcu_enc_rdata1),
  .PLVCUENCRID1 (pl_vcu_enc_rid1),
  .PLVCUENCRLAST1 (pl_vcu_enc_rlast1),
  .VCUPLENCRREADY1 (vcu_pl_enc_rready1),
  .PLVCUENCRVALID1 (pl_vcu_enc_rvalid1),
  .VCUPLENCWDATA1 (vcu_pl_enc_wdata1),
  .VCUPLENCWLAST1 (vcu_pl_enc_wlast1),
  .PLVCUENCBRESP1 (pl_vcu_enc_bresp1),
  .PLVCUENCRRESP1 (pl_vcu_enc_rresp1),
  .PLVCUENCWREADY1 (pl_vcu_enc_wready1),
  .VCUPLENCWVALID1 (vcu_pl_enc_wvalid1),
  .VCUPLENCAWPROT1 (vcu_pl_enc_awprot1_onebit),
  .VCUPLENCARPROT1 (vcu_pl_enc_arprot1_onebit),
  .VCUPLENCAWCACHE1 (vcu_pl_enc_awcache1),
  .VCUPLENCARCACHE1 (vcu_pl_enc_arcache1),
  .VCUPLENCAWQOS1 (vcu_pl_enc_awqos1),
  .VCUPLENCARQOS1 (vcu_pl_enc_arqos1),
  .PLVCUAXIDECCLK (m_axi_dec_aclk),
  .VCUPLDECARADDR0 (vcu_pl_dec_araddr0),
  .VCUPLDECARBURST0 (vcu_pl_dec_arburst0),
  .VCUPLDECARID0 (vcu_pl_dec_arid0),
  .VCUPLDECARLEN0 (vcu_pl_dec_arlen0),
  .PLVCUDECARREADY0 (pl_vcu_dec_arready0),
  .VCUPLDECARSIZE0 (vcu_pl_dec_arsize0),
  .VCUPLDECARVALID0 (vcu_pl_dec_arvalid0),
  .VCUPLDECAWADDR0 (vcu_pl_dec_awaddr0),
  .VCUPLDECAWBURST0 (vcu_pl_dec_awburst0),
  .VCUPLDECAWID0 (vcu_pl_dec_awid0),
  .VCUPLDECAWLEN0 (vcu_pl_dec_awlen0),
  .PLVCUDECAWREADY0 (pl_vcu_dec_awready0),
  .VCUPLDECAWSIZE0 (vcu_pl_dec_awsize0),
  .VCUPLDECAWVALID0 (vcu_pl_dec_awvalid0),
  .VCUPLDECBREADY0 (vcu_pl_dec_bready0),
  .PLVCUDECBVALID0 (pl_vcu_dec_bvalid0),
  .PLVCUDECBID0 (pl_vcu_dec_bid0),
  .PLVCUDECRDATA0 (pl_vcu_dec_rdata0),
  .PLVCUDECRID0 (pl_vcu_dec_rid0),
  .PLVCUDECRLAST0 (pl_vcu_dec_rlast0),
  .VCUPLDECRREADY0 (vcu_pl_dec_rready0),
  .PLVCUDECRVALID0 (pl_vcu_dec_rvalid0),
  .VCUPLDECWDATA0 (vcu_pl_dec_wdata0),
  .VCUPLDECWLAST0 (vcu_pl_dec_wlast0),
  .PLVCUDECBRESP0 (pl_vcu_dec_bresp0),
  .PLVCUDECRRESP0 (pl_vcu_dec_rresp0),
  .PLVCUDECWREADY0 (pl_vcu_dec_wready0),
  .VCUPLDECWVALID0 (vcu_pl_dec_wvalid0),
  .VCUPLDECAWPROT0 (vcu_pl_dec_awprot0_onebit),
  .VCUPLDECARPROT0 (vcu_pl_dec_arprot0_onebit),
  .VCUPLDECAWCACHE0 (vcu_pl_dec_awcache0),
  .VCUPLDECARCACHE0 (vcu_pl_dec_arcache0),
  .VCUPLDECAWQOS0 (vcu_pl_dec_awqos0),
  .VCUPLDECARQOS0 (vcu_pl_dec_arqos0),
  .VCUPLDECARADDR1 (vcu_pl_dec_araddr1),
  .VCUPLDECARBURST1 (vcu_pl_dec_arburst1),
  .VCUPLDECARID1 (vcu_pl_dec_arid1),
  .VCUPLDECARLEN1 (vcu_pl_dec_arlen1),
  .PLVCUDECARREADY1 (pl_vcu_dec_arready1),
  .VCUPLDECARSIZE1 (vcu_pl_dec_arsize1),
  .VCUPLDECARVALID1 (vcu_pl_dec_arvalid1),
  .VCUPLDECAWADDR1 (vcu_pl_dec_awaddr1),
  .VCUPLDECAWBURST1 (vcu_pl_dec_awburst1),
  .VCUPLDECAWID1 (vcu_pl_dec_awid1),
  .VCUPLDECAWLEN1 (vcu_pl_dec_awlen1),
  .PLVCUDECAWREADY1 (pl_vcu_dec_awready1),
  .VCUPLDECAWSIZE1 (vcu_pl_dec_awsize1),
  .VCUPLDECAWVALID1 (vcu_pl_dec_awvalid1),
  .VCUPLDECBREADY1 (vcu_pl_dec_bready1),
  .PLVCUDECBVALID1 (pl_vcu_dec_bvalid1),
  .PLVCUDECBID1 (pl_vcu_dec_bid1),
  .PLVCUDECRDATA1 (pl_vcu_dec_rdata1),
  .PLVCUDECRID1 (pl_vcu_dec_rid1),
  .PLVCUDECRLAST1 (pl_vcu_dec_rlast1),
  .VCUPLDECRREADY1 (vcu_pl_dec_rready1),
  .PLVCUDECRVALID1 (pl_vcu_dec_rvalid1),
  .VCUPLDECWDATA1 (vcu_pl_dec_wdata1),
  .VCUPLDECWLAST1 (vcu_pl_dec_wlast1),
  .PLVCUDECBRESP1 (pl_vcu_dec_bresp1),
  .PLVCUDECRRESP1 (pl_vcu_dec_rresp1),
  .PLVCUDECWREADY1 (pl_vcu_dec_wready1),
  .VCUPLDECWVALID1 (vcu_pl_dec_wvalid1),
  .VCUPLDECAWPROT1 (vcu_pl_dec_awprot1_onebit),
  .VCUPLDECARPROT1 (vcu_pl_dec_arprot1_onebit),
  .VCUPLDECAWCACHE1 (vcu_pl_dec_awcache1),
  .VCUPLDECARCACHE1 (vcu_pl_dec_arcache1),
  .VCUPLDECAWQOS1 (vcu_pl_dec_awqos1),
  .VCUPLDECARQOS1 (vcu_pl_dec_arqos1),
  .PLVCUAXIMCUCLK (m_axi_mcu_aclk),
  .VCUPLMCUMAXIICDCARADDR (vcu_pl_mcu_m_axi_ic_dc_araddr),
  .VCUPLMCUMAXIICDCARBURST (vcu_pl_mcu_m_axi_ic_dc_arburst),
  .VCUPLMCUMAXIICDCARCACHE (vcu_pl_mcu_m_axi_ic_dc_arcache),
  .VCUPLMCUMAXIICDCARID (vcu_pl_mcu_m_axi_ic_dc_arid),
  .VCUPLMCUMAXIICDCARLEN (vcu_pl_mcu_m_axi_ic_dc_arlen),
  .VCUPLMCUMAXIICDCARLOCK (vcu_pl_mcu_m_axi_ic_dc_arlock),
  .VCUPLMCUMAXIICDCARPROT (vcu_pl_mcu_m_axi_ic_dc_arprot),
  .VCUPLMCUMAXIICDCARQOS (vcu_pl_mcu_m_axi_ic_dc_arqos),
  .PLVCUMCUMAXIICDCARREADY (pl_vcu_mcu_m_axi_ic_dc_arready),
  .VCUPLMCUMAXIICDCARSIZE (vcu_pl_mcu_m_axi_ic_dc_arsize),
  .VCUPLMCUMAXIICDCARVALID (vcu_pl_mcu_m_axi_ic_dc_arvalid),
  .VCUPLMCUMAXIICDCAWADDR (vcu_pl_mcu_m_axi_ic_dc_awaddr),
  .VCUPLMCUMAXIICDCAWBURST (vcu_pl_mcu_m_axi_ic_dc_awburst),
  .VCUPLMCUMAXIICDCAWCACHE (vcu_pl_mcu_m_axi_ic_dc_awcache),
  .VCUPLMCUMAXIICDCAWID (vcu_pl_mcu_m_axi_ic_dc_awid),
  .VCUPLMCUMAXIICDCAWLEN (vcu_pl_mcu_m_axi_ic_dc_awlen),
  .VCUPLMCUMAXIICDCAWLOCK (vcu_pl_mcu_m_axi_ic_dc_awlock),
  .VCUPLMCUMAXIICDCAWPROT (vcu_pl_mcu_m_axi_ic_dc_awprot),
  .VCUPLMCUMAXIICDCAWQOS (vcu_pl_mcu_m_axi_ic_dc_awqos),
  .PLVCUMCUMAXIICDCAWREADY (pl_vcu_mcu_m_axi_ic_dc_awready),
  .VCUPLMCUMAXIICDCAWSIZE (vcu_pl_mcu_m_axi_ic_dc_awsize),
  .VCUPLMCUMAXIICDCAWVALID (vcu_pl_mcu_m_axi_ic_dc_awvalid),
  .PLVCUMCUMAXIICDCBID (pl_vcu_mcu_m_axi_ic_dc_bid),
  .VCUPLMCUMAXIICDCBREADY (vcu_pl_mcu_m_axi_ic_dc_bready),
  .PLVCUMCUMAXIICDCBRESP (pl_vcu_mcu_m_axi_ic_dc_bresp),
  .PLVCUMCUMAXIICDCBVALID (pl_vcu_mcu_m_axi_ic_dc_bvalid),
  .PLVCUMCUMAXIICDCRDATA (pl_vcu_mcu_m_axi_ic_dc_rdata),
  .PLVCUMCUMAXIICDCRID (pl_vcu_mcu_m_axi_ic_dc_rid),
  .PLVCUMCUMAXIICDCRLAST (pl_vcu_mcu_m_axi_ic_dc_rlast),
  .VCUPLMCUMAXIICDCRREADY (vcu_pl_mcu_m_axi_ic_dc_rready),
  .PLVCUMCUMAXIICDCRRESP (pl_vcu_mcu_m_axi_ic_dc_rresp),
  .PLVCUMCUMAXIICDCRVALID (pl_vcu_mcu_m_axi_ic_dc_rvalid),
  .VCUPLMCUMAXIICDCWDATA (vcu_pl_mcu_m_axi_ic_dc_wdata),
  .VCUPLMCUMAXIICDCWLAST (vcu_pl_mcu_m_axi_ic_dc_wlast),
  .PLVCUMCUMAXIICDCWREADY (pl_vcu_mcu_m_axi_ic_dc_wready),
  .VCUPLMCUMAXIICDCWSTRB (vcu_pl_mcu_m_axi_ic_dc_wstrb),
  .VCUPLMCUMAXIICDCWVALID (vcu_pl_mcu_m_axi_ic_dc_wvalid),
  .PLVCUCORECLK (core_clk),
  .PLVCUMCUCLK (mcu_clk),
  .PLVCUPLLREFCLKPL (pll_ref_clk),
  .VCUPLCORESTATUSCLKPLL (vcu_pl_core_status_clk_pll),
  .VCUPLMCUSTATUSCLKPLL (vcu_pl_mcu_status_clk_pll),
  .VCUPLPLLSTATUSPLLLOCK (vcu_pl_pll_status_pll_lock),
  .PLVCURAWRSTN (vcu_resetn_soft),
  .VCUPLPWRSUPPLYSTATUSVCCAUX (vcu_pl_pwr_supply_status_vccaux),
  .VCUPLPWRSUPPLYSTATUSVCUINT (vcu_pl_pwr_supply_status_vcuint),
  .INITPLVCUGASKETCLAMPCONTROLLVLSHVCCINTD (vcu_gasket_enable),
  .VCUPLPINTREQ (vcu_host_interrupt),
  .PLVCUENCL2CCLK (enc_buffer_clk),
  .VCUPLENCALL2CRVALID (vcu_pl_enc_al_l2c_rvalid),
  .PLVCUENCALL2CRREADY (pl_vcu_enc_al_l2c_rready_final),
  .VCUPLENCALL2CADDR (vcu_pl_enc_al_l2c_addr),
  .PLVCUENCALL2CRDATA (pl_vcu_enc_al_l2c_rdata_r2),
  .VCUPLENCALL2CWVALID (vcu_pl_enc_al_l2c_wvalid),
  .VCUPLENCALL2CWDATA (vcu_pl_enc_al_l2c_wdata)
  );


vcu_v1_2_6_registers  #(
	   .C_VCU_AXILITEAPB_DATA_WIDTH (C_VCU_AXILITEAPB_DATA_WIDTH),
       .HDL_TEST_PORT_EN (HDL_TEST_PORT_EN),
       .HDL_ENCODER_EN   (HDL_ENCODER_EN),
       .HDL_DECODER_EN   (HDL_DECODER_EN),
       .HDL_TABLE_NO     (HDL_TABLE_NO),
       .HDL_MEM_DEPTH    (HDL_MEM_DEPTH), // 2K
       .HDL_RAM_TYPE     (HDL_RAM_TYPE),
       .HDL_PLL_BYPASS   (HDL_PLL_BYPASS),
       .HDL_ENC_CLK      (HDL_ENC_CLK),
       .HDL_MEMORY_SIZE  (HDL_MEMORY_SIZE),
       .HDL_COLOR_DEPTH  (HDL_COLOR_DEPTH),
       .HDL_FRAME_SIZE_X  (HDL_FRAME_SIZE_X),
       .HDL_FRAME_SIZE_Y  (HDL_FRAME_SIZE_Y),
       .HDL_COLOR_FORMAT  (HDL_COLOR_FORMAT),
       .HDL_FPS           (HDL_FPS),
       .HDL_VIDEO_STANDARD  (HDL_VIDEO_STANDARD),
       .HDL_CODING_TYPE  (HDL_CODING_TYPE),
       .HDL_ENC_BUFFER_EN  (HDL_ENC_BUFFER_EN),
       .HDL_MCU_CLK       (HDL_MCU_CLK),
       //.HDL_MCU_DEBUG       (HDL_MCU_DEBUG),
       .HDL_PLL_CLK_HI       (HDL_PLL_CLK_HI),
       .HDL_PLL_CLK_LO       (HDL_PLL_CLK_LO),
       .HDL_CORE_CLK      (HDL_CORE_CLK),
	   .HDL_NUM_STREAMS   (HDL_NUM_STREAMS),
	   .HDL_MAX_NUM_CORES   (HDL_MAX_NUM_CORES),
	   .HDL_NUM_CONCURRENT_STREAMS   (HDL_NUM_CONCURRENT_STREAMS),



       .HDL_DEC_VIDEO_STANDARD (HDL_DEC_VIDEO_STANDARD),
       .HDL_DEC_FRAME_SIZE_X   (HDL_DEC_FRAME_SIZE_X),
       .HDL_DEC_FRAME_SIZE_Y   (HDL_DEC_FRAME_SIZE_Y),
       .HDL_DEC_FPS            (HDL_DEC_FPS),

       .HDL_ENC_BUFFER_MANUAL_OVERRIDE   (HDL_ENC_BUFFER_MANUAL_OVERRIDE),
       .HDL_ENC_BUFFER_MOTION_VEC_RANGE  (HDL_ENC_BUFFER_MOTION_VEC_RANGE),
       .HDL_ENC_BUFFER_B_FRAME           (HDL_ENC_BUFFER_B_FRAME),
       .HDL_WPP_EN                       (HDL_WPP_EN),
	   .HDL_VCU_TEST_EN                  (HDL_VCU_TEST_EN),

       .HDL_AXI_ENC_CLK   (HDL_AXI_ENC_CLK),
       .HDL_AXI_DEC_CLK   (HDL_AXI_DEC_CLK),
       .HDL_AXI_MCU_CLK   (HDL_AXI_MCU_CLK),
       .HDL_AXI_ENC_BASE0 (HDL_AXI_ENC_BASE0),
       .HDL_AXI_ENC_BASE1 (HDL_AXI_ENC_BASE1),
       .HDL_AXI_DEC_BASE0 (HDL_AXI_DEC_BASE0),
       .HDL_AXI_DEC_BASE1 (HDL_AXI_DEC_BASE1),
       .HDL_AXI_MCU_BASE  (HDL_AXI_MCU_BASE),
       .HDL_AXI_ENC_RANGE0(HDL_AXI_ENC_RANGE0),
       .HDL_AXI_ENC_RANGE1(HDL_AXI_ENC_RANGE1),
       .HDL_AXI_DEC_RANGE0(HDL_AXI_DEC_RANGE0),
       .HDL_AXI_DEC_RANGE1(HDL_AXI_DEC_RANGE1),
       .HDL_AXI_MCU_RANGE (HDL_AXI_MCU_RANGE)
) softip_regs (

	   .pl_vcu_raw_rst_n(vcu_resetn),
       .pl_vcu_axi_lite_clk(s_axi_lite_aclk),

	   //.core_clk(core_clk),
	   .enc_buffer_clk(enc_buffer_clk),
	   //.m_axi_mcu_aclk(m_axi_mcu_aclk),
	   .vcu_resetn_soft(vcu_resetn_soft),
	   .vcu_resetn_soft_ec(vcu_resetn_soft_ec),

	   //Read Address
       .pl_vcu_araddr_axi_lite_apb(pl_vcu_araddr_axi_lite_apb),
       .pl_vcu_arprot_axi_lite_apb(pl_vcu_arprot_axi_lite_apb),
       .pl_vcu_arvalid_axi_lite_apb(pl_vcu_arvalid_axi_lite_apb),
       .vcu_pl_arready_axi_lite_apb(vcu_pl_arready_axi_lite_apb_i), // this is now input from hard-macro

       //Write Address
       .pl_vcu_awaddr_axi_lite_apb(pl_vcu_awaddr_axi_lite_apb),
       .pl_vcu_awprot_axi_lite_apb(pl_vcu_awprot_axi_lite_apb),
       .pl_vcu_awvalid_axi_lite_apb(pl_vcu_awvalid_axi_lite_apb),
       .vcu_pl_awready_axi_lite_apb(vcu_pl_awready_axi_lite_apb_i), // TBD

       //Write Address - to HM
       .lc_vcu_awaddr_axi_lite_apb(lc_vcu_awaddr_axi_lite_apb),
       .lc_vcu_awprot_axi_lite_apb(lc_vcu_awprot_axi_lite_apb),
       //.lc_vcu_awvalid_axi_lite_apb(lc_vcu_awvalid_axi_lite_apb),

       //Read data
       .vcu_pl_rdata_axi_lite_apb(vcu_pl_rdata_axi_lite_apb_i),
       .vcu_pl_rresp_axi_lite_apb(vcu_pl_rresp_axi_lite_apb_i),
       .vcu_pl_rvalid_axi_lite_apb(vcu_pl_rvalid_axi_lite_apb_i),
       .pl_vcu_rready_axi_lite_apb(pl_vcu_rready_axi_lite_apb),

       //Write data-bus
       .pl_vcu_wdata_axi_lite_apb(pl_vcu_wdata_axi_lite_apb),
       .pl_vcu_wstrb_axi_lite_apb(pl_vcu_wstrb_axi_lite_apb),
       .pl_vcu_wvalid_axi_lite_apb(pl_vcu_wvalid_axi_lite_apb),
       .vcu_pl_wready_axi_lite_apb(vcu_pl_wready_axi_lite_apb_i),

       //Write data-bus - to HM
       .lc_vcu_wdata_axi_lite_apb(lc_vcu_wdata_axi_lite_apb),
       .lc_vcu_wstrb_axi_lite_apb(lc_vcu_wstrb_axi_lite_apb),
       //.lc_vcu_wvalid_axi_lite_apb(lc_vcu_wvalid_axi_lite_apb),

       //write-Resp Channel
       .vcu_pl_bresp_axi_lite_apb(vcu_pl_bresp_axi_lite_apb_i), 
       .vcu_pl_bvalid_axi_lite_apb(vcu_pl_bvalid_axi_lite_apb_i), 
       .lc_pl_bresp_axi_lite_apb(vcu_pl_bresp_axi_lite_apb), 
       .lc_pl_bvalid_axi_lite_apb(vcu_pl_bvalid_axi_lite_apb), 
       .pl_vcu_bready_axi_lite_apb(pl_vcu_bready_axi_lite_apb), 
       .lc_vcu_bready_axi_lite_apb(lc_vcu_bready_axi_lite_apb), 

      //Status bits to be captured in registers
       //.vcu_pl_core_status_clk_pll(vcu_pl_core_status_clk_pll),
       //.vcu_pl_mcu_status_clk_pll(vcu_pl_mcu_status_clk_pll),
       .vcu_pl_pll_status_pll_lock(vcu_pl_pll_status_pll_lock),
       .vcu_pl_pwr_supply_status_vccaux(vcu_pl_pwr_supply_status_vccaux),
       .vcu_pl_pwr_supply_status_vcuint(vcu_pl_pwr_supply_status_vcuint),
       .vcu_pl_pintreq(vcu_host_interrupt),
	   .vcu_gasket_enable(vcu_gasket_enable),


	   //Read handshake
       .lc_vcu_arvalid_axi_lite_apb(lc_vcu_arvalid_axi_lite_apb), // this is the new address valid to hard-macro
       .lc_pl_arready_axi_lite_apb(vcu_pl_arready_axi_lite_apb), // this is the new feedback for address accept to PL

       // Write-address port to VCU-hardmacro
       .lc_vcu_awvalid_axi_lite_apb(pl_vcu_awvalid_axi_lite_apb_i),// TBD - this is the new feedback for address accept to PL
       .lc_pl_awready_axi_lite_apb(vcu_pl_awready_axi_lite_apb), // TBD - this is the new feedback for address accept to PL 

       // Write-data port to VCU-hardmacro
       .lc_vcu_wvalid_axi_lite_apb(pl_vcu_wvalid_axi_lite_apb_i),
       .lc_pl_wready_axi_lite_apb(vcu_pl_wready_axi_lite_apb),

       // Read-data port to PL
       .lc_pl_rdata_axi_lite_apb(vcu_pl_rdata_axi_lite_apb),
       .lc_pl_rresp_axi_lite_apb(vcu_pl_rresp_axi_lite_apb),
       .lc_pl_rvalid_axi_lite_apb(vcu_pl_rvalid_axi_lite_apb),
       .lc_vcu_rready_axi_lite_apb(pl_vcu_rready_axi_lite_apb_i), 


       //.vcu_pl_mcu_m_axi_ic_dc_awaddr(vcu_pl_mcu_m_axi_ic_dc_awaddr), 
       //.vcu_pl_mcu_m_axi_ic_dc_awvalid(vcu_pl_mcu_m_axi_ic_dc_awvalid),
       //.pl_vcu_mcu_m_axi_ic_dc_awready(pl_vcu_mcu_m_axi_ic_dc_awready),

       //.clock_high_enable(clock_high_enable),
       //.clock_low_enable(clock_low_enable),


//       .pll_div_change_done(pll_div_change_done),
//       .trigger_pll_div_change(trigger_pll_div_change),
//       .pll_div_value(pll_div_value),

//       .mcu_wt_snoop_addr_pll_change(mcu_wt_snoop_addr_pll_change),
//       .pll_high_low_value(pll_high_low_value),


	   .vcu_pll_test_sel(vcu_pll_test_sel),
	   .vcu_pll_test_ck_sel(vcu_pll_test_ck_sel),
	   .vcu_pll_test_fract_en(vcu_pll_test_fract_en),
	   .vcu_pll_test_fract_clk_sel(vcu_pll_test_fract_clk_sel)

);


endmodule
