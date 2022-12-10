// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec 10 20:38:23 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_mipi_rx_to_video_0_0/design_1_mipi_rx_to_video_0_0_sim_netlist.v
// Design      : design_1_mipi_rx_to_video_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mipi_rx_to_video_0_0,mipi_rx_to_video_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "mipi_rx_to_video_v1_0,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_mipi_rx_to_video_0_0
   (dphy_clk_p,
    dphy_clk_n,
    dphy_data_p,
    dphy_data_n,
    vid_clk,
    vid_ce,
    vid_vsync,
    vid_active_video,
    vid_data,
    vid_locked,
    irq,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dphy_clk_p CLK, xilinx.com:interface:mipi_phy:1.0 mipi_rx CLK_P" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dphy_clk_p, ASSOCIATED_BUSIF mipi_rx, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input dphy_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dphy_clk_n CLK, xilinx.com:interface:mipi_phy:1.0 mipi_rx CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dphy_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input dphy_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_rx DATA_P" *) input [3:0]dphy_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_rx DATA_N" *) input [3:0]dphy_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_clk, ASSOCIATED_BUSIF video, ASSOCIATED_RESET vid_ce, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_mipi_rx_to_video_0_0_vid_clk, INSERT_VIP 0" *) output vid_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 vid_ce CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_ce, FREQ_HZ 100000000, PHASE 0, POLARITY ACTIVE_HIGH" *) output vid_ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video VSYNC" *) output vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video ACTIVE_VIDEO" *) output vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video DATA" *) output [39:0]vid_data;
  output vid_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn:irq, FREQ_HZ 150074602, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_sys, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [6:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [6:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 150074602, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_sys, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IOSTANDARD = "MIPI_DPHY_DCI" *) wire dphy_clk_n;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IOSTANDARD = "MIPI_DPHY_DCI" *) wire dphy_clk_p;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IOSTANDARD = "MIPI_DPHY_DCI" *) wire [3:0]dphy_data_n;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IOSTANDARD = "MIPI_DPHY_DCI" *) wire [3:0]dphy_data_p;
  wire irq;
  wire s00_axi_aclk;
  wire [6:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [6:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire vid_active_video;
  wire vid_ce;
  wire vid_clk;
  wire [39:0]vid_data;
  wire vid_locked;
  wire vid_vsync;
  wire [1:0]NLW_inst_s00_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s00_axi_rresp_UNCONNECTED;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S00_AXI_ADDR_WIDTH = "7" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  (* DATA_BITS = "10" *) 
  (* DATA_DELAY_INSIDE = "1'b1" *) 
  (* DATA_DELAY_NTAPS = "200" *) 
  (* HS_SETTLE_DELAY = "20" *) 
  (* LANES_NUM = "4" *) 
  design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0 inst
       (.dphy_clk_n(dphy_clk_n),
        .dphy_clk_p(dphy_clk_p),
        .dphy_data_n(dphy_data_n),
        .dphy_data_p(dphy_data_p),
        .irq(irq),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr({s00_axi_araddr[6:2],1'b0,1'b0}),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arprot({1'b0,1'b0,1'b0}),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr({s00_axi_awaddr[6:2],1'b0,1'b0}),
        .s00_axi_awprot({1'b0,1'b0,1'b0}),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bresp(NLW_inst_s00_axi_bresp_UNCONNECTED[1:0]),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(NLW_inst_s00_axi_rresp_UNCONNECTED[1:0]),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_axi_wdata[1:0]}),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_wvalid(s00_axi_wvalid),
        .vid_active_video(vid_active_video),
        .vid_ce(vid_ce),
        .vid_clk(vid_clk),
        .vid_data(vid_data),
        .vid_locked(vid_locked),
        .vid_vsync(vid_vsync));
endmodule

(* ORIG_REF_NAME = "_csi2_lanes_aligner" *) 
module design_1_mipi_rx_to_video_0_0__csi2_lanes_aligner
   (align_flag_reg_0,
    module_reset_reg,
    Q,
    \align_idx_reg[2][0]_0 ,
    \align_idx_reg[1][0]_0 ,
    \align_idx_reg[0][0]_0 ,
    data_flag0,
    D,
    align_flag_reg_1,
    lane_byte_aligned,
    align_flag_reg_2,
    clk_hs_byte,
    module_reset,
    s00_axi_aresetn,
    \lane_buf_reg[7][0]_0 ,
    \lane_buf_reg[7][8]_0 ,
    \lane_buf_reg[7][16]_0 ,
    lane_valid__2,
    data_flag_reg,
    \head_clk_idx_reg[0] ,
    data_flag_reg_0,
    \head_word_reg[0] ,
    \align_idx_reg[0][0]_1 ,
    \align_idx_reg[0][0]_2 ,
    \lane_buf_reg[0][31]_0 ,
    \align_idx_reg[1][0]_1 ,
    \align_idx_reg[1][0]_2 ,
    \align_idx_reg[2][0]_1 ,
    \align_idx_reg[2][0]_2 ,
    \align_idx_reg[3][0]_0 ,
    \align_idx_reg[3][0]_1 );
  output align_flag_reg_0;
  output module_reset_reg;
  output [0:0]Q;
  output [0:0]\align_idx_reg[2][0]_0 ;
  output [0:0]\align_idx_reg[1][0]_0 ;
  output [0:0]\align_idx_reg[0][0]_0 ;
  output data_flag0;
  output [0:0]D;
  output [23:0]align_flag_reg_1;
  output [31:0]lane_byte_aligned;
  input align_flag_reg_2;
  input clk_hs_byte;
  input module_reset;
  input s00_axi_aresetn;
  input \lane_buf_reg[7][0]_0 ;
  input \lane_buf_reg[7][8]_0 ;
  input \lane_buf_reg[7][16]_0 ;
  input lane_valid__2;
  input data_flag_reg;
  input [2:0]\head_clk_idx_reg[0] ;
  input data_flag_reg_0;
  input \head_word_reg[0] ;
  input [0:0]\align_idx_reg[0][0]_1 ;
  input [0:0]\align_idx_reg[0][0]_2 ;
  input [31:0]\lane_buf_reg[0][31]_0 ;
  input [0:0]\align_idx_reg[1][0]_1 ;
  input [0:0]\align_idx_reg[1][0]_2 ;
  input [0:0]\align_idx_reg[2][0]_1 ;
  input [0:0]\align_idx_reg[2][0]_2 ;
  input [0:0]\align_idx_reg[3][0]_0 ;
  input [0:0]\align_idx_reg[3][0]_1 ;

  wire [0:0]D;
  wire [0:0]Q;
  wire align_flag_reg_0;
  wire [23:0]align_flag_reg_1;
  wire align_flag_reg_2;
  wire \align_idx[0][1]_i_1_n_0 ;
  wire \align_idx[0][2]_i_2_n_0 ;
  wire \align_idx[1][1]_i_1_n_0 ;
  wire \align_idx[1][2]_i_2_n_0 ;
  wire \align_idx[2][1]_i_1_n_0 ;
  wire \align_idx[2][2]_i_2_n_0 ;
  wire \align_idx[3][1]_i_1_n_0 ;
  wire \align_idx[3][2]_i_2_n_0 ;
  wire [0:0]\align_idx_reg[0][0]_0 ;
  wire [0:0]\align_idx_reg[0][0]_1 ;
  wire [0:0]\align_idx_reg[0][0]_2 ;
  wire [2:1]\align_idx_reg[0]_0 ;
  wire [0:0]\align_idx_reg[1][0]_0 ;
  wire [0:0]\align_idx_reg[1][0]_1 ;
  wire [0:0]\align_idx_reg[1][0]_2 ;
  wire [2:1]\align_idx_reg[1]_9 ;
  wire [0:0]\align_idx_reg[2][0]_0 ;
  wire [0:0]\align_idx_reg[2][0]_1 ;
  wire [0:0]\align_idx_reg[2][0]_2 ;
  wire [2:1]\align_idx_reg[2]_10 ;
  wire [0:0]\align_idx_reg[3][0]_0 ;
  wire [0:0]\align_idx_reg[3][0]_1 ;
  wire [2:1]\align_idx_reg[3]_11 ;
  wire clk_hs_byte;
  wire \data_byte[24]_i_3_n_0 ;
  wire \data_byte[24]_i_4_n_0 ;
  wire \data_byte[25]_i_3_n_0 ;
  wire \data_byte[25]_i_4_n_0 ;
  wire \data_byte[26]_i_3_n_0 ;
  wire \data_byte[26]_i_4_n_0 ;
  wire \data_byte[27]_i_3_n_0 ;
  wire \data_byte[27]_i_4_n_0 ;
  wire \data_byte[28]_i_3_n_0 ;
  wire \data_byte[28]_i_4_n_0 ;
  wire \data_byte[29]_i_3_n_0 ;
  wire \data_byte[29]_i_4_n_0 ;
  wire \data_byte[30]_i_3_n_0 ;
  wire \data_byte[30]_i_4_n_0 ;
  wire \data_byte[31]_i_3_n_0 ;
  wire \data_byte[31]_i_4_n_0 ;
  wire data_flag0;
  wire data_flag_reg;
  wire data_flag_reg_0;
  wire \head_clk_idx[0]_i_10_n_0 ;
  wire \head_clk_idx[0]_i_11_n_0 ;
  wire \head_clk_idx[0]_i_2_n_0 ;
  wire \head_clk_idx[0]_i_3_n_0 ;
  wire \head_clk_idx[0]_i_4_n_0 ;
  wire \head_clk_idx[0]_i_5_n_0 ;
  wire \head_clk_idx[0]_i_6_n_0 ;
  wire \head_clk_idx[0]_i_7_n_0 ;
  wire \head_clk_idx[0]_i_8_n_0 ;
  wire \head_clk_idx[0]_i_9_n_0 ;
  wire [2:0]\head_clk_idx_reg[0] ;
  wire \head_word[0]_i_3_n_0 ;
  wire \head_word[0]_i_4_n_0 ;
  wire \head_word[10]_i_3_n_0 ;
  wire \head_word[10]_i_4_n_0 ;
  wire \head_word[11]_i_3_n_0 ;
  wire \head_word[11]_i_4_n_0 ;
  wire \head_word[12]_i_3_n_0 ;
  wire \head_word[12]_i_4_n_0 ;
  wire \head_word[13]_i_3_n_0 ;
  wire \head_word[13]_i_4_n_0 ;
  wire \head_word[14]_i_3_n_0 ;
  wire \head_word[14]_i_4_n_0 ;
  wire \head_word[15]_i_3_n_0 ;
  wire \head_word[15]_i_4_n_0 ;
  wire \head_word[16]_i_3_n_0 ;
  wire \head_word[16]_i_4_n_0 ;
  wire \head_word[17]_i_3_n_0 ;
  wire \head_word[17]_i_4_n_0 ;
  wire \head_word[18]_i_3_n_0 ;
  wire \head_word[18]_i_4_n_0 ;
  wire \head_word[19]_i_3_n_0 ;
  wire \head_word[19]_i_4_n_0 ;
  wire \head_word[1]_i_3_n_0 ;
  wire \head_word[1]_i_4_n_0 ;
  wire \head_word[20]_i_3_n_0 ;
  wire \head_word[20]_i_4_n_0 ;
  wire \head_word[21]_i_3_n_0 ;
  wire \head_word[21]_i_4_n_0 ;
  wire \head_word[22]_i_3_n_0 ;
  wire \head_word[22]_i_4_n_0 ;
  wire \head_word[23]_i_4_n_0 ;
  wire \head_word[23]_i_5_n_0 ;
  wire \head_word[23]_i_7_n_0 ;
  wire \head_word[23]_i_8_n_0 ;
  wire \head_word[2]_i_3_n_0 ;
  wire \head_word[2]_i_4_n_0 ;
  wire \head_word[3]_i_3_n_0 ;
  wire \head_word[3]_i_4_n_0 ;
  wire \head_word[4]_i_3_n_0 ;
  wire \head_word[4]_i_4_n_0 ;
  wire \head_word[5]_i_3_n_0 ;
  wire \head_word[5]_i_4_n_0 ;
  wire \head_word[6]_i_3_n_0 ;
  wire \head_word[6]_i_4_n_0 ;
  wire \head_word[7]_i_3_n_0 ;
  wire \head_word[7]_i_4_n_0 ;
  wire \head_word[8]_i_3_n_0 ;
  wire \head_word[8]_i_4_n_0 ;
  wire \head_word[9]_i_3_n_0 ;
  wire \head_word[9]_i_4_n_0 ;
  wire \head_word_reg[0] ;
  wire \lane_buf[1][0]_i_1_n_0 ;
  wire \lane_buf[1][10]_i_1_n_0 ;
  wire \lane_buf[1][11]_i_1_n_0 ;
  wire \lane_buf[1][12]_i_1_n_0 ;
  wire \lane_buf[1][13]_i_1_n_0 ;
  wire \lane_buf[1][14]_i_1_n_0 ;
  wire \lane_buf[1][15]_i_1_n_0 ;
  wire \lane_buf[1][16]_i_1_n_0 ;
  wire \lane_buf[1][17]_i_1_n_0 ;
  wire \lane_buf[1][18]_i_1_n_0 ;
  wire \lane_buf[1][19]_i_1_n_0 ;
  wire \lane_buf[1][1]_i_1_n_0 ;
  wire \lane_buf[1][20]_i_1_n_0 ;
  wire \lane_buf[1][21]_i_1_n_0 ;
  wire \lane_buf[1][22]_i_1_n_0 ;
  wire \lane_buf[1][23]_i_1_n_0 ;
  wire \lane_buf[1][24]_i_1_n_0 ;
  wire \lane_buf[1][25]_i_1_n_0 ;
  wire \lane_buf[1][26]_i_1_n_0 ;
  wire \lane_buf[1][27]_i_1_n_0 ;
  wire \lane_buf[1][28]_i_1_n_0 ;
  wire \lane_buf[1][29]_i_1_n_0 ;
  wire \lane_buf[1][2]_i_1_n_0 ;
  wire \lane_buf[1][30]_i_1_n_0 ;
  wire \lane_buf[1][31]_i_1_n_0 ;
  wire \lane_buf[1][3]_i_1_n_0 ;
  wire \lane_buf[1][4]_i_1_n_0 ;
  wire \lane_buf[1][5]_i_1_n_0 ;
  wire \lane_buf[1][6]_i_1_n_0 ;
  wire \lane_buf[1][7]_i_1_n_0 ;
  wire \lane_buf[1][8]_i_1_n_0 ;
  wire \lane_buf[1][9]_i_1_n_0 ;
  wire \lane_buf[2][0]_i_1_n_0 ;
  wire \lane_buf[2][10]_i_1_n_0 ;
  wire \lane_buf[2][11]_i_1_n_0 ;
  wire \lane_buf[2][12]_i_1_n_0 ;
  wire \lane_buf[2][13]_i_1_n_0 ;
  wire \lane_buf[2][14]_i_1_n_0 ;
  wire \lane_buf[2][15]_i_1_n_0 ;
  wire \lane_buf[2][16]_i_1_n_0 ;
  wire \lane_buf[2][17]_i_1_n_0 ;
  wire \lane_buf[2][18]_i_1_n_0 ;
  wire \lane_buf[2][19]_i_1_n_0 ;
  wire \lane_buf[2][1]_i_1_n_0 ;
  wire \lane_buf[2][20]_i_1_n_0 ;
  wire \lane_buf[2][21]_i_1_n_0 ;
  wire \lane_buf[2][22]_i_1_n_0 ;
  wire \lane_buf[2][23]_i_1_n_0 ;
  wire \lane_buf[2][24]_i_1_n_0 ;
  wire \lane_buf[2][25]_i_1_n_0 ;
  wire \lane_buf[2][26]_i_1_n_0 ;
  wire \lane_buf[2][27]_i_1_n_0 ;
  wire \lane_buf[2][28]_i_1_n_0 ;
  wire \lane_buf[2][29]_i_1_n_0 ;
  wire \lane_buf[2][2]_i_1_n_0 ;
  wire \lane_buf[2][30]_i_1_n_0 ;
  wire \lane_buf[2][31]_i_1_n_0 ;
  wire \lane_buf[2][3]_i_1_n_0 ;
  wire \lane_buf[2][4]_i_1_n_0 ;
  wire \lane_buf[2][5]_i_1_n_0 ;
  wire \lane_buf[2][6]_i_1_n_0 ;
  wire \lane_buf[2][7]_i_1_n_0 ;
  wire \lane_buf[2][8]_i_1_n_0 ;
  wire \lane_buf[2][9]_i_1_n_0 ;
  wire \lane_buf[3][0]_i_1_n_0 ;
  wire \lane_buf[3][10]_i_1_n_0 ;
  wire \lane_buf[3][11]_i_1_n_0 ;
  wire \lane_buf[3][12]_i_1_n_0 ;
  wire \lane_buf[3][13]_i_1_n_0 ;
  wire \lane_buf[3][14]_i_1_n_0 ;
  wire \lane_buf[3][15]_i_1_n_0 ;
  wire \lane_buf[3][16]_i_1_n_0 ;
  wire \lane_buf[3][17]_i_1_n_0 ;
  wire \lane_buf[3][18]_i_1_n_0 ;
  wire \lane_buf[3][19]_i_1_n_0 ;
  wire \lane_buf[3][1]_i_1_n_0 ;
  wire \lane_buf[3][20]_i_1_n_0 ;
  wire \lane_buf[3][21]_i_1_n_0 ;
  wire \lane_buf[3][22]_i_1_n_0 ;
  wire \lane_buf[3][23]_i_1_n_0 ;
  wire \lane_buf[3][24]_i_1_n_0 ;
  wire \lane_buf[3][25]_i_1_n_0 ;
  wire \lane_buf[3][26]_i_1_n_0 ;
  wire \lane_buf[3][27]_i_1_n_0 ;
  wire \lane_buf[3][28]_i_1_n_0 ;
  wire \lane_buf[3][29]_i_1_n_0 ;
  wire \lane_buf[3][2]_i_1_n_0 ;
  wire \lane_buf[3][30]_i_1_n_0 ;
  wire \lane_buf[3][31]_i_1_n_0 ;
  wire \lane_buf[3][3]_i_1_n_0 ;
  wire \lane_buf[3][4]_i_1_n_0 ;
  wire \lane_buf[3][5]_i_1_n_0 ;
  wire \lane_buf[3][6]_i_1_n_0 ;
  wire \lane_buf[3][7]_i_1_n_0 ;
  wire \lane_buf[3][8]_i_1_n_0 ;
  wire \lane_buf[3][9]_i_1_n_0 ;
  wire \lane_buf[4][0]_i_1_n_0 ;
  wire \lane_buf[4][10]_i_1_n_0 ;
  wire \lane_buf[4][11]_i_1_n_0 ;
  wire \lane_buf[4][12]_i_1_n_0 ;
  wire \lane_buf[4][13]_i_1_n_0 ;
  wire \lane_buf[4][14]_i_1_n_0 ;
  wire \lane_buf[4][15]_i_1_n_0 ;
  wire \lane_buf[4][16]_i_1_n_0 ;
  wire \lane_buf[4][17]_i_1_n_0 ;
  wire \lane_buf[4][18]_i_1_n_0 ;
  wire \lane_buf[4][19]_i_1_n_0 ;
  wire \lane_buf[4][1]_i_1_n_0 ;
  wire \lane_buf[4][20]_i_1_n_0 ;
  wire \lane_buf[4][21]_i_1_n_0 ;
  wire \lane_buf[4][22]_i_1_n_0 ;
  wire \lane_buf[4][23]_i_1_n_0 ;
  wire \lane_buf[4][24]_i_1_n_0 ;
  wire \lane_buf[4][25]_i_1_n_0 ;
  wire \lane_buf[4][26]_i_1_n_0 ;
  wire \lane_buf[4][27]_i_1_n_0 ;
  wire \lane_buf[4][28]_i_1_n_0 ;
  wire \lane_buf[4][29]_i_1_n_0 ;
  wire \lane_buf[4][2]_i_1_n_0 ;
  wire \lane_buf[4][30]_i_1_n_0 ;
  wire \lane_buf[4][31]_i_1_n_0 ;
  wire \lane_buf[4][3]_i_1_n_0 ;
  wire \lane_buf[4][4]_i_1_n_0 ;
  wire \lane_buf[4][5]_i_1_n_0 ;
  wire \lane_buf[4][6]_i_1_n_0 ;
  wire \lane_buf[4][7]_i_1_n_0 ;
  wire \lane_buf[4][8]_i_1_n_0 ;
  wire \lane_buf[4][9]_i_1_n_0 ;
  wire \lane_buf[5][0]_i_1_n_0 ;
  wire \lane_buf[5][10]_i_1_n_0 ;
  wire \lane_buf[5][11]_i_1_n_0 ;
  wire \lane_buf[5][12]_i_1_n_0 ;
  wire \lane_buf[5][13]_i_1_n_0 ;
  wire \lane_buf[5][14]_i_1_n_0 ;
  wire \lane_buf[5][15]_i_1_n_0 ;
  wire \lane_buf[5][16]_i_1_n_0 ;
  wire \lane_buf[5][17]_i_1_n_0 ;
  wire \lane_buf[5][18]_i_1_n_0 ;
  wire \lane_buf[5][19]_i_1_n_0 ;
  wire \lane_buf[5][1]_i_1_n_0 ;
  wire \lane_buf[5][20]_i_1_n_0 ;
  wire \lane_buf[5][21]_i_1_n_0 ;
  wire \lane_buf[5][22]_i_1_n_0 ;
  wire \lane_buf[5][23]_i_1_n_0 ;
  wire \lane_buf[5][24]_i_1_n_0 ;
  wire \lane_buf[5][25]_i_1_n_0 ;
  wire \lane_buf[5][26]_i_1_n_0 ;
  wire \lane_buf[5][27]_i_1_n_0 ;
  wire \lane_buf[5][28]_i_1_n_0 ;
  wire \lane_buf[5][29]_i_1_n_0 ;
  wire \lane_buf[5][2]_i_1_n_0 ;
  wire \lane_buf[5][30]_i_1_n_0 ;
  wire \lane_buf[5][31]_i_1_n_0 ;
  wire \lane_buf[5][3]_i_1_n_0 ;
  wire \lane_buf[5][4]_i_1_n_0 ;
  wire \lane_buf[5][5]_i_1_n_0 ;
  wire \lane_buf[5][6]_i_1_n_0 ;
  wire \lane_buf[5][7]_i_1_n_0 ;
  wire \lane_buf[5][8]_i_1_n_0 ;
  wire \lane_buf[5][9]_i_1_n_0 ;
  wire \lane_buf[6][0]_i_1_n_0 ;
  wire \lane_buf[6][10]_i_1_n_0 ;
  wire \lane_buf[6][11]_i_1_n_0 ;
  wire \lane_buf[6][12]_i_1_n_0 ;
  wire \lane_buf[6][13]_i_1_n_0 ;
  wire \lane_buf[6][14]_i_1_n_0 ;
  wire \lane_buf[6][15]_i_1_n_0 ;
  wire \lane_buf[6][16]_i_1_n_0 ;
  wire \lane_buf[6][17]_i_1_n_0 ;
  wire \lane_buf[6][18]_i_1_n_0 ;
  wire \lane_buf[6][19]_i_1_n_0 ;
  wire \lane_buf[6][1]_i_1_n_0 ;
  wire \lane_buf[6][20]_i_1_n_0 ;
  wire \lane_buf[6][21]_i_1_n_0 ;
  wire \lane_buf[6][22]_i_1_n_0 ;
  wire \lane_buf[6][23]_i_1_n_0 ;
  wire \lane_buf[6][24]_i_1_n_0 ;
  wire \lane_buf[6][25]_i_1_n_0 ;
  wire \lane_buf[6][26]_i_1_n_0 ;
  wire \lane_buf[6][27]_i_1_n_0 ;
  wire \lane_buf[6][28]_i_1_n_0 ;
  wire \lane_buf[6][29]_i_1_n_0 ;
  wire \lane_buf[6][2]_i_1_n_0 ;
  wire \lane_buf[6][30]_i_1_n_0 ;
  wire \lane_buf[6][31]_i_1_n_0 ;
  wire \lane_buf[6][3]_i_1_n_0 ;
  wire \lane_buf[6][4]_i_1_n_0 ;
  wire \lane_buf[6][5]_i_1_n_0 ;
  wire \lane_buf[6][6]_i_1_n_0 ;
  wire \lane_buf[6][7]_i_1_n_0 ;
  wire \lane_buf[6][8]_i_1_n_0 ;
  wire \lane_buf[6][9]_i_1_n_0 ;
  wire \lane_buf[7][0]_i_1_n_0 ;
  wire \lane_buf[7][10]_i_1_n_0 ;
  wire \lane_buf[7][11]_i_1_n_0 ;
  wire \lane_buf[7][12]_i_1_n_0 ;
  wire \lane_buf[7][13]_i_1_n_0 ;
  wire \lane_buf[7][14]_i_1_n_0 ;
  wire \lane_buf[7][15]_i_1_n_0 ;
  wire \lane_buf[7][16]_i_1_n_0 ;
  wire \lane_buf[7][17]_i_1_n_0 ;
  wire \lane_buf[7][18]_i_1_n_0 ;
  wire \lane_buf[7][19]_i_1_n_0 ;
  wire \lane_buf[7][1]_i_1_n_0 ;
  wire \lane_buf[7][20]_i_1_n_0 ;
  wire \lane_buf[7][21]_i_1_n_0 ;
  wire \lane_buf[7][22]_i_1_n_0 ;
  wire \lane_buf[7][23]_i_1_n_0 ;
  wire \lane_buf[7][24]_i_1_n_0 ;
  wire \lane_buf[7][25]_i_1_n_0 ;
  wire \lane_buf[7][26]_i_1_n_0 ;
  wire \lane_buf[7][27]_i_1_n_0 ;
  wire \lane_buf[7][28]_i_1_n_0 ;
  wire \lane_buf[7][29]_i_1_n_0 ;
  wire \lane_buf[7][2]_i_1_n_0 ;
  wire \lane_buf[7][30]_i_1_n_0 ;
  wire \lane_buf[7][31]_i_1_n_0 ;
  wire \lane_buf[7][3]_i_1_n_0 ;
  wire \lane_buf[7][4]_i_1_n_0 ;
  wire \lane_buf[7][5]_i_1_n_0 ;
  wire \lane_buf[7][6]_i_1_n_0 ;
  wire \lane_buf[7][7]_i_1_n_0 ;
  wire \lane_buf[7][8]_i_1_n_0 ;
  wire \lane_buf[7][9]_i_1_n_0 ;
  wire [31:0]\lane_buf_reg[0][31]_0 ;
  wire [31:0]\lane_buf_reg[0]_1 ;
  wire [31:0]\lane_buf_reg[1]_2 ;
  wire [31:0]\lane_buf_reg[2]_3 ;
  wire [31:0]\lane_buf_reg[3]_4 ;
  wire [31:0]\lane_buf_reg[4]_5 ;
  wire [31:0]\lane_buf_reg[5]_6 ;
  wire [31:0]\lane_buf_reg[6]_7 ;
  wire \lane_buf_reg[7][0]_0 ;
  wire \lane_buf_reg[7][16]_0 ;
  wire \lane_buf_reg[7][8]_0 ;
  wire [31:0]\lane_buf_reg[7]_8 ;
  wire [31:0]lane_byte_aligned;
  wire lane_valid__2;
  wire module_reset;
  wire module_reset_reg;
  wire s00_axi_aresetn;

  FDCE align_flag_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(align_flag_reg_2),
        .Q(align_flag_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \align_idx[0][1]_i_1 
       (.I0(\lane_buf_reg[7][0]_0 ),
        .I1(\align_idx_reg[0][0]_0 ),
        .I2(\align_idx_reg[0]_0 [1]),
        .O(\align_idx[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \align_idx[0][2]_i_2 
       (.I0(\align_idx_reg[0]_0 [1]),
        .I1(\align_idx_reg[0][0]_0 ),
        .I2(\lane_buf_reg[7][0]_0 ),
        .I3(\align_idx_reg[0]_0 [2]),
        .O(\align_idx[0][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \align_idx[1][1]_i_1 
       (.I0(\lane_buf_reg[7][8]_0 ),
        .I1(\align_idx_reg[1][0]_0 ),
        .I2(\align_idx_reg[1]_9 [1]),
        .O(\align_idx[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \align_idx[1][2]_i_2 
       (.I0(\align_idx_reg[1]_9 [1]),
        .I1(\align_idx_reg[1][0]_0 ),
        .I2(\lane_buf_reg[7][8]_0 ),
        .I3(\align_idx_reg[1]_9 [2]),
        .O(\align_idx[1][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \align_idx[2][1]_i_1 
       (.I0(\lane_buf_reg[7][16]_0 ),
        .I1(\align_idx_reg[2][0]_0 ),
        .I2(\align_idx_reg[2]_10 [1]),
        .O(\align_idx[2][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \align_idx[2][2]_i_2 
       (.I0(\align_idx_reg[2]_10 [1]),
        .I1(\align_idx_reg[2][0]_0 ),
        .I2(\lane_buf_reg[7][16]_0 ),
        .I3(\align_idx_reg[2]_10 [2]),
        .O(\align_idx[2][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \align_idx[3][1]_i_1 
       (.I0(lane_valid__2),
        .I1(Q),
        .I2(\align_idx_reg[3]_11 [1]),
        .O(\align_idx[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \align_idx[3][2]_i_2 
       (.I0(\align_idx_reg[3]_11 [1]),
        .I1(Q),
        .I2(lane_valid__2),
        .I3(\align_idx_reg[3]_11 [2]),
        .O(\align_idx[3][2]_i_2_n_0 ));
  FDCE \align_idx_reg[0][0] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[0][0]_1 ),
        .CLR(module_reset_reg),
        .D(\align_idx_reg[0][0]_2 ),
        .Q(\align_idx_reg[0][0]_0 ));
  FDCE \align_idx_reg[0][1] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[0][0]_1 ),
        .CLR(module_reset_reg),
        .D(\align_idx[0][1]_i_1_n_0 ),
        .Q(\align_idx_reg[0]_0 [1]));
  FDCE \align_idx_reg[0][2] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[0][0]_1 ),
        .CLR(module_reset_reg),
        .D(\align_idx[0][2]_i_2_n_0 ),
        .Q(\align_idx_reg[0]_0 [2]));
  FDCE \align_idx_reg[1][0] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[1][0]_1 ),
        .CLR(module_reset_reg),
        .D(\align_idx_reg[1][0]_2 ),
        .Q(\align_idx_reg[1][0]_0 ));
  FDCE \align_idx_reg[1][1] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[1][0]_1 ),
        .CLR(module_reset_reg),
        .D(\align_idx[1][1]_i_1_n_0 ),
        .Q(\align_idx_reg[1]_9 [1]));
  FDCE \align_idx_reg[1][2] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[1][0]_1 ),
        .CLR(module_reset_reg),
        .D(\align_idx[1][2]_i_2_n_0 ),
        .Q(\align_idx_reg[1]_9 [2]));
  FDCE \align_idx_reg[2][0] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[2][0]_1 ),
        .CLR(module_reset_reg),
        .D(\align_idx_reg[2][0]_2 ),
        .Q(\align_idx_reg[2][0]_0 ));
  FDCE \align_idx_reg[2][1] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[2][0]_1 ),
        .CLR(module_reset_reg),
        .D(\align_idx[2][1]_i_1_n_0 ),
        .Q(\align_idx_reg[2]_10 [1]));
  FDCE \align_idx_reg[2][2] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[2][0]_1 ),
        .CLR(module_reset_reg),
        .D(\align_idx[2][2]_i_2_n_0 ),
        .Q(\align_idx_reg[2]_10 [2]));
  FDCE \align_idx_reg[3][0] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[3][0]_0 ),
        .CLR(module_reset_reg),
        .D(\align_idx_reg[3][0]_1 ),
        .Q(Q));
  FDCE \align_idx_reg[3][1] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[3][0]_0 ),
        .CLR(module_reset_reg),
        .D(\align_idx[3][1]_i_1_n_0 ),
        .Q(\align_idx_reg[3]_11 [1]));
  FDCE \align_idx_reg[3][2] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[3][0]_0 ),
        .CLR(module_reset_reg),
        .D(\align_idx[3][2]_i_2_n_0 ),
        .Q(\align_idx_reg[3]_11 [2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[24]_i_3 
       (.I0(\lane_buf_reg[0]_1 [24]),
        .I1(\lane_buf_reg[2]_3 [24]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[7]_8 [24]),
        .I5(\lane_buf_reg[1]_2 [24]),
        .O(\data_byte[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[24]_i_4 
       (.I0(\lane_buf_reg[4]_5 [24]),
        .I1(\lane_buf_reg[6]_7 [24]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[3]_4 [24]),
        .I5(\lane_buf_reg[5]_6 [24]),
        .O(\data_byte[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[25]_i_3 
       (.I0(\lane_buf_reg[0]_1 [25]),
        .I1(\lane_buf_reg[2]_3 [25]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[7]_8 [25]),
        .I5(\lane_buf_reg[1]_2 [25]),
        .O(\data_byte[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[25]_i_4 
       (.I0(\lane_buf_reg[4]_5 [25]),
        .I1(\lane_buf_reg[6]_7 [25]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[3]_4 [25]),
        .I5(\lane_buf_reg[5]_6 [25]),
        .O(\data_byte[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[26]_i_3 
       (.I0(\lane_buf_reg[0]_1 [26]),
        .I1(\lane_buf_reg[2]_3 [26]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[7]_8 [26]),
        .I5(\lane_buf_reg[1]_2 [26]),
        .O(\data_byte[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[26]_i_4 
       (.I0(\lane_buf_reg[4]_5 [26]),
        .I1(\lane_buf_reg[6]_7 [26]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[3]_4 [26]),
        .I5(\lane_buf_reg[5]_6 [26]),
        .O(\data_byte[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[27]_i_3 
       (.I0(\lane_buf_reg[0]_1 [27]),
        .I1(\lane_buf_reg[2]_3 [27]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[7]_8 [27]),
        .I5(\lane_buf_reg[1]_2 [27]),
        .O(\data_byte[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[27]_i_4 
       (.I0(\lane_buf_reg[4]_5 [27]),
        .I1(\lane_buf_reg[6]_7 [27]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[3]_4 [27]),
        .I5(\lane_buf_reg[5]_6 [27]),
        .O(\data_byte[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[28]_i_3 
       (.I0(\lane_buf_reg[0]_1 [28]),
        .I1(\lane_buf_reg[2]_3 [28]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[7]_8 [28]),
        .I5(\lane_buf_reg[1]_2 [28]),
        .O(\data_byte[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[28]_i_4 
       (.I0(\lane_buf_reg[4]_5 [28]),
        .I1(\lane_buf_reg[6]_7 [28]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[3]_4 [28]),
        .I5(\lane_buf_reg[5]_6 [28]),
        .O(\data_byte[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[29]_i_3 
       (.I0(\lane_buf_reg[0]_1 [29]),
        .I1(\lane_buf_reg[2]_3 [29]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[7]_8 [29]),
        .I5(\lane_buf_reg[1]_2 [29]),
        .O(\data_byte[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[29]_i_4 
       (.I0(\lane_buf_reg[4]_5 [29]),
        .I1(\lane_buf_reg[6]_7 [29]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[3]_4 [29]),
        .I5(\lane_buf_reg[5]_6 [29]),
        .O(\data_byte[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[30]_i_3 
       (.I0(\lane_buf_reg[0]_1 [30]),
        .I1(\lane_buf_reg[2]_3 [30]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[7]_8 [30]),
        .I5(\lane_buf_reg[1]_2 [30]),
        .O(\data_byte[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[30]_i_4 
       (.I0(\lane_buf_reg[4]_5 [30]),
        .I1(\lane_buf_reg[6]_7 [30]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[3]_4 [30]),
        .I5(\lane_buf_reg[5]_6 [30]),
        .O(\data_byte[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[31]_i_3 
       (.I0(\lane_buf_reg[0]_1 [31]),
        .I1(\lane_buf_reg[2]_3 [31]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[7]_8 [31]),
        .I5(\lane_buf_reg[1]_2 [31]),
        .O(\data_byte[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_byte[31]_i_4 
       (.I0(\lane_buf_reg[4]_5 [31]),
        .I1(\lane_buf_reg[6]_7 [31]),
        .I2(Q),
        .I3(\align_idx_reg[3]_11 [1]),
        .I4(\lane_buf_reg[3]_4 [31]),
        .I5(\lane_buf_reg[5]_6 [31]),
        .O(\data_byte[31]_i_4_n_0 ));
  MUXF7 \data_byte_reg[24]_i_2 
       (.I0(\data_byte[24]_i_3_n_0 ),
        .I1(\data_byte[24]_i_4_n_0 ),
        .O(lane_byte_aligned[24]),
        .S(\align_idx_reg[3]_11 [2]));
  MUXF7 \data_byte_reg[25]_i_2 
       (.I0(\data_byte[25]_i_3_n_0 ),
        .I1(\data_byte[25]_i_4_n_0 ),
        .O(lane_byte_aligned[25]),
        .S(\align_idx_reg[3]_11 [2]));
  MUXF7 \data_byte_reg[26]_i_2 
       (.I0(\data_byte[26]_i_3_n_0 ),
        .I1(\data_byte[26]_i_4_n_0 ),
        .O(lane_byte_aligned[26]),
        .S(\align_idx_reg[3]_11 [2]));
  MUXF7 \data_byte_reg[27]_i_2 
       (.I0(\data_byte[27]_i_3_n_0 ),
        .I1(\data_byte[27]_i_4_n_0 ),
        .O(lane_byte_aligned[27]),
        .S(\align_idx_reg[3]_11 [2]));
  MUXF7 \data_byte_reg[28]_i_2 
       (.I0(\data_byte[28]_i_3_n_0 ),
        .I1(\data_byte[28]_i_4_n_0 ),
        .O(lane_byte_aligned[28]),
        .S(\align_idx_reg[3]_11 [2]));
  MUXF7 \data_byte_reg[29]_i_2 
       (.I0(\data_byte[29]_i_3_n_0 ),
        .I1(\data_byte[29]_i_4_n_0 ),
        .O(lane_byte_aligned[29]),
        .S(\align_idx_reg[3]_11 [2]));
  MUXF7 \data_byte_reg[30]_i_2 
       (.I0(\data_byte[30]_i_3_n_0 ),
        .I1(\data_byte[30]_i_4_n_0 ),
        .O(lane_byte_aligned[30]),
        .S(\align_idx_reg[3]_11 [2]));
  MUXF7 \data_byte_reg[31]_i_2 
       (.I0(\data_byte[31]_i_3_n_0 ),
        .I1(\data_byte[31]_i_4_n_0 ),
        .O(lane_byte_aligned[31]),
        .S(\align_idx_reg[3]_11 [2]));
  LUT6 #(
    .INIT(64'hF0F00000FF200000)) 
    data_flag_i_1
       (.I0(\head_clk_idx[0]_i_3_n_0 ),
        .I1(\head_clk_idx[0]_i_2_n_0 ),
        .I2(data_flag_reg),
        .I3(\head_clk_idx_reg[0] [1]),
        .I4(align_flag_reg_0),
        .I5(data_flag_reg_0),
        .O(data_flag0));
  LUT6 #(
    .INIT(64'h0808080A08080808)) 
    \head_clk_idx[0]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_clk_idx_reg[0] [2]),
        .I2(\head_clk_idx_reg[0] [0]),
        .I3(\head_clk_idx_reg[0] [1]),
        .I4(\head_clk_idx[0]_i_2_n_0 ),
        .I5(\head_clk_idx[0]_i_3_n_0 ),
        .O(D));
  LUT4 #(
    .INIT(16'h8000)) 
    \head_clk_idx[0]_i_10 
       (.I0(lane_byte_aligned[12]),
        .I1(lane_byte_aligned[13]),
        .I2(lane_byte_aligned[19]),
        .I3(lane_byte_aligned[11]),
        .O(\head_clk_idx[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \head_clk_idx[0]_i_11 
       (.I0(lane_byte_aligned[4]),
        .I1(lane_byte_aligned[5]),
        .I2(lane_byte_aligned[15]),
        .I3(lane_byte_aligned[31]),
        .O(\head_clk_idx[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \head_clk_idx[0]_i_2 
       (.I0(\head_clk_idx[0]_i_4_n_0 ),
        .I1(\head_clk_idx[0]_i_5_n_0 ),
        .I2(\head_clk_idx[0]_i_6_n_0 ),
        .I3(\head_clk_idx[0]_i_7_n_0 ),
        .O(\head_clk_idx[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \head_clk_idx[0]_i_3 
       (.I0(\head_clk_idx[0]_i_8_n_0 ),
        .I1(\head_clk_idx[0]_i_9_n_0 ),
        .I2(\head_clk_idx[0]_i_10_n_0 ),
        .I3(\head_clk_idx[0]_i_11_n_0 ),
        .O(\head_clk_idx[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \head_clk_idx[0]_i_4 
       (.I0(lane_byte_aligned[9]),
        .I1(lane_byte_aligned[8]),
        .I2(lane_byte_aligned[22]),
        .I3(lane_byte_aligned[6]),
        .O(\head_clk_idx[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \head_clk_idx[0]_i_5 
       (.I0(lane_byte_aligned[16]),
        .I1(lane_byte_aligned[17]),
        .I2(lane_byte_aligned[18]),
        .I3(lane_byte_aligned[10]),
        .O(\head_clk_idx[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \head_clk_idx[0]_i_6 
       (.I0(lane_byte_aligned[1]),
        .I1(lane_byte_aligned[0]),
        .I2(lane_byte_aligned[14]),
        .I3(lane_byte_aligned[30]),
        .O(\head_clk_idx[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \head_clk_idx[0]_i_7 
       (.I0(lane_byte_aligned[24]),
        .I1(lane_byte_aligned[25]),
        .I2(lane_byte_aligned[26]),
        .I3(lane_byte_aligned[2]),
        .O(\head_clk_idx[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \head_clk_idx[0]_i_8 
       (.I0(lane_byte_aligned[21]),
        .I1(lane_byte_aligned[20]),
        .I2(lane_byte_aligned[23]),
        .I3(lane_byte_aligned[7]),
        .O(\head_clk_idx[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \head_clk_idx[0]_i_9 
       (.I0(lane_byte_aligned[29]),
        .I1(lane_byte_aligned[28]),
        .I2(lane_byte_aligned[27]),
        .I3(lane_byte_aligned[3]),
        .O(\head_clk_idx[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[0]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[0]),
        .O(align_flag_reg_1[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[0]_i_3 
       (.I0(\lane_buf_reg[0]_1 [0]),
        .I1(\lane_buf_reg[2]_3 [0]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[7]_8 [0]),
        .I5(\lane_buf_reg[1]_2 [0]),
        .O(\head_word[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[0]_i_4 
       (.I0(\lane_buf_reg[4]_5 [0]),
        .I1(\lane_buf_reg[6]_7 [0]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[3]_4 [0]),
        .I5(\lane_buf_reg[5]_6 [0]),
        .O(\head_word[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[10]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[10]),
        .O(align_flag_reg_1[10]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[10]_i_3 
       (.I0(\lane_buf_reg[0]_1 [10]),
        .I1(\lane_buf_reg[2]_3 [10]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[7]_8 [10]),
        .I5(\lane_buf_reg[1]_2 [10]),
        .O(\head_word[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[10]_i_4 
       (.I0(\lane_buf_reg[4]_5 [10]),
        .I1(\lane_buf_reg[6]_7 [10]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[3]_4 [10]),
        .I5(\lane_buf_reg[5]_6 [10]),
        .O(\head_word[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[11]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[11]),
        .O(align_flag_reg_1[11]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[11]_i_3 
       (.I0(\lane_buf_reg[0]_1 [11]),
        .I1(\lane_buf_reg[2]_3 [11]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[7]_8 [11]),
        .I5(\lane_buf_reg[1]_2 [11]),
        .O(\head_word[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[11]_i_4 
       (.I0(\lane_buf_reg[4]_5 [11]),
        .I1(\lane_buf_reg[6]_7 [11]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[3]_4 [11]),
        .I5(\lane_buf_reg[5]_6 [11]),
        .O(\head_word[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[12]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[12]),
        .O(align_flag_reg_1[12]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[12]_i_3 
       (.I0(\lane_buf_reg[0]_1 [12]),
        .I1(\lane_buf_reg[2]_3 [12]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[7]_8 [12]),
        .I5(\lane_buf_reg[1]_2 [12]),
        .O(\head_word[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[12]_i_4 
       (.I0(\lane_buf_reg[4]_5 [12]),
        .I1(\lane_buf_reg[6]_7 [12]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[3]_4 [12]),
        .I5(\lane_buf_reg[5]_6 [12]),
        .O(\head_word[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[13]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[13]),
        .O(align_flag_reg_1[13]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[13]_i_3 
       (.I0(\lane_buf_reg[0]_1 [13]),
        .I1(\lane_buf_reg[2]_3 [13]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[7]_8 [13]),
        .I5(\lane_buf_reg[1]_2 [13]),
        .O(\head_word[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[13]_i_4 
       (.I0(\lane_buf_reg[4]_5 [13]),
        .I1(\lane_buf_reg[6]_7 [13]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[3]_4 [13]),
        .I5(\lane_buf_reg[5]_6 [13]),
        .O(\head_word[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[14]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[14]),
        .O(align_flag_reg_1[14]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[14]_i_3 
       (.I0(\lane_buf_reg[0]_1 [14]),
        .I1(\lane_buf_reg[2]_3 [14]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[7]_8 [14]),
        .I5(\lane_buf_reg[1]_2 [14]),
        .O(\head_word[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[14]_i_4 
       (.I0(\lane_buf_reg[4]_5 [14]),
        .I1(\lane_buf_reg[6]_7 [14]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[3]_4 [14]),
        .I5(\lane_buf_reg[5]_6 [14]),
        .O(\head_word[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[15]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[15]),
        .O(align_flag_reg_1[15]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[15]_i_3 
       (.I0(\lane_buf_reg[0]_1 [15]),
        .I1(\lane_buf_reg[2]_3 [15]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[7]_8 [15]),
        .I5(\lane_buf_reg[1]_2 [15]),
        .O(\head_word[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[15]_i_4 
       (.I0(\lane_buf_reg[4]_5 [15]),
        .I1(\lane_buf_reg[6]_7 [15]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[3]_4 [15]),
        .I5(\lane_buf_reg[5]_6 [15]),
        .O(\head_word[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[16]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[16]),
        .O(align_flag_reg_1[16]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[16]_i_3 
       (.I0(\lane_buf_reg[0]_1 [16]),
        .I1(\lane_buf_reg[2]_3 [16]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[7]_8 [16]),
        .I5(\lane_buf_reg[1]_2 [16]),
        .O(\head_word[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[16]_i_4 
       (.I0(\lane_buf_reg[4]_5 [16]),
        .I1(\lane_buf_reg[6]_7 [16]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[3]_4 [16]),
        .I5(\lane_buf_reg[5]_6 [16]),
        .O(\head_word[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[17]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[17]),
        .O(align_flag_reg_1[17]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[17]_i_3 
       (.I0(\lane_buf_reg[0]_1 [17]),
        .I1(\lane_buf_reg[2]_3 [17]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[7]_8 [17]),
        .I5(\lane_buf_reg[1]_2 [17]),
        .O(\head_word[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[17]_i_4 
       (.I0(\lane_buf_reg[4]_5 [17]),
        .I1(\lane_buf_reg[6]_7 [17]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[3]_4 [17]),
        .I5(\lane_buf_reg[5]_6 [17]),
        .O(\head_word[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[18]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[18]),
        .O(align_flag_reg_1[18]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[18]_i_3 
       (.I0(\lane_buf_reg[0]_1 [18]),
        .I1(\lane_buf_reg[2]_3 [18]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[7]_8 [18]),
        .I5(\lane_buf_reg[1]_2 [18]),
        .O(\head_word[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[18]_i_4 
       (.I0(\lane_buf_reg[4]_5 [18]),
        .I1(\lane_buf_reg[6]_7 [18]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[3]_4 [18]),
        .I5(\lane_buf_reg[5]_6 [18]),
        .O(\head_word[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[19]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[19]),
        .O(align_flag_reg_1[19]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[19]_i_3 
       (.I0(\lane_buf_reg[0]_1 [19]),
        .I1(\lane_buf_reg[2]_3 [19]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[7]_8 [19]),
        .I5(\lane_buf_reg[1]_2 [19]),
        .O(\head_word[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[19]_i_4 
       (.I0(\lane_buf_reg[4]_5 [19]),
        .I1(\lane_buf_reg[6]_7 [19]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[3]_4 [19]),
        .I5(\lane_buf_reg[5]_6 [19]),
        .O(\head_word[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[1]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[1]),
        .O(align_flag_reg_1[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[1]_i_3 
       (.I0(\lane_buf_reg[0]_1 [1]),
        .I1(\lane_buf_reg[2]_3 [1]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[7]_8 [1]),
        .I5(\lane_buf_reg[1]_2 [1]),
        .O(\head_word[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[1]_i_4 
       (.I0(\lane_buf_reg[4]_5 [1]),
        .I1(\lane_buf_reg[6]_7 [1]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[3]_4 [1]),
        .I5(\lane_buf_reg[5]_6 [1]),
        .O(\head_word[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[20]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[20]),
        .O(align_flag_reg_1[20]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[20]_i_3 
       (.I0(\lane_buf_reg[0]_1 [20]),
        .I1(\lane_buf_reg[2]_3 [20]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[7]_8 [20]),
        .I5(\lane_buf_reg[1]_2 [20]),
        .O(\head_word[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[20]_i_4 
       (.I0(\lane_buf_reg[4]_5 [20]),
        .I1(\lane_buf_reg[6]_7 [20]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[3]_4 [20]),
        .I5(\lane_buf_reg[5]_6 [20]),
        .O(\head_word[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[21]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[21]),
        .O(align_flag_reg_1[21]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[21]_i_3 
       (.I0(\lane_buf_reg[0]_1 [21]),
        .I1(\lane_buf_reg[2]_3 [21]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[7]_8 [21]),
        .I5(\lane_buf_reg[1]_2 [21]),
        .O(\head_word[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[21]_i_4 
       (.I0(\lane_buf_reg[4]_5 [21]),
        .I1(\lane_buf_reg[6]_7 [21]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[3]_4 [21]),
        .I5(\lane_buf_reg[5]_6 [21]),
        .O(\head_word[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[22]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[22]),
        .O(align_flag_reg_1[22]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[22]_i_3 
       (.I0(\lane_buf_reg[0]_1 [22]),
        .I1(\lane_buf_reg[2]_3 [22]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[7]_8 [22]),
        .I5(\lane_buf_reg[1]_2 [22]),
        .O(\head_word[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[22]_i_4 
       (.I0(\lane_buf_reg[4]_5 [22]),
        .I1(\lane_buf_reg[6]_7 [22]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[3]_4 [22]),
        .I5(\lane_buf_reg[5]_6 [22]),
        .O(\head_word[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[23]_i_2 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[23]),
        .O(align_flag_reg_1[23]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \head_word[23]_i_4 
       (.I0(lane_byte_aligned[3]),
        .I1(lane_byte_aligned[27]),
        .I2(lane_byte_aligned[28]),
        .I3(lane_byte_aligned[29]),
        .I4(\head_clk_idx[0]_i_8_n_0 ),
        .O(\head_word[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \head_word[23]_i_5 
       (.I0(lane_byte_aligned[31]),
        .I1(lane_byte_aligned[15]),
        .I2(lane_byte_aligned[5]),
        .I3(lane_byte_aligned[4]),
        .I4(\head_clk_idx[0]_i_10_n_0 ),
        .O(\head_word[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[23]_i_7 
       (.I0(\lane_buf_reg[0]_1 [23]),
        .I1(\lane_buf_reg[2]_3 [23]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[7]_8 [23]),
        .I5(\lane_buf_reg[1]_2 [23]),
        .O(\head_word[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[23]_i_8 
       (.I0(\lane_buf_reg[4]_5 [23]),
        .I1(\lane_buf_reg[6]_7 [23]),
        .I2(\align_idx_reg[2][0]_0 ),
        .I3(\align_idx_reg[2]_10 [1]),
        .I4(\lane_buf_reg[3]_4 [23]),
        .I5(\lane_buf_reg[5]_6 [23]),
        .O(\head_word[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[2]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[2]),
        .O(align_flag_reg_1[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[2]_i_3 
       (.I0(\lane_buf_reg[0]_1 [2]),
        .I1(\lane_buf_reg[2]_3 [2]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[7]_8 [2]),
        .I5(\lane_buf_reg[1]_2 [2]),
        .O(\head_word[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[2]_i_4 
       (.I0(\lane_buf_reg[4]_5 [2]),
        .I1(\lane_buf_reg[6]_7 [2]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[3]_4 [2]),
        .I5(\lane_buf_reg[5]_6 [2]),
        .O(\head_word[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[3]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[3]),
        .O(align_flag_reg_1[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[3]_i_3 
       (.I0(\lane_buf_reg[0]_1 [3]),
        .I1(\lane_buf_reg[2]_3 [3]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[7]_8 [3]),
        .I5(\lane_buf_reg[1]_2 [3]),
        .O(\head_word[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[3]_i_4 
       (.I0(\lane_buf_reg[4]_5 [3]),
        .I1(\lane_buf_reg[6]_7 [3]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[3]_4 [3]),
        .I5(\lane_buf_reg[5]_6 [3]),
        .O(\head_word[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[4]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[4]),
        .O(align_flag_reg_1[4]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[4]_i_3 
       (.I0(\lane_buf_reg[0]_1 [4]),
        .I1(\lane_buf_reg[2]_3 [4]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[7]_8 [4]),
        .I5(\lane_buf_reg[1]_2 [4]),
        .O(\head_word[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[4]_i_4 
       (.I0(\lane_buf_reg[4]_5 [4]),
        .I1(\lane_buf_reg[6]_7 [4]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[3]_4 [4]),
        .I5(\lane_buf_reg[5]_6 [4]),
        .O(\head_word[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[5]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[5]),
        .O(align_flag_reg_1[5]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[5]_i_3 
       (.I0(\lane_buf_reg[0]_1 [5]),
        .I1(\lane_buf_reg[2]_3 [5]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[7]_8 [5]),
        .I5(\lane_buf_reg[1]_2 [5]),
        .O(\head_word[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[5]_i_4 
       (.I0(\lane_buf_reg[4]_5 [5]),
        .I1(\lane_buf_reg[6]_7 [5]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[3]_4 [5]),
        .I5(\lane_buf_reg[5]_6 [5]),
        .O(\head_word[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[6]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[6]),
        .O(align_flag_reg_1[6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[6]_i_3 
       (.I0(\lane_buf_reg[0]_1 [6]),
        .I1(\lane_buf_reg[2]_3 [6]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[7]_8 [6]),
        .I5(\lane_buf_reg[1]_2 [6]),
        .O(\head_word[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[6]_i_4 
       (.I0(\lane_buf_reg[4]_5 [6]),
        .I1(\lane_buf_reg[6]_7 [6]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[3]_4 [6]),
        .I5(\lane_buf_reg[5]_6 [6]),
        .O(\head_word[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[7]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[7]),
        .O(align_flag_reg_1[7]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[7]_i_3 
       (.I0(\lane_buf_reg[0]_1 [7]),
        .I1(\lane_buf_reg[2]_3 [7]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[7]_8 [7]),
        .I5(\lane_buf_reg[1]_2 [7]),
        .O(\head_word[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[7]_i_4 
       (.I0(\lane_buf_reg[4]_5 [7]),
        .I1(\lane_buf_reg[6]_7 [7]),
        .I2(\align_idx_reg[0][0]_0 ),
        .I3(\align_idx_reg[0]_0 [1]),
        .I4(\lane_buf_reg[3]_4 [7]),
        .I5(\lane_buf_reg[5]_6 [7]),
        .O(\head_word[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[8]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[8]),
        .O(align_flag_reg_1[8]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[8]_i_3 
       (.I0(\lane_buf_reg[0]_1 [8]),
        .I1(\lane_buf_reg[2]_3 [8]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[7]_8 [8]),
        .I5(\lane_buf_reg[1]_2 [8]),
        .O(\head_word[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[8]_i_4 
       (.I0(\lane_buf_reg[4]_5 [8]),
        .I1(\lane_buf_reg[6]_7 [8]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[3]_4 [8]),
        .I5(\lane_buf_reg[5]_6 [8]),
        .O(\head_word[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \head_word[9]_i_1 
       (.I0(align_flag_reg_0),
        .I1(\head_word_reg[0] ),
        .I2(\head_clk_idx[0]_i_2_n_0 ),
        .I3(\head_word[23]_i_4_n_0 ),
        .I4(\head_word[23]_i_5_n_0 ),
        .I5(lane_byte_aligned[9]),
        .O(align_flag_reg_1[9]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[9]_i_3 
       (.I0(\lane_buf_reg[0]_1 [9]),
        .I1(\lane_buf_reg[2]_3 [9]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[7]_8 [9]),
        .I5(\lane_buf_reg[1]_2 [9]),
        .O(\head_word[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \head_word[9]_i_4 
       (.I0(\lane_buf_reg[4]_5 [9]),
        .I1(\lane_buf_reg[6]_7 [9]),
        .I2(\align_idx_reg[1][0]_0 ),
        .I3(\align_idx_reg[1]_9 [1]),
        .I4(\lane_buf_reg[3]_4 [9]),
        .I5(\lane_buf_reg[5]_6 [9]),
        .O(\head_word[9]_i_4_n_0 ));
  MUXF7 \head_word_reg[0]_i_2 
       (.I0(\head_word[0]_i_3_n_0 ),
        .I1(\head_word[0]_i_4_n_0 ),
        .O(lane_byte_aligned[0]),
        .S(\align_idx_reg[0]_0 [2]));
  MUXF7 \head_word_reg[10]_i_2 
       (.I0(\head_word[10]_i_3_n_0 ),
        .I1(\head_word[10]_i_4_n_0 ),
        .O(lane_byte_aligned[10]),
        .S(\align_idx_reg[1]_9 [2]));
  MUXF7 \head_word_reg[11]_i_2 
       (.I0(\head_word[11]_i_3_n_0 ),
        .I1(\head_word[11]_i_4_n_0 ),
        .O(lane_byte_aligned[11]),
        .S(\align_idx_reg[1]_9 [2]));
  MUXF7 \head_word_reg[12]_i_2 
       (.I0(\head_word[12]_i_3_n_0 ),
        .I1(\head_word[12]_i_4_n_0 ),
        .O(lane_byte_aligned[12]),
        .S(\align_idx_reg[1]_9 [2]));
  MUXF7 \head_word_reg[13]_i_2 
       (.I0(\head_word[13]_i_3_n_0 ),
        .I1(\head_word[13]_i_4_n_0 ),
        .O(lane_byte_aligned[13]),
        .S(\align_idx_reg[1]_9 [2]));
  MUXF7 \head_word_reg[14]_i_2 
       (.I0(\head_word[14]_i_3_n_0 ),
        .I1(\head_word[14]_i_4_n_0 ),
        .O(lane_byte_aligned[14]),
        .S(\align_idx_reg[1]_9 [2]));
  MUXF7 \head_word_reg[15]_i_2 
       (.I0(\head_word[15]_i_3_n_0 ),
        .I1(\head_word[15]_i_4_n_0 ),
        .O(lane_byte_aligned[15]),
        .S(\align_idx_reg[1]_9 [2]));
  MUXF7 \head_word_reg[16]_i_2 
       (.I0(\head_word[16]_i_3_n_0 ),
        .I1(\head_word[16]_i_4_n_0 ),
        .O(lane_byte_aligned[16]),
        .S(\align_idx_reg[2]_10 [2]));
  MUXF7 \head_word_reg[17]_i_2 
       (.I0(\head_word[17]_i_3_n_0 ),
        .I1(\head_word[17]_i_4_n_0 ),
        .O(lane_byte_aligned[17]),
        .S(\align_idx_reg[2]_10 [2]));
  MUXF7 \head_word_reg[18]_i_2 
       (.I0(\head_word[18]_i_3_n_0 ),
        .I1(\head_word[18]_i_4_n_0 ),
        .O(lane_byte_aligned[18]),
        .S(\align_idx_reg[2]_10 [2]));
  MUXF7 \head_word_reg[19]_i_2 
       (.I0(\head_word[19]_i_3_n_0 ),
        .I1(\head_word[19]_i_4_n_0 ),
        .O(lane_byte_aligned[19]),
        .S(\align_idx_reg[2]_10 [2]));
  MUXF7 \head_word_reg[1]_i_2 
       (.I0(\head_word[1]_i_3_n_0 ),
        .I1(\head_word[1]_i_4_n_0 ),
        .O(lane_byte_aligned[1]),
        .S(\align_idx_reg[0]_0 [2]));
  MUXF7 \head_word_reg[20]_i_2 
       (.I0(\head_word[20]_i_3_n_0 ),
        .I1(\head_word[20]_i_4_n_0 ),
        .O(lane_byte_aligned[20]),
        .S(\align_idx_reg[2]_10 [2]));
  MUXF7 \head_word_reg[21]_i_2 
       (.I0(\head_word[21]_i_3_n_0 ),
        .I1(\head_word[21]_i_4_n_0 ),
        .O(lane_byte_aligned[21]),
        .S(\align_idx_reg[2]_10 [2]));
  MUXF7 \head_word_reg[22]_i_2 
       (.I0(\head_word[22]_i_3_n_0 ),
        .I1(\head_word[22]_i_4_n_0 ),
        .O(lane_byte_aligned[22]),
        .S(\align_idx_reg[2]_10 [2]));
  MUXF7 \head_word_reg[23]_i_6 
       (.I0(\head_word[23]_i_7_n_0 ),
        .I1(\head_word[23]_i_8_n_0 ),
        .O(lane_byte_aligned[23]),
        .S(\align_idx_reg[2]_10 [2]));
  MUXF7 \head_word_reg[2]_i_2 
       (.I0(\head_word[2]_i_3_n_0 ),
        .I1(\head_word[2]_i_4_n_0 ),
        .O(lane_byte_aligned[2]),
        .S(\align_idx_reg[0]_0 [2]));
  MUXF7 \head_word_reg[3]_i_2 
       (.I0(\head_word[3]_i_3_n_0 ),
        .I1(\head_word[3]_i_4_n_0 ),
        .O(lane_byte_aligned[3]),
        .S(\align_idx_reg[0]_0 [2]));
  MUXF7 \head_word_reg[4]_i_2 
       (.I0(\head_word[4]_i_3_n_0 ),
        .I1(\head_word[4]_i_4_n_0 ),
        .O(lane_byte_aligned[4]),
        .S(\align_idx_reg[0]_0 [2]));
  MUXF7 \head_word_reg[5]_i_2 
       (.I0(\head_word[5]_i_3_n_0 ),
        .I1(\head_word[5]_i_4_n_0 ),
        .O(lane_byte_aligned[5]),
        .S(\align_idx_reg[0]_0 [2]));
  MUXF7 \head_word_reg[6]_i_2 
       (.I0(\head_word[6]_i_3_n_0 ),
        .I1(\head_word[6]_i_4_n_0 ),
        .O(lane_byte_aligned[6]),
        .S(\align_idx_reg[0]_0 [2]));
  MUXF7 \head_word_reg[7]_i_2 
       (.I0(\head_word[7]_i_3_n_0 ),
        .I1(\head_word[7]_i_4_n_0 ),
        .O(lane_byte_aligned[7]),
        .S(\align_idx_reg[0]_0 [2]));
  MUXF7 \head_word_reg[8]_i_2 
       (.I0(\head_word[8]_i_3_n_0 ),
        .I1(\head_word[8]_i_4_n_0 ),
        .O(lane_byte_aligned[8]),
        .S(\align_idx_reg[1]_9 [2]));
  MUXF7 \head_word_reg[9]_i_2 
       (.I0(\head_word[9]_i_3_n_0 ),
        .I1(\head_word[9]_i_4_n_0 ),
        .O(lane_byte_aligned[9]),
        .S(\align_idx_reg[1]_9 [2]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][0]_i_1 
       (.I0(\lane_buf_reg[0]_1 [0]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][10]_i_1 
       (.I0(\lane_buf_reg[0]_1 [10]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[1][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][11]_i_1 
       (.I0(\lane_buf_reg[0]_1 [11]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[1][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][12]_i_1 
       (.I0(\lane_buf_reg[0]_1 [12]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[1][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][13]_i_1 
       (.I0(\lane_buf_reg[0]_1 [13]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[1][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][14]_i_1 
       (.I0(\lane_buf_reg[0]_1 [14]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[1][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][15]_i_1 
       (.I0(\lane_buf_reg[0]_1 [15]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[1][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][16]_i_1 
       (.I0(\lane_buf_reg[0]_1 [16]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[1][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][17]_i_1 
       (.I0(\lane_buf_reg[0]_1 [17]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[1][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][18]_i_1 
       (.I0(\lane_buf_reg[0]_1 [18]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[1][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][19]_i_1 
       (.I0(\lane_buf_reg[0]_1 [19]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[1][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][1]_i_1 
       (.I0(\lane_buf_reg[0]_1 [1]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][20]_i_1 
       (.I0(\lane_buf_reg[0]_1 [20]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[1][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][21]_i_1 
       (.I0(\lane_buf_reg[0]_1 [21]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[1][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][22]_i_1 
       (.I0(\lane_buf_reg[0]_1 [22]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[1][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][23]_i_1 
       (.I0(\lane_buf_reg[0]_1 [23]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[1][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][24]_i_1 
       (.I0(\lane_buf_reg[0]_1 [24]),
        .I1(lane_valid__2),
        .O(\lane_buf[1][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][25]_i_1 
       (.I0(\lane_buf_reg[0]_1 [25]),
        .I1(lane_valid__2),
        .O(\lane_buf[1][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][26]_i_1 
       (.I0(\lane_buf_reg[0]_1 [26]),
        .I1(lane_valid__2),
        .O(\lane_buf[1][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][27]_i_1 
       (.I0(\lane_buf_reg[0]_1 [27]),
        .I1(lane_valid__2),
        .O(\lane_buf[1][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][28]_i_1 
       (.I0(\lane_buf_reg[0]_1 [28]),
        .I1(lane_valid__2),
        .O(\lane_buf[1][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][29]_i_1 
       (.I0(\lane_buf_reg[0]_1 [29]),
        .I1(lane_valid__2),
        .O(\lane_buf[1][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][2]_i_1 
       (.I0(\lane_buf_reg[0]_1 [2]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][30]_i_1 
       (.I0(\lane_buf_reg[0]_1 [30]),
        .I1(lane_valid__2),
        .O(\lane_buf[1][30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][31]_i_1 
       (.I0(\lane_buf_reg[0]_1 [31]),
        .I1(lane_valid__2),
        .O(\lane_buf[1][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][3]_i_1 
       (.I0(\lane_buf_reg[0]_1 [3]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][4]_i_1 
       (.I0(\lane_buf_reg[0]_1 [4]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][5]_i_1 
       (.I0(\lane_buf_reg[0]_1 [5]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][6]_i_1 
       (.I0(\lane_buf_reg[0]_1 [6]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][7]_i_1 
       (.I0(\lane_buf_reg[0]_1 [7]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][8]_i_1 
       (.I0(\lane_buf_reg[0]_1 [8]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[1][9]_i_1 
       (.I0(\lane_buf_reg[0]_1 [9]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[1][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][0]_i_1 
       (.I0(\lane_buf_reg[1]_2 [0]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][10]_i_1 
       (.I0(\lane_buf_reg[1]_2 [10]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[2][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][11]_i_1 
       (.I0(\lane_buf_reg[1]_2 [11]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[2][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][12]_i_1 
       (.I0(\lane_buf_reg[1]_2 [12]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[2][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][13]_i_1 
       (.I0(\lane_buf_reg[1]_2 [13]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[2][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][14]_i_1 
       (.I0(\lane_buf_reg[1]_2 [14]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[2][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][15]_i_1 
       (.I0(\lane_buf_reg[1]_2 [15]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[2][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][16]_i_1 
       (.I0(\lane_buf_reg[1]_2 [16]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[2][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][17]_i_1 
       (.I0(\lane_buf_reg[1]_2 [17]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[2][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][18]_i_1 
       (.I0(\lane_buf_reg[1]_2 [18]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[2][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][19]_i_1 
       (.I0(\lane_buf_reg[1]_2 [19]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[2][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][1]_i_1 
       (.I0(\lane_buf_reg[1]_2 [1]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[2][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][20]_i_1 
       (.I0(\lane_buf_reg[1]_2 [20]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[2][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][21]_i_1 
       (.I0(\lane_buf_reg[1]_2 [21]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[2][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][22]_i_1 
       (.I0(\lane_buf_reg[1]_2 [22]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[2][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][23]_i_1 
       (.I0(\lane_buf_reg[1]_2 [23]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[2][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][24]_i_1 
       (.I0(\lane_buf_reg[1]_2 [24]),
        .I1(lane_valid__2),
        .O(\lane_buf[2][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][25]_i_1 
       (.I0(\lane_buf_reg[1]_2 [25]),
        .I1(lane_valid__2),
        .O(\lane_buf[2][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][26]_i_1 
       (.I0(\lane_buf_reg[1]_2 [26]),
        .I1(lane_valid__2),
        .O(\lane_buf[2][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][27]_i_1 
       (.I0(\lane_buf_reg[1]_2 [27]),
        .I1(lane_valid__2),
        .O(\lane_buf[2][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][28]_i_1 
       (.I0(\lane_buf_reg[1]_2 [28]),
        .I1(lane_valid__2),
        .O(\lane_buf[2][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][29]_i_1 
       (.I0(\lane_buf_reg[1]_2 [29]),
        .I1(lane_valid__2),
        .O(\lane_buf[2][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][2]_i_1 
       (.I0(\lane_buf_reg[1]_2 [2]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][30]_i_1 
       (.I0(\lane_buf_reg[1]_2 [30]),
        .I1(lane_valid__2),
        .O(\lane_buf[2][30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][31]_i_1 
       (.I0(\lane_buf_reg[1]_2 [31]),
        .I1(lane_valid__2),
        .O(\lane_buf[2][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][3]_i_1 
       (.I0(\lane_buf_reg[1]_2 [3]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][4]_i_1 
       (.I0(\lane_buf_reg[1]_2 [4]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[2][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][5]_i_1 
       (.I0(\lane_buf_reg[1]_2 [5]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[2][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][6]_i_1 
       (.I0(\lane_buf_reg[1]_2 [6]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[2][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][7]_i_1 
       (.I0(\lane_buf_reg[1]_2 [7]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][8]_i_1 
       (.I0(\lane_buf_reg[1]_2 [8]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[2][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[2][9]_i_1 
       (.I0(\lane_buf_reg[1]_2 [9]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[2][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][0]_i_1 
       (.I0(\lane_buf_reg[2]_3 [0]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][10]_i_1 
       (.I0(\lane_buf_reg[2]_3 [10]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[3][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][11]_i_1 
       (.I0(\lane_buf_reg[2]_3 [11]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[3][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][12]_i_1 
       (.I0(\lane_buf_reg[2]_3 [12]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[3][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][13]_i_1 
       (.I0(\lane_buf_reg[2]_3 [13]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[3][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][14]_i_1 
       (.I0(\lane_buf_reg[2]_3 [14]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[3][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][15]_i_1 
       (.I0(\lane_buf_reg[2]_3 [15]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[3][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][16]_i_1 
       (.I0(\lane_buf_reg[2]_3 [16]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[3][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][17]_i_1 
       (.I0(\lane_buf_reg[2]_3 [17]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[3][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][18]_i_1 
       (.I0(\lane_buf_reg[2]_3 [18]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[3][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][19]_i_1 
       (.I0(\lane_buf_reg[2]_3 [19]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[3][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][1]_i_1 
       (.I0(\lane_buf_reg[2]_3 [1]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][20]_i_1 
       (.I0(\lane_buf_reg[2]_3 [20]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[3][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][21]_i_1 
       (.I0(\lane_buf_reg[2]_3 [21]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[3][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][22]_i_1 
       (.I0(\lane_buf_reg[2]_3 [22]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[3][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][23]_i_1 
       (.I0(\lane_buf_reg[2]_3 [23]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[3][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][24]_i_1 
       (.I0(\lane_buf_reg[2]_3 [24]),
        .I1(lane_valid__2),
        .O(\lane_buf[3][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][25]_i_1 
       (.I0(\lane_buf_reg[2]_3 [25]),
        .I1(lane_valid__2),
        .O(\lane_buf[3][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][26]_i_1 
       (.I0(\lane_buf_reg[2]_3 [26]),
        .I1(lane_valid__2),
        .O(\lane_buf[3][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][27]_i_1 
       (.I0(\lane_buf_reg[2]_3 [27]),
        .I1(lane_valid__2),
        .O(\lane_buf[3][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][28]_i_1 
       (.I0(\lane_buf_reg[2]_3 [28]),
        .I1(lane_valid__2),
        .O(\lane_buf[3][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][29]_i_1 
       (.I0(\lane_buf_reg[2]_3 [29]),
        .I1(lane_valid__2),
        .O(\lane_buf[3][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][2]_i_1 
       (.I0(\lane_buf_reg[2]_3 [2]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][30]_i_1 
       (.I0(\lane_buf_reg[2]_3 [30]),
        .I1(lane_valid__2),
        .O(\lane_buf[3][30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][31]_i_1 
       (.I0(\lane_buf_reg[2]_3 [31]),
        .I1(lane_valid__2),
        .O(\lane_buf[3][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][3]_i_1 
       (.I0(\lane_buf_reg[2]_3 [3]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][4]_i_1 
       (.I0(\lane_buf_reg[2]_3 [4]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[3][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][5]_i_1 
       (.I0(\lane_buf_reg[2]_3 [5]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[3][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][6]_i_1 
       (.I0(\lane_buf_reg[2]_3 [6]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[3][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][7]_i_1 
       (.I0(\lane_buf_reg[2]_3 [7]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[3][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][8]_i_1 
       (.I0(\lane_buf_reg[2]_3 [8]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[3][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[3][9]_i_1 
       (.I0(\lane_buf_reg[2]_3 [9]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[3][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][0]_i_1 
       (.I0(\lane_buf_reg[3]_4 [0]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[4][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][10]_i_1 
       (.I0(\lane_buf_reg[3]_4 [10]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[4][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][11]_i_1 
       (.I0(\lane_buf_reg[3]_4 [11]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[4][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][12]_i_1 
       (.I0(\lane_buf_reg[3]_4 [12]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[4][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][13]_i_1 
       (.I0(\lane_buf_reg[3]_4 [13]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[4][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][14]_i_1 
       (.I0(\lane_buf_reg[3]_4 [14]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[4][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][15]_i_1 
       (.I0(\lane_buf_reg[3]_4 [15]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[4][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][16]_i_1 
       (.I0(\lane_buf_reg[3]_4 [16]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[4][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][17]_i_1 
       (.I0(\lane_buf_reg[3]_4 [17]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[4][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][18]_i_1 
       (.I0(\lane_buf_reg[3]_4 [18]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[4][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][19]_i_1 
       (.I0(\lane_buf_reg[3]_4 [19]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[4][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][1]_i_1 
       (.I0(\lane_buf_reg[3]_4 [1]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[4][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][20]_i_1 
       (.I0(\lane_buf_reg[3]_4 [20]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[4][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][21]_i_1 
       (.I0(\lane_buf_reg[3]_4 [21]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[4][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][22]_i_1 
       (.I0(\lane_buf_reg[3]_4 [22]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[4][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][23]_i_1 
       (.I0(\lane_buf_reg[3]_4 [23]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[4][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][24]_i_1 
       (.I0(\lane_buf_reg[3]_4 [24]),
        .I1(lane_valid__2),
        .O(\lane_buf[4][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][25]_i_1 
       (.I0(\lane_buf_reg[3]_4 [25]),
        .I1(lane_valid__2),
        .O(\lane_buf[4][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][26]_i_1 
       (.I0(\lane_buf_reg[3]_4 [26]),
        .I1(lane_valid__2),
        .O(\lane_buf[4][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][27]_i_1 
       (.I0(\lane_buf_reg[3]_4 [27]),
        .I1(lane_valid__2),
        .O(\lane_buf[4][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][28]_i_1 
       (.I0(\lane_buf_reg[3]_4 [28]),
        .I1(lane_valid__2),
        .O(\lane_buf[4][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][29]_i_1 
       (.I0(\lane_buf_reg[3]_4 [29]),
        .I1(lane_valid__2),
        .O(\lane_buf[4][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][2]_i_1 
       (.I0(\lane_buf_reg[3]_4 [2]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[4][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][30]_i_1 
       (.I0(\lane_buf_reg[3]_4 [30]),
        .I1(lane_valid__2),
        .O(\lane_buf[4][30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][31]_i_1 
       (.I0(\lane_buf_reg[3]_4 [31]),
        .I1(lane_valid__2),
        .O(\lane_buf[4][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][3]_i_1 
       (.I0(\lane_buf_reg[3]_4 [3]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[4][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][4]_i_1 
       (.I0(\lane_buf_reg[3]_4 [4]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[4][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][5]_i_1 
       (.I0(\lane_buf_reg[3]_4 [5]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[4][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][6]_i_1 
       (.I0(\lane_buf_reg[3]_4 [6]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[4][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][7]_i_1 
       (.I0(\lane_buf_reg[3]_4 [7]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[4][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][8]_i_1 
       (.I0(\lane_buf_reg[3]_4 [8]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[4][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[4][9]_i_1 
       (.I0(\lane_buf_reg[3]_4 [9]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[4][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][0]_i_1 
       (.I0(\lane_buf_reg[4]_5 [0]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[5][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][10]_i_1 
       (.I0(\lane_buf_reg[4]_5 [10]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[5][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][11]_i_1 
       (.I0(\lane_buf_reg[4]_5 [11]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[5][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][12]_i_1 
       (.I0(\lane_buf_reg[4]_5 [12]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[5][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][13]_i_1 
       (.I0(\lane_buf_reg[4]_5 [13]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[5][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][14]_i_1 
       (.I0(\lane_buf_reg[4]_5 [14]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[5][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][15]_i_1 
       (.I0(\lane_buf_reg[4]_5 [15]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[5][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][16]_i_1 
       (.I0(\lane_buf_reg[4]_5 [16]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[5][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][17]_i_1 
       (.I0(\lane_buf_reg[4]_5 [17]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[5][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][18]_i_1 
       (.I0(\lane_buf_reg[4]_5 [18]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[5][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][19]_i_1 
       (.I0(\lane_buf_reg[4]_5 [19]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[5][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][1]_i_1 
       (.I0(\lane_buf_reg[4]_5 [1]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[5][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][20]_i_1 
       (.I0(\lane_buf_reg[4]_5 [20]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[5][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][21]_i_1 
       (.I0(\lane_buf_reg[4]_5 [21]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[5][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][22]_i_1 
       (.I0(\lane_buf_reg[4]_5 [22]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[5][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][23]_i_1 
       (.I0(\lane_buf_reg[4]_5 [23]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[5][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][24]_i_1 
       (.I0(\lane_buf_reg[4]_5 [24]),
        .I1(lane_valid__2),
        .O(\lane_buf[5][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][25]_i_1 
       (.I0(\lane_buf_reg[4]_5 [25]),
        .I1(lane_valid__2),
        .O(\lane_buf[5][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][26]_i_1 
       (.I0(\lane_buf_reg[4]_5 [26]),
        .I1(lane_valid__2),
        .O(\lane_buf[5][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][27]_i_1 
       (.I0(\lane_buf_reg[4]_5 [27]),
        .I1(lane_valid__2),
        .O(\lane_buf[5][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][28]_i_1 
       (.I0(\lane_buf_reg[4]_5 [28]),
        .I1(lane_valid__2),
        .O(\lane_buf[5][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][29]_i_1 
       (.I0(\lane_buf_reg[4]_5 [29]),
        .I1(lane_valid__2),
        .O(\lane_buf[5][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][2]_i_1 
       (.I0(\lane_buf_reg[4]_5 [2]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[5][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][30]_i_1 
       (.I0(\lane_buf_reg[4]_5 [30]),
        .I1(lane_valid__2),
        .O(\lane_buf[5][30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][31]_i_1 
       (.I0(\lane_buf_reg[4]_5 [31]),
        .I1(lane_valid__2),
        .O(\lane_buf[5][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][3]_i_1 
       (.I0(\lane_buf_reg[4]_5 [3]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[5][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][4]_i_1 
       (.I0(\lane_buf_reg[4]_5 [4]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[5][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][5]_i_1 
       (.I0(\lane_buf_reg[4]_5 [5]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[5][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][6]_i_1 
       (.I0(\lane_buf_reg[4]_5 [6]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[5][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][7]_i_1 
       (.I0(\lane_buf_reg[4]_5 [7]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[5][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][8]_i_1 
       (.I0(\lane_buf_reg[4]_5 [8]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[5][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[5][9]_i_1 
       (.I0(\lane_buf_reg[4]_5 [9]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[5][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][0]_i_1 
       (.I0(\lane_buf_reg[5]_6 [0]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[6][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][10]_i_1 
       (.I0(\lane_buf_reg[5]_6 [10]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[6][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][11]_i_1 
       (.I0(\lane_buf_reg[5]_6 [11]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[6][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][12]_i_1 
       (.I0(\lane_buf_reg[5]_6 [12]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[6][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][13]_i_1 
       (.I0(\lane_buf_reg[5]_6 [13]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[6][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][14]_i_1 
       (.I0(\lane_buf_reg[5]_6 [14]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[6][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][15]_i_1 
       (.I0(\lane_buf_reg[5]_6 [15]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[6][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][16]_i_1 
       (.I0(\lane_buf_reg[5]_6 [16]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[6][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][17]_i_1 
       (.I0(\lane_buf_reg[5]_6 [17]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[6][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][18]_i_1 
       (.I0(\lane_buf_reg[5]_6 [18]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[6][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][19]_i_1 
       (.I0(\lane_buf_reg[5]_6 [19]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[6][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][1]_i_1 
       (.I0(\lane_buf_reg[5]_6 [1]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[6][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][20]_i_1 
       (.I0(\lane_buf_reg[5]_6 [20]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[6][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][21]_i_1 
       (.I0(\lane_buf_reg[5]_6 [21]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[6][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][22]_i_1 
       (.I0(\lane_buf_reg[5]_6 [22]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[6][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][23]_i_1 
       (.I0(\lane_buf_reg[5]_6 [23]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[6][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][24]_i_1 
       (.I0(\lane_buf_reg[5]_6 [24]),
        .I1(lane_valid__2),
        .O(\lane_buf[6][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][25]_i_1 
       (.I0(\lane_buf_reg[5]_6 [25]),
        .I1(lane_valid__2),
        .O(\lane_buf[6][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][26]_i_1 
       (.I0(\lane_buf_reg[5]_6 [26]),
        .I1(lane_valid__2),
        .O(\lane_buf[6][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][27]_i_1 
       (.I0(\lane_buf_reg[5]_6 [27]),
        .I1(lane_valid__2),
        .O(\lane_buf[6][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][28]_i_1 
       (.I0(\lane_buf_reg[5]_6 [28]),
        .I1(lane_valid__2),
        .O(\lane_buf[6][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][29]_i_1 
       (.I0(\lane_buf_reg[5]_6 [29]),
        .I1(lane_valid__2),
        .O(\lane_buf[6][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][2]_i_1 
       (.I0(\lane_buf_reg[5]_6 [2]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][30]_i_1 
       (.I0(\lane_buf_reg[5]_6 [30]),
        .I1(lane_valid__2),
        .O(\lane_buf[6][30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][31]_i_1 
       (.I0(\lane_buf_reg[5]_6 [31]),
        .I1(lane_valid__2),
        .O(\lane_buf[6][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][3]_i_1 
       (.I0(\lane_buf_reg[5]_6 [3]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][4]_i_1 
       (.I0(\lane_buf_reg[5]_6 [4]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[6][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][5]_i_1 
       (.I0(\lane_buf_reg[5]_6 [5]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[6][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][6]_i_1 
       (.I0(\lane_buf_reg[5]_6 [6]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[6][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][7]_i_1 
       (.I0(\lane_buf_reg[5]_6 [7]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[6][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][8]_i_1 
       (.I0(\lane_buf_reg[5]_6 [8]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[6][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[6][9]_i_1 
       (.I0(\lane_buf_reg[5]_6 [9]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[6][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][0]_i_1 
       (.I0(\lane_buf_reg[6]_7 [0]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[7][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][10]_i_1 
       (.I0(\lane_buf_reg[6]_7 [10]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[7][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][11]_i_1 
       (.I0(\lane_buf_reg[6]_7 [11]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[7][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][12]_i_1 
       (.I0(\lane_buf_reg[6]_7 [12]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[7][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][13]_i_1 
       (.I0(\lane_buf_reg[6]_7 [13]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[7][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][14]_i_1 
       (.I0(\lane_buf_reg[6]_7 [14]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[7][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][15]_i_1 
       (.I0(\lane_buf_reg[6]_7 [15]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[7][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][16]_i_1 
       (.I0(\lane_buf_reg[6]_7 [16]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[7][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][17]_i_1 
       (.I0(\lane_buf_reg[6]_7 [17]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[7][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][18]_i_1 
       (.I0(\lane_buf_reg[6]_7 [18]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[7][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][19]_i_1 
       (.I0(\lane_buf_reg[6]_7 [19]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[7][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][1]_i_1 
       (.I0(\lane_buf_reg[6]_7 [1]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[7][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][20]_i_1 
       (.I0(\lane_buf_reg[6]_7 [20]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[7][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][21]_i_1 
       (.I0(\lane_buf_reg[6]_7 [21]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[7][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][22]_i_1 
       (.I0(\lane_buf_reg[6]_7 [22]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[7][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][23]_i_1 
       (.I0(\lane_buf_reg[6]_7 [23]),
        .I1(\lane_buf_reg[7][16]_0 ),
        .O(\lane_buf[7][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][24]_i_1 
       (.I0(\lane_buf_reg[6]_7 [24]),
        .I1(lane_valid__2),
        .O(\lane_buf[7][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][25]_i_1 
       (.I0(\lane_buf_reg[6]_7 [25]),
        .I1(lane_valid__2),
        .O(\lane_buf[7][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][26]_i_1 
       (.I0(\lane_buf_reg[6]_7 [26]),
        .I1(lane_valid__2),
        .O(\lane_buf[7][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][27]_i_1 
       (.I0(\lane_buf_reg[6]_7 [27]),
        .I1(lane_valid__2),
        .O(\lane_buf[7][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][28]_i_1 
       (.I0(\lane_buf_reg[6]_7 [28]),
        .I1(lane_valid__2),
        .O(\lane_buf[7][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][29]_i_1 
       (.I0(\lane_buf_reg[6]_7 [29]),
        .I1(lane_valid__2),
        .O(\lane_buf[7][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][2]_i_1 
       (.I0(\lane_buf_reg[6]_7 [2]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[7][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][30]_i_1 
       (.I0(\lane_buf_reg[6]_7 [30]),
        .I1(lane_valid__2),
        .O(\lane_buf[7][30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][31]_i_1 
       (.I0(\lane_buf_reg[6]_7 [31]),
        .I1(lane_valid__2),
        .O(\lane_buf[7][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][3]_i_1 
       (.I0(\lane_buf_reg[6]_7 [3]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[7][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][4]_i_1 
       (.I0(\lane_buf_reg[6]_7 [4]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[7][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][5]_i_1 
       (.I0(\lane_buf_reg[6]_7 [5]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[7][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][6]_i_1 
       (.I0(\lane_buf_reg[6]_7 [6]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[7][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][7]_i_1 
       (.I0(\lane_buf_reg[6]_7 [7]),
        .I1(\lane_buf_reg[7][0]_0 ),
        .O(\lane_buf[7][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][8]_i_1 
       (.I0(\lane_buf_reg[6]_7 [8]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[7][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[7][9]_i_1 
       (.I0(\lane_buf_reg[6]_7 [9]),
        .I1(\lane_buf_reg[7][8]_0 ),
        .O(\lane_buf[7][9]_i_1_n_0 ));
  FDCE \lane_buf_reg[0][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [0]),
        .Q(\lane_buf_reg[0]_1 [0]));
  FDCE \lane_buf_reg[0][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [10]),
        .Q(\lane_buf_reg[0]_1 [10]));
  FDCE \lane_buf_reg[0][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [11]),
        .Q(\lane_buf_reg[0]_1 [11]));
  FDCE \lane_buf_reg[0][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [12]),
        .Q(\lane_buf_reg[0]_1 [12]));
  FDCE \lane_buf_reg[0][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [13]),
        .Q(\lane_buf_reg[0]_1 [13]));
  FDCE \lane_buf_reg[0][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [14]),
        .Q(\lane_buf_reg[0]_1 [14]));
  FDCE \lane_buf_reg[0][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [15]),
        .Q(\lane_buf_reg[0]_1 [15]));
  FDCE \lane_buf_reg[0][16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [16]),
        .Q(\lane_buf_reg[0]_1 [16]));
  FDCE \lane_buf_reg[0][17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [17]),
        .Q(\lane_buf_reg[0]_1 [17]));
  FDCE \lane_buf_reg[0][18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [18]),
        .Q(\lane_buf_reg[0]_1 [18]));
  FDCE \lane_buf_reg[0][19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [19]),
        .Q(\lane_buf_reg[0]_1 [19]));
  FDCE \lane_buf_reg[0][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [1]),
        .Q(\lane_buf_reg[0]_1 [1]));
  FDCE \lane_buf_reg[0][20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [20]),
        .Q(\lane_buf_reg[0]_1 [20]));
  FDCE \lane_buf_reg[0][21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [21]),
        .Q(\lane_buf_reg[0]_1 [21]));
  FDCE \lane_buf_reg[0][22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [22]),
        .Q(\lane_buf_reg[0]_1 [22]));
  FDCE \lane_buf_reg[0][23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [23]),
        .Q(\lane_buf_reg[0]_1 [23]));
  FDCE \lane_buf_reg[0][24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [24]),
        .Q(\lane_buf_reg[0]_1 [24]));
  FDCE \lane_buf_reg[0][25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [25]),
        .Q(\lane_buf_reg[0]_1 [25]));
  FDCE \lane_buf_reg[0][26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [26]),
        .Q(\lane_buf_reg[0]_1 [26]));
  FDCE \lane_buf_reg[0][27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [27]),
        .Q(\lane_buf_reg[0]_1 [27]));
  FDCE \lane_buf_reg[0][28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [28]),
        .Q(\lane_buf_reg[0]_1 [28]));
  FDCE \lane_buf_reg[0][29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [29]),
        .Q(\lane_buf_reg[0]_1 [29]));
  FDCE \lane_buf_reg[0][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [2]),
        .Q(\lane_buf_reg[0]_1 [2]));
  FDCE \lane_buf_reg[0][30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [30]),
        .Q(\lane_buf_reg[0]_1 [30]));
  FDCE \lane_buf_reg[0][31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [31]),
        .Q(\lane_buf_reg[0]_1 [31]));
  FDCE \lane_buf_reg[0][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [3]),
        .Q(\lane_buf_reg[0]_1 [3]));
  FDCE \lane_buf_reg[0][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [4]),
        .Q(\lane_buf_reg[0]_1 [4]));
  FDCE \lane_buf_reg[0][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [5]),
        .Q(\lane_buf_reg[0]_1 [5]));
  FDCE \lane_buf_reg[0][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [6]),
        .Q(\lane_buf_reg[0]_1 [6]));
  FDCE \lane_buf_reg[0][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [7]),
        .Q(\lane_buf_reg[0]_1 [7]));
  FDCE \lane_buf_reg[0][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [8]),
        .Q(\lane_buf_reg[0]_1 [8]));
  FDCE \lane_buf_reg[0][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][31]_0 [9]),
        .Q(\lane_buf_reg[0]_1 [9]));
  FDCE \lane_buf_reg[1][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][0]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [0]));
  FDCE \lane_buf_reg[1][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][10]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [10]));
  FDCE \lane_buf_reg[1][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][11]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [11]));
  FDCE \lane_buf_reg[1][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][12]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [12]));
  FDCE \lane_buf_reg[1][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][13]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [13]));
  FDCE \lane_buf_reg[1][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][14]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [14]));
  FDCE \lane_buf_reg[1][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][15]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [15]));
  FDCE \lane_buf_reg[1][16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][16]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [16]));
  FDCE \lane_buf_reg[1][17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][17]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [17]));
  FDCE \lane_buf_reg[1][18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][18]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [18]));
  FDCE \lane_buf_reg[1][19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][19]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [19]));
  FDCE \lane_buf_reg[1][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][1]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [1]));
  FDCE \lane_buf_reg[1][20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][20]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [20]));
  FDCE \lane_buf_reg[1][21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][21]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [21]));
  FDCE \lane_buf_reg[1][22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][22]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [22]));
  FDCE \lane_buf_reg[1][23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][23]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [23]));
  FDCE \lane_buf_reg[1][24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][24]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [24]));
  FDCE \lane_buf_reg[1][25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][25]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [25]));
  FDCE \lane_buf_reg[1][26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][26]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [26]));
  FDCE \lane_buf_reg[1][27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][27]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [27]));
  FDCE \lane_buf_reg[1][28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][28]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [28]));
  FDCE \lane_buf_reg[1][29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][29]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [29]));
  FDCE \lane_buf_reg[1][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][2]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [2]));
  FDCE \lane_buf_reg[1][30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][30]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [30]));
  FDCE \lane_buf_reg[1][31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][31]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [31]));
  FDCE \lane_buf_reg[1][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][3]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [3]));
  FDCE \lane_buf_reg[1][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][4]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [4]));
  FDCE \lane_buf_reg[1][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][5]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [5]));
  FDCE \lane_buf_reg[1][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][6]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [6]));
  FDCE \lane_buf_reg[1][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][7]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [7]));
  FDCE \lane_buf_reg[1][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][8]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [8]));
  FDCE \lane_buf_reg[1][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[1][9]_i_1_n_0 ),
        .Q(\lane_buf_reg[1]_2 [9]));
  FDCE \lane_buf_reg[2][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][0]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [0]));
  FDCE \lane_buf_reg[2][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][10]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [10]));
  FDCE \lane_buf_reg[2][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][11]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [11]));
  FDCE \lane_buf_reg[2][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][12]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [12]));
  FDCE \lane_buf_reg[2][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][13]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [13]));
  FDCE \lane_buf_reg[2][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][14]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [14]));
  FDCE \lane_buf_reg[2][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][15]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [15]));
  FDCE \lane_buf_reg[2][16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][16]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [16]));
  FDCE \lane_buf_reg[2][17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][17]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [17]));
  FDCE \lane_buf_reg[2][18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][18]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [18]));
  FDCE \lane_buf_reg[2][19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][19]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [19]));
  FDCE \lane_buf_reg[2][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][1]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [1]));
  FDCE \lane_buf_reg[2][20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][20]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [20]));
  FDCE \lane_buf_reg[2][21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][21]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [21]));
  FDCE \lane_buf_reg[2][22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][22]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [22]));
  FDCE \lane_buf_reg[2][23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][23]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [23]));
  FDCE \lane_buf_reg[2][24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][24]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [24]));
  FDCE \lane_buf_reg[2][25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][25]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [25]));
  FDCE \lane_buf_reg[2][26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][26]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [26]));
  FDCE \lane_buf_reg[2][27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][27]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [27]));
  FDCE \lane_buf_reg[2][28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][28]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [28]));
  FDCE \lane_buf_reg[2][29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][29]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [29]));
  FDCE \lane_buf_reg[2][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][2]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [2]));
  FDCE \lane_buf_reg[2][30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][30]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [30]));
  FDCE \lane_buf_reg[2][31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][31]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [31]));
  FDCE \lane_buf_reg[2][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][3]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [3]));
  FDCE \lane_buf_reg[2][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][4]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [4]));
  FDCE \lane_buf_reg[2][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][5]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [5]));
  FDCE \lane_buf_reg[2][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][6]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [6]));
  FDCE \lane_buf_reg[2][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][7]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [7]));
  FDCE \lane_buf_reg[2][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][8]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [8]));
  FDCE \lane_buf_reg[2][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[2][9]_i_1_n_0 ),
        .Q(\lane_buf_reg[2]_3 [9]));
  FDCE \lane_buf_reg[3][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][0]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [0]));
  FDCE \lane_buf_reg[3][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][10]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [10]));
  FDCE \lane_buf_reg[3][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][11]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [11]));
  FDCE \lane_buf_reg[3][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][12]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [12]));
  FDCE \lane_buf_reg[3][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][13]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [13]));
  FDCE \lane_buf_reg[3][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][14]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [14]));
  FDCE \lane_buf_reg[3][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][15]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [15]));
  FDCE \lane_buf_reg[3][16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][16]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [16]));
  FDCE \lane_buf_reg[3][17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][17]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [17]));
  FDCE \lane_buf_reg[3][18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][18]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [18]));
  FDCE \lane_buf_reg[3][19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][19]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [19]));
  FDCE \lane_buf_reg[3][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][1]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [1]));
  FDCE \lane_buf_reg[3][20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][20]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [20]));
  FDCE \lane_buf_reg[3][21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][21]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [21]));
  FDCE \lane_buf_reg[3][22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][22]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [22]));
  FDCE \lane_buf_reg[3][23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][23]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [23]));
  FDCE \lane_buf_reg[3][24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][24]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [24]));
  FDCE \lane_buf_reg[3][25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][25]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [25]));
  FDCE \lane_buf_reg[3][26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][26]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [26]));
  FDCE \lane_buf_reg[3][27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][27]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [27]));
  FDCE \lane_buf_reg[3][28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][28]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [28]));
  FDCE \lane_buf_reg[3][29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][29]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [29]));
  FDCE \lane_buf_reg[3][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][2]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [2]));
  FDCE \lane_buf_reg[3][30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][30]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [30]));
  FDCE \lane_buf_reg[3][31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][31]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [31]));
  FDCE \lane_buf_reg[3][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][3]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [3]));
  FDCE \lane_buf_reg[3][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][4]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [4]));
  FDCE \lane_buf_reg[3][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][5]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [5]));
  FDCE \lane_buf_reg[3][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][6]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [6]));
  FDCE \lane_buf_reg[3][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][7]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [7]));
  FDCE \lane_buf_reg[3][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][8]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [8]));
  FDCE \lane_buf_reg[3][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[3][9]_i_1_n_0 ),
        .Q(\lane_buf_reg[3]_4 [9]));
  FDCE \lane_buf_reg[4][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][0]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [0]));
  FDCE \lane_buf_reg[4][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][10]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [10]));
  FDCE \lane_buf_reg[4][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][11]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [11]));
  FDCE \lane_buf_reg[4][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][12]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [12]));
  FDCE \lane_buf_reg[4][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][13]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [13]));
  FDCE \lane_buf_reg[4][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][14]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [14]));
  FDCE \lane_buf_reg[4][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][15]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [15]));
  FDCE \lane_buf_reg[4][16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][16]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [16]));
  FDCE \lane_buf_reg[4][17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][17]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [17]));
  FDCE \lane_buf_reg[4][18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][18]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [18]));
  FDCE \lane_buf_reg[4][19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][19]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [19]));
  FDCE \lane_buf_reg[4][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][1]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [1]));
  FDCE \lane_buf_reg[4][20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][20]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [20]));
  FDCE \lane_buf_reg[4][21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][21]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [21]));
  FDCE \lane_buf_reg[4][22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][22]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [22]));
  FDCE \lane_buf_reg[4][23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][23]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [23]));
  FDCE \lane_buf_reg[4][24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][24]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [24]));
  FDCE \lane_buf_reg[4][25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][25]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [25]));
  FDCE \lane_buf_reg[4][26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][26]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [26]));
  FDCE \lane_buf_reg[4][27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][27]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [27]));
  FDCE \lane_buf_reg[4][28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][28]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [28]));
  FDCE \lane_buf_reg[4][29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][29]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [29]));
  FDCE \lane_buf_reg[4][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][2]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [2]));
  FDCE \lane_buf_reg[4][30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][30]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [30]));
  FDCE \lane_buf_reg[4][31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][31]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [31]));
  FDCE \lane_buf_reg[4][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][3]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [3]));
  FDCE \lane_buf_reg[4][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][4]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [4]));
  FDCE \lane_buf_reg[4][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][5]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [5]));
  FDCE \lane_buf_reg[4][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][6]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [6]));
  FDCE \lane_buf_reg[4][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][7]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [7]));
  FDCE \lane_buf_reg[4][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][8]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [8]));
  FDCE \lane_buf_reg[4][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[4][9]_i_1_n_0 ),
        .Q(\lane_buf_reg[4]_5 [9]));
  FDCE \lane_buf_reg[5][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][0]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [0]));
  FDCE \lane_buf_reg[5][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][10]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [10]));
  FDCE \lane_buf_reg[5][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][11]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [11]));
  FDCE \lane_buf_reg[5][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][12]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [12]));
  FDCE \lane_buf_reg[5][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][13]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [13]));
  FDCE \lane_buf_reg[5][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][14]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [14]));
  FDCE \lane_buf_reg[5][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][15]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [15]));
  FDCE \lane_buf_reg[5][16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][16]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [16]));
  FDCE \lane_buf_reg[5][17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][17]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [17]));
  FDCE \lane_buf_reg[5][18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][18]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [18]));
  FDCE \lane_buf_reg[5][19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][19]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [19]));
  FDCE \lane_buf_reg[5][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][1]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [1]));
  FDCE \lane_buf_reg[5][20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][20]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [20]));
  FDCE \lane_buf_reg[5][21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][21]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [21]));
  FDCE \lane_buf_reg[5][22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][22]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [22]));
  FDCE \lane_buf_reg[5][23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][23]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [23]));
  FDCE \lane_buf_reg[5][24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][24]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [24]));
  FDCE \lane_buf_reg[5][25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][25]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [25]));
  FDCE \lane_buf_reg[5][26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][26]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [26]));
  FDCE \lane_buf_reg[5][27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][27]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [27]));
  FDCE \lane_buf_reg[5][28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][28]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [28]));
  FDCE \lane_buf_reg[5][29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][29]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [29]));
  FDCE \lane_buf_reg[5][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][2]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [2]));
  FDCE \lane_buf_reg[5][30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][30]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [30]));
  FDCE \lane_buf_reg[5][31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][31]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [31]));
  FDCE \lane_buf_reg[5][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][3]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [3]));
  FDCE \lane_buf_reg[5][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][4]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [4]));
  FDCE \lane_buf_reg[5][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][5]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [5]));
  FDCE \lane_buf_reg[5][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][6]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [6]));
  FDCE \lane_buf_reg[5][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][7]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [7]));
  FDCE \lane_buf_reg[5][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][8]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [8]));
  FDCE \lane_buf_reg[5][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[5][9]_i_1_n_0 ),
        .Q(\lane_buf_reg[5]_6 [9]));
  FDCE \lane_buf_reg[6][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][0]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [0]));
  FDCE \lane_buf_reg[6][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][10]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [10]));
  FDCE \lane_buf_reg[6][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][11]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [11]));
  FDCE \lane_buf_reg[6][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][12]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [12]));
  FDCE \lane_buf_reg[6][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][13]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [13]));
  FDCE \lane_buf_reg[6][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][14]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [14]));
  FDCE \lane_buf_reg[6][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][15]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [15]));
  FDCE \lane_buf_reg[6][16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][16]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [16]));
  FDCE \lane_buf_reg[6][17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][17]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [17]));
  FDCE \lane_buf_reg[6][18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][18]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [18]));
  FDCE \lane_buf_reg[6][19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][19]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [19]));
  FDCE \lane_buf_reg[6][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][1]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [1]));
  FDCE \lane_buf_reg[6][20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][20]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [20]));
  FDCE \lane_buf_reg[6][21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][21]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [21]));
  FDCE \lane_buf_reg[6][22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][22]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [22]));
  FDCE \lane_buf_reg[6][23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][23]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [23]));
  FDCE \lane_buf_reg[6][24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][24]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [24]));
  FDCE \lane_buf_reg[6][25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][25]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [25]));
  FDCE \lane_buf_reg[6][26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][26]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [26]));
  FDCE \lane_buf_reg[6][27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][27]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [27]));
  FDCE \lane_buf_reg[6][28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][28]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [28]));
  FDCE \lane_buf_reg[6][29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][29]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [29]));
  FDCE \lane_buf_reg[6][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][2]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [2]));
  FDCE \lane_buf_reg[6][30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][30]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [30]));
  FDCE \lane_buf_reg[6][31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][31]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [31]));
  FDCE \lane_buf_reg[6][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][3]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [3]));
  FDCE \lane_buf_reg[6][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][4]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [4]));
  FDCE \lane_buf_reg[6][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][5]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [5]));
  FDCE \lane_buf_reg[6][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][6]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [6]));
  FDCE \lane_buf_reg[6][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][7]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [7]));
  FDCE \lane_buf_reg[6][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][8]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [8]));
  FDCE \lane_buf_reg[6][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[6][9]_i_1_n_0 ),
        .Q(\lane_buf_reg[6]_7 [9]));
  FDCE \lane_buf_reg[7][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][0]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [0]));
  FDCE \lane_buf_reg[7][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][10]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [10]));
  FDCE \lane_buf_reg[7][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][11]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [11]));
  FDCE \lane_buf_reg[7][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][12]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [12]));
  FDCE \lane_buf_reg[7][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][13]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [13]));
  FDCE \lane_buf_reg[7][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][14]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [14]));
  FDCE \lane_buf_reg[7][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][15]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [15]));
  FDCE \lane_buf_reg[7][16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][16]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [16]));
  FDCE \lane_buf_reg[7][17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][17]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [17]));
  FDCE \lane_buf_reg[7][18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][18]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [18]));
  FDCE \lane_buf_reg[7][19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][19]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [19]));
  FDCE \lane_buf_reg[7][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][1]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [1]));
  FDCE \lane_buf_reg[7][20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][20]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [20]));
  FDCE \lane_buf_reg[7][21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][21]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [21]));
  FDCE \lane_buf_reg[7][22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][22]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [22]));
  FDCE \lane_buf_reg[7][23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][23]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [23]));
  FDCE \lane_buf_reg[7][24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][24]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [24]));
  FDCE \lane_buf_reg[7][25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][25]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [25]));
  FDCE \lane_buf_reg[7][26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][26]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [26]));
  FDCE \lane_buf_reg[7][27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][27]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [27]));
  FDCE \lane_buf_reg[7][28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][28]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [28]));
  FDCE \lane_buf_reg[7][29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][29]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [29]));
  FDCE \lane_buf_reg[7][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][2]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [2]));
  FDCE \lane_buf_reg[7][30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][30]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [30]));
  FDCE \lane_buf_reg[7][31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][31]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [31]));
  FDCE \lane_buf_reg[7][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][3]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [3]));
  FDCE \lane_buf_reg[7][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][4]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [4]));
  FDCE \lane_buf_reg[7][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][5]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [5]));
  FDCE \lane_buf_reg[7][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][6]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [6]));
  FDCE \lane_buf_reg[7][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][7]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [7]));
  FDCE \lane_buf_reg[7][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][8]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [8]));
  FDCE \lane_buf_reg[7][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf[7][9]_i_1_n_0 ),
        .Q(\lane_buf_reg[7]_8 [9]));
  LUT2 #(
    .INIT(4'hB)) 
    reg_ce_i_2
       (.I0(module_reset),
        .I1(s00_axi_aresetn),
        .O(module_reset_reg));
endmodule

(* ORIG_REF_NAME = "_csi2_packet_decoder" *) 
module design_1_mipi_rx_to_video_0_0__csi2_packet_decoder
   (pkt_valid,
    reg_pix_valid_reg,
    \data_id_2_reg[4]_0 ,
    D,
    reg_pix_valid_reg_0,
    data_flag_2_reg_0,
    Q,
    data_flag_2_reg_1,
    E,
    \data_byte_2_reg[6]_0 ,
    \data_byte_2_reg[31]_0 ,
    \data_byte_2_reg[4]_0 ,
    \head_clk_idx_reg[2]_0 ,
    \head_clk_idx_reg[1]_0 ,
    \head_clk_idx_reg[2]_1 ,
    \head_clk_idx_reg[2]_2 ,
    data_flag_2_reg_2,
    \data_byte_2_reg[31]_1 ,
    \data_byte_2_reg[7]_0 ,
    \data_byte_2_reg[5]_0 ,
    \data_byte_2_reg[5]_1 ,
    \data_byte_2_reg[3]_0 ,
    \data_byte_2_reg[2]_0 ,
    \data_byte_2_reg[1]_0 ,
    \data_byte_2_reg[0]_0 ,
    data_flag0,
    clk_hs_byte,
    \data_byte_reg[0]_0 ,
    raw10_pix_valid,
    raw10_pix_data_enable,
    \di_reg_reg[3] ,
    last_size_reg,
    \head_clk_idx_reg[1]_1 ,
    lane_byte_aligned,
    \head_clk_idx_reg[0]_0 ,
    pixel_enable3_out,
    O,
    \pixel_data_reg[21] ,
    \pixel_data_reg[11] ,
    \pixel_data_reg[31] ,
    \head_word_reg[23]_0 );
  output pkt_valid;
  output reg_pix_valid_reg;
  output \data_id_2_reg[4]_0 ;
  output [1:0]D;
  output reg_pix_valid_reg_0;
  output [2:0]data_flag_2_reg_0;
  output [5:0]Q;
  output data_flag_2_reg_1;
  output [0:0]E;
  output \data_byte_2_reg[6]_0 ;
  output [31:0]\data_byte_2_reg[31]_0 ;
  output \data_byte_2_reg[4]_0 ;
  output [2:0]\head_clk_idx_reg[2]_0 ;
  output \head_clk_idx_reg[1]_0 ;
  output \head_clk_idx_reg[2]_1 ;
  output \head_clk_idx_reg[2]_2 ;
  output [5:0]data_flag_2_reg_2;
  output [31:0]\data_byte_2_reg[31]_1 ;
  output \data_byte_2_reg[7]_0 ;
  output \data_byte_2_reg[5]_0 ;
  output \data_byte_2_reg[5]_1 ;
  output \data_byte_2_reg[3]_0 ;
  output \data_byte_2_reg[2]_0 ;
  output \data_byte_2_reg[1]_0 ;
  output \data_byte_2_reg[0]_0 ;
  input data_flag0;
  input clk_hs_byte;
  input \data_byte_reg[0]_0 ;
  input raw10_pix_valid;
  input raw10_pix_data_enable;
  input [0:0]\di_reg_reg[3] ;
  input [2:0]last_size_reg;
  input \head_clk_idx_reg[1]_1 ;
  input [31:0]lane_byte_aligned;
  input [0:0]\head_clk_idx_reg[0]_0 ;
  input pixel_enable3_out;
  input [2:0]O;
  input [2:0]\pixel_data_reg[21] ;
  input [2:0]\pixel_data_reg[11] ;
  input [23:0]\pixel_data_reg[31] ;
  input [23:0]\head_word_reg[23]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]O;
  wire [5:0]Q;
  wire clk_hs_byte;
  wire data0;
  wire [31:0]data_byte;
  wire \data_byte[0]_i_1_n_0 ;
  wire \data_byte[10]_i_1_n_0 ;
  wire \data_byte[11]_i_1_n_0 ;
  wire \data_byte[12]_i_1_n_0 ;
  wire \data_byte[13]_i_1_n_0 ;
  wire \data_byte[14]_i_1_n_0 ;
  wire \data_byte[15]_i_1_n_0 ;
  wire \data_byte[16]_i_1_n_0 ;
  wire \data_byte[17]_i_1_n_0 ;
  wire \data_byte[18]_i_1_n_0 ;
  wire \data_byte[19]_i_1_n_0 ;
  wire \data_byte[1]_i_1_n_0 ;
  wire \data_byte[20]_i_1_n_0 ;
  wire \data_byte[21]_i_1_n_0 ;
  wire \data_byte[22]_i_1_n_0 ;
  wire \data_byte[23]_i_1_n_0 ;
  wire \data_byte[24]_i_1_n_0 ;
  wire \data_byte[25]_i_1_n_0 ;
  wire \data_byte[26]_i_1_n_0 ;
  wire \data_byte[27]_i_1_n_0 ;
  wire \data_byte[28]_i_1_n_0 ;
  wire \data_byte[29]_i_1_n_0 ;
  wire \data_byte[2]_i_1_n_0 ;
  wire \data_byte[30]_i_1_n_0 ;
  wire \data_byte[31]_i_1_n_0 ;
  wire \data_byte[3]_i_1_n_0 ;
  wire \data_byte[4]_i_1_n_0 ;
  wire \data_byte[5]_i_1_n_0 ;
  wire \data_byte[6]_i_1_n_0 ;
  wire \data_byte[7]_i_1_n_0 ;
  wire \data_byte[8]_i_1_n_0 ;
  wire \data_byte[9]_i_1_n_0 ;
  wire \data_byte_2[0]_i_1_n_0 ;
  wire \data_byte_2[10]_i_1_n_0 ;
  wire \data_byte_2[11]_i_1_n_0 ;
  wire \data_byte_2[12]_i_1_n_0 ;
  wire \data_byte_2[13]_i_1_n_0 ;
  wire \data_byte_2[14]_i_1_n_0 ;
  wire \data_byte_2[15]_i_1_n_0 ;
  wire \data_byte_2[16]_i_1_n_0 ;
  wire \data_byte_2[17]_i_1_n_0 ;
  wire \data_byte_2[18]_i_1_n_0 ;
  wire \data_byte_2[19]_i_1_n_0 ;
  wire \data_byte_2[1]_i_1_n_0 ;
  wire \data_byte_2[20]_i_1_n_0 ;
  wire \data_byte_2[21]_i_1_n_0 ;
  wire \data_byte_2[22]_i_1_n_0 ;
  wire \data_byte_2[23]_i_1_n_0 ;
  wire \data_byte_2[24]_i_1_n_0 ;
  wire \data_byte_2[25]_i_1_n_0 ;
  wire \data_byte_2[26]_i_1_n_0 ;
  wire \data_byte_2[27]_i_1_n_0 ;
  wire \data_byte_2[28]_i_1_n_0 ;
  wire \data_byte_2[29]_i_1_n_0 ;
  wire \data_byte_2[2]_i_1_n_0 ;
  wire \data_byte_2[30]_i_1_n_0 ;
  wire \data_byte_2[31]_i_1_n_0 ;
  wire \data_byte_2[31]_i_2_n_0 ;
  wire \data_byte_2[3]_i_1_n_0 ;
  wire \data_byte_2[4]_i_1_n_0 ;
  wire \data_byte_2[5]_i_1_n_0 ;
  wire \data_byte_2[6]_i_1_n_0 ;
  wire \data_byte_2[7]_i_1_n_0 ;
  wire \data_byte_2[8]_i_1_n_0 ;
  wire \data_byte_2[9]_i_1_n_0 ;
  wire \data_byte_2_reg[0]_0 ;
  wire \data_byte_2_reg[1]_0 ;
  wire \data_byte_2_reg[2]_0 ;
  wire [31:0]\data_byte_2_reg[31]_0 ;
  wire [31:0]\data_byte_2_reg[31]_1 ;
  wire \data_byte_2_reg[3]_0 ;
  wire \data_byte_2_reg[4]_0 ;
  wire \data_byte_2_reg[5]_0 ;
  wire \data_byte_2_reg[5]_1 ;
  wire \data_byte_2_reg[6]_0 ;
  wire \data_byte_2_reg[7]_0 ;
  wire \data_byte_reg[0]_0 ;
  wire \data_count_2[0]_i_1_n_0 ;
  wire \data_count_2[10]_i_1_n_0 ;
  wire \data_count_2[11]_i_1_n_0 ;
  wire \data_count_2[12]_i_1_n_0 ;
  wire \data_count_2[13]_i_1_n_0 ;
  wire \data_count_2[14]_i_1_n_0 ;
  wire \data_count_2[15]_i_1_n_0 ;
  wire \data_count_2[15]_i_2_n_0 ;
  wire \data_count_2[15]_i_3_n_0 ;
  wire \data_count_2[15]_i_4_n_0 ;
  wire \data_count_2[15]_i_5_n_0 ;
  wire \data_count_2[1]_i_1_n_0 ;
  wire \data_count_2[2]_i_1_n_0 ;
  wire \data_count_2[3]_i_1_n_0 ;
  wire \data_count_2[4]_i_1_n_0 ;
  wire \data_count_2[5]_i_1_n_0 ;
  wire \data_count_2[6]_i_1_n_0 ;
  wire \data_count_2[7]_i_1_n_0 ;
  wire \data_count_2[8]_i_1_n_0 ;
  wire \data_count_2[9]_i_1_n_0 ;
  wire \data_count_2_reg_n_0_[0] ;
  wire \data_count_2_reg_n_0_[10] ;
  wire \data_count_2_reg_n_0_[11] ;
  wire \data_count_2_reg_n_0_[12] ;
  wire \data_count_2_reg_n_0_[13] ;
  wire \data_count_2_reg_n_0_[14] ;
  wire \data_count_2_reg_n_0_[15] ;
  wire \data_count_2_reg_n_0_[1] ;
  wire \data_count_2_reg_n_0_[2] ;
  wire \data_count_2_reg_n_0_[3] ;
  wire \data_count_2_reg_n_0_[4] ;
  wire \data_count_2_reg_n_0_[5] ;
  wire \data_count_2_reg_n_0_[6] ;
  wire \data_count_2_reg_n_0_[7] ;
  wire \data_count_2_reg_n_0_[8] ;
  wire \data_count_2_reg_n_0_[9] ;
  wire data_flag0;
  wire data_flag_20;
  wire data_flag_20_carry_i_10_n_0;
  wire data_flag_20_carry_i_11_n_0;
  wire data_flag_20_carry_i_12_n_0;
  wire data_flag_20_carry_i_13_n_0;
  wire data_flag_20_carry_i_14_n_0;
  wire data_flag_20_carry_i_15_n_0;
  wire data_flag_20_carry_i_16_n_0;
  wire data_flag_20_carry_i_1_n_0;
  wire data_flag_20_carry_i_2_n_0;
  wire data_flag_20_carry_i_3_n_0;
  wire data_flag_20_carry_i_4_n_0;
  wire data_flag_20_carry_i_5_n_0;
  wire data_flag_20_carry_i_6_n_0;
  wire data_flag_20_carry_i_7_n_0;
  wire data_flag_20_carry_i_8_n_0;
  wire data_flag_20_carry_i_9_n_0;
  wire data_flag_20_carry_n_1;
  wire data_flag_20_carry_n_2;
  wire data_flag_20_carry_n_3;
  wire data_flag_20_carry_n_4;
  wire data_flag_20_carry_n_5;
  wire data_flag_20_carry_n_6;
  wire data_flag_20_carry_n_7;
  wire [2:0]data_flag_2_reg_0;
  wire data_flag_2_reg_1;
  wire [5:0]data_flag_2_reg_2;
  wire data_flag_reg_n_0;
  wire \data_id_2[0]_i_1_n_0 ;
  wire \data_id_2[1]_i_1_n_0 ;
  wire \data_id_2[2]_i_1_n_0 ;
  wire \data_id_2[3]_i_1_n_0 ;
  wire \data_id_2[4]_i_1_n_0 ;
  wire \data_id_2[5]_i_1_n_0 ;
  wire \data_id_2[6]_i_1_n_0 ;
  wire \data_id_2[7]_i_1_n_0 ;
  wire \data_id_2[7]_i_2_n_0 ;
  wire \data_id_2[7]_i_3_n_0 ;
  wire \data_id_2[7]_i_4_n_0 ;
  wire \data_id_2[7]_i_5_n_0 ;
  wire \data_id_2[7]_i_6_n_0 ;
  wire \data_id_2_reg[4]_0 ;
  wire \data_id_2_reg_n_0_[2] ;
  wire \data_id_2_reg_n_0_[4] ;
  wire \data_index_2[11]_i_2_n_0 ;
  wire \data_index_2[12]_i_2_n_0 ;
  wire \data_index_2[15]_i_1_n_0 ;
  wire \data_index_2[15]_i_2_n_0 ;
  wire \data_index_2[15]_i_3_n_0 ;
  wire \data_index_2[3]_i_1_n_0 ;
  wire \data_index_2[7]_i_2_n_0 ;
  wire \data_index_2_reg_n_0_[10] ;
  wire \data_index_2_reg_n_0_[11] ;
  wire \data_index_2_reg_n_0_[12] ;
  wire \data_index_2_reg_n_0_[13] ;
  wire \data_index_2_reg_n_0_[14] ;
  wire \data_index_2_reg_n_0_[15] ;
  wire \data_index_2_reg_n_0_[2] ;
  wire \data_index_2_reg_n_0_[3] ;
  wire \data_index_2_reg_n_0_[4] ;
  wire \data_index_2_reg_n_0_[5] ;
  wire \data_index_2_reg_n_0_[6] ;
  wire \data_index_2_reg_n_0_[7] ;
  wire \data_index_2_reg_n_0_[8] ;
  wire \data_index_2_reg_n_0_[9] ;
  wire [0:0]\di_reg_reg[3] ;
  wire [0:0]\head_clk_idx_reg[0]_0 ;
  wire \head_clk_idx_reg[1]_0 ;
  wire \head_clk_idx_reg[1]_1 ;
  wire [2:0]\head_clk_idx_reg[2]_0 ;
  wire \head_clk_idx_reg[2]_1 ;
  wire \head_clk_idx_reg[2]_2 ;
  wire head_word0;
  wire [23:0]\head_word_reg[23]_0 ;
  wire \head_word_reg_n_0_[0] ;
  wire \head_word_reg_n_0_[10] ;
  wire \head_word_reg_n_0_[11] ;
  wire \head_word_reg_n_0_[12] ;
  wire \head_word_reg_n_0_[13] ;
  wire \head_word_reg_n_0_[14] ;
  wire \head_word_reg_n_0_[15] ;
  wire \head_word_reg_n_0_[16] ;
  wire \head_word_reg_n_0_[17] ;
  wire \head_word_reg_n_0_[18] ;
  wire \head_word_reg_n_0_[19] ;
  wire \head_word_reg_n_0_[1] ;
  wire \head_word_reg_n_0_[20] ;
  wire \head_word_reg_n_0_[21] ;
  wire \head_word_reg_n_0_[22] ;
  wire \head_word_reg_n_0_[23] ;
  wire \head_word_reg_n_0_[2] ;
  wire \head_word_reg_n_0_[6] ;
  wire \head_word_reg_n_0_[7] ;
  wire \head_word_reg_n_0_[8] ;
  wire \head_word_reg_n_0_[9] ;
  wire [31:0]lane_byte_aligned;
  wire [2:0]last_size_reg;
  wire [2:0]p_0_in;
  wire [2:1]p_1_in;
  wire [14:2]p_2_in;
  wire \pixel_data[10]_i_2_n_0 ;
  wire \pixel_data[10]_i_3_n_0 ;
  wire \pixel_data[11]_i_2_n_0 ;
  wire \pixel_data[11]_i_4_n_0 ;
  wire \pixel_data[20]_i_2_n_0 ;
  wire \pixel_data[20]_i_3_n_0 ;
  wire \pixel_data[21]_i_2_n_0 ;
  wire \pixel_data[21]_i_4_n_0 ;
  wire \pixel_data[30]_i_2_n_0 ;
  wire \pixel_data[30]_i_3_n_0 ;
  wire \pixel_data[31]_i_2_n_0 ;
  wire \pixel_data[31]_i_4_n_0 ;
  wire [2:0]\pixel_data_reg[11] ;
  wire [2:0]\pixel_data_reg[21] ;
  wire [23:0]\pixel_data_reg[31] ;
  wire pixel_enable3_out;
  wire pkt_valid;
  wire raw10_pix_data_enable;
  wire raw10_pix_valid;
  wire reg_pix_data_enable_i_2_n_0;
  wire reg_pix_data_enable_i_3_n_0;
  wire reg_pix_data_enable_i_4_n_0;
  wire reg_pix_data_enable_i_5_n_0;
  wire reg_pix_valid_reg;
  wire reg_pix_valid_reg_0;
  wire [7:0]NLW_data_flag_20_carry_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[0]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[0]),
        .O(\data_byte[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[10]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[10]),
        .O(\data_byte[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[11]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[11]),
        .O(\data_byte[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[12]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[12]),
        .O(\data_byte[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[13]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[13]),
        .O(\data_byte[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[14]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[14]),
        .O(\data_byte[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[15]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[15]),
        .O(\data_byte[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[16]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[16]),
        .O(\data_byte[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[17]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[17]),
        .O(\data_byte[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[18]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[18]),
        .O(\data_byte[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[19]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[19]),
        .O(\data_byte[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[1]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[1]),
        .O(\data_byte[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[20]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[20]),
        .O(\data_byte[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[21]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[21]),
        .O(\data_byte[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[22]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[22]),
        .O(\data_byte[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[23]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[23]),
        .O(\data_byte[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[24]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[24]),
        .O(\data_byte[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[25]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[25]),
        .O(\data_byte[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[26]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[26]),
        .O(\data_byte[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[27]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[27]),
        .O(\data_byte[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[28]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[28]),
        .O(\data_byte[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[29]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[29]),
        .O(\data_byte[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[2]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[2]),
        .O(\data_byte[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[30]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[30]),
        .O(\data_byte[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[31]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[31]),
        .O(\data_byte[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[3]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[3]),
        .O(\data_byte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[4]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[4]),
        .O(\data_byte[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[5]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[5]),
        .O(\data_byte[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[6]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[6]),
        .O(\data_byte[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[7]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[7]),
        .O(\data_byte[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[8]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[8]),
        .O(\data_byte[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_byte[9]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[1]_1 ),
        .I4(lane_byte_aligned[9]),
        .O(\data_byte[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[0]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[0]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[10]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[10]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[11]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[11]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[12]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[12]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[13]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[13]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[14]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[14]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[15]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[15]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[16]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[16]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[17]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[17]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[18]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[18]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[19]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[19]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[1]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[1]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[20]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[20]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[21]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[21]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[22]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[22]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[23]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[23]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[24]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[24]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[25]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[25]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[26]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[26]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[27]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[27]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[28]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[28]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[29]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[29]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[2]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[2]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[30]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[30]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[31]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[31]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8202)) 
    \data_byte_2[31]_i_2 
       (.I0(\data_count_2[15]_i_3_n_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .O(\data_byte_2[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[3]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[3]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[4]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[4]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[5]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[5]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[6]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[6]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[7]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[7]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[8]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[8]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A800)) 
    \data_byte_2[9]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .I3(data_byte[9]),
        .I4(\data_byte_2[31]_i_2_n_0 ),
        .O(\data_byte_2[9]_i_1_n_0 ));
  FDCE \data_byte_2_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[0]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [0]));
  FDCE \data_byte_2_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[10]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [10]));
  FDCE \data_byte_2_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[11]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [11]));
  FDCE \data_byte_2_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[12]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [12]));
  FDCE \data_byte_2_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[13]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [13]));
  FDCE \data_byte_2_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[14]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [14]));
  FDCE \data_byte_2_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[15]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [15]));
  FDCE \data_byte_2_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[16]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [16]));
  FDCE \data_byte_2_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[17]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [17]));
  FDCE \data_byte_2_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[18]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [18]));
  FDCE \data_byte_2_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[19]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [19]));
  FDCE \data_byte_2_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[1]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [1]));
  FDCE \data_byte_2_reg[20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[20]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [20]));
  FDCE \data_byte_2_reg[21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[21]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [21]));
  FDCE \data_byte_2_reg[22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[22]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [22]));
  FDCE \data_byte_2_reg[23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[23]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [23]));
  FDCE \data_byte_2_reg[24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[24]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [24]));
  FDCE \data_byte_2_reg[25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[25]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [25]));
  FDCE \data_byte_2_reg[26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[26]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [26]));
  FDCE \data_byte_2_reg[27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[27]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [27]));
  FDCE \data_byte_2_reg[28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[28]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [28]));
  FDCE \data_byte_2_reg[29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[29]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [29]));
  FDCE \data_byte_2_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[2]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [2]));
  FDCE \data_byte_2_reg[30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[30]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [30]));
  FDCE \data_byte_2_reg[31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[31]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [31]));
  FDCE \data_byte_2_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[3]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [3]));
  FDCE \data_byte_2_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[4]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [4]));
  FDCE \data_byte_2_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[5]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [5]));
  FDCE \data_byte_2_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[6]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [6]));
  FDCE \data_byte_2_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[7]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [7]));
  FDCE \data_byte_2_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[8]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [8]));
  FDCE \data_byte_2_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte_2[9]_i_1_n_0 ),
        .Q(\data_byte_2_reg[31]_0 [9]));
  FDCE \data_byte_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[0]_i_1_n_0 ),
        .Q(data_byte[0]));
  FDCE \data_byte_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[10]_i_1_n_0 ),
        .Q(data_byte[10]));
  FDCE \data_byte_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[11]_i_1_n_0 ),
        .Q(data_byte[11]));
  FDCE \data_byte_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[12]_i_1_n_0 ),
        .Q(data_byte[12]));
  FDCE \data_byte_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[13]_i_1_n_0 ),
        .Q(data_byte[13]));
  FDCE \data_byte_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[14]_i_1_n_0 ),
        .Q(data_byte[14]));
  FDCE \data_byte_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[15]_i_1_n_0 ),
        .Q(data_byte[15]));
  FDCE \data_byte_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[16]_i_1_n_0 ),
        .Q(data_byte[16]));
  FDCE \data_byte_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[17]_i_1_n_0 ),
        .Q(data_byte[17]));
  FDCE \data_byte_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[18]_i_1_n_0 ),
        .Q(data_byte[18]));
  FDCE \data_byte_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[19]_i_1_n_0 ),
        .Q(data_byte[19]));
  FDCE \data_byte_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[1]_i_1_n_0 ),
        .Q(data_byte[1]));
  FDCE \data_byte_reg[20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[20]_i_1_n_0 ),
        .Q(data_byte[20]));
  FDCE \data_byte_reg[21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[21]_i_1_n_0 ),
        .Q(data_byte[21]));
  FDCE \data_byte_reg[22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[22]_i_1_n_0 ),
        .Q(data_byte[22]));
  FDCE \data_byte_reg[23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[23]_i_1_n_0 ),
        .Q(data_byte[23]));
  FDCE \data_byte_reg[24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[24]_i_1_n_0 ),
        .Q(data_byte[24]));
  FDCE \data_byte_reg[25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[25]_i_1_n_0 ),
        .Q(data_byte[25]));
  FDCE \data_byte_reg[26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[26]_i_1_n_0 ),
        .Q(data_byte[26]));
  FDCE \data_byte_reg[27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[27]_i_1_n_0 ),
        .Q(data_byte[27]));
  FDCE \data_byte_reg[28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[28]_i_1_n_0 ),
        .Q(data_byte[28]));
  FDCE \data_byte_reg[29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[29]_i_1_n_0 ),
        .Q(data_byte[29]));
  FDCE \data_byte_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[2]_i_1_n_0 ),
        .Q(data_byte[2]));
  FDCE \data_byte_reg[30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[30]_i_1_n_0 ),
        .Q(data_byte[30]));
  FDCE \data_byte_reg[31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[31]_i_1_n_0 ),
        .Q(data_byte[31]));
  FDCE \data_byte_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[3]_i_1_n_0 ),
        .Q(data_byte[3]));
  FDCE \data_byte_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[4]_i_1_n_0 ),
        .Q(data_byte[4]));
  FDCE \data_byte_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[5]_i_1_n_0 ),
        .Q(data_byte[5]));
  FDCE \data_byte_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[6]_i_1_n_0 ),
        .Q(data_byte[6]));
  FDCE \data_byte_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[7]_i_1_n_0 ),
        .Q(data_byte[7]));
  FDCE \data_byte_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[8]_i_1_n_0 ),
        .Q(data_byte[8]));
  FDCE \data_byte_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_byte[9]_i_1_n_0 ),
        .Q(data_byte[9]));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[0]_i_1 
       (.I0(\head_word_reg_n_0_[8] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[10]_i_1 
       (.I0(\head_word_reg_n_0_[18] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[11]_i_1 
       (.I0(\head_word_reg_n_0_[19] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[12]_i_1 
       (.I0(\head_word_reg_n_0_[20] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[13]_i_1 
       (.I0(\head_word_reg_n_0_[21] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[14]_i_1 
       (.I0(\head_word_reg_n_0_[22] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data_count_2[15]_i_1 
       (.I0(\data_count_2[15]_i_3_n_0 ),
        .I1(data_flag_reg_n_0),
        .O(\data_count_2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[15]_i_2 
       (.I0(\head_word_reg_n_0_[23] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_count_2[15]_i_3 
       (.I0(\data_count_2[15]_i_4_n_0 ),
        .I1(\data_index_2_reg_n_0_[11] ),
        .I2(\data_index_2_reg_n_0_[14] ),
        .I3(\data_index_2_reg_n_0_[4] ),
        .I4(\data_index_2_reg_n_0_[13] ),
        .I5(\data_count_2[15]_i_5_n_0 ),
        .O(\data_count_2[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_count_2[15]_i_4 
       (.I0(\data_index_2_reg_n_0_[7] ),
        .I1(\data_index_2_reg_n_0_[10] ),
        .I2(\data_index_2_reg_n_0_[5] ),
        .I3(\data_index_2_reg_n_0_[8] ),
        .O(\data_count_2[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_count_2[15]_i_5 
       (.I0(\data_index_2_reg_n_0_[2] ),
        .I1(\data_index_2_reg_n_0_[3] ),
        .I2(\data_index_2_reg_n_0_[6] ),
        .I3(\data_index_2_reg_n_0_[15] ),
        .I4(\data_index_2_reg_n_0_[12] ),
        .I5(\data_index_2_reg_n_0_[9] ),
        .O(\data_count_2[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[1]_i_1 
       (.I0(\head_word_reg_n_0_[9] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[2]_i_1 
       (.I0(\head_word_reg_n_0_[10] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[3]_i_1 
       (.I0(\head_word_reg_n_0_[11] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[4]_i_1 
       (.I0(\head_word_reg_n_0_[12] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[5]_i_1 
       (.I0(\head_word_reg_n_0_[13] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[6]_i_1 
       (.I0(\head_word_reg_n_0_[14] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[7]_i_1 
       (.I0(\head_word_reg_n_0_[15] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[8]_i_1 
       (.I0(\head_word_reg_n_0_[16] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[9]_i_1 
       (.I0(\head_word_reg_n_0_[17] ),
        .I1(data_flag_reg_n_0),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[9]_i_1_n_0 ));
  FDCE \data_count_2_reg[0] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[0]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[0] ));
  FDCE \data_count_2_reg[10] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[10]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[10] ));
  FDCE \data_count_2_reg[11] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[11]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[11] ));
  FDCE \data_count_2_reg[12] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[12]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[12] ));
  FDCE \data_count_2_reg[13] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[13]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[13] ));
  FDCE \data_count_2_reg[14] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[14]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[14] ));
  FDCE \data_count_2_reg[15] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[15]_i_2_n_0 ),
        .Q(\data_count_2_reg_n_0_[15] ));
  FDCE \data_count_2_reg[1] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[1]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[1] ));
  FDCE \data_count_2_reg[2] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[2]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[2] ));
  FDCE \data_count_2_reg[3] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[3]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[3] ));
  FDCE \data_count_2_reg[4] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[4]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[4] ));
  FDCE \data_count_2_reg[5] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[5]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[5] ));
  FDCE \data_count_2_reg[6] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[6]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[6] ));
  FDCE \data_count_2_reg[7] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[7]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[7] ));
  FDCE \data_count_2_reg[8] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[8]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[8] ));
  FDCE \data_count_2_reg[9] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_count_2[9]_i_1_n_0 ),
        .Q(\data_count_2_reg_n_0_[9] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_flag_20_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({data0,data_flag_20_carry_n_1,data_flag_20_carry_n_2,data_flag_20_carry_n_3,data_flag_20_carry_n_4,data_flag_20_carry_n_5,data_flag_20_carry_n_6,data_flag_20_carry_n_7}),
        .DI({data_flag_20_carry_i_1_n_0,data_flag_20_carry_i_2_n_0,data_flag_20_carry_i_3_n_0,data_flag_20_carry_i_4_n_0,data_flag_20_carry_i_5_n_0,data_flag_20_carry_i_6_n_0,data_flag_20_carry_i_7_n_0,data_flag_20_carry_i_8_n_0}),
        .O(NLW_data_flag_20_carry_O_UNCONNECTED[7:0]),
        .S({data_flag_20_carry_i_9_n_0,data_flag_20_carry_i_10_n_0,data_flag_20_carry_i_11_n_0,data_flag_20_carry_i_12_n_0,data_flag_20_carry_i_13_n_0,data_flag_20_carry_i_14_n_0,data_flag_20_carry_i_15_n_0,data_flag_20_carry_i_16_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_1
       (.I0(\data_index_2_reg_n_0_[15] ),
        .I1(\data_count_2_reg_n_0_[15] ),
        .I2(\data_count_2_reg_n_0_[14] ),
        .I3(\data_index_2_reg_n_0_[14] ),
        .O(data_flag_20_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_10
       (.I0(\data_count_2_reg_n_0_[13] ),
        .I1(\data_index_2_reg_n_0_[13] ),
        .I2(\data_count_2_reg_n_0_[12] ),
        .I3(\data_index_2_reg_n_0_[12] ),
        .O(data_flag_20_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_11
       (.I0(\data_count_2_reg_n_0_[11] ),
        .I1(\data_index_2_reg_n_0_[11] ),
        .I2(\data_count_2_reg_n_0_[10] ),
        .I3(\data_index_2_reg_n_0_[10] ),
        .O(data_flag_20_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_12
       (.I0(\data_count_2_reg_n_0_[9] ),
        .I1(\data_index_2_reg_n_0_[9] ),
        .I2(\data_count_2_reg_n_0_[8] ),
        .I3(\data_index_2_reg_n_0_[8] ),
        .O(data_flag_20_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_13
       (.I0(\data_count_2_reg_n_0_[7] ),
        .I1(\data_index_2_reg_n_0_[7] ),
        .I2(\data_count_2_reg_n_0_[6] ),
        .I3(\data_index_2_reg_n_0_[6] ),
        .O(data_flag_20_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_14
       (.I0(\data_count_2_reg_n_0_[5] ),
        .I1(\data_index_2_reg_n_0_[5] ),
        .I2(\data_count_2_reg_n_0_[4] ),
        .I3(\data_index_2_reg_n_0_[4] ),
        .O(data_flag_20_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_15
       (.I0(\data_count_2_reg_n_0_[3] ),
        .I1(\data_index_2_reg_n_0_[3] ),
        .I2(\data_count_2_reg_n_0_[2] ),
        .I3(\data_index_2_reg_n_0_[2] ),
        .O(data_flag_20_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_flag_20_carry_i_16
       (.I0(\data_count_2_reg_n_0_[1] ),
        .I1(\data_count_2_reg_n_0_[0] ),
        .O(data_flag_20_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_2
       (.I0(\data_index_2_reg_n_0_[13] ),
        .I1(\data_count_2_reg_n_0_[13] ),
        .I2(\data_count_2_reg_n_0_[12] ),
        .I3(\data_index_2_reg_n_0_[12] ),
        .O(data_flag_20_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_3
       (.I0(\data_index_2_reg_n_0_[11] ),
        .I1(\data_count_2_reg_n_0_[11] ),
        .I2(\data_count_2_reg_n_0_[10] ),
        .I3(\data_index_2_reg_n_0_[10] ),
        .O(data_flag_20_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_4
       (.I0(\data_index_2_reg_n_0_[9] ),
        .I1(\data_count_2_reg_n_0_[9] ),
        .I2(\data_count_2_reg_n_0_[8] ),
        .I3(\data_index_2_reg_n_0_[8] ),
        .O(data_flag_20_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_5
       (.I0(\data_index_2_reg_n_0_[7] ),
        .I1(\data_count_2_reg_n_0_[7] ),
        .I2(\data_count_2_reg_n_0_[6] ),
        .I3(\data_index_2_reg_n_0_[6] ),
        .O(data_flag_20_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_6
       (.I0(\data_index_2_reg_n_0_[5] ),
        .I1(\data_count_2_reg_n_0_[5] ),
        .I2(\data_count_2_reg_n_0_[4] ),
        .I3(\data_index_2_reg_n_0_[4] ),
        .O(data_flag_20_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_7
       (.I0(\data_index_2_reg_n_0_[3] ),
        .I1(\data_count_2_reg_n_0_[3] ),
        .I2(\data_count_2_reg_n_0_[2] ),
        .I3(\data_index_2_reg_n_0_[2] ),
        .O(data_flag_20_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_flag_20_carry_i_8
       (.I0(\data_count_2_reg_n_0_[0] ),
        .I1(\data_count_2_reg_n_0_[1] ),
        .O(data_flag_20_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_9
       (.I0(\data_count_2_reg_n_0_[15] ),
        .I1(\data_index_2_reg_n_0_[15] ),
        .I2(\data_count_2_reg_n_0_[14] ),
        .I3(\data_index_2_reg_n_0_[14] ),
        .O(data_flag_20_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    data_flag_2_i_1
       (.I0(data_flag_reg_n_0),
        .I1(\data_count_2[15]_i_3_n_0 ),
        .I2(data0),
        .O(data_flag_20));
  FDCE data_flag_2_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(data_flag_20),
        .Q(pkt_valid));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    data_flag_i_2
       (.I0(lane_byte_aligned[4]),
        .I1(\head_clk_idx_reg[2]_0 [2]),
        .I2(\head_clk_idx_reg[2]_0 [1]),
        .I3(\head_clk_idx_reg[2]_0 [0]),
        .I4(lane_byte_aligned[5]),
        .O(\head_clk_idx_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'hE)) 
    data_flag_i_3
       (.I0(\head_clk_idx_reg[2]_0 [2]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .O(\head_clk_idx_reg[2]_1 ));
  FDCE data_flag_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(data_flag0),
        .Q(data_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[0]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(\head_word_reg_n_0_[0] ),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[1]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(\head_word_reg_n_0_[1] ),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[2]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(\head_word_reg_n_0_[2] ),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[3]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(p_0_in[0]),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[4]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(p_0_in[1]),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[5]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(p_0_in[2]),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[6]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(\head_word_reg_n_0_[6] ),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \data_id_2[7]_i_1 
       (.I0(\data_count_2[15]_i_3_n_0 ),
        .I1(data_flag_reg_n_0),
        .I2(data0),
        .O(\data_id_2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[7]_i_2 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(\head_word_reg_n_0_[7] ),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002022)) 
    \data_id_2[7]_i_3 
       (.I0(\data_id_2[7]_i_5_n_0 ),
        .I1(\data_id_2[7]_i_6_n_0 ),
        .I2(\data_index_2_reg_n_0_[10] ),
        .I3(\data_index_2_reg_n_0_[9] ),
        .I4(\data_index_2_reg_n_0_[8] ),
        .I5(\data_index_2_reg_n_0_[15] ),
        .O(\data_id_2[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'hFFFFBBFB)) 
    \data_id_2[7]_i_4 
       (.I0(\data_index_2_reg_n_0_[2] ),
        .I1(data_flag_reg_n_0),
        .I2(\data_index_2_reg_n_0_[3] ),
        .I3(\data_index_2_reg_n_0_[4] ),
        .I4(\data_index_2_reg_n_0_[5] ),
        .O(\data_id_2[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \data_id_2[7]_i_5 
       (.I0(\data_index_2_reg_n_0_[13] ),
        .I1(\data_index_2_reg_n_0_[4] ),
        .I2(\data_index_2_reg_n_0_[14] ),
        .I3(\data_index_2_reg_n_0_[11] ),
        .I4(\data_count_2[15]_i_4_n_0 ),
        .O(\data_id_2[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \data_id_2[7]_i_6 
       (.I0(\data_index_2_reg_n_0_[13] ),
        .I1(\data_index_2_reg_n_0_[12] ),
        .I2(\data_index_2_reg_n_0_[7] ),
        .I3(\data_index_2_reg_n_0_[6] ),
        .O(\data_id_2[7]_i_6_n_0 ));
  FDCE \data_id_2_reg[0] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_id_2[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \data_id_2_reg[1] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_id_2[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \data_id_2_reg[2] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_id_2[2]_i_1_n_0 ),
        .Q(\data_id_2_reg_n_0_[2] ));
  FDCE \data_id_2_reg[3] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_id_2[3]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \data_id_2_reg[4] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_id_2[4]_i_1_n_0 ),
        .Q(\data_id_2_reg_n_0_[4] ));
  FDCE \data_id_2_reg[5] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_id_2[5]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \data_id_2_reg[6] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_id_2[6]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \data_id_2_reg[7] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_id_2[7]_i_2_n_0 ),
        .Q(Q[5]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \data_index_2[10]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_index_2_reg_n_0_[8] ),
        .I2(\data_index_2[11]_i_2_n_0 ),
        .I3(\data_index_2_reg_n_0_[9] ),
        .I4(\data_index_2_reg_n_0_[10] ),
        .O(p_2_in[10]));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \data_index_2[11]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_index_2_reg_n_0_[9] ),
        .I2(\data_index_2[11]_i_2_n_0 ),
        .I3(\data_index_2_reg_n_0_[8] ),
        .I4(\data_index_2_reg_n_0_[10] ),
        .I5(\data_index_2_reg_n_0_[11] ),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \data_index_2[11]_i_2 
       (.I0(\data_index_2_reg_n_0_[6] ),
        .I1(\data_index_2_reg_n_0_[4] ),
        .I2(\data_index_2_reg_n_0_[3] ),
        .I3(\data_index_2_reg_n_0_[2] ),
        .I4(\data_index_2_reg_n_0_[5] ),
        .I5(\data_index_2_reg_n_0_[7] ),
        .O(\data_index_2[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \data_index_2[12]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_index_2[12]_i_2_n_0 ),
        .I2(\data_index_2_reg_n_0_[12] ),
        .O(p_2_in[12]));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \data_index_2[12]_i_2 
       (.I0(\data_index_2_reg_n_0_[10] ),
        .I1(\data_index_2_reg_n_0_[8] ),
        .I2(\data_index_2[11]_i_2_n_0 ),
        .I3(\data_index_2_reg_n_0_[9] ),
        .I4(\data_index_2_reg_n_0_[11] ),
        .O(\data_index_2[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \data_index_2[13]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_index_2[15]_i_3_n_0 ),
        .I2(\data_index_2_reg_n_0_[13] ),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \data_index_2[14]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_index_2_reg_n_0_[13] ),
        .I2(\data_index_2[15]_i_3_n_0 ),
        .I3(\data_index_2_reg_n_0_[14] ),
        .O(p_2_in[14]));
  LUT3 #(
    .INIT(8'hFB)) 
    \data_index_2[15]_i_1 
       (.I0(\data_count_2[15]_i_3_n_0 ),
        .I1(data_flag_reg_n_0),
        .I2(data0),
        .O(\data_index_2[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'hBF400000)) 
    \data_index_2[15]_i_2 
       (.I0(\data_index_2[15]_i_3_n_0 ),
        .I1(\data_index_2_reg_n_0_[13] ),
        .I2(\data_index_2_reg_n_0_[14] ),
        .I3(\data_index_2_reg_n_0_[15] ),
        .I4(data_flag_reg_n_0),
        .O(\data_index_2[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \data_index_2[15]_i_3 
       (.I0(\data_index_2_reg_n_0_[11] ),
        .I1(\data_index_2_reg_n_0_[9] ),
        .I2(\data_index_2[11]_i_2_n_0 ),
        .I3(\data_index_2_reg_n_0_[8] ),
        .I4(\data_index_2_reg_n_0_[10] ),
        .I5(\data_index_2_reg_n_0_[12] ),
        .O(\data_index_2[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_index_2[2]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_index_2_reg_n_0_[2] ),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \data_index_2[3]_i_1 
       (.I0(\data_index_2_reg_n_0_[2] ),
        .I1(\data_index_2_reg_n_0_[3] ),
        .I2(data_flag_reg_n_0),
        .O(\data_index_2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \data_index_2[4]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_index_2_reg_n_0_[3] ),
        .I2(\data_index_2_reg_n_0_[2] ),
        .I3(\data_index_2_reg_n_0_[4] ),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \data_index_2[5]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_index_2_reg_n_0_[2] ),
        .I2(\data_index_2_reg_n_0_[3] ),
        .I3(\data_index_2_reg_n_0_[4] ),
        .I4(\data_index_2_reg_n_0_[5] ),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \data_index_2[6]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_index_2_reg_n_0_[4] ),
        .I2(\data_index_2_reg_n_0_[3] ),
        .I3(\data_index_2_reg_n_0_[2] ),
        .I4(\data_index_2_reg_n_0_[5] ),
        .I5(\data_index_2_reg_n_0_[6] ),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \data_index_2[7]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_index_2[7]_i_2_n_0 ),
        .I2(\data_index_2_reg_n_0_[7] ),
        .O(p_2_in[7]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \data_index_2[7]_i_2 
       (.I0(\data_index_2_reg_n_0_[5] ),
        .I1(\data_index_2_reg_n_0_[2] ),
        .I2(\data_index_2_reg_n_0_[3] ),
        .I3(\data_index_2_reg_n_0_[4] ),
        .I4(\data_index_2_reg_n_0_[6] ),
        .O(\data_index_2[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \data_index_2[8]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_index_2[11]_i_2_n_0 ),
        .I2(\data_index_2_reg_n_0_[8] ),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \data_index_2[9]_i_1 
       (.I0(data_flag_reg_n_0),
        .I1(\data_index_2[11]_i_2_n_0 ),
        .I2(\data_index_2_reg_n_0_[8] ),
        .I3(\data_index_2_reg_n_0_[9] ),
        .O(p_2_in[9]));
  FDCE \data_index_2_reg[10] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_2_in[10]),
        .Q(\data_index_2_reg_n_0_[10] ));
  FDCE \data_index_2_reg[11] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_2_in[11]),
        .Q(\data_index_2_reg_n_0_[11] ));
  FDCE \data_index_2_reg[12] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_2_in[12]),
        .Q(\data_index_2_reg_n_0_[12] ));
  FDCE \data_index_2_reg[13] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_2_in[13]),
        .Q(\data_index_2_reg_n_0_[13] ));
  FDCE \data_index_2_reg[14] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_2_in[14]),
        .Q(\data_index_2_reg_n_0_[14] ));
  FDCE \data_index_2_reg[15] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_index_2[15]_i_2_n_0 ),
        .Q(\data_index_2_reg_n_0_[15] ));
  FDCE \data_index_2_reg[2] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_2_in[2]),
        .Q(\data_index_2_reg_n_0_[2] ));
  FDCE \data_index_2_reg[3] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\data_index_2[3]_i_1_n_0 ),
        .Q(\data_index_2_reg_n_0_[3] ));
  FDCE \data_index_2_reg[4] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_2_in[4]),
        .Q(\data_index_2_reg_n_0_[4] ));
  FDCE \data_index_2_reg[5] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_2_in[5]),
        .Q(\data_index_2_reg_n_0_[5] ));
  FDCE \data_index_2_reg[6] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_2_in[6]),
        .Q(\data_index_2_reg_n_0_[6] ));
  FDCE \data_index_2_reg[7] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_2_in[7]),
        .Q(\data_index_2_reg_n_0_[7] ));
  FDCE \data_index_2_reg[8] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_2_in[8]),
        .Q(\data_index_2_reg_n_0_[8] ));
  FDCE \data_index_2_reg[9] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_2_in[9]),
        .Q(\data_index_2_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'h80)) 
    \di_reg[6]_i_1 
       (.I0(pkt_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(Q[4]),
        .O(data_flag_2_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \di_reg[7]_i_1 
       (.I0(pkt_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(\di_reg_reg[3] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_reg[7]_i_2 
       (.I0(pkt_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(Q[5]),
        .O(data_flag_2_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \head_clk_idx[1]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [0]),
        .I1(\head_clk_idx_reg[2]_0 [1]),
        .I2(\head_clk_idx_reg[1]_1 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \head_clk_idx[2]_i_1 
       (.I0(\head_clk_idx_reg[1]_1 ),
        .I1(\head_clk_idx_reg[2]_0 [2]),
        .I2(\head_clk_idx_reg[2]_0 [0]),
        .I3(\head_clk_idx_reg[2]_0 [1]),
        .O(p_1_in[2]));
  FDCE \head_clk_idx_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_clk_idx_reg[0]_0 ),
        .Q(\head_clk_idx_reg[2]_0 [0]));
  FDCE \head_clk_idx_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_1_in[1]),
        .Q(\head_clk_idx_reg[2]_0 [1]));
  FDCE \head_clk_idx_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_reg[0]_0 ),
        .D(p_1_in[2]),
        .Q(\head_clk_idx_reg[2]_0 [2]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \head_word[23]_i_1 
       (.I0(\head_clk_idx_reg[2]_0 [1]),
        .I1(\head_clk_idx_reg[1]_1 ),
        .I2(\head_clk_idx_reg[2]_0 [2]),
        .I3(\head_clk_idx_reg[2]_0 [0]),
        .O(head_word0));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \head_word[23]_i_3 
       (.I0(\head_clk_idx_reg[2]_0 [1]),
        .I1(\head_clk_idx_reg[2]_0 [0]),
        .I2(\head_clk_idx_reg[2]_0 [2]),
        .O(\head_clk_idx_reg[1]_0 ));
  FDCE \head_word_reg[0] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [0]),
        .Q(\head_word_reg_n_0_[0] ));
  FDCE \head_word_reg[10] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [10]),
        .Q(\head_word_reg_n_0_[10] ));
  FDCE \head_word_reg[11] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [11]),
        .Q(\head_word_reg_n_0_[11] ));
  FDCE \head_word_reg[12] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [12]),
        .Q(\head_word_reg_n_0_[12] ));
  FDCE \head_word_reg[13] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [13]),
        .Q(\head_word_reg_n_0_[13] ));
  FDCE \head_word_reg[14] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [14]),
        .Q(\head_word_reg_n_0_[14] ));
  FDCE \head_word_reg[15] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [15]),
        .Q(\head_word_reg_n_0_[15] ));
  FDCE \head_word_reg[16] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [16]),
        .Q(\head_word_reg_n_0_[16] ));
  FDCE \head_word_reg[17] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [17]),
        .Q(\head_word_reg_n_0_[17] ));
  FDCE \head_word_reg[18] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [18]),
        .Q(\head_word_reg_n_0_[18] ));
  FDCE \head_word_reg[19] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [19]),
        .Q(\head_word_reg_n_0_[19] ));
  FDCE \head_word_reg[1] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [1]),
        .Q(\head_word_reg_n_0_[1] ));
  FDCE \head_word_reg[20] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [20]),
        .Q(\head_word_reg_n_0_[20] ));
  FDCE \head_word_reg[21] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [21]),
        .Q(\head_word_reg_n_0_[21] ));
  FDCE \head_word_reg[22] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [22]),
        .Q(\head_word_reg_n_0_[22] ));
  FDCE \head_word_reg[23] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [23]),
        .Q(\head_word_reg_n_0_[23] ));
  FDCE \head_word_reg[2] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [2]),
        .Q(\head_word_reg_n_0_[2] ));
  FDCE \head_word_reg[3] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [3]),
        .Q(p_0_in[0]));
  FDCE \head_word_reg[4] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [4]),
        .Q(p_0_in[1]));
  FDCE \head_word_reg[5] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [5]),
        .Q(p_0_in[2]));
  FDCE \head_word_reg[6] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [6]),
        .Q(\head_word_reg_n_0_[6] ));
  FDCE \head_word_reg[7] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [7]),
        .Q(\head_word_reg_n_0_[7] ));
  FDCE \head_word_reg[8] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [8]),
        .Q(\head_word_reg_n_0_[8] ));
  FDCE \head_word_reg[9] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_reg[0]_0 ),
        .D(\head_word_reg[23]_0 [9]),
        .Q(\head_word_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[0]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [0]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[10]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [10]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[11]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [11]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [11]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[12]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [12]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[13]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [13]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[14]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [14]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[15]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [15]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[16]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [16]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [16]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[17]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [17]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [17]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[18]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [18]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [18]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[19]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [19]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [19]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[1]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [1]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[20]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [20]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [20]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[21]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [21]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [21]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[22]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [22]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [22]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[23]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [23]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [23]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[24]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [24]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [24]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[25]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [25]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [25]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[26]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [26]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [26]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[27]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [27]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [27]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[28]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [28]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [28]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[29]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [29]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [29]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[2]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [2]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[30]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [30]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [30]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[31]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [31]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [31]));
  LUT3 #(
    .INIT(8'h07)) 
    \last_data[31]_i_2 
       (.I0(pkt_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(\di_reg_reg[3] ),
        .O(data_flag_2_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[3]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [3]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[4]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [4]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[5]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [5]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[6]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [6]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[7]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [7]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[8]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [8]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[9]_i_1 
       (.I0(\data_byte_2_reg[31]_0 [9]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[31]_1 [9]));
  LUT4 #(
    .INIT(16'hA808)) 
    \pixel_data[10]_i_1 
       (.I0(pixel_enable3_out),
        .I1(\pixel_data[10]_i_2_n_0 ),
        .I2(\pixel_data_reg[11] [0]),
        .I3(\pixel_data[10]_i_3_n_0 ),
        .O(data_flag_2_reg_2[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[10]_i_2 
       (.I0(\data_byte_2_reg[31]_0 [18]),
        .I1(\pixel_data_reg[31] [12]),
        .I2(\pixel_data_reg[11] [1]),
        .I3(\data_byte_2_reg[31]_0 [2]),
        .I4(\pixel_data_reg[11] [2]),
        .I5(\pixel_data_reg[31] [0]),
        .O(\pixel_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[10]_i_3 
       (.I0(\data_byte_2_reg[31]_0 [26]),
        .I1(\pixel_data_reg[31] [18]),
        .I2(\pixel_data_reg[11] [1]),
        .I3(\data_byte_2_reg[31]_0 [10]),
        .I4(\pixel_data_reg[11] [2]),
        .I5(\pixel_data_reg[31] [6]),
        .O(\pixel_data[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \pixel_data[11]_i_1 
       (.I0(pixel_enable3_out),
        .I1(\pixel_data[11]_i_2_n_0 ),
        .I2(\pixel_data_reg[11] [0]),
        .I3(\pixel_data[11]_i_4_n_0 ),
        .O(data_flag_2_reg_2[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[11]_i_2 
       (.I0(\data_byte_2_reg[31]_0 [19]),
        .I1(\pixel_data_reg[31] [13]),
        .I2(\pixel_data_reg[11] [1]),
        .I3(\data_byte_2_reg[31]_0 [3]),
        .I4(\pixel_data_reg[11] [2]),
        .I5(\pixel_data_reg[31] [1]),
        .O(\pixel_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[11]_i_4 
       (.I0(\data_byte_2_reg[31]_0 [27]),
        .I1(\pixel_data_reg[31] [19]),
        .I2(\pixel_data_reg[11] [1]),
        .I3(\data_byte_2_reg[31]_0 [11]),
        .I4(\pixel_data_reg[11] [2]),
        .I5(\pixel_data_reg[31] [7]),
        .O(\pixel_data[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[17]_i_4 
       (.I0(\data_byte_2_reg[31]_0 [5]),
        .I1(last_size_reg[0]),
        .I2(\data_byte_2_reg[31]_0 [13]),
        .O(\data_byte_2_reg[5]_1 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \pixel_data[20]_i_1 
       (.I0(pixel_enable3_out),
        .I1(\pixel_data[20]_i_2_n_0 ),
        .I2(\pixel_data_reg[21] [0]),
        .I3(\pixel_data[20]_i_3_n_0 ),
        .O(data_flag_2_reg_2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[20]_i_2 
       (.I0(\data_byte_2_reg[31]_0 [20]),
        .I1(\pixel_data_reg[31] [14]),
        .I2(\pixel_data_reg[21] [1]),
        .I3(\data_byte_2_reg[31]_0 [4]),
        .I4(\pixel_data_reg[21] [2]),
        .I5(\pixel_data_reg[31] [2]),
        .O(\pixel_data[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[20]_i_3 
       (.I0(\data_byte_2_reg[31]_0 [28]),
        .I1(\pixel_data_reg[31] [20]),
        .I2(\pixel_data_reg[21] [1]),
        .I3(\data_byte_2_reg[31]_0 [12]),
        .I4(\pixel_data_reg[21] [2]),
        .I5(\pixel_data_reg[31] [8]),
        .O(\pixel_data[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \pixel_data[21]_i_1 
       (.I0(pixel_enable3_out),
        .I1(\pixel_data[21]_i_2_n_0 ),
        .I2(\pixel_data_reg[21] [0]),
        .I3(\pixel_data[21]_i_4_n_0 ),
        .O(data_flag_2_reg_2[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[21]_i_2 
       (.I0(\data_byte_2_reg[31]_0 [21]),
        .I1(\pixel_data_reg[31] [15]),
        .I2(\pixel_data_reg[21] [1]),
        .I3(\data_byte_2_reg[31]_0 [5]),
        .I4(\pixel_data_reg[21] [2]),
        .I5(\pixel_data_reg[31] [3]),
        .O(\pixel_data[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[21]_i_4 
       (.I0(\data_byte_2_reg[31]_0 [29]),
        .I1(\pixel_data_reg[31] [21]),
        .I2(\pixel_data_reg[21] [1]),
        .I3(\data_byte_2_reg[31]_0 [13]),
        .I4(\pixel_data_reg[21] [2]),
        .I5(\pixel_data_reg[31] [9]),
        .O(\pixel_data[21]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \pixel_data[30]_i_1 
       (.I0(pixel_enable3_out),
        .I1(\pixel_data[30]_i_2_n_0 ),
        .I2(O[0]),
        .I3(\pixel_data[30]_i_3_n_0 ),
        .O(data_flag_2_reg_2[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[30]_i_2 
       (.I0(\data_byte_2_reg[31]_0 [22]),
        .I1(\pixel_data_reg[31] [16]),
        .I2(O[1]),
        .I3(\data_byte_2_reg[31]_0 [6]),
        .I4(O[2]),
        .I5(\pixel_data_reg[31] [4]),
        .O(\pixel_data[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[30]_i_3 
       (.I0(\data_byte_2_reg[31]_0 [30]),
        .I1(\pixel_data_reg[31] [22]),
        .I2(O[1]),
        .I3(\data_byte_2_reg[31]_0 [14]),
        .I4(O[2]),
        .I5(\pixel_data_reg[31] [10]),
        .O(\pixel_data[30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \pixel_data[31]_i_1 
       (.I0(pixel_enable3_out),
        .I1(\pixel_data[31]_i_2_n_0 ),
        .I2(O[0]),
        .I3(\pixel_data[31]_i_4_n_0 ),
        .O(data_flag_2_reg_2[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[31]_i_2 
       (.I0(\data_byte_2_reg[31]_0 [23]),
        .I1(\pixel_data_reg[31] [17]),
        .I2(O[1]),
        .I3(\data_byte_2_reg[31]_0 [7]),
        .I4(O[2]),
        .I5(\pixel_data_reg[31] [5]),
        .O(\pixel_data[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[31]_i_4 
       (.I0(\data_byte_2_reg[31]_0 [31]),
        .I1(\pixel_data_reg[31] [23]),
        .I2(O[1]),
        .I3(\data_byte_2_reg[31]_0 [15]),
        .I4(O[2]),
        .I5(\pixel_data_reg[31] [11]),
        .O(\pixel_data[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[32]_i_4 
       (.I0(\data_byte_2_reg[31]_0 [0]),
        .I1(\data_byte_2_reg[31]_0 [8]),
        .I2(last_size_reg[1]),
        .I3(\data_byte_2_reg[31]_0 [16]),
        .I4(last_size_reg[0]),
        .I5(\data_byte_2_reg[31]_0 [24]),
        .O(\data_byte_2_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[33]_i_4 
       (.I0(\data_byte_2_reg[31]_0 [1]),
        .I1(\data_byte_2_reg[31]_0 [9]),
        .I2(last_size_reg[1]),
        .I3(\data_byte_2_reg[31]_0 [17]),
        .I4(last_size_reg[0]),
        .I5(\data_byte_2_reg[31]_0 [25]),
        .O(\data_byte_2_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[34]_i_4 
       (.I0(\data_byte_2_reg[31]_0 [2]),
        .I1(\data_byte_2_reg[31]_0 [10]),
        .I2(last_size_reg[1]),
        .I3(\data_byte_2_reg[31]_0 [18]),
        .I4(last_size_reg[0]),
        .I5(\data_byte_2_reg[31]_0 [26]),
        .O(\data_byte_2_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[35]_i_4 
       (.I0(\data_byte_2_reg[31]_0 [3]),
        .I1(\data_byte_2_reg[31]_0 [11]),
        .I2(last_size_reg[1]),
        .I3(\data_byte_2_reg[31]_0 [19]),
        .I4(last_size_reg[0]),
        .I5(\data_byte_2_reg[31]_0 [27]),
        .O(\data_byte_2_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFF47FF47FF33FFFF)) 
    \pixel_data[36]_i_2 
       (.I0(\data_byte_2_reg[31]_0 [4]),
        .I1(last_size_reg[0]),
        .I2(\data_byte_2_reg[31]_0 [12]),
        .I3(last_size_reg[2]),
        .I4(\data_byte_2_reg[31]_0 [20]),
        .I5(last_size_reg[1]),
        .O(\data_byte_2_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[37]_i_4 
       (.I0(\data_byte_2_reg[31]_0 [5]),
        .I1(\data_byte_2_reg[31]_0 [13]),
        .I2(last_size_reg[1]),
        .I3(\data_byte_2_reg[31]_0 [21]),
        .I4(last_size_reg[0]),
        .I5(\data_byte_2_reg[31]_0 [29]),
        .O(\data_byte_2_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFF47FF47FF33FFFF)) 
    \pixel_data[38]_i_2 
       (.I0(\data_byte_2_reg[31]_0 [6]),
        .I1(last_size_reg[0]),
        .I2(\data_byte_2_reg[31]_0 [14]),
        .I3(last_size_reg[2]),
        .I4(\data_byte_2_reg[31]_0 [22]),
        .I5(last_size_reg[1]),
        .O(\data_byte_2_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[39]_i_4 
       (.I0(\data_byte_2_reg[31]_0 [7]),
        .I1(\data_byte_2_reg[31]_0 [15]),
        .I2(last_size_reg[1]),
        .I3(\data_byte_2_reg[31]_0 [23]),
        .I4(last_size_reg[0]),
        .I5(\data_byte_2_reg[31]_0 [31]),
        .O(\data_byte_2_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ready_delay[0]_i_1 
       (.I0(pkt_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .O(data_flag_2_reg_0[0]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \ready_delay[0]_i_2 
       (.I0(\data_id_2_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(\data_id_2_reg_n_0_[2] ),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data_id_2_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hF1F1E0F1E0E0E0E0)) 
    reg_pix_data_enable_i_1__0
       (.I0(raw10_pix_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(raw10_pix_data_enable),
        .I3(reg_pix_data_enable_i_2_n_0),
        .I4(reg_pix_data_enable_i_3_n_0),
        .I5(pkt_valid),
        .O(reg_pix_valid_reg_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    reg_pix_data_enable_i_2
       (.I0(\data_count_2_reg_n_0_[7] ),
        .I1(\data_count_2_reg_n_0_[9] ),
        .I2(\data_count_2_reg_n_0_[11] ),
        .I3(\data_count_2_reg_n_0_[10] ),
        .I4(reg_pix_data_enable_i_4_n_0),
        .O(reg_pix_data_enable_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    reg_pix_data_enable_i_3
       (.I0(\data_count_2_reg_n_0_[4] ),
        .I1(\data_count_2_reg_n_0_[14] ),
        .I2(\data_count_2_reg_n_0_[5] ),
        .I3(\data_count_2_reg_n_0_[6] ),
        .I4(reg_pix_data_enable_i_5_n_0),
        .O(reg_pix_data_enable_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reg_pix_data_enable_i_4
       (.I0(\data_count_2_reg_n_0_[0] ),
        .I1(\data_count_2_reg_n_0_[1] ),
        .I2(\data_count_2_reg_n_0_[13] ),
        .I3(\data_count_2_reg_n_0_[2] ),
        .O(reg_pix_data_enable_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reg_pix_data_enable_i_5
       (.I0(\data_count_2_reg_n_0_[15] ),
        .I1(\data_count_2_reg_n_0_[3] ),
        .I2(\data_count_2_reg_n_0_[12] ),
        .I3(\data_count_2_reg_n_0_[8] ),
        .O(reg_pix_data_enable_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \reg_pix_di[2]_i_1 
       (.I0(raw10_pix_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(\data_id_2_reg_n_0_[2] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \reg_pix_di[4]_i_1 
       (.I0(raw10_pix_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(\data_id_2_reg_n_0_[4] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    reg_pix_valid_i_1__0
       (.I0(raw10_pix_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(pkt_valid),
        .O(reg_pix_valid_reg));
endmodule

(* ORIG_REF_NAME = "_csi2_pixel_to_video" *) 
module design_1_mipi_rx_to_video_0_0__csi2_pixel_to_video
   (locked_reg_0,
    reg_ce_reg_0,
    reg_active_video_reg_0,
    reg_vsync_reg_0,
    \pix_cnt_reg[12] ,
    reg_active_video_reg_1,
    \line_cnt_reg[14] ,
    pre_active_video_reg,
    mipi_width0__0,
    \axi_araddr_reg[5] ,
    reg_ce_reg_1,
    vid_data,
    \reg_di_reg[7]_0 ,
    E,
    clk_hs_byte,
    \reg_pix_data_reg[39]_0 ,
    pix_data_enable,
    pix_valid,
    Q,
    \pix_cnt_reg[13] ,
    \pix_cnt_reg[8] ,
    pre_active_video,
    \line_cnt_reg[15] ,
    \line_cnt_reg[6] ,
    \line_cnt_reg[11] ,
    pre_vsync,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[0]_0 ,
    p_1_in_13,
    \axi_rdata_reg[0]_1 ,
    p_2_in,
    \line_cnt_reg[15]_0 ,
    \line_cnt_reg[10] ,
    \line_cnt_reg[5] ,
    \reg_pix_di_reg[7]_0 ,
    \reg_pix_data_reg[39]_1 );
  output locked_reg_0;
  output reg_ce_reg_0;
  output reg_active_video_reg_0;
  output reg_vsync_reg_0;
  output [4:0]\pix_cnt_reg[12] ;
  output reg_active_video_reg_1;
  output [15:0]\line_cnt_reg[14] ;
  output [0:0]pre_active_video_reg;
  output mipi_width0__0;
  output [0:0]\axi_araddr_reg[5] ;
  output [0:0]reg_ce_reg_1;
  output [39:0]vid_data;
  output [7:0]\reg_di_reg[7]_0 ;
  input [0:0]E;
  input clk_hs_byte;
  input \reg_pix_data_reg[39]_0 ;
  input pix_data_enable;
  input pix_valid;
  input [11:0]Q;
  input \pix_cnt_reg[13] ;
  input \pix_cnt_reg[8] ;
  input pre_active_video;
  input [15:0]\line_cnt_reg[15] ;
  input \line_cnt_reg[6] ;
  input \line_cnt_reg[11] ;
  input pre_vsync;
  input \axi_rdata_reg[0] ;
  input [4:0]\axi_rdata_reg[0]_0 ;
  input [0:0]p_1_in_13;
  input [0:0]\axi_rdata_reg[0]_1 ;
  input [0:0]p_2_in;
  input \line_cnt_reg[15]_0 ;
  input \line_cnt_reg[10] ;
  input \line_cnt_reg[5] ;
  input [7:0]\reg_pix_di_reg[7]_0 ;
  input [39:0]\reg_pix_data_reg[39]_1 ;

  wire [0:0]E;
  wire [11:0]Q;
  wire [0:0]\axi_araddr_reg[5] ;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata_reg[0] ;
  wire [4:0]\axi_rdata_reg[0]_0 ;
  wire [0:0]\axi_rdata_reg[0]_1 ;
  wire clk_hs_byte;
  wire line_cnt1__1;
  wire \line_cnt_reg[10] ;
  wire \line_cnt_reg[11] ;
  wire [15:0]\line_cnt_reg[14] ;
  wire [15:0]\line_cnt_reg[15] ;
  wire \line_cnt_reg[15]_0 ;
  wire \line_cnt_reg[5] ;
  wire \line_cnt_reg[6] ;
  wire locked_reg_0;
  wire [1:0]locked_vc;
  wire mipi_width0__0;
  wire [7:0]p_1_in;
  wire [0:0]p_1_in_13;
  wire [0:0]p_2_in;
  wire [4:0]\pix_cnt_reg[12] ;
  wire \pix_cnt_reg[13] ;
  wire \pix_cnt_reg[8] ;
  wire pix_data_enable;
  wire pix_valid;
  wire pre_active_video;
  wire [0:0]pre_active_video_reg;
  wire pre_vsync;
  wire reg_active_video0;
  wire reg_active_video_reg_0;
  wire reg_active_video_reg_1;
  wire reg_ce_i_1_n_0;
  wire reg_ce_i_3_n_0;
  wire reg_ce_reg_0;
  wire [0:0]reg_ce_reg_1;
  wire \reg_data[0]_i_1_n_0 ;
  wire \reg_data[10]_i_1_n_0 ;
  wire \reg_data[11]_i_1_n_0 ;
  wire \reg_data[12]_i_1_n_0 ;
  wire \reg_data[13]_i_1_n_0 ;
  wire \reg_data[14]_i_1_n_0 ;
  wire \reg_data[15]_i_1_n_0 ;
  wire \reg_data[16]_i_1_n_0 ;
  wire \reg_data[17]_i_1_n_0 ;
  wire \reg_data[18]_i_1_n_0 ;
  wire \reg_data[19]_i_1_n_0 ;
  wire \reg_data[1]_i_1_n_0 ;
  wire \reg_data[20]_i_1_n_0 ;
  wire \reg_data[21]_i_1_n_0 ;
  wire \reg_data[22]_i_1_n_0 ;
  wire \reg_data[23]_i_1_n_0 ;
  wire \reg_data[24]_i_1_n_0 ;
  wire \reg_data[25]_i_1_n_0 ;
  wire \reg_data[26]_i_1_n_0 ;
  wire \reg_data[27]_i_1_n_0 ;
  wire \reg_data[28]_i_1_n_0 ;
  wire \reg_data[29]_i_1_n_0 ;
  wire \reg_data[2]_i_1_n_0 ;
  wire \reg_data[30]_i_1_n_0 ;
  wire \reg_data[31]_i_1_n_0 ;
  wire \reg_data[32]_i_1_n_0 ;
  wire \reg_data[33]_i_1_n_0 ;
  wire \reg_data[34]_i_1_n_0 ;
  wire \reg_data[35]_i_1_n_0 ;
  wire \reg_data[36]_i_1_n_0 ;
  wire \reg_data[37]_i_1_n_0 ;
  wire \reg_data[38]_i_1_n_0 ;
  wire \reg_data[39]_i_1_n_0 ;
  wire \reg_data[3]_i_1_n_0 ;
  wire \reg_data[4]_i_1_n_0 ;
  wire \reg_data[5]_i_1_n_0 ;
  wire \reg_data[6]_i_1_n_0 ;
  wire \reg_data[7]_i_1_n_0 ;
  wire \reg_data[8]_i_1_n_0 ;
  wire \reg_data[9]_i_1_n_0 ;
  wire [7:0]\reg_di_reg[7]_0 ;
  wire [39:0]reg_pix_data;
  wire reg_pix_data_enable;
  wire \reg_pix_data_reg[39]_0 ;
  wire [39:0]\reg_pix_data_reg[39]_1 ;
  wire [7:1]reg_pix_di;
  wire [7:0]\reg_pix_di_reg[7]_0 ;
  wire \reg_pix_di_reg_n_0_[0] ;
  wire reg_pix_valid;
  wire reg_vsync0;
  wire reg_vsync1__0;
  wire reg_vsync_i_1_n_0;
  wire reg_vsync_i_3_n_0;
  wire reg_vsync_i_4_n_0;
  wire reg_vsync_reg_0;
  wire [39:0]vid_data;

  LUT5 #(
    .INIT(32'h000A000C)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0] ),
        .I2(\axi_rdata_reg[0]_0 [3]),
        .I3(\axi_rdata_reg[0]_0 [4]),
        .I4(\axi_rdata_reg[0]_0 [2]),
        .O(\axi_araddr_reg[5] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_2 
       (.I0(locked_reg_0),
        .I1(p_1_in_13),
        .I2(\axi_rdata_reg[0]_0 [0]),
        .I3(\axi_rdata_reg[0]_0 [1]),
        .I4(\axi_rdata_reg[0]_1 ),
        .I5(p_2_in),
        .O(\axi_rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \line_cnt[0]_i_1 
       (.I0(reg_vsync_reg_0),
        .I1(pre_vsync),
        .I2(\line_cnt_reg[15] [0]),
        .O(\line_cnt_reg[14] [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h458A)) 
    \line_cnt[10]_i_1 
       (.I0(\line_cnt_reg[10] ),
        .I1(reg_vsync_reg_0),
        .I2(pre_vsync),
        .I3(\line_cnt_reg[15] [10]),
        .O(\line_cnt_reg[14] [10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h458A)) 
    \line_cnt[11]_i_1 
       (.I0(\line_cnt_reg[11] ),
        .I1(reg_vsync_reg_0),
        .I2(pre_vsync),
        .I3(\line_cnt_reg[15] [11]),
        .O(\line_cnt_reg[14] [11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h70778088)) 
    \line_cnt[12]_i_1 
       (.I0(\line_cnt_reg[15] [11]),
        .I1(\line_cnt_reg[11] ),
        .I2(reg_vsync_reg_0),
        .I3(pre_vsync),
        .I4(\line_cnt_reg[15] [12]),
        .O(\line_cnt_reg[14] [12]));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \line_cnt[13]_i_1 
       (.I0(\line_cnt_reg[15] [12]),
        .I1(\line_cnt_reg[11] ),
        .I2(\line_cnt_reg[15] [11]),
        .I3(line_cnt1__1),
        .I4(\line_cnt_reg[15] [13]),
        .O(\line_cnt_reg[14] [13]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \line_cnt[14]_i_1 
       (.I0(\line_cnt_reg[15] [13]),
        .I1(\line_cnt_reg[15] [11]),
        .I2(\line_cnt_reg[11] ),
        .I3(\line_cnt_reg[15] [12]),
        .I4(line_cnt1__1),
        .I5(\line_cnt_reg[15] [14]),
        .O(\line_cnt_reg[14] [14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \line_cnt[14]_i_3 
       (.I0(reg_ce_reg_0),
        .I1(pre_vsync),
        .I2(reg_vsync_reg_0),
        .O(line_cnt1__1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2F220000)) 
    \line_cnt[15]_i_1 
       (.I0(pre_active_video),
        .I1(reg_active_video_reg_0),
        .I2(reg_vsync_reg_0),
        .I3(pre_vsync),
        .I4(reg_ce_reg_0),
        .O(pre_active_video_reg));
  LUT5 #(
    .INIT(32'h70778088)) 
    \line_cnt[15]_i_2 
       (.I0(\line_cnt_reg[15] [14]),
        .I1(\line_cnt_reg[15]_0 ),
        .I2(reg_vsync_reg_0),
        .I3(pre_vsync),
        .I4(\line_cnt_reg[15] [15]),
        .O(\line_cnt_reg[14] [15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0DD0)) 
    \line_cnt[1]_i_1 
       (.I0(pre_vsync),
        .I1(reg_vsync_reg_0),
        .I2(\line_cnt_reg[15] [0]),
        .I3(\line_cnt_reg[15] [1]),
        .O(\line_cnt_reg[14] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0DDDD000)) 
    \line_cnt[2]_i_1 
       (.I0(pre_vsync),
        .I1(reg_vsync_reg_0),
        .I2(\line_cnt_reg[15] [0]),
        .I3(\line_cnt_reg[15] [1]),
        .I4(\line_cnt_reg[15] [2]),
        .O(\line_cnt_reg[14] [2]));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \line_cnt[3]_i_1 
       (.I0(\line_cnt_reg[15] [2]),
        .I1(\line_cnt_reg[15] [0]),
        .I2(\line_cnt_reg[15] [1]),
        .I3(line_cnt1__1),
        .I4(\line_cnt_reg[15] [3]),
        .O(\line_cnt_reg[14] [3]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \line_cnt[4]_i_1 
       (.I0(\line_cnt_reg[15] [3]),
        .I1(\line_cnt_reg[15] [1]),
        .I2(\line_cnt_reg[15] [0]),
        .I3(\line_cnt_reg[15] [2]),
        .I4(line_cnt1__1),
        .I5(\line_cnt_reg[15] [4]),
        .O(\line_cnt_reg[14] [4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h458A)) 
    \line_cnt[5]_i_1 
       (.I0(\line_cnt_reg[5] ),
        .I1(reg_vsync_reg_0),
        .I2(pre_vsync),
        .I3(\line_cnt_reg[15] [5]),
        .O(\line_cnt_reg[14] [5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h458A)) 
    \line_cnt[6]_i_1 
       (.I0(\line_cnt_reg[6] ),
        .I1(reg_vsync_reg_0),
        .I2(pre_vsync),
        .I3(\line_cnt_reg[15] [6]),
        .O(\line_cnt_reg[14] [6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h70778088)) 
    \line_cnt[7]_i_1 
       (.I0(\line_cnt_reg[15] [6]),
        .I1(\line_cnt_reg[6] ),
        .I2(reg_vsync_reg_0),
        .I3(pre_vsync),
        .I4(\line_cnt_reg[15] [7]),
        .O(\line_cnt_reg[14] [7]));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \line_cnt[8]_i_1 
       (.I0(\line_cnt_reg[15] [7]),
        .I1(\line_cnt_reg[6] ),
        .I2(\line_cnt_reg[15] [6]),
        .I3(line_cnt1__1),
        .I4(\line_cnt_reg[15] [8]),
        .O(\line_cnt_reg[14] [8]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \line_cnt[9]_i_1 
       (.I0(\line_cnt_reg[15] [8]),
        .I1(\line_cnt_reg[15] [6]),
        .I2(\line_cnt_reg[6] ),
        .I3(\line_cnt_reg[15] [7]),
        .I4(line_cnt1__1),
        .I5(\line_cnt_reg[15] [9]),
        .O(\line_cnt_reg[14] [9]));
  FDCE locked_reg
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(1'b1),
        .Q(locked_reg_0));
  FDCE \locked_vc_reg[0] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_di_reg[7]_0 [6]),
        .Q(locked_vc[0]));
  FDCE \locked_vc_reg[1] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_di_reg[7]_0 [7]),
        .Q(locked_vc[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \mipi_di[7]_i_1 
       (.I0(reg_active_video_reg_0),
        .I1(reg_ce_reg_0),
        .I2(pre_active_video),
        .O(reg_active_video_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \mipi_width[15]_i_1 
       (.I0(pre_vsync),
        .I1(reg_ce_reg_0),
        .I2(reg_vsync_reg_0),
        .O(mipi_width0__0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[13]_i_1 
       (.I0(reg_ce_reg_0),
        .I1(reg_active_video_reg_0),
        .O(reg_ce_reg_1));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \pix_cnt[13]_i_2 
       (.I0(Q[10]),
        .I1(\pix_cnt_reg[13] ),
        .I2(Q[9]),
        .I3(reg_active_video_reg_1),
        .I4(Q[11]),
        .O(\pix_cnt_reg[12] [4]));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \pix_cnt[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg_active_video_reg_1),
        .I4(Q[3]),
        .O(\pix_cnt_reg[12] [0]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \pix_cnt[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(reg_active_video_reg_1),
        .I5(Q[4]),
        .O(\pix_cnt_reg[12] [1]));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \pix_cnt[8]_i_1 
       (.I0(Q[6]),
        .I1(\pix_cnt_reg[8] ),
        .I2(Q[5]),
        .I3(reg_active_video_reg_1),
        .I4(Q[7]),
        .O(\pix_cnt_reg[12] [2]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \pix_cnt[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\pix_cnt_reg[8] ),
        .I3(Q[6]),
        .I4(reg_active_video_reg_1),
        .I5(Q[8]),
        .O(\pix_cnt_reg[12] [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h006E)) 
    reg_active_video_i_1
       (.I0(reg_pix_di[5]),
        .I1(reg_pix_di[4]),
        .I2(reg_pix_di[3]),
        .I3(reg_ce_i_3_n_0),
        .O(reg_active_video0));
  FDCE reg_active_video_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(reg_active_video0),
        .Q(reg_active_video_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFF83)) 
    reg_ce_i_1
       (.I0(reg_pix_di[3]),
        .I1(reg_pix_di[4]),
        .I2(reg_pix_di[5]),
        .I3(reg_pix_data_enable),
        .I4(reg_ce_i_3_n_0),
        .O(reg_ce_i_1_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFFFFFF)) 
    reg_ce_i_3
       (.I0(reg_pix_di[7]),
        .I1(locked_vc[1]),
        .I2(locked_vc[0]),
        .I3(reg_pix_di[6]),
        .I4(reg_pix_valid),
        .I5(locked_reg_0),
        .O(reg_ce_i_3_n_0));
  FDPE reg_ce_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .D(reg_ce_i_1_n_0),
        .PRE(\reg_pix_data_reg[39]_0 ),
        .Q(reg_ce_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[0]_i_1 
       (.I0(reg_pix_data[0]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[10]_i_1 
       (.I0(reg_pix_data[10]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[11]_i_1 
       (.I0(reg_pix_data[11]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[12]_i_1 
       (.I0(reg_pix_data[12]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[13]_i_1 
       (.I0(reg_pix_data[13]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[14]_i_1 
       (.I0(reg_pix_data[14]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[15]_i_1 
       (.I0(reg_pix_data[15]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[16]_i_1 
       (.I0(reg_pix_data[16]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[17]_i_1 
       (.I0(reg_pix_data[17]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[18]_i_1 
       (.I0(reg_pix_data[18]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[19]_i_1 
       (.I0(reg_pix_data[19]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[1]_i_1 
       (.I0(reg_pix_data[1]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[20]_i_1 
       (.I0(reg_pix_data[20]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[21]_i_1 
       (.I0(reg_pix_data[21]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[22]_i_1 
       (.I0(reg_pix_data[22]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[23]_i_1 
       (.I0(reg_pix_data[23]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[24]_i_1 
       (.I0(reg_pix_data[24]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[25]_i_1 
       (.I0(reg_pix_data[25]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[26]_i_1 
       (.I0(reg_pix_data[26]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[27]_i_1 
       (.I0(reg_pix_data[27]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[28]_i_1 
       (.I0(reg_pix_data[28]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[29]_i_1 
       (.I0(reg_pix_data[29]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[2]_i_1 
       (.I0(reg_pix_data[2]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[30]_i_1 
       (.I0(reg_pix_data[30]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[31]_i_1 
       (.I0(reg_pix_data[31]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[32]_i_1 
       (.I0(reg_pix_data[32]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[33]_i_1 
       (.I0(reg_pix_data[33]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[34]_i_1 
       (.I0(reg_pix_data[34]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[35]_i_1 
       (.I0(reg_pix_data[35]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[36]_i_1 
       (.I0(reg_pix_data[36]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[37]_i_1 
       (.I0(reg_pix_data[37]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[38]_i_1 
       (.I0(reg_pix_data[38]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[38]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[39]_i_1 
       (.I0(reg_pix_data[39]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[3]_i_1 
       (.I0(reg_pix_data[3]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[4]_i_1 
       (.I0(reg_pix_data[4]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[5]_i_1 
       (.I0(reg_pix_data[5]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[6]_i_1 
       (.I0(reg_pix_data[6]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[7]_i_1 
       (.I0(reg_pix_data[7]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[8]_i_1 
       (.I0(reg_pix_data[8]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[9]_i_1 
       (.I0(reg_pix_data[9]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[9]_i_1_n_0 ));
  FDCE \reg_data_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[0]_i_1_n_0 ),
        .Q(vid_data[0]));
  FDCE \reg_data_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[10]_i_1_n_0 ),
        .Q(vid_data[10]));
  FDCE \reg_data_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[11]_i_1_n_0 ),
        .Q(vid_data[11]));
  FDCE \reg_data_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[12]_i_1_n_0 ),
        .Q(vid_data[12]));
  FDCE \reg_data_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[13]_i_1_n_0 ),
        .Q(vid_data[13]));
  FDCE \reg_data_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[14]_i_1_n_0 ),
        .Q(vid_data[14]));
  FDCE \reg_data_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[15]_i_1_n_0 ),
        .Q(vid_data[15]));
  FDCE \reg_data_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[16]_i_1_n_0 ),
        .Q(vid_data[16]));
  FDCE \reg_data_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[17]_i_1_n_0 ),
        .Q(vid_data[17]));
  FDCE \reg_data_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[18]_i_1_n_0 ),
        .Q(vid_data[18]));
  FDCE \reg_data_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[19]_i_1_n_0 ),
        .Q(vid_data[19]));
  FDCE \reg_data_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[1]_i_1_n_0 ),
        .Q(vid_data[1]));
  FDCE \reg_data_reg[20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[20]_i_1_n_0 ),
        .Q(vid_data[20]));
  FDCE \reg_data_reg[21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[21]_i_1_n_0 ),
        .Q(vid_data[21]));
  FDCE \reg_data_reg[22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[22]_i_1_n_0 ),
        .Q(vid_data[22]));
  FDCE \reg_data_reg[23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[23]_i_1_n_0 ),
        .Q(vid_data[23]));
  FDCE \reg_data_reg[24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[24]_i_1_n_0 ),
        .Q(vid_data[24]));
  FDCE \reg_data_reg[25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[25]_i_1_n_0 ),
        .Q(vid_data[25]));
  FDCE \reg_data_reg[26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[26]_i_1_n_0 ),
        .Q(vid_data[26]));
  FDCE \reg_data_reg[27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[27]_i_1_n_0 ),
        .Q(vid_data[27]));
  FDCE \reg_data_reg[28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[28]_i_1_n_0 ),
        .Q(vid_data[28]));
  FDCE \reg_data_reg[29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[29]_i_1_n_0 ),
        .Q(vid_data[29]));
  FDCE \reg_data_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[2]_i_1_n_0 ),
        .Q(vid_data[2]));
  FDCE \reg_data_reg[30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[30]_i_1_n_0 ),
        .Q(vid_data[30]));
  FDCE \reg_data_reg[31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[31]_i_1_n_0 ),
        .Q(vid_data[31]));
  FDCE \reg_data_reg[32] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[32]_i_1_n_0 ),
        .Q(vid_data[32]));
  FDCE \reg_data_reg[33] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[33]_i_1_n_0 ),
        .Q(vid_data[33]));
  FDCE \reg_data_reg[34] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[34]_i_1_n_0 ),
        .Q(vid_data[34]));
  FDCE \reg_data_reg[35] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[35]_i_1_n_0 ),
        .Q(vid_data[35]));
  FDCE \reg_data_reg[36] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[36]_i_1_n_0 ),
        .Q(vid_data[36]));
  FDCE \reg_data_reg[37] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[37]_i_1_n_0 ),
        .Q(vid_data[37]));
  FDCE \reg_data_reg[38] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[38]_i_1_n_0 ),
        .Q(vid_data[38]));
  FDCE \reg_data_reg[39] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[39]_i_1_n_0 ),
        .Q(vid_data[39]));
  FDCE \reg_data_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[3]_i_1_n_0 ),
        .Q(vid_data[3]));
  FDCE \reg_data_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[4]_i_1_n_0 ),
        .Q(vid_data[4]));
  FDCE \reg_data_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[5]_i_1_n_0 ),
        .Q(vid_data[5]));
  FDCE \reg_data_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[6]_i_1_n_0 ),
        .Q(vid_data[6]));
  FDCE \reg_data_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[7]_i_1_n_0 ),
        .Q(vid_data[7]));
  FDCE \reg_data_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[8]_i_1_n_0 ),
        .Q(vid_data[8]));
  FDCE \reg_data_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_data[9]_i_1_n_0 ),
        .Q(vid_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_di[0]_i_1 
       (.I0(\reg_pix_di_reg_n_0_[0] ),
        .I1(reg_ce_i_3_n_0),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_di[1]_i_1 
       (.I0(reg_pix_di[1]),
        .I1(reg_ce_i_3_n_0),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_di[2]_i_1 
       (.I0(reg_pix_di[2]),
        .I1(reg_ce_i_3_n_0),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_di[3]_i_1 
       (.I0(reg_pix_di[3]),
        .I1(reg_ce_i_3_n_0),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_di[4]_i_1 
       (.I0(reg_pix_di[4]),
        .I1(reg_ce_i_3_n_0),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_di[5]_i_1 
       (.I0(reg_pix_di[5]),
        .I1(reg_ce_i_3_n_0),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h8000000000008000)) 
    \reg_di[6]_i_1 
       (.I0(locked_reg_0),
        .I1(reg_pix_valid),
        .I2(reg_pix_di[6]),
        .I3(locked_vc[0]),
        .I4(locked_vc[1]),
        .I5(reg_pix_di[7]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h8008000000000000)) 
    \reg_di[7]_i_1 
       (.I0(locked_reg_0),
        .I1(reg_pix_valid),
        .I2(reg_pix_di[6]),
        .I3(locked_vc[0]),
        .I4(locked_vc[1]),
        .I5(reg_pix_di[7]),
        .O(p_1_in[7]));
  FDCE \reg_di_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(p_1_in[0]),
        .Q(\reg_di_reg[7]_0 [0]));
  FDCE \reg_di_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(p_1_in[1]),
        .Q(\reg_di_reg[7]_0 [1]));
  FDCE \reg_di_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(p_1_in[2]),
        .Q(\reg_di_reg[7]_0 [2]));
  FDCE \reg_di_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(p_1_in[3]),
        .Q(\reg_di_reg[7]_0 [3]));
  FDCE \reg_di_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(p_1_in[4]),
        .Q(\reg_di_reg[7]_0 [4]));
  FDCE \reg_di_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(p_1_in[5]),
        .Q(\reg_di_reg[7]_0 [5]));
  FDCE \reg_di_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(p_1_in[6]),
        .Q(\reg_di_reg[7]_0 [6]));
  FDCE \reg_di_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(p_1_in[7]),
        .Q(\reg_di_reg[7]_0 [7]));
  FDCE reg_pix_data_enable_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(pix_data_enable),
        .Q(reg_pix_data_enable));
  FDCE \reg_pix_data_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [0]),
        .Q(reg_pix_data[0]));
  FDCE \reg_pix_data_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [10]),
        .Q(reg_pix_data[10]));
  FDCE \reg_pix_data_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [11]),
        .Q(reg_pix_data[11]));
  FDCE \reg_pix_data_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [12]),
        .Q(reg_pix_data[12]));
  FDCE \reg_pix_data_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [13]),
        .Q(reg_pix_data[13]));
  FDCE \reg_pix_data_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [14]),
        .Q(reg_pix_data[14]));
  FDCE \reg_pix_data_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [15]),
        .Q(reg_pix_data[15]));
  FDCE \reg_pix_data_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [16]),
        .Q(reg_pix_data[16]));
  FDCE \reg_pix_data_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [17]),
        .Q(reg_pix_data[17]));
  FDCE \reg_pix_data_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [18]),
        .Q(reg_pix_data[18]));
  FDCE \reg_pix_data_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [19]),
        .Q(reg_pix_data[19]));
  FDCE \reg_pix_data_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [1]),
        .Q(reg_pix_data[1]));
  FDCE \reg_pix_data_reg[20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [20]),
        .Q(reg_pix_data[20]));
  FDCE \reg_pix_data_reg[21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [21]),
        .Q(reg_pix_data[21]));
  FDCE \reg_pix_data_reg[22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [22]),
        .Q(reg_pix_data[22]));
  FDCE \reg_pix_data_reg[23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [23]),
        .Q(reg_pix_data[23]));
  FDCE \reg_pix_data_reg[24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [24]),
        .Q(reg_pix_data[24]));
  FDCE \reg_pix_data_reg[25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [25]),
        .Q(reg_pix_data[25]));
  FDCE \reg_pix_data_reg[26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [26]),
        .Q(reg_pix_data[26]));
  FDCE \reg_pix_data_reg[27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [27]),
        .Q(reg_pix_data[27]));
  FDCE \reg_pix_data_reg[28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [28]),
        .Q(reg_pix_data[28]));
  FDCE \reg_pix_data_reg[29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [29]),
        .Q(reg_pix_data[29]));
  FDCE \reg_pix_data_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [2]),
        .Q(reg_pix_data[2]));
  FDCE \reg_pix_data_reg[30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [30]),
        .Q(reg_pix_data[30]));
  FDCE \reg_pix_data_reg[31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [31]),
        .Q(reg_pix_data[31]));
  FDCE \reg_pix_data_reg[32] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [32]),
        .Q(reg_pix_data[32]));
  FDCE \reg_pix_data_reg[33] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [33]),
        .Q(reg_pix_data[33]));
  FDCE \reg_pix_data_reg[34] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [34]),
        .Q(reg_pix_data[34]));
  FDCE \reg_pix_data_reg[35] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [35]),
        .Q(reg_pix_data[35]));
  FDCE \reg_pix_data_reg[36] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [36]),
        .Q(reg_pix_data[36]));
  FDCE \reg_pix_data_reg[37] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [37]),
        .Q(reg_pix_data[37]));
  FDCE \reg_pix_data_reg[38] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [38]),
        .Q(reg_pix_data[38]));
  FDCE \reg_pix_data_reg[39] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [39]),
        .Q(reg_pix_data[39]));
  FDCE \reg_pix_data_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [3]),
        .Q(reg_pix_data[3]));
  FDCE \reg_pix_data_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [4]),
        .Q(reg_pix_data[4]));
  FDCE \reg_pix_data_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [5]),
        .Q(reg_pix_data[5]));
  FDCE \reg_pix_data_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [6]),
        .Q(reg_pix_data[6]));
  FDCE \reg_pix_data_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [7]),
        .Q(reg_pix_data[7]));
  FDCE \reg_pix_data_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [8]),
        .Q(reg_pix_data[8]));
  FDCE \reg_pix_data_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_data_reg[39]_1 [9]),
        .Q(reg_pix_data[9]));
  FDCE \reg_pix_di_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_di_reg[7]_0 [0]),
        .Q(\reg_pix_di_reg_n_0_[0] ));
  FDCE \reg_pix_di_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_di_reg[7]_0 [1]),
        .Q(reg_pix_di[1]));
  FDCE \reg_pix_di_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_di_reg[7]_0 [2]),
        .Q(reg_pix_di[2]));
  FDCE \reg_pix_di_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_di_reg[7]_0 [3]),
        .Q(reg_pix_di[3]));
  FDCE \reg_pix_di_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_di_reg[7]_0 [4]),
        .Q(reg_pix_di[4]));
  FDCE \reg_pix_di_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_di_reg[7]_0 [5]),
        .Q(reg_pix_di[5]));
  FDCE \reg_pix_di_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_di_reg[7]_0 [6]),
        .Q(reg_pix_di[6]));
  FDCE \reg_pix_di_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(\reg_pix_di_reg[7]_0 [7]),
        .Q(reg_pix_di[7]));
  FDCE reg_pix_valid_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_data_reg[39]_0 ),
        .D(pix_valid),
        .Q(reg_pix_valid));
  LUT4 #(
    .INIT(16'hBA8A)) 
    reg_vsync_i_1
       (.I0(reg_vsync0),
        .I1(reg_vsync_i_3_n_0),
        .I2(locked_reg_0),
        .I3(reg_vsync_reg_0),
        .O(reg_vsync_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    reg_vsync_i_2
       (.I0(reg_pix_di[2]),
        .I1(locked_reg_0),
        .I2(reg_pix_di[1]),
        .I3(\reg_pix_di_reg_n_0_[0] ),
        .I4(reg_vsync_i_4_n_0),
        .I5(reg_pix_di[3]),
        .O(reg_vsync0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    reg_vsync_i_3
       (.I0(reg_pix_di[5]),
        .I1(reg_pix_di[4]),
        .I2(reg_pix_di[3]),
        .I3(reg_pix_di[2]),
        .I4(reg_pix_di[1]),
        .I5(reg_vsync1__0),
        .O(reg_vsync_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    reg_vsync_i_4
       (.I0(reg_pix_di[5]),
        .I1(reg_pix_di[4]),
        .O(reg_vsync_i_4_n_0));
  LUT5 #(
    .INIT(32'h82000082)) 
    reg_vsync_i_5
       (.I0(reg_pix_valid),
        .I1(reg_pix_di[6]),
        .I2(locked_vc[0]),
        .I3(locked_vc[1]),
        .I4(reg_pix_di[7]),
        .O(reg_vsync1__0));
  FDPE reg_vsync_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .D(reg_vsync_i_1_n_0),
        .PRE(\reg_pix_data_reg[39]_0 ),
        .Q(reg_vsync_reg_0));
endmodule

(* ORIG_REF_NAME = "_csi2_raw10_unpack" *) 
module design_1_mipi_rx_to_video_0_0__csi2_raw10_unpack
   (raw10_pix_valid,
    pixel_enable3_out,
    raw10_pix_data_enable,
    last_size_reg,
    D,
    reg_pix_valid_reg_0,
    \ready_delay_reg[0]_0 ,
    \last_data_reg[31]_0 ,
    \last_size_reg[0]_0 ,
    \last_size_reg[0]_1 ,
    O,
    clk_hs_byte,
    \pixel_data_reg[0]_0 ,
    \pixel_data_reg[1]_0 ,
    \reg_pix_di_reg[7]_0 ,
    Q,
    \reg_pix_data_reg[31]_0 ,
    pkt_valid,
    \pixel_data_reg[39]_0 ,
    \pixel_data_reg[37]_0 ,
    \pixel_data_reg[35]_0 ,
    \pixel_data_reg[34]_0 ,
    \pixel_data_reg[33]_0 ,
    \pixel_data_reg[32]_0 ,
    \pixel_data_reg[38]_0 ,
    \pixel_data_reg[36]_0 ,
    \pixel_data_reg[17]_0 ,
    \di_reg_reg[7]_0 ,
    E,
    \last_data_reg[31]_1 ,
    \pixel_data_reg[31]_0 );
  output raw10_pix_valid;
  output pixel_enable3_out;
  output raw10_pix_data_enable;
  output [2:0]last_size_reg;
  output [5:0]D;
  output [39:0]reg_pix_valid_reg_0;
  output [0:0]\ready_delay_reg[0]_0 ;
  output [23:0]\last_data_reg[31]_0 ;
  output [2:0]\last_size_reg[0]_0 ;
  output [2:0]\last_size_reg[0]_1 ;
  output [2:0]O;
  input clk_hs_byte;
  input \pixel_data_reg[0]_0 ;
  input \pixel_data_reg[1]_0 ;
  input \reg_pix_di_reg[7]_0 ;
  input [5:0]Q;
  input [31:0]\reg_pix_data_reg[31]_0 ;
  input pkt_valid;
  input \pixel_data_reg[39]_0 ;
  input \pixel_data_reg[37]_0 ;
  input \pixel_data_reg[35]_0 ;
  input \pixel_data_reg[34]_0 ;
  input \pixel_data_reg[33]_0 ;
  input \pixel_data_reg[32]_0 ;
  input \pixel_data_reg[38]_0 ;
  input \pixel_data_reg[36]_0 ;
  input \pixel_data_reg[17]_0 ;
  input [2:0]\di_reg_reg[7]_0 ;
  input [0:0]E;
  input [31:0]\last_data_reg[31]_1 ;
  input [5:0]\pixel_data_reg[31]_0 ;

  wire [5:0]D;
  wire [0:0]E;
  wire [2:0]O;
  wire [5:0]Q;
  wire clk_hs_byte;
  wire [7:3]di_reg;
  wire [2:0]\di_reg_reg[7]_0 ;
  wire [25:0]last_data;
  wire [23:0]\last_data_reg[31]_0 ;
  wire [31:0]\last_data_reg[31]_1 ;
  wire [2:0]last_size_reg;
  wire [2:0]\last_size_reg[0]_0 ;
  wire [2:0]\last_size_reg[0]_1 ;
  wire p_0_in;
  wire [2:0]p_0_in__0;
  wire [39:0]pixel_data;
  wire \pixel_data[0]_i_1_n_0 ;
  wire \pixel_data[0]_i_2_n_0 ;
  wire \pixel_data[0]_i_3_n_0 ;
  wire \pixel_data[11]_i_5_n_0 ;
  wire \pixel_data[11]_i_6_n_0 ;
  wire \pixel_data[12]_i_1_n_0 ;
  wire \pixel_data[12]_i_2_n_0 ;
  wire \pixel_data[13]_i_1_n_0 ;
  wire \pixel_data[13]_i_2_n_0 ;
  wire \pixel_data[14]_i_1_n_0 ;
  wire \pixel_data[14]_i_2_n_0 ;
  wire \pixel_data[15]_i_1_n_0 ;
  wire \pixel_data[15]_i_2_n_0 ;
  wire \pixel_data[16]_i_1_n_0 ;
  wire \pixel_data[16]_i_2_n_0 ;
  wire \pixel_data[17]_i_1_n_0 ;
  wire \pixel_data[17]_i_2_n_0 ;
  wire \pixel_data[17]_i_3_n_0 ;
  wire \pixel_data[18]_i_1_n_0 ;
  wire \pixel_data[18]_i_2_n_0 ;
  wire \pixel_data[19]_i_1_n_0 ;
  wire \pixel_data[19]_i_2_n_0 ;
  wire \pixel_data[1]_i_1_n_0 ;
  wire \pixel_data[1]_i_2_n_0 ;
  wire \pixel_data[1]_i_3_n_0 ;
  wire \pixel_data[1]_i_4_n_0 ;
  wire \pixel_data[1]_i_5_n_0 ;
  wire \pixel_data[21]_i_5_n_0 ;
  wire \pixel_data[21]_i_6_n_0 ;
  wire \pixel_data[22]_i_1_n_0 ;
  wire \pixel_data[22]_i_2_n_0 ;
  wire \pixel_data[22]_i_3_n_0 ;
  wire \pixel_data[23]_i_1_n_0 ;
  wire \pixel_data[23]_i_2_n_0 ;
  wire \pixel_data[23]_i_3_n_0 ;
  wire \pixel_data[24]_i_1_n_0 ;
  wire \pixel_data[24]_i_2_n_0 ;
  wire \pixel_data[24]_i_3_n_0 ;
  wire \pixel_data[25]_i_1_n_0 ;
  wire \pixel_data[25]_i_2_n_0 ;
  wire \pixel_data[25]_i_3_n_0 ;
  wire \pixel_data[26]_i_1_n_0 ;
  wire \pixel_data[26]_i_2_n_0 ;
  wire \pixel_data[26]_i_3_n_0 ;
  wire \pixel_data[27]_i_1_n_0 ;
  wire \pixel_data[27]_i_2_n_0 ;
  wire \pixel_data[27]_i_3_n_0 ;
  wire \pixel_data[28]_i_1_n_0 ;
  wire \pixel_data[28]_i_2_n_0 ;
  wire \pixel_data[28]_i_3_n_0 ;
  wire \pixel_data[29]_i_1_n_0 ;
  wire \pixel_data[29]_i_2_n_0 ;
  wire \pixel_data[29]_i_3_n_0 ;
  wire \pixel_data[2]_i_1_n_0 ;
  wire \pixel_data[2]_i_2_n_0 ;
  wire \pixel_data[2]_i_3_n_0 ;
  wire \pixel_data[31]_i_5_n_0 ;
  wire \pixel_data[31]_i_6_n_0 ;
  wire \pixel_data[32]_i_1_n_0 ;
  wire \pixel_data[32]_i_2_n_0 ;
  wire \pixel_data[32]_i_3_n_0 ;
  wire \pixel_data[33]_i_1_n_0 ;
  wire \pixel_data[33]_i_2_n_0 ;
  wire \pixel_data[33]_i_3_n_0 ;
  wire \pixel_data[34]_i_1_n_0 ;
  wire \pixel_data[34]_i_2_n_0 ;
  wire \pixel_data[34]_i_3_n_0 ;
  wire \pixel_data[35]_i_1_n_0 ;
  wire \pixel_data[35]_i_2_n_0 ;
  wire \pixel_data[35]_i_3_n_0 ;
  wire \pixel_data[36]_i_1_n_0 ;
  wire \pixel_data[36]_i_3_n_0 ;
  wire \pixel_data[36]_i_4_n_0 ;
  wire \pixel_data[37]_i_1_n_0 ;
  wire \pixel_data[37]_i_2_n_0 ;
  wire \pixel_data[37]_i_3_n_0 ;
  wire \pixel_data[38]_i_1_n_0 ;
  wire \pixel_data[38]_i_3_n_0 ;
  wire \pixel_data[38]_i_4_n_0 ;
  wire \pixel_data[39]_i_1_n_0 ;
  wire \pixel_data[39]_i_2_n_0 ;
  wire \pixel_data[39]_i_3_n_0 ;
  wire \pixel_data[3]_i_1_n_0 ;
  wire \pixel_data[3]_i_2_n_0 ;
  wire \pixel_data[4]_i_1_n_0 ;
  wire \pixel_data[4]_i_2_n_0 ;
  wire \pixel_data[4]_i_3_n_0 ;
  wire \pixel_data[5]_i_1_n_0 ;
  wire \pixel_data[5]_i_2_n_0 ;
  wire \pixel_data[6]_i_1_n_0 ;
  wire \pixel_data[6]_i_2_n_0 ;
  wire \pixel_data[7]_i_1_n_0 ;
  wire \pixel_data[7]_i_2_n_0 ;
  wire \pixel_data[8]_i_1_n_0 ;
  wire \pixel_data[8]_i_2_n_0 ;
  wire \pixel_data[9]_i_1_n_0 ;
  wire \pixel_data[9]_i_2_n_0 ;
  wire \pixel_data_reg[0]_0 ;
  wire \pixel_data_reg[11]_i_3_n_5 ;
  wire \pixel_data_reg[11]_i_3_n_6 ;
  wire \pixel_data_reg[11]_i_3_n_7 ;
  wire \pixel_data_reg[17]_0 ;
  wire \pixel_data_reg[1]_0 ;
  wire \pixel_data_reg[21]_i_3_n_5 ;
  wire \pixel_data_reg[21]_i_3_n_6 ;
  wire \pixel_data_reg[21]_i_3_n_7 ;
  wire [5:0]\pixel_data_reg[31]_0 ;
  wire \pixel_data_reg[31]_i_3_n_5 ;
  wire \pixel_data_reg[31]_i_3_n_6 ;
  wire \pixel_data_reg[31]_i_3_n_7 ;
  wire \pixel_data_reg[32]_0 ;
  wire \pixel_data_reg[33]_0 ;
  wire \pixel_data_reg[34]_0 ;
  wire \pixel_data_reg[35]_0 ;
  wire \pixel_data_reg[36]_0 ;
  wire \pixel_data_reg[37]_0 ;
  wire \pixel_data_reg[38]_0 ;
  wire \pixel_data_reg[39]_0 ;
  wire pixel_enable;
  wire pixel_enable3_out;
  wire pkt_valid;
  wire [39:0]raw10_pix_data;
  wire raw10_pix_data_enable;
  wire [7:3]raw10_pix_di;
  wire raw10_pix_valid;
  wire [0:0]\ready_delay_reg[0]_0 ;
  wire \reg_pix_data[0]_i_1_n_0 ;
  wire \reg_pix_data[10]_i_1_n_0 ;
  wire \reg_pix_data[11]_i_1_n_0 ;
  wire \reg_pix_data[12]_i_1_n_0 ;
  wire \reg_pix_data[13]_i_1_n_0 ;
  wire \reg_pix_data[14]_i_1_n_0 ;
  wire \reg_pix_data[15]_i_1_n_0 ;
  wire \reg_pix_data[16]_i_1_n_0 ;
  wire \reg_pix_data[17]_i_1_n_0 ;
  wire \reg_pix_data[18]_i_1_n_0 ;
  wire \reg_pix_data[19]_i_1_n_0 ;
  wire \reg_pix_data[1]_i_1_n_0 ;
  wire \reg_pix_data[20]_i_1_n_0 ;
  wire \reg_pix_data[21]_i_1_n_0 ;
  wire \reg_pix_data[22]_i_1_n_0 ;
  wire \reg_pix_data[23]_i_1_n_0 ;
  wire \reg_pix_data[24]_i_1_n_0 ;
  wire \reg_pix_data[25]_i_1_n_0 ;
  wire \reg_pix_data[26]_i_1_n_0 ;
  wire \reg_pix_data[27]_i_1_n_0 ;
  wire \reg_pix_data[28]_i_1_n_0 ;
  wire \reg_pix_data[29]_i_1_n_0 ;
  wire \reg_pix_data[2]_i_1_n_0 ;
  wire \reg_pix_data[30]_i_1_n_0 ;
  wire \reg_pix_data[31]_i_1_n_0 ;
  wire \reg_pix_data[32]_i_1_n_0 ;
  wire \reg_pix_data[33]_i_1_n_0 ;
  wire \reg_pix_data[34]_i_1_n_0 ;
  wire \reg_pix_data[35]_i_1_n_0 ;
  wire \reg_pix_data[36]_i_1_n_0 ;
  wire \reg_pix_data[37]_i_1_n_0 ;
  wire \reg_pix_data[38]_i_1_n_0 ;
  wire \reg_pix_data[39]_i_1_n_0 ;
  wire \reg_pix_data[3]_i_1_n_0 ;
  wire \reg_pix_data[4]_i_1_n_0 ;
  wire \reg_pix_data[5]_i_1_n_0 ;
  wire \reg_pix_data[6]_i_1_n_0 ;
  wire \reg_pix_data[7]_i_1_n_0 ;
  wire \reg_pix_data[8]_i_1_n_0 ;
  wire \reg_pix_data[9]_i_1_n_0 ;
  wire reg_pix_data_enable0;
  wire [31:0]\reg_pix_data_reg[31]_0 ;
  wire \reg_pix_di[3]_i_1_n_0 ;
  wire \reg_pix_di[6]_i_1_n_0 ;
  wire \reg_pix_di[7]_i_1_n_0 ;
  wire \reg_pix_di_reg[7]_0 ;
  wire reg_pix_valid0;
  wire [39:0]reg_pix_valid_reg_0;
  wire [7:3]\NLW_pixel_data_reg[11]_i_3_CO_UNCONNECTED ;
  wire [7:0]\NLW_pixel_data_reg[11]_i_3_O_UNCONNECTED ;
  wire [7:3]\NLW_pixel_data_reg[21]_i_3_CO_UNCONNECTED ;
  wire [7:0]\NLW_pixel_data_reg[21]_i_3_O_UNCONNECTED ;
  wire [7:3]\NLW_pixel_data_reg[31]_i_3_CO_UNCONNECTED ;
  wire [7:0]\NLW_pixel_data_reg[31]_i_3_O_UNCONNECTED ;

  FDCE \di_reg_reg[3] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\di_reg_reg[7]_0 [0]),
        .Q(di_reg[3]));
  FDCE \di_reg_reg[6] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\di_reg_reg[7]_0 [1]),
        .Q(di_reg[6]));
  FDCE \di_reg_reg[7] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\di_reg_reg[7]_0 [2]),
        .Q(di_reg[7]));
  FDCE \last_data_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [0]),
        .Q(last_data[0]));
  FDCE \last_data_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [10]),
        .Q(\last_data_reg[31]_0 [6]));
  FDCE \last_data_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [11]),
        .Q(\last_data_reg[31]_0 [7]));
  FDCE \last_data_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [12]),
        .Q(\last_data_reg[31]_0 [8]));
  FDCE \last_data_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [13]),
        .Q(\last_data_reg[31]_0 [9]));
  FDCE \last_data_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [14]),
        .Q(\last_data_reg[31]_0 [10]));
  FDCE \last_data_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [15]),
        .Q(\last_data_reg[31]_0 [11]));
  FDCE \last_data_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [16]),
        .Q(last_data[16]));
  FDCE \last_data_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [17]),
        .Q(last_data[17]));
  FDCE \last_data_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [18]),
        .Q(\last_data_reg[31]_0 [12]));
  FDCE \last_data_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [19]),
        .Q(\last_data_reg[31]_0 [13]));
  FDCE \last_data_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [1]),
        .Q(last_data[1]));
  FDCE \last_data_reg[20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [20]),
        .Q(\last_data_reg[31]_0 [14]));
  FDCE \last_data_reg[21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [21]),
        .Q(\last_data_reg[31]_0 [15]));
  FDCE \last_data_reg[22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [22]),
        .Q(\last_data_reg[31]_0 [16]));
  FDCE \last_data_reg[23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [23]),
        .Q(\last_data_reg[31]_0 [17]));
  FDCE \last_data_reg[24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [24]),
        .Q(last_data[24]));
  FDCE \last_data_reg[25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [25]),
        .Q(last_data[25]));
  FDCE \last_data_reg[26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [26]),
        .Q(\last_data_reg[31]_0 [18]));
  FDCE \last_data_reg[27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [27]),
        .Q(\last_data_reg[31]_0 [19]));
  FDCE \last_data_reg[28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [28]),
        .Q(\last_data_reg[31]_0 [20]));
  FDCE \last_data_reg[29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [29]),
        .Q(\last_data_reg[31]_0 [21]));
  FDCE \last_data_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [2]),
        .Q(\last_data_reg[31]_0 [0]));
  FDCE \last_data_reg[30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [30]),
        .Q(\last_data_reg[31]_0 [22]));
  FDCE \last_data_reg[31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [31]),
        .Q(\last_data_reg[31]_0 [23]));
  FDCE \last_data_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [3]),
        .Q(\last_data_reg[31]_0 [1]));
  FDCE \last_data_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [4]),
        .Q(\last_data_reg[31]_0 [2]));
  FDCE \last_data_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [5]),
        .Q(\last_data_reg[31]_0 [3]));
  FDCE \last_data_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [6]),
        .Q(\last_data_reg[31]_0 [4]));
  FDCE \last_data_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [7]),
        .Q(\last_data_reg[31]_0 [5]));
  FDCE \last_data_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [8]),
        .Q(last_data[8]));
  FDCE \last_data_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\last_data_reg[31]_1 [9]),
        .Q(last_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \last_size[0]_i_1 
       (.I0(last_size_reg[1]),
        .I1(last_size_reg[2]),
        .I2(\pixel_data_reg[1]_0 ),
        .I3(last_size_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'h00A4)) 
    \last_size[1]_i_1 
       (.I0(last_size_reg[1]),
        .I1(last_size_reg[2]),
        .I2(last_size_reg[0]),
        .I3(\pixel_data_reg[1]_0 ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h5401)) 
    \last_size[2]_i_1 
       (.I0(\pixel_data_reg[1]_0 ),
        .I1(last_size_reg[1]),
        .I2(last_size_reg[0]),
        .I3(last_size_reg[2]),
        .O(p_0_in__0[2]));
  FDCE \last_size_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(p_0_in__0[0]),
        .Q(last_size_reg[0]));
  FDCE \last_size_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(p_0_in__0[1]),
        .Q(last_size_reg[1]));
  FDCE \last_size_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(p_0_in__0[2]),
        .Q(last_size_reg[2]));
  LUT6 #(
    .INIT(64'h1015101510151010)) 
    \pixel_data[0]_i_1 
       (.I0(\pixel_data_reg[1]_0 ),
        .I1(\pixel_data[0]_i_2_n_0 ),
        .I2(last_size_reg[0]),
        .I3(\pixel_data[0]_i_3_n_0 ),
        .I4(last_size_reg[1]),
        .I5(last_size_reg[2]),
        .O(\pixel_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \pixel_data[0]_i_2 
       (.I0(\reg_pix_data_reg[31]_0 [24]),
        .I1(last_data[24]),
        .I2(\pixel_data[1]_i_4_n_0 ),
        .I3(\reg_pix_data_reg[31]_0 [8]),
        .I4(\pixel_data[1]_i_5_n_0 ),
        .I5(last_data[8]),
        .O(\pixel_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \pixel_data[0]_i_3 
       (.I0(\reg_pix_data_reg[31]_0 [16]),
        .I1(last_data[16]),
        .I2(\pixel_data[1]_i_4_n_0 ),
        .I3(\reg_pix_data_reg[31]_0 [0]),
        .I4(\pixel_data[1]_i_5_n_0 ),
        .I5(last_data[0]),
        .O(\pixel_data[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \pixel_data[11]_i_5 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .O(\pixel_data[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pixel_data[11]_i_6 
       (.I0(last_size_reg[0]),
        .I1(last_size_reg[1]),
        .O(\pixel_data[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0003000333020002)) 
    \pixel_data[12]_i_1 
       (.I0(last_size_reg[0]),
        .I1(\pixel_data_reg[1]_0 ),
        .I2(\pixel_data[12]_i_2_n_0 ),
        .I3(last_size_reg[2]),
        .I4(\pixel_data[32]_i_2_n_0 ),
        .I5(last_size_reg[1]),
        .O(\pixel_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \pixel_data[12]_i_2 
       (.I0(last_data[16]),
        .I1(last_data[24]),
        .I2(\reg_pix_data_reg[31]_0 [0]),
        .I3(last_size_reg[0]),
        .I4(\reg_pix_data_reg[31]_0 [8]),
        .I5(last_size_reg[1]),
        .O(\pixel_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFA808)) 
    \pixel_data[13]_i_1 
       (.I0(\pixel_data[17]_i_2_n_0 ),
        .I1(last_data[9]),
        .I2(last_size_reg[0]),
        .I3(last_data[1]),
        .I4(\pixel_data[13]_i_2_n_0 ),
        .I5(\pixel_data_reg[1]_0 ),
        .O(\pixel_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT5 #(
    .INIT(32'h00CA00C0)) 
    \pixel_data[13]_i_2 
       (.I0(\reg_pix_data_reg[31]_0 [1]),
        .I1(\pixel_data[33]_i_3_n_0 ),
        .I2(last_size_reg[1]),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[0]),
        .O(\pixel_data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0003000333020002)) 
    \pixel_data[14]_i_1 
       (.I0(last_size_reg[0]),
        .I1(\pixel_data_reg[1]_0 ),
        .I2(\pixel_data[14]_i_2_n_0 ),
        .I3(last_size_reg[2]),
        .I4(\pixel_data[34]_i_2_n_0 ),
        .I5(last_size_reg[1]),
        .O(\pixel_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \pixel_data[14]_i_2 
       (.I0(\last_data_reg[31]_0 [12]),
        .I1(\last_data_reg[31]_0 [18]),
        .I2(\reg_pix_data_reg[31]_0 [2]),
        .I3(last_size_reg[0]),
        .I4(\reg_pix_data_reg[31]_0 [10]),
        .I5(last_size_reg[1]),
        .O(\pixel_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0030332000300020)) 
    \pixel_data[15]_i_1 
       (.I0(last_size_reg[0]),
        .I1(\pixel_data_reg[1]_0 ),
        .I2(\pixel_data[15]_i_2_n_0 ),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(\pixel_data[35]_i_2_n_0 ),
        .O(\pixel_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[15]_i_2 
       (.I0(\last_data_reg[31]_0 [13]),
        .I1(\last_data_reg[31]_0 [19]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[31]_0 [3]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [11]),
        .O(\pixel_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFA808)) 
    \pixel_data[16]_i_1 
       (.I0(\pixel_data[17]_i_2_n_0 ),
        .I1(\last_data_reg[31]_0 [8]),
        .I2(last_size_reg[0]),
        .I3(\last_data_reg[31]_0 [2]),
        .I4(\pixel_data[16]_i_2_n_0 ),
        .I5(\pixel_data_reg[1]_0 ),
        .O(\pixel_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT5 #(
    .INIT(32'h00CA00C0)) 
    \pixel_data[16]_i_2 
       (.I0(\reg_pix_data_reg[31]_0 [4]),
        .I1(\pixel_data[36]_i_3_n_0 ),
        .I2(last_size_reg[1]),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[0]),
        .O(\pixel_data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFA808)) 
    \pixel_data[17]_i_1 
       (.I0(\pixel_data[17]_i_2_n_0 ),
        .I1(\last_data_reg[31]_0 [9]),
        .I2(last_size_reg[0]),
        .I3(\last_data_reg[31]_0 [3]),
        .I4(\pixel_data[17]_i_3_n_0 ),
        .I5(\pixel_data_reg[1]_0 ),
        .O(\pixel_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_data[17]_i_2 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[1]),
        .O(\pixel_data[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AFA00000C0C0)) 
    \pixel_data[17]_i_3 
       (.I0(\last_data_reg[31]_0 [15]),
        .I1(\last_data_reg[31]_0 [21]),
        .I2(last_size_reg[1]),
        .I3(\pixel_data_reg[17]_0 ),
        .I4(last_size_reg[2]),
        .I5(last_size_reg[0]),
        .O(\pixel_data[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0003000333020002)) 
    \pixel_data[18]_i_1 
       (.I0(last_size_reg[0]),
        .I1(\pixel_data_reg[1]_0 ),
        .I2(\pixel_data[18]_i_2_n_0 ),
        .I3(last_size_reg[2]),
        .I4(\pixel_data[38]_i_3_n_0 ),
        .I5(last_size_reg[1]),
        .O(\pixel_data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \pixel_data[18]_i_2 
       (.I0(\last_data_reg[31]_0 [16]),
        .I1(\last_data_reg[31]_0 [22]),
        .I2(\reg_pix_data_reg[31]_0 [6]),
        .I3(last_size_reg[0]),
        .I4(\reg_pix_data_reg[31]_0 [14]),
        .I5(last_size_reg[1]),
        .O(\pixel_data[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0030332000300020)) 
    \pixel_data[19]_i_1 
       (.I0(last_size_reg[0]),
        .I1(\pixel_data_reg[1]_0 ),
        .I2(\pixel_data[19]_i_2_n_0 ),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(\pixel_data[39]_i_2_n_0 ),
        .O(\pixel_data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[19]_i_2 
       (.I0(\last_data_reg[31]_0 [17]),
        .I1(\last_data_reg[31]_0 [23]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[31]_0 [7]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [15]),
        .O(\pixel_data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1015101510151010)) 
    \pixel_data[1]_i_1 
       (.I0(\pixel_data_reg[1]_0 ),
        .I1(\pixel_data[1]_i_2_n_0 ),
        .I2(last_size_reg[0]),
        .I3(\pixel_data[1]_i_3_n_0 ),
        .I4(last_size_reg[1]),
        .I5(last_size_reg[2]),
        .O(\pixel_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \pixel_data[1]_i_2 
       (.I0(\reg_pix_data_reg[31]_0 [25]),
        .I1(last_data[25]),
        .I2(\pixel_data[1]_i_4_n_0 ),
        .I3(\reg_pix_data_reg[31]_0 [9]),
        .I4(\pixel_data[1]_i_5_n_0 ),
        .I5(last_data[9]),
        .O(\pixel_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \pixel_data[1]_i_3 
       (.I0(\reg_pix_data_reg[31]_0 [17]),
        .I1(last_data[17]),
        .I2(\pixel_data[1]_i_4_n_0 ),
        .I3(\reg_pix_data_reg[31]_0 [1]),
        .I4(\pixel_data[1]_i_5_n_0 ),
        .I5(last_data[1]),
        .O(\pixel_data[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pixel_data[1]_i_4 
       (.I0(last_size_reg[0]),
        .I1(last_size_reg[1]),
        .O(\pixel_data[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \pixel_data[1]_i_5 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .O(\pixel_data[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \pixel_data[21]_i_5 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .O(\pixel_data[21]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pixel_data[21]_i_6 
       (.I0(last_size_reg[0]),
        .I1(last_size_reg[1]),
        .O(\pixel_data[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F000E0E0F000E00)) 
    \pixel_data[22]_i_1 
       (.I0(last_size_reg[0]),
        .I1(last_size_reg[1]),
        .I2(\pixel_data_reg[1]_0 ),
        .I3(\pixel_data[22]_i_2_n_0 ),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[22]_i_3_n_0 ),
        .O(\pixel_data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00AC000000AC00)) 
    \pixel_data[22]_i_2 
       (.I0(last_data[8]),
        .I1(last_data[16]),
        .I2(last_size_reg[0]),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(last_data[0]),
        .O(\pixel_data[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[22]_i_3 
       (.I0(last_data[24]),
        .I1(\reg_pix_data_reg[31]_0 [0]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[31]_0 [8]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [16]),
        .O(\pixel_data[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000E0E0F000E00)) 
    \pixel_data[23]_i_1 
       (.I0(last_size_reg[0]),
        .I1(last_size_reg[1]),
        .I2(\pixel_data_reg[1]_0 ),
        .I3(\pixel_data[23]_i_2_n_0 ),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[23]_i_3_n_0 ),
        .O(\pixel_data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00ACAC00000000)) 
    \pixel_data[23]_i_2 
       (.I0(last_data[9]),
        .I1(last_data[17]),
        .I2(last_size_reg[0]),
        .I3(last_data[1]),
        .I4(last_size_reg[1]),
        .I5(last_size_reg[2]),
        .O(\pixel_data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[23]_i_3 
       (.I0(last_data[25]),
        .I1(\reg_pix_data_reg[31]_0 [1]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[31]_0 [9]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [17]),
        .O(\pixel_data[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000E0E0F000E00)) 
    \pixel_data[24]_i_1 
       (.I0(last_size_reg[0]),
        .I1(last_size_reg[1]),
        .I2(\pixel_data_reg[1]_0 ),
        .I3(\pixel_data[24]_i_2_n_0 ),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[24]_i_3_n_0 ),
        .O(\pixel_data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0000CFC00000)) 
    \pixel_data[24]_i_2 
       (.I0(\last_data_reg[31]_0 [0]),
        .I1(\last_data_reg[31]_0 [6]),
        .I2(last_size_reg[0]),
        .I3(\last_data_reg[31]_0 [12]),
        .I4(last_size_reg[2]),
        .I5(last_size_reg[1]),
        .O(\pixel_data[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[24]_i_3 
       (.I0(\last_data_reg[31]_0 [18]),
        .I1(\reg_pix_data_reg[31]_0 [2]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[31]_0 [10]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [18]),
        .O(\pixel_data[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000E0E0F000E00)) 
    \pixel_data[25]_i_1 
       (.I0(last_size_reg[0]),
        .I1(last_size_reg[1]),
        .I2(\pixel_data_reg[1]_0 ),
        .I3(\pixel_data[25]_i_2_n_0 ),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[25]_i_3_n_0 ),
        .O(\pixel_data[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0000CFC00000)) 
    \pixel_data[25]_i_2 
       (.I0(\last_data_reg[31]_0 [1]),
        .I1(\last_data_reg[31]_0 [7]),
        .I2(last_size_reg[0]),
        .I3(\last_data_reg[31]_0 [13]),
        .I4(last_size_reg[2]),
        .I5(last_size_reg[1]),
        .O(\pixel_data[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[25]_i_3 
       (.I0(\last_data_reg[31]_0 [19]),
        .I1(\reg_pix_data_reg[31]_0 [3]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[31]_0 [11]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [19]),
        .O(\pixel_data[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4444555444444444)) 
    \pixel_data[26]_i_1 
       (.I0(\pixel_data_reg[1]_0 ),
        .I1(\pixel_data[26]_i_2_n_0 ),
        .I2(last_size_reg[1]),
        .I3(last_size_reg[0]),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[26]_i_3_n_0 ),
        .O(\pixel_data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00AC000000AC00)) 
    \pixel_data[26]_i_2 
       (.I0(\last_data_reg[31]_0 [8]),
        .I1(\last_data_reg[31]_0 [14]),
        .I2(last_size_reg[0]),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(\last_data_reg[31]_0 [2]),
        .O(\pixel_data[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[26]_i_3 
       (.I0(\last_data_reg[31]_0 [20]),
        .I1(\reg_pix_data_reg[31]_0 [4]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[31]_0 [12]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [20]),
        .O(\pixel_data[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000E0E0F000E00)) 
    \pixel_data[27]_i_1 
       (.I0(last_size_reg[0]),
        .I1(last_size_reg[1]),
        .I2(\pixel_data_reg[1]_0 ),
        .I3(\pixel_data[27]_i_2_n_0 ),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[27]_i_3_n_0 ),
        .O(\pixel_data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00ACAC00000000)) 
    \pixel_data[27]_i_2 
       (.I0(\last_data_reg[31]_0 [9]),
        .I1(\last_data_reg[31]_0 [15]),
        .I2(last_size_reg[0]),
        .I3(\last_data_reg[31]_0 [3]),
        .I4(last_size_reg[1]),
        .I5(last_size_reg[2]),
        .O(\pixel_data[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[27]_i_3 
       (.I0(\last_data_reg[31]_0 [21]),
        .I1(\reg_pix_data_reg[31]_0 [5]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[31]_0 [13]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [21]),
        .O(\pixel_data[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000E0E0F000E00)) 
    \pixel_data[28]_i_1 
       (.I0(last_size_reg[0]),
        .I1(last_size_reg[1]),
        .I2(\pixel_data_reg[1]_0 ),
        .I3(\pixel_data[28]_i_2_n_0 ),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[28]_i_3_n_0 ),
        .O(\pixel_data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00AC000000AC00)) 
    \pixel_data[28]_i_2 
       (.I0(\last_data_reg[31]_0 [10]),
        .I1(\last_data_reg[31]_0 [16]),
        .I2(last_size_reg[0]),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(\last_data_reg[31]_0 [4]),
        .O(\pixel_data[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[28]_i_3 
       (.I0(\last_data_reg[31]_0 [22]),
        .I1(\reg_pix_data_reg[31]_0 [6]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[31]_0 [14]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [22]),
        .O(\pixel_data[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000E0E0F000E00)) 
    \pixel_data[29]_i_1 
       (.I0(last_size_reg[0]),
        .I1(last_size_reg[1]),
        .I2(\pixel_data_reg[1]_0 ),
        .I3(\pixel_data[29]_i_2_n_0 ),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[29]_i_3_n_0 ),
        .O(\pixel_data[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00AC000000AC00)) 
    \pixel_data[29]_i_2 
       (.I0(\last_data_reg[31]_0 [11]),
        .I1(\last_data_reg[31]_0 [17]),
        .I2(last_size_reg[0]),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(\last_data_reg[31]_0 [5]),
        .O(\pixel_data[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[29]_i_3 
       (.I0(\last_data_reg[31]_0 [23]),
        .I1(\reg_pix_data_reg[31]_0 [7]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[31]_0 [15]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [23]),
        .O(\pixel_data[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF1000)) 
    \pixel_data[2]_i_1 
       (.I0(last_size_reg[1]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[2]),
        .I3(last_data[0]),
        .I4(\pixel_data[2]_i_2_n_0 ),
        .I5(\pixel_data_reg[1]_0 ),
        .O(\pixel_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AFA00000C0C0)) 
    \pixel_data[2]_i_2 
       (.I0(last_data[8]),
        .I1(last_data[16]),
        .I2(last_size_reg[1]),
        .I3(\pixel_data[2]_i_3_n_0 ),
        .I4(last_size_reg[2]),
        .I5(last_size_reg[0]),
        .O(\pixel_data[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[2]_i_3 
       (.I0(last_data[24]),
        .I1(last_size_reg[0]),
        .I2(\reg_pix_data_reg[31]_0 [0]),
        .O(\pixel_data[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \pixel_data[31]_i_5 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .O(\pixel_data[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pixel_data[31]_i_6 
       (.I0(last_size_reg[0]),
        .I1(last_size_reg[1]),
        .O(\pixel_data[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88AAA0AA8800A000)) 
    \pixel_data[32]_i_1 
       (.I0(pixel_enable3_out),
        .I1(\pixel_data[32]_i_2_n_0 ),
        .I2(\pixel_data[32]_i_3_n_0 ),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(\pixel_data_reg[32]_0 ),
        .O(\pixel_data[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[32]_i_2 
       (.I0(last_data[0]),
        .I1(last_size_reg[0]),
        .I2(last_data[8]),
        .O(\pixel_data[32]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[32]_i_3 
       (.I0(last_data[16]),
        .I1(last_size_reg[0]),
        .I2(last_data[24]),
        .O(\pixel_data[32]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88AAA0AA8800A000)) 
    \pixel_data[33]_i_1 
       (.I0(pixel_enable3_out),
        .I1(\pixel_data[33]_i_2_n_0 ),
        .I2(\pixel_data[33]_i_3_n_0 ),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(\pixel_data_reg[33]_0 ),
        .O(\pixel_data[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[33]_i_2 
       (.I0(last_data[1]),
        .I1(last_size_reg[0]),
        .I2(last_data[9]),
        .O(\pixel_data[33]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[33]_i_3 
       (.I0(last_data[17]),
        .I1(last_size_reg[0]),
        .I2(last_data[25]),
        .O(\pixel_data[33]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88AAA0AA8800A000)) 
    \pixel_data[34]_i_1 
       (.I0(pixel_enable3_out),
        .I1(\pixel_data[34]_i_2_n_0 ),
        .I2(\pixel_data[34]_i_3_n_0 ),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(\pixel_data_reg[34]_0 ),
        .O(\pixel_data[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[34]_i_2 
       (.I0(\last_data_reg[31]_0 [0]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [6]),
        .O(\pixel_data[34]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[34]_i_3 
       (.I0(\last_data_reg[31]_0 [12]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [18]),
        .O(\pixel_data[34]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88AAA0AA8800A000)) 
    \pixel_data[35]_i_1 
       (.I0(pixel_enable3_out),
        .I1(\pixel_data[35]_i_2_n_0 ),
        .I2(\pixel_data[35]_i_3_n_0 ),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(\pixel_data_reg[35]_0 ),
        .O(\pixel_data[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[35]_i_2 
       (.I0(\last_data_reg[31]_0 [1]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [7]),
        .O(\pixel_data[35]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[35]_i_3 
       (.I0(\last_data_reg[31]_0 [13]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [19]),
        .O(\pixel_data[35]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FD555D55)) 
    \pixel_data[36]_i_1 
       (.I0(\pixel_data_reg[36]_0 ),
        .I1(\pixel_data[36]_i_3_n_0 ),
        .I2(last_size_reg[1]),
        .I3(last_size_reg[2]),
        .I4(\pixel_data[36]_i_4_n_0 ),
        .I5(\pixel_data_reg[1]_0 ),
        .O(\pixel_data[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[36]_i_3 
       (.I0(\last_data_reg[31]_0 [14]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [20]),
        .O(\pixel_data[36]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[36]_i_4 
       (.I0(\last_data_reg[31]_0 [2]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [8]),
        .O(\pixel_data[36]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88AAA0AA8800A000)) 
    \pixel_data[37]_i_1 
       (.I0(pixel_enable3_out),
        .I1(\pixel_data[37]_i_2_n_0 ),
        .I2(\pixel_data[37]_i_3_n_0 ),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(\pixel_data_reg[37]_0 ),
        .O(\pixel_data[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[37]_i_2 
       (.I0(\last_data_reg[31]_0 [3]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [9]),
        .O(\pixel_data[37]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[37]_i_3 
       (.I0(\last_data_reg[31]_0 [15]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [21]),
        .O(\pixel_data[37]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DD55F555)) 
    \pixel_data[38]_i_1 
       (.I0(\pixel_data_reg[38]_0 ),
        .I1(\pixel_data[38]_i_3_n_0 ),
        .I2(\pixel_data[38]_i_4_n_0 ),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(\pixel_data_reg[1]_0 ),
        .O(\pixel_data[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[38]_i_3 
       (.I0(\last_data_reg[31]_0 [4]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [10]),
        .O(\pixel_data[38]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[38]_i_4 
       (.I0(\last_data_reg[31]_0 [16]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [22]),
        .O(\pixel_data[38]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88AAA0AA8800A000)) 
    \pixel_data[39]_i_1 
       (.I0(pixel_enable3_out),
        .I1(\pixel_data[39]_i_2_n_0 ),
        .I2(\pixel_data[39]_i_3_n_0 ),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(\pixel_data_reg[39]_0 ),
        .O(\pixel_data[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[39]_i_2 
       (.I0(\last_data_reg[31]_0 [5]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [11]),
        .O(\pixel_data[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[39]_i_3 
       (.I0(\last_data_reg[31]_0 [17]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [23]),
        .O(\pixel_data[39]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101010101500100)) 
    \pixel_data[3]_i_1 
       (.I0(\pixel_data_reg[1]_0 ),
        .I1(\pixel_data[3]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[0]),
        .I4(last_data[1]),
        .I5(last_size_reg[1]),
        .O(\pixel_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \pixel_data[3]_i_2 
       (.I0(last_data[9]),
        .I1(last_data[17]),
        .I2(last_data[25]),
        .I3(last_size_reg[0]),
        .I4(\reg_pix_data_reg[31]_0 [1]),
        .I5(last_size_reg[1]),
        .O(\pixel_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF1000)) 
    \pixel_data[4]_i_1 
       (.I0(last_size_reg[1]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[2]),
        .I3(\last_data_reg[31]_0 [0]),
        .I4(\pixel_data[4]_i_2_n_0 ),
        .I5(\pixel_data_reg[1]_0 ),
        .O(\pixel_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AFA00000C0C0)) 
    \pixel_data[4]_i_2 
       (.I0(\last_data_reg[31]_0 [6]),
        .I1(\last_data_reg[31]_0 [12]),
        .I2(last_size_reg[1]),
        .I3(\pixel_data[4]_i_3_n_0 ),
        .I4(last_size_reg[2]),
        .I5(last_size_reg[0]),
        .O(\pixel_data[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pixel_data[4]_i_3 
       (.I0(\last_data_reg[31]_0 [18]),
        .I1(last_size_reg[0]),
        .I2(\reg_pix_data_reg[31]_0 [2]),
        .O(\pixel_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0404045004040400)) 
    \pixel_data[5]_i_1 
       (.I0(\pixel_data_reg[1]_0 ),
        .I1(\pixel_data[5]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[0]),
        .I5(\last_data_reg[31]_0 [1]),
        .O(\pixel_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[5]_i_2 
       (.I0(\last_data_reg[31]_0 [7]),
        .I1(\last_data_reg[31]_0 [13]),
        .I2(last_size_reg[1]),
        .I3(\last_data_reg[31]_0 [19]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [3]),
        .O(\pixel_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0404045004040400)) 
    \pixel_data[6]_i_1 
       (.I0(\pixel_data_reg[1]_0 ),
        .I1(\pixel_data[6]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[0]),
        .I5(\last_data_reg[31]_0 [2]),
        .O(\pixel_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[6]_i_2 
       (.I0(\last_data_reg[31]_0 [8]),
        .I1(\last_data_reg[31]_0 [14]),
        .I2(last_size_reg[1]),
        .I3(\last_data_reg[31]_0 [20]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [4]),
        .O(\pixel_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101010101500100)) 
    \pixel_data[7]_i_1 
       (.I0(\pixel_data_reg[1]_0 ),
        .I1(\pixel_data[7]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[0]),
        .I4(\last_data_reg[31]_0 [3]),
        .I5(last_size_reg[1]),
        .O(\pixel_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \pixel_data[7]_i_2 
       (.I0(\last_data_reg[31]_0 [21]),
        .I1(\reg_pix_data_reg[31]_0 [5]),
        .I2(\last_data_reg[31]_0 [9]),
        .I3(last_size_reg[0]),
        .I4(\last_data_reg[31]_0 [15]),
        .I5(last_size_reg[1]),
        .O(\pixel_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0404045004040400)) 
    \pixel_data[8]_i_1 
       (.I0(\pixel_data_reg[1]_0 ),
        .I1(\pixel_data[8]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[0]),
        .I5(\last_data_reg[31]_0 [4]),
        .O(\pixel_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[8]_i_2 
       (.I0(\last_data_reg[31]_0 [10]),
        .I1(\last_data_reg[31]_0 [16]),
        .I2(last_size_reg[1]),
        .I3(\last_data_reg[31]_0 [22]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[31]_0 [6]),
        .O(\pixel_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF1000)) 
    \pixel_data[9]_i_1 
       (.I0(last_size_reg[1]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[2]),
        .I3(\last_data_reg[31]_0 [5]),
        .I4(\pixel_data[9]_i_2_n_0 ),
        .I5(\pixel_data_reg[1]_0 ),
        .O(\pixel_data[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8CC00)) 
    \pixel_data[9]_i_2 
       (.I0(\last_data_reg[31]_0 [11]),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg[31]_0 [17]),
        .I3(\last_data_reg[31]_0 [23]),
        .I4(last_size_reg[1]),
        .I5(last_size_reg[2]),
        .O(\pixel_data[9]_i_2_n_0 ));
  FDCE \pixel_data_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[0]_i_1_n_0 ),
        .Q(pixel_data[0]));
  FDCE \pixel_data_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data_reg[31]_0 [0]),
        .Q(pixel_data[10]));
  FDCE \pixel_data_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data_reg[31]_0 [1]),
        .Q(pixel_data[11]));
  CARRY8 \pixel_data_reg[11]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_pixel_data_reg[11]_i_3_CO_UNCONNECTED [7:3],\pixel_data_reg[11]_i_3_n_5 ,\pixel_data_reg[11]_i_3_n_6 ,\pixel_data_reg[11]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,last_size_reg[0],1'b0}),
        .O({\NLW_pixel_data_reg[11]_i_3_O_UNCONNECTED [7:4],\last_size_reg[0]_0 ,\NLW_pixel_data_reg[11]_i_3_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,1'b0,1'b0,\pixel_data[11]_i_5_n_0 ,\pixel_data[11]_i_6_n_0 ,last_size_reg[0],1'b0}));
  FDCE \pixel_data_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[12]_i_1_n_0 ),
        .Q(pixel_data[12]));
  FDCE \pixel_data_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[13]_i_1_n_0 ),
        .Q(pixel_data[13]));
  FDCE \pixel_data_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[14]_i_1_n_0 ),
        .Q(pixel_data[14]));
  FDCE \pixel_data_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[15]_i_1_n_0 ),
        .Q(pixel_data[15]));
  FDCE \pixel_data_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[16]_i_1_n_0 ),
        .Q(pixel_data[16]));
  FDCE \pixel_data_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[17]_i_1_n_0 ),
        .Q(pixel_data[17]));
  FDCE \pixel_data_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[18]_i_1_n_0 ),
        .Q(pixel_data[18]));
  FDCE \pixel_data_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[19]_i_1_n_0 ),
        .Q(pixel_data[19]));
  FDCE \pixel_data_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[1]_i_1_n_0 ),
        .Q(pixel_data[1]));
  FDCE \pixel_data_reg[20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data_reg[31]_0 [2]),
        .Q(pixel_data[20]));
  FDCE \pixel_data_reg[21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data_reg[31]_0 [3]),
        .Q(pixel_data[21]));
  CARRY8 \pixel_data_reg[21]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_pixel_data_reg[21]_i_3_CO_UNCONNECTED [7:3],\pixel_data_reg[21]_i_3_n_5 ,\pixel_data_reg[21]_i_3_n_6 ,\pixel_data_reg[21]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,last_size_reg[0],1'b0}),
        .O({\NLW_pixel_data_reg[21]_i_3_O_UNCONNECTED [7:4],\last_size_reg[0]_1 ,\NLW_pixel_data_reg[21]_i_3_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,1'b0,1'b0,\pixel_data[21]_i_5_n_0 ,\pixel_data[21]_i_6_n_0 ,last_size_reg[0],1'b1}));
  FDCE \pixel_data_reg[22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[22]_i_1_n_0 ),
        .Q(pixel_data[22]));
  FDCE \pixel_data_reg[23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[23]_i_1_n_0 ),
        .Q(pixel_data[23]));
  FDCE \pixel_data_reg[24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[24]_i_1_n_0 ),
        .Q(pixel_data[24]));
  FDCE \pixel_data_reg[25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[25]_i_1_n_0 ),
        .Q(pixel_data[25]));
  FDCE \pixel_data_reg[26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[26]_i_1_n_0 ),
        .Q(pixel_data[26]));
  FDCE \pixel_data_reg[27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[27]_i_1_n_0 ),
        .Q(pixel_data[27]));
  FDCE \pixel_data_reg[28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[28]_i_1_n_0 ),
        .Q(pixel_data[28]));
  FDCE \pixel_data_reg[29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[29]_i_1_n_0 ),
        .Q(pixel_data[29]));
  FDCE \pixel_data_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[2]_i_1_n_0 ),
        .Q(pixel_data[2]));
  FDCE \pixel_data_reg[30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data_reg[31]_0 [4]),
        .Q(pixel_data[30]));
  FDCE \pixel_data_reg[31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data_reg[31]_0 [5]),
        .Q(pixel_data[31]));
  CARRY8 \pixel_data_reg[31]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_pixel_data_reg[31]_i_3_CO_UNCONNECTED [7:3],\pixel_data_reg[31]_i_3_n_5 ,\pixel_data_reg[31]_i_3_n_6 ,\pixel_data_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,last_size_reg[0],1'b0}),
        .O({\NLW_pixel_data_reg[31]_i_3_O_UNCONNECTED [7:4],O,\NLW_pixel_data_reg[31]_i_3_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,1'b0,1'b0,\pixel_data[31]_i_5_n_0 ,\pixel_data[31]_i_6_n_0 ,last_size_reg[0],1'b1}));
  FDCE \pixel_data_reg[32] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[32]_i_1_n_0 ),
        .Q(pixel_data[32]));
  FDCE \pixel_data_reg[33] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[33]_i_1_n_0 ),
        .Q(pixel_data[33]));
  FDCE \pixel_data_reg[34] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[34]_i_1_n_0 ),
        .Q(pixel_data[34]));
  FDCE \pixel_data_reg[35] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[35]_i_1_n_0 ),
        .Q(pixel_data[35]));
  FDCE \pixel_data_reg[36] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[36]_i_1_n_0 ),
        .Q(pixel_data[36]));
  FDCE \pixel_data_reg[37] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[37]_i_1_n_0 ),
        .Q(pixel_data[37]));
  FDCE \pixel_data_reg[38] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[38]_i_1_n_0 ),
        .Q(pixel_data[38]));
  FDCE \pixel_data_reg[39] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[39]_i_1_n_0 ),
        .Q(pixel_data[39]));
  FDCE \pixel_data_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[3]_i_1_n_0 ),
        .Q(pixel_data[3]));
  FDCE \pixel_data_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[4]_i_1_n_0 ),
        .Q(pixel_data[4]));
  FDCE \pixel_data_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[5]_i_1_n_0 ),
        .Q(pixel_data[5]));
  FDCE \pixel_data_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[6]_i_1_n_0 ),
        .Q(pixel_data[6]));
  FDCE \pixel_data_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[7]_i_1_n_0 ),
        .Q(pixel_data[7]));
  FDCE \pixel_data_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[8]_i_1_n_0 ),
        .Q(pixel_data[8]));
  FDCE \pixel_data_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\pixel_data[9]_i_1_n_0 ),
        .Q(pixel_data[9]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8F8F800)) 
    pixel_enable_i_1
       (.I0(pkt_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\ready_delay_reg[0]_0 ),
        .I3(last_size_reg[2]),
        .I4(last_size_reg[1]),
        .I5(last_size_reg[0]),
        .O(pixel_enable3_out));
  FDCE pixel_enable_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(pixel_enable3_out),
        .Q(pixel_enable));
  FDCE \ready_delay_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\di_reg_reg[7]_0 [0]),
        .Q(\ready_delay_reg[0]_0 ));
  FDCE \ready_delay_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\ready_delay_reg[0]_0 ),
        .Q(p_0_in));
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[0]_i_1 
       (.I0(pixel_data[0]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[0]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [0]),
        .I3(raw10_pix_data[0]),
        .O(reg_pix_valid_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[10]_i_1 
       (.I0(pixel_data[10]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[10]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [10]),
        .I3(raw10_pix_data[10]),
        .O(reg_pix_valid_reg_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[11]_i_1 
       (.I0(pixel_data[11]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[11]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [11]),
        .I3(raw10_pix_data[11]),
        .O(reg_pix_valid_reg_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[12]_i_1 
       (.I0(pixel_data[12]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[12]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [12]),
        .I3(raw10_pix_data[12]),
        .O(reg_pix_valid_reg_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[13]_i_1 
       (.I0(pixel_data[13]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[13]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [13]),
        .I3(raw10_pix_data[13]),
        .O(reg_pix_valid_reg_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[14]_i_1 
       (.I0(pixel_data[14]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[14]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [14]),
        .I3(raw10_pix_data[14]),
        .O(reg_pix_valid_reg_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[15]_i_1 
       (.I0(pixel_data[15]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[15]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [15]),
        .I3(raw10_pix_data[15]),
        .O(reg_pix_valid_reg_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[16]_i_1 
       (.I0(pixel_data[16]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[16]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [16]),
        .I3(raw10_pix_data[16]),
        .O(reg_pix_valid_reg_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[17]_i_1 
       (.I0(pixel_data[17]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[17]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [17]),
        .I3(raw10_pix_data[17]),
        .O(reg_pix_valid_reg_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[18]_i_1 
       (.I0(pixel_data[18]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[18]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [18]),
        .I3(raw10_pix_data[18]),
        .O(reg_pix_valid_reg_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[19]_i_1 
       (.I0(pixel_data[19]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[19]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [19]),
        .I3(raw10_pix_data[19]),
        .O(reg_pix_valid_reg_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[1]_i_1 
       (.I0(pixel_data[1]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[1]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [1]),
        .I3(raw10_pix_data[1]),
        .O(reg_pix_valid_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[20]_i_1 
       (.I0(pixel_data[20]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[20]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [20]),
        .I3(raw10_pix_data[20]),
        .O(reg_pix_valid_reg_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[21]_i_1 
       (.I0(pixel_data[21]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[21]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [21]),
        .I3(raw10_pix_data[21]),
        .O(reg_pix_valid_reg_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[22]_i_1 
       (.I0(pixel_data[22]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[22]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [22]),
        .I3(raw10_pix_data[22]),
        .O(reg_pix_valid_reg_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[23]_i_1 
       (.I0(pixel_data[23]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[23]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [23]),
        .I3(raw10_pix_data[23]),
        .O(reg_pix_valid_reg_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[24]_i_1 
       (.I0(pixel_data[24]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[24]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [24]),
        .I3(raw10_pix_data[24]),
        .O(reg_pix_valid_reg_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[25]_i_1 
       (.I0(pixel_data[25]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[25]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [25]),
        .I3(raw10_pix_data[25]),
        .O(reg_pix_valid_reg_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[26]_i_1 
       (.I0(pixel_data[26]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[26]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [26]),
        .I3(raw10_pix_data[26]),
        .O(reg_pix_valid_reg_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[27]_i_1 
       (.I0(pixel_data[27]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[27]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [27]),
        .I3(raw10_pix_data[27]),
        .O(reg_pix_valid_reg_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[28]_i_1 
       (.I0(pixel_data[28]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[28]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [28]),
        .I3(raw10_pix_data[28]),
        .O(reg_pix_valid_reg_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[29]_i_1 
       (.I0(pixel_data[29]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[29]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [29]),
        .I3(raw10_pix_data[29]),
        .O(reg_pix_valid_reg_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[2]_i_1 
       (.I0(pixel_data[2]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[2]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [2]),
        .I3(raw10_pix_data[2]),
        .O(reg_pix_valid_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[30]_i_1 
       (.I0(pixel_data[30]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[30]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [30]),
        .I3(raw10_pix_data[30]),
        .O(reg_pix_valid_reg_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[31]_i_1 
       (.I0(pixel_data[31]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[31]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [31]),
        .I3(raw10_pix_data[31]),
        .O(reg_pix_valid_reg_0[31]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[32]_i_1 
       (.I0(pixel_data[32]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_pix_data[32]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(raw10_pix_data[32]),
        .O(reg_pix_valid_reg_0[32]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[33]_i_1 
       (.I0(pixel_data[33]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_pix_data[33]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(raw10_pix_data[33]),
        .O(reg_pix_valid_reg_0[33]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[34]_i_1 
       (.I0(pixel_data[34]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_pix_data[34]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(raw10_pix_data[34]),
        .O(reg_pix_valid_reg_0[34]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[35]_i_1 
       (.I0(pixel_data[35]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_pix_data[35]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(raw10_pix_data[35]),
        .O(reg_pix_valid_reg_0[35]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[36]_i_1 
       (.I0(pixel_data[36]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_pix_data[36]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(raw10_pix_data[36]),
        .O(reg_pix_valid_reg_0[36]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[37]_i_1 
       (.I0(pixel_data[37]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_pix_data[37]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(raw10_pix_data[37]),
        .O(reg_pix_valid_reg_0[37]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[38]_i_1 
       (.I0(pixel_data[38]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_pix_data[38]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(raw10_pix_data[38]),
        .O(reg_pix_valid_reg_0[38]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[39]_i_1 
       (.I0(pixel_data[39]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_pix_data[39]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(raw10_pix_data[39]),
        .O(reg_pix_valid_reg_0[39]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[3]_i_1 
       (.I0(pixel_data[3]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[3]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [3]),
        .I3(raw10_pix_data[3]),
        .O(reg_pix_valid_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[4]_i_1 
       (.I0(pixel_data[4]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[4]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [4]),
        .I3(raw10_pix_data[4]),
        .O(reg_pix_valid_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[5]_i_1 
       (.I0(pixel_data[5]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[5]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [5]),
        .I3(raw10_pix_data[5]),
        .O(reg_pix_valid_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[6]_i_1 
       (.I0(pixel_data[6]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[6]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [6]),
        .I3(raw10_pix_data[6]),
        .O(reg_pix_valid_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[7]_i_1 
       (.I0(pixel_data[7]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[7]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [7]),
        .I3(raw10_pix_data[7]),
        .O(reg_pix_valid_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[8]_i_1 
       (.I0(pixel_data[8]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[8]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [8]),
        .I3(raw10_pix_data[8]),
        .O(reg_pix_valid_reg_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[9]_i_1 
       (.I0(pixel_data[9]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_data[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[9]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[31]_0 [9]),
        .I3(raw10_pix_data[9]),
        .O(reg_pix_valid_reg_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'h80)) 
    reg_pix_data_enable_i_1
       (.I0(pixel_enable),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(reg_pix_data_enable0));
  FDCE reg_pix_data_enable_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(reg_pix_data_enable0),
        .Q(raw10_pix_data_enable));
  FDCE \reg_pix_data_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[0]_i_1_n_0 ),
        .Q(raw10_pix_data[0]));
  FDCE \reg_pix_data_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[10]_i_1_n_0 ),
        .Q(raw10_pix_data[10]));
  FDCE \reg_pix_data_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[11]_i_1_n_0 ),
        .Q(raw10_pix_data[11]));
  FDCE \reg_pix_data_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[12]_i_1_n_0 ),
        .Q(raw10_pix_data[12]));
  FDCE \reg_pix_data_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[13]_i_1_n_0 ),
        .Q(raw10_pix_data[13]));
  FDCE \reg_pix_data_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[14]_i_1_n_0 ),
        .Q(raw10_pix_data[14]));
  FDCE \reg_pix_data_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[15]_i_1_n_0 ),
        .Q(raw10_pix_data[15]));
  FDCE \reg_pix_data_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[16]_i_1_n_0 ),
        .Q(raw10_pix_data[16]));
  FDCE \reg_pix_data_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[17]_i_1_n_0 ),
        .Q(raw10_pix_data[17]));
  FDCE \reg_pix_data_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[18]_i_1_n_0 ),
        .Q(raw10_pix_data[18]));
  FDCE \reg_pix_data_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[19]_i_1_n_0 ),
        .Q(raw10_pix_data[19]));
  FDCE \reg_pix_data_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[1]_i_1_n_0 ),
        .Q(raw10_pix_data[1]));
  FDCE \reg_pix_data_reg[20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[20]_i_1_n_0 ),
        .Q(raw10_pix_data[20]));
  FDCE \reg_pix_data_reg[21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[21]_i_1_n_0 ),
        .Q(raw10_pix_data[21]));
  FDCE \reg_pix_data_reg[22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[22]_i_1_n_0 ),
        .Q(raw10_pix_data[22]));
  FDCE \reg_pix_data_reg[23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[23]_i_1_n_0 ),
        .Q(raw10_pix_data[23]));
  FDCE \reg_pix_data_reg[24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[24]_i_1_n_0 ),
        .Q(raw10_pix_data[24]));
  FDCE \reg_pix_data_reg[25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[25]_i_1_n_0 ),
        .Q(raw10_pix_data[25]));
  FDCE \reg_pix_data_reg[26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[26]_i_1_n_0 ),
        .Q(raw10_pix_data[26]));
  FDCE \reg_pix_data_reg[27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[27]_i_1_n_0 ),
        .Q(raw10_pix_data[27]));
  FDCE \reg_pix_data_reg[28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[28]_i_1_n_0 ),
        .Q(raw10_pix_data[28]));
  FDCE \reg_pix_data_reg[29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[29]_i_1_n_0 ),
        .Q(raw10_pix_data[29]));
  FDCE \reg_pix_data_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[2]_i_1_n_0 ),
        .Q(raw10_pix_data[2]));
  FDCE \reg_pix_data_reg[30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[30]_i_1_n_0 ),
        .Q(raw10_pix_data[30]));
  FDCE \reg_pix_data_reg[31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[31]_i_1_n_0 ),
        .Q(raw10_pix_data[31]));
  FDCE \reg_pix_data_reg[32] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[32]_i_1_n_0 ),
        .Q(raw10_pix_data[32]));
  FDCE \reg_pix_data_reg[33] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[33]_i_1_n_0 ),
        .Q(raw10_pix_data[33]));
  FDCE \reg_pix_data_reg[34] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[34]_i_1_n_0 ),
        .Q(raw10_pix_data[34]));
  FDCE \reg_pix_data_reg[35] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[35]_i_1_n_0 ),
        .Q(raw10_pix_data[35]));
  FDCE \reg_pix_data_reg[36] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[36]_i_1_n_0 ),
        .Q(raw10_pix_data[36]));
  FDCE \reg_pix_data_reg[37] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[37]_i_1_n_0 ),
        .Q(raw10_pix_data[37]));
  FDCE \reg_pix_data_reg[38] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[38]_i_1_n_0 ),
        .Q(raw10_pix_data[38]));
  FDCE \reg_pix_data_reg[39] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[39]_i_1_n_0 ),
        .Q(raw10_pix_data[39]));
  FDCE \reg_pix_data_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[3]_i_1_n_0 ),
        .Q(raw10_pix_data[3]));
  FDCE \reg_pix_data_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[4]_i_1_n_0 ),
        .Q(raw10_pix_data[4]));
  FDCE \reg_pix_data_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[5]_i_1_n_0 ),
        .Q(raw10_pix_data[5]));
  FDCE \reg_pix_data_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[6]_i_1_n_0 ),
        .Q(raw10_pix_data[6]));
  FDCE \reg_pix_data_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[7]_i_1_n_0 ),
        .Q(raw10_pix_data[7]));
  FDCE \reg_pix_data_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[8]_i_1_n_0 ),
        .Q(raw10_pix_data[8]));
  FDCE \reg_pix_data_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_data[9]_i_1_n_0 ),
        .Q(raw10_pix_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_di[0]_i_1 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(Q[0]),
        .I3(raw10_pix_di[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_di[1]_i_1 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(Q[1]),
        .I3(raw10_pix_di[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_di[3]_i_1 
       (.I0(di_reg[3]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_di[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_di[3]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(Q[2]),
        .I3(raw10_pix_di[3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_di[5]_i_1 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(Q[3]),
        .I3(raw10_pix_di[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_di[6]_i_1 
       (.I0(di_reg[6]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_di[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_di[6]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(Q[4]),
        .I3(raw10_pix_di[6]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_di[7]_i_1 
       (.I0(di_reg[7]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[0]_0 ),
        .O(\reg_pix_di[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_di[7]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(Q[5]),
        .I3(raw10_pix_di[7]),
        .O(D[5]));
  FDCE \reg_pix_di_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_di[3]_i_1_n_0 ),
        .Q(raw10_pix_di[3]));
  FDCE \reg_pix_di_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_di[6]_i_1_n_0 ),
        .Q(raw10_pix_di[6]));
  FDCE \reg_pix_di_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(\reg_pix_di[7]_i_1_n_0 ),
        .Q(raw10_pix_di[7]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h8)) 
    reg_pix_valid_i_1
       (.I0(\ready_delay_reg[0]_0 ),
        .I1(p_0_in),
        .O(reg_pix_valid0));
  FDCE reg_pix_valid_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\pixel_data_reg[0]_0 ),
        .D(reg_pix_valid0),
        .Q(raw10_pix_valid));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_clk_io" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_clk_io
   (clk_hs_bit,
    clk_hs_byte,
    dphy_clk_p,
    dphy_clk_n);
  output clk_hs_bit;
  output clk_hs_byte;
  input dphy_clk_p;
  input dphy_clk_n;

  wire clk_bit;
  wire clk_hs_bit;
  wire clk_hs_byte;
  wire clk_lp_n;
  wire clk_lp_p;
  wire dphy_clk_n;
  wire dphy_clk_p;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE_DIV #(
    .BUFGCE_DIVIDE(1),
    .CE_TYPE("SYNC"),
    .HARDSYNC_CLR("FALSE"),
    .IS_CE_INVERTED(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    u_BUFGCE_DIV1
       (.CE(1'b1),
        .CLR(1'b0),
        .I(clk_bit),
        .O(clk_hs_bit));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE_DIV #(
    .BUFGCE_DIVIDE(4),
    .CE_TYPE("SYNC"),
    .HARDSYNC_CLR("FALSE"),
    .IS_CE_INVERTED(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    u_BUFGCE_DIV4
       (.CE(1'b1),
        .CLR(1'b0),
        .I(clk_bit),
        .O(clk_hs_byte));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DPHY #(
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    u_IBUFDS_DPHY
       (.HSRX_DISABLE(1'b0),
        .HSRX_O(clk_bit),
        .I(dphy_clk_p),
        .IB(dphy_clk_n),
        .LPRX_DISABLE(1'b0),
        .LPRX_O_N(clk_lp_n),
        .LPRX_O_P(clk_lp_p));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_data_byte_aligner" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner
   (data_byte_valid_reg_0,
    data_byte_valid0,
    \last_byte_reg[6]_0 ,
    \last_byte_reg[4]_0 ,
    \data_byte_aligned_reg[7]_0 ,
    align_flag_reg,
    \last_byte_reg[4]_1 ,
    \last_byte_reg[7]_0 ,
    u_ISERDESE3,
    \last_byte_reg[1]_0 ,
    \align_offset_reg[3]_0 ,
    \align_offset_reg[1]_0 ,
    \align_offset_reg[3]_1 ,
    \align_offset_reg[2]_0 ,
    \align_offset_reg[3]_2 ,
    E,
    clk_hs_byte,
    AR,
    D,
    \data_byte_aligned_reg[0]_0 ,
    Q,
    \align_idx_reg[0][0] ,
    lane_byte_aligned_valid,
    \data_byte_aligned_reg[6]_0 ,
    \align_offset_reg[2]_1 ,
    \data_byte_aligned_reg[5]_0 ,
    \data_byte_aligned_reg[3]_0 ,
    \data_byte_aligned_reg[3]_1 ,
    \data_byte_aligned_reg[6]_1 ,
    \data_byte_aligned_reg[6]_2 ,
    \data_byte_aligned_reg[4]_0 ,
    \data_byte_aligned_reg[4]_1 ,
    \data_byte_aligned_reg[0]_1 ,
    \align_offset_reg[1]_1 ,
    \data_byte_aligned_reg[0]_2 );
  output data_byte_valid_reg_0;
  output data_byte_valid0;
  output \last_byte_reg[6]_0 ;
  output \last_byte_reg[4]_0 ;
  output [7:0]\data_byte_aligned_reg[7]_0 ;
  output [0:0]align_flag_reg;
  output [0:0]\last_byte_reg[4]_1 ;
  output [3:0]\last_byte_reg[7]_0 ;
  output u_ISERDESE3;
  output \last_byte_reg[1]_0 ;
  output \align_offset_reg[3]_0 ;
  output [1:0]\align_offset_reg[1]_0 ;
  output \align_offset_reg[3]_1 ;
  output \align_offset_reg[2]_0 ;
  output \align_offset_reg[3]_2 ;
  input [0:0]E;
  input clk_hs_byte;
  input [0:0]AR;
  input [3:0]D;
  input \data_byte_aligned_reg[0]_0 ;
  input [7:0]Q;
  input \align_idx_reg[0][0] ;
  input lane_byte_aligned_valid;
  input \data_byte_aligned_reg[6]_0 ;
  input \align_offset_reg[2]_1 ;
  input \data_byte_aligned_reg[5]_0 ;
  input \data_byte_aligned_reg[3]_0 ;
  input \data_byte_aligned_reg[3]_1 ;
  input \data_byte_aligned_reg[6]_1 ;
  input \data_byte_aligned_reg[6]_2 ;
  input \data_byte_aligned_reg[4]_0 ;
  input \data_byte_aligned_reg[4]_1 ;
  input \data_byte_aligned_reg[0]_1 ;
  input [1:0]\align_offset_reg[1]_1 ;
  input [0:0]\data_byte_aligned_reg[0]_2 ;

  wire [0:0]AR;
  wire [3:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]align_flag_reg;
  wire \align_idx_reg[0][0] ;
  wire \align_offset[0]_i_6_n_0 ;
  wire \align_offset[0]_i_7_n_0 ;
  wire \align_offset[2]_i_10_n_0 ;
  wire \align_offset[2]_i_4_n_0 ;
  wire \align_offset[2]_i_5_n_0 ;
  wire \align_offset[2]_i_6_n_0 ;
  wire \align_offset[2]_i_7_n_0 ;
  wire \align_offset[2]_i_8_n_0 ;
  wire [1:0]\align_offset_reg[1]_0 ;
  wire [1:0]\align_offset_reg[1]_1 ;
  wire \align_offset_reg[2]_0 ;
  wire \align_offset_reg[2]_1 ;
  wire \align_offset_reg[3]_0 ;
  wire \align_offset_reg[3]_1 ;
  wire \align_offset_reg[3]_2 ;
  wire \align_offset_reg_n_0_[2] ;
  wire \align_offset_reg_n_0_[3] ;
  wire [7:0]byte_data;
  wire clk_hs_byte;
  wire \data_byte_aligned[0]_i_2_n_0 ;
  wire \data_byte_aligned[0]_i_3_n_0 ;
  wire \data_byte_aligned[1]_i_3_n_0 ;
  wire \data_byte_aligned[1]_i_4_n_0 ;
  wire \data_byte_aligned[2]_i_2_n_0 ;
  wire \data_byte_aligned[2]_i_3_n_0 ;
  wire \data_byte_aligned[2]_i_4_n_0 ;
  wire \data_byte_aligned[3]_i_3_n_0 ;
  wire \data_byte_aligned[3]_i_4_n_0 ;
  wire \data_byte_aligned[4]_i_4_n_0 ;
  wire \data_byte_aligned[4]_i_5_n_0 ;
  wire \data_byte_aligned[5]_i_2_n_0 ;
  wire \data_byte_aligned[5]_i_3_n_0 ;
  wire \data_byte_aligned[5]_i_4_n_0 ;
  wire \data_byte_aligned[6]_i_2_n_0 ;
  wire \data_byte_aligned[6]_i_5_n_0 ;
  wire \data_byte_aligned[7]_i_6_n_0 ;
  wire \data_byte_aligned_reg[0]_0 ;
  wire \data_byte_aligned_reg[0]_1 ;
  wire [0:0]\data_byte_aligned_reg[0]_2 ;
  wire \data_byte_aligned_reg[3]_0 ;
  wire \data_byte_aligned_reg[3]_1 ;
  wire \data_byte_aligned_reg[4]_0 ;
  wire \data_byte_aligned_reg[4]_1 ;
  wire \data_byte_aligned_reg[5]_0 ;
  wire \data_byte_aligned_reg[6]_0 ;
  wire \data_byte_aligned_reg[6]_1 ;
  wire \data_byte_aligned_reg[6]_2 ;
  wire [7:0]\data_byte_aligned_reg[7]_0 ;
  wire data_byte_valid0;
  wire data_byte_valid_i_2_n_0;
  wire data_byte_valid_reg_0;
  wire [5:0]hs_settle_count;
  wire \hs_settle_count_reg_n_0_[0] ;
  wire \hs_settle_count_reg_n_0_[1] ;
  wire \hs_settle_count_reg_n_0_[2] ;
  wire \hs_settle_count_reg_n_0_[3] ;
  wire \hs_settle_count_reg_n_0_[4] ;
  wire \hs_settle_count_reg_n_0_[5] ;
  wire lane_byte_aligned_valid;
  wire \last_byte_reg[1]_0 ;
  wire \last_byte_reg[4]_0 ;
  wire [0:0]\last_byte_reg[4]_1 ;
  wire \last_byte_reg[6]_0 ;
  wire [3:0]\last_byte_reg[7]_0 ;
  wire \last_byte_reg_n_0_[1] ;
  wire \last_byte_reg_n_0_[2] ;
  wire \last_byte_reg_n_0_[3] ;
  wire \last_byte_reg_n_0_[4] ;
  wire [6:0]p_1_in;
  wire u_ISERDESE3;

  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \align_idx[0][2]_i_1 
       (.I0(lane_byte_aligned_valid),
        .I1(data_byte_valid_reg_0),
        .I2(\align_idx_reg[0][0] ),
        .O(align_flag_reg));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[0]_i_3 
       (.I0(Q[1]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(Q[2]),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(\align_offset[0]_i_6_n_0 ),
        .O(u_ISERDESE3));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[0]_i_4 
       (.I0(\last_byte_reg_n_0_[1] ),
        .I1(\last_byte_reg_n_0_[4] ),
        .I2(\last_byte_reg[7]_0 [1]),
        .I3(\last_byte_reg[7]_0 [3]),
        .I4(\align_offset[0]_i_7_n_0 ),
        .O(\last_byte_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[0]_i_6 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(Q[0]),
        .I2(\last_byte_reg_n_0_[4] ),
        .I3(\last_byte_reg[7]_0 [1]),
        .O(\align_offset[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \align_offset[0]_i_7 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(\last_byte_reg_n_0_[3] ),
        .I2(\last_byte_reg[7]_0 [2]),
        .I3(Q[0]),
        .O(\align_offset[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \align_offset[2]_i_1 
       (.I0(\last_byte_reg[4]_0 ),
        .I1(\last_byte_reg[6]_0 ),
        .O(\last_byte_reg[4]_1 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \align_offset[2]_i_10 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(Q[0]),
        .I2(\last_byte_reg[7]_0 [2]),
        .I3(Q[2]),
        .O(\align_offset[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFBFBFFFFFBFB)) 
    \align_offset[2]_i_2 
       (.I0(\last_byte_reg_n_0_[4] ),
        .I1(\align_offset[2]_i_4_n_0 ),
        .I2(\align_offset[2]_i_5_n_0 ),
        .I3(\last_byte_reg[7]_0 [2]),
        .I4(Q[0]),
        .I5(\align_offset[2]_i_6_n_0 ),
        .O(\last_byte_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h008000FF00800080)) 
    \align_offset[2]_i_3 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(Q[0]),
        .I2(\align_offset[2]_i_7_n_0 ),
        .I3(\align_offset[2]_i_8_n_0 ),
        .I4(\align_offset_reg[2]_1 ),
        .I5(\align_offset[2]_i_10_n_0 ),
        .O(\last_byte_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \align_offset[2]_i_4 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(\last_byte_reg[7]_0 [1]),
        .I3(Q[1]),
        .O(\align_offset[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[2]_i_5 
       (.I0(\last_byte_reg_n_0_[3] ),
        .I1(\last_byte_reg_n_0_[2] ),
        .O(\align_offset[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \align_offset[2]_i_6 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(\last_byte_reg[7]_0 [1]),
        .I2(\last_byte_reg_n_0_[4] ),
        .I3(\last_byte_reg_n_0_[1] ),
        .O(\align_offset[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \align_offset[2]_i_7 
       (.I0(\last_byte_reg_n_0_[3] ),
        .I1(Q[2]),
        .I2(\last_byte_reg[7]_0 [3]),
        .I3(Q[1]),
        .O(\align_offset[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[2]_i_8 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\last_byte_reg_n_0_[4] ),
        .O(\align_offset[2]_i_8_n_0 ));
  FDCE \align_offset_reg[0] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(\align_offset_reg[1]_1 [0]),
        .Q(\align_offset_reg[1]_0 [0]));
  FDCE \align_offset_reg[1] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(\align_offset_reg[1]_1 [1]),
        .Q(\align_offset_reg[1]_0 [1]));
  FDCE \align_offset_reg[2] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(\last_byte_reg[4]_1 ),
        .Q(\align_offset_reg_n_0_[2] ));
  FDCE \align_offset_reg[3] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(1'b1),
        .Q(\align_offset_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \data_byte_aligned[0]_i_1 
       (.I0(\last_byte_reg[6]_0 ),
        .I1(\data_byte_aligned_reg[0]_0 ),
        .I2(\last_byte_reg[4]_0 ),
        .I3(Q[0]),
        .I4(data_byte_valid0),
        .I5(\data_byte_aligned[0]_i_2_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[0]_i_2 
       (.I0(\data_byte_aligned[4]_i_4_n_0 ),
        .I1(\data_byte_aligned[0]_i_3_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned_reg[0]_1 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[4]_0 ),
        .O(\data_byte_aligned[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[0]_i_3 
       (.I0(\last_byte_reg_n_0_[4] ),
        .I1(\last_byte_reg_n_0_[3] ),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[2] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[1] ),
        .O(\data_byte_aligned[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[1]_i_2 
       (.I0(\data_byte_aligned[5]_i_4_n_0 ),
        .I1(\data_byte_aligned[1]_i_3_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[1]_i_4_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[5]_0 ),
        .O(\align_offset_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[1]_i_3 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\last_byte_reg_n_0_[4] ),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[2] ),
        .O(\data_byte_aligned[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFA0C0A0C)) 
    \data_byte_aligned[1]_i_4 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\align_offset_reg[1]_0 [0]),
        .I4(\last_byte_reg_n_0_[1] ),
        .O(\data_byte_aligned[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3A0A)) 
    \data_byte_aligned[2]_i_1 
       (.I0(\data_byte_aligned[2]_i_2_n_0 ),
        .I1(\data_byte_aligned_reg[6]_0 ),
        .I2(data_byte_valid0),
        .I3(Q[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[2]_i_2 
       (.I0(\data_byte_aligned_reg[6]_2 ),
        .I1(\data_byte_aligned[2]_i_3_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[2]_i_4_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[6]_1 ),
        .O(\data_byte_aligned[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[2]_i_3 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(\last_byte_reg[7]_0 [1]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[4] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[3] ),
        .O(\data_byte_aligned[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT4 #(
    .INIT(16'h8830)) 
    \data_byte_aligned[2]_i_4 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(\align_offset_reg[1]_0 [1]),
        .I2(Q[7]),
        .I3(\align_offset_reg[1]_0 [0]),
        .O(\data_byte_aligned[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[3]_i_2 
       (.I0(\data_byte_aligned_reg[3]_0 ),
        .I1(\data_byte_aligned[3]_i_3_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[3]_i_4_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[3]_1 ),
        .O(\align_offset_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[3]_i_3 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(\last_byte_reg[7]_0 [2]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_0 [1]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[4] ),
        .O(\data_byte_aligned[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_byte_aligned[3]_i_4 
       (.I0(\align_offset_reg[1]_0 [1]),
        .I1(\align_offset_reg[1]_0 [0]),
        .I2(\last_byte_reg_n_0_[3] ),
        .O(\data_byte_aligned[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_byte_aligned[4]_i_2 
       (.I0(\data_byte_aligned_reg[4]_0 ),
        .I1(\data_byte_aligned[4]_i_4_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[4]_i_5_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[4]_1 ),
        .O(\align_offset_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[4]_i_4 
       (.I0(Q[0]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_0 [2]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg[7]_0 [1]),
        .O(\data_byte_aligned[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_byte_aligned[4]_i_5 
       (.I0(\align_offset_reg[1]_0 [1]),
        .I1(\align_offset_reg[1]_0 [0]),
        .I2(\last_byte_reg_n_0_[4] ),
        .O(\data_byte_aligned[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE0EFE0E0EFEFEFEF)) 
    \data_byte_aligned[5]_i_1 
       (.I0(\data_byte_aligned_reg[6]_0 ),
        .I1(Q[5]),
        .I2(data_byte_valid0),
        .I3(\align_offset_reg_n_0_[3] ),
        .I4(\data_byte_aligned[5]_i_2_n_0 ),
        .I5(\data_byte_aligned[5]_i_3_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h8800880033300030)) 
    \data_byte_aligned[5]_i_2 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(Q[6]),
        .I3(\align_offset_reg[1]_0 [0]),
        .I4(Q[7]),
        .I5(\align_offset_reg[1]_0 [1]),
        .O(\data_byte_aligned[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \data_byte_aligned[5]_i_3 
       (.I0(\align_offset_reg_n_0_[3] ),
        .I1(\data_byte_aligned[5]_i_4_n_0 ),
        .I2(\align_offset_reg_n_0_[2] ),
        .I3(\data_byte_aligned_reg[5]_0 ),
        .O(\data_byte_aligned[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[5]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_0 [3]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg[7]_0 [2]),
        .O(\data_byte_aligned[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3A0A)) 
    \data_byte_aligned[6]_i_1 
       (.I0(\data_byte_aligned[6]_i_2_n_0 ),
        .I1(\data_byte_aligned_reg[6]_0 ),
        .I2(data_byte_valid0),
        .I3(Q[6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_byte_aligned[6]_i_2 
       (.I0(\data_byte_aligned_reg[6]_1 ),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\data_byte_aligned_reg[6]_2 ),
        .I3(\align_offset_reg_n_0_[3] ),
        .I4(\data_byte_aligned[6]_i_5_n_0 ),
        .O(\data_byte_aligned[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80800300)) 
    \data_byte_aligned[6]_i_5 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\align_offset_reg[1]_0 [0]),
        .I3(Q[7]),
        .I4(\align_offset_reg[1]_0 [1]),
        .O(\data_byte_aligned[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_byte_aligned[7]_i_3 
       (.I0(\data_byte_aligned_reg[3]_1 ),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\data_byte_aligned_reg[3]_0 ),
        .I3(\align_offset_reg_n_0_[3] ),
        .I4(\data_byte_aligned[7]_i_6_n_0 ),
        .O(\align_offset_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_byte_aligned[7]_i_6 
       (.I0(\align_offset_reg[1]_0 [0]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\align_offset_reg_n_0_[2] ),
        .O(\data_byte_aligned[7]_i_6_n_0 ));
  FDCE \data_byte_aligned_reg[0] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(AR),
        .D(p_1_in[0]),
        .Q(byte_data[0]));
  FDCE \data_byte_aligned_reg[1] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(AR),
        .D(D[0]),
        .Q(byte_data[1]));
  FDCE \data_byte_aligned_reg[2] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(AR),
        .D(p_1_in[2]),
        .Q(byte_data[2]));
  FDCE \data_byte_aligned_reg[3] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(AR),
        .D(D[1]),
        .Q(byte_data[3]));
  FDCE \data_byte_aligned_reg[4] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(AR),
        .D(D[2]),
        .Q(byte_data[4]));
  FDCE \data_byte_aligned_reg[5] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(AR),
        .D(p_1_in[5]),
        .Q(byte_data[5]));
  FDCE \data_byte_aligned_reg[6] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(AR),
        .D(p_1_in[6]),
        .Q(byte_data[6]));
  FDCE \data_byte_aligned_reg[7] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(AR),
        .D(D[3]),
        .Q(byte_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT2 #(
    .INIT(4'h1)) 
    data_byte_valid_i_1
       (.I0(data_byte_valid_reg_0),
        .I1(data_byte_valid_i_2_n_0),
        .O(data_byte_valid0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    data_byte_valid_i_2
       (.I0(\hs_settle_count_reg_n_0_[1] ),
        .I1(\hs_settle_count_reg_n_0_[0] ),
        .I2(\hs_settle_count_reg_n_0_[5] ),
        .I3(\hs_settle_count_reg_n_0_[4] ),
        .I4(\hs_settle_count_reg_n_0_[3] ),
        .I5(\hs_settle_count_reg_n_0_[2] ),
        .O(data_byte_valid_i_2_n_0));
  FDCE data_byte_valid_reg
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(data_byte_valid0),
        .Q(data_byte_valid_reg_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFDF)) 
    \hs_settle_count[0]_i_1 
       (.I0(\hs_settle_count_reg_n_0_[2] ),
        .I1(\hs_settle_count_reg_n_0_[3] ),
        .I2(\hs_settle_count_reg_n_0_[4] ),
        .I3(\hs_settle_count_reg_n_0_[5] ),
        .I4(\hs_settle_count_reg_n_0_[1] ),
        .I5(\hs_settle_count_reg_n_0_[0] ),
        .O(hs_settle_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hs_settle_count[1]_i_1 
       (.I0(\hs_settle_count_reg_n_0_[0] ),
        .I1(\hs_settle_count_reg_n_0_[1] ),
        .O(hs_settle_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hs_settle_count[2]_i_1 
       (.I0(\hs_settle_count_reg_n_0_[2] ),
        .I1(\hs_settle_count_reg_n_0_[0] ),
        .I2(\hs_settle_count_reg_n_0_[1] ),
        .O(hs_settle_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hs_settle_count[3]_i_1 
       (.I0(\hs_settle_count_reg_n_0_[3] ),
        .I1(\hs_settle_count_reg_n_0_[1] ),
        .I2(\hs_settle_count_reg_n_0_[0] ),
        .I3(\hs_settle_count_reg_n_0_[2] ),
        .O(hs_settle_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hs_settle_count[4]_i_1 
       (.I0(\hs_settle_count_reg_n_0_[2] ),
        .I1(\hs_settle_count_reg_n_0_[0] ),
        .I2(\hs_settle_count_reg_n_0_[1] ),
        .I3(\hs_settle_count_reg_n_0_[3] ),
        .I4(\hs_settle_count_reg_n_0_[4] ),
        .O(hs_settle_count[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hs_settle_count[5]_i_1 
       (.I0(\hs_settle_count_reg_n_0_[5] ),
        .I1(\hs_settle_count_reg_n_0_[2] ),
        .I2(\hs_settle_count_reg_n_0_[0] ),
        .I3(\hs_settle_count_reg_n_0_[1] ),
        .I4(\hs_settle_count_reg_n_0_[3] ),
        .I5(\hs_settle_count_reg_n_0_[4] ),
        .O(hs_settle_count[5]));
  FDCE \hs_settle_count_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(hs_settle_count[0]),
        .Q(\hs_settle_count_reg_n_0_[0] ));
  FDCE \hs_settle_count_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(hs_settle_count[1]),
        .Q(\hs_settle_count_reg_n_0_[1] ));
  FDCE \hs_settle_count_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(hs_settle_count[2]),
        .Q(\hs_settle_count_reg_n_0_[2] ));
  FDCE \hs_settle_count_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(hs_settle_count[3]),
        .Q(\hs_settle_count_reg_n_0_[3] ));
  FDCE \hs_settle_count_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(hs_settle_count[4]),
        .Q(\hs_settle_count_reg_n_0_[4] ));
  FDCE \hs_settle_count_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(hs_settle_count[5]),
        .Q(\hs_settle_count_reg_n_0_[5] ));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][0]_i_1 
       (.I0(byte_data[0]),
        .I1(\align_idx_reg[0][0] ),
        .O(\data_byte_aligned_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][1]_i_1 
       (.I0(byte_data[1]),
        .I1(\align_idx_reg[0][0] ),
        .O(\data_byte_aligned_reg[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][2]_i_1 
       (.I0(byte_data[2]),
        .I1(\align_idx_reg[0][0] ),
        .O(\data_byte_aligned_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][3]_i_1 
       (.I0(byte_data[3]),
        .I1(\align_idx_reg[0][0] ),
        .O(\data_byte_aligned_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][4]_i_1 
       (.I0(byte_data[4]),
        .I1(\align_idx_reg[0][0] ),
        .O(\data_byte_aligned_reg[7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][5]_i_1 
       (.I0(byte_data[5]),
        .I1(\align_idx_reg[0][0] ),
        .O(\data_byte_aligned_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][6]_i_1 
       (.I0(byte_data[6]),
        .I1(\align_idx_reg[0][0] ),
        .O(\data_byte_aligned_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][7]_i_1 
       (.I0(byte_data[7]),
        .I1(\align_idx_reg[0][0] ),
        .O(\data_byte_aligned_reg[7]_0 [7]));
  FDCE \last_byte_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[0]),
        .Q(\last_byte_reg[7]_0 [0]));
  FDCE \last_byte_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[1]),
        .Q(\last_byte_reg_n_0_[1] ));
  FDCE \last_byte_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[2]),
        .Q(\last_byte_reg_n_0_[2] ));
  FDCE \last_byte_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[3]),
        .Q(\last_byte_reg_n_0_[3] ));
  FDCE \last_byte_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[4]),
        .Q(\last_byte_reg_n_0_[4] ));
  FDCE \last_byte_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[5]),
        .Q(\last_byte_reg[7]_0 [1]));
  FDCE \last_byte_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[6]),
        .Q(\last_byte_reg[7]_0 [2]));
  FDCE \last_byte_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[7]),
        .Q(\last_byte_reg[7]_0 [3]));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_data_byte_aligner" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_6
   (data_byte_valid_reg_0,
    data_byte_valid0,
    \last_byte_reg[6]_0 ,
    \last_byte_reg[4]_0 ,
    \data_byte_aligned_reg[7]_0 ,
    align_flag_reg,
    \last_byte_reg[4]_1 ,
    \last_byte_reg[7]_0 ,
    u_ISERDESE3,
    \last_byte_reg[1]_0 ,
    \align_offset_reg[3]_0 ,
    \align_offset_reg[1]_0 ,
    \align_offset_reg[3]_1 ,
    \align_offset_reg[2]_0 ,
    \align_offset_reg[3]_2 ,
    E,
    clk_hs_byte,
    data_byte_valid_reg_1,
    D,
    \data_byte_aligned_reg[0]_0 ,
    Q,
    \align_idx_reg[1][0] ,
    lane_byte_aligned_valid,
    \data_byte_aligned_reg[6]_0 ,
    \align_offset_reg[2]_1 ,
    \data_byte_aligned_reg[5]_0 ,
    \data_byte_aligned_reg[3]_0 ,
    \data_byte_aligned_reg[3]_1 ,
    \data_byte_aligned_reg[6]_1 ,
    \data_byte_aligned_reg[6]_2 ,
    \data_byte_aligned_reg[4]_0 ,
    \data_byte_aligned_reg[4]_1 ,
    \data_byte_aligned_reg[0]_1 ,
    \align_offset_reg[1]_1 ,
    \data_byte_aligned_reg[0]_2 );
  output data_byte_valid_reg_0;
  output data_byte_valid0;
  output \last_byte_reg[6]_0 ;
  output \last_byte_reg[4]_0 ;
  output [7:0]\data_byte_aligned_reg[7]_0 ;
  output [0:0]align_flag_reg;
  output [0:0]\last_byte_reg[4]_1 ;
  output [3:0]\last_byte_reg[7]_0 ;
  output u_ISERDESE3;
  output \last_byte_reg[1]_0 ;
  output \align_offset_reg[3]_0 ;
  output [1:0]\align_offset_reg[1]_0 ;
  output \align_offset_reg[3]_1 ;
  output \align_offset_reg[2]_0 ;
  output \align_offset_reg[3]_2 ;
  input [0:0]E;
  input clk_hs_byte;
  input [0:0]data_byte_valid_reg_1;
  input [3:0]D;
  input \data_byte_aligned_reg[0]_0 ;
  input [7:0]Q;
  input \align_idx_reg[1][0] ;
  input lane_byte_aligned_valid;
  input \data_byte_aligned_reg[6]_0 ;
  input \align_offset_reg[2]_1 ;
  input \data_byte_aligned_reg[5]_0 ;
  input \data_byte_aligned_reg[3]_0 ;
  input \data_byte_aligned_reg[3]_1 ;
  input \data_byte_aligned_reg[6]_1 ;
  input \data_byte_aligned_reg[6]_2 ;
  input \data_byte_aligned_reg[4]_0 ;
  input \data_byte_aligned_reg[4]_1 ;
  input \data_byte_aligned_reg[0]_1 ;
  input [1:0]\align_offset_reg[1]_1 ;
  input [0:0]\data_byte_aligned_reg[0]_2 ;

  wire [3:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]align_flag_reg;
  wire \align_idx_reg[1][0] ;
  wire \align_offset[0]_i_6__0_n_0 ;
  wire \align_offset[0]_i_7__0_n_0 ;
  wire \align_offset[2]_i_10__0_n_0 ;
  wire \align_offset[2]_i_4__0_n_0 ;
  wire \align_offset[2]_i_5__0_n_0 ;
  wire \align_offset[2]_i_6__0_n_0 ;
  wire \align_offset[2]_i_7__0_n_0 ;
  wire \align_offset[2]_i_8__0_n_0 ;
  wire [1:0]\align_offset_reg[1]_0 ;
  wire [1:0]\align_offset_reg[1]_1 ;
  wire \align_offset_reg[2]_0 ;
  wire \align_offset_reg[2]_1 ;
  wire \align_offset_reg[3]_0 ;
  wire \align_offset_reg[3]_1 ;
  wire \align_offset_reg[3]_2 ;
  wire \align_offset_reg_n_0_[2] ;
  wire \align_offset_reg_n_0_[3] ;
  wire [15:8]byte_data;
  wire clk_hs_byte;
  wire \data_byte_aligned[0]_i_2__0_n_0 ;
  wire \data_byte_aligned[0]_i_3__0_n_0 ;
  wire \data_byte_aligned[1]_i_3__0_n_0 ;
  wire \data_byte_aligned[1]_i_4__0_n_0 ;
  wire \data_byte_aligned[2]_i_2__0_n_0 ;
  wire \data_byte_aligned[2]_i_3__0_n_0 ;
  wire \data_byte_aligned[2]_i_4__0_n_0 ;
  wire \data_byte_aligned[3]_i_3__0_n_0 ;
  wire \data_byte_aligned[3]_i_4__0_n_0 ;
  wire \data_byte_aligned[4]_i_4__0_n_0 ;
  wire \data_byte_aligned[4]_i_5__0_n_0 ;
  wire \data_byte_aligned[5]_i_2__0_n_0 ;
  wire \data_byte_aligned[5]_i_3__0_n_0 ;
  wire \data_byte_aligned[5]_i_4__0_n_0 ;
  wire \data_byte_aligned[6]_i_2__0_n_0 ;
  wire \data_byte_aligned[6]_i_5__0_n_0 ;
  wire \data_byte_aligned[7]_i_6__0_n_0 ;
  wire \data_byte_aligned_reg[0]_0 ;
  wire \data_byte_aligned_reg[0]_1 ;
  wire [0:0]\data_byte_aligned_reg[0]_2 ;
  wire \data_byte_aligned_reg[3]_0 ;
  wire \data_byte_aligned_reg[3]_1 ;
  wire \data_byte_aligned_reg[4]_0 ;
  wire \data_byte_aligned_reg[4]_1 ;
  wire \data_byte_aligned_reg[5]_0 ;
  wire \data_byte_aligned_reg[6]_0 ;
  wire \data_byte_aligned_reg[6]_1 ;
  wire \data_byte_aligned_reg[6]_2 ;
  wire [7:0]\data_byte_aligned_reg[7]_0 ;
  wire data_byte_valid0;
  wire data_byte_valid_i_2__0_n_0;
  wire data_byte_valid_reg_0;
  wire [0:0]data_byte_valid_reg_1;
  wire [5:0]hs_settle_count;
  wire \hs_settle_count_reg_n_0_[0] ;
  wire \hs_settle_count_reg_n_0_[1] ;
  wire \hs_settle_count_reg_n_0_[2] ;
  wire \hs_settle_count_reg_n_0_[3] ;
  wire \hs_settle_count_reg_n_0_[4] ;
  wire \hs_settle_count_reg_n_0_[5] ;
  wire lane_byte_aligned_valid;
  wire \last_byte_reg[1]_0 ;
  wire \last_byte_reg[4]_0 ;
  wire [0:0]\last_byte_reg[4]_1 ;
  wire \last_byte_reg[6]_0 ;
  wire [3:0]\last_byte_reg[7]_0 ;
  wire \last_byte_reg_n_0_[1] ;
  wire \last_byte_reg_n_0_[2] ;
  wire \last_byte_reg_n_0_[3] ;
  wire \last_byte_reg_n_0_[4] ;
  wire [6:0]p_1_in;
  wire u_ISERDESE3;

  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \align_idx[1][2]_i_1 
       (.I0(lane_byte_aligned_valid),
        .I1(data_byte_valid_reg_0),
        .I2(\align_idx_reg[1][0] ),
        .O(align_flag_reg));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[0]_i_3__0 
       (.I0(Q[1]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(Q[2]),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(\align_offset[0]_i_6__0_n_0 ),
        .O(u_ISERDESE3));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[0]_i_4__0 
       (.I0(\last_byte_reg_n_0_[1] ),
        .I1(\last_byte_reg_n_0_[4] ),
        .I2(\last_byte_reg[7]_0 [1]),
        .I3(\last_byte_reg[7]_0 [3]),
        .I4(\align_offset[0]_i_7__0_n_0 ),
        .O(\last_byte_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[0]_i_6__0 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(Q[0]),
        .I2(\last_byte_reg_n_0_[4] ),
        .I3(\last_byte_reg[7]_0 [1]),
        .O(\align_offset[0]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \align_offset[0]_i_7__0 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(\last_byte_reg_n_0_[3] ),
        .I2(\last_byte_reg[7]_0 [2]),
        .I3(Q[0]),
        .O(\align_offset[0]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \align_offset[2]_i_10__0 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(Q[0]),
        .I2(\last_byte_reg[7]_0 [2]),
        .I3(Q[2]),
        .O(\align_offset[2]_i_10__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \align_offset[2]_i_1__0 
       (.I0(\last_byte_reg[4]_0 ),
        .I1(\last_byte_reg[6]_0 ),
        .O(\last_byte_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hF0FFFBFBFFFFFBFB)) 
    \align_offset[2]_i_2__0 
       (.I0(\last_byte_reg_n_0_[4] ),
        .I1(\align_offset[2]_i_4__0_n_0 ),
        .I2(\align_offset[2]_i_5__0_n_0 ),
        .I3(\last_byte_reg[7]_0 [2]),
        .I4(Q[0]),
        .I5(\align_offset[2]_i_6__0_n_0 ),
        .O(\last_byte_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h008000FF00800080)) 
    \align_offset[2]_i_3__0 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(Q[0]),
        .I2(\align_offset[2]_i_7__0_n_0 ),
        .I3(\align_offset[2]_i_8__0_n_0 ),
        .I4(\align_offset_reg[2]_1 ),
        .I5(\align_offset[2]_i_10__0_n_0 ),
        .O(\last_byte_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \align_offset[2]_i_4__0 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(\last_byte_reg[7]_0 [1]),
        .I3(Q[1]),
        .O(\align_offset[2]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[2]_i_5__0 
       (.I0(\last_byte_reg_n_0_[3] ),
        .I1(\last_byte_reg_n_0_[2] ),
        .O(\align_offset[2]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \align_offset[2]_i_6__0 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(\last_byte_reg[7]_0 [1]),
        .I2(\last_byte_reg_n_0_[4] ),
        .I3(\last_byte_reg_n_0_[1] ),
        .O(\align_offset[2]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \align_offset[2]_i_7__0 
       (.I0(\last_byte_reg_n_0_[3] ),
        .I1(Q[2]),
        .I2(\last_byte_reg[7]_0 [3]),
        .I3(Q[1]),
        .O(\align_offset[2]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[2]_i_8__0 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\last_byte_reg_n_0_[4] ),
        .O(\align_offset[2]_i_8__0_n_0 ));
  FDCE \align_offset_reg[0] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_1),
        .D(\align_offset_reg[1]_1 [0]),
        .Q(\align_offset_reg[1]_0 [0]));
  FDCE \align_offset_reg[1] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_1),
        .D(\align_offset_reg[1]_1 [1]),
        .Q(\align_offset_reg[1]_0 [1]));
  FDCE \align_offset_reg[2] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_1),
        .D(\last_byte_reg[4]_1 ),
        .Q(\align_offset_reg_n_0_[2] ));
  FDCE \align_offset_reg[3] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_1),
        .D(1'b1),
        .Q(\align_offset_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \data_byte_aligned[0]_i_1__0 
       (.I0(\last_byte_reg[6]_0 ),
        .I1(\data_byte_aligned_reg[0]_0 ),
        .I2(\last_byte_reg[4]_0 ),
        .I3(Q[0]),
        .I4(data_byte_valid0),
        .I5(\data_byte_aligned[0]_i_2__0_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[0]_i_2__0 
       (.I0(\data_byte_aligned[4]_i_4__0_n_0 ),
        .I1(\data_byte_aligned[0]_i_3__0_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned_reg[0]_1 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[4]_0 ),
        .O(\data_byte_aligned[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[0]_i_3__0 
       (.I0(\last_byte_reg_n_0_[4] ),
        .I1(\last_byte_reg_n_0_[3] ),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[2] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[1] ),
        .O(\data_byte_aligned[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[1]_i_2__0 
       (.I0(\data_byte_aligned[5]_i_4__0_n_0 ),
        .I1(\data_byte_aligned[1]_i_3__0_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[1]_i_4__0_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[5]_0 ),
        .O(\align_offset_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[1]_i_3__0 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\last_byte_reg_n_0_[4] ),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[2] ),
        .O(\data_byte_aligned[1]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFA0C0A0C)) 
    \data_byte_aligned[1]_i_4__0 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\align_offset_reg[1]_0 [0]),
        .I4(\last_byte_reg_n_0_[1] ),
        .O(\data_byte_aligned[1]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h3A0A)) 
    \data_byte_aligned[2]_i_1__0 
       (.I0(\data_byte_aligned[2]_i_2__0_n_0 ),
        .I1(\data_byte_aligned_reg[6]_0 ),
        .I2(data_byte_valid0),
        .I3(Q[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[2]_i_2__0 
       (.I0(\data_byte_aligned_reg[6]_2 ),
        .I1(\data_byte_aligned[2]_i_3__0_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[2]_i_4__0_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[6]_1 ),
        .O(\data_byte_aligned[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[2]_i_3__0 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(\last_byte_reg[7]_0 [1]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[4] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[3] ),
        .O(\data_byte_aligned[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT4 #(
    .INIT(16'h8830)) 
    \data_byte_aligned[2]_i_4__0 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(\align_offset_reg[1]_0 [1]),
        .I2(Q[7]),
        .I3(\align_offset_reg[1]_0 [0]),
        .O(\data_byte_aligned[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[3]_i_2__0 
       (.I0(\data_byte_aligned_reg[3]_0 ),
        .I1(\data_byte_aligned[3]_i_3__0_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[3]_i_4__0_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[3]_1 ),
        .O(\align_offset_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[3]_i_3__0 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(\last_byte_reg[7]_0 [2]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_0 [1]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[4] ),
        .O(\data_byte_aligned[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_byte_aligned[3]_i_4__0 
       (.I0(\align_offset_reg[1]_0 [1]),
        .I1(\align_offset_reg[1]_0 [0]),
        .I2(\last_byte_reg_n_0_[3] ),
        .O(\data_byte_aligned[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_byte_aligned[4]_i_2__0 
       (.I0(\data_byte_aligned_reg[4]_0 ),
        .I1(\data_byte_aligned[4]_i_4__0_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[4]_i_5__0_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[4]_1 ),
        .O(\align_offset_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[4]_i_4__0 
       (.I0(Q[0]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_0 [2]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg[7]_0 [1]),
        .O(\data_byte_aligned[4]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_byte_aligned[4]_i_5__0 
       (.I0(\align_offset_reg[1]_0 [1]),
        .I1(\align_offset_reg[1]_0 [0]),
        .I2(\last_byte_reg_n_0_[4] ),
        .O(\data_byte_aligned[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hE0EFE0E0EFEFEFEF)) 
    \data_byte_aligned[5]_i_1__0 
       (.I0(\data_byte_aligned_reg[6]_0 ),
        .I1(Q[5]),
        .I2(data_byte_valid0),
        .I3(\align_offset_reg_n_0_[3] ),
        .I4(\data_byte_aligned[5]_i_2__0_n_0 ),
        .I5(\data_byte_aligned[5]_i_3__0_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h8800880033300030)) 
    \data_byte_aligned[5]_i_2__0 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(Q[6]),
        .I3(\align_offset_reg[1]_0 [0]),
        .I4(Q[7]),
        .I5(\align_offset_reg[1]_0 [1]),
        .O(\data_byte_aligned[5]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \data_byte_aligned[5]_i_3__0 
       (.I0(\align_offset_reg_n_0_[3] ),
        .I1(\data_byte_aligned[5]_i_4__0_n_0 ),
        .I2(\align_offset_reg_n_0_[2] ),
        .I3(\data_byte_aligned_reg[5]_0 ),
        .O(\data_byte_aligned[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[5]_i_4__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_0 [3]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg[7]_0 [2]),
        .O(\data_byte_aligned[5]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h3A0A)) 
    \data_byte_aligned[6]_i_1__0 
       (.I0(\data_byte_aligned[6]_i_2__0_n_0 ),
        .I1(\data_byte_aligned_reg[6]_0 ),
        .I2(data_byte_valid0),
        .I3(Q[6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_byte_aligned[6]_i_2__0 
       (.I0(\data_byte_aligned_reg[6]_1 ),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\data_byte_aligned_reg[6]_2 ),
        .I3(\align_offset_reg_n_0_[3] ),
        .I4(\data_byte_aligned[6]_i_5__0_n_0 ),
        .O(\data_byte_aligned[6]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h80800300)) 
    \data_byte_aligned[6]_i_5__0 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\align_offset_reg[1]_0 [0]),
        .I3(Q[7]),
        .I4(\align_offset_reg[1]_0 [1]),
        .O(\data_byte_aligned[6]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_byte_aligned[7]_i_3__0 
       (.I0(\data_byte_aligned_reg[3]_1 ),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\data_byte_aligned_reg[3]_0 ),
        .I3(\align_offset_reg_n_0_[3] ),
        .I4(\data_byte_aligned[7]_i_6__0_n_0 ),
        .O(\align_offset_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_byte_aligned[7]_i_6__0 
       (.I0(\align_offset_reg[1]_0 [0]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\align_offset_reg_n_0_[2] ),
        .O(\data_byte_aligned[7]_i_6__0_n_0 ));
  FDCE \data_byte_aligned_reg[0] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(p_1_in[0]),
        .Q(byte_data[8]));
  FDCE \data_byte_aligned_reg[1] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(D[0]),
        .Q(byte_data[9]));
  FDCE \data_byte_aligned_reg[2] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(p_1_in[2]),
        .Q(byte_data[10]));
  FDCE \data_byte_aligned_reg[3] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(D[1]),
        .Q(byte_data[11]));
  FDCE \data_byte_aligned_reg[4] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(D[2]),
        .Q(byte_data[12]));
  FDCE \data_byte_aligned_reg[5] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(p_1_in[5]),
        .Q(byte_data[13]));
  FDCE \data_byte_aligned_reg[6] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(p_1_in[6]),
        .Q(byte_data[14]));
  FDCE \data_byte_aligned_reg[7] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(D[3]),
        .Q(byte_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT2 #(
    .INIT(4'h1)) 
    data_byte_valid_i_1__0
       (.I0(data_byte_valid_reg_0),
        .I1(data_byte_valid_i_2__0_n_0),
        .O(data_byte_valid0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    data_byte_valid_i_2__0
       (.I0(\hs_settle_count_reg_n_0_[1] ),
        .I1(\hs_settle_count_reg_n_0_[0] ),
        .I2(\hs_settle_count_reg_n_0_[5] ),
        .I3(\hs_settle_count_reg_n_0_[4] ),
        .I4(\hs_settle_count_reg_n_0_[3] ),
        .I5(\hs_settle_count_reg_n_0_[2] ),
        .O(data_byte_valid_i_2__0_n_0));
  FDCE data_byte_valid_reg
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_1),
        .D(data_byte_valid0),
        .Q(data_byte_valid_reg_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFDF)) 
    \hs_settle_count[0]_i_1__0 
       (.I0(\hs_settle_count_reg_n_0_[2] ),
        .I1(\hs_settle_count_reg_n_0_[3] ),
        .I2(\hs_settle_count_reg_n_0_[4] ),
        .I3(\hs_settle_count_reg_n_0_[5] ),
        .I4(\hs_settle_count_reg_n_0_[1] ),
        .I5(\hs_settle_count_reg_n_0_[0] ),
        .O(hs_settle_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hs_settle_count[1]_i_1__0 
       (.I0(\hs_settle_count_reg_n_0_[0] ),
        .I1(\hs_settle_count_reg_n_0_[1] ),
        .O(hs_settle_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hs_settle_count[2]_i_1__0 
       (.I0(\hs_settle_count_reg_n_0_[2] ),
        .I1(\hs_settle_count_reg_n_0_[0] ),
        .I2(\hs_settle_count_reg_n_0_[1] ),
        .O(hs_settle_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hs_settle_count[3]_i_1__0 
       (.I0(\hs_settle_count_reg_n_0_[3] ),
        .I1(\hs_settle_count_reg_n_0_[1] ),
        .I2(\hs_settle_count_reg_n_0_[0] ),
        .I3(\hs_settle_count_reg_n_0_[2] ),
        .O(hs_settle_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hs_settle_count[4]_i_1__0 
       (.I0(\hs_settle_count_reg_n_0_[2] ),
        .I1(\hs_settle_count_reg_n_0_[0] ),
        .I2(\hs_settle_count_reg_n_0_[1] ),
        .I3(\hs_settle_count_reg_n_0_[3] ),
        .I4(\hs_settle_count_reg_n_0_[4] ),
        .O(hs_settle_count[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hs_settle_count[5]_i_1__0 
       (.I0(\hs_settle_count_reg_n_0_[5] ),
        .I1(\hs_settle_count_reg_n_0_[2] ),
        .I2(\hs_settle_count_reg_n_0_[0] ),
        .I3(\hs_settle_count_reg_n_0_[1] ),
        .I4(\hs_settle_count_reg_n_0_[3] ),
        .I5(\hs_settle_count_reg_n_0_[4] ),
        .O(hs_settle_count[5]));
  FDCE \hs_settle_count_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(hs_settle_count[0]),
        .Q(\hs_settle_count_reg_n_0_[0] ));
  FDCE \hs_settle_count_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(hs_settle_count[1]),
        .Q(\hs_settle_count_reg_n_0_[1] ));
  FDCE \hs_settle_count_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(hs_settle_count[2]),
        .Q(\hs_settle_count_reg_n_0_[2] ));
  FDCE \hs_settle_count_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(hs_settle_count[3]),
        .Q(\hs_settle_count_reg_n_0_[3] ));
  FDCE \hs_settle_count_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(hs_settle_count[4]),
        .Q(\hs_settle_count_reg_n_0_[4] ));
  FDCE \hs_settle_count_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(hs_settle_count[5]),
        .Q(\hs_settle_count_reg_n_0_[5] ));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][10]_i_1 
       (.I0(byte_data[10]),
        .I1(\align_idx_reg[1][0] ),
        .O(\data_byte_aligned_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][11]_i_1 
       (.I0(byte_data[11]),
        .I1(\align_idx_reg[1][0] ),
        .O(\data_byte_aligned_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][12]_i_1 
       (.I0(byte_data[12]),
        .I1(\align_idx_reg[1][0] ),
        .O(\data_byte_aligned_reg[7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][13]_i_1 
       (.I0(byte_data[13]),
        .I1(\align_idx_reg[1][0] ),
        .O(\data_byte_aligned_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][14]_i_1 
       (.I0(byte_data[14]),
        .I1(\align_idx_reg[1][0] ),
        .O(\data_byte_aligned_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][15]_i_1 
       (.I0(byte_data[15]),
        .I1(\align_idx_reg[1][0] ),
        .O(\data_byte_aligned_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][8]_i_1 
       (.I0(byte_data[8]),
        .I1(\align_idx_reg[1][0] ),
        .O(\data_byte_aligned_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][9]_i_1 
       (.I0(byte_data[9]),
        .I1(\align_idx_reg[1][0] ),
        .O(\data_byte_aligned_reg[7]_0 [1]));
  FDCE \last_byte_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[0]),
        .Q(\last_byte_reg[7]_0 [0]));
  FDCE \last_byte_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[1]),
        .Q(\last_byte_reg_n_0_[1] ));
  FDCE \last_byte_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[2]),
        .Q(\last_byte_reg_n_0_[2] ));
  FDCE \last_byte_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[3]),
        .Q(\last_byte_reg_n_0_[3] ));
  FDCE \last_byte_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[4]),
        .Q(\last_byte_reg_n_0_[4] ));
  FDCE \last_byte_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[5]),
        .Q(\last_byte_reg[7]_0 [1]));
  FDCE \last_byte_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[6]),
        .Q(\last_byte_reg[7]_0 [2]));
  FDCE \last_byte_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[7]),
        .Q(\last_byte_reg[7]_0 [3]));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_data_byte_aligner" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_7
   (data_byte_valid_reg_0,
    data_byte_valid0,
    \last_byte_reg[6]_0 ,
    \last_byte_reg[4]_0 ,
    \data_byte_aligned_reg[7]_0 ,
    align_flag_reg,
    \last_byte_reg[4]_1 ,
    \last_byte_reg[7]_0 ,
    u_ISERDESE3,
    \last_byte_reg[1]_0 ,
    \align_offset_reg[3]_0 ,
    \align_offset_reg[1]_0 ,
    \align_offset_reg[3]_1 ,
    \align_offset_reg[2]_0 ,
    \align_offset_reg[3]_2 ,
    E,
    clk_hs_byte,
    data_byte_valid_reg_1,
    D,
    \data_byte_aligned_reg[0]_0 ,
    Q,
    \align_idx_reg[2][0] ,
    lane_byte_aligned_valid,
    \data_byte_aligned_reg[6]_0 ,
    \align_offset_reg[2]_1 ,
    \data_byte_aligned_reg[5]_0 ,
    \data_byte_aligned_reg[3]_0 ,
    \data_byte_aligned_reg[3]_1 ,
    \data_byte_aligned_reg[6]_1 ,
    \data_byte_aligned_reg[6]_2 ,
    \data_byte_aligned_reg[4]_0 ,
    \data_byte_aligned_reg[4]_1 ,
    \data_byte_aligned_reg[0]_1 ,
    \align_offset_reg[1]_1 ,
    \data_byte_aligned_reg[0]_2 );
  output data_byte_valid_reg_0;
  output data_byte_valid0;
  output \last_byte_reg[6]_0 ;
  output \last_byte_reg[4]_0 ;
  output [7:0]\data_byte_aligned_reg[7]_0 ;
  output [0:0]align_flag_reg;
  output [0:0]\last_byte_reg[4]_1 ;
  output [3:0]\last_byte_reg[7]_0 ;
  output u_ISERDESE3;
  output \last_byte_reg[1]_0 ;
  output \align_offset_reg[3]_0 ;
  output [1:0]\align_offset_reg[1]_0 ;
  output \align_offset_reg[3]_1 ;
  output \align_offset_reg[2]_0 ;
  output \align_offset_reg[3]_2 ;
  input [0:0]E;
  input clk_hs_byte;
  input [0:0]data_byte_valid_reg_1;
  input [3:0]D;
  input \data_byte_aligned_reg[0]_0 ;
  input [7:0]Q;
  input \align_idx_reg[2][0] ;
  input lane_byte_aligned_valid;
  input \data_byte_aligned_reg[6]_0 ;
  input \align_offset_reg[2]_1 ;
  input \data_byte_aligned_reg[5]_0 ;
  input \data_byte_aligned_reg[3]_0 ;
  input \data_byte_aligned_reg[3]_1 ;
  input \data_byte_aligned_reg[6]_1 ;
  input \data_byte_aligned_reg[6]_2 ;
  input \data_byte_aligned_reg[4]_0 ;
  input \data_byte_aligned_reg[4]_1 ;
  input \data_byte_aligned_reg[0]_1 ;
  input [1:0]\align_offset_reg[1]_1 ;
  input [0:0]\data_byte_aligned_reg[0]_2 ;

  wire [3:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]align_flag_reg;
  wire \align_idx_reg[2][0] ;
  wire \align_offset[0]_i_6__1_n_0 ;
  wire \align_offset[0]_i_7__1_n_0 ;
  wire \align_offset[2]_i_10__1_n_0 ;
  wire \align_offset[2]_i_4__1_n_0 ;
  wire \align_offset[2]_i_5__1_n_0 ;
  wire \align_offset[2]_i_6__1_n_0 ;
  wire \align_offset[2]_i_7__1_n_0 ;
  wire \align_offset[2]_i_8__1_n_0 ;
  wire [1:0]\align_offset_reg[1]_0 ;
  wire [1:0]\align_offset_reg[1]_1 ;
  wire \align_offset_reg[2]_0 ;
  wire \align_offset_reg[2]_1 ;
  wire \align_offset_reg[3]_0 ;
  wire \align_offset_reg[3]_1 ;
  wire \align_offset_reg[3]_2 ;
  wire \align_offset_reg_n_0_[2] ;
  wire \align_offset_reg_n_0_[3] ;
  wire [23:16]byte_data;
  wire clk_hs_byte;
  wire \data_byte_aligned[0]_i_2__1_n_0 ;
  wire \data_byte_aligned[0]_i_3__1_n_0 ;
  wire \data_byte_aligned[1]_i_3__1_n_0 ;
  wire \data_byte_aligned[1]_i_4__1_n_0 ;
  wire \data_byte_aligned[2]_i_2__1_n_0 ;
  wire \data_byte_aligned[2]_i_3__1_n_0 ;
  wire \data_byte_aligned[2]_i_4__1_n_0 ;
  wire \data_byte_aligned[3]_i_3__1_n_0 ;
  wire \data_byte_aligned[3]_i_4__1_n_0 ;
  wire \data_byte_aligned[4]_i_4__1_n_0 ;
  wire \data_byte_aligned[4]_i_5__1_n_0 ;
  wire \data_byte_aligned[5]_i_2__1_n_0 ;
  wire \data_byte_aligned[5]_i_3__1_n_0 ;
  wire \data_byte_aligned[5]_i_4__1_n_0 ;
  wire \data_byte_aligned[6]_i_2__1_n_0 ;
  wire \data_byte_aligned[6]_i_5__1_n_0 ;
  wire \data_byte_aligned[7]_i_6__1_n_0 ;
  wire \data_byte_aligned_reg[0]_0 ;
  wire \data_byte_aligned_reg[0]_1 ;
  wire [0:0]\data_byte_aligned_reg[0]_2 ;
  wire \data_byte_aligned_reg[3]_0 ;
  wire \data_byte_aligned_reg[3]_1 ;
  wire \data_byte_aligned_reg[4]_0 ;
  wire \data_byte_aligned_reg[4]_1 ;
  wire \data_byte_aligned_reg[5]_0 ;
  wire \data_byte_aligned_reg[6]_0 ;
  wire \data_byte_aligned_reg[6]_1 ;
  wire \data_byte_aligned_reg[6]_2 ;
  wire [7:0]\data_byte_aligned_reg[7]_0 ;
  wire data_byte_valid0;
  wire data_byte_valid_i_2__1_n_0;
  wire data_byte_valid_reg_0;
  wire [0:0]data_byte_valid_reg_1;
  wire [5:0]hs_settle_count;
  wire \hs_settle_count_reg_n_0_[0] ;
  wire \hs_settle_count_reg_n_0_[1] ;
  wire \hs_settle_count_reg_n_0_[2] ;
  wire \hs_settle_count_reg_n_0_[3] ;
  wire \hs_settle_count_reg_n_0_[4] ;
  wire \hs_settle_count_reg_n_0_[5] ;
  wire lane_byte_aligned_valid;
  wire \last_byte_reg[1]_0 ;
  wire \last_byte_reg[4]_0 ;
  wire [0:0]\last_byte_reg[4]_1 ;
  wire \last_byte_reg[6]_0 ;
  wire [3:0]\last_byte_reg[7]_0 ;
  wire \last_byte_reg_n_0_[1] ;
  wire \last_byte_reg_n_0_[2] ;
  wire \last_byte_reg_n_0_[3] ;
  wire \last_byte_reg_n_0_[4] ;
  wire [6:0]p_1_in;
  wire u_ISERDESE3;

  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \align_idx[2][2]_i_1 
       (.I0(lane_byte_aligned_valid),
        .I1(data_byte_valid_reg_0),
        .I2(\align_idx_reg[2][0] ),
        .O(align_flag_reg));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[0]_i_3__1 
       (.I0(Q[1]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(Q[2]),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(\align_offset[0]_i_6__1_n_0 ),
        .O(u_ISERDESE3));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[0]_i_4__1 
       (.I0(\last_byte_reg_n_0_[1] ),
        .I1(\last_byte_reg_n_0_[4] ),
        .I2(\last_byte_reg[7]_0 [1]),
        .I3(\last_byte_reg[7]_0 [3]),
        .I4(\align_offset[0]_i_7__1_n_0 ),
        .O(\last_byte_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[0]_i_6__1 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(Q[0]),
        .I2(\last_byte_reg_n_0_[4] ),
        .I3(\last_byte_reg[7]_0 [1]),
        .O(\align_offset[0]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \align_offset[0]_i_7__1 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(\last_byte_reg_n_0_[3] ),
        .I2(\last_byte_reg[7]_0 [2]),
        .I3(Q[0]),
        .O(\align_offset[0]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \align_offset[2]_i_10__1 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(Q[0]),
        .I2(\last_byte_reg[7]_0 [2]),
        .I3(Q[2]),
        .O(\align_offset[2]_i_10__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \align_offset[2]_i_1__1 
       (.I0(\last_byte_reg[4]_0 ),
        .I1(\last_byte_reg[6]_0 ),
        .O(\last_byte_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hF0FFFBFBFFFFFBFB)) 
    \align_offset[2]_i_2__1 
       (.I0(\last_byte_reg_n_0_[4] ),
        .I1(\align_offset[2]_i_4__1_n_0 ),
        .I2(\align_offset[2]_i_5__1_n_0 ),
        .I3(\last_byte_reg[7]_0 [2]),
        .I4(Q[0]),
        .I5(\align_offset[2]_i_6__1_n_0 ),
        .O(\last_byte_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h008000FF00800080)) 
    \align_offset[2]_i_3__1 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(Q[0]),
        .I2(\align_offset[2]_i_7__1_n_0 ),
        .I3(\align_offset[2]_i_8__1_n_0 ),
        .I4(\align_offset_reg[2]_1 ),
        .I5(\align_offset[2]_i_10__1_n_0 ),
        .O(\last_byte_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \align_offset[2]_i_4__1 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(\last_byte_reg[7]_0 [1]),
        .I3(Q[1]),
        .O(\align_offset[2]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[2]_i_5__1 
       (.I0(\last_byte_reg_n_0_[3] ),
        .I1(\last_byte_reg_n_0_[2] ),
        .O(\align_offset[2]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \align_offset[2]_i_6__1 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(\last_byte_reg[7]_0 [1]),
        .I2(\last_byte_reg_n_0_[4] ),
        .I3(\last_byte_reg_n_0_[1] ),
        .O(\align_offset[2]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \align_offset[2]_i_7__1 
       (.I0(\last_byte_reg_n_0_[3] ),
        .I1(Q[2]),
        .I2(\last_byte_reg[7]_0 [3]),
        .I3(Q[1]),
        .O(\align_offset[2]_i_7__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[2]_i_8__1 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\last_byte_reg_n_0_[4] ),
        .O(\align_offset[2]_i_8__1_n_0 ));
  FDCE \align_offset_reg[0] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_1),
        .D(\align_offset_reg[1]_1 [0]),
        .Q(\align_offset_reg[1]_0 [0]));
  FDCE \align_offset_reg[1] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_1),
        .D(\align_offset_reg[1]_1 [1]),
        .Q(\align_offset_reg[1]_0 [1]));
  FDCE \align_offset_reg[2] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_1),
        .D(\last_byte_reg[4]_1 ),
        .Q(\align_offset_reg_n_0_[2] ));
  FDCE \align_offset_reg[3] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_1),
        .D(1'b1),
        .Q(\align_offset_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \data_byte_aligned[0]_i_1__1 
       (.I0(\last_byte_reg[6]_0 ),
        .I1(\data_byte_aligned_reg[0]_0 ),
        .I2(\last_byte_reg[4]_0 ),
        .I3(Q[0]),
        .I4(data_byte_valid0),
        .I5(\data_byte_aligned[0]_i_2__1_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[0]_i_2__1 
       (.I0(\data_byte_aligned[4]_i_4__1_n_0 ),
        .I1(\data_byte_aligned[0]_i_3__1_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned_reg[0]_1 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[4]_0 ),
        .O(\data_byte_aligned[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[0]_i_3__1 
       (.I0(\last_byte_reg_n_0_[4] ),
        .I1(\last_byte_reg_n_0_[3] ),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[2] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[1] ),
        .O(\data_byte_aligned[0]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[1]_i_2__1 
       (.I0(\data_byte_aligned[5]_i_4__1_n_0 ),
        .I1(\data_byte_aligned[1]_i_3__1_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[1]_i_4__1_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[5]_0 ),
        .O(\align_offset_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[1]_i_3__1 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\last_byte_reg_n_0_[4] ),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[2] ),
        .O(\data_byte_aligned[1]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hFA0C0A0C)) 
    \data_byte_aligned[1]_i_4__1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\align_offset_reg[1]_0 [0]),
        .I4(\last_byte_reg_n_0_[1] ),
        .O(\data_byte_aligned[1]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'h3A0A)) 
    \data_byte_aligned[2]_i_1__1 
       (.I0(\data_byte_aligned[2]_i_2__1_n_0 ),
        .I1(\data_byte_aligned_reg[6]_0 ),
        .I2(data_byte_valid0),
        .I3(Q[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[2]_i_2__1 
       (.I0(\data_byte_aligned_reg[6]_2 ),
        .I1(\data_byte_aligned[2]_i_3__1_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[2]_i_4__1_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[6]_1 ),
        .O(\data_byte_aligned[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[2]_i_3__1 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(\last_byte_reg[7]_0 [1]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[4] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[3] ),
        .O(\data_byte_aligned[2]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT4 #(
    .INIT(16'h8830)) 
    \data_byte_aligned[2]_i_4__1 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(\align_offset_reg[1]_0 [1]),
        .I2(Q[7]),
        .I3(\align_offset_reg[1]_0 [0]),
        .O(\data_byte_aligned[2]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[3]_i_2__1 
       (.I0(\data_byte_aligned_reg[3]_0 ),
        .I1(\data_byte_aligned[3]_i_3__1_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[3]_i_4__1_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[3]_1 ),
        .O(\align_offset_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[3]_i_3__1 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(\last_byte_reg[7]_0 [2]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_0 [1]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[4] ),
        .O(\data_byte_aligned[3]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_byte_aligned[3]_i_4__1 
       (.I0(\align_offset_reg[1]_0 [1]),
        .I1(\align_offset_reg[1]_0 [0]),
        .I2(\last_byte_reg_n_0_[3] ),
        .O(\data_byte_aligned[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_byte_aligned[4]_i_2__1 
       (.I0(\data_byte_aligned_reg[4]_0 ),
        .I1(\data_byte_aligned[4]_i_4__1_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[4]_i_5__1_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[4]_1 ),
        .O(\align_offset_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[4]_i_4__1 
       (.I0(Q[0]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_0 [2]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg[7]_0 [1]),
        .O(\data_byte_aligned[4]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_byte_aligned[4]_i_5__1 
       (.I0(\align_offset_reg[1]_0 [1]),
        .I1(\align_offset_reg[1]_0 [0]),
        .I2(\last_byte_reg_n_0_[4] ),
        .O(\data_byte_aligned[4]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hE0EFE0E0EFEFEFEF)) 
    \data_byte_aligned[5]_i_1__1 
       (.I0(\data_byte_aligned_reg[6]_0 ),
        .I1(Q[5]),
        .I2(data_byte_valid0),
        .I3(\align_offset_reg_n_0_[3] ),
        .I4(\data_byte_aligned[5]_i_2__1_n_0 ),
        .I5(\data_byte_aligned[5]_i_3__1_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h8800880033300030)) 
    \data_byte_aligned[5]_i_2__1 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(Q[6]),
        .I3(\align_offset_reg[1]_0 [0]),
        .I4(Q[7]),
        .I5(\align_offset_reg[1]_0 [1]),
        .O(\data_byte_aligned[5]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \data_byte_aligned[5]_i_3__1 
       (.I0(\align_offset_reg_n_0_[3] ),
        .I1(\data_byte_aligned[5]_i_4__1_n_0 ),
        .I2(\align_offset_reg_n_0_[2] ),
        .I3(\data_byte_aligned_reg[5]_0 ),
        .O(\data_byte_aligned[5]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[5]_i_4__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_0 [3]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg[7]_0 [2]),
        .O(\data_byte_aligned[5]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'h3A0A)) 
    \data_byte_aligned[6]_i_1__1 
       (.I0(\data_byte_aligned[6]_i_2__1_n_0 ),
        .I1(\data_byte_aligned_reg[6]_0 ),
        .I2(data_byte_valid0),
        .I3(Q[6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_byte_aligned[6]_i_2__1 
       (.I0(\data_byte_aligned_reg[6]_1 ),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\data_byte_aligned_reg[6]_2 ),
        .I3(\align_offset_reg_n_0_[3] ),
        .I4(\data_byte_aligned[6]_i_5__1_n_0 ),
        .O(\data_byte_aligned[6]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h80800300)) 
    \data_byte_aligned[6]_i_5__1 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\align_offset_reg[1]_0 [0]),
        .I3(Q[7]),
        .I4(\align_offset_reg[1]_0 [1]),
        .O(\data_byte_aligned[6]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_byte_aligned[7]_i_3__1 
       (.I0(\data_byte_aligned_reg[3]_1 ),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\data_byte_aligned_reg[3]_0 ),
        .I3(\align_offset_reg_n_0_[3] ),
        .I4(\data_byte_aligned[7]_i_6__1_n_0 ),
        .O(\align_offset_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_byte_aligned[7]_i_6__1 
       (.I0(\align_offset_reg[1]_0 [0]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\align_offset_reg_n_0_[2] ),
        .O(\data_byte_aligned[7]_i_6__1_n_0 ));
  FDCE \data_byte_aligned_reg[0] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(p_1_in[0]),
        .Q(byte_data[16]));
  FDCE \data_byte_aligned_reg[1] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(D[0]),
        .Q(byte_data[17]));
  FDCE \data_byte_aligned_reg[2] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(p_1_in[2]),
        .Q(byte_data[18]));
  FDCE \data_byte_aligned_reg[3] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(D[1]),
        .Q(byte_data[19]));
  FDCE \data_byte_aligned_reg[4] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(D[2]),
        .Q(byte_data[20]));
  FDCE \data_byte_aligned_reg[5] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(p_1_in[5]),
        .Q(byte_data[21]));
  FDCE \data_byte_aligned_reg[6] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(p_1_in[6]),
        .Q(byte_data[22]));
  FDCE \data_byte_aligned_reg[7] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_1),
        .D(D[3]),
        .Q(byte_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT2 #(
    .INIT(4'h1)) 
    data_byte_valid_i_1__1
       (.I0(data_byte_valid_reg_0),
        .I1(data_byte_valid_i_2__1_n_0),
        .O(data_byte_valid0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    data_byte_valid_i_2__1
       (.I0(\hs_settle_count_reg_n_0_[1] ),
        .I1(\hs_settle_count_reg_n_0_[0] ),
        .I2(\hs_settle_count_reg_n_0_[5] ),
        .I3(\hs_settle_count_reg_n_0_[4] ),
        .I4(\hs_settle_count_reg_n_0_[3] ),
        .I5(\hs_settle_count_reg_n_0_[2] ),
        .O(data_byte_valid_i_2__1_n_0));
  FDCE data_byte_valid_reg
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_1),
        .D(data_byte_valid0),
        .Q(data_byte_valid_reg_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFDF)) 
    \hs_settle_count[0]_i_1__1 
       (.I0(\hs_settle_count_reg_n_0_[2] ),
        .I1(\hs_settle_count_reg_n_0_[3] ),
        .I2(\hs_settle_count_reg_n_0_[4] ),
        .I3(\hs_settle_count_reg_n_0_[5] ),
        .I4(\hs_settle_count_reg_n_0_[1] ),
        .I5(\hs_settle_count_reg_n_0_[0] ),
        .O(hs_settle_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hs_settle_count[1]_i_1__1 
       (.I0(\hs_settle_count_reg_n_0_[0] ),
        .I1(\hs_settle_count_reg_n_0_[1] ),
        .O(hs_settle_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hs_settle_count[2]_i_1__1 
       (.I0(\hs_settle_count_reg_n_0_[2] ),
        .I1(\hs_settle_count_reg_n_0_[0] ),
        .I2(\hs_settle_count_reg_n_0_[1] ),
        .O(hs_settle_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hs_settle_count[3]_i_1__1 
       (.I0(\hs_settle_count_reg_n_0_[3] ),
        .I1(\hs_settle_count_reg_n_0_[1] ),
        .I2(\hs_settle_count_reg_n_0_[0] ),
        .I3(\hs_settle_count_reg_n_0_[2] ),
        .O(hs_settle_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hs_settle_count[4]_i_1__1 
       (.I0(\hs_settle_count_reg_n_0_[2] ),
        .I1(\hs_settle_count_reg_n_0_[0] ),
        .I2(\hs_settle_count_reg_n_0_[1] ),
        .I3(\hs_settle_count_reg_n_0_[3] ),
        .I4(\hs_settle_count_reg_n_0_[4] ),
        .O(hs_settle_count[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hs_settle_count[5]_i_1__1 
       (.I0(\hs_settle_count_reg_n_0_[5] ),
        .I1(\hs_settle_count_reg_n_0_[2] ),
        .I2(\hs_settle_count_reg_n_0_[0] ),
        .I3(\hs_settle_count_reg_n_0_[1] ),
        .I4(\hs_settle_count_reg_n_0_[3] ),
        .I5(\hs_settle_count_reg_n_0_[4] ),
        .O(hs_settle_count[5]));
  FDCE \hs_settle_count_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(hs_settle_count[0]),
        .Q(\hs_settle_count_reg_n_0_[0] ));
  FDCE \hs_settle_count_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(hs_settle_count[1]),
        .Q(\hs_settle_count_reg_n_0_[1] ));
  FDCE \hs_settle_count_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(hs_settle_count[2]),
        .Q(\hs_settle_count_reg_n_0_[2] ));
  FDCE \hs_settle_count_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(hs_settle_count[3]),
        .Q(\hs_settle_count_reg_n_0_[3] ));
  FDCE \hs_settle_count_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(hs_settle_count[4]),
        .Q(\hs_settle_count_reg_n_0_[4] ));
  FDCE \hs_settle_count_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(hs_settle_count[5]),
        .Q(\hs_settle_count_reg_n_0_[5] ));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][16]_i_1 
       (.I0(byte_data[16]),
        .I1(\align_idx_reg[2][0] ),
        .O(\data_byte_aligned_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][17]_i_1 
       (.I0(byte_data[17]),
        .I1(\align_idx_reg[2][0] ),
        .O(\data_byte_aligned_reg[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][18]_i_1 
       (.I0(byte_data[18]),
        .I1(\align_idx_reg[2][0] ),
        .O(\data_byte_aligned_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][19]_i_1 
       (.I0(byte_data[19]),
        .I1(\align_idx_reg[2][0] ),
        .O(\data_byte_aligned_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][20]_i_1 
       (.I0(byte_data[20]),
        .I1(\align_idx_reg[2][0] ),
        .O(\data_byte_aligned_reg[7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][21]_i_1 
       (.I0(byte_data[21]),
        .I1(\align_idx_reg[2][0] ),
        .O(\data_byte_aligned_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][22]_i_1 
       (.I0(byte_data[22]),
        .I1(\align_idx_reg[2][0] ),
        .O(\data_byte_aligned_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][23]_i_1 
       (.I0(byte_data[23]),
        .I1(\align_idx_reg[2][0] ),
        .O(\data_byte_aligned_reg[7]_0 [7]));
  FDCE \last_byte_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[0]),
        .Q(\last_byte_reg[7]_0 [0]));
  FDCE \last_byte_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[1]),
        .Q(\last_byte_reg_n_0_[1] ));
  FDCE \last_byte_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[2]),
        .Q(\last_byte_reg_n_0_[2] ));
  FDCE \last_byte_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[3]),
        .Q(\last_byte_reg_n_0_[3] ));
  FDCE \last_byte_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[4]),
        .Q(\last_byte_reg_n_0_[4] ));
  FDCE \last_byte_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[5]),
        .Q(\last_byte_reg[7]_0 [1]));
  FDCE \last_byte_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[6]),
        .Q(\last_byte_reg[7]_0 [2]));
  FDCE \last_byte_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_1),
        .D(Q[7]),
        .Q(\last_byte_reg[7]_0 [3]));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_data_byte_aligner" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_8
   (data_byte_valid_reg_0,
    data_byte_valid0,
    \last_byte_reg[6]_0 ,
    \last_byte_reg[4]_0 ,
    \data_byte_aligned_reg[7]_0 ,
    data_byte_valid_reg_1,
    \align_idx_reg[3][0] ,
    \align_idx_reg[2][0] ,
    data_byte_valid_reg_2,
    \align_idx_reg[1][0] ,
    data_byte_valid_reg_3,
    \align_idx_reg[0][0] ,
    data_byte_valid_reg_4,
    align_flag_reg,
    \last_byte_reg[4]_1 ,
    \last_byte_reg[7]_0 ,
    u_ISERDESE3,
    \last_byte_reg[1]_0 ,
    \align_offset_reg[3]_0 ,
    \align_offset_reg[1]_0 ,
    \align_offset_reg[3]_1 ,
    \align_offset_reg[2]_0 ,
    \align_offset_reg[3]_2 ,
    E,
    clk_hs_byte,
    data_byte_valid_reg_5,
    D,
    \data_byte_aligned_reg[0]_0 ,
    Q,
    \align_idx_reg[3][0]_0 ,
    \align_idx_reg[2][0]_0 ,
    \align_idx_reg[1][0]_0 ,
    \align_idx_reg[0][0]_0 ,
    lane_byte_aligned_valid,
    \align_idx_reg[0][0]_1 ,
    \align_idx_reg[0][0]_2 ,
    \align_idx_reg[0][0]_3 ,
    \data_byte_aligned_reg[6]_0 ,
    \align_offset_reg[2]_1 ,
    \data_byte_aligned_reg[5]_0 ,
    \data_byte_aligned_reg[3]_0 ,
    \data_byte_aligned_reg[3]_1 ,
    \data_byte_aligned_reg[6]_1 ,
    \data_byte_aligned_reg[6]_2 ,
    \data_byte_aligned_reg[4]_0 ,
    \data_byte_aligned_reg[4]_1 ,
    \data_byte_aligned_reg[0]_1 ,
    \align_offset_reg[1]_1 ,
    \data_byte_aligned_reg[0]_2 );
  output data_byte_valid_reg_0;
  output data_byte_valid0;
  output \last_byte_reg[6]_0 ;
  output \last_byte_reg[4]_0 ;
  output [7:0]\data_byte_aligned_reg[7]_0 ;
  output data_byte_valid_reg_1;
  output [0:0]\align_idx_reg[3][0] ;
  output [0:0]\align_idx_reg[2][0] ;
  output data_byte_valid_reg_2;
  output [0:0]\align_idx_reg[1][0] ;
  output data_byte_valid_reg_3;
  output [0:0]\align_idx_reg[0][0] ;
  output data_byte_valid_reg_4;
  output [0:0]align_flag_reg;
  output [0:0]\last_byte_reg[4]_1 ;
  output [3:0]\last_byte_reg[7]_0 ;
  output u_ISERDESE3;
  output \last_byte_reg[1]_0 ;
  output \align_offset_reg[3]_0 ;
  output [1:0]\align_offset_reg[1]_0 ;
  output \align_offset_reg[3]_1 ;
  output \align_offset_reg[2]_0 ;
  output \align_offset_reg[3]_2 ;
  input [0:0]E;
  input clk_hs_byte;
  input [0:0]data_byte_valid_reg_5;
  input [3:0]D;
  input \data_byte_aligned_reg[0]_0 ;
  input [7:0]Q;
  input [0:0]\align_idx_reg[3][0]_0 ;
  input [0:0]\align_idx_reg[2][0]_0 ;
  input [0:0]\align_idx_reg[1][0]_0 ;
  input [0:0]\align_idx_reg[0][0]_0 ;
  input lane_byte_aligned_valid;
  input \align_idx_reg[0][0]_1 ;
  input \align_idx_reg[0][0]_2 ;
  input \align_idx_reg[0][0]_3 ;
  input \data_byte_aligned_reg[6]_0 ;
  input \align_offset_reg[2]_1 ;
  input \data_byte_aligned_reg[5]_0 ;
  input \data_byte_aligned_reg[3]_0 ;
  input \data_byte_aligned_reg[3]_1 ;
  input \data_byte_aligned_reg[6]_1 ;
  input \data_byte_aligned_reg[6]_2 ;
  input \data_byte_aligned_reg[4]_0 ;
  input \data_byte_aligned_reg[4]_1 ;
  input \data_byte_aligned_reg[0]_1 ;
  input [1:0]\align_offset_reg[1]_1 ;
  input [0:0]\data_byte_aligned_reg[0]_2 ;

  wire [3:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]align_flag_reg;
  wire [0:0]\align_idx_reg[0][0] ;
  wire [0:0]\align_idx_reg[0][0]_0 ;
  wire \align_idx_reg[0][0]_1 ;
  wire \align_idx_reg[0][0]_2 ;
  wire \align_idx_reg[0][0]_3 ;
  wire [0:0]\align_idx_reg[1][0] ;
  wire [0:0]\align_idx_reg[1][0]_0 ;
  wire [0:0]\align_idx_reg[2][0] ;
  wire [0:0]\align_idx_reg[2][0]_0 ;
  wire [0:0]\align_idx_reg[3][0] ;
  wire [0:0]\align_idx_reg[3][0]_0 ;
  wire \align_offset[0]_i_6__2_n_0 ;
  wire \align_offset[0]_i_7__2_n_0 ;
  wire \align_offset[2]_i_10__2_n_0 ;
  wire \align_offset[2]_i_4__2_n_0 ;
  wire \align_offset[2]_i_5__2_n_0 ;
  wire \align_offset[2]_i_6__2_n_0 ;
  wire \align_offset[2]_i_7__2_n_0 ;
  wire \align_offset[2]_i_8__2_n_0 ;
  wire [1:0]\align_offset_reg[1]_0 ;
  wire [1:0]\align_offset_reg[1]_1 ;
  wire \align_offset_reg[2]_0 ;
  wire \align_offset_reg[2]_1 ;
  wire \align_offset_reg[3]_0 ;
  wire \align_offset_reg[3]_1 ;
  wire \align_offset_reg[3]_2 ;
  wire \align_offset_reg_n_0_[2] ;
  wire \align_offset_reg_n_0_[3] ;
  wire [31:24]byte_data;
  wire clk_hs_byte;
  wire \data_byte_aligned[0]_i_2__2_n_0 ;
  wire \data_byte_aligned[0]_i_3__2_n_0 ;
  wire \data_byte_aligned[1]_i_3__2_n_0 ;
  wire \data_byte_aligned[1]_i_4__2_n_0 ;
  wire \data_byte_aligned[2]_i_2__2_n_0 ;
  wire \data_byte_aligned[2]_i_3__2_n_0 ;
  wire \data_byte_aligned[2]_i_4__2_n_0 ;
  wire \data_byte_aligned[3]_i_3__2_n_0 ;
  wire \data_byte_aligned[3]_i_4__2_n_0 ;
  wire \data_byte_aligned[4]_i_4__2_n_0 ;
  wire \data_byte_aligned[4]_i_5__2_n_0 ;
  wire \data_byte_aligned[5]_i_2__2_n_0 ;
  wire \data_byte_aligned[5]_i_3__2_n_0 ;
  wire \data_byte_aligned[5]_i_4__2_n_0 ;
  wire \data_byte_aligned[6]_i_2__2_n_0 ;
  wire \data_byte_aligned[6]_i_5__2_n_0 ;
  wire \data_byte_aligned[7]_i_6__2_n_0 ;
  wire \data_byte_aligned_reg[0]_0 ;
  wire \data_byte_aligned_reg[0]_1 ;
  wire [0:0]\data_byte_aligned_reg[0]_2 ;
  wire \data_byte_aligned_reg[3]_0 ;
  wire \data_byte_aligned_reg[3]_1 ;
  wire \data_byte_aligned_reg[4]_0 ;
  wire \data_byte_aligned_reg[4]_1 ;
  wire \data_byte_aligned_reg[5]_0 ;
  wire \data_byte_aligned_reg[6]_0 ;
  wire \data_byte_aligned_reg[6]_1 ;
  wire \data_byte_aligned_reg[6]_2 ;
  wire [7:0]\data_byte_aligned_reg[7]_0 ;
  wire data_byte_valid0;
  wire data_byte_valid_i_2__2_n_0;
  wire data_byte_valid_reg_0;
  wire data_byte_valid_reg_1;
  wire data_byte_valid_reg_2;
  wire data_byte_valid_reg_3;
  wire data_byte_valid_reg_4;
  wire [0:0]data_byte_valid_reg_5;
  wire [5:0]hs_settle_count;
  wire \hs_settle_count_reg_n_0_[0] ;
  wire \hs_settle_count_reg_n_0_[1] ;
  wire \hs_settle_count_reg_n_0_[2] ;
  wire \hs_settle_count_reg_n_0_[3] ;
  wire \hs_settle_count_reg_n_0_[4] ;
  wire \hs_settle_count_reg_n_0_[5] ;
  wire lane_byte_aligned_valid;
  wire \last_byte_reg[1]_0 ;
  wire \last_byte_reg[4]_0 ;
  wire [0:0]\last_byte_reg[4]_1 ;
  wire \last_byte_reg[6]_0 ;
  wire [3:0]\last_byte_reg[7]_0 ;
  wire \last_byte_reg_n_0_[1] ;
  wire \last_byte_reg_n_0_[2] ;
  wire \last_byte_reg_n_0_[3] ;
  wire \last_byte_reg_n_0_[4] ;
  wire [6:0]p_1_in;
  wire u_ISERDESE3;

  LUT2 #(
    .INIT(4'h2)) 
    \align_idx[0][0]_i_1 
       (.I0(data_byte_valid_reg_4),
        .I1(\align_idx_reg[0][0]_0 ),
        .O(\align_idx_reg[0][0] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \align_idx[0][2]_i_3 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0]_1 ),
        .I2(\align_idx_reg[0][0]_2 ),
        .I3(\align_idx_reg[0][0]_3 ),
        .O(data_byte_valid_reg_4));
  LUT2 #(
    .INIT(4'h2)) 
    \align_idx[1][0]_i_1 
       (.I0(data_byte_valid_reg_3),
        .I1(\align_idx_reg[1][0]_0 ),
        .O(\align_idx_reg[1][0] ));
  LUT2 #(
    .INIT(4'h2)) 
    \align_idx[2][0]_i_1 
       (.I0(data_byte_valid_reg_2),
        .I1(\align_idx_reg[2][0]_0 ),
        .O(\align_idx_reg[2][0] ));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \align_idx[3][0]_i_1 
       (.I0(data_byte_valid_reg_1),
        .I1(\align_idx_reg[3][0]_0 ),
        .O(\align_idx_reg[3][0] ));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \align_idx[3][2]_i_1 
       (.I0(lane_byte_aligned_valid),
        .I1(data_byte_valid_reg_0),
        .I2(data_byte_valid_reg_1),
        .O(align_flag_reg));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[0]_i_3__2 
       (.I0(Q[1]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(Q[2]),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(\align_offset[0]_i_6__2_n_0 ),
        .O(u_ISERDESE3));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[0]_i_4__2 
       (.I0(\last_byte_reg_n_0_[1] ),
        .I1(\last_byte_reg_n_0_[4] ),
        .I2(\last_byte_reg[7]_0 [1]),
        .I3(\last_byte_reg[7]_0 [3]),
        .I4(\align_offset[0]_i_7__2_n_0 ),
        .O(\last_byte_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[0]_i_6__2 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(Q[0]),
        .I2(\last_byte_reg_n_0_[4] ),
        .I3(\last_byte_reg[7]_0 [1]),
        .O(\align_offset[0]_i_6__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \align_offset[0]_i_7__2 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(\last_byte_reg_n_0_[3] ),
        .I2(\last_byte_reg[7]_0 [2]),
        .I3(Q[0]),
        .O(\align_offset[0]_i_7__2_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \align_offset[2]_i_10__2 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(Q[0]),
        .I2(\last_byte_reg[7]_0 [2]),
        .I3(Q[2]),
        .O(\align_offset[2]_i_10__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \align_offset[2]_i_1__2 
       (.I0(\last_byte_reg[4]_0 ),
        .I1(\last_byte_reg[6]_0 ),
        .O(\last_byte_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hF0FFFBFBFFFFFBFB)) 
    \align_offset[2]_i_2__2 
       (.I0(\last_byte_reg_n_0_[4] ),
        .I1(\align_offset[2]_i_4__2_n_0 ),
        .I2(\align_offset[2]_i_5__2_n_0 ),
        .I3(\last_byte_reg[7]_0 [2]),
        .I4(Q[0]),
        .I5(\align_offset[2]_i_6__2_n_0 ),
        .O(\last_byte_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h008000FF00800080)) 
    \align_offset[2]_i_3__2 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(Q[0]),
        .I2(\align_offset[2]_i_7__2_n_0 ),
        .I3(\align_offset[2]_i_8__2_n_0 ),
        .I4(\align_offset_reg[2]_1 ),
        .I5(\align_offset[2]_i_10__2_n_0 ),
        .O(\last_byte_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \align_offset[2]_i_4__2 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(\last_byte_reg[7]_0 [1]),
        .I3(Q[1]),
        .O(\align_offset[2]_i_4__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[2]_i_5__2 
       (.I0(\last_byte_reg_n_0_[3] ),
        .I1(\last_byte_reg_n_0_[2] ),
        .O(\align_offset[2]_i_5__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \align_offset[2]_i_6__2 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(\last_byte_reg[7]_0 [1]),
        .I2(\last_byte_reg_n_0_[4] ),
        .I3(\last_byte_reg_n_0_[1] ),
        .O(\align_offset[2]_i_6__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \align_offset[2]_i_7__2 
       (.I0(\last_byte_reg_n_0_[3] ),
        .I1(Q[2]),
        .I2(\last_byte_reg[7]_0 [3]),
        .I3(Q[1]),
        .O(\align_offset[2]_i_7__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[2]_i_8__2 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\last_byte_reg_n_0_[4] ),
        .O(\align_offset[2]_i_8__2_n_0 ));
  FDCE \align_offset_reg[0] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_5),
        .D(\align_offset_reg[1]_1 [0]),
        .Q(\align_offset_reg[1]_0 [0]));
  FDCE \align_offset_reg[1] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_5),
        .D(\align_offset_reg[1]_1 [1]),
        .Q(\align_offset_reg[1]_0 [1]));
  FDCE \align_offset_reg[2] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_5),
        .D(\last_byte_reg[4]_1 ),
        .Q(\align_offset_reg_n_0_[2] ));
  FDCE \align_offset_reg[3] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_5),
        .D(1'b1),
        .Q(\align_offset_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \data_byte_aligned[0]_i_1__2 
       (.I0(\last_byte_reg[6]_0 ),
        .I1(\data_byte_aligned_reg[0]_0 ),
        .I2(\last_byte_reg[4]_0 ),
        .I3(Q[0]),
        .I4(data_byte_valid0),
        .I5(\data_byte_aligned[0]_i_2__2_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[0]_i_2__2 
       (.I0(\data_byte_aligned[4]_i_4__2_n_0 ),
        .I1(\data_byte_aligned[0]_i_3__2_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned_reg[0]_1 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[4]_0 ),
        .O(\data_byte_aligned[0]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[0]_i_3__2 
       (.I0(\last_byte_reg_n_0_[4] ),
        .I1(\last_byte_reg_n_0_[3] ),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[2] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[1] ),
        .O(\data_byte_aligned[0]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[1]_i_2__2 
       (.I0(\data_byte_aligned[5]_i_4__2_n_0 ),
        .I1(\data_byte_aligned[1]_i_3__2_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[1]_i_4__2_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[5]_0 ),
        .O(\align_offset_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[1]_i_3__2 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\last_byte_reg_n_0_[4] ),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[2] ),
        .O(\data_byte_aligned[1]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'hFA0C0A0C)) 
    \data_byte_aligned[1]_i_4__2 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\align_offset_reg[1]_0 [0]),
        .I4(\last_byte_reg_n_0_[1] ),
        .O(\data_byte_aligned[1]_i_4__2_n_0 ));
  LUT4 #(
    .INIT(16'h3A0A)) 
    \data_byte_aligned[2]_i_1__2 
       (.I0(\data_byte_aligned[2]_i_2__2_n_0 ),
        .I1(\data_byte_aligned_reg[6]_0 ),
        .I2(data_byte_valid0),
        .I3(Q[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[2]_i_2__2 
       (.I0(\data_byte_aligned_reg[6]_2 ),
        .I1(\data_byte_aligned[2]_i_3__2_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[2]_i_4__2_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[6]_1 ),
        .O(\data_byte_aligned[2]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[2]_i_3__2 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(\last_byte_reg[7]_0 [1]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[4] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[3] ),
        .O(\data_byte_aligned[2]_i_3__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT4 #(
    .INIT(16'h8830)) 
    \data_byte_aligned[2]_i_4__2 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(\align_offset_reg[1]_0 [1]),
        .I2(Q[7]),
        .I3(\align_offset_reg[1]_0 [0]),
        .O(\data_byte_aligned[2]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[3]_i_2__2 
       (.I0(\data_byte_aligned_reg[3]_0 ),
        .I1(\data_byte_aligned[3]_i_3__2_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[3]_i_4__2_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[3]_1 ),
        .O(\align_offset_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[3]_i_3__2 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(\last_byte_reg[7]_0 [2]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_0 [1]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[4] ),
        .O(\data_byte_aligned[3]_i_3__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_byte_aligned[3]_i_4__2 
       (.I0(\align_offset_reg[1]_0 [1]),
        .I1(\align_offset_reg[1]_0 [0]),
        .I2(\last_byte_reg_n_0_[3] ),
        .O(\data_byte_aligned[3]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_byte_aligned[4]_i_2__2 
       (.I0(\data_byte_aligned_reg[4]_0 ),
        .I1(\data_byte_aligned[4]_i_4__2_n_0 ),
        .I2(\align_offset_reg_n_0_[3] ),
        .I3(\data_byte_aligned[4]_i_5__2_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[4]_1 ),
        .O(\align_offset_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[4]_i_4__2 
       (.I0(Q[0]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_0 [2]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg[7]_0 [1]),
        .O(\data_byte_aligned[4]_i_4__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_byte_aligned[4]_i_5__2 
       (.I0(\align_offset_reg[1]_0 [1]),
        .I1(\align_offset_reg[1]_0 [0]),
        .I2(\last_byte_reg_n_0_[4] ),
        .O(\data_byte_aligned[4]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'hE0EFE0E0EFEFEFEF)) 
    \data_byte_aligned[5]_i_1__2 
       (.I0(\data_byte_aligned_reg[6]_0 ),
        .I1(Q[5]),
        .I2(data_byte_valid0),
        .I3(\align_offset_reg_n_0_[3] ),
        .I4(\data_byte_aligned[5]_i_2__2_n_0 ),
        .I5(\data_byte_aligned[5]_i_3__2_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h8800880033300030)) 
    \data_byte_aligned[5]_i_2__2 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(Q[6]),
        .I3(\align_offset_reg[1]_0 [0]),
        .I4(Q[7]),
        .I5(\align_offset_reg[1]_0 [1]),
        .O(\data_byte_aligned[5]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \data_byte_aligned[5]_i_3__2 
       (.I0(\align_offset_reg_n_0_[3] ),
        .I1(\data_byte_aligned[5]_i_4__2_n_0 ),
        .I2(\align_offset_reg_n_0_[2] ),
        .I3(\data_byte_aligned_reg[5]_0 ),
        .O(\data_byte_aligned[5]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[5]_i_4__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_0 [3]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg[7]_0 [2]),
        .O(\data_byte_aligned[5]_i_4__2_n_0 ));
  LUT4 #(
    .INIT(16'h3A0A)) 
    \data_byte_aligned[6]_i_1__2 
       (.I0(\data_byte_aligned[6]_i_2__2_n_0 ),
        .I1(\data_byte_aligned_reg[6]_0 ),
        .I2(data_byte_valid0),
        .I3(Q[6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_byte_aligned[6]_i_2__2 
       (.I0(\data_byte_aligned_reg[6]_1 ),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\data_byte_aligned_reg[6]_2 ),
        .I3(\align_offset_reg_n_0_[3] ),
        .I4(\data_byte_aligned[6]_i_5__2_n_0 ),
        .O(\data_byte_aligned[6]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h80800300)) 
    \data_byte_aligned[6]_i_5__2 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\align_offset_reg[1]_0 [0]),
        .I3(Q[7]),
        .I4(\align_offset_reg[1]_0 [1]),
        .O(\data_byte_aligned[6]_i_5__2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_byte_aligned[7]_i_3__2 
       (.I0(\data_byte_aligned_reg[3]_1 ),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\data_byte_aligned_reg[3]_0 ),
        .I3(\align_offset_reg_n_0_[3] ),
        .I4(\data_byte_aligned[7]_i_6__2_n_0 ),
        .O(\align_offset_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_byte_aligned[7]_i_6__2 
       (.I0(\align_offset_reg[1]_0 [0]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\align_offset_reg_n_0_[2] ),
        .O(\data_byte_aligned[7]_i_6__2_n_0 ));
  FDCE \data_byte_aligned_reg[0] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_5),
        .D(p_1_in[0]),
        .Q(byte_data[24]));
  FDCE \data_byte_aligned_reg[1] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_5),
        .D(D[0]),
        .Q(byte_data[25]));
  FDCE \data_byte_aligned_reg[2] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_5),
        .D(p_1_in[2]),
        .Q(byte_data[26]));
  FDCE \data_byte_aligned_reg[3] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_5),
        .D(D[1]),
        .Q(byte_data[27]));
  FDCE \data_byte_aligned_reg[4] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_5),
        .D(D[2]),
        .Q(byte_data[28]));
  FDCE \data_byte_aligned_reg[5] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_5),
        .D(p_1_in[5]),
        .Q(byte_data[29]));
  FDCE \data_byte_aligned_reg[6] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_5),
        .D(p_1_in[6]),
        .Q(byte_data[30]));
  FDCE \data_byte_aligned_reg[7] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_2 ),
        .CLR(data_byte_valid_reg_5),
        .D(D[3]),
        .Q(byte_data[31]));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT2 #(
    .INIT(4'h1)) 
    data_byte_valid_i_1__2
       (.I0(data_byte_valid_reg_0),
        .I1(data_byte_valid_i_2__2_n_0),
        .O(data_byte_valid0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    data_byte_valid_i_2__2
       (.I0(\hs_settle_count_reg_n_0_[1] ),
        .I1(\hs_settle_count_reg_n_0_[0] ),
        .I2(\hs_settle_count_reg_n_0_[5] ),
        .I3(\hs_settle_count_reg_n_0_[4] ),
        .I4(\hs_settle_count_reg_n_0_[3] ),
        .I5(\hs_settle_count_reg_n_0_[2] ),
        .O(data_byte_valid_i_2__2_n_0));
  FDCE data_byte_valid_reg
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(data_byte_valid_reg_5),
        .D(data_byte_valid0),
        .Q(data_byte_valid_reg_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFDF)) 
    \hs_settle_count[0]_i_1__2 
       (.I0(\hs_settle_count_reg_n_0_[2] ),
        .I1(\hs_settle_count_reg_n_0_[3] ),
        .I2(\hs_settle_count_reg_n_0_[4] ),
        .I3(\hs_settle_count_reg_n_0_[5] ),
        .I4(\hs_settle_count_reg_n_0_[1] ),
        .I5(\hs_settle_count_reg_n_0_[0] ),
        .O(hs_settle_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hs_settle_count[1]_i_1__2 
       (.I0(\hs_settle_count_reg_n_0_[0] ),
        .I1(\hs_settle_count_reg_n_0_[1] ),
        .O(hs_settle_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hs_settle_count[2]_i_1__2 
       (.I0(\hs_settle_count_reg_n_0_[2] ),
        .I1(\hs_settle_count_reg_n_0_[0] ),
        .I2(\hs_settle_count_reg_n_0_[1] ),
        .O(hs_settle_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hs_settle_count[3]_i_1__2 
       (.I0(\hs_settle_count_reg_n_0_[3] ),
        .I1(\hs_settle_count_reg_n_0_[1] ),
        .I2(\hs_settle_count_reg_n_0_[0] ),
        .I3(\hs_settle_count_reg_n_0_[2] ),
        .O(hs_settle_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hs_settle_count[4]_i_1__2 
       (.I0(\hs_settle_count_reg_n_0_[2] ),
        .I1(\hs_settle_count_reg_n_0_[0] ),
        .I2(\hs_settle_count_reg_n_0_[1] ),
        .I3(\hs_settle_count_reg_n_0_[3] ),
        .I4(\hs_settle_count_reg_n_0_[4] ),
        .O(hs_settle_count[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hs_settle_count[5]_i_1__2 
       (.I0(\hs_settle_count_reg_n_0_[5] ),
        .I1(\hs_settle_count_reg_n_0_[2] ),
        .I2(\hs_settle_count_reg_n_0_[0] ),
        .I3(\hs_settle_count_reg_n_0_[1] ),
        .I4(\hs_settle_count_reg_n_0_[3] ),
        .I5(\hs_settle_count_reg_n_0_[4] ),
        .O(hs_settle_count[5]));
  FDCE \hs_settle_count_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(hs_settle_count[0]),
        .Q(\hs_settle_count_reg_n_0_[0] ));
  FDCE \hs_settle_count_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(hs_settle_count[1]),
        .Q(\hs_settle_count_reg_n_0_[1] ));
  FDCE \hs_settle_count_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(hs_settle_count[2]),
        .Q(\hs_settle_count_reg_n_0_[2] ));
  FDCE \hs_settle_count_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(hs_settle_count[3]),
        .Q(\hs_settle_count_reg_n_0_[3] ));
  FDCE \hs_settle_count_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(hs_settle_count[4]),
        .Q(\hs_settle_count_reg_n_0_[4] ));
  FDCE \hs_settle_count_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(hs_settle_count[5]),
        .Q(\hs_settle_count_reg_n_0_[5] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lane_buf[0][15]_i_2 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0]_1 ),
        .I2(\align_idx_reg[0][0]_2 ),
        .I3(\align_idx_reg[0][0]_3 ),
        .O(data_byte_valid_reg_3));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lane_buf[0][23]_i_2 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0]_1 ),
        .I2(\align_idx_reg[0][0]_2 ),
        .I3(\align_idx_reg[0][0]_3 ),
        .O(data_byte_valid_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][24]_i_1 
       (.I0(byte_data[24]),
        .I1(data_byte_valid_reg_1),
        .O(\data_byte_aligned_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][25]_i_1 
       (.I0(byte_data[25]),
        .I1(data_byte_valid_reg_1),
        .O(\data_byte_aligned_reg[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][26]_i_1 
       (.I0(byte_data[26]),
        .I1(data_byte_valid_reg_1),
        .O(\data_byte_aligned_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][27]_i_1 
       (.I0(byte_data[27]),
        .I1(data_byte_valid_reg_1),
        .O(\data_byte_aligned_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][28]_i_1 
       (.I0(byte_data[28]),
        .I1(data_byte_valid_reg_1),
        .O(\data_byte_aligned_reg[7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][29]_i_1 
       (.I0(byte_data[29]),
        .I1(data_byte_valid_reg_1),
        .O(\data_byte_aligned_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][30]_i_1 
       (.I0(byte_data[30]),
        .I1(data_byte_valid_reg_1),
        .O(\data_byte_aligned_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lane_buf[0][31]_i_1 
       (.I0(byte_data[31]),
        .I1(data_byte_valid_reg_1),
        .O(\data_byte_aligned_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lane_buf[0][31]_i_2 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0]_1 ),
        .I2(\align_idx_reg[0][0]_2 ),
        .I3(\align_idx_reg[0][0]_3 ),
        .O(data_byte_valid_reg_1));
  FDCE \last_byte_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(Q[0]),
        .Q(\last_byte_reg[7]_0 [0]));
  FDCE \last_byte_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(Q[1]),
        .Q(\last_byte_reg_n_0_[1] ));
  FDCE \last_byte_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(Q[2]),
        .Q(\last_byte_reg_n_0_[2] ));
  FDCE \last_byte_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(Q[3]),
        .Q(\last_byte_reg_n_0_[3] ));
  FDCE \last_byte_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(Q[4]),
        .Q(\last_byte_reg_n_0_[4] ));
  FDCE \last_byte_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(Q[5]),
        .Q(\last_byte_reg[7]_0 [1]));
  FDCE \last_byte_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(Q[6]),
        .Q(\last_byte_reg[7]_0 [2]));
  FDCE \last_byte_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(data_byte_valid_reg_5),
        .D(Q[7]),
        .Q(\last_byte_reg[7]_0 [3]));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_data_io" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_data_io
   (data_hs_bit_0,
    data_lp_n_0,
    data_lp_p_0,
    dphy_data_p,
    dphy_data_n);
  output data_hs_bit_0;
  output data_lp_n_0;
  output data_lp_p_0;
  input [0:0]dphy_data_p;
  input [0:0]dphy_data_n;

  wire data_hs_bit_0;
  wire data_lp_n_0;
  wire data_lp_p_0;
  wire [0:0]dphy_data_n;
  wire [0:0]dphy_data_p;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DPHY #(
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    u_IBUFDS_DPHY
       (.HSRX_DISABLE(1'b0),
        .HSRX_O(data_hs_bit_0),
        .I(dphy_data_p),
        .IB(dphy_data_n),
        .LPRX_DISABLE(1'b0),
        .LPRX_O_N(data_lp_n_0),
        .LPRX_O_P(data_lp_p_0));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_data_io" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_0
   (data_hs_bit_1,
    data_lp_n_1,
    data_lp_p_1,
    dphy_data_p,
    dphy_data_n);
  output data_hs_bit_1;
  output data_lp_n_1;
  output data_lp_p_1;
  input [0:0]dphy_data_p;
  input [0:0]dphy_data_n;

  wire data_hs_bit_1;
  wire data_lp_n_1;
  wire data_lp_p_1;
  wire [0:0]dphy_data_n;
  wire [0:0]dphy_data_p;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DPHY #(
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    u_IBUFDS_DPHY
       (.HSRX_DISABLE(1'b0),
        .HSRX_O(data_hs_bit_1),
        .I(dphy_data_p),
        .IB(dphy_data_n),
        .LPRX_DISABLE(1'b0),
        .LPRX_O_N(data_lp_n_1),
        .LPRX_O_P(data_lp_p_1));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_data_io" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_1
   (data_hs_bit_2,
    data_lp_n_2,
    data_lp_p_2,
    dphy_data_p,
    dphy_data_n);
  output data_hs_bit_2;
  output data_lp_n_2;
  output data_lp_p_2;
  input [0:0]dphy_data_p;
  input [0:0]dphy_data_n;

  wire data_hs_bit_2;
  wire data_lp_n_2;
  wire data_lp_p_2;
  wire [0:0]dphy_data_n;
  wire [0:0]dphy_data_p;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DPHY #(
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    u_IBUFDS_DPHY
       (.HSRX_DISABLE(1'b0),
        .HSRX_O(data_hs_bit_2),
        .I(dphy_data_p),
        .IB(dphy_data_n),
        .LPRX_DISABLE(1'b0),
        .LPRX_O_N(data_lp_n_2),
        .LPRX_O_P(data_lp_p_2));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_data_io" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_2
   (data_hs_bit_3,
    data_lp_n_3,
    data_lp_p_3,
    dphy_data_p,
    dphy_data_n);
  output data_hs_bit_3;
  output data_lp_n_3;
  output data_lp_p_3;
  input [0:0]dphy_data_p;
  input [0:0]dphy_data_n;

  wire data_hs_bit_3;
  wire data_lp_n_3;
  wire data_lp_p_3;
  wire [0:0]dphy_data_n;
  wire [0:0]dphy_data_p;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DPHY #(
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    u_IBUFDS_DPHY
       (.HSRX_DISABLE(1'b0),
        .HSRX_O(data_hs_bit_3),
        .I(dphy_data_p),
        .IB(dphy_data_n),
        .LPRX_DISABLE(1'b0),
        .LPRX_O_N(data_lp_n_3),
        .LPRX_O_P(data_lp_p_3));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_to_byte" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte
   (Q,
    E,
    \last_byte_reg[5] ,
    u_ISERDESE3_0,
    D,
    \last_byte_reg[5]_0 ,
    u_ISERDESE3_1,
    u_ISERDESE3_2,
    u_ISERDESE3_3,
    u_ISERDESE3_4,
    u_ISERDESE3_5,
    u_ISERDESE3_6,
    u_ISERDESE3_7,
    u_ISERDESE3_8,
    u_ISERDESE3_9,
    u_ISERDESE3_10,
    clk_hs_byte,
    data_hs_bit_0,
    AR,
    clk_hs_bit,
    data_byte_valid0,
    \align_offset_reg[1] ,
    \data_byte_aligned_reg[1] ,
    \data_byte_aligned_reg[1]_0 ,
    \data_byte_aligned_reg[7] ,
    \data_byte_aligned_reg[4] ,
    \data_byte_aligned_reg[3] ,
    \align_offset_reg[0] ,
    \align_offset_reg[0]_0 ,
    data_byte_valid_reg,
    \data_byte_aligned[2]_i_2 ,
    \data_byte_aligned[2]_i_2_0 );
  output [7:0]Q;
  output [0:0]E;
  output \last_byte_reg[5] ;
  output [0:0]u_ISERDESE3_0;
  output [1:0]D;
  output \last_byte_reg[5]_0 ;
  output [3:0]u_ISERDESE3_1;
  output u_ISERDESE3_2;
  output u_ISERDESE3_3;
  output u_ISERDESE3_4;
  output u_ISERDESE3_5;
  output u_ISERDESE3_6;
  output u_ISERDESE3_7;
  output u_ISERDESE3_8;
  output u_ISERDESE3_9;
  output u_ISERDESE3_10;
  input clk_hs_byte;
  input data_hs_bit_0;
  input [0:0]AR;
  input clk_hs_bit;
  input data_byte_valid0;
  input \align_offset_reg[1] ;
  input \data_byte_aligned_reg[1] ;
  input [0:0]\data_byte_aligned_reg[1]_0 ;
  input \data_byte_aligned_reg[7] ;
  input \data_byte_aligned_reg[4] ;
  input \data_byte_aligned_reg[3] ;
  input \align_offset_reg[0] ;
  input \align_offset_reg[0]_0 ;
  input data_byte_valid_reg;
  input [3:0]\data_byte_aligned[2]_i_2 ;
  input [1:0]\data_byte_aligned[2]_i_2_0 ;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire FIFO_RD_EN0;
  wire [7:0]Q;
  wire \align_offset[0]_i_2_n_0 ;
  wire \align_offset[0]_i_5_n_0 ;
  wire \align_offset[1]_i_2_n_0 ;
  wire \align_offset[1]_i_4_n_0 ;
  wire \align_offset[1]_i_5_n_0 ;
  wire \align_offset[3]_i_3_n_0 ;
  wire \align_offset[3]_i_4_n_0 ;
  wire \align_offset_reg[0] ;
  wire \align_offset_reg[0]_0 ;
  wire \align_offset_reg[1] ;
  wire clk_hs_bit;
  wire clk_hs_byte;
  wire data_bit_delayed;
  wire [3:0]\data_byte_aligned[2]_i_2 ;
  wire [1:0]\data_byte_aligned[2]_i_2_0 ;
  wire \data_byte_aligned_reg[1] ;
  wire [0:0]\data_byte_aligned_reg[1]_0 ;
  wire \data_byte_aligned_reg[3] ;
  wire \data_byte_aligned_reg[4] ;
  wire \data_byte_aligned_reg[7] ;
  wire data_byte_valid0;
  wire data_byte_valid_reg;
  wire data_hs_bit_0;
  wire fifo_empty;
  wire \last_byte_reg[5] ;
  wire \last_byte_reg[5]_0 ;
  wire [0:0]u_ISERDESE3_0;
  wire [3:0]u_ISERDESE3_1;
  wire u_ISERDESE3_10;
  wire u_ISERDESE3_2;
  wire u_ISERDESE3_3;
  wire u_ISERDESE3_4;
  wire u_ISERDESE3_5;
  wire u_ISERDESE3_6;
  wire u_ISERDESE3_7;
  wire u_ISERDESE3_8;
  wire u_ISERDESE3_9;
  wire NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED;
  wire NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED;
  wire [8:0]NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED;
  wire NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED;

  LUT4 #(
    .INIT(16'h0004)) 
    \align_offset[0]_i_1 
       (.I0(\last_byte_reg[5]_0 ),
        .I1(\align_offset[0]_i_2_n_0 ),
        .I2(\align_offset_reg[0] ),
        .I3(\align_offset_reg[0]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \align_offset[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\align_offset[0]_i_5_n_0 ),
        .O(\align_offset[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \align_offset[0]_i_5 
       (.I0(\data_byte_aligned[2]_i_2 [3]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[6]),
        .O(\align_offset[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \align_offset[1]_i_1 
       (.I0(\align_offset[1]_i_2_n_0 ),
        .I1(\last_byte_reg[5]_0 ),
        .I2(\align_offset_reg[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(\align_offset[1]_i_4_n_0 ),
        .O(\align_offset[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[1]_i_3 
       (.I0(\data_byte_aligned[2]_i_2 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\align_offset[1]_i_5_n_0 ),
        .O(\last_byte_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[1]_i_4 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\data_byte_aligned[2]_i_2 [2]),
        .I3(\data_byte_aligned[2]_i_2 [3]),
        .O(\align_offset[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[1]_i_5 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\data_byte_aligned[2]_i_2 [2]),
        .I3(\data_byte_aligned[2]_i_2 [3]),
        .O(\align_offset[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \align_offset[2]_i_9 
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(u_ISERDESE3_2));
  LUT6 #(
    .INIT(64'hAAAAAAAE00000000)) 
    \align_offset[3]_i_1 
       (.I0(\last_byte_reg[5] ),
        .I1(\align_offset[3]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(\align_offset[3]_i_4_n_0 ),
        .I5(data_byte_valid0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \align_offset[3]_i_2 
       (.I0(\last_byte_reg[5]_0 ),
        .I1(data_byte_valid_reg),
        .I2(\align_offset[0]_i_2_n_0 ),
        .I3(\align_offset[1]_i_2_n_0 ),
        .I4(\align_offset_reg[1] ),
        .O(\last_byte_reg[5] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \align_offset[3]_i_3 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\align_offset[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[3]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\align_offset[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \data_byte_aligned[0]_i_4 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\data_byte_aligned[2]_i_2_0 [1]),
        .I4(\data_byte_aligned[2]_i_2_0 [0]),
        .I5(\data_byte_aligned[2]_i_2 [0]),
        .O(u_ISERDESE3_6));
  LUT6 #(
    .INIT(64'h11F000F000F000F0)) 
    \data_byte_aligned[1]_i_1 
       (.I0(\align_offset[1]_i_2_n_0 ),
        .I1(\last_byte_reg[5]_0 ),
        .I2(\data_byte_aligned_reg[1] ),
        .I3(data_byte_valid0),
        .I4(Q[1]),
        .I5(\data_byte_aligned_reg[1]_0 ),
        .O(u_ISERDESE3_1[0]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \data_byte_aligned[3]_i_1 
       (.I0(Q[3]),
        .I1(\last_byte_reg[5] ),
        .I2(data_byte_valid0),
        .I3(\data_byte_aligned_reg[3] ),
        .O(u_ISERDESE3_1[1]));
  LUT4 #(
    .INIT(16'hE0EF)) 
    \data_byte_aligned[4]_i_1 
       (.I0(\last_byte_reg[5] ),
        .I1(Q[4]),
        .I2(data_byte_valid0),
        .I3(\data_byte_aligned_reg[4] ),
        .O(u_ISERDESE3_1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[4]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\data_byte_aligned[2]_i_2_0 [1]),
        .I3(Q[2]),
        .I4(\data_byte_aligned[2]_i_2_0 [0]),
        .I5(Q[1]),
        .O(u_ISERDESE3_9));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_byte_aligned[4]_i_6 
       (.I0(Q[7]),
        .I1(\data_byte_aligned[2]_i_2_0 [1]),
        .I2(Q[6]),
        .I3(\data_byte_aligned[2]_i_2_0 [0]),
        .I4(Q[5]),
        .O(u_ISERDESE3_7));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[5]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\data_byte_aligned[2]_i_2_0 [1]),
        .I3(Q[3]),
        .I4(\data_byte_aligned[2]_i_2_0 [0]),
        .I5(Q[2]),
        .O(u_ISERDESE3_4));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[6]_i_3 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\data_byte_aligned[2]_i_2_0 [1]),
        .I3(Q[4]),
        .I4(\data_byte_aligned[2]_i_2_0 [0]),
        .I5(Q[3]),
        .O(u_ISERDESE3_10));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[6]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\data_byte_aligned[2]_i_2_0 [1]),
        .I3(Q[0]),
        .I4(\data_byte_aligned[2]_i_2_0 [0]),
        .I5(\data_byte_aligned[2]_i_2 [3]),
        .O(u_ISERDESE3_8));
  LUT6 #(
    .INIT(64'hAAAAAAAEFFFFFFFF)) 
    \data_byte_aligned[7]_i_1 
       (.I0(\last_byte_reg[5] ),
        .I1(\align_offset[3]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(\align_offset[3]_i_4_n_0 ),
        .I5(data_byte_valid0),
        .O(u_ISERDESE3_0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \data_byte_aligned[7]_i_2 
       (.I0(Q[7]),
        .I1(\last_byte_reg[5] ),
        .I2(data_byte_valid0),
        .I3(\data_byte_aligned_reg[7] ),
        .O(u_ISERDESE3_1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[7]_i_4 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\data_byte_aligned[2]_i_2_0 [1]),
        .I3(Q[5]),
        .I4(\data_byte_aligned[2]_i_2_0 [0]),
        .I5(Q[4]),
        .O(u_ISERDESE3_5));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[7]_i_5 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\data_byte_aligned[2]_i_2_0 [1]),
        .I3(Q[1]),
        .I4(\data_byte_aligned[2]_i_2_0 [0]),
        .I5(Q[0]),
        .O(u_ISERDESE3_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  IDELAYE3 #(
    .CASCADE("NONE"),
    .DELAY_FORMAT("COUNT"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(200),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(300.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    u_IDELAYE3
       (.CASC_IN(1'b0),
        .CASC_OUT(NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED),
        .CASC_RETURN(NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED),
        .CE(1'b0),
        .CLK(clk_hs_byte),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED[8:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_bit_delayed),
        .EN_VTC(1'b0),
        .IDATAIN(data_hs_bit_0),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(AR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE3 #(
    .DATA_WIDTH(8),
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .FIFO_ENABLE("TRUE"),
    .FIFO_SYNC_MODE("FALSE"),
    .IDDR_MODE("FALSE"),
    .IS_CLK_B_INVERTED(1'b1),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000)) 
    u_ISERDESE3
       (.CLK(clk_hs_bit),
        .CLKDIV(clk_hs_byte),
        .CLK_B(clk_hs_bit),
        .D(data_bit_delayed),
        .FIFO_EMPTY(fifo_empty),
        .FIFO_RD_CLK(clk_hs_byte),
        .FIFO_RD_EN(FIFO_RD_EN0),
        .INTERNAL_DIVCLK(NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED),
        .Q(Q),
        .RST(AR));
  LUT1 #(
    .INIT(2'h1)) 
    u_ISERDESE3_i_1
       (.I0(fifo_empty),
        .O(FIFO_RD_EN0));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_to_byte" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_3
   (Q,
    E,
    \last_byte_reg[5] ,
    u_ISERDESE3_0,
    D,
    \last_byte_reg[5]_0 ,
    u_ISERDESE3_1,
    u_ISERDESE3_2,
    u_ISERDESE3_3,
    u_ISERDESE3_4,
    u_ISERDESE3_5,
    u_ISERDESE3_6,
    u_ISERDESE3_7,
    u_ISERDESE3_8,
    u_ISERDESE3_9,
    u_ISERDESE3_10,
    clk_hs_byte,
    data_hs_bit_1,
    u_ISERDESE3_11,
    clk_hs_bit,
    data_byte_valid0,
    \align_offset_reg[1] ,
    \data_byte_aligned_reg[1] ,
    \data_byte_aligned_reg[1]_0 ,
    \data_byte_aligned_reg[7] ,
    \data_byte_aligned_reg[4] ,
    \data_byte_aligned_reg[3] ,
    \align_offset_reg[0] ,
    \align_offset_reg[0]_0 ,
    data_byte_valid_reg,
    \data_byte_aligned[2]_i_2__0 ,
    \data_byte_aligned[2]_i_2__0_0 );
  output [7:0]Q;
  output [0:0]E;
  output \last_byte_reg[5] ;
  output [0:0]u_ISERDESE3_0;
  output [1:0]D;
  output \last_byte_reg[5]_0 ;
  output [3:0]u_ISERDESE3_1;
  output u_ISERDESE3_2;
  output u_ISERDESE3_3;
  output u_ISERDESE3_4;
  output u_ISERDESE3_5;
  output u_ISERDESE3_6;
  output u_ISERDESE3_7;
  output u_ISERDESE3_8;
  output u_ISERDESE3_9;
  output u_ISERDESE3_10;
  input clk_hs_byte;
  input data_hs_bit_1;
  input [0:0]u_ISERDESE3_11;
  input clk_hs_bit;
  input data_byte_valid0;
  input \align_offset_reg[1] ;
  input \data_byte_aligned_reg[1] ;
  input [0:0]\data_byte_aligned_reg[1]_0 ;
  input \data_byte_aligned_reg[7] ;
  input \data_byte_aligned_reg[4] ;
  input \data_byte_aligned_reg[3] ;
  input \align_offset_reg[0] ;
  input \align_offset_reg[0]_0 ;
  input data_byte_valid_reg;
  input [3:0]\data_byte_aligned[2]_i_2__0 ;
  input [1:0]\data_byte_aligned[2]_i_2__0_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire FIFO_RD_EN0;
  wire [7:0]Q;
  wire \align_offset[0]_i_2__0_n_0 ;
  wire \align_offset[0]_i_5__0_n_0 ;
  wire \align_offset[1]_i_2__0_n_0 ;
  wire \align_offset[1]_i_4__0_n_0 ;
  wire \align_offset[1]_i_5__0_n_0 ;
  wire \align_offset[3]_i_3__0_n_0 ;
  wire \align_offset[3]_i_4__0_n_0 ;
  wire \align_offset_reg[0] ;
  wire \align_offset_reg[0]_0 ;
  wire \align_offset_reg[1] ;
  wire clk_hs_bit;
  wire clk_hs_byte;
  wire data_bit_delayed;
  wire [3:0]\data_byte_aligned[2]_i_2__0 ;
  wire [1:0]\data_byte_aligned[2]_i_2__0_0 ;
  wire \data_byte_aligned_reg[1] ;
  wire [0:0]\data_byte_aligned_reg[1]_0 ;
  wire \data_byte_aligned_reg[3] ;
  wire \data_byte_aligned_reg[4] ;
  wire \data_byte_aligned_reg[7] ;
  wire data_byte_valid0;
  wire data_byte_valid_reg;
  wire data_hs_bit_1;
  wire fifo_empty;
  wire \last_byte_reg[5] ;
  wire \last_byte_reg[5]_0 ;
  wire [0:0]u_ISERDESE3_0;
  wire [3:0]u_ISERDESE3_1;
  wire u_ISERDESE3_10;
  wire [0:0]u_ISERDESE3_11;
  wire u_ISERDESE3_2;
  wire u_ISERDESE3_3;
  wire u_ISERDESE3_4;
  wire u_ISERDESE3_5;
  wire u_ISERDESE3_6;
  wire u_ISERDESE3_7;
  wire u_ISERDESE3_8;
  wire u_ISERDESE3_9;
  wire NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED;
  wire NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED;
  wire [8:0]NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED;
  wire NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED;

  LUT4 #(
    .INIT(16'h0004)) 
    \align_offset[0]_i_1__0 
       (.I0(\last_byte_reg[5]_0 ),
        .I1(\align_offset[0]_i_2__0_n_0 ),
        .I2(\align_offset_reg[0] ),
        .I3(\align_offset_reg[0]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \align_offset[0]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\align_offset[0]_i_5__0_n_0 ),
        .O(\align_offset[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \align_offset[0]_i_5__0 
       (.I0(\data_byte_aligned[2]_i_2__0 [3]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[6]),
        .O(\align_offset[0]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \align_offset[1]_i_1__0 
       (.I0(\align_offset[1]_i_2__0_n_0 ),
        .I1(\last_byte_reg[5]_0 ),
        .I2(\align_offset_reg[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[1]_i_2__0 
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(\align_offset[1]_i_4__0_n_0 ),
        .O(\align_offset[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[1]_i_3__0 
       (.I0(\data_byte_aligned[2]_i_2__0 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\align_offset[1]_i_5__0_n_0 ),
        .O(\last_byte_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[1]_i_4__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\data_byte_aligned[2]_i_2__0 [2]),
        .I3(\data_byte_aligned[2]_i_2__0 [3]),
        .O(\align_offset[1]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[1]_i_5__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\data_byte_aligned[2]_i_2__0 [2]),
        .I3(\data_byte_aligned[2]_i_2__0 [3]),
        .O(\align_offset[1]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \align_offset[2]_i_9__0 
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(u_ISERDESE3_2));
  LUT6 #(
    .INIT(64'hAAAAAAAE00000000)) 
    \align_offset[3]_i_1__0 
       (.I0(\last_byte_reg[5] ),
        .I1(\align_offset[3]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(\align_offset[3]_i_4__0_n_0 ),
        .I5(data_byte_valid0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \align_offset[3]_i_2__0 
       (.I0(\last_byte_reg[5]_0 ),
        .I1(data_byte_valid_reg),
        .I2(\align_offset[0]_i_2__0_n_0 ),
        .I3(\align_offset[1]_i_2__0_n_0 ),
        .I4(\align_offset_reg[1] ),
        .O(\last_byte_reg[5] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \align_offset[3]_i_3__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\align_offset[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[3]_i_4__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\align_offset[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \data_byte_aligned[0]_i_4__0 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\data_byte_aligned[2]_i_2__0_0 [1]),
        .I4(\data_byte_aligned[2]_i_2__0_0 [0]),
        .I5(\data_byte_aligned[2]_i_2__0 [0]),
        .O(u_ISERDESE3_6));
  LUT6 #(
    .INIT(64'h11F000F000F000F0)) 
    \data_byte_aligned[1]_i_1__0 
       (.I0(\align_offset[1]_i_2__0_n_0 ),
        .I1(\last_byte_reg[5]_0 ),
        .I2(\data_byte_aligned_reg[1] ),
        .I3(data_byte_valid0),
        .I4(Q[1]),
        .I5(\data_byte_aligned_reg[1]_0 ),
        .O(u_ISERDESE3_1[0]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \data_byte_aligned[3]_i_1__0 
       (.I0(Q[3]),
        .I1(\last_byte_reg[5] ),
        .I2(data_byte_valid0),
        .I3(\data_byte_aligned_reg[3] ),
        .O(u_ISERDESE3_1[1]));
  LUT4 #(
    .INIT(16'hE0EF)) 
    \data_byte_aligned[4]_i_1__0 
       (.I0(\last_byte_reg[5] ),
        .I1(Q[4]),
        .I2(data_byte_valid0),
        .I3(\data_byte_aligned_reg[4] ),
        .O(u_ISERDESE3_1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[4]_i_3__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\data_byte_aligned[2]_i_2__0_0 [1]),
        .I3(Q[2]),
        .I4(\data_byte_aligned[2]_i_2__0_0 [0]),
        .I5(Q[1]),
        .O(u_ISERDESE3_9));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_byte_aligned[4]_i_6__0 
       (.I0(Q[7]),
        .I1(\data_byte_aligned[2]_i_2__0_0 [1]),
        .I2(Q[6]),
        .I3(\data_byte_aligned[2]_i_2__0_0 [0]),
        .I4(Q[5]),
        .O(u_ISERDESE3_7));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[5]_i_5__0 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\data_byte_aligned[2]_i_2__0_0 [1]),
        .I3(Q[3]),
        .I4(\data_byte_aligned[2]_i_2__0_0 [0]),
        .I5(Q[2]),
        .O(u_ISERDESE3_4));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[6]_i_3__0 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\data_byte_aligned[2]_i_2__0_0 [1]),
        .I3(Q[4]),
        .I4(\data_byte_aligned[2]_i_2__0_0 [0]),
        .I5(Q[3]),
        .O(u_ISERDESE3_10));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[6]_i_4__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\data_byte_aligned[2]_i_2__0_0 [1]),
        .I3(Q[0]),
        .I4(\data_byte_aligned[2]_i_2__0_0 [0]),
        .I5(\data_byte_aligned[2]_i_2__0 [3]),
        .O(u_ISERDESE3_8));
  LUT6 #(
    .INIT(64'hAAAAAAAEFFFFFFFF)) 
    \data_byte_aligned[7]_i_1__0 
       (.I0(\last_byte_reg[5] ),
        .I1(\align_offset[3]_i_3__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(\align_offset[3]_i_4__0_n_0 ),
        .I5(data_byte_valid0),
        .O(u_ISERDESE3_0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \data_byte_aligned[7]_i_2__0 
       (.I0(Q[7]),
        .I1(\last_byte_reg[5] ),
        .I2(data_byte_valid0),
        .I3(\data_byte_aligned_reg[7] ),
        .O(u_ISERDESE3_1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[7]_i_4__0 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\data_byte_aligned[2]_i_2__0_0 [1]),
        .I3(Q[5]),
        .I4(\data_byte_aligned[2]_i_2__0_0 [0]),
        .I5(Q[4]),
        .O(u_ISERDESE3_5));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[7]_i_5__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\data_byte_aligned[2]_i_2__0_0 [1]),
        .I3(Q[1]),
        .I4(\data_byte_aligned[2]_i_2__0_0 [0]),
        .I5(Q[0]),
        .O(u_ISERDESE3_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  IDELAYE3 #(
    .CASCADE("NONE"),
    .DELAY_FORMAT("COUNT"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(200),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(300.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    u_IDELAYE3
       (.CASC_IN(1'b0),
        .CASC_OUT(NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED),
        .CASC_RETURN(NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED),
        .CE(1'b0),
        .CLK(clk_hs_byte),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED[8:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_bit_delayed),
        .EN_VTC(1'b0),
        .IDATAIN(data_hs_bit_1),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(u_ISERDESE3_11));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE3 #(
    .DATA_WIDTH(8),
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .FIFO_ENABLE("TRUE"),
    .FIFO_SYNC_MODE("FALSE"),
    .IDDR_MODE("FALSE"),
    .IS_CLK_B_INVERTED(1'b1),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000)) 
    u_ISERDESE3
       (.CLK(clk_hs_bit),
        .CLKDIV(clk_hs_byte),
        .CLK_B(clk_hs_bit),
        .D(data_bit_delayed),
        .FIFO_EMPTY(fifo_empty),
        .FIFO_RD_CLK(clk_hs_byte),
        .FIFO_RD_EN(FIFO_RD_EN0),
        .INTERNAL_DIVCLK(NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED),
        .Q(Q),
        .RST(u_ISERDESE3_11));
  LUT1 #(
    .INIT(2'h1)) 
    u_ISERDESE3_i_1__0
       (.I0(fifo_empty),
        .O(FIFO_RD_EN0));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_to_byte" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_4
   (Q,
    E,
    \last_byte_reg[5] ,
    u_ISERDESE3_0,
    D,
    \last_byte_reg[5]_0 ,
    u_ISERDESE3_1,
    u_ISERDESE3_2,
    u_ISERDESE3_3,
    u_ISERDESE3_4,
    u_ISERDESE3_5,
    u_ISERDESE3_6,
    u_ISERDESE3_7,
    u_ISERDESE3_8,
    u_ISERDESE3_9,
    u_ISERDESE3_10,
    clk_hs_byte,
    data_hs_bit_2,
    u_ISERDESE3_11,
    clk_hs_bit,
    data_byte_valid0,
    \align_offset_reg[1] ,
    \data_byte_aligned_reg[1] ,
    \data_byte_aligned_reg[1]_0 ,
    \data_byte_aligned_reg[7] ,
    \data_byte_aligned_reg[4] ,
    \data_byte_aligned_reg[3] ,
    \align_offset_reg[0] ,
    \align_offset_reg[0]_0 ,
    data_byte_valid_reg,
    \data_byte_aligned[2]_i_2__1 ,
    \data_byte_aligned[2]_i_2__1_0 );
  output [7:0]Q;
  output [0:0]E;
  output \last_byte_reg[5] ;
  output [0:0]u_ISERDESE3_0;
  output [1:0]D;
  output \last_byte_reg[5]_0 ;
  output [3:0]u_ISERDESE3_1;
  output u_ISERDESE3_2;
  output u_ISERDESE3_3;
  output u_ISERDESE3_4;
  output u_ISERDESE3_5;
  output u_ISERDESE3_6;
  output u_ISERDESE3_7;
  output u_ISERDESE3_8;
  output u_ISERDESE3_9;
  output u_ISERDESE3_10;
  input clk_hs_byte;
  input data_hs_bit_2;
  input [0:0]u_ISERDESE3_11;
  input clk_hs_bit;
  input data_byte_valid0;
  input \align_offset_reg[1] ;
  input \data_byte_aligned_reg[1] ;
  input [0:0]\data_byte_aligned_reg[1]_0 ;
  input \data_byte_aligned_reg[7] ;
  input \data_byte_aligned_reg[4] ;
  input \data_byte_aligned_reg[3] ;
  input \align_offset_reg[0] ;
  input \align_offset_reg[0]_0 ;
  input data_byte_valid_reg;
  input [3:0]\data_byte_aligned[2]_i_2__1 ;
  input [1:0]\data_byte_aligned[2]_i_2__1_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire FIFO_RD_EN0;
  wire [7:0]Q;
  wire \align_offset[0]_i_2__1_n_0 ;
  wire \align_offset[0]_i_5__1_n_0 ;
  wire \align_offset[1]_i_2__1_n_0 ;
  wire \align_offset[1]_i_4__1_n_0 ;
  wire \align_offset[1]_i_5__1_n_0 ;
  wire \align_offset[3]_i_3__1_n_0 ;
  wire \align_offset[3]_i_4__1_n_0 ;
  wire \align_offset_reg[0] ;
  wire \align_offset_reg[0]_0 ;
  wire \align_offset_reg[1] ;
  wire clk_hs_bit;
  wire clk_hs_byte;
  wire data_bit_delayed;
  wire [3:0]\data_byte_aligned[2]_i_2__1 ;
  wire [1:0]\data_byte_aligned[2]_i_2__1_0 ;
  wire \data_byte_aligned_reg[1] ;
  wire [0:0]\data_byte_aligned_reg[1]_0 ;
  wire \data_byte_aligned_reg[3] ;
  wire \data_byte_aligned_reg[4] ;
  wire \data_byte_aligned_reg[7] ;
  wire data_byte_valid0;
  wire data_byte_valid_reg;
  wire data_hs_bit_2;
  wire fifo_empty;
  wire \last_byte_reg[5] ;
  wire \last_byte_reg[5]_0 ;
  wire [0:0]u_ISERDESE3_0;
  wire [3:0]u_ISERDESE3_1;
  wire u_ISERDESE3_10;
  wire [0:0]u_ISERDESE3_11;
  wire u_ISERDESE3_2;
  wire u_ISERDESE3_3;
  wire u_ISERDESE3_4;
  wire u_ISERDESE3_5;
  wire u_ISERDESE3_6;
  wire u_ISERDESE3_7;
  wire u_ISERDESE3_8;
  wire u_ISERDESE3_9;
  wire NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED;
  wire NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED;
  wire [8:0]NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED;
  wire NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED;

  LUT4 #(
    .INIT(16'h0004)) 
    \align_offset[0]_i_1__1 
       (.I0(\last_byte_reg[5]_0 ),
        .I1(\align_offset[0]_i_2__1_n_0 ),
        .I2(\align_offset_reg[0] ),
        .I3(\align_offset_reg[0]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \align_offset[0]_i_2__1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\align_offset[0]_i_5__1_n_0 ),
        .O(\align_offset[0]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \align_offset[0]_i_5__1 
       (.I0(\data_byte_aligned[2]_i_2__1 [3]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[6]),
        .O(\align_offset[0]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \align_offset[1]_i_1__1 
       (.I0(\align_offset[1]_i_2__1_n_0 ),
        .I1(\last_byte_reg[5]_0 ),
        .I2(\align_offset_reg[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[1]_i_2__1 
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(\align_offset[1]_i_4__1_n_0 ),
        .O(\align_offset[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[1]_i_3__1 
       (.I0(\data_byte_aligned[2]_i_2__1 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\align_offset[1]_i_5__1_n_0 ),
        .O(\last_byte_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[1]_i_4__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\data_byte_aligned[2]_i_2__1 [2]),
        .I3(\data_byte_aligned[2]_i_2__1 [3]),
        .O(\align_offset[1]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[1]_i_5__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\data_byte_aligned[2]_i_2__1 [2]),
        .I3(\data_byte_aligned[2]_i_2__1 [3]),
        .O(\align_offset[1]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \align_offset[2]_i_9__1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(u_ISERDESE3_2));
  LUT6 #(
    .INIT(64'hAAAAAAAE00000000)) 
    \align_offset[3]_i_1__1 
       (.I0(\last_byte_reg[5] ),
        .I1(\align_offset[3]_i_3__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(\align_offset[3]_i_4__1_n_0 ),
        .I5(data_byte_valid0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \align_offset[3]_i_2__1 
       (.I0(\last_byte_reg[5]_0 ),
        .I1(data_byte_valid_reg),
        .I2(\align_offset[0]_i_2__1_n_0 ),
        .I3(\align_offset[1]_i_2__1_n_0 ),
        .I4(\align_offset_reg[1] ),
        .O(\last_byte_reg[5] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \align_offset[3]_i_3__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\align_offset[3]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[3]_i_4__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\align_offset[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \data_byte_aligned[0]_i_4__1 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\data_byte_aligned[2]_i_2__1_0 [1]),
        .I4(\data_byte_aligned[2]_i_2__1_0 [0]),
        .I5(\data_byte_aligned[2]_i_2__1 [0]),
        .O(u_ISERDESE3_6));
  LUT6 #(
    .INIT(64'h11F000F000F000F0)) 
    \data_byte_aligned[1]_i_1__1 
       (.I0(\align_offset[1]_i_2__1_n_0 ),
        .I1(\last_byte_reg[5]_0 ),
        .I2(\data_byte_aligned_reg[1] ),
        .I3(data_byte_valid0),
        .I4(Q[1]),
        .I5(\data_byte_aligned_reg[1]_0 ),
        .O(u_ISERDESE3_1[0]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \data_byte_aligned[3]_i_1__1 
       (.I0(Q[3]),
        .I1(\last_byte_reg[5] ),
        .I2(data_byte_valid0),
        .I3(\data_byte_aligned_reg[3] ),
        .O(u_ISERDESE3_1[1]));
  LUT4 #(
    .INIT(16'hE0EF)) 
    \data_byte_aligned[4]_i_1__1 
       (.I0(\last_byte_reg[5] ),
        .I1(Q[4]),
        .I2(data_byte_valid0),
        .I3(\data_byte_aligned_reg[4] ),
        .O(u_ISERDESE3_1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[4]_i_3__1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\data_byte_aligned[2]_i_2__1_0 [1]),
        .I3(Q[2]),
        .I4(\data_byte_aligned[2]_i_2__1_0 [0]),
        .I5(Q[1]),
        .O(u_ISERDESE3_9));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_byte_aligned[4]_i_6__1 
       (.I0(Q[7]),
        .I1(\data_byte_aligned[2]_i_2__1_0 [1]),
        .I2(Q[6]),
        .I3(\data_byte_aligned[2]_i_2__1_0 [0]),
        .I4(Q[5]),
        .O(u_ISERDESE3_7));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[5]_i_5__1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\data_byte_aligned[2]_i_2__1_0 [1]),
        .I3(Q[3]),
        .I4(\data_byte_aligned[2]_i_2__1_0 [0]),
        .I5(Q[2]),
        .O(u_ISERDESE3_4));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[6]_i_3__1 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\data_byte_aligned[2]_i_2__1_0 [1]),
        .I3(Q[4]),
        .I4(\data_byte_aligned[2]_i_2__1_0 [0]),
        .I5(Q[3]),
        .O(u_ISERDESE3_10));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[6]_i_4__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\data_byte_aligned[2]_i_2__1_0 [1]),
        .I3(Q[0]),
        .I4(\data_byte_aligned[2]_i_2__1_0 [0]),
        .I5(\data_byte_aligned[2]_i_2__1 [3]),
        .O(u_ISERDESE3_8));
  LUT6 #(
    .INIT(64'hAAAAAAAEFFFFFFFF)) 
    \data_byte_aligned[7]_i_1__1 
       (.I0(\last_byte_reg[5] ),
        .I1(\align_offset[3]_i_3__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(\align_offset[3]_i_4__1_n_0 ),
        .I5(data_byte_valid0),
        .O(u_ISERDESE3_0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \data_byte_aligned[7]_i_2__1 
       (.I0(Q[7]),
        .I1(\last_byte_reg[5] ),
        .I2(data_byte_valid0),
        .I3(\data_byte_aligned_reg[7] ),
        .O(u_ISERDESE3_1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[7]_i_4__1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\data_byte_aligned[2]_i_2__1_0 [1]),
        .I3(Q[5]),
        .I4(\data_byte_aligned[2]_i_2__1_0 [0]),
        .I5(Q[4]),
        .O(u_ISERDESE3_5));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[7]_i_5__1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\data_byte_aligned[2]_i_2__1_0 [1]),
        .I3(Q[1]),
        .I4(\data_byte_aligned[2]_i_2__1_0 [0]),
        .I5(Q[0]),
        .O(u_ISERDESE3_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  IDELAYE3 #(
    .CASCADE("NONE"),
    .DELAY_FORMAT("COUNT"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(200),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(300.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    u_IDELAYE3
       (.CASC_IN(1'b0),
        .CASC_OUT(NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED),
        .CASC_RETURN(NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED),
        .CE(1'b0),
        .CLK(clk_hs_byte),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED[8:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_bit_delayed),
        .EN_VTC(1'b0),
        .IDATAIN(data_hs_bit_2),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(u_ISERDESE3_11));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE3 #(
    .DATA_WIDTH(8),
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .FIFO_ENABLE("TRUE"),
    .FIFO_SYNC_MODE("FALSE"),
    .IDDR_MODE("FALSE"),
    .IS_CLK_B_INVERTED(1'b1),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000)) 
    u_ISERDESE3
       (.CLK(clk_hs_bit),
        .CLKDIV(clk_hs_byte),
        .CLK_B(clk_hs_bit),
        .D(data_bit_delayed),
        .FIFO_EMPTY(fifo_empty),
        .FIFO_RD_CLK(clk_hs_byte),
        .FIFO_RD_EN(FIFO_RD_EN0),
        .INTERNAL_DIVCLK(NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED),
        .Q(Q),
        .RST(u_ISERDESE3_11));
  LUT1 #(
    .INIT(2'h1)) 
    u_ISERDESE3_i_1__1
       (.I0(fifo_empty),
        .O(FIFO_RD_EN0));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_to_byte" *) 
module design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_5
   (Q,
    E,
    \last_byte_reg[5] ,
    u_ISERDESE3_0,
    D,
    \last_byte_reg[5]_0 ,
    u_ISERDESE3_1,
    u_ISERDESE3_2,
    u_ISERDESE3_3,
    u_ISERDESE3_4,
    u_ISERDESE3_5,
    u_ISERDESE3_6,
    u_ISERDESE3_7,
    u_ISERDESE3_8,
    u_ISERDESE3_9,
    u_ISERDESE3_10,
    clk_hs_byte,
    data_hs_bit_3,
    u_ISERDESE3_11,
    clk_hs_bit,
    data_byte_valid0,
    \align_offset_reg[1] ,
    \data_byte_aligned_reg[1] ,
    \data_byte_aligned_reg[1]_0 ,
    \data_byte_aligned_reg[7] ,
    \data_byte_aligned_reg[4] ,
    \data_byte_aligned_reg[3] ,
    \align_offset_reg[0] ,
    \align_offset_reg[0]_0 ,
    data_byte_valid_reg,
    \data_byte_aligned[2]_i_2__2 ,
    \data_byte_aligned[2]_i_2__2_0 );
  output [7:0]Q;
  output [0:0]E;
  output \last_byte_reg[5] ;
  output [0:0]u_ISERDESE3_0;
  output [1:0]D;
  output \last_byte_reg[5]_0 ;
  output [3:0]u_ISERDESE3_1;
  output u_ISERDESE3_2;
  output u_ISERDESE3_3;
  output u_ISERDESE3_4;
  output u_ISERDESE3_5;
  output u_ISERDESE3_6;
  output u_ISERDESE3_7;
  output u_ISERDESE3_8;
  output u_ISERDESE3_9;
  output u_ISERDESE3_10;
  input clk_hs_byte;
  input data_hs_bit_3;
  input [0:0]u_ISERDESE3_11;
  input clk_hs_bit;
  input data_byte_valid0;
  input \align_offset_reg[1] ;
  input \data_byte_aligned_reg[1] ;
  input [0:0]\data_byte_aligned_reg[1]_0 ;
  input \data_byte_aligned_reg[7] ;
  input \data_byte_aligned_reg[4] ;
  input \data_byte_aligned_reg[3] ;
  input \align_offset_reg[0] ;
  input \align_offset_reg[0]_0 ;
  input data_byte_valid_reg;
  input [3:0]\data_byte_aligned[2]_i_2__2 ;
  input [1:0]\data_byte_aligned[2]_i_2__2_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire FIFO_RD_EN0;
  wire [7:0]Q;
  wire \align_offset[0]_i_2__2_n_0 ;
  wire \align_offset[0]_i_5__2_n_0 ;
  wire \align_offset[1]_i_2__2_n_0 ;
  wire \align_offset[1]_i_4__2_n_0 ;
  wire \align_offset[1]_i_5__2_n_0 ;
  wire \align_offset[3]_i_3__2_n_0 ;
  wire \align_offset[3]_i_4__2_n_0 ;
  wire \align_offset_reg[0] ;
  wire \align_offset_reg[0]_0 ;
  wire \align_offset_reg[1] ;
  wire clk_hs_bit;
  wire clk_hs_byte;
  wire data_bit_delayed;
  wire [3:0]\data_byte_aligned[2]_i_2__2 ;
  wire [1:0]\data_byte_aligned[2]_i_2__2_0 ;
  wire \data_byte_aligned_reg[1] ;
  wire [0:0]\data_byte_aligned_reg[1]_0 ;
  wire \data_byte_aligned_reg[3] ;
  wire \data_byte_aligned_reg[4] ;
  wire \data_byte_aligned_reg[7] ;
  wire data_byte_valid0;
  wire data_byte_valid_reg;
  wire data_hs_bit_3;
  wire fifo_empty;
  wire \last_byte_reg[5] ;
  wire \last_byte_reg[5]_0 ;
  wire [0:0]u_ISERDESE3_0;
  wire [3:0]u_ISERDESE3_1;
  wire u_ISERDESE3_10;
  wire [0:0]u_ISERDESE3_11;
  wire u_ISERDESE3_2;
  wire u_ISERDESE3_3;
  wire u_ISERDESE3_4;
  wire u_ISERDESE3_5;
  wire u_ISERDESE3_6;
  wire u_ISERDESE3_7;
  wire u_ISERDESE3_8;
  wire u_ISERDESE3_9;
  wire NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED;
  wire NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED;
  wire [8:0]NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED;
  wire NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED;

  LUT4 #(
    .INIT(16'h0004)) 
    \align_offset[0]_i_1__2 
       (.I0(\last_byte_reg[5]_0 ),
        .I1(\align_offset[0]_i_2__2_n_0 ),
        .I2(\align_offset_reg[0] ),
        .I3(\align_offset_reg[0]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \align_offset[0]_i_2__2 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\align_offset[0]_i_5__2_n_0 ),
        .O(\align_offset[0]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \align_offset[0]_i_5__2 
       (.I0(\data_byte_aligned[2]_i_2__2 [3]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[6]),
        .O(\align_offset[0]_i_5__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \align_offset[1]_i_1__2 
       (.I0(\align_offset[1]_i_2__2_n_0 ),
        .I1(\last_byte_reg[5]_0 ),
        .I2(\align_offset_reg[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[1]_i_2__2 
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(\align_offset[1]_i_4__2_n_0 ),
        .O(\align_offset[1]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[1]_i_3__2 
       (.I0(\data_byte_aligned[2]_i_2__2 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\align_offset[1]_i_5__2_n_0 ),
        .O(\last_byte_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[1]_i_4__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\data_byte_aligned[2]_i_2__2 [2]),
        .I3(\data_byte_aligned[2]_i_2__2 [3]),
        .O(\align_offset[1]_i_4__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[1]_i_5__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\data_byte_aligned[2]_i_2__2 [2]),
        .I3(\data_byte_aligned[2]_i_2__2 [3]),
        .O(\align_offset[1]_i_5__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \align_offset[2]_i_9__2 
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(u_ISERDESE3_2));
  LUT6 #(
    .INIT(64'hAAAAAAAE00000000)) 
    \align_offset[3]_i_1__2 
       (.I0(\last_byte_reg[5] ),
        .I1(\align_offset[3]_i_3__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(\align_offset[3]_i_4__2_n_0 ),
        .I5(data_byte_valid0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \align_offset[3]_i_2__2 
       (.I0(\last_byte_reg[5]_0 ),
        .I1(data_byte_valid_reg),
        .I2(\align_offset[0]_i_2__2_n_0 ),
        .I3(\align_offset[1]_i_2__2_n_0 ),
        .I4(\align_offset_reg[1] ),
        .O(\last_byte_reg[5] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \align_offset[3]_i_3__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\align_offset[3]_i_3__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[3]_i_4__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\align_offset[3]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \data_byte_aligned[0]_i_4__2 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\data_byte_aligned[2]_i_2__2_0 [1]),
        .I4(\data_byte_aligned[2]_i_2__2_0 [0]),
        .I5(\data_byte_aligned[2]_i_2__2 [0]),
        .O(u_ISERDESE3_6));
  LUT6 #(
    .INIT(64'h11F000F000F000F0)) 
    \data_byte_aligned[1]_i_1__2 
       (.I0(\align_offset[1]_i_2__2_n_0 ),
        .I1(\last_byte_reg[5]_0 ),
        .I2(\data_byte_aligned_reg[1] ),
        .I3(data_byte_valid0),
        .I4(Q[1]),
        .I5(\data_byte_aligned_reg[1]_0 ),
        .O(u_ISERDESE3_1[0]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \data_byte_aligned[3]_i_1__2 
       (.I0(Q[3]),
        .I1(\last_byte_reg[5] ),
        .I2(data_byte_valid0),
        .I3(\data_byte_aligned_reg[3] ),
        .O(u_ISERDESE3_1[1]));
  LUT4 #(
    .INIT(16'hE0EF)) 
    \data_byte_aligned[4]_i_1__2 
       (.I0(\last_byte_reg[5] ),
        .I1(Q[4]),
        .I2(data_byte_valid0),
        .I3(\data_byte_aligned_reg[4] ),
        .O(u_ISERDESE3_1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[4]_i_3__2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\data_byte_aligned[2]_i_2__2_0 [1]),
        .I3(Q[2]),
        .I4(\data_byte_aligned[2]_i_2__2_0 [0]),
        .I5(Q[1]),
        .O(u_ISERDESE3_9));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_byte_aligned[4]_i_6__2 
       (.I0(Q[7]),
        .I1(\data_byte_aligned[2]_i_2__2_0 [1]),
        .I2(Q[6]),
        .I3(\data_byte_aligned[2]_i_2__2_0 [0]),
        .I4(Q[5]),
        .O(u_ISERDESE3_7));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[5]_i_5__2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\data_byte_aligned[2]_i_2__2_0 [1]),
        .I3(Q[3]),
        .I4(\data_byte_aligned[2]_i_2__2_0 [0]),
        .I5(Q[2]),
        .O(u_ISERDESE3_4));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[6]_i_3__2 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\data_byte_aligned[2]_i_2__2_0 [1]),
        .I3(Q[4]),
        .I4(\data_byte_aligned[2]_i_2__2_0 [0]),
        .I5(Q[3]),
        .O(u_ISERDESE3_10));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[6]_i_4__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\data_byte_aligned[2]_i_2__2_0 [1]),
        .I3(Q[0]),
        .I4(\data_byte_aligned[2]_i_2__2_0 [0]),
        .I5(\data_byte_aligned[2]_i_2__2 [3]),
        .O(u_ISERDESE3_8));
  LUT6 #(
    .INIT(64'hAAAAAAAEFFFFFFFF)) 
    \data_byte_aligned[7]_i_1__2 
       (.I0(\last_byte_reg[5] ),
        .I1(\align_offset[3]_i_3__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(\align_offset[3]_i_4__2_n_0 ),
        .I5(data_byte_valid0),
        .O(u_ISERDESE3_0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \data_byte_aligned[7]_i_2__2 
       (.I0(Q[7]),
        .I1(\last_byte_reg[5] ),
        .I2(data_byte_valid0),
        .I3(\data_byte_aligned_reg[7] ),
        .O(u_ISERDESE3_1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[7]_i_4__2 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\data_byte_aligned[2]_i_2__2_0 [1]),
        .I3(Q[5]),
        .I4(\data_byte_aligned[2]_i_2__2_0 [0]),
        .I5(Q[4]),
        .O(u_ISERDESE3_5));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[7]_i_5__2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\data_byte_aligned[2]_i_2__2_0 [1]),
        .I3(Q[1]),
        .I4(\data_byte_aligned[2]_i_2__2_0 [0]),
        .I5(Q[0]),
        .O(u_ISERDESE3_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  IDELAYE3 #(
    .CASCADE("NONE"),
    .DELAY_FORMAT("COUNT"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(200),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(300.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    u_IDELAYE3
       (.CASC_IN(1'b0),
        .CASC_OUT(NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED),
        .CASC_RETURN(NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED),
        .CE(1'b0),
        .CLK(clk_hs_byte),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED[8:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_bit_delayed),
        .EN_VTC(1'b0),
        .IDATAIN(data_hs_bit_3),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(u_ISERDESE3_11));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE3 #(
    .DATA_WIDTH(8),
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .FIFO_ENABLE("TRUE"),
    .FIFO_SYNC_MODE("FALSE"),
    .IDDR_MODE("FALSE"),
    .IS_CLK_B_INVERTED(1'b1),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000)) 
    u_ISERDESE3
       (.CLK(clk_hs_bit),
        .CLKDIV(clk_hs_byte),
        .CLK_B(clk_hs_bit),
        .D(data_bit_delayed),
        .FIFO_EMPTY(fifo_empty),
        .FIFO_RD_CLK(clk_hs_byte),
        .FIFO_RD_EN(FIFO_RD_EN0),
        .INTERNAL_DIVCLK(NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED),
        .Q(Q),
        .RST(u_ISERDESE3_11));
  LUT1 #(
    .INIT(2'h1)) 
    u_ISERDESE3_i_1__2
       (.I0(fifo_empty),
        .O(FIFO_RD_EN0));
endmodule

(* ORIG_REF_NAME = "csi2_rx_to_pixel" *) 
module design_1_mipi_rx_to_video_0_0_csi2_rx_to_pixel
   (module_reset_reg,
    pix_valid,
    pix_data_enable,
    lane_byte_aligned_valid,
    E,
    Q,
    \align_idx_reg[2][0] ,
    \align_idx_reg[1][0] ,
    \align_idx_reg[0][0] ,
    \reg_pix_di_reg[7]_0 ,
    \reg_pix_data_reg[39]_0 ,
    clk_hs_byte,
    align_flag_reg,
    locked_reg,
    module_reset,
    s00_axi_aresetn,
    \lane_buf_reg[7][0] ,
    \lane_buf_reg[7][8] ,
    \lane_buf_reg[7][16] ,
    lane_valid__2,
    \align_idx_reg[0][0]_0 ,
    D,
    \lane_buf_reg[0][31] ,
    \align_idx_reg[1][0]_0 ,
    \align_idx_reg[1][0]_1 ,
    \align_idx_reg[2][0]_0 ,
    \align_idx_reg[2][0]_1 ,
    \align_idx_reg[3][0] ,
    \align_idx_reg[3][0]_0 );
  output module_reset_reg;
  output pix_valid;
  output pix_data_enable;
  output lane_byte_aligned_valid;
  output [0:0]E;
  output [0:0]Q;
  output [0:0]\align_idx_reg[2][0] ;
  output [0:0]\align_idx_reg[1][0] ;
  output [0:0]\align_idx_reg[0][0] ;
  output [7:0]\reg_pix_di_reg[7]_0 ;
  output [39:0]\reg_pix_data_reg[39]_0 ;
  input clk_hs_byte;
  input align_flag_reg;
  input locked_reg;
  input module_reset;
  input s00_axi_aresetn;
  input \lane_buf_reg[7][0] ;
  input \lane_buf_reg[7][8] ;
  input \lane_buf_reg[7][16] ;
  input lane_valid__2;
  input [0:0]\align_idx_reg[0][0]_0 ;
  input [0:0]D;
  input [31:0]\lane_buf_reg[0][31] ;
  input [0:0]\align_idx_reg[1][0]_0 ;
  input [0:0]\align_idx_reg[1][0]_1 ;
  input [0:0]\align_idx_reg[2][0]_0 ;
  input [0:0]\align_idx_reg[2][0]_1 ;
  input [0:0]\align_idx_reg[3][0] ;
  input [0:0]\align_idx_reg[3][0]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire align_flag_reg;
  wire [0:0]\align_idx_reg[0][0] ;
  wire [0:0]\align_idx_reg[0][0]_0 ;
  wire [0:0]\align_idx_reg[1][0] ;
  wire [0:0]\align_idx_reg[1][0]_0 ;
  wire [0:0]\align_idx_reg[1][0]_1 ;
  wire [0:0]\align_idx_reg[2][0] ;
  wire [0:0]\align_idx_reg[2][0]_0 ;
  wire [0:0]\align_idx_reg[2][0]_1 ;
  wire [0:0]\align_idx_reg[3][0] ;
  wire [0:0]\align_idx_reg[3][0]_0 ;
  wire clk_hs_byte;
  wire data_flag0;
  wire [2:0]head_clk_idx;
  wire [31:0]\lane_buf_reg[0][31] ;
  wire \lane_buf_reg[7][0] ;
  wire \lane_buf_reg[7][16] ;
  wire \lane_buf_reg[7][8] ;
  wire [31:0]lane_byte_aligned;
  wire lane_byte_aligned_valid;
  wire lane_valid__2;
  wire [31:2]last_data;
  wire [2:0]last_size_reg;
  wire locked_reg;
  wire module_reset;
  wire module_reset_reg;
  wire [7:0]p_0_in;
  wire [0:0]p_1_in;
  wire pix_data_enable;
  wire pix_valid;
  wire pixel_enable3_out;
  wire [31:0]pkt_data;
  wire pkt_valid;
  wire raw10_pix_data_enable;
  wire raw10_pix_valid;
  wire [39:0]\reg_pix_data_reg[39]_0 ;
  wire [7:0]\reg_pix_di_reg[7]_0 ;
  wire s00_axi_aresetn;
  wire u_csi2_lanes_aligner_n_10;
  wire u_csi2_lanes_aligner_n_11;
  wire u_csi2_lanes_aligner_n_12;
  wire u_csi2_lanes_aligner_n_13;
  wire u_csi2_lanes_aligner_n_14;
  wire u_csi2_lanes_aligner_n_15;
  wire u_csi2_lanes_aligner_n_16;
  wire u_csi2_lanes_aligner_n_17;
  wire u_csi2_lanes_aligner_n_18;
  wire u_csi2_lanes_aligner_n_19;
  wire u_csi2_lanes_aligner_n_20;
  wire u_csi2_lanes_aligner_n_21;
  wire u_csi2_lanes_aligner_n_22;
  wire u_csi2_lanes_aligner_n_23;
  wire u_csi2_lanes_aligner_n_24;
  wire u_csi2_lanes_aligner_n_25;
  wire u_csi2_lanes_aligner_n_26;
  wire u_csi2_lanes_aligner_n_27;
  wire u_csi2_lanes_aligner_n_28;
  wire u_csi2_lanes_aligner_n_29;
  wire u_csi2_lanes_aligner_n_30;
  wire u_csi2_lanes_aligner_n_31;
  wire u_csi2_lanes_aligner_n_8;
  wire u_csi2_lanes_aligner_n_9;
  wire u_csi2_packet_decoder_n_1;
  wire u_csi2_packet_decoder_n_10;
  wire u_csi2_packet_decoder_n_100;
  wire u_csi2_packet_decoder_n_101;
  wire u_csi2_packet_decoder_n_11;
  wire u_csi2_packet_decoder_n_12;
  wire u_csi2_packet_decoder_n_13;
  wire u_csi2_packet_decoder_n_14;
  wire u_csi2_packet_decoder_n_15;
  wire u_csi2_packet_decoder_n_16;
  wire u_csi2_packet_decoder_n_17;
  wire u_csi2_packet_decoder_n_2;
  wire u_csi2_packet_decoder_n_5;
  wire u_csi2_packet_decoder_n_50;
  wire u_csi2_packet_decoder_n_54;
  wire u_csi2_packet_decoder_n_55;
  wire u_csi2_packet_decoder_n_56;
  wire u_csi2_packet_decoder_n_57;
  wire u_csi2_packet_decoder_n_58;
  wire u_csi2_packet_decoder_n_59;
  wire u_csi2_packet_decoder_n_6;
  wire u_csi2_packet_decoder_n_60;
  wire u_csi2_packet_decoder_n_61;
  wire u_csi2_packet_decoder_n_62;
  wire u_csi2_packet_decoder_n_63;
  wire u_csi2_packet_decoder_n_64;
  wire u_csi2_packet_decoder_n_65;
  wire u_csi2_packet_decoder_n_66;
  wire u_csi2_packet_decoder_n_67;
  wire u_csi2_packet_decoder_n_68;
  wire u_csi2_packet_decoder_n_69;
  wire u_csi2_packet_decoder_n_7;
  wire u_csi2_packet_decoder_n_70;
  wire u_csi2_packet_decoder_n_71;
  wire u_csi2_packet_decoder_n_72;
  wire u_csi2_packet_decoder_n_73;
  wire u_csi2_packet_decoder_n_74;
  wire u_csi2_packet_decoder_n_75;
  wire u_csi2_packet_decoder_n_76;
  wire u_csi2_packet_decoder_n_77;
  wire u_csi2_packet_decoder_n_78;
  wire u_csi2_packet_decoder_n_79;
  wire u_csi2_packet_decoder_n_8;
  wire u_csi2_packet_decoder_n_80;
  wire u_csi2_packet_decoder_n_81;
  wire u_csi2_packet_decoder_n_82;
  wire u_csi2_packet_decoder_n_83;
  wire u_csi2_packet_decoder_n_84;
  wire u_csi2_packet_decoder_n_85;
  wire u_csi2_packet_decoder_n_86;
  wire u_csi2_packet_decoder_n_87;
  wire u_csi2_packet_decoder_n_88;
  wire u_csi2_packet_decoder_n_89;
  wire u_csi2_packet_decoder_n_9;
  wire u_csi2_packet_decoder_n_90;
  wire u_csi2_packet_decoder_n_91;
  wire u_csi2_packet_decoder_n_92;
  wire u_csi2_packet_decoder_n_93;
  wire u_csi2_packet_decoder_n_94;
  wire u_csi2_packet_decoder_n_95;
  wire u_csi2_packet_decoder_n_96;
  wire u_csi2_packet_decoder_n_97;
  wire u_csi2_packet_decoder_n_98;
  wire u_csi2_packet_decoder_n_99;
  wire u_csi2_raw10_unpack_n_12;
  wire u_csi2_raw10_unpack_n_13;
  wire u_csi2_raw10_unpack_n_14;
  wire u_csi2_raw10_unpack_n_15;
  wire u_csi2_raw10_unpack_n_16;
  wire u_csi2_raw10_unpack_n_17;
  wire u_csi2_raw10_unpack_n_18;
  wire u_csi2_raw10_unpack_n_19;
  wire u_csi2_raw10_unpack_n_20;
  wire u_csi2_raw10_unpack_n_21;
  wire u_csi2_raw10_unpack_n_22;
  wire u_csi2_raw10_unpack_n_23;
  wire u_csi2_raw10_unpack_n_24;
  wire u_csi2_raw10_unpack_n_25;
  wire u_csi2_raw10_unpack_n_26;
  wire u_csi2_raw10_unpack_n_27;
  wire u_csi2_raw10_unpack_n_28;
  wire u_csi2_raw10_unpack_n_29;
  wire u_csi2_raw10_unpack_n_30;
  wire u_csi2_raw10_unpack_n_31;
  wire u_csi2_raw10_unpack_n_32;
  wire u_csi2_raw10_unpack_n_33;
  wire u_csi2_raw10_unpack_n_34;
  wire u_csi2_raw10_unpack_n_35;
  wire u_csi2_raw10_unpack_n_36;
  wire u_csi2_raw10_unpack_n_37;
  wire u_csi2_raw10_unpack_n_38;
  wire u_csi2_raw10_unpack_n_39;
  wire u_csi2_raw10_unpack_n_40;
  wire u_csi2_raw10_unpack_n_41;
  wire u_csi2_raw10_unpack_n_42;
  wire u_csi2_raw10_unpack_n_43;
  wire u_csi2_raw10_unpack_n_44;
  wire u_csi2_raw10_unpack_n_45;
  wire u_csi2_raw10_unpack_n_46;
  wire u_csi2_raw10_unpack_n_47;
  wire u_csi2_raw10_unpack_n_48;
  wire u_csi2_raw10_unpack_n_49;
  wire u_csi2_raw10_unpack_n_50;
  wire u_csi2_raw10_unpack_n_51;
  wire u_csi2_raw10_unpack_n_52;
  wire u_csi2_raw10_unpack_n_77;
  wire u_csi2_raw10_unpack_n_78;
  wire u_csi2_raw10_unpack_n_79;
  wire u_csi2_raw10_unpack_n_80;
  wire u_csi2_raw10_unpack_n_81;
  wire u_csi2_raw10_unpack_n_82;
  wire u_csi2_raw10_unpack_n_83;
  wire u_csi2_raw10_unpack_n_84;
  wire u_csi2_raw10_unpack_n_85;

  LUT2 #(
    .INIT(4'h2)) 
    locked_i_1
       (.I0(pix_valid),
        .I1(locked_reg),
        .O(E));
  FDCE reg_pix_data_enable_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_packet_decoder_n_5),
        .Q(pix_data_enable));
  FDCE \reg_pix_data_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_51),
        .Q(\reg_pix_data_reg[39]_0 [0]));
  FDCE \reg_pix_data_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_41),
        .Q(\reg_pix_data_reg[39]_0 [10]));
  FDCE \reg_pix_data_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_40),
        .Q(\reg_pix_data_reg[39]_0 [11]));
  FDCE \reg_pix_data_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_39),
        .Q(\reg_pix_data_reg[39]_0 [12]));
  FDCE \reg_pix_data_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_38),
        .Q(\reg_pix_data_reg[39]_0 [13]));
  FDCE \reg_pix_data_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_37),
        .Q(\reg_pix_data_reg[39]_0 [14]));
  FDCE \reg_pix_data_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_36),
        .Q(\reg_pix_data_reg[39]_0 [15]));
  FDCE \reg_pix_data_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_35),
        .Q(\reg_pix_data_reg[39]_0 [16]));
  FDCE \reg_pix_data_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_34),
        .Q(\reg_pix_data_reg[39]_0 [17]));
  FDCE \reg_pix_data_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_33),
        .Q(\reg_pix_data_reg[39]_0 [18]));
  FDCE \reg_pix_data_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_32),
        .Q(\reg_pix_data_reg[39]_0 [19]));
  FDCE \reg_pix_data_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_50),
        .Q(\reg_pix_data_reg[39]_0 [1]));
  FDCE \reg_pix_data_reg[20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_31),
        .Q(\reg_pix_data_reg[39]_0 [20]));
  FDCE \reg_pix_data_reg[21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_30),
        .Q(\reg_pix_data_reg[39]_0 [21]));
  FDCE \reg_pix_data_reg[22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_29),
        .Q(\reg_pix_data_reg[39]_0 [22]));
  FDCE \reg_pix_data_reg[23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_28),
        .Q(\reg_pix_data_reg[39]_0 [23]));
  FDCE \reg_pix_data_reg[24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_27),
        .Q(\reg_pix_data_reg[39]_0 [24]));
  FDCE \reg_pix_data_reg[25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_26),
        .Q(\reg_pix_data_reg[39]_0 [25]));
  FDCE \reg_pix_data_reg[26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_25),
        .Q(\reg_pix_data_reg[39]_0 [26]));
  FDCE \reg_pix_data_reg[27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_24),
        .Q(\reg_pix_data_reg[39]_0 [27]));
  FDCE \reg_pix_data_reg[28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_23),
        .Q(\reg_pix_data_reg[39]_0 [28]));
  FDCE \reg_pix_data_reg[29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_22),
        .Q(\reg_pix_data_reg[39]_0 [29]));
  FDCE \reg_pix_data_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_49),
        .Q(\reg_pix_data_reg[39]_0 [2]));
  FDCE \reg_pix_data_reg[30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_21),
        .Q(\reg_pix_data_reg[39]_0 [30]));
  FDCE \reg_pix_data_reg[31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_20),
        .Q(\reg_pix_data_reg[39]_0 [31]));
  FDCE \reg_pix_data_reg[32] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_19),
        .Q(\reg_pix_data_reg[39]_0 [32]));
  FDCE \reg_pix_data_reg[33] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_18),
        .Q(\reg_pix_data_reg[39]_0 [33]));
  FDCE \reg_pix_data_reg[34] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_17),
        .Q(\reg_pix_data_reg[39]_0 [34]));
  FDCE \reg_pix_data_reg[35] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_16),
        .Q(\reg_pix_data_reg[39]_0 [35]));
  FDCE \reg_pix_data_reg[36] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_15),
        .Q(\reg_pix_data_reg[39]_0 [36]));
  FDCE \reg_pix_data_reg[37] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_14),
        .Q(\reg_pix_data_reg[39]_0 [37]));
  FDCE \reg_pix_data_reg[38] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_13),
        .Q(\reg_pix_data_reg[39]_0 [38]));
  FDCE \reg_pix_data_reg[39] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_12),
        .Q(\reg_pix_data_reg[39]_0 [39]));
  FDCE \reg_pix_data_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_48),
        .Q(\reg_pix_data_reg[39]_0 [3]));
  FDCE \reg_pix_data_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_47),
        .Q(\reg_pix_data_reg[39]_0 [4]));
  FDCE \reg_pix_data_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_46),
        .Q(\reg_pix_data_reg[39]_0 [5]));
  FDCE \reg_pix_data_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_45),
        .Q(\reg_pix_data_reg[39]_0 [6]));
  FDCE \reg_pix_data_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_44),
        .Q(\reg_pix_data_reg[39]_0 [7]));
  FDCE \reg_pix_data_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_43),
        .Q(\reg_pix_data_reg[39]_0 [8]));
  FDCE \reg_pix_data_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_raw10_unpack_n_42),
        .Q(\reg_pix_data_reg[39]_0 [9]));
  FDCE \reg_pix_di_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(p_0_in[0]),
        .Q(\reg_pix_di_reg[7]_0 [0]));
  FDCE \reg_pix_di_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(p_0_in[1]),
        .Q(\reg_pix_di_reg[7]_0 [1]));
  FDCE \reg_pix_di_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(p_0_in[2]),
        .Q(\reg_pix_di_reg[7]_0 [2]));
  FDCE \reg_pix_di_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(p_0_in[3]),
        .Q(\reg_pix_di_reg[7]_0 [3]));
  FDCE \reg_pix_di_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(p_0_in[4]),
        .Q(\reg_pix_di_reg[7]_0 [4]));
  FDCE \reg_pix_di_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(p_0_in[5]),
        .Q(\reg_pix_di_reg[7]_0 [5]));
  FDCE \reg_pix_di_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(p_0_in[6]),
        .Q(\reg_pix_di_reg[7]_0 [6]));
  FDCE \reg_pix_di_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(p_0_in[7]),
        .Q(\reg_pix_di_reg[7]_0 [7]));
  FDCE reg_pix_valid_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(u_csi2_packet_decoder_n_1),
        .Q(pix_valid));
  design_1_mipi_rx_to_video_0_0__csi2_lanes_aligner u_csi2_lanes_aligner
       (.D(p_1_in),
        .Q(Q),
        .align_flag_reg_0(lane_byte_aligned_valid),
        .align_flag_reg_1({u_csi2_lanes_aligner_n_8,u_csi2_lanes_aligner_n_9,u_csi2_lanes_aligner_n_10,u_csi2_lanes_aligner_n_11,u_csi2_lanes_aligner_n_12,u_csi2_lanes_aligner_n_13,u_csi2_lanes_aligner_n_14,u_csi2_lanes_aligner_n_15,u_csi2_lanes_aligner_n_16,u_csi2_lanes_aligner_n_17,u_csi2_lanes_aligner_n_18,u_csi2_lanes_aligner_n_19,u_csi2_lanes_aligner_n_20,u_csi2_lanes_aligner_n_21,u_csi2_lanes_aligner_n_22,u_csi2_lanes_aligner_n_23,u_csi2_lanes_aligner_n_24,u_csi2_lanes_aligner_n_25,u_csi2_lanes_aligner_n_26,u_csi2_lanes_aligner_n_27,u_csi2_lanes_aligner_n_28,u_csi2_lanes_aligner_n_29,u_csi2_lanes_aligner_n_30,u_csi2_lanes_aligner_n_31}),
        .align_flag_reg_2(align_flag_reg),
        .\align_idx_reg[0][0]_0 (\align_idx_reg[0][0] ),
        .\align_idx_reg[0][0]_1 (\align_idx_reg[0][0]_0 ),
        .\align_idx_reg[0][0]_2 (D),
        .\align_idx_reg[1][0]_0 (\align_idx_reg[1][0] ),
        .\align_idx_reg[1][0]_1 (\align_idx_reg[1][0]_0 ),
        .\align_idx_reg[1][0]_2 (\align_idx_reg[1][0]_1 ),
        .\align_idx_reg[2][0]_0 (\align_idx_reg[2][0] ),
        .\align_idx_reg[2][0]_1 (\align_idx_reg[2][0]_0 ),
        .\align_idx_reg[2][0]_2 (\align_idx_reg[2][0]_1 ),
        .\align_idx_reg[3][0]_0 (\align_idx_reg[3][0] ),
        .\align_idx_reg[3][0]_1 (\align_idx_reg[3][0]_0 ),
        .clk_hs_byte(clk_hs_byte),
        .data_flag0(data_flag0),
        .data_flag_reg(u_csi2_packet_decoder_n_56),
        .data_flag_reg_0(u_csi2_packet_decoder_n_55),
        .\head_clk_idx_reg[0] (head_clk_idx),
        .\head_word_reg[0] (u_csi2_packet_decoder_n_54),
        .\lane_buf_reg[0][31]_0 (\lane_buf_reg[0][31] ),
        .\lane_buf_reg[7][0]_0 (\lane_buf_reg[7][0] ),
        .\lane_buf_reg[7][16]_0 (\lane_buf_reg[7][16] ),
        .\lane_buf_reg[7][8]_0 (\lane_buf_reg[7][8] ),
        .lane_byte_aligned(lane_byte_aligned),
        .lane_valid__2(lane_valid__2),
        .module_reset(module_reset),
        .module_reset_reg(module_reset_reg),
        .s00_axi_aresetn(s00_axi_aresetn));
  design_1_mipi_rx_to_video_0_0__csi2_packet_decoder u_csi2_packet_decoder
       (.D({p_0_in[4],p_0_in[2]}),
        .E(u_csi2_packet_decoder_n_16),
        .O({u_csi2_raw10_unpack_n_83,u_csi2_raw10_unpack_n_84,u_csi2_raw10_unpack_n_85}),
        .Q({u_csi2_packet_decoder_n_9,u_csi2_packet_decoder_n_10,u_csi2_packet_decoder_n_11,u_csi2_packet_decoder_n_12,u_csi2_packet_decoder_n_13,u_csi2_packet_decoder_n_14}),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_2_reg[0]_0 (u_csi2_packet_decoder_n_101),
        .\data_byte_2_reg[1]_0 (u_csi2_packet_decoder_n_100),
        .\data_byte_2_reg[2]_0 (u_csi2_packet_decoder_n_99),
        .\data_byte_2_reg[31]_0 (pkt_data),
        .\data_byte_2_reg[31]_1 ({u_csi2_packet_decoder_n_63,u_csi2_packet_decoder_n_64,u_csi2_packet_decoder_n_65,u_csi2_packet_decoder_n_66,u_csi2_packet_decoder_n_67,u_csi2_packet_decoder_n_68,u_csi2_packet_decoder_n_69,u_csi2_packet_decoder_n_70,u_csi2_packet_decoder_n_71,u_csi2_packet_decoder_n_72,u_csi2_packet_decoder_n_73,u_csi2_packet_decoder_n_74,u_csi2_packet_decoder_n_75,u_csi2_packet_decoder_n_76,u_csi2_packet_decoder_n_77,u_csi2_packet_decoder_n_78,u_csi2_packet_decoder_n_79,u_csi2_packet_decoder_n_80,u_csi2_packet_decoder_n_81,u_csi2_packet_decoder_n_82,u_csi2_packet_decoder_n_83,u_csi2_packet_decoder_n_84,u_csi2_packet_decoder_n_85,u_csi2_packet_decoder_n_86,u_csi2_packet_decoder_n_87,u_csi2_packet_decoder_n_88,u_csi2_packet_decoder_n_89,u_csi2_packet_decoder_n_90,u_csi2_packet_decoder_n_91,u_csi2_packet_decoder_n_92,u_csi2_packet_decoder_n_93,u_csi2_packet_decoder_n_94}),
        .\data_byte_2_reg[3]_0 (u_csi2_packet_decoder_n_98),
        .\data_byte_2_reg[4]_0 (u_csi2_packet_decoder_n_50),
        .\data_byte_2_reg[5]_0 (u_csi2_packet_decoder_n_96),
        .\data_byte_2_reg[5]_1 (u_csi2_packet_decoder_n_97),
        .\data_byte_2_reg[6]_0 (u_csi2_packet_decoder_n_17),
        .\data_byte_2_reg[7]_0 (u_csi2_packet_decoder_n_95),
        .\data_byte_reg[0]_0 (module_reset_reg),
        .data_flag0(data_flag0),
        .data_flag_2_reg_0({u_csi2_packet_decoder_n_6,u_csi2_packet_decoder_n_7,u_csi2_packet_decoder_n_8}),
        .data_flag_2_reg_1(u_csi2_packet_decoder_n_15),
        .data_flag_2_reg_2({u_csi2_packet_decoder_n_57,u_csi2_packet_decoder_n_58,u_csi2_packet_decoder_n_59,u_csi2_packet_decoder_n_60,u_csi2_packet_decoder_n_61,u_csi2_packet_decoder_n_62}),
        .\data_id_2_reg[4]_0 (u_csi2_packet_decoder_n_2),
        .\di_reg_reg[3] (u_csi2_raw10_unpack_n_52),
        .\head_clk_idx_reg[0]_0 (p_1_in),
        .\head_clk_idx_reg[1]_0 (u_csi2_packet_decoder_n_54),
        .\head_clk_idx_reg[1]_1 (lane_byte_aligned_valid),
        .\head_clk_idx_reg[2]_0 (head_clk_idx),
        .\head_clk_idx_reg[2]_1 (u_csi2_packet_decoder_n_55),
        .\head_clk_idx_reg[2]_2 (u_csi2_packet_decoder_n_56),
        .\head_word_reg[23]_0 ({u_csi2_lanes_aligner_n_8,u_csi2_lanes_aligner_n_9,u_csi2_lanes_aligner_n_10,u_csi2_lanes_aligner_n_11,u_csi2_lanes_aligner_n_12,u_csi2_lanes_aligner_n_13,u_csi2_lanes_aligner_n_14,u_csi2_lanes_aligner_n_15,u_csi2_lanes_aligner_n_16,u_csi2_lanes_aligner_n_17,u_csi2_lanes_aligner_n_18,u_csi2_lanes_aligner_n_19,u_csi2_lanes_aligner_n_20,u_csi2_lanes_aligner_n_21,u_csi2_lanes_aligner_n_22,u_csi2_lanes_aligner_n_23,u_csi2_lanes_aligner_n_24,u_csi2_lanes_aligner_n_25,u_csi2_lanes_aligner_n_26,u_csi2_lanes_aligner_n_27,u_csi2_lanes_aligner_n_28,u_csi2_lanes_aligner_n_29,u_csi2_lanes_aligner_n_30,u_csi2_lanes_aligner_n_31}),
        .lane_byte_aligned(lane_byte_aligned),
        .last_size_reg(last_size_reg),
        .\pixel_data_reg[11] ({u_csi2_raw10_unpack_n_77,u_csi2_raw10_unpack_n_78,u_csi2_raw10_unpack_n_79}),
        .\pixel_data_reg[21] ({u_csi2_raw10_unpack_n_80,u_csi2_raw10_unpack_n_81,u_csi2_raw10_unpack_n_82}),
        .\pixel_data_reg[31] ({last_data[31:26],last_data[23:18],last_data[15:10],last_data[7:2]}),
        .pixel_enable3_out(pixel_enable3_out),
        .pkt_valid(pkt_valid),
        .raw10_pix_data_enable(raw10_pix_data_enable),
        .raw10_pix_valid(raw10_pix_valid),
        .reg_pix_valid_reg(u_csi2_packet_decoder_n_1),
        .reg_pix_valid_reg_0(u_csi2_packet_decoder_n_5));
  design_1_mipi_rx_to_video_0_0__csi2_raw10_unpack u_csi2_raw10_unpack
       (.D({p_0_in[7:5],p_0_in[3],p_0_in[1:0]}),
        .E(u_csi2_packet_decoder_n_16),
        .O({u_csi2_raw10_unpack_n_83,u_csi2_raw10_unpack_n_84,u_csi2_raw10_unpack_n_85}),
        .Q({u_csi2_packet_decoder_n_9,u_csi2_packet_decoder_n_10,u_csi2_packet_decoder_n_11,u_csi2_packet_decoder_n_12,u_csi2_packet_decoder_n_13,u_csi2_packet_decoder_n_14}),
        .clk_hs_byte(clk_hs_byte),
        .\di_reg_reg[7]_0 ({u_csi2_packet_decoder_n_6,u_csi2_packet_decoder_n_7,u_csi2_packet_decoder_n_8}),
        .\last_data_reg[31]_0 ({last_data[31:26],last_data[23:18],last_data[15:10],last_data[7:2]}),
        .\last_data_reg[31]_1 ({u_csi2_packet_decoder_n_63,u_csi2_packet_decoder_n_64,u_csi2_packet_decoder_n_65,u_csi2_packet_decoder_n_66,u_csi2_packet_decoder_n_67,u_csi2_packet_decoder_n_68,u_csi2_packet_decoder_n_69,u_csi2_packet_decoder_n_70,u_csi2_packet_decoder_n_71,u_csi2_packet_decoder_n_72,u_csi2_packet_decoder_n_73,u_csi2_packet_decoder_n_74,u_csi2_packet_decoder_n_75,u_csi2_packet_decoder_n_76,u_csi2_packet_decoder_n_77,u_csi2_packet_decoder_n_78,u_csi2_packet_decoder_n_79,u_csi2_packet_decoder_n_80,u_csi2_packet_decoder_n_81,u_csi2_packet_decoder_n_82,u_csi2_packet_decoder_n_83,u_csi2_packet_decoder_n_84,u_csi2_packet_decoder_n_85,u_csi2_packet_decoder_n_86,u_csi2_packet_decoder_n_87,u_csi2_packet_decoder_n_88,u_csi2_packet_decoder_n_89,u_csi2_packet_decoder_n_90,u_csi2_packet_decoder_n_91,u_csi2_packet_decoder_n_92,u_csi2_packet_decoder_n_93,u_csi2_packet_decoder_n_94}),
        .last_size_reg(last_size_reg),
        .\last_size_reg[0]_0 ({u_csi2_raw10_unpack_n_77,u_csi2_raw10_unpack_n_78,u_csi2_raw10_unpack_n_79}),
        .\last_size_reg[0]_1 ({u_csi2_raw10_unpack_n_80,u_csi2_raw10_unpack_n_81,u_csi2_raw10_unpack_n_82}),
        .\pixel_data_reg[0]_0 (module_reset_reg),
        .\pixel_data_reg[17]_0 (u_csi2_packet_decoder_n_97),
        .\pixel_data_reg[1]_0 (u_csi2_packet_decoder_n_15),
        .\pixel_data_reg[31]_0 ({u_csi2_packet_decoder_n_57,u_csi2_packet_decoder_n_58,u_csi2_packet_decoder_n_59,u_csi2_packet_decoder_n_60,u_csi2_packet_decoder_n_61,u_csi2_packet_decoder_n_62}),
        .\pixel_data_reg[32]_0 (u_csi2_packet_decoder_n_101),
        .\pixel_data_reg[33]_0 (u_csi2_packet_decoder_n_100),
        .\pixel_data_reg[34]_0 (u_csi2_packet_decoder_n_99),
        .\pixel_data_reg[35]_0 (u_csi2_packet_decoder_n_98),
        .\pixel_data_reg[36]_0 (u_csi2_packet_decoder_n_50),
        .\pixel_data_reg[37]_0 (u_csi2_packet_decoder_n_96),
        .\pixel_data_reg[38]_0 (u_csi2_packet_decoder_n_17),
        .\pixel_data_reg[39]_0 (u_csi2_packet_decoder_n_95),
        .pixel_enable3_out(pixel_enable3_out),
        .pkt_valid(pkt_valid),
        .raw10_pix_data_enable(raw10_pix_data_enable),
        .raw10_pix_valid(raw10_pix_valid),
        .\ready_delay_reg[0]_0 (u_csi2_raw10_unpack_n_52),
        .\reg_pix_data_reg[31]_0 (pkt_data),
        .\reg_pix_di_reg[7]_0 (u_csi2_packet_decoder_n_2),
        .reg_pix_valid_reg_0({u_csi2_raw10_unpack_n_12,u_csi2_raw10_unpack_n_13,u_csi2_raw10_unpack_n_14,u_csi2_raw10_unpack_n_15,u_csi2_raw10_unpack_n_16,u_csi2_raw10_unpack_n_17,u_csi2_raw10_unpack_n_18,u_csi2_raw10_unpack_n_19,u_csi2_raw10_unpack_n_20,u_csi2_raw10_unpack_n_21,u_csi2_raw10_unpack_n_22,u_csi2_raw10_unpack_n_23,u_csi2_raw10_unpack_n_24,u_csi2_raw10_unpack_n_25,u_csi2_raw10_unpack_n_26,u_csi2_raw10_unpack_n_27,u_csi2_raw10_unpack_n_28,u_csi2_raw10_unpack_n_29,u_csi2_raw10_unpack_n_30,u_csi2_raw10_unpack_n_31,u_csi2_raw10_unpack_n_32,u_csi2_raw10_unpack_n_33,u_csi2_raw10_unpack_n_34,u_csi2_raw10_unpack_n_35,u_csi2_raw10_unpack_n_36,u_csi2_raw10_unpack_n_37,u_csi2_raw10_unpack_n_38,u_csi2_raw10_unpack_n_39,u_csi2_raw10_unpack_n_40,u_csi2_raw10_unpack_n_41,u_csi2_raw10_unpack_n_42,u_csi2_raw10_unpack_n_43,u_csi2_raw10_unpack_n_44,u_csi2_raw10_unpack_n_45,u_csi2_raw10_unpack_n_46,u_csi2_raw10_unpack_n_47,u_csi2_raw10_unpack_n_48,u_csi2_raw10_unpack_n_49,u_csi2_raw10_unpack_n_50,u_csi2_raw10_unpack_n_51}));
endmodule

(* ORIG_REF_NAME = "dphy_rx_to_byte" *) 
module design_1_mipi_rx_to_video_0_0_dphy_rx_to_byte
   (data_lp_n_0,
    data_lp_p_0,
    data_lp_n_1,
    data_lp_p_1,
    data_lp_n_2,
    data_lp_p_2,
    data_lp_n_3,
    data_lp_p_3,
    clk_hs_byte,
    \data_byte_aligned_reg[7] ,
    data_byte_valid_reg,
    data_byte_valid_reg_0,
    data_byte_valid_reg_1,
    lane_valid__2,
    \align_idx_reg[3][0] ,
    \align_idx_reg[2][0] ,
    \align_idx_reg[1][0] ,
    D,
    align_flag_reg,
    byte_data_valid,
    align_flag_reg_0,
    align_flag_reg_1,
    align_flag_reg_2,
    dphy_data_p,
    dphy_data_n,
    AR,
    data_byte_valid_reg_2,
    data_byte_valid_reg_3,
    data_byte_valid_reg_4,
    Q,
    \align_idx_reg[2][0]_0 ,
    \align_idx_reg[1][0]_0 ,
    \align_idx_reg[0][0] ,
    lane_byte_aligned_valid,
    dphy_clk_p,
    dphy_clk_n);
  output data_lp_n_0;
  output data_lp_p_0;
  output data_lp_n_1;
  output data_lp_p_1;
  output data_lp_n_2;
  output data_lp_p_2;
  output data_lp_n_3;
  output data_lp_p_3;
  output clk_hs_byte;
  output [31:0]\data_byte_aligned_reg[7] ;
  output data_byte_valid_reg;
  output data_byte_valid_reg_0;
  output data_byte_valid_reg_1;
  output lane_valid__2;
  output [0:0]\align_idx_reg[3][0] ;
  output [0:0]\align_idx_reg[2][0] ;
  output [0:0]\align_idx_reg[1][0] ;
  output [0:0]D;
  output [0:0]align_flag_reg;
  output [3:0]byte_data_valid;
  output [0:0]align_flag_reg_0;
  output [0:0]align_flag_reg_1;
  output [0:0]align_flag_reg_2;
  input [3:0]dphy_data_p;
  input [3:0]dphy_data_n;
  input [0:0]AR;
  input [0:0]data_byte_valid_reg_2;
  input [0:0]data_byte_valid_reg_3;
  input [0:0]data_byte_valid_reg_4;
  input [0:0]Q;
  input [0:0]\align_idx_reg[2][0]_0 ;
  input [0:0]\align_idx_reg[1][0]_0 ;
  input [0:0]\align_idx_reg[0][0] ;
  input lane_byte_aligned_valid;
  input dphy_clk_p;
  input dphy_clk_n;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]align_flag_reg;
  wire [0:0]align_flag_reg_0;
  wire [0:0]align_flag_reg_1;
  wire [0:0]align_flag_reg_2;
  wire [0:0]\align_idx_reg[0][0] ;
  wire [0:0]\align_idx_reg[1][0] ;
  wire [0:0]\align_idx_reg[1][0]_0 ;
  wire [0:0]\align_idx_reg[2][0] ;
  wire [0:0]\align_idx_reg[2][0]_0 ;
  wire [0:0]\align_idx_reg[3][0] ;
  wire [3:0]byte_data_valid;
  wire clk_hs_bit;
  wire clk_hs_byte;
  wire [0:0]data6;
  wire [0:0]data6_10;
  wire [0:0]data6_6;
  wire [0:0]data6_8;
  wire [31:0]\data_byte_aligned_reg[7] ;
  wire data_byte_valid0;
  wire data_byte_valid0_11;
  wire data_byte_valid0_7;
  wire data_byte_valid0_9;
  wire data_byte_valid_reg;
  wire data_byte_valid_reg_0;
  wire data_byte_valid_reg_1;
  wire [0:0]data_byte_valid_reg_2;
  wire [0:0]data_byte_valid_reg_3;
  wire [0:0]data_byte_valid_reg_4;
  wire data_hs_bit_0;
  wire data_hs_bit_1;
  wire data_hs_bit_2;
  wire data_hs_bit_3;
  wire [7:0]data_hs_byte_0;
  wire [7:0]data_hs_byte_16;
  wire [7:0]data_hs_byte_24;
  wire [7:0]data_hs_byte_8;
  wire data_lp_n_0;
  wire data_lp_n_1;
  wire data_lp_n_2;
  wire data_lp_n_3;
  wire data_lp_p_0;
  wire data_lp_p_1;
  wire data_lp_p_2;
  wire data_lp_p_3;
  wire dphy_clk_n;
  wire dphy_clk_p;
  wire [3:0]dphy_data_n;
  wire [3:0]dphy_data_p;
  wire \genblk2[0].u_dphy_rx_to_byte_n_10 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_13 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_18 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_19 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_20 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_21 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_22 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_23 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_24 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_25 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_26 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_8 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_9 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_10 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_13 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_18 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_19 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_20 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_21 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_22 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_23 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_24 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_25 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_26 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_8 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_9 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_10 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_13 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_18 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_19 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_20 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_21 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_22 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_23 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_24 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_25 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_26 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_8 ;
  wire \genblk2[2].u_dphy_rx_to_byte_n_9 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_10 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_13 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_18 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_19 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_20 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_21 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_22 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_23 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_24 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_25 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_26 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_8 ;
  wire \genblk2[3].u_dphy_rx_to_byte_n_9 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_15 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_16 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_17 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_18 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_19 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_2 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_20 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_21 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_22 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_23 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_24 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_25 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_3 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_15 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_16 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_17 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_18 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_19 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_2 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_20 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_21 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_22 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_23 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_24 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_25 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_3 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_15 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_16 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_17 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_18 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_19 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_2 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_20 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_21 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_22 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_23 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_24 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_25 ;
  wire \genblk3[2].u_dphy_rx_data_byte_aligner_n_3 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_2 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_23 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_24 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_25 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_26 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_27 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_28 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_29 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_3 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_30 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_31 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_32 ;
  wire \genblk3[3].u_dphy_rx_data_byte_aligner_n_33 ;
  wire lane_byte_aligned_valid;
  wire lane_valid__2;
  wire [2:0]p_0_in;
  wire [2:0]p_0_in_1;
  wire [2:0]p_0_in_3;
  wire [2:0]p_0_in_5;
  wire [7:1]p_1_in;
  wire [7:1]p_1_in_0;
  wire [7:1]p_1_in_2;
  wire [7:1]p_1_in_4;

  design_1_mipi_rx_to_video_0_0__dphy_rx_data_io \genblk1[0].u_dphy_rx_data_io 
       (.data_hs_bit_0(data_hs_bit_0),
        .data_lp_n_0(data_lp_n_0),
        .data_lp_p_0(data_lp_p_0),
        .dphy_data_n(dphy_data_n[0]),
        .dphy_data_p(dphy_data_p[0]));
  design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_0 \genblk1[1].u_dphy_rx_data_io 
       (.data_hs_bit_1(data_hs_bit_1),
        .data_lp_n_1(data_lp_n_1),
        .data_lp_p_1(data_lp_p_1),
        .dphy_data_n(dphy_data_n[1]),
        .dphy_data_p(dphy_data_p[1]));
  design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_1 \genblk1[2].u_dphy_rx_data_io 
       (.data_hs_bit_2(data_hs_bit_2),
        .data_lp_n_2(data_lp_n_2),
        .data_lp_p_2(data_lp_p_2),
        .dphy_data_n(dphy_data_n[2]),
        .dphy_data_p(dphy_data_p[2]));
  design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_2 \genblk1[3].u_dphy_rx_data_io 
       (.data_hs_bit_3(data_hs_bit_3),
        .data_lp_n_3(data_lp_n_3),
        .data_lp_p_3(data_lp_p_3),
        .dphy_data_n(dphy_data_n[3]),
        .dphy_data_p(dphy_data_p[3]));
  design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte \genblk2[0].u_dphy_rx_to_byte 
       (.AR(AR),
        .D(p_0_in[1:0]),
        .E(\genblk2[0].u_dphy_rx_to_byte_n_8 ),
        .Q(data_hs_byte_0),
        .\align_offset_reg[0] (\genblk3[0].u_dphy_rx_data_byte_aligner_n_18 ),
        .\align_offset_reg[0]_0 (\genblk3[0].u_dphy_rx_data_byte_aligner_n_19 ),
        .\align_offset_reg[1] (\genblk3[0].u_dphy_rx_data_byte_aligner_n_3 ),
        .clk_hs_bit(clk_hs_bit),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned[2]_i_2 ({data6,\genblk3[0].u_dphy_rx_data_byte_aligner_n_15 ,\genblk3[0].u_dphy_rx_data_byte_aligner_n_16 ,\genblk3[0].u_dphy_rx_data_byte_aligner_n_17 }),
        .\data_byte_aligned[2]_i_2_0 ({\genblk3[0].u_dphy_rx_data_byte_aligner_n_21 ,\genblk3[0].u_dphy_rx_data_byte_aligner_n_22 }),
        .\data_byte_aligned_reg[1] (\genblk3[0].u_dphy_rx_data_byte_aligner_n_20 ),
        .\data_byte_aligned_reg[1]_0 (p_0_in[2]),
        .\data_byte_aligned_reg[3] (\genblk3[0].u_dphy_rx_data_byte_aligner_n_23 ),
        .\data_byte_aligned_reg[4] (\genblk3[0].u_dphy_rx_data_byte_aligner_n_25 ),
        .\data_byte_aligned_reg[7] (\genblk3[0].u_dphy_rx_data_byte_aligner_n_24 ),
        .data_byte_valid0(data_byte_valid0),
        .data_byte_valid_reg(\genblk3[0].u_dphy_rx_data_byte_aligner_n_2 ),
        .data_hs_bit_0(data_hs_bit_0),
        .\last_byte_reg[5] (\genblk2[0].u_dphy_rx_to_byte_n_9 ),
        .\last_byte_reg[5]_0 (\genblk2[0].u_dphy_rx_to_byte_n_13 ),
        .u_ISERDESE3_0(\genblk2[0].u_dphy_rx_to_byte_n_10 ),
        .u_ISERDESE3_1({p_1_in[7],p_1_in[4:3],p_1_in[1]}),
        .u_ISERDESE3_10(\genblk2[0].u_dphy_rx_to_byte_n_26 ),
        .u_ISERDESE3_2(\genblk2[0].u_dphy_rx_to_byte_n_18 ),
        .u_ISERDESE3_3(\genblk2[0].u_dphy_rx_to_byte_n_19 ),
        .u_ISERDESE3_4(\genblk2[0].u_dphy_rx_to_byte_n_20 ),
        .u_ISERDESE3_5(\genblk2[0].u_dphy_rx_to_byte_n_21 ),
        .u_ISERDESE3_6(\genblk2[0].u_dphy_rx_to_byte_n_22 ),
        .u_ISERDESE3_7(\genblk2[0].u_dphy_rx_to_byte_n_23 ),
        .u_ISERDESE3_8(\genblk2[0].u_dphy_rx_to_byte_n_24 ),
        .u_ISERDESE3_9(\genblk2[0].u_dphy_rx_to_byte_n_25 ));
  design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_3 \genblk2[1].u_dphy_rx_to_byte 
       (.D(p_0_in_1[1:0]),
        .E(\genblk2[1].u_dphy_rx_to_byte_n_8 ),
        .Q(data_hs_byte_8),
        .\align_offset_reg[0] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_18 ),
        .\align_offset_reg[0]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_19 ),
        .\align_offset_reg[1] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_3 ),
        .clk_hs_bit(clk_hs_bit),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned[2]_i_2__0 ({data6_6,\genblk3[1].u_dphy_rx_data_byte_aligner_n_15 ,\genblk3[1].u_dphy_rx_data_byte_aligner_n_16 ,\genblk3[1].u_dphy_rx_data_byte_aligner_n_17 }),
        .\data_byte_aligned[2]_i_2__0_0 ({\genblk3[1].u_dphy_rx_data_byte_aligner_n_21 ,\genblk3[1].u_dphy_rx_data_byte_aligner_n_22 }),
        .\data_byte_aligned_reg[1] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_20 ),
        .\data_byte_aligned_reg[1]_0 (p_0_in_1[2]),
        .\data_byte_aligned_reg[3] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_23 ),
        .\data_byte_aligned_reg[4] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_25 ),
        .\data_byte_aligned_reg[7] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_24 ),
        .data_byte_valid0(data_byte_valid0_7),
        .data_byte_valid_reg(\genblk3[1].u_dphy_rx_data_byte_aligner_n_2 ),
        .data_hs_bit_1(data_hs_bit_1),
        .\last_byte_reg[5] (\genblk2[1].u_dphy_rx_to_byte_n_9 ),
        .\last_byte_reg[5]_0 (\genblk2[1].u_dphy_rx_to_byte_n_13 ),
        .u_ISERDESE3_0(\genblk2[1].u_dphy_rx_to_byte_n_10 ),
        .u_ISERDESE3_1({p_1_in_0[7],p_1_in_0[4:3],p_1_in_0[1]}),
        .u_ISERDESE3_10(\genblk2[1].u_dphy_rx_to_byte_n_26 ),
        .u_ISERDESE3_11(data_byte_valid_reg_2),
        .u_ISERDESE3_2(\genblk2[1].u_dphy_rx_to_byte_n_18 ),
        .u_ISERDESE3_3(\genblk2[1].u_dphy_rx_to_byte_n_19 ),
        .u_ISERDESE3_4(\genblk2[1].u_dphy_rx_to_byte_n_20 ),
        .u_ISERDESE3_5(\genblk2[1].u_dphy_rx_to_byte_n_21 ),
        .u_ISERDESE3_6(\genblk2[1].u_dphy_rx_to_byte_n_22 ),
        .u_ISERDESE3_7(\genblk2[1].u_dphy_rx_to_byte_n_23 ),
        .u_ISERDESE3_8(\genblk2[1].u_dphy_rx_to_byte_n_24 ),
        .u_ISERDESE3_9(\genblk2[1].u_dphy_rx_to_byte_n_25 ));
  design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_4 \genblk2[2].u_dphy_rx_to_byte 
       (.D(p_0_in_3[1:0]),
        .E(\genblk2[2].u_dphy_rx_to_byte_n_8 ),
        .Q(data_hs_byte_16),
        .\align_offset_reg[0] (\genblk3[2].u_dphy_rx_data_byte_aligner_n_18 ),
        .\align_offset_reg[0]_0 (\genblk3[2].u_dphy_rx_data_byte_aligner_n_19 ),
        .\align_offset_reg[1] (\genblk3[2].u_dphy_rx_data_byte_aligner_n_3 ),
        .clk_hs_bit(clk_hs_bit),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned[2]_i_2__1 ({data6_8,\genblk3[2].u_dphy_rx_data_byte_aligner_n_15 ,\genblk3[2].u_dphy_rx_data_byte_aligner_n_16 ,\genblk3[2].u_dphy_rx_data_byte_aligner_n_17 }),
        .\data_byte_aligned[2]_i_2__1_0 ({\genblk3[2].u_dphy_rx_data_byte_aligner_n_21 ,\genblk3[2].u_dphy_rx_data_byte_aligner_n_22 }),
        .\data_byte_aligned_reg[1] (\genblk3[2].u_dphy_rx_data_byte_aligner_n_20 ),
        .\data_byte_aligned_reg[1]_0 (p_0_in_3[2]),
        .\data_byte_aligned_reg[3] (\genblk3[2].u_dphy_rx_data_byte_aligner_n_23 ),
        .\data_byte_aligned_reg[4] (\genblk3[2].u_dphy_rx_data_byte_aligner_n_25 ),
        .\data_byte_aligned_reg[7] (\genblk3[2].u_dphy_rx_data_byte_aligner_n_24 ),
        .data_byte_valid0(data_byte_valid0_9),
        .data_byte_valid_reg(\genblk3[2].u_dphy_rx_data_byte_aligner_n_2 ),
        .data_hs_bit_2(data_hs_bit_2),
        .\last_byte_reg[5] (\genblk2[2].u_dphy_rx_to_byte_n_9 ),
        .\last_byte_reg[5]_0 (\genblk2[2].u_dphy_rx_to_byte_n_13 ),
        .u_ISERDESE3_0(\genblk2[2].u_dphy_rx_to_byte_n_10 ),
        .u_ISERDESE3_1({p_1_in_2[7],p_1_in_2[4:3],p_1_in_2[1]}),
        .u_ISERDESE3_10(\genblk2[2].u_dphy_rx_to_byte_n_26 ),
        .u_ISERDESE3_11(data_byte_valid_reg_3),
        .u_ISERDESE3_2(\genblk2[2].u_dphy_rx_to_byte_n_18 ),
        .u_ISERDESE3_3(\genblk2[2].u_dphy_rx_to_byte_n_19 ),
        .u_ISERDESE3_4(\genblk2[2].u_dphy_rx_to_byte_n_20 ),
        .u_ISERDESE3_5(\genblk2[2].u_dphy_rx_to_byte_n_21 ),
        .u_ISERDESE3_6(\genblk2[2].u_dphy_rx_to_byte_n_22 ),
        .u_ISERDESE3_7(\genblk2[2].u_dphy_rx_to_byte_n_23 ),
        .u_ISERDESE3_8(\genblk2[2].u_dphy_rx_to_byte_n_24 ),
        .u_ISERDESE3_9(\genblk2[2].u_dphy_rx_to_byte_n_25 ));
  design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_5 \genblk2[3].u_dphy_rx_to_byte 
       (.D(p_0_in_5[1:0]),
        .E(\genblk2[3].u_dphy_rx_to_byte_n_8 ),
        .Q(data_hs_byte_24),
        .\align_offset_reg[0] (\genblk3[3].u_dphy_rx_data_byte_aligner_n_26 ),
        .\align_offset_reg[0]_0 (\genblk3[3].u_dphy_rx_data_byte_aligner_n_27 ),
        .\align_offset_reg[1] (\genblk3[3].u_dphy_rx_data_byte_aligner_n_3 ),
        .clk_hs_bit(clk_hs_bit),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned[2]_i_2__2 ({data6_10,\genblk3[3].u_dphy_rx_data_byte_aligner_n_23 ,\genblk3[3].u_dphy_rx_data_byte_aligner_n_24 ,\genblk3[3].u_dphy_rx_data_byte_aligner_n_25 }),
        .\data_byte_aligned[2]_i_2__2_0 ({\genblk3[3].u_dphy_rx_data_byte_aligner_n_29 ,\genblk3[3].u_dphy_rx_data_byte_aligner_n_30 }),
        .\data_byte_aligned_reg[1] (\genblk3[3].u_dphy_rx_data_byte_aligner_n_28 ),
        .\data_byte_aligned_reg[1]_0 (p_0_in_5[2]),
        .\data_byte_aligned_reg[3] (\genblk3[3].u_dphy_rx_data_byte_aligner_n_31 ),
        .\data_byte_aligned_reg[4] (\genblk3[3].u_dphy_rx_data_byte_aligner_n_33 ),
        .\data_byte_aligned_reg[7] (\genblk3[3].u_dphy_rx_data_byte_aligner_n_32 ),
        .data_byte_valid0(data_byte_valid0_11),
        .data_byte_valid_reg(\genblk3[3].u_dphy_rx_data_byte_aligner_n_2 ),
        .data_hs_bit_3(data_hs_bit_3),
        .\last_byte_reg[5] (\genblk2[3].u_dphy_rx_to_byte_n_9 ),
        .\last_byte_reg[5]_0 (\genblk2[3].u_dphy_rx_to_byte_n_13 ),
        .u_ISERDESE3_0(\genblk2[3].u_dphy_rx_to_byte_n_10 ),
        .u_ISERDESE3_1({p_1_in_4[7],p_1_in_4[4:3],p_1_in_4[1]}),
        .u_ISERDESE3_10(\genblk2[3].u_dphy_rx_to_byte_n_26 ),
        .u_ISERDESE3_11(data_byte_valid_reg_4),
        .u_ISERDESE3_2(\genblk2[3].u_dphy_rx_to_byte_n_18 ),
        .u_ISERDESE3_3(\genblk2[3].u_dphy_rx_to_byte_n_19 ),
        .u_ISERDESE3_4(\genblk2[3].u_dphy_rx_to_byte_n_20 ),
        .u_ISERDESE3_5(\genblk2[3].u_dphy_rx_to_byte_n_21 ),
        .u_ISERDESE3_6(\genblk2[3].u_dphy_rx_to_byte_n_22 ),
        .u_ISERDESE3_7(\genblk2[3].u_dphy_rx_to_byte_n_23 ),
        .u_ISERDESE3_8(\genblk2[3].u_dphy_rx_to_byte_n_24 ),
        .u_ISERDESE3_9(\genblk2[3].u_dphy_rx_to_byte_n_25 ));
  design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner \genblk3[0].u_dphy_rx_data_byte_aligner 
       (.AR(AR),
        .D({p_1_in[7],p_1_in[4:3],p_1_in[1]}),
        .E(\genblk2[0].u_dphy_rx_to_byte_n_8 ),
        .Q(data_hs_byte_0),
        .align_flag_reg(align_flag_reg_2),
        .\align_idx_reg[0][0] (data_byte_valid_reg),
        .\align_offset_reg[1]_0 ({\genblk3[0].u_dphy_rx_data_byte_aligner_n_21 ,\genblk3[0].u_dphy_rx_data_byte_aligner_n_22 }),
        .\align_offset_reg[1]_1 (p_0_in[1:0]),
        .\align_offset_reg[2]_0 (\genblk3[0].u_dphy_rx_data_byte_aligner_n_24 ),
        .\align_offset_reg[2]_1 (\genblk2[0].u_dphy_rx_to_byte_n_18 ),
        .\align_offset_reg[3]_0 (\genblk3[0].u_dphy_rx_data_byte_aligner_n_20 ),
        .\align_offset_reg[3]_1 (\genblk3[0].u_dphy_rx_data_byte_aligner_n_23 ),
        .\align_offset_reg[3]_2 (\genblk3[0].u_dphy_rx_data_byte_aligner_n_25 ),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned_reg[0]_0 (\genblk2[0].u_dphy_rx_to_byte_n_13 ),
        .\data_byte_aligned_reg[0]_1 (\genblk2[0].u_dphy_rx_to_byte_n_22 ),
        .\data_byte_aligned_reg[0]_2 (\genblk2[0].u_dphy_rx_to_byte_n_10 ),
        .\data_byte_aligned_reg[3]_0 (\genblk2[0].u_dphy_rx_to_byte_n_19 ),
        .\data_byte_aligned_reg[3]_1 (\genblk2[0].u_dphy_rx_to_byte_n_21 ),
        .\data_byte_aligned_reg[4]_0 (\genblk2[0].u_dphy_rx_to_byte_n_25 ),
        .\data_byte_aligned_reg[4]_1 (\genblk2[0].u_dphy_rx_to_byte_n_23 ),
        .\data_byte_aligned_reg[5]_0 (\genblk2[0].u_dphy_rx_to_byte_n_20 ),
        .\data_byte_aligned_reg[6]_0 (\genblk2[0].u_dphy_rx_to_byte_n_9 ),
        .\data_byte_aligned_reg[6]_1 (\genblk2[0].u_dphy_rx_to_byte_n_26 ),
        .\data_byte_aligned_reg[6]_2 (\genblk2[0].u_dphy_rx_to_byte_n_24 ),
        .\data_byte_aligned_reg[7]_0 (\data_byte_aligned_reg[7] [7:0]),
        .data_byte_valid0(data_byte_valid0),
        .data_byte_valid_reg_0(byte_data_valid[0]),
        .lane_byte_aligned_valid(lane_byte_aligned_valid),
        .\last_byte_reg[1]_0 (\genblk3[0].u_dphy_rx_data_byte_aligner_n_19 ),
        .\last_byte_reg[4]_0 (\genblk3[0].u_dphy_rx_data_byte_aligner_n_3 ),
        .\last_byte_reg[4]_1 (p_0_in[2]),
        .\last_byte_reg[6]_0 (\genblk3[0].u_dphy_rx_data_byte_aligner_n_2 ),
        .\last_byte_reg[7]_0 ({data6,\genblk3[0].u_dphy_rx_data_byte_aligner_n_15 ,\genblk3[0].u_dphy_rx_data_byte_aligner_n_16 ,\genblk3[0].u_dphy_rx_data_byte_aligner_n_17 }),
        .u_ISERDESE3(\genblk3[0].u_dphy_rx_data_byte_aligner_n_18 ));
  design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_6 \genblk3[1].u_dphy_rx_data_byte_aligner 
       (.D({p_1_in_0[7],p_1_in_0[4:3],p_1_in_0[1]}),
        .E(\genblk2[1].u_dphy_rx_to_byte_n_8 ),
        .Q(data_hs_byte_8),
        .align_flag_reg(align_flag_reg_1),
        .\align_idx_reg[1][0] (data_byte_valid_reg_0),
        .\align_offset_reg[1]_0 ({\genblk3[1].u_dphy_rx_data_byte_aligner_n_21 ,\genblk3[1].u_dphy_rx_data_byte_aligner_n_22 }),
        .\align_offset_reg[1]_1 (p_0_in_1[1:0]),
        .\align_offset_reg[2]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_24 ),
        .\align_offset_reg[2]_1 (\genblk2[1].u_dphy_rx_to_byte_n_18 ),
        .\align_offset_reg[3]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_20 ),
        .\align_offset_reg[3]_1 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_23 ),
        .\align_offset_reg[3]_2 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_25 ),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned_reg[0]_0 (\genblk2[1].u_dphy_rx_to_byte_n_13 ),
        .\data_byte_aligned_reg[0]_1 (\genblk2[1].u_dphy_rx_to_byte_n_22 ),
        .\data_byte_aligned_reg[0]_2 (\genblk2[1].u_dphy_rx_to_byte_n_10 ),
        .\data_byte_aligned_reg[3]_0 (\genblk2[1].u_dphy_rx_to_byte_n_19 ),
        .\data_byte_aligned_reg[3]_1 (\genblk2[1].u_dphy_rx_to_byte_n_21 ),
        .\data_byte_aligned_reg[4]_0 (\genblk2[1].u_dphy_rx_to_byte_n_25 ),
        .\data_byte_aligned_reg[4]_1 (\genblk2[1].u_dphy_rx_to_byte_n_23 ),
        .\data_byte_aligned_reg[5]_0 (\genblk2[1].u_dphy_rx_to_byte_n_20 ),
        .\data_byte_aligned_reg[6]_0 (\genblk2[1].u_dphy_rx_to_byte_n_9 ),
        .\data_byte_aligned_reg[6]_1 (\genblk2[1].u_dphy_rx_to_byte_n_26 ),
        .\data_byte_aligned_reg[6]_2 (\genblk2[1].u_dphy_rx_to_byte_n_24 ),
        .\data_byte_aligned_reg[7]_0 (\data_byte_aligned_reg[7] [15:8]),
        .data_byte_valid0(data_byte_valid0_7),
        .data_byte_valid_reg_0(byte_data_valid[1]),
        .data_byte_valid_reg_1(data_byte_valid_reg_2),
        .lane_byte_aligned_valid(lane_byte_aligned_valid),
        .\last_byte_reg[1]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_19 ),
        .\last_byte_reg[4]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_3 ),
        .\last_byte_reg[4]_1 (p_0_in_1[2]),
        .\last_byte_reg[6]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_2 ),
        .\last_byte_reg[7]_0 ({data6_6,\genblk3[1].u_dphy_rx_data_byte_aligner_n_15 ,\genblk3[1].u_dphy_rx_data_byte_aligner_n_16 ,\genblk3[1].u_dphy_rx_data_byte_aligner_n_17 }),
        .u_ISERDESE3(\genblk3[1].u_dphy_rx_data_byte_aligner_n_18 ));
  design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_7 \genblk3[2].u_dphy_rx_data_byte_aligner 
       (.D({p_1_in_2[7],p_1_in_2[4:3],p_1_in_2[1]}),
        .E(\genblk2[2].u_dphy_rx_to_byte_n_8 ),
        .Q(data_hs_byte_16),
        .align_flag_reg(align_flag_reg_0),
        .\align_idx_reg[2][0] (data_byte_valid_reg_1),
        .\align_offset_reg[1]_0 ({\genblk3[2].u_dphy_rx_data_byte_aligner_n_21 ,\genblk3[2].u_dphy_rx_data_byte_aligner_n_22 }),
        .\align_offset_reg[1]_1 (p_0_in_3[1:0]),
        .\align_offset_reg[2]_0 (\genblk3[2].u_dphy_rx_data_byte_aligner_n_24 ),
        .\align_offset_reg[2]_1 (\genblk2[2].u_dphy_rx_to_byte_n_18 ),
        .\align_offset_reg[3]_0 (\genblk3[2].u_dphy_rx_data_byte_aligner_n_20 ),
        .\align_offset_reg[3]_1 (\genblk3[2].u_dphy_rx_data_byte_aligner_n_23 ),
        .\align_offset_reg[3]_2 (\genblk3[2].u_dphy_rx_data_byte_aligner_n_25 ),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned_reg[0]_0 (\genblk2[2].u_dphy_rx_to_byte_n_13 ),
        .\data_byte_aligned_reg[0]_1 (\genblk2[2].u_dphy_rx_to_byte_n_22 ),
        .\data_byte_aligned_reg[0]_2 (\genblk2[2].u_dphy_rx_to_byte_n_10 ),
        .\data_byte_aligned_reg[3]_0 (\genblk2[2].u_dphy_rx_to_byte_n_19 ),
        .\data_byte_aligned_reg[3]_1 (\genblk2[2].u_dphy_rx_to_byte_n_21 ),
        .\data_byte_aligned_reg[4]_0 (\genblk2[2].u_dphy_rx_to_byte_n_25 ),
        .\data_byte_aligned_reg[4]_1 (\genblk2[2].u_dphy_rx_to_byte_n_23 ),
        .\data_byte_aligned_reg[5]_0 (\genblk2[2].u_dphy_rx_to_byte_n_20 ),
        .\data_byte_aligned_reg[6]_0 (\genblk2[2].u_dphy_rx_to_byte_n_9 ),
        .\data_byte_aligned_reg[6]_1 (\genblk2[2].u_dphy_rx_to_byte_n_26 ),
        .\data_byte_aligned_reg[6]_2 (\genblk2[2].u_dphy_rx_to_byte_n_24 ),
        .\data_byte_aligned_reg[7]_0 (\data_byte_aligned_reg[7] [23:16]),
        .data_byte_valid0(data_byte_valid0_9),
        .data_byte_valid_reg_0(byte_data_valid[2]),
        .data_byte_valid_reg_1(data_byte_valid_reg_3),
        .lane_byte_aligned_valid(lane_byte_aligned_valid),
        .\last_byte_reg[1]_0 (\genblk3[2].u_dphy_rx_data_byte_aligner_n_19 ),
        .\last_byte_reg[4]_0 (\genblk3[2].u_dphy_rx_data_byte_aligner_n_3 ),
        .\last_byte_reg[4]_1 (p_0_in_3[2]),
        .\last_byte_reg[6]_0 (\genblk3[2].u_dphy_rx_data_byte_aligner_n_2 ),
        .\last_byte_reg[7]_0 ({data6_8,\genblk3[2].u_dphy_rx_data_byte_aligner_n_15 ,\genblk3[2].u_dphy_rx_data_byte_aligner_n_16 ,\genblk3[2].u_dphy_rx_data_byte_aligner_n_17 }),
        .u_ISERDESE3(\genblk3[2].u_dphy_rx_data_byte_aligner_n_18 ));
  design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_8 \genblk3[3].u_dphy_rx_data_byte_aligner 
       (.D({p_1_in_4[7],p_1_in_4[4:3],p_1_in_4[1]}),
        .E(\genblk2[3].u_dphy_rx_to_byte_n_8 ),
        .Q(data_hs_byte_24),
        .align_flag_reg(align_flag_reg),
        .\align_idx_reg[0][0] (D),
        .\align_idx_reg[0][0]_0 (\align_idx_reg[0][0] ),
        .\align_idx_reg[0][0]_1 (byte_data_valid[2]),
        .\align_idx_reg[0][0]_2 (byte_data_valid[1]),
        .\align_idx_reg[0][0]_3 (byte_data_valid[0]),
        .\align_idx_reg[1][0] (\align_idx_reg[1][0] ),
        .\align_idx_reg[1][0]_0 (\align_idx_reg[1][0]_0 ),
        .\align_idx_reg[2][0] (\align_idx_reg[2][0] ),
        .\align_idx_reg[2][0]_0 (\align_idx_reg[2][0]_0 ),
        .\align_idx_reg[3][0] (\align_idx_reg[3][0] ),
        .\align_idx_reg[3][0]_0 (Q),
        .\align_offset_reg[1]_0 ({\genblk3[3].u_dphy_rx_data_byte_aligner_n_29 ,\genblk3[3].u_dphy_rx_data_byte_aligner_n_30 }),
        .\align_offset_reg[1]_1 (p_0_in_5[1:0]),
        .\align_offset_reg[2]_0 (\genblk3[3].u_dphy_rx_data_byte_aligner_n_32 ),
        .\align_offset_reg[2]_1 (\genblk2[3].u_dphy_rx_to_byte_n_18 ),
        .\align_offset_reg[3]_0 (\genblk3[3].u_dphy_rx_data_byte_aligner_n_28 ),
        .\align_offset_reg[3]_1 (\genblk3[3].u_dphy_rx_data_byte_aligner_n_31 ),
        .\align_offset_reg[3]_2 (\genblk3[3].u_dphy_rx_data_byte_aligner_n_33 ),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned_reg[0]_0 (\genblk2[3].u_dphy_rx_to_byte_n_13 ),
        .\data_byte_aligned_reg[0]_1 (\genblk2[3].u_dphy_rx_to_byte_n_22 ),
        .\data_byte_aligned_reg[0]_2 (\genblk2[3].u_dphy_rx_to_byte_n_10 ),
        .\data_byte_aligned_reg[3]_0 (\genblk2[3].u_dphy_rx_to_byte_n_19 ),
        .\data_byte_aligned_reg[3]_1 (\genblk2[3].u_dphy_rx_to_byte_n_21 ),
        .\data_byte_aligned_reg[4]_0 (\genblk2[3].u_dphy_rx_to_byte_n_25 ),
        .\data_byte_aligned_reg[4]_1 (\genblk2[3].u_dphy_rx_to_byte_n_23 ),
        .\data_byte_aligned_reg[5]_0 (\genblk2[3].u_dphy_rx_to_byte_n_20 ),
        .\data_byte_aligned_reg[6]_0 (\genblk2[3].u_dphy_rx_to_byte_n_9 ),
        .\data_byte_aligned_reg[6]_1 (\genblk2[3].u_dphy_rx_to_byte_n_26 ),
        .\data_byte_aligned_reg[6]_2 (\genblk2[3].u_dphy_rx_to_byte_n_24 ),
        .\data_byte_aligned_reg[7]_0 (\data_byte_aligned_reg[7] [31:24]),
        .data_byte_valid0(data_byte_valid0_11),
        .data_byte_valid_reg_0(byte_data_valid[3]),
        .data_byte_valid_reg_1(lane_valid__2),
        .data_byte_valid_reg_2(data_byte_valid_reg_1),
        .data_byte_valid_reg_3(data_byte_valid_reg_0),
        .data_byte_valid_reg_4(data_byte_valid_reg),
        .data_byte_valid_reg_5(data_byte_valid_reg_4),
        .lane_byte_aligned_valid(lane_byte_aligned_valid),
        .\last_byte_reg[1]_0 (\genblk3[3].u_dphy_rx_data_byte_aligner_n_27 ),
        .\last_byte_reg[4]_0 (\genblk3[3].u_dphy_rx_data_byte_aligner_n_3 ),
        .\last_byte_reg[4]_1 (p_0_in_5[2]),
        .\last_byte_reg[6]_0 (\genblk3[3].u_dphy_rx_data_byte_aligner_n_2 ),
        .\last_byte_reg[7]_0 ({data6_10,\genblk3[3].u_dphy_rx_data_byte_aligner_n_23 ,\genblk3[3].u_dphy_rx_data_byte_aligner_n_24 ,\genblk3[3].u_dphy_rx_data_byte_aligner_n_25 }),
        .u_ISERDESE3(\genblk3[3].u_dphy_rx_data_byte_aligner_n_26 ));
  design_1_mipi_rx_to_video_0_0__dphy_rx_clk_io u_dphy_rx_clk_io
       (.clk_hs_bit(clk_hs_bit),
        .clk_hs_byte(clk_hs_byte),
        .dphy_clk_n(dphy_clk_n),
        .dphy_clk_p(dphy_clk_p));
endmodule

(* ORIG_REF_NAME = "mipi_rx_to_video" *) 
module design_1_mipi_rx_to_video_0_0_mipi_rx_to_video
   (locked_reg,
    clk_hs_byte,
    reg_ce_reg,
    reg_active_video_reg,
    D,
    \pix_cnt_reg[12] ,
    pix_cnt1,
    \line_cnt_reg[14] ,
    E,
    mipi_width0__0,
    \axi_araddr_reg[5] ,
    reg_ce_reg_0,
    vid_data,
    \reg_di_reg[7] ,
    Q,
    \pix_cnt_reg[13] ,
    \pix_cnt_reg[8] ,
    pre_active_video,
    \line_cnt_reg[15] ,
    \line_cnt_reg[6] ,
    \line_cnt_reg[11] ,
    pre_vsync,
    module_reset,
    s00_axi_aresetn,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[0]_0 ,
    p_1_in_13,
    \axi_rdata_reg[0]_1 ,
    p_2_in,
    \line_cnt_reg[15]_0 ,
    \line_cnt_reg[10] ,
    \line_cnt_reg[5] ,
    dphy_data_p,
    dphy_data_n,
    dphy_clk_p,
    dphy_clk_n);
  output locked_reg;
  output clk_hs_byte;
  output reg_ce_reg;
  output reg_active_video_reg;
  output [0:0]D;
  output [4:0]\pix_cnt_reg[12] ;
  output pix_cnt1;
  output [15:0]\line_cnt_reg[14] ;
  output [0:0]E;
  output mipi_width0__0;
  output [0:0]\axi_araddr_reg[5] ;
  output [0:0]reg_ce_reg_0;
  output [39:0]vid_data;
  output [7:0]\reg_di_reg[7] ;
  input [11:0]Q;
  input \pix_cnt_reg[13] ;
  input \pix_cnt_reg[8] ;
  input pre_active_video;
  input [15:0]\line_cnt_reg[15] ;
  input \line_cnt_reg[6] ;
  input \line_cnt_reg[11] ;
  input pre_vsync;
  input module_reset;
  input s00_axi_aresetn;
  input \axi_rdata_reg[0] ;
  input [4:0]\axi_rdata_reg[0]_0 ;
  input [0:0]p_1_in_13;
  input [0:0]\axi_rdata_reg[0]_1 ;
  input [0:0]p_2_in;
  input \line_cnt_reg[15]_0 ;
  input \line_cnt_reg[10] ;
  input \line_cnt_reg[5] ;
  input [3:0]dphy_data_p;
  input [3:0]dphy_data_n;
  input dphy_clk_p;
  input dphy_clk_n;

  wire [0:0]D;
  wire [0:0]E;
  wire [11:0]Q;
  wire align_flag_i_1_n_0;
  wire [0:0]\axi_araddr_reg[5] ;
  wire \axi_rdata_reg[0] ;
  wire [4:0]\axi_rdata_reg[0]_0 ;
  wire [0:0]\axi_rdata_reg[0]_1 ;
  wire [3:0]byte_data_valid;
  wire clk_hs_byte;
  wire data_lp_n_0;
  wire data_lp_n_1;
  wire data_lp_n_2;
  wire data_lp_n_3;
  wire data_lp_p_0;
  wire data_lp_p_1;
  wire data_lp_p_2;
  wire data_lp_p_3;
  wire dphy_clk_n;
  wire dphy_clk_p;
  wire [3:0]dphy_data_n;
  wire [3:0]dphy_data_p;
  wire lane_byte_aligned_valid;
  wire \line_cnt_reg[10] ;
  wire \line_cnt_reg[11] ;
  wire [15:0]\line_cnt_reg[14] ;
  wire [15:0]\line_cnt_reg[15] ;
  wire \line_cnt_reg[15]_0 ;
  wire \line_cnt_reg[5] ;
  wire \line_cnt_reg[6] ;
  wire locked0;
  wire locked_reg;
  wire mipi_width0__0;
  wire module_reset;
  wire [0:0]p_1_in_13;
  wire [0:0]p_2_in;
  wire pix_cnt1;
  wire [4:0]\pix_cnt_reg[12] ;
  wire \pix_cnt_reg[13] ;
  wire \pix_cnt_reg[8] ;
  wire [39:0]pix_data;
  wire pix_data_enable;
  wire [7:0]pix_di;
  wire pix_valid;
  wire pre_active_video;
  wire pre_vsync;
  wire reg_active_video_reg;
  wire reg_ce_reg;
  wire [0:0]reg_ce_reg_0;
  wire [7:0]\reg_di_reg[7] ;
  wire rst0;
  wire rst00_out;
  wire rst01_out;
  wire rst02_out;
  wire s00_axi_aresetn;
  wire [0:0]\u_csi2_lanes_aligner/align_idx_reg[0]_0 ;
  wire [0:0]\u_csi2_lanes_aligner/align_idx_reg[1]_9 ;
  wire [0:0]\u_csi2_lanes_aligner/align_idx_reg[2]_10 ;
  wire [0:0]\u_csi2_lanes_aligner/align_idx_reg[3]_11 ;
  wire \u_csi2_lanes_aligner/lane_valid__2 ;
  wire [31:0]\u_csi2_lanes_aligner/p_1_in ;
  wire u_csi2_rx_to_pixel_n_0;
  wire u_dphy_rx_to_byte_n_41;
  wire u_dphy_rx_to_byte_n_42;
  wire u_dphy_rx_to_byte_n_43;
  wire u_dphy_rx_to_byte_n_45;
  wire u_dphy_rx_to_byte_n_46;
  wire u_dphy_rx_to_byte_n_47;
  wire u_dphy_rx_to_byte_n_48;
  wire u_dphy_rx_to_byte_n_49;
  wire u_dphy_rx_to_byte_n_54;
  wire u_dphy_rx_to_byte_n_55;
  wire u_dphy_rx_to_byte_n_56;
  wire [39:0]vid_data;

  LUT6 #(
    .INIT(64'hFFFF000080000000)) 
    align_flag_i_1
       (.I0(byte_data_valid[2]),
        .I1(byte_data_valid[3]),
        .I2(byte_data_valid[0]),
        .I3(byte_data_valid[1]),
        .I4(\u_csi2_lanes_aligner/lane_valid__2 ),
        .I5(lane_byte_aligned_valid),
        .O(align_flag_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    u_IDELAYE3_i_1
       (.I0(data_lp_p_0),
        .I1(data_lp_n_0),
        .O(rst0));
  LUT2 #(
    .INIT(4'hE)) 
    u_IDELAYE3_i_1__0
       (.I0(data_lp_p_1),
        .I1(data_lp_n_1),
        .O(rst00_out));
  LUT2 #(
    .INIT(4'hE)) 
    u_IDELAYE3_i_1__1
       (.I0(data_lp_p_2),
        .I1(data_lp_n_2),
        .O(rst01_out));
  LUT2 #(
    .INIT(4'hE)) 
    u_IDELAYE3_i_1__2
       (.I0(data_lp_p_3),
        .I1(data_lp_n_3),
        .O(rst02_out));
  design_1_mipi_rx_to_video_0_0__csi2_pixel_to_video u_csi2_pixel_to_video
       (.E(locked0),
        .Q(Q),
        .\axi_araddr_reg[5] (\axi_araddr_reg[5] ),
        .\axi_rdata_reg[0] (\axi_rdata_reg[0] ),
        .\axi_rdata_reg[0]_0 (\axi_rdata_reg[0]_0 ),
        .\axi_rdata_reg[0]_1 (\axi_rdata_reg[0]_1 ),
        .clk_hs_byte(clk_hs_byte),
        .\line_cnt_reg[10] (\line_cnt_reg[10] ),
        .\line_cnt_reg[11] (\line_cnt_reg[11] ),
        .\line_cnt_reg[14] (\line_cnt_reg[14] ),
        .\line_cnt_reg[15] (\line_cnt_reg[15] ),
        .\line_cnt_reg[15]_0 (\line_cnt_reg[15]_0 ),
        .\line_cnt_reg[5] (\line_cnt_reg[5] ),
        .\line_cnt_reg[6] (\line_cnt_reg[6] ),
        .locked_reg_0(locked_reg),
        .mipi_width0__0(mipi_width0__0),
        .p_1_in_13(p_1_in_13),
        .p_2_in(p_2_in),
        .\pix_cnt_reg[12] (\pix_cnt_reg[12] ),
        .\pix_cnt_reg[13] (\pix_cnt_reg[13] ),
        .\pix_cnt_reg[8] (\pix_cnt_reg[8] ),
        .pix_data_enable(pix_data_enable),
        .pix_valid(pix_valid),
        .pre_active_video(pre_active_video),
        .pre_active_video_reg(E),
        .pre_vsync(pre_vsync),
        .reg_active_video_reg_0(reg_active_video_reg),
        .reg_active_video_reg_1(pix_cnt1),
        .reg_ce_reg_0(reg_ce_reg),
        .reg_ce_reg_1(reg_ce_reg_0),
        .\reg_di_reg[7]_0 (\reg_di_reg[7] ),
        .\reg_pix_data_reg[39]_0 (u_csi2_rx_to_pixel_n_0),
        .\reg_pix_data_reg[39]_1 (pix_data),
        .\reg_pix_di_reg[7]_0 (pix_di),
        .reg_vsync_reg_0(D),
        .vid_data(vid_data));
  design_1_mipi_rx_to_video_0_0_csi2_rx_to_pixel u_csi2_rx_to_pixel
       (.D(u_dphy_rx_to_byte_n_48),
        .E(locked0),
        .Q(\u_csi2_lanes_aligner/align_idx_reg[3]_11 ),
        .align_flag_reg(align_flag_i_1_n_0),
        .\align_idx_reg[0][0] (\u_csi2_lanes_aligner/align_idx_reg[0]_0 ),
        .\align_idx_reg[0][0]_0 (u_dphy_rx_to_byte_n_56),
        .\align_idx_reg[1][0] (\u_csi2_lanes_aligner/align_idx_reg[1]_9 ),
        .\align_idx_reg[1][0]_0 (u_dphy_rx_to_byte_n_55),
        .\align_idx_reg[1][0]_1 (u_dphy_rx_to_byte_n_47),
        .\align_idx_reg[2][0] (\u_csi2_lanes_aligner/align_idx_reg[2]_10 ),
        .\align_idx_reg[2][0]_0 (u_dphy_rx_to_byte_n_54),
        .\align_idx_reg[2][0]_1 (u_dphy_rx_to_byte_n_46),
        .\align_idx_reg[3][0] (u_dphy_rx_to_byte_n_49),
        .\align_idx_reg[3][0]_0 (u_dphy_rx_to_byte_n_45),
        .clk_hs_byte(clk_hs_byte),
        .\lane_buf_reg[0][31] (\u_csi2_lanes_aligner/p_1_in ),
        .\lane_buf_reg[7][0] (u_dphy_rx_to_byte_n_41),
        .\lane_buf_reg[7][16] (u_dphy_rx_to_byte_n_43),
        .\lane_buf_reg[7][8] (u_dphy_rx_to_byte_n_42),
        .lane_byte_aligned_valid(lane_byte_aligned_valid),
        .lane_valid__2(\u_csi2_lanes_aligner/lane_valid__2 ),
        .locked_reg(locked_reg),
        .module_reset(module_reset),
        .module_reset_reg(u_csi2_rx_to_pixel_n_0),
        .pix_data_enable(pix_data_enable),
        .pix_valid(pix_valid),
        .\reg_pix_data_reg[39]_0 (pix_data),
        .\reg_pix_di_reg[7]_0 (pix_di),
        .s00_axi_aresetn(s00_axi_aresetn));
  design_1_mipi_rx_to_video_0_0_dphy_rx_to_byte u_dphy_rx_to_byte
       (.AR(rst0),
        .D(u_dphy_rx_to_byte_n_48),
        .Q(\u_csi2_lanes_aligner/align_idx_reg[3]_11 ),
        .align_flag_reg(u_dphy_rx_to_byte_n_49),
        .align_flag_reg_0(u_dphy_rx_to_byte_n_54),
        .align_flag_reg_1(u_dphy_rx_to_byte_n_55),
        .align_flag_reg_2(u_dphy_rx_to_byte_n_56),
        .\align_idx_reg[0][0] (\u_csi2_lanes_aligner/align_idx_reg[0]_0 ),
        .\align_idx_reg[1][0] (u_dphy_rx_to_byte_n_47),
        .\align_idx_reg[1][0]_0 (\u_csi2_lanes_aligner/align_idx_reg[1]_9 ),
        .\align_idx_reg[2][0] (u_dphy_rx_to_byte_n_46),
        .\align_idx_reg[2][0]_0 (\u_csi2_lanes_aligner/align_idx_reg[2]_10 ),
        .\align_idx_reg[3][0] (u_dphy_rx_to_byte_n_45),
        .byte_data_valid(byte_data_valid),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned_reg[7] (\u_csi2_lanes_aligner/p_1_in ),
        .data_byte_valid_reg(u_dphy_rx_to_byte_n_41),
        .data_byte_valid_reg_0(u_dphy_rx_to_byte_n_42),
        .data_byte_valid_reg_1(u_dphy_rx_to_byte_n_43),
        .data_byte_valid_reg_2(rst00_out),
        .data_byte_valid_reg_3(rst01_out),
        .data_byte_valid_reg_4(rst02_out),
        .data_lp_n_0(data_lp_n_0),
        .data_lp_n_1(data_lp_n_1),
        .data_lp_n_2(data_lp_n_2),
        .data_lp_n_3(data_lp_n_3),
        .data_lp_p_0(data_lp_p_0),
        .data_lp_p_1(data_lp_p_1),
        .data_lp_p_2(data_lp_p_2),
        .data_lp_p_3(data_lp_p_3),
        .dphy_clk_n(dphy_clk_n),
        .dphy_clk_p(dphy_clk_p),
        .dphy_data_n(dphy_data_n),
        .dphy_data_p(dphy_data_p),
        .lane_byte_aligned_valid(lane_byte_aligned_valid),
        .lane_valid__2(\u_csi2_lanes_aligner/lane_valid__2 ));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "7" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* DATA_BITS = "10" *) 
(* DATA_DELAY_INSIDE = "1'b1" *) (* DATA_DELAY_NTAPS = "200" *) (* HS_SETTLE_DELAY = "20" *) 
(* LANES_NUM = "4" *) (* ORIG_REF_NAME = "mipi_rx_to_video_v1_0" *) 
module design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0
   (dphy_clk_p,
    dphy_clk_n,
    dphy_data_p,
    dphy_data_n,
    vid_clk,
    vid_ce,
    vid_vsync,
    vid_active_video,
    vid_data,
    vid_locked,
    irq,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input dphy_clk_p;
  input dphy_clk_n;
  input [3:0]dphy_data_p;
  input [3:0]dphy_data_n;
  output vid_clk;
  output vid_ce;
  output vid_vsync;
  output vid_active_video;
  output [39:0]vid_data;
  output vid_locked;
  output irq;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [6:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [6:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;

  wire \<const0> ;
  wire dphy_clk_n;
  wire dphy_clk_p;
  wire [3:0]dphy_data_n;
  wire [3:0]dphy_data_p;
  wire irq;
  wire s00_axi_aclk;
  wire [6:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [6:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire vid_active_video;
  wire vid_ce;
  wire vid_clk;
  wire [39:0]vid_data;
  wire vid_locked;
  wire vid_vsync;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0_S00_AXI mipi_rx_to_video_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .clk_byte(vid_clk),
        .dphy_clk_n(dphy_clk_n),
        .dphy_clk_p(dphy_clk_p),
        .dphy_data_n(dphy_data_n),
        .dphy_data_p(dphy_data_p),
        .irq(irq),
        .reg_vsync_reg(vid_vsync),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[6:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[6:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[1:0]),
        .s00_axi_wvalid(s00_axi_wvalid),
        .vid_active_video(vid_active_video),
        .vid_ce(vid_ce),
        .vid_data(vid_data),
        .vid_locked(vid_locked));
endmodule

(* ORIG_REF_NAME = "mipi_rx_to_video_v1_0_S00_AXI" *) 
module design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0_S00_AXI
   (clk_byte,
    vid_locked,
    vid_ce,
    reg_vsync_reg,
    vid_active_video,
    vid_data,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    irq,
    s00_axi_rvalid,
    s00_axi_bvalid,
    dphy_data_p,
    dphy_data_n,
    dphy_clk_p,
    dphy_clk_n,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output clk_byte;
  output vid_locked;
  output vid_ce;
  output reg_vsync_reg;
  output vid_active_video;
  output [39:0]vid_data;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output irq;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [3:0]dphy_data_p;
  input [3:0]dphy_data_n;
  input dphy_clk_p;
  input dphy_clk_n;
  input s00_axi_aclk;
  input [4:0]s00_axi_awaddr;
  input [1:0]s00_axi_wdata;
  input [4:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire \aclk_vsync_reg_n_0_[0] ;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [6:2]axi_araddr;
  wire axi_arready0;
  wire \axi_awaddr_reg_n_0_[6] ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_1_n_0 ;
  wire \axi_rdata[17]_i_1_n_0 ;
  wire \axi_rdata[18]_i_1_n_0 ;
  wire \axi_rdata[19]_i_1_n_0 ;
  wire \axi_rdata[1]_i_1_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_1_n_0 ;
  wire \axi_rdata[21]_i_1_n_0 ;
  wire \axi_rdata[22]_i_1_n_0 ;
  wire \axi_rdata[23]_i_1_n_0 ;
  wire \axi_rdata[24]_i_1_n_0 ;
  wire \axi_rdata[25]_i_1_n_0 ;
  wire \axi_rdata[26]_i_1_n_0 ;
  wire \axi_rdata[27]_i_1_n_0 ;
  wire \axi_rdata[28]_i_1_n_0 ;
  wire \axi_rdata[29]_i_1_n_0 ;
  wire \axi_rdata[2]_i_1_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[3]_i_1_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_1_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_1_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_1_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_1_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_1_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire clk_byte;
  wire dphy_clk_n;
  wire dphy_clk_p;
  wire [3:0]dphy_data_n;
  wire [3:0]dphy_data_p;
  wire int_frame_done_i_1_n_0;
  wire int_frame_start;
  wire int_frame_start_i_1_n_0;
  wire int_mask_frame_start;
  wire irq;
  wire \line_cnt[10]_i_2_n_0 ;
  wire \line_cnt[14]_i_2_n_0 ;
  wire \line_cnt[15]_i_3_n_0 ;
  wire \line_cnt[5]_i_2_n_0 ;
  wire \line_cnt[9]_i_2_n_0 ;
  wire [15:0]line_cnt_reg;
  wire [7:0]mipi_di;
  wire \mipi_frame_cnt[0]_i_2_n_0 ;
  wire [31:0]mipi_frame_cnt_reg;
  wire \mipi_frame_cnt_reg[0]_i_1_n_0 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_1 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_10 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_11 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_12 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_13 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_14 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_15 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_2 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_3 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_4 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_5 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_6 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_7 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_8 ;
  wire \mipi_frame_cnt_reg[0]_i_1_n_9 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_0 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_1 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_10 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_11 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_12 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_13 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_14 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_15 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_2 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_3 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_4 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_5 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_6 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_7 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_8 ;
  wire \mipi_frame_cnt_reg[16]_i_1_n_9 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_1 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_10 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_11 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_12 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_13 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_14 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_15 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_2 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_3 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_4 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_5 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_6 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_7 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_8 ;
  wire \mipi_frame_cnt_reg[24]_i_1_n_9 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_0 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_1 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_10 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_11 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_12 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_13 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_14 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_15 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_2 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_3 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_4 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_5 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_6 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_7 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_8 ;
  wire \mipi_frame_cnt_reg[8]_i_1_n_9 ;
  wire [15:0]mipi_height;
  wire mipi_rx_to_video_inst_n_27;
  wire mipi_rx_to_video_inst_n_29;
  wire mipi_rx_to_video_inst_n_30;
  wire [15:2]mipi_width;
  wire mipi_width0__0;
  wire module_reset;
  wire module_reset_i_1_n_0;
  wire module_reset_i_2_n_0;
  wire [13:0]p_0_in;
  wire p_0_in0;
  wire p_0_in7_in;
  wire [2:0]p_0_in_12;
  wire [15:0]p_0_in__0;
  wire p_1_in6_in;
  wire [1:0]p_1_in_13;
  wire [1:0]p_2_in;
  wire pix_cnt1;
  wire \pix_cnt[10]_i_2_n_0 ;
  wire \pix_cnt[13]_i_3_n_0 ;
  wire \pix_cnt[5]_i_2_n_0 ;
  wire \pix_cnt[9]_i_2_n_0 ;
  wire [13:0]pix_cnt_reg;
  wire pre_active_video;
  wire pre_vsync;
  wire [7:0]reg_di;
  wire reg_vsync_reg;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [1:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire slv_reg_rden__0;
  wire slv_reg_wren__2;
  wire vid_active_video;
  wire vid_ce;
  wire [39:0]vid_data;
  wire vid_locked;
  wire [7:7]\NLW_mipi_frame_cnt_reg[24]_i_1_CO_UNCONNECTED ;

  FDRE \aclk_vsync_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_vsync_reg),
        .Q(\aclk_vsync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \aclk_vsync_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\aclk_vsync_reg_n_0_[0] ),
        .Q(p_1_in6_in),
        .R(1'b0));
  FDRE \aclk_vsync_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in6_in),
        .Q(p_0_in7_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(axi_araddr[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(axi_araddr[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[4]),
        .Q(axi_araddr[6]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in_12[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in_12[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in_12[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in0),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[4]),
        .Q(\axi_awaddr_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hF000CCAA)) 
    \axi_rdata[0]_i_3 
       (.I0(module_reset),
        .I1(mipi_height[0]),
        .I2(mipi_frame_cnt_reg[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA828A02088088000)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(mipi_frame_cnt_reg[10]),
        .I4(mipi_width[10]),
        .I5(mipi_height[10]),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA828A02088088000)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(mipi_frame_cnt_reg[11]),
        .I4(mipi_width[11]),
        .I5(mipi_height[11]),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA828A02088088000)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(mipi_frame_cnt_reg[12]),
        .I4(mipi_width[12]),
        .I5(mipi_height[12]),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA828A02088088000)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(mipi_frame_cnt_reg[13]),
        .I4(mipi_width[13]),
        .I5(mipi_height[13]),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA828A02088088000)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(mipi_frame_cnt_reg[14]),
        .I4(mipi_width[14]),
        .I5(mipi_height[14]),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA828A02088088000)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(mipi_frame_cnt_reg[15]),
        .I4(mipi_width[15]),
        .I5(mipi_height[15]),
        .O(\axi_rdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \axi_rdata[15]_i_2 
       (.I0(axi_araddr[5]),
        .I1(axi_araddr[6]),
        .I2(axi_araddr[4]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[16]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[16]),
        .O(\axi_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[17]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[17]),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[18]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[18]),
        .O(\axi_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[19]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[19]),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .O(\axi_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD591C48000000000)) 
    \axi_rdata[1]_i_2 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(p_1_in_13[1]),
        .I3(p_2_in[1]),
        .I4(mipi_di[1]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008C80)) 
    \axi_rdata[1]_i_3 
       (.I0(mipi_frame_cnt_reg[1]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(mipi_height[1]),
        .I4(axi_araddr[4]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[20]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[20]),
        .O(\axi_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[21]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[21]),
        .O(\axi_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[22]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[22]),
        .O(\axi_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[23]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[23]),
        .O(\axi_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[24]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[24]),
        .O(\axi_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[25]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[25]),
        .O(\axi_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[26]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[26]),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[27]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[27]),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[28]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[28]),
        .O(\axi_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[29]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[29]),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \axi_rdata[2]_i_1 
       (.I0(mipi_di[2]),
        .I1(\axi_rdata[7]_i_2_n_0 ),
        .I2(\axi_rdata[2]_i_2_n_0 ),
        .I3(axi_araddr[5]),
        .I4(axi_araddr[6]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[2]_i_2 
       (.I0(mipi_height[2]),
        .I1(mipi_width[2]),
        .I2(mipi_frame_cnt_reg[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[30]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[30]),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[6]),
        .I4(axi_araddr[4]),
        .I5(mipi_frame_cnt_reg[31]),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \axi_rdata[3]_i_1 
       (.I0(mipi_di[3]),
        .I1(\axi_rdata[7]_i_2_n_0 ),
        .I2(\axi_rdata[3]_i_2_n_0 ),
        .I3(axi_araddr[5]),
        .I4(axi_araddr[6]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[3]_i_2 
       (.I0(mipi_height[3]),
        .I1(mipi_width[3]),
        .I2(mipi_frame_cnt_reg[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \axi_rdata[4]_i_1 
       (.I0(mipi_di[4]),
        .I1(\axi_rdata[7]_i_2_n_0 ),
        .I2(\axi_rdata[4]_i_2_n_0 ),
        .I3(axi_araddr[5]),
        .I4(axi_araddr[6]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[4]_i_2 
       (.I0(mipi_height[4]),
        .I1(mipi_width[4]),
        .I2(mipi_frame_cnt_reg[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \axi_rdata[5]_i_1 
       (.I0(mipi_di[5]),
        .I1(\axi_rdata[7]_i_2_n_0 ),
        .I2(\axi_rdata[5]_i_2_n_0 ),
        .I3(axi_araddr[5]),
        .I4(axi_araddr[6]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[5]_i_2 
       (.I0(mipi_height[5]),
        .I1(mipi_width[5]),
        .I2(mipi_frame_cnt_reg[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \axi_rdata[6]_i_1 
       (.I0(mipi_di[6]),
        .I1(\axi_rdata[7]_i_2_n_0 ),
        .I2(\axi_rdata[6]_i_2_n_0 ),
        .I3(axi_araddr[5]),
        .I4(axi_araddr[6]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[6]_i_2 
       (.I0(mipi_height[6]),
        .I1(mipi_width[6]),
        .I2(mipi_frame_cnt_reg[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \axi_rdata[7]_i_1 
       (.I0(mipi_di[7]),
        .I1(\axi_rdata[7]_i_2_n_0 ),
        .I2(\axi_rdata[7]_i_3_n_0 ),
        .I3(axi_araddr[5]),
        .I4(axi_araddr[6]),
        .I5(axi_araddr[4]),
        .O(\axi_rdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[7]_i_2 
       (.I0(axi_araddr[6]),
        .I1(axi_araddr[5]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[7]_i_3 
       (.I0(mipi_height[7]),
        .I1(mipi_width[7]),
        .I2(mipi_frame_cnt_reg[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA828A02088088000)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(mipi_frame_cnt_reg[8]),
        .I4(mipi_width[8]),
        .I5(mipi_height[8]),
        .O(\axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA828A02088088000)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(mipi_frame_cnt_reg[9]),
        .I4(mipi_width[9]),
        .I5(mipi_height[9]),
        .O(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(mipi_rx_to_video_inst_n_29),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[2]_i_1_n_0 ),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[31]_i_1_n_0 ),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[3]_i_1_n_0 ),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[4]_i_1_n_0 ),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[5]_i_1_n_0 ),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[6]_i_1_n_0 ),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[7]_i_1_n_0 ),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[8]_i_1_n_0 ),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT4 #(
    .INIT(16'h7530)) 
    int_frame_done_i_1
       (.I0(int_frame_start),
        .I1(p_0_in7_in),
        .I2(p_1_in6_in),
        .I3(p_2_in[1]),
        .O(int_frame_done_i_1_n_0));
  FDRE int_frame_done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_frame_done_i_1_n_0),
        .Q(p_2_in[1]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT4 #(
    .INIT(16'h7530)) 
    int_frame_start_i_1
       (.I0(int_frame_start),
        .I1(p_1_in6_in),
        .I2(p_0_in7_in),
        .I3(p_2_in[0]),
        .O(int_frame_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    int_frame_start_i_2
       (.I0(\axi_awaddr_reg_n_0_[6] ),
        .I1(p_0_in0),
        .I2(p_0_in_12[0]),
        .I3(p_0_in_12[2]),
        .I4(p_0_in_12[1]),
        .I5(slv_reg_wren__2),
        .O(int_frame_start));
  FDRE int_frame_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_frame_start_i_1_n_0),
        .Q(p_2_in[0]),
        .R(axi_awready_i_1_n_0));
  FDSE int_mask_frame_done_reg
       (.C(s00_axi_aclk),
        .CE(int_mask_frame_start),
        .D(s00_axi_wdata[1]),
        .Q(p_1_in_13[1]),
        .S(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    int_mask_frame_start_i_1
       (.I0(\axi_awaddr_reg_n_0_[6] ),
        .I1(p_0_in0),
        .I2(p_0_in_12[1]),
        .I3(p_0_in_12[0]),
        .I4(p_0_in_12[2]),
        .I5(slv_reg_wren__2),
        .O(int_mask_frame_start));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    int_mask_frame_start_i_2
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  FDSE int_mask_frame_start_reg
       (.C(s00_axi_aclk),
        .CE(int_mask_frame_start),
        .D(s00_axi_wdata[0]),
        .Q(p_1_in_13[0]),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    irq_INST_0
       (.I0(p_1_in_13[1]),
        .I1(p_2_in[1]),
        .I2(p_1_in_13[0]),
        .I3(p_2_in[0]),
        .O(irq));
  LUT5 #(
    .INIT(32'h80000000)) 
    \line_cnt[10]_i_2 
       (.I0(line_cnt_reg[9]),
        .I1(line_cnt_reg[7]),
        .I2(\line_cnt[9]_i_2_n_0 ),
        .I3(line_cnt_reg[6]),
        .I4(line_cnt_reg[8]),
        .O(\line_cnt[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \line_cnt[14]_i_2 
       (.I0(line_cnt_reg[10]),
        .I1(line_cnt_reg[8]),
        .I2(line_cnt_reg[6]),
        .I3(\line_cnt[9]_i_2_n_0 ),
        .I4(line_cnt_reg[7]),
        .I5(line_cnt_reg[9]),
        .O(\line_cnt[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \line_cnt[15]_i_3 
       (.I0(line_cnt_reg[13]),
        .I1(line_cnt_reg[11]),
        .I2(\line_cnt[14]_i_2_n_0 ),
        .I3(line_cnt_reg[12]),
        .O(\line_cnt[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \line_cnt[5]_i_2 
       (.I0(line_cnt_reg[4]),
        .I1(line_cnt_reg[2]),
        .I2(line_cnt_reg[0]),
        .I3(line_cnt_reg[1]),
        .I4(line_cnt_reg[3]),
        .O(\line_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \line_cnt[9]_i_2 
       (.I0(line_cnt_reg[5]),
        .I1(line_cnt_reg[3]),
        .I2(line_cnt_reg[1]),
        .I3(line_cnt_reg[0]),
        .I4(line_cnt_reg[2]),
        .I5(line_cnt_reg[4]),
        .O(\line_cnt[9]_i_2_n_0 ));
  FDCE \line_cnt_reg[0] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[0]),
        .Q(line_cnt_reg[0]));
  FDCE \line_cnt_reg[10] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[10]),
        .Q(line_cnt_reg[10]));
  FDCE \line_cnt_reg[11] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[11]),
        .Q(line_cnt_reg[11]));
  FDCE \line_cnt_reg[12] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[12]),
        .Q(line_cnt_reg[12]));
  FDCE \line_cnt_reg[13] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[13]),
        .Q(line_cnt_reg[13]));
  FDCE \line_cnt_reg[14] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[14]),
        .Q(line_cnt_reg[14]));
  FDCE \line_cnt_reg[15] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[15]),
        .Q(line_cnt_reg[15]));
  FDCE \line_cnt_reg[1] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[1]),
        .Q(line_cnt_reg[1]));
  FDCE \line_cnt_reg[2] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[2]),
        .Q(line_cnt_reg[2]));
  FDCE \line_cnt_reg[3] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[3]),
        .Q(line_cnt_reg[3]));
  FDCE \line_cnt_reg[4] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[4]),
        .Q(line_cnt_reg[4]));
  FDCE \line_cnt_reg[5] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[5]),
        .Q(line_cnt_reg[5]));
  FDCE \line_cnt_reg[6] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[6]),
        .Q(line_cnt_reg[6]));
  FDCE \line_cnt_reg[7] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[7]),
        .Q(line_cnt_reg[7]));
  FDCE \line_cnt_reg[8] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[8]),
        .Q(line_cnt_reg[8]));
  FDCE \line_cnt_reg[9] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_27),
        .CLR(module_reset),
        .D(p_0_in__0[9]),
        .Q(line_cnt_reg[9]));
  FDCE \mipi_di_reg[0] 
       (.C(clk_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(reg_di[0]),
        .Q(mipi_di[0]));
  FDCE \mipi_di_reg[1] 
       (.C(clk_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(reg_di[1]),
        .Q(mipi_di[1]));
  FDCE \mipi_di_reg[2] 
       (.C(clk_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(reg_di[2]),
        .Q(mipi_di[2]));
  FDCE \mipi_di_reg[3] 
       (.C(clk_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(reg_di[3]),
        .Q(mipi_di[3]));
  FDCE \mipi_di_reg[4] 
       (.C(clk_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(reg_di[4]),
        .Q(mipi_di[4]));
  FDCE \mipi_di_reg[5] 
       (.C(clk_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(reg_di[5]),
        .Q(mipi_di[5]));
  FDCE \mipi_di_reg[6] 
       (.C(clk_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(reg_di[6]),
        .Q(mipi_di[6]));
  FDCE \mipi_di_reg[7] 
       (.C(clk_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(reg_di[7]),
        .Q(mipi_di[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \mipi_frame_cnt[0]_i_2 
       (.I0(mipi_frame_cnt_reg[0]),
        .O(\mipi_frame_cnt[0]_i_2_n_0 ));
  FDCE \mipi_frame_cnt_reg[0] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_15 ),
        .Q(mipi_frame_cnt_reg[0]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \mipi_frame_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\mipi_frame_cnt_reg[0]_i_1_n_0 ,\mipi_frame_cnt_reg[0]_i_1_n_1 ,\mipi_frame_cnt_reg[0]_i_1_n_2 ,\mipi_frame_cnt_reg[0]_i_1_n_3 ,\mipi_frame_cnt_reg[0]_i_1_n_4 ,\mipi_frame_cnt_reg[0]_i_1_n_5 ,\mipi_frame_cnt_reg[0]_i_1_n_6 ,\mipi_frame_cnt_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\mipi_frame_cnt_reg[0]_i_1_n_8 ,\mipi_frame_cnt_reg[0]_i_1_n_9 ,\mipi_frame_cnt_reg[0]_i_1_n_10 ,\mipi_frame_cnt_reg[0]_i_1_n_11 ,\mipi_frame_cnt_reg[0]_i_1_n_12 ,\mipi_frame_cnt_reg[0]_i_1_n_13 ,\mipi_frame_cnt_reg[0]_i_1_n_14 ,\mipi_frame_cnt_reg[0]_i_1_n_15 }),
        .S({mipi_frame_cnt_reg[7:1],\mipi_frame_cnt[0]_i_2_n_0 }));
  FDCE \mipi_frame_cnt_reg[10] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_13 ),
        .Q(mipi_frame_cnt_reg[10]));
  FDCE \mipi_frame_cnt_reg[11] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_12 ),
        .Q(mipi_frame_cnt_reg[11]));
  FDCE \mipi_frame_cnt_reg[12] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_11 ),
        .Q(mipi_frame_cnt_reg[12]));
  FDCE \mipi_frame_cnt_reg[13] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_10 ),
        .Q(mipi_frame_cnt_reg[13]));
  FDCE \mipi_frame_cnt_reg[14] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_9 ),
        .Q(mipi_frame_cnt_reg[14]));
  FDCE \mipi_frame_cnt_reg[15] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_8 ),
        .Q(mipi_frame_cnt_reg[15]));
  FDCE \mipi_frame_cnt_reg[16] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_15 ),
        .Q(mipi_frame_cnt_reg[16]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \mipi_frame_cnt_reg[16]_i_1 
       (.CI(\mipi_frame_cnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mipi_frame_cnt_reg[16]_i_1_n_0 ,\mipi_frame_cnt_reg[16]_i_1_n_1 ,\mipi_frame_cnt_reg[16]_i_1_n_2 ,\mipi_frame_cnt_reg[16]_i_1_n_3 ,\mipi_frame_cnt_reg[16]_i_1_n_4 ,\mipi_frame_cnt_reg[16]_i_1_n_5 ,\mipi_frame_cnt_reg[16]_i_1_n_6 ,\mipi_frame_cnt_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\mipi_frame_cnt_reg[16]_i_1_n_8 ,\mipi_frame_cnt_reg[16]_i_1_n_9 ,\mipi_frame_cnt_reg[16]_i_1_n_10 ,\mipi_frame_cnt_reg[16]_i_1_n_11 ,\mipi_frame_cnt_reg[16]_i_1_n_12 ,\mipi_frame_cnt_reg[16]_i_1_n_13 ,\mipi_frame_cnt_reg[16]_i_1_n_14 ,\mipi_frame_cnt_reg[16]_i_1_n_15 }),
        .S(mipi_frame_cnt_reg[23:16]));
  FDCE \mipi_frame_cnt_reg[17] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_14 ),
        .Q(mipi_frame_cnt_reg[17]));
  FDCE \mipi_frame_cnt_reg[18] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_13 ),
        .Q(mipi_frame_cnt_reg[18]));
  FDCE \mipi_frame_cnt_reg[19] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_12 ),
        .Q(mipi_frame_cnt_reg[19]));
  FDCE \mipi_frame_cnt_reg[1] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_14 ),
        .Q(mipi_frame_cnt_reg[1]));
  FDCE \mipi_frame_cnt_reg[20] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_11 ),
        .Q(mipi_frame_cnt_reg[20]));
  FDCE \mipi_frame_cnt_reg[21] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_10 ),
        .Q(mipi_frame_cnt_reg[21]));
  FDCE \mipi_frame_cnt_reg[22] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_9 ),
        .Q(mipi_frame_cnt_reg[22]));
  FDCE \mipi_frame_cnt_reg[23] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_8 ),
        .Q(mipi_frame_cnt_reg[23]));
  FDCE \mipi_frame_cnt_reg[24] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_15 ),
        .Q(mipi_frame_cnt_reg[24]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \mipi_frame_cnt_reg[24]_i_1 
       (.CI(\mipi_frame_cnt_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_mipi_frame_cnt_reg[24]_i_1_CO_UNCONNECTED [7],\mipi_frame_cnt_reg[24]_i_1_n_1 ,\mipi_frame_cnt_reg[24]_i_1_n_2 ,\mipi_frame_cnt_reg[24]_i_1_n_3 ,\mipi_frame_cnt_reg[24]_i_1_n_4 ,\mipi_frame_cnt_reg[24]_i_1_n_5 ,\mipi_frame_cnt_reg[24]_i_1_n_6 ,\mipi_frame_cnt_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\mipi_frame_cnt_reg[24]_i_1_n_8 ,\mipi_frame_cnt_reg[24]_i_1_n_9 ,\mipi_frame_cnt_reg[24]_i_1_n_10 ,\mipi_frame_cnt_reg[24]_i_1_n_11 ,\mipi_frame_cnt_reg[24]_i_1_n_12 ,\mipi_frame_cnt_reg[24]_i_1_n_13 ,\mipi_frame_cnt_reg[24]_i_1_n_14 ,\mipi_frame_cnt_reg[24]_i_1_n_15 }),
        .S(mipi_frame_cnt_reg[31:24]));
  FDCE \mipi_frame_cnt_reg[25] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_14 ),
        .Q(mipi_frame_cnt_reg[25]));
  FDCE \mipi_frame_cnt_reg[26] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_13 ),
        .Q(mipi_frame_cnt_reg[26]));
  FDCE \mipi_frame_cnt_reg[27] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_12 ),
        .Q(mipi_frame_cnt_reg[27]));
  FDCE \mipi_frame_cnt_reg[28] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_11 ),
        .Q(mipi_frame_cnt_reg[28]));
  FDCE \mipi_frame_cnt_reg[29] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_10 ),
        .Q(mipi_frame_cnt_reg[29]));
  FDCE \mipi_frame_cnt_reg[2] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_13 ),
        .Q(mipi_frame_cnt_reg[2]));
  FDCE \mipi_frame_cnt_reg[30] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_9 ),
        .Q(mipi_frame_cnt_reg[30]));
  FDCE \mipi_frame_cnt_reg[31] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_8 ),
        .Q(mipi_frame_cnt_reg[31]));
  FDCE \mipi_frame_cnt_reg[3] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_12 ),
        .Q(mipi_frame_cnt_reg[3]));
  FDCE \mipi_frame_cnt_reg[4] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_11 ),
        .Q(mipi_frame_cnt_reg[4]));
  FDCE \mipi_frame_cnt_reg[5] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_10 ),
        .Q(mipi_frame_cnt_reg[5]));
  FDCE \mipi_frame_cnt_reg[6] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_9 ),
        .Q(mipi_frame_cnt_reg[6]));
  FDCE \mipi_frame_cnt_reg[7] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_8 ),
        .Q(mipi_frame_cnt_reg[7]));
  FDCE \mipi_frame_cnt_reg[8] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_15 ),
        .Q(mipi_frame_cnt_reg[8]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \mipi_frame_cnt_reg[8]_i_1 
       (.CI(\mipi_frame_cnt_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mipi_frame_cnt_reg[8]_i_1_n_0 ,\mipi_frame_cnt_reg[8]_i_1_n_1 ,\mipi_frame_cnt_reg[8]_i_1_n_2 ,\mipi_frame_cnt_reg[8]_i_1_n_3 ,\mipi_frame_cnt_reg[8]_i_1_n_4 ,\mipi_frame_cnt_reg[8]_i_1_n_5 ,\mipi_frame_cnt_reg[8]_i_1_n_6 ,\mipi_frame_cnt_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\mipi_frame_cnt_reg[8]_i_1_n_8 ,\mipi_frame_cnt_reg[8]_i_1_n_9 ,\mipi_frame_cnt_reg[8]_i_1_n_10 ,\mipi_frame_cnt_reg[8]_i_1_n_11 ,\mipi_frame_cnt_reg[8]_i_1_n_12 ,\mipi_frame_cnt_reg[8]_i_1_n_13 ,\mipi_frame_cnt_reg[8]_i_1_n_14 ,\mipi_frame_cnt_reg[8]_i_1_n_15 }),
        .S(mipi_frame_cnt_reg[15:8]));
  FDCE \mipi_frame_cnt_reg[9] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_14 ),
        .Q(mipi_frame_cnt_reg[9]));
  FDCE \mipi_height_reg[0] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[0]),
        .Q(mipi_height[0]));
  FDCE \mipi_height_reg[10] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[10]),
        .Q(mipi_height[10]));
  FDCE \mipi_height_reg[11] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[11]),
        .Q(mipi_height[11]));
  FDCE \mipi_height_reg[12] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[12]),
        .Q(mipi_height[12]));
  FDCE \mipi_height_reg[13] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[13]),
        .Q(mipi_height[13]));
  FDCE \mipi_height_reg[14] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[14]),
        .Q(mipi_height[14]));
  FDCE \mipi_height_reg[15] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[15]),
        .Q(mipi_height[15]));
  FDCE \mipi_height_reg[1] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[1]),
        .Q(mipi_height[1]));
  FDCE \mipi_height_reg[2] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[2]),
        .Q(mipi_height[2]));
  FDCE \mipi_height_reg[3] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[3]),
        .Q(mipi_height[3]));
  FDCE \mipi_height_reg[4] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[4]),
        .Q(mipi_height[4]));
  FDCE \mipi_height_reg[5] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[5]),
        .Q(mipi_height[5]));
  FDCE \mipi_height_reg[6] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[6]),
        .Q(mipi_height[6]));
  FDCE \mipi_height_reg[7] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[7]),
        .Q(mipi_height[7]));
  FDCE \mipi_height_reg[8] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[8]),
        .Q(mipi_height[8]));
  FDCE \mipi_height_reg[9] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[9]),
        .Q(mipi_height[9]));
  design_1_mipi_rx_to_video_0_0_mipi_rx_to_video mipi_rx_to_video_inst
       (.D(reg_vsync_reg),
        .E(mipi_rx_to_video_inst_n_27),
        .Q({pix_cnt_reg[13:11],pix_cnt_reg[9:6],pix_cnt_reg[4:0]}),
        .\axi_araddr_reg[5] (mipi_rx_to_video_inst_n_29),
        .\axi_rdata_reg[0] (\axi_rdata[0]_i_3_n_0 ),
        .\axi_rdata_reg[0]_0 (axi_araddr),
        .\axi_rdata_reg[0]_1 (mipi_di[0]),
        .clk_hs_byte(clk_byte),
        .dphy_clk_n(dphy_clk_n),
        .dphy_clk_p(dphy_clk_p),
        .dphy_data_n(dphy_data_n),
        .dphy_data_p(dphy_data_p),
        .\line_cnt_reg[10] (\line_cnt[10]_i_2_n_0 ),
        .\line_cnt_reg[11] (\line_cnt[14]_i_2_n_0 ),
        .\line_cnt_reg[14] (p_0_in__0),
        .\line_cnt_reg[15] (line_cnt_reg),
        .\line_cnt_reg[15]_0 (\line_cnt[15]_i_3_n_0 ),
        .\line_cnt_reg[5] (\line_cnt[5]_i_2_n_0 ),
        .\line_cnt_reg[6] (\line_cnt[9]_i_2_n_0 ),
        .locked_reg(vid_locked),
        .mipi_width0__0(mipi_width0__0),
        .module_reset(module_reset),
        .p_1_in_13(p_1_in_13[0]),
        .p_2_in(p_2_in[0]),
        .pix_cnt1(pix_cnt1),
        .\pix_cnt_reg[12] ({p_0_in[13],p_0_in[9:8],p_0_in[4:3]}),
        .\pix_cnt_reg[13] (\pix_cnt[13]_i_3_n_0 ),
        .\pix_cnt_reg[8] (\pix_cnt[9]_i_2_n_0 ),
        .pre_active_video(pre_active_video),
        .pre_vsync(pre_vsync),
        .reg_active_video_reg(vid_active_video),
        .reg_ce_reg(vid_ce),
        .reg_ce_reg_0(mipi_rx_to_video_inst_n_30),
        .\reg_di_reg[7] (reg_di),
        .s00_axi_aresetn(s00_axi_aresetn),
        .vid_data(vid_data));
  FDCE \mipi_width_reg[10] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[8]),
        .Q(mipi_width[10]));
  FDCE \mipi_width_reg[11] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[9]),
        .Q(mipi_width[11]));
  FDCE \mipi_width_reg[12] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[10]),
        .Q(mipi_width[12]));
  FDCE \mipi_width_reg[13] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[11]),
        .Q(mipi_width[13]));
  FDCE \mipi_width_reg[14] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[12]),
        .Q(mipi_width[14]));
  FDCE \mipi_width_reg[15] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[13]),
        .Q(mipi_width[15]));
  FDCE \mipi_width_reg[2] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[0]),
        .Q(mipi_width[2]));
  FDCE \mipi_width_reg[3] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[1]),
        .Q(mipi_width[3]));
  FDCE \mipi_width_reg[4] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[2]),
        .Q(mipi_width[4]));
  FDCE \mipi_width_reg[5] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[3]),
        .Q(mipi_width[5]));
  FDCE \mipi_width_reg[6] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[4]),
        .Q(mipi_width[6]));
  FDCE \mipi_width_reg[7] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[5]),
        .Q(mipi_width[7]));
  FDCE \mipi_width_reg[8] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[6]),
        .Q(mipi_width[8]));
  FDCE \mipi_width_reg[9] 
       (.C(clk_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[7]),
        .Q(mipi_width[9]));
  LUT4 #(
    .INIT(16'hBF80)) 
    module_reset_i_1
       (.I0(s00_axi_wdata[0]),
        .I1(module_reset_i_2_n_0),
        .I2(slv_reg_wren__2),
        .I3(module_reset),
        .O(module_reset_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    module_reset_i_2
       (.I0(p_0_in_12[2]),
        .I1(p_0_in_12[0]),
        .I2(p_0_in_12[1]),
        .I3(p_0_in0),
        .I4(\axi_awaddr_reg_n_0_[6] ),
        .O(module_reset_i_2_n_0));
  FDSE module_reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(module_reset_i_1_n_0),
        .Q(module_reset),
        .S(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \pix_cnt[0]_i_1 
       (.I0(pre_active_video),
        .I1(pix_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \pix_cnt[10]_i_1 
       (.I0(\pix_cnt[10]_i_2_n_0 ),
        .I1(pre_active_video),
        .I2(pix_cnt_reg[10]),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \pix_cnt[10]_i_2 
       (.I0(pix_cnt_reg[9]),
        .I1(pix_cnt_reg[7]),
        .I2(\pix_cnt[9]_i_2_n_0 ),
        .I3(pix_cnt_reg[6]),
        .I4(pix_cnt_reg[8]),
        .O(\pix_cnt[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \pix_cnt[11]_i_1 
       (.I0(\pix_cnt[13]_i_3_n_0 ),
        .I1(pre_active_video),
        .I2(pix_cnt_reg[11]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \pix_cnt[12]_i_1 
       (.I0(pix_cnt_reg[11]),
        .I1(\pix_cnt[13]_i_3_n_0 ),
        .I2(pre_active_video),
        .I3(pix_cnt_reg[12]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pix_cnt[13]_i_3 
       (.I0(pix_cnt_reg[10]),
        .I1(pix_cnt_reg[8]),
        .I2(pix_cnt_reg[6]),
        .I3(\pix_cnt[9]_i_2_n_0 ),
        .I4(pix_cnt_reg[7]),
        .I5(pix_cnt_reg[9]),
        .O(\pix_cnt[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \pix_cnt[1]_i_1 
       (.I0(pre_active_video),
        .I1(pix_cnt_reg[0]),
        .I2(pix_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \pix_cnt[2]_i_1 
       (.I0(pre_active_video),
        .I1(pix_cnt_reg[0]),
        .I2(pix_cnt_reg[1]),
        .I3(pix_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \pix_cnt[5]_i_1 
       (.I0(\pix_cnt[5]_i_2_n_0 ),
        .I1(pre_active_video),
        .I2(pix_cnt_reg[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \pix_cnt[5]_i_2 
       (.I0(pix_cnt_reg[4]),
        .I1(pix_cnt_reg[2]),
        .I2(pix_cnt_reg[0]),
        .I3(pix_cnt_reg[1]),
        .I4(pix_cnt_reg[3]),
        .O(\pix_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \pix_cnt[6]_i_1 
       (.I0(\pix_cnt[9]_i_2_n_0 ),
        .I1(pre_active_video),
        .I2(pix_cnt_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \pix_cnt[7]_i_1 
       (.I0(pix_cnt_reg[6]),
        .I1(\pix_cnt[9]_i_2_n_0 ),
        .I2(pre_active_video),
        .I3(pix_cnt_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pix_cnt[9]_i_2 
       (.I0(pix_cnt_reg[5]),
        .I1(pix_cnt_reg[3]),
        .I2(pix_cnt_reg[1]),
        .I3(pix_cnt_reg[0]),
        .I4(pix_cnt_reg[2]),
        .I5(pix_cnt_reg[4]),
        .O(\pix_cnt[9]_i_2_n_0 ));
  FDCE \pix_cnt_reg[0] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[0]),
        .Q(pix_cnt_reg[0]));
  FDCE \pix_cnt_reg[10] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[10]),
        .Q(pix_cnt_reg[10]));
  FDCE \pix_cnt_reg[11] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[11]),
        .Q(pix_cnt_reg[11]));
  FDCE \pix_cnt_reg[12] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[12]),
        .Q(pix_cnt_reg[12]));
  FDCE \pix_cnt_reg[13] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[13]),
        .Q(pix_cnt_reg[13]));
  FDCE \pix_cnt_reg[1] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[1]),
        .Q(pix_cnt_reg[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[2]),
        .Q(pix_cnt_reg[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[3]),
        .Q(pix_cnt_reg[3]));
  FDCE \pix_cnt_reg[4] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[4]),
        .Q(pix_cnt_reg[4]));
  FDCE \pix_cnt_reg[5] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[5]),
        .Q(pix_cnt_reg[5]));
  FDCE \pix_cnt_reg[6] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[6]),
        .Q(pix_cnt_reg[6]));
  FDCE \pix_cnt_reg[7] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[7]),
        .Q(pix_cnt_reg[7]));
  FDCE \pix_cnt_reg[8] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[8]),
        .Q(pix_cnt_reg[8]));
  FDCE \pix_cnt_reg[9] 
       (.C(clk_byte),
        .CE(mipi_rx_to_video_inst_n_30),
        .CLR(module_reset),
        .D(p_0_in[9]),
        .Q(pix_cnt_reg[9]));
  FDRE pre_active_video_reg
       (.C(clk_byte),
        .CE(vid_ce),
        .D(vid_active_video),
        .Q(pre_active_video),
        .R(1'b0));
  FDRE pre_vsync_reg
       (.C(clk_byte),
        .CE(vid_ce),
        .D(reg_vsync_reg),
        .Q(pre_vsync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    slv_reg_rden
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden__0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
