//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Sat Dec 17 00:24:05 2022
//Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module camif_ias1_imp_1C8CI1
   (axi_arstn_wr,
    axi_ctrl_aclk,
    axi_ctrl_arstn,
    axi_mm_aclk,
    axi_mm_arstn,
    irq_mipi_rx,
    irq_wr,
    m_axi_mm_wr_araddr,
    m_axi_mm_wr_arburst,
    m_axi_mm_wr_arcache,
    m_axi_mm_wr_arlen,
    m_axi_mm_wr_arlock,
    m_axi_mm_wr_arprot,
    m_axi_mm_wr_arqos,
    m_axi_mm_wr_arready,
    m_axi_mm_wr_arsize,
    m_axi_mm_wr_arvalid,
    m_axi_mm_wr_awaddr,
    m_axi_mm_wr_awburst,
    m_axi_mm_wr_awcache,
    m_axi_mm_wr_awlen,
    m_axi_mm_wr_awlock,
    m_axi_mm_wr_awprot,
    m_axi_mm_wr_awqos,
    m_axi_mm_wr_awready,
    m_axi_mm_wr_awsize,
    m_axi_mm_wr_awvalid,
    m_axi_mm_wr_bready,
    m_axi_mm_wr_bresp,
    m_axi_mm_wr_bvalid,
    m_axi_mm_wr_rdata,
    m_axi_mm_wr_rlast,
    m_axi_mm_wr_rready,
    m_axi_mm_wr_rresp,
    m_axi_mm_wr_rvalid,
    m_axi_mm_wr_wdata,
    m_axi_mm_wr_wlast,
    m_axi_mm_wr_wready,
    m_axi_mm_wr_wstrb,
    m_axi_mm_wr_wvalid,
    mipi_rx_dphy_if_clk_n,
    mipi_rx_dphy_if_clk_p,
    mipi_rx_dphy_if_data_n,
    mipi_rx_dphy_if_data_p,
    s_axi_ctrl_mipi_rx_araddr,
    s_axi_ctrl_mipi_rx_arprot,
    s_axi_ctrl_mipi_rx_arready,
    s_axi_ctrl_mipi_rx_arvalid,
    s_axi_ctrl_mipi_rx_awaddr,
    s_axi_ctrl_mipi_rx_awprot,
    s_axi_ctrl_mipi_rx_awready,
    s_axi_ctrl_mipi_rx_awvalid,
    s_axi_ctrl_mipi_rx_bready,
    s_axi_ctrl_mipi_rx_bresp,
    s_axi_ctrl_mipi_rx_bvalid,
    s_axi_ctrl_mipi_rx_rdata,
    s_axi_ctrl_mipi_rx_rready,
    s_axi_ctrl_mipi_rx_rresp,
    s_axi_ctrl_mipi_rx_rvalid,
    s_axi_ctrl_mipi_rx_wdata,
    s_axi_ctrl_mipi_rx_wready,
    s_axi_ctrl_mipi_rx_wstrb,
    s_axi_ctrl_mipi_rx_wvalid,
    s_axi_ctrl_wr_araddr,
    s_axi_ctrl_wr_arready,
    s_axi_ctrl_wr_arvalid,
    s_axi_ctrl_wr_awaddr,
    s_axi_ctrl_wr_awready,
    s_axi_ctrl_wr_awvalid,
    s_axi_ctrl_wr_bready,
    s_axi_ctrl_wr_bresp,
    s_axi_ctrl_wr_bvalid,
    s_axi_ctrl_wr_rdata,
    s_axi_ctrl_wr_rready,
    s_axi_ctrl_wr_rresp,
    s_axi_ctrl_wr_rvalid,
    s_axi_ctrl_wr_wdata,
    s_axi_ctrl_wr_wready,
    s_axi_ctrl_wr_wstrb,
    s_axi_ctrl_wr_wvalid);
  input axi_arstn_wr;
  input axi_ctrl_aclk;
  input axi_ctrl_arstn;
  input axi_mm_aclk;
  input axi_mm_arstn;
  output irq_mipi_rx;
  output irq_wr;
  output [31:0]m_axi_mm_wr_araddr;
  output [1:0]m_axi_mm_wr_arburst;
  output [3:0]m_axi_mm_wr_arcache;
  output [7:0]m_axi_mm_wr_arlen;
  output [1:0]m_axi_mm_wr_arlock;
  output [2:0]m_axi_mm_wr_arprot;
  output [3:0]m_axi_mm_wr_arqos;
  input m_axi_mm_wr_arready;
  output [2:0]m_axi_mm_wr_arsize;
  output m_axi_mm_wr_arvalid;
  output [31:0]m_axi_mm_wr_awaddr;
  output [1:0]m_axi_mm_wr_awburst;
  output [3:0]m_axi_mm_wr_awcache;
  output [7:0]m_axi_mm_wr_awlen;
  output [1:0]m_axi_mm_wr_awlock;
  output [2:0]m_axi_mm_wr_awprot;
  output [3:0]m_axi_mm_wr_awqos;
  input m_axi_mm_wr_awready;
  output [2:0]m_axi_mm_wr_awsize;
  output m_axi_mm_wr_awvalid;
  output m_axi_mm_wr_bready;
  input [1:0]m_axi_mm_wr_bresp;
  input m_axi_mm_wr_bvalid;
  input [255:0]m_axi_mm_wr_rdata;
  input m_axi_mm_wr_rlast;
  output m_axi_mm_wr_rready;
  input [1:0]m_axi_mm_wr_rresp;
  input m_axi_mm_wr_rvalid;
  output [255:0]m_axi_mm_wr_wdata;
  output m_axi_mm_wr_wlast;
  input m_axi_mm_wr_wready;
  output [31:0]m_axi_mm_wr_wstrb;
  output m_axi_mm_wr_wvalid;
  input mipi_rx_dphy_if_clk_n;
  input mipi_rx_dphy_if_clk_p;
  input [3:0]mipi_rx_dphy_if_data_n;
  input [3:0]mipi_rx_dphy_if_data_p;
  input [39:0]s_axi_ctrl_mipi_rx_araddr;
  input [2:0]s_axi_ctrl_mipi_rx_arprot;
  output [0:0]s_axi_ctrl_mipi_rx_arready;
  input [0:0]s_axi_ctrl_mipi_rx_arvalid;
  input [39:0]s_axi_ctrl_mipi_rx_awaddr;
  input [2:0]s_axi_ctrl_mipi_rx_awprot;
  output [0:0]s_axi_ctrl_mipi_rx_awready;
  input [0:0]s_axi_ctrl_mipi_rx_awvalid;
  input [0:0]s_axi_ctrl_mipi_rx_bready;
  output [1:0]s_axi_ctrl_mipi_rx_bresp;
  output [0:0]s_axi_ctrl_mipi_rx_bvalid;
  output [31:0]s_axi_ctrl_mipi_rx_rdata;
  input [0:0]s_axi_ctrl_mipi_rx_rready;
  output [1:0]s_axi_ctrl_mipi_rx_rresp;
  output [0:0]s_axi_ctrl_mipi_rx_rvalid;
  input [31:0]s_axi_ctrl_mipi_rx_wdata;
  output [0:0]s_axi_ctrl_mipi_rx_wready;
  input [3:0]s_axi_ctrl_mipi_rx_wstrb;
  input [0:0]s_axi_ctrl_mipi_rx_wvalid;
  input [39:0]s_axi_ctrl_wr_araddr;
  output [0:0]s_axi_ctrl_wr_arready;
  input [0:0]s_axi_ctrl_wr_arvalid;
  input [39:0]s_axi_ctrl_wr_awaddr;
  output [0:0]s_axi_ctrl_wr_awready;
  input [0:0]s_axi_ctrl_wr_awvalid;
  input [0:0]s_axi_ctrl_wr_bready;
  output [1:0]s_axi_ctrl_wr_bresp;
  output [0:0]s_axi_ctrl_wr_bvalid;
  output [31:0]s_axi_ctrl_wr_rdata;
  input [0:0]s_axi_ctrl_wr_rready;
  output [1:0]s_axi_ctrl_wr_rresp;
  output [0:0]s_axi_ctrl_wr_rvalid;
  input [31:0]s_axi_ctrl_wr_wdata;
  output [0:0]s_axi_ctrl_wr_wready;
  input [3:0]s_axi_ctrl_wr_wstrb;
  input [0:0]s_axi_ctrl_wr_wvalid;

  wire [39:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire [0:0]Conn1_ARVALID;
  wire [39:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire [0:0]Conn1_AWVALID;
  wire [0:0]Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire [0:0]Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire [0:0]Conn1_WVALID;
  wire aclk_0_1;
  wire aclk_0_2;
  wire aresetn_0_1;
  wire axi_arstn_wr_1;
  wire axi_ctrl_arstn_1;
  wire [119:0]axis_subset_converter_M_AXIS_TDATA;
  wire axis_subset_converter_M_AXIS_TLAST;
  wire axis_subset_converter_M_AXIS_TREADY;
  wire [0:0]axis_subset_converter_M_AXIS_TUSER;
  wire axis_subset_converter_M_AXIS_TVALID;
  wire mipi_rx_0_1_CLK_N;
  wire mipi_rx_0_1_CLK_P;
  wire [3:0]mipi_rx_0_1_DATA_N;
  wire [3:0]mipi_rx_0_1_DATA_P;
  wire mipi_rx_to_video_ias1_irq;
  wire mipi_rx_to_video_vid_ce;
  wire mipi_rx_to_video_vid_clk;
  wire mipi_rx_to_video_vid_locked;
  wire mipi_rx_to_video_video_ACTIVE_VIDEO;
  wire [39:0]mipi_rx_to_video_video_DATA;
  wire mipi_rx_to_video_video_VSYNC;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WVALID;
  wire [31:0]v_frm_wr_m_axi_mm_video_ARADDR;
  wire [1:0]v_frm_wr_m_axi_mm_video_ARBURST;
  wire [3:0]v_frm_wr_m_axi_mm_video_ARCACHE;
  wire [7:0]v_frm_wr_m_axi_mm_video_ARLEN;
  wire [1:0]v_frm_wr_m_axi_mm_video_ARLOCK;
  wire [2:0]v_frm_wr_m_axi_mm_video_ARPROT;
  wire [3:0]v_frm_wr_m_axi_mm_video_ARQOS;
  wire v_frm_wr_m_axi_mm_video_ARREADY;
  wire [2:0]v_frm_wr_m_axi_mm_video_ARSIZE;
  wire v_frm_wr_m_axi_mm_video_ARVALID;
  wire [31:0]v_frm_wr_m_axi_mm_video_AWADDR;
  wire [1:0]v_frm_wr_m_axi_mm_video_AWBURST;
  wire [3:0]v_frm_wr_m_axi_mm_video_AWCACHE;
  wire [7:0]v_frm_wr_m_axi_mm_video_AWLEN;
  wire [1:0]v_frm_wr_m_axi_mm_video_AWLOCK;
  wire [2:0]v_frm_wr_m_axi_mm_video_AWPROT;
  wire [3:0]v_frm_wr_m_axi_mm_video_AWQOS;
  wire v_frm_wr_m_axi_mm_video_AWREADY;
  wire [2:0]v_frm_wr_m_axi_mm_video_AWSIZE;
  wire v_frm_wr_m_axi_mm_video_AWVALID;
  wire v_frm_wr_m_axi_mm_video_BREADY;
  wire [1:0]v_frm_wr_m_axi_mm_video_BRESP;
  wire v_frm_wr_m_axi_mm_video_BVALID;
  wire [255:0]v_frm_wr_m_axi_mm_video_RDATA;
  wire v_frm_wr_m_axi_mm_video_RLAST;
  wire v_frm_wr_m_axi_mm_video_RREADY;
  wire [1:0]v_frm_wr_m_axi_mm_video_RRESP;
  wire v_frm_wr_m_axi_mm_video_RVALID;
  wire [255:0]v_frm_wr_m_axi_mm_video_WDATA;
  wire v_frm_wr_m_axi_mm_video_WLAST;
  wire v_frm_wr_m_axi_mm_video_WREADY;
  wire [31:0]v_frm_wr_m_axi_mm_video_WSTRB;
  wire v_frm_wr_m_axi_mm_video_WVALID;
  wire v_frmbuf_wr_0_interrupt;
  wire [39:0]video_to_axis_m_axis_TDATA;
  wire video_to_axis_m_axis_TLAST;
  wire video_to_axis_m_axis_TREADY;
  wire video_to_axis_m_axis_TUSER;
  wire video_to_axis_m_axis_TVALID;

  assign Conn1_ARADDR = s_axi_ctrl_mipi_rx_araddr[39:0];
  assign Conn1_ARPROT = s_axi_ctrl_mipi_rx_arprot[2:0];
  assign Conn1_ARVALID = s_axi_ctrl_mipi_rx_arvalid[0];
  assign Conn1_AWADDR = s_axi_ctrl_mipi_rx_awaddr[39:0];
  assign Conn1_AWPROT = s_axi_ctrl_mipi_rx_awprot[2:0];
  assign Conn1_AWVALID = s_axi_ctrl_mipi_rx_awvalid[0];
  assign Conn1_BREADY = s_axi_ctrl_mipi_rx_bready[0];
  assign Conn1_RREADY = s_axi_ctrl_mipi_rx_rready[0];
  assign Conn1_WDATA = s_axi_ctrl_mipi_rx_wdata[31:0];
  assign Conn1_WSTRB = s_axi_ctrl_mipi_rx_wstrb[3:0];
  assign Conn1_WVALID = s_axi_ctrl_mipi_rx_wvalid[0];
  assign aclk_0_1 = axi_ctrl_aclk;
  assign aclk_0_2 = axi_mm_aclk;
  assign aresetn_0_1 = axi_mm_arstn;
  assign axi_arstn_wr_1 = axi_arstn_wr;
  assign axi_ctrl_arstn_1 = axi_ctrl_arstn;
  assign irq_mipi_rx = mipi_rx_to_video_ias1_irq;
  assign irq_wr = v_frmbuf_wr_0_interrupt;
  assign m_axi_mm_wr_araddr[31:0] = v_frm_wr_m_axi_mm_video_ARADDR;
  assign m_axi_mm_wr_arburst[1:0] = v_frm_wr_m_axi_mm_video_ARBURST;
  assign m_axi_mm_wr_arcache[3:0] = v_frm_wr_m_axi_mm_video_ARCACHE;
  assign m_axi_mm_wr_arlen[7:0] = v_frm_wr_m_axi_mm_video_ARLEN;
  assign m_axi_mm_wr_arlock[1:0] = v_frm_wr_m_axi_mm_video_ARLOCK;
  assign m_axi_mm_wr_arprot[2:0] = v_frm_wr_m_axi_mm_video_ARPROT;
  assign m_axi_mm_wr_arqos[3:0] = v_frm_wr_m_axi_mm_video_ARQOS;
  assign m_axi_mm_wr_arsize[2:0] = v_frm_wr_m_axi_mm_video_ARSIZE;
  assign m_axi_mm_wr_arvalid = v_frm_wr_m_axi_mm_video_ARVALID;
  assign m_axi_mm_wr_awaddr[31:0] = v_frm_wr_m_axi_mm_video_AWADDR;
  assign m_axi_mm_wr_awburst[1:0] = v_frm_wr_m_axi_mm_video_AWBURST;
  assign m_axi_mm_wr_awcache[3:0] = v_frm_wr_m_axi_mm_video_AWCACHE;
  assign m_axi_mm_wr_awlen[7:0] = v_frm_wr_m_axi_mm_video_AWLEN;
  assign m_axi_mm_wr_awlock[1:0] = v_frm_wr_m_axi_mm_video_AWLOCK;
  assign m_axi_mm_wr_awprot[2:0] = v_frm_wr_m_axi_mm_video_AWPROT;
  assign m_axi_mm_wr_awqos[3:0] = v_frm_wr_m_axi_mm_video_AWQOS;
  assign m_axi_mm_wr_awsize[2:0] = v_frm_wr_m_axi_mm_video_AWSIZE;
  assign m_axi_mm_wr_awvalid = v_frm_wr_m_axi_mm_video_AWVALID;
  assign m_axi_mm_wr_bready = v_frm_wr_m_axi_mm_video_BREADY;
  assign m_axi_mm_wr_rready = v_frm_wr_m_axi_mm_video_RREADY;
  assign m_axi_mm_wr_wdata[255:0] = v_frm_wr_m_axi_mm_video_WDATA;
  assign m_axi_mm_wr_wlast = v_frm_wr_m_axi_mm_video_WLAST;
  assign m_axi_mm_wr_wstrb[31:0] = v_frm_wr_m_axi_mm_video_WSTRB;
  assign m_axi_mm_wr_wvalid = v_frm_wr_m_axi_mm_video_WVALID;
  assign mipi_rx_0_1_CLK_N = mipi_rx_dphy_if_clk_n;
  assign mipi_rx_0_1_CLK_P = mipi_rx_dphy_if_clk_p;
  assign mipi_rx_0_1_DATA_N = mipi_rx_dphy_if_data_n[3:0];
  assign mipi_rx_0_1_DATA_P = mipi_rx_dphy_if_data_p[3:0];
  assign ps8_0_axi_periph_M02_AXI_ARADDR = s_axi_ctrl_wr_araddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_ARVALID = s_axi_ctrl_wr_arvalid[0];
  assign ps8_0_axi_periph_M02_AXI_AWADDR = s_axi_ctrl_wr_awaddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_AWVALID = s_axi_ctrl_wr_awvalid[0];
  assign ps8_0_axi_periph_M02_AXI_BREADY = s_axi_ctrl_wr_bready[0];
  assign ps8_0_axi_periph_M02_AXI_RREADY = s_axi_ctrl_wr_rready[0];
  assign ps8_0_axi_periph_M02_AXI_WDATA = s_axi_ctrl_wr_wdata[31:0];
  assign ps8_0_axi_periph_M02_AXI_WSTRB = s_axi_ctrl_wr_wstrb[3:0];
  assign ps8_0_axi_periph_M02_AXI_WVALID = s_axi_ctrl_wr_wvalid[0];
  assign s_axi_ctrl_mipi_rx_arready[0] = Conn1_ARREADY;
  assign s_axi_ctrl_mipi_rx_awready[0] = Conn1_AWREADY;
  assign s_axi_ctrl_mipi_rx_bresp[1:0] = Conn1_BRESP;
  assign s_axi_ctrl_mipi_rx_bvalid[0] = Conn1_BVALID;
  assign s_axi_ctrl_mipi_rx_rdata[31:0] = Conn1_RDATA;
  assign s_axi_ctrl_mipi_rx_rresp[1:0] = Conn1_RRESP;
  assign s_axi_ctrl_mipi_rx_rvalid[0] = Conn1_RVALID;
  assign s_axi_ctrl_mipi_rx_wready[0] = Conn1_WREADY;
  assign s_axi_ctrl_wr_arready[0] = ps8_0_axi_periph_M02_AXI_ARREADY;
  assign s_axi_ctrl_wr_awready[0] = ps8_0_axi_periph_M02_AXI_AWREADY;
  assign s_axi_ctrl_wr_bresp[1:0] = ps8_0_axi_periph_M02_AXI_BRESP;
  assign s_axi_ctrl_wr_bvalid[0] = ps8_0_axi_periph_M02_AXI_BVALID;
  assign s_axi_ctrl_wr_rdata[31:0] = ps8_0_axi_periph_M02_AXI_RDATA;
  assign s_axi_ctrl_wr_rresp[1:0] = ps8_0_axi_periph_M02_AXI_RRESP;
  assign s_axi_ctrl_wr_rvalid[0] = ps8_0_axi_periph_M02_AXI_RVALID;
  assign s_axi_ctrl_wr_wready[0] = ps8_0_axi_periph_M02_AXI_WREADY;
  assign v_frm_wr_m_axi_mm_video_ARREADY = m_axi_mm_wr_arready;
  assign v_frm_wr_m_axi_mm_video_AWREADY = m_axi_mm_wr_awready;
  assign v_frm_wr_m_axi_mm_video_BRESP = m_axi_mm_wr_bresp[1:0];
  assign v_frm_wr_m_axi_mm_video_BVALID = m_axi_mm_wr_bvalid;
  assign v_frm_wr_m_axi_mm_video_RDATA = m_axi_mm_wr_rdata[255:0];
  assign v_frm_wr_m_axi_mm_video_RLAST = m_axi_mm_wr_rlast;
  assign v_frm_wr_m_axi_mm_video_RRESP = m_axi_mm_wr_rresp[1:0];
  assign v_frm_wr_m_axi_mm_video_RVALID = m_axi_mm_wr_rvalid;
  assign v_frm_wr_m_axi_mm_video_WREADY = m_axi_mm_wr_wready;
  design_1_axis_subset_converter_0_0 axis_subset_converter
       (.aclk(aclk_0_2),
        .aresetn(aresetn_0_1),
        .m_axis_tdata(axis_subset_converter_M_AXIS_TDATA),
        .m_axis_tlast(axis_subset_converter_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_M_AXIS_TREADY),
        .m_axis_tuser(axis_subset_converter_M_AXIS_TUSER),
        .m_axis_tvalid(axis_subset_converter_M_AXIS_TVALID),
        .s_axis_tdata(video_to_axis_m_axis_TDATA),
        .s_axis_tlast(video_to_axis_m_axis_TLAST),
        .s_axis_tready(video_to_axis_m_axis_TREADY),
        .s_axis_tuser(video_to_axis_m_axis_TUSER),
        .s_axis_tvalid(video_to_axis_m_axis_TVALID));
  design_1_mipi_rx_to_video_0_0 mipi_rx_to_video
       (.dphy_clk_n(mipi_rx_0_1_CLK_N),
        .dphy_clk_p(mipi_rx_0_1_CLK_P),
        .dphy_data_n(mipi_rx_0_1_DATA_N),
        .dphy_data_p(mipi_rx_0_1_DATA_P),
        .irq(mipi_rx_to_video_ias1_irq),
        .s00_axi_aclk(aclk_0_1),
        .s00_axi_araddr(Conn1_ARADDR[6:0]),
        .s00_axi_aresetn(axi_ctrl_arstn_1),
        .s00_axi_arprot(Conn1_ARPROT),
        .s00_axi_arready(Conn1_ARREADY),
        .s00_axi_arvalid(Conn1_ARVALID),
        .s00_axi_awaddr(Conn1_AWADDR[6:0]),
        .s00_axi_awprot(Conn1_AWPROT),
        .s00_axi_awready(Conn1_AWREADY),
        .s00_axi_awvalid(Conn1_AWVALID),
        .s00_axi_bready(Conn1_BREADY),
        .s00_axi_bresp(Conn1_BRESP),
        .s00_axi_bvalid(Conn1_BVALID),
        .s00_axi_rdata(Conn1_RDATA),
        .s00_axi_rready(Conn1_RREADY),
        .s00_axi_rresp(Conn1_RRESP),
        .s00_axi_rvalid(Conn1_RVALID),
        .s00_axi_wdata(Conn1_WDATA),
        .s00_axi_wready(Conn1_WREADY),
        .s00_axi_wstrb(Conn1_WSTRB),
        .s00_axi_wvalid(Conn1_WVALID),
        .vid_active_video(mipi_rx_to_video_video_ACTIVE_VIDEO),
        .vid_ce(mipi_rx_to_video_vid_ce),
        .vid_clk(mipi_rx_to_video_vid_clk),
        .vid_data(mipi_rx_to_video_video_DATA),
        .vid_locked(mipi_rx_to_video_vid_locked),
        .vid_vsync(mipi_rx_to_video_video_VSYNC));
  design_1_v_frmbuf_wr_0_0 v_frm_wr
       (.ap_clk(aclk_0_2),
        .ap_rst_n(axi_arstn_wr_1),
        .interrupt(v_frmbuf_wr_0_interrupt),
        .m_axi_mm_video_ARADDR(v_frm_wr_m_axi_mm_video_ARADDR),
        .m_axi_mm_video_ARBURST(v_frm_wr_m_axi_mm_video_ARBURST),
        .m_axi_mm_video_ARCACHE(v_frm_wr_m_axi_mm_video_ARCACHE),
        .m_axi_mm_video_ARLEN(v_frm_wr_m_axi_mm_video_ARLEN),
        .m_axi_mm_video_ARLOCK(v_frm_wr_m_axi_mm_video_ARLOCK),
        .m_axi_mm_video_ARPROT(v_frm_wr_m_axi_mm_video_ARPROT),
        .m_axi_mm_video_ARQOS(v_frm_wr_m_axi_mm_video_ARQOS),
        .m_axi_mm_video_ARREADY(v_frm_wr_m_axi_mm_video_ARREADY),
        .m_axi_mm_video_ARSIZE(v_frm_wr_m_axi_mm_video_ARSIZE),
        .m_axi_mm_video_ARVALID(v_frm_wr_m_axi_mm_video_ARVALID),
        .m_axi_mm_video_AWADDR(v_frm_wr_m_axi_mm_video_AWADDR),
        .m_axi_mm_video_AWBURST(v_frm_wr_m_axi_mm_video_AWBURST),
        .m_axi_mm_video_AWCACHE(v_frm_wr_m_axi_mm_video_AWCACHE),
        .m_axi_mm_video_AWLEN(v_frm_wr_m_axi_mm_video_AWLEN),
        .m_axi_mm_video_AWLOCK(v_frm_wr_m_axi_mm_video_AWLOCK),
        .m_axi_mm_video_AWPROT(v_frm_wr_m_axi_mm_video_AWPROT),
        .m_axi_mm_video_AWQOS(v_frm_wr_m_axi_mm_video_AWQOS),
        .m_axi_mm_video_AWREADY(v_frm_wr_m_axi_mm_video_AWREADY),
        .m_axi_mm_video_AWSIZE(v_frm_wr_m_axi_mm_video_AWSIZE),
        .m_axi_mm_video_AWVALID(v_frm_wr_m_axi_mm_video_AWVALID),
        .m_axi_mm_video_BREADY(v_frm_wr_m_axi_mm_video_BREADY),
        .m_axi_mm_video_BRESP(v_frm_wr_m_axi_mm_video_BRESP),
        .m_axi_mm_video_BVALID(v_frm_wr_m_axi_mm_video_BVALID),
        .m_axi_mm_video_RDATA(v_frm_wr_m_axi_mm_video_RDATA),
        .m_axi_mm_video_RLAST(v_frm_wr_m_axi_mm_video_RLAST),
        .m_axi_mm_video_RREADY(v_frm_wr_m_axi_mm_video_RREADY),
        .m_axi_mm_video_RRESP(v_frm_wr_m_axi_mm_video_RRESP),
        .m_axi_mm_video_RVALID(v_frm_wr_m_axi_mm_video_RVALID),
        .m_axi_mm_video_WDATA(v_frm_wr_m_axi_mm_video_WDATA),
        .m_axi_mm_video_WLAST(v_frm_wr_m_axi_mm_video_WLAST),
        .m_axi_mm_video_WREADY(v_frm_wr_m_axi_mm_video_WREADY),
        .m_axi_mm_video_WSTRB(v_frm_wr_m_axi_mm_video_WSTRB),
        .m_axi_mm_video_WVALID(v_frm_wr_m_axi_mm_video_WVALID),
        .s_axi_CTRL_ARADDR(ps8_0_axi_periph_M02_AXI_ARADDR[6:0]),
        .s_axi_CTRL_ARREADY(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(ps8_0_axi_periph_M02_AXI_AWADDR[6:0]),
        .s_axi_CTRL_AWREADY(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_CTRL_BREADY(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_CTRL_BRESP(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_CTRL_BVALID(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_CTRL_RDATA(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_CTRL_RREADY(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_CTRL_RRESP(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_CTRL_RVALID(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_CTRL_WDATA(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_CTRL_WREADY(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_CTRL_WSTRB(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_CTRL_WVALID(ps8_0_axi_periph_M02_AXI_WVALID),
        .s_axis_video_TDATA(axis_subset_converter_M_AXIS_TDATA),
        .s_axis_video_TDEST(1'b0),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_video_TLAST(axis_subset_converter_M_AXIS_TLAST),
        .s_axis_video_TREADY(axis_subset_converter_M_AXIS_TREADY),
        .s_axis_video_TSTRB({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_video_TUSER(axis_subset_converter_M_AXIS_TUSER),
        .s_axis_video_TVALID(axis_subset_converter_M_AXIS_TVALID));
  design_1_video_to_axis_0_0 video_to_axis
       (.aclk(aclk_0_2),
        .aresetn(aresetn_0_1),
        .m_axis_tdata(video_to_axis_m_axis_TDATA),
        .m_axis_tlast(video_to_axis_m_axis_TLAST),
        .m_axis_tready(video_to_axis_m_axis_TREADY),
        .m_axis_tuser(video_to_axis_m_axis_TUSER),
        .m_axis_tvalid(video_to_axis_m_axis_TVALID),
        .vid_active_video(mipi_rx_to_video_video_ACTIVE_VIDEO),
        .vid_ce(mipi_rx_to_video_vid_ce),
        .vid_clk(mipi_rx_to_video_vid_clk),
        .vid_data(mipi_rx_to_video_video_DATA),
        .vid_rstn(mipi_rx_to_video_vid_locked),
        .vid_vsync(mipi_rx_to_video_video_VSYNC));
endmodule

module camif_rpi_imp_1FWIAPX
   (axi_arstn_wr,
    axi_ctrl_aclk,
    axi_ctrl_arstn,
    axi_mm_aclk,
    axi_mm_arstn,
    irq_mipi_rx,
    irq_wr,
    m_axi_mm_wr_araddr,
    m_axi_mm_wr_arburst,
    m_axi_mm_wr_arcache,
    m_axi_mm_wr_arlen,
    m_axi_mm_wr_arlock,
    m_axi_mm_wr_arprot,
    m_axi_mm_wr_arqos,
    m_axi_mm_wr_arready,
    m_axi_mm_wr_arsize,
    m_axi_mm_wr_arvalid,
    m_axi_mm_wr_awaddr,
    m_axi_mm_wr_awburst,
    m_axi_mm_wr_awcache,
    m_axi_mm_wr_awlen,
    m_axi_mm_wr_awlock,
    m_axi_mm_wr_awprot,
    m_axi_mm_wr_awqos,
    m_axi_mm_wr_awready,
    m_axi_mm_wr_awsize,
    m_axi_mm_wr_awvalid,
    m_axi_mm_wr_bready,
    m_axi_mm_wr_bresp,
    m_axi_mm_wr_bvalid,
    m_axi_mm_wr_rdata,
    m_axi_mm_wr_rlast,
    m_axi_mm_wr_rready,
    m_axi_mm_wr_rresp,
    m_axi_mm_wr_rvalid,
    m_axi_mm_wr_wdata,
    m_axi_mm_wr_wlast,
    m_axi_mm_wr_wready,
    m_axi_mm_wr_wstrb,
    m_axi_mm_wr_wvalid,
    mipi_rx_dphy_if_clk_n,
    mipi_rx_dphy_if_clk_p,
    mipi_rx_dphy_if_data_n,
    mipi_rx_dphy_if_data_p,
    s_axi_ctrl_mipi_rx_araddr,
    s_axi_ctrl_mipi_rx_arprot,
    s_axi_ctrl_mipi_rx_arready,
    s_axi_ctrl_mipi_rx_arvalid,
    s_axi_ctrl_mipi_rx_awaddr,
    s_axi_ctrl_mipi_rx_awprot,
    s_axi_ctrl_mipi_rx_awready,
    s_axi_ctrl_mipi_rx_awvalid,
    s_axi_ctrl_mipi_rx_bready,
    s_axi_ctrl_mipi_rx_bresp,
    s_axi_ctrl_mipi_rx_bvalid,
    s_axi_ctrl_mipi_rx_rdata,
    s_axi_ctrl_mipi_rx_rready,
    s_axi_ctrl_mipi_rx_rresp,
    s_axi_ctrl_mipi_rx_rvalid,
    s_axi_ctrl_mipi_rx_wdata,
    s_axi_ctrl_mipi_rx_wready,
    s_axi_ctrl_mipi_rx_wstrb,
    s_axi_ctrl_mipi_rx_wvalid,
    s_axi_ctrl_wr_araddr,
    s_axi_ctrl_wr_arready,
    s_axi_ctrl_wr_arvalid,
    s_axi_ctrl_wr_awaddr,
    s_axi_ctrl_wr_awready,
    s_axi_ctrl_wr_awvalid,
    s_axi_ctrl_wr_bready,
    s_axi_ctrl_wr_bresp,
    s_axi_ctrl_wr_bvalid,
    s_axi_ctrl_wr_rdata,
    s_axi_ctrl_wr_rready,
    s_axi_ctrl_wr_rresp,
    s_axi_ctrl_wr_rvalid,
    s_axi_ctrl_wr_wdata,
    s_axi_ctrl_wr_wready,
    s_axi_ctrl_wr_wstrb,
    s_axi_ctrl_wr_wvalid);
  input axi_arstn_wr;
  input axi_ctrl_aclk;
  input axi_ctrl_arstn;
  input axi_mm_aclk;
  input axi_mm_arstn;
  output irq_mipi_rx;
  output irq_wr;
  output [31:0]m_axi_mm_wr_araddr;
  output [1:0]m_axi_mm_wr_arburst;
  output [3:0]m_axi_mm_wr_arcache;
  output [7:0]m_axi_mm_wr_arlen;
  output [1:0]m_axi_mm_wr_arlock;
  output [2:0]m_axi_mm_wr_arprot;
  output [3:0]m_axi_mm_wr_arqos;
  input m_axi_mm_wr_arready;
  output [2:0]m_axi_mm_wr_arsize;
  output m_axi_mm_wr_arvalid;
  output [31:0]m_axi_mm_wr_awaddr;
  output [1:0]m_axi_mm_wr_awburst;
  output [3:0]m_axi_mm_wr_awcache;
  output [7:0]m_axi_mm_wr_awlen;
  output [1:0]m_axi_mm_wr_awlock;
  output [2:0]m_axi_mm_wr_awprot;
  output [3:0]m_axi_mm_wr_awqos;
  input m_axi_mm_wr_awready;
  output [2:0]m_axi_mm_wr_awsize;
  output m_axi_mm_wr_awvalid;
  output m_axi_mm_wr_bready;
  input [1:0]m_axi_mm_wr_bresp;
  input m_axi_mm_wr_bvalid;
  input [127:0]m_axi_mm_wr_rdata;
  input m_axi_mm_wr_rlast;
  output m_axi_mm_wr_rready;
  input [1:0]m_axi_mm_wr_rresp;
  input m_axi_mm_wr_rvalid;
  output [127:0]m_axi_mm_wr_wdata;
  output m_axi_mm_wr_wlast;
  input m_axi_mm_wr_wready;
  output [15:0]m_axi_mm_wr_wstrb;
  output m_axi_mm_wr_wvalid;
  input mipi_rx_dphy_if_clk_n;
  input mipi_rx_dphy_if_clk_p;
  input [1:0]mipi_rx_dphy_if_data_n;
  input [1:0]mipi_rx_dphy_if_data_p;
  input [39:0]s_axi_ctrl_mipi_rx_araddr;
  input [2:0]s_axi_ctrl_mipi_rx_arprot;
  output [0:0]s_axi_ctrl_mipi_rx_arready;
  input [0:0]s_axi_ctrl_mipi_rx_arvalid;
  input [39:0]s_axi_ctrl_mipi_rx_awaddr;
  input [2:0]s_axi_ctrl_mipi_rx_awprot;
  output [0:0]s_axi_ctrl_mipi_rx_awready;
  input [0:0]s_axi_ctrl_mipi_rx_awvalid;
  input [0:0]s_axi_ctrl_mipi_rx_bready;
  output [1:0]s_axi_ctrl_mipi_rx_bresp;
  output [0:0]s_axi_ctrl_mipi_rx_bvalid;
  output [31:0]s_axi_ctrl_mipi_rx_rdata;
  input [0:0]s_axi_ctrl_mipi_rx_rready;
  output [1:0]s_axi_ctrl_mipi_rx_rresp;
  output [0:0]s_axi_ctrl_mipi_rx_rvalid;
  input [31:0]s_axi_ctrl_mipi_rx_wdata;
  output [0:0]s_axi_ctrl_mipi_rx_wready;
  input [3:0]s_axi_ctrl_mipi_rx_wstrb;
  input [0:0]s_axi_ctrl_mipi_rx_wvalid;
  input [6:0]s_axi_ctrl_wr_araddr;
  output s_axi_ctrl_wr_arready;
  input s_axi_ctrl_wr_arvalid;
  input [6:0]s_axi_ctrl_wr_awaddr;
  output s_axi_ctrl_wr_awready;
  input s_axi_ctrl_wr_awvalid;
  input s_axi_ctrl_wr_bready;
  output [1:0]s_axi_ctrl_wr_bresp;
  output s_axi_ctrl_wr_bvalid;
  output [31:0]s_axi_ctrl_wr_rdata;
  input s_axi_ctrl_wr_rready;
  output [1:0]s_axi_ctrl_wr_rresp;
  output s_axi_ctrl_wr_rvalid;
  input [31:0]s_axi_ctrl_wr_wdata;
  output s_axi_ctrl_wr_wready;
  input [3:0]s_axi_ctrl_wr_wstrb;
  input s_axi_ctrl_wr_wvalid;

  wire [39:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire [0:0]Conn1_ARVALID;
  wire [39:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire [0:0]Conn1_AWVALID;
  wire [0:0]Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire [0:0]Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire [0:0]Conn1_WVALID;
  wire aclk_0_1;
  wire aresetn_1;
  wire axi_arstn_wr_1;
  wire axi_ctrl_arstn_1;
  wire [63:0]axis_subset_converter_M_AXIS_TDATA;
  wire axis_subset_converter_M_AXIS_TLAST;
  wire axis_subset_converter_M_AXIS_TREADY;
  wire [0:0]axis_subset_converter_M_AXIS_TUSER;
  wire axis_subset_converter_M_AXIS_TVALID;
  wire mipi_rx_0_1_CLK_N;
  wire mipi_rx_0_1_CLK_P;
  wire [1:0]mipi_rx_0_1_DATA_N;
  wire [1:0]mipi_rx_0_1_DATA_P;
  wire mipi_rx_to_video_rpi_irq;
  wire mipi_rx_to_video_vid_ce;
  wire mipi_rx_to_video_vid_clk;
  wire mipi_rx_to_video_vid_locked;
  wire mipi_rx_to_video_video_ACTIVE_VIDEO;
  wire [19:0]mipi_rx_to_video_video_DATA;
  wire mipi_rx_to_video_video_VSYNC;
  wire [6:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [6:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire ps8_0_axi_periph_M02_AXI_AWVALID;
  wire ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire ps8_0_axi_periph_M02_AXI_WVALID;
  wire s00_axi_aclk_0_1;
  wire v_frmbuf_wr_0_interrupt;
  wire [31:0]v_frmbuf_wr_0_m_axi_mm_video_ARADDR;
  wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_ARBURST;
  wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_ARCACHE;
  wire [7:0]v_frmbuf_wr_0_m_axi_mm_video_ARLEN;
  wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_ARLOCK;
  wire [2:0]v_frmbuf_wr_0_m_axi_mm_video_ARPROT;
  wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_ARQOS;
  wire v_frmbuf_wr_0_m_axi_mm_video_ARREADY;
  wire [2:0]v_frmbuf_wr_0_m_axi_mm_video_ARSIZE;
  wire v_frmbuf_wr_0_m_axi_mm_video_ARVALID;
  wire [31:0]v_frmbuf_wr_0_m_axi_mm_video_AWADDR;
  wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_AWBURST;
  wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_AWCACHE;
  wire [7:0]v_frmbuf_wr_0_m_axi_mm_video_AWLEN;
  wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_AWLOCK;
  wire [2:0]v_frmbuf_wr_0_m_axi_mm_video_AWPROT;
  wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_AWQOS;
  wire v_frmbuf_wr_0_m_axi_mm_video_AWREADY;
  wire [2:0]v_frmbuf_wr_0_m_axi_mm_video_AWSIZE;
  wire v_frmbuf_wr_0_m_axi_mm_video_AWVALID;
  wire v_frmbuf_wr_0_m_axi_mm_video_BREADY;
  wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_BRESP;
  wire v_frmbuf_wr_0_m_axi_mm_video_BVALID;
  wire [127:0]v_frmbuf_wr_0_m_axi_mm_video_RDATA;
  wire v_frmbuf_wr_0_m_axi_mm_video_RLAST;
  wire v_frmbuf_wr_0_m_axi_mm_video_RREADY;
  wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_RRESP;
  wire v_frmbuf_wr_0_m_axi_mm_video_RVALID;
  wire [127:0]v_frmbuf_wr_0_m_axi_mm_video_WDATA;
  wire v_frmbuf_wr_0_m_axi_mm_video_WLAST;
  wire v_frmbuf_wr_0_m_axi_mm_video_WREADY;
  wire [15:0]v_frmbuf_wr_0_m_axi_mm_video_WSTRB;
  wire v_frmbuf_wr_0_m_axi_mm_video_WVALID;
  wire [19:0]video_to_axis_m_axis_TDATA;
  wire video_to_axis_m_axis_TLAST;
  wire video_to_axis_m_axis_TREADY;
  wire video_to_axis_m_axis_TUSER;
  wire video_to_axis_m_axis_TVALID;

  assign Conn1_ARADDR = s_axi_ctrl_mipi_rx_araddr[39:0];
  assign Conn1_ARPROT = s_axi_ctrl_mipi_rx_arprot[2:0];
  assign Conn1_ARVALID = s_axi_ctrl_mipi_rx_arvalid[0];
  assign Conn1_AWADDR = s_axi_ctrl_mipi_rx_awaddr[39:0];
  assign Conn1_AWPROT = s_axi_ctrl_mipi_rx_awprot[2:0];
  assign Conn1_AWVALID = s_axi_ctrl_mipi_rx_awvalid[0];
  assign Conn1_BREADY = s_axi_ctrl_mipi_rx_bready[0];
  assign Conn1_RREADY = s_axi_ctrl_mipi_rx_rready[0];
  assign Conn1_WDATA = s_axi_ctrl_mipi_rx_wdata[31:0];
  assign Conn1_WSTRB = s_axi_ctrl_mipi_rx_wstrb[3:0];
  assign Conn1_WVALID = s_axi_ctrl_mipi_rx_wvalid[0];
  assign aclk_0_1 = axi_mm_aclk;
  assign aresetn_1 = axi_mm_arstn;
  assign axi_arstn_wr_1 = axi_arstn_wr;
  assign axi_ctrl_arstn_1 = axi_ctrl_arstn;
  assign irq_mipi_rx = mipi_rx_to_video_rpi_irq;
  assign irq_wr = v_frmbuf_wr_0_interrupt;
  assign m_axi_mm_wr_araddr[31:0] = v_frmbuf_wr_0_m_axi_mm_video_ARADDR;
  assign m_axi_mm_wr_arburst[1:0] = v_frmbuf_wr_0_m_axi_mm_video_ARBURST;
  assign m_axi_mm_wr_arcache[3:0] = v_frmbuf_wr_0_m_axi_mm_video_ARCACHE;
  assign m_axi_mm_wr_arlen[7:0] = v_frmbuf_wr_0_m_axi_mm_video_ARLEN;
  assign m_axi_mm_wr_arlock[1:0] = v_frmbuf_wr_0_m_axi_mm_video_ARLOCK;
  assign m_axi_mm_wr_arprot[2:0] = v_frmbuf_wr_0_m_axi_mm_video_ARPROT;
  assign m_axi_mm_wr_arqos[3:0] = v_frmbuf_wr_0_m_axi_mm_video_ARQOS;
  assign m_axi_mm_wr_arsize[2:0] = v_frmbuf_wr_0_m_axi_mm_video_ARSIZE;
  assign m_axi_mm_wr_arvalid = v_frmbuf_wr_0_m_axi_mm_video_ARVALID;
  assign m_axi_mm_wr_awaddr[31:0] = v_frmbuf_wr_0_m_axi_mm_video_AWADDR;
  assign m_axi_mm_wr_awburst[1:0] = v_frmbuf_wr_0_m_axi_mm_video_AWBURST;
  assign m_axi_mm_wr_awcache[3:0] = v_frmbuf_wr_0_m_axi_mm_video_AWCACHE;
  assign m_axi_mm_wr_awlen[7:0] = v_frmbuf_wr_0_m_axi_mm_video_AWLEN;
  assign m_axi_mm_wr_awlock[1:0] = v_frmbuf_wr_0_m_axi_mm_video_AWLOCK;
  assign m_axi_mm_wr_awprot[2:0] = v_frmbuf_wr_0_m_axi_mm_video_AWPROT;
  assign m_axi_mm_wr_awqos[3:0] = v_frmbuf_wr_0_m_axi_mm_video_AWQOS;
  assign m_axi_mm_wr_awsize[2:0] = v_frmbuf_wr_0_m_axi_mm_video_AWSIZE;
  assign m_axi_mm_wr_awvalid = v_frmbuf_wr_0_m_axi_mm_video_AWVALID;
  assign m_axi_mm_wr_bready = v_frmbuf_wr_0_m_axi_mm_video_BREADY;
  assign m_axi_mm_wr_rready = v_frmbuf_wr_0_m_axi_mm_video_RREADY;
  assign m_axi_mm_wr_wdata[127:0] = v_frmbuf_wr_0_m_axi_mm_video_WDATA;
  assign m_axi_mm_wr_wlast = v_frmbuf_wr_0_m_axi_mm_video_WLAST;
  assign m_axi_mm_wr_wstrb[15:0] = v_frmbuf_wr_0_m_axi_mm_video_WSTRB;
  assign m_axi_mm_wr_wvalid = v_frmbuf_wr_0_m_axi_mm_video_WVALID;
  assign mipi_rx_0_1_CLK_N = mipi_rx_dphy_if_clk_n;
  assign mipi_rx_0_1_CLK_P = mipi_rx_dphy_if_clk_p;
  assign mipi_rx_0_1_DATA_N = mipi_rx_dphy_if_data_n[1:0];
  assign mipi_rx_0_1_DATA_P = mipi_rx_dphy_if_data_p[1:0];
  assign ps8_0_axi_periph_M02_AXI_ARADDR = s_axi_ctrl_wr_araddr[6:0];
  assign ps8_0_axi_periph_M02_AXI_ARVALID = s_axi_ctrl_wr_arvalid;
  assign ps8_0_axi_periph_M02_AXI_AWADDR = s_axi_ctrl_wr_awaddr[6:0];
  assign ps8_0_axi_periph_M02_AXI_AWVALID = s_axi_ctrl_wr_awvalid;
  assign ps8_0_axi_periph_M02_AXI_BREADY = s_axi_ctrl_wr_bready;
  assign ps8_0_axi_periph_M02_AXI_RREADY = s_axi_ctrl_wr_rready;
  assign ps8_0_axi_periph_M02_AXI_WDATA = s_axi_ctrl_wr_wdata[31:0];
  assign ps8_0_axi_periph_M02_AXI_WSTRB = s_axi_ctrl_wr_wstrb[3:0];
  assign ps8_0_axi_periph_M02_AXI_WVALID = s_axi_ctrl_wr_wvalid;
  assign s00_axi_aclk_0_1 = axi_ctrl_aclk;
  assign s_axi_ctrl_mipi_rx_arready[0] = Conn1_ARREADY;
  assign s_axi_ctrl_mipi_rx_awready[0] = Conn1_AWREADY;
  assign s_axi_ctrl_mipi_rx_bresp[1:0] = Conn1_BRESP;
  assign s_axi_ctrl_mipi_rx_bvalid[0] = Conn1_BVALID;
  assign s_axi_ctrl_mipi_rx_rdata[31:0] = Conn1_RDATA;
  assign s_axi_ctrl_mipi_rx_rresp[1:0] = Conn1_RRESP;
  assign s_axi_ctrl_mipi_rx_rvalid[0] = Conn1_RVALID;
  assign s_axi_ctrl_mipi_rx_wready[0] = Conn1_WREADY;
  assign s_axi_ctrl_wr_arready = ps8_0_axi_periph_M02_AXI_ARREADY;
  assign s_axi_ctrl_wr_awready = ps8_0_axi_periph_M02_AXI_AWREADY;
  assign s_axi_ctrl_wr_bresp[1:0] = ps8_0_axi_periph_M02_AXI_BRESP;
  assign s_axi_ctrl_wr_bvalid = ps8_0_axi_periph_M02_AXI_BVALID;
  assign s_axi_ctrl_wr_rdata[31:0] = ps8_0_axi_periph_M02_AXI_RDATA;
  assign s_axi_ctrl_wr_rresp[1:0] = ps8_0_axi_periph_M02_AXI_RRESP;
  assign s_axi_ctrl_wr_rvalid = ps8_0_axi_periph_M02_AXI_RVALID;
  assign s_axi_ctrl_wr_wready = ps8_0_axi_periph_M02_AXI_WREADY;
  assign v_frmbuf_wr_0_m_axi_mm_video_ARREADY = m_axi_mm_wr_arready;
  assign v_frmbuf_wr_0_m_axi_mm_video_AWREADY = m_axi_mm_wr_awready;
  assign v_frmbuf_wr_0_m_axi_mm_video_BRESP = m_axi_mm_wr_bresp[1:0];
  assign v_frmbuf_wr_0_m_axi_mm_video_BVALID = m_axi_mm_wr_bvalid;
  assign v_frmbuf_wr_0_m_axi_mm_video_RDATA = m_axi_mm_wr_rdata[127:0];
  assign v_frmbuf_wr_0_m_axi_mm_video_RLAST = m_axi_mm_wr_rlast;
  assign v_frmbuf_wr_0_m_axi_mm_video_RRESP = m_axi_mm_wr_rresp[1:0];
  assign v_frmbuf_wr_0_m_axi_mm_video_RVALID = m_axi_mm_wr_rvalid;
  assign v_frmbuf_wr_0_m_axi_mm_video_WREADY = m_axi_mm_wr_wready;
  design_1_axis_subset_converter_0_2 axis_subset_converter
       (.aclk(aclk_0_1),
        .aresetn(aresetn_1),
        .m_axis_tdata(axis_subset_converter_M_AXIS_TDATA),
        .m_axis_tlast(axis_subset_converter_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_M_AXIS_TREADY),
        .m_axis_tuser(axis_subset_converter_M_AXIS_TUSER),
        .m_axis_tvalid(axis_subset_converter_M_AXIS_TVALID),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,video_to_axis_m_axis_TDATA}),
        .s_axis_tlast(video_to_axis_m_axis_TLAST),
        .s_axis_tready(video_to_axis_m_axis_TREADY),
        .s_axis_tuser(video_to_axis_m_axis_TUSER),
        .s_axis_tvalid(video_to_axis_m_axis_TVALID));
  design_1_mipi_rx_to_video_ias1_0 mipi_rx_to_video
       (.dphy_clk_n(mipi_rx_0_1_CLK_N),
        .dphy_clk_p(mipi_rx_0_1_CLK_P),
        .dphy_data_n(mipi_rx_0_1_DATA_N),
        .dphy_data_p(mipi_rx_0_1_DATA_P),
        .irq(mipi_rx_to_video_rpi_irq),
        .s00_axi_aclk(s00_axi_aclk_0_1),
        .s00_axi_araddr(Conn1_ARADDR[6:0]),
        .s00_axi_aresetn(axi_ctrl_arstn_1),
        .s00_axi_arprot(Conn1_ARPROT),
        .s00_axi_arready(Conn1_ARREADY),
        .s00_axi_arvalid(Conn1_ARVALID),
        .s00_axi_awaddr(Conn1_AWADDR[6:0]),
        .s00_axi_awprot(Conn1_AWPROT),
        .s00_axi_awready(Conn1_AWREADY),
        .s00_axi_awvalid(Conn1_AWVALID),
        .s00_axi_bready(Conn1_BREADY),
        .s00_axi_bresp(Conn1_BRESP),
        .s00_axi_bvalid(Conn1_BVALID),
        .s00_axi_rdata(Conn1_RDATA),
        .s00_axi_rready(Conn1_RREADY),
        .s00_axi_rresp(Conn1_RRESP),
        .s00_axi_rvalid(Conn1_RVALID),
        .s00_axi_wdata(Conn1_WDATA),
        .s00_axi_wready(Conn1_WREADY),
        .s00_axi_wstrb(Conn1_WSTRB),
        .s00_axi_wvalid(Conn1_WVALID),
        .vid_active_video(mipi_rx_to_video_video_ACTIVE_VIDEO),
        .vid_ce(mipi_rx_to_video_vid_ce),
        .vid_clk(mipi_rx_to_video_vid_clk),
        .vid_data(mipi_rx_to_video_video_DATA),
        .vid_locked(mipi_rx_to_video_vid_locked),
        .vid_vsync(mipi_rx_to_video_video_VSYNC));
  design_1_v_frm_wr_0_0 v_frm_wr
       (.ap_clk(aclk_0_1),
        .ap_rst_n(axi_arstn_wr_1),
        .interrupt(v_frmbuf_wr_0_interrupt),
        .m_axi_mm_video_ARADDR(v_frmbuf_wr_0_m_axi_mm_video_ARADDR),
        .m_axi_mm_video_ARBURST(v_frmbuf_wr_0_m_axi_mm_video_ARBURST),
        .m_axi_mm_video_ARCACHE(v_frmbuf_wr_0_m_axi_mm_video_ARCACHE),
        .m_axi_mm_video_ARLEN(v_frmbuf_wr_0_m_axi_mm_video_ARLEN),
        .m_axi_mm_video_ARLOCK(v_frmbuf_wr_0_m_axi_mm_video_ARLOCK),
        .m_axi_mm_video_ARPROT(v_frmbuf_wr_0_m_axi_mm_video_ARPROT),
        .m_axi_mm_video_ARQOS(v_frmbuf_wr_0_m_axi_mm_video_ARQOS),
        .m_axi_mm_video_ARREADY(v_frmbuf_wr_0_m_axi_mm_video_ARREADY),
        .m_axi_mm_video_ARSIZE(v_frmbuf_wr_0_m_axi_mm_video_ARSIZE),
        .m_axi_mm_video_ARVALID(v_frmbuf_wr_0_m_axi_mm_video_ARVALID),
        .m_axi_mm_video_AWADDR(v_frmbuf_wr_0_m_axi_mm_video_AWADDR),
        .m_axi_mm_video_AWBURST(v_frmbuf_wr_0_m_axi_mm_video_AWBURST),
        .m_axi_mm_video_AWCACHE(v_frmbuf_wr_0_m_axi_mm_video_AWCACHE),
        .m_axi_mm_video_AWLEN(v_frmbuf_wr_0_m_axi_mm_video_AWLEN),
        .m_axi_mm_video_AWLOCK(v_frmbuf_wr_0_m_axi_mm_video_AWLOCK),
        .m_axi_mm_video_AWPROT(v_frmbuf_wr_0_m_axi_mm_video_AWPROT),
        .m_axi_mm_video_AWQOS(v_frmbuf_wr_0_m_axi_mm_video_AWQOS),
        .m_axi_mm_video_AWREADY(v_frmbuf_wr_0_m_axi_mm_video_AWREADY),
        .m_axi_mm_video_AWSIZE(v_frmbuf_wr_0_m_axi_mm_video_AWSIZE),
        .m_axi_mm_video_AWVALID(v_frmbuf_wr_0_m_axi_mm_video_AWVALID),
        .m_axi_mm_video_BREADY(v_frmbuf_wr_0_m_axi_mm_video_BREADY),
        .m_axi_mm_video_BRESP(v_frmbuf_wr_0_m_axi_mm_video_BRESP),
        .m_axi_mm_video_BVALID(v_frmbuf_wr_0_m_axi_mm_video_BVALID),
        .m_axi_mm_video_RDATA(v_frmbuf_wr_0_m_axi_mm_video_RDATA),
        .m_axi_mm_video_RLAST(v_frmbuf_wr_0_m_axi_mm_video_RLAST),
        .m_axi_mm_video_RREADY(v_frmbuf_wr_0_m_axi_mm_video_RREADY),
        .m_axi_mm_video_RRESP(v_frmbuf_wr_0_m_axi_mm_video_RRESP),
        .m_axi_mm_video_RVALID(v_frmbuf_wr_0_m_axi_mm_video_RVALID),
        .m_axi_mm_video_WDATA(v_frmbuf_wr_0_m_axi_mm_video_WDATA),
        .m_axi_mm_video_WLAST(v_frmbuf_wr_0_m_axi_mm_video_WLAST),
        .m_axi_mm_video_WREADY(v_frmbuf_wr_0_m_axi_mm_video_WREADY),
        .m_axi_mm_video_WSTRB(v_frmbuf_wr_0_m_axi_mm_video_WSTRB),
        .m_axi_mm_video_WVALID(v_frmbuf_wr_0_m_axi_mm_video_WVALID),
        .s_axi_CTRL_ARADDR(ps8_0_axi_periph_M02_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(ps8_0_axi_periph_M02_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_CTRL_BREADY(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_CTRL_BRESP(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_CTRL_BVALID(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_CTRL_RDATA(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_CTRL_RREADY(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_CTRL_RRESP(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_CTRL_RVALID(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_CTRL_WDATA(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_CTRL_WREADY(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_CTRL_WSTRB(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_CTRL_WVALID(ps8_0_axi_periph_M02_AXI_WVALID),
        .s_axis_video_TDATA(axis_subset_converter_M_AXIS_TDATA),
        .s_axis_video_TDEST(1'b0),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_video_TLAST(axis_subset_converter_M_AXIS_TLAST),
        .s_axis_video_TREADY(axis_subset_converter_M_AXIS_TREADY),
        .s_axis_video_TSTRB({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_video_TUSER(axis_subset_converter_M_AXIS_TUSER),
        .s_axis_video_TVALID(axis_subset_converter_M_AXIS_TVALID));
  design_1_video_to_axis_0_1 video_to_axis
       (.aclk(aclk_0_1),
        .aresetn(aresetn_1),
        .m_axis_tdata(video_to_axis_m_axis_TDATA),
        .m_axis_tlast(video_to_axis_m_axis_TLAST),
        .m_axis_tready(video_to_axis_m_axis_TREADY),
        .m_axis_tuser(video_to_axis_m_axis_TUSER),
        .m_axis_tvalid(video_to_axis_m_axis_TVALID),
        .vid_active_video(mipi_rx_to_video_video_ACTIVE_VIDEO),
        .vid_ce(mipi_rx_to_video_vid_ce),
        .vid_clk(mipi_rx_to_video_vid_clk),
        .vid_data(mipi_rx_to_video_video_DATA),
        .vid_rstn(mipi_rx_to_video_vid_locked),
        .vid_vsync(mipi_rx_to_video_video_VSYNC));
endmodule

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=68,numReposBlks=46,numNonXlnxBlks=10,numHierBlks=22,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=47,da_board_cnt=4,da_clkrst_cnt=13,da_zynq_ultra_ps_e_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (gpio,
    iic_scl_i,
    iic_scl_o,
    iic_scl_t,
    iic_sda_i,
    iic_sda_o,
    iic_sda_t,
    mipi_rx_ias1_clk_n,
    mipi_rx_ias1_clk_p,
    mipi_rx_ias1_data_n,
    mipi_rx_ias1_data_p,
    mipi_rx_rpi_clk_n,
    mipi_rx_rpi_clk_p,
    mipi_rx_rpi_data_n,
    mipi_rx_rpi_data_p);
  output [2:0]gpio;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic SCL_I" *) input iic_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic SCL_O" *) output iic_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic SCL_T" *) output iic_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic SDA_I" *) input iic_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic SDA_O" *) output iic_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic SDA_T" *) output iic_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_rx_ias1 CLK_N" *) input mipi_rx_ias1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_rx_ias1 CLK_P" *) input mipi_rx_ias1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_rx_ias1 DATA_N" *) input [3:0]mipi_rx_ias1_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_rx_ias1 DATA_P" *) input [3:0]mipi_rx_ias1_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_rx_rpi CLK_N" *) input mipi_rx_rpi_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_rx_rpi CLK_P" *) input mipi_rx_rpi_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_rx_rpi DATA_N" *) input [1:0]mipi_rx_rpi_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_rx_rpi DATA_P" *) input [1:0]mipi_rx_rpi_data_p;

  wire [0:0]axi_arstn_wr_1;
  wire [0:0]axi_arstn_wr_2;
  wire axi_iic_0_IIC_SCL_I;
  wire axi_iic_0_IIC_SCL_O;
  wire axi_iic_0_IIC_SCL_T;
  wire axi_iic_0_IIC_SDA_I;
  wire axi_iic_0_IIC_SDA_O;
  wire axi_iic_0_IIC_SDA_T;
  wire axi_iic_iic2intc_irpt;
  wire axi_intc_0_irq;
  wire [48:0]axi_smc_1_M00_AXI_ARADDR;
  wire [1:0]axi_smc_1_M00_AXI_ARBURST;
  wire [3:0]axi_smc_1_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_1_M00_AXI_ARLEN;
  wire [0:0]axi_smc_1_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_1_M00_AXI_ARPROT;
  wire [3:0]axi_smc_1_M00_AXI_ARQOS;
  wire axi_smc_1_M00_AXI_ARREADY;
  wire [2:0]axi_smc_1_M00_AXI_ARSIZE;
  wire axi_smc_1_M00_AXI_ARVALID;
  wire [48:0]axi_smc_1_M00_AXI_AWADDR;
  wire [1:0]axi_smc_1_M00_AXI_AWBURST;
  wire [3:0]axi_smc_1_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_1_M00_AXI_AWLEN;
  wire [0:0]axi_smc_1_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_1_M00_AXI_AWPROT;
  wire [3:0]axi_smc_1_M00_AXI_AWQOS;
  wire axi_smc_1_M00_AXI_AWREADY;
  wire [2:0]axi_smc_1_M00_AXI_AWSIZE;
  wire axi_smc_1_M00_AXI_AWVALID;
  wire axi_smc_1_M00_AXI_BREADY;
  wire [1:0]axi_smc_1_M00_AXI_BRESP;
  wire axi_smc_1_M00_AXI_BVALID;
  wire [127:0]axi_smc_1_M00_AXI_RDATA;
  wire axi_smc_1_M00_AXI_RLAST;
  wire axi_smc_1_M00_AXI_RREADY;
  wire [1:0]axi_smc_1_M00_AXI_RRESP;
  wire axi_smc_1_M00_AXI_RVALID;
  wire [127:0]axi_smc_1_M00_AXI_WDATA;
  wire axi_smc_1_M00_AXI_WLAST;
  wire axi_smc_1_M00_AXI_WREADY;
  wire [15:0]axi_smc_1_M00_AXI_WSTRB;
  wire axi_smc_1_M00_AXI_WVALID;
  wire [48:0]axi_smc_2_M00_AXI_ARADDR;
  wire [1:0]axi_smc_2_M00_AXI_ARBURST;
  wire [3:0]axi_smc_2_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_2_M00_AXI_ARLEN;
  wire [0:0]axi_smc_2_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_2_M00_AXI_ARPROT;
  wire [3:0]axi_smc_2_M00_AXI_ARQOS;
  wire axi_smc_2_M00_AXI_ARREADY;
  wire [2:0]axi_smc_2_M00_AXI_ARSIZE;
  wire axi_smc_2_M00_AXI_ARVALID;
  wire [48:0]axi_smc_2_M00_AXI_AWADDR;
  wire [1:0]axi_smc_2_M00_AXI_AWBURST;
  wire [3:0]axi_smc_2_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_2_M00_AXI_AWLEN;
  wire [0:0]axi_smc_2_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_2_M00_AXI_AWPROT;
  wire [3:0]axi_smc_2_M00_AXI_AWQOS;
  wire axi_smc_2_M00_AXI_AWREADY;
  wire [2:0]axi_smc_2_M00_AXI_AWSIZE;
  wire axi_smc_2_M00_AXI_AWVALID;
  wire axi_smc_2_M00_AXI_BREADY;
  wire [1:0]axi_smc_2_M00_AXI_BRESP;
  wire axi_smc_2_M00_AXI_BVALID;
  wire [127:0]axi_smc_2_M00_AXI_RDATA;
  wire axi_smc_2_M00_AXI_RLAST;
  wire axi_smc_2_M00_AXI_RREADY;
  wire [1:0]axi_smc_2_M00_AXI_RRESP;
  wire axi_smc_2_M00_AXI_RVALID;
  wire [127:0]axi_smc_2_M00_AXI_WDATA;
  wire axi_smc_2_M00_AXI_WLAST;
  wire axi_smc_2_M00_AXI_WREADY;
  wire [15:0]axi_smc_2_M00_AXI_WSTRB;
  wire axi_smc_2_M00_AXI_WVALID;
  wire [48:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [48:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [127:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [127:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [15:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [48:0]axi_smc_cam_M00_AXI_ARADDR;
  wire [1:0]axi_smc_cam_M00_AXI_ARBURST;
  wire [3:0]axi_smc_cam_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_cam_M00_AXI_ARLEN;
  wire [0:0]axi_smc_cam_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_cam_M00_AXI_ARPROT;
  wire [3:0]axi_smc_cam_M00_AXI_ARQOS;
  wire axi_smc_cam_M00_AXI_ARREADY;
  wire [2:0]axi_smc_cam_M00_AXI_ARSIZE;
  wire axi_smc_cam_M00_AXI_ARVALID;
  wire [48:0]axi_smc_cam_M00_AXI_AWADDR;
  wire [1:0]axi_smc_cam_M00_AXI_AWBURST;
  wire [3:0]axi_smc_cam_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_cam_M00_AXI_AWLEN;
  wire [0:0]axi_smc_cam_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_cam_M00_AXI_AWPROT;
  wire [3:0]axi_smc_cam_M00_AXI_AWQOS;
  wire axi_smc_cam_M00_AXI_AWREADY;
  wire [2:0]axi_smc_cam_M00_AXI_AWSIZE;
  wire axi_smc_cam_M00_AXI_AWVALID;
  wire axi_smc_cam_M00_AXI_BREADY;
  wire [1:0]axi_smc_cam_M00_AXI_BRESP;
  wire axi_smc_cam_M00_AXI_BVALID;
  wire [127:0]axi_smc_cam_M00_AXI_RDATA;
  wire axi_smc_cam_M00_AXI_RLAST;
  wire axi_smc_cam_M00_AXI_RREADY;
  wire [1:0]axi_smc_cam_M00_AXI_RRESP;
  wire axi_smc_cam_M00_AXI_RVALID;
  wire [127:0]axi_smc_cam_M00_AXI_WDATA;
  wire axi_smc_cam_M00_AXI_WLAST;
  wire axi_smc_cam_M00_AXI_WREADY;
  wire [15:0]axi_smc_cam_M00_AXI_WSTRB;
  wire axi_smc_cam_M00_AXI_WVALID;
  wire camif_ias1_irq_mipi_rx;
  wire camif_ias1_irq_wr;
  wire [31:0]camif_ias1_m_axi_mm_wr_ARADDR;
  wire [1:0]camif_ias1_m_axi_mm_wr_ARBURST;
  wire [3:0]camif_ias1_m_axi_mm_wr_ARCACHE;
  wire [7:0]camif_ias1_m_axi_mm_wr_ARLEN;
  wire [1:0]camif_ias1_m_axi_mm_wr_ARLOCK;
  wire [2:0]camif_ias1_m_axi_mm_wr_ARPROT;
  wire [3:0]camif_ias1_m_axi_mm_wr_ARQOS;
  wire camif_ias1_m_axi_mm_wr_ARREADY;
  wire [2:0]camif_ias1_m_axi_mm_wr_ARSIZE;
  wire camif_ias1_m_axi_mm_wr_ARVALID;
  wire [31:0]camif_ias1_m_axi_mm_wr_AWADDR;
  wire [1:0]camif_ias1_m_axi_mm_wr_AWBURST;
  wire [3:0]camif_ias1_m_axi_mm_wr_AWCACHE;
  wire [7:0]camif_ias1_m_axi_mm_wr_AWLEN;
  wire [1:0]camif_ias1_m_axi_mm_wr_AWLOCK;
  wire [2:0]camif_ias1_m_axi_mm_wr_AWPROT;
  wire [3:0]camif_ias1_m_axi_mm_wr_AWQOS;
  wire camif_ias1_m_axi_mm_wr_AWREADY;
  wire [2:0]camif_ias1_m_axi_mm_wr_AWSIZE;
  wire camif_ias1_m_axi_mm_wr_AWVALID;
  wire camif_ias1_m_axi_mm_wr_BREADY;
  wire [1:0]camif_ias1_m_axi_mm_wr_BRESP;
  wire camif_ias1_m_axi_mm_wr_BVALID;
  wire [255:0]camif_ias1_m_axi_mm_wr_RDATA;
  wire camif_ias1_m_axi_mm_wr_RLAST;
  wire camif_ias1_m_axi_mm_wr_RREADY;
  wire [1:0]camif_ias1_m_axi_mm_wr_RRESP;
  wire camif_ias1_m_axi_mm_wr_RVALID;
  wire [255:0]camif_ias1_m_axi_mm_wr_WDATA;
  wire camif_ias1_m_axi_mm_wr_WLAST;
  wire camif_ias1_m_axi_mm_wr_WREADY;
  wire [31:0]camif_ias1_m_axi_mm_wr_WSTRB;
  wire camif_ias1_m_axi_mm_wr_WVALID;
  wire [31:0]camif_rpi_m_axi_mm_wr_ARADDR;
  wire [1:0]camif_rpi_m_axi_mm_wr_ARBURST;
  wire [3:0]camif_rpi_m_axi_mm_wr_ARCACHE;
  wire [7:0]camif_rpi_m_axi_mm_wr_ARLEN;
  wire [1:0]camif_rpi_m_axi_mm_wr_ARLOCK;
  wire [2:0]camif_rpi_m_axi_mm_wr_ARPROT;
  wire [3:0]camif_rpi_m_axi_mm_wr_ARQOS;
  wire camif_rpi_m_axi_mm_wr_ARREADY;
  wire [2:0]camif_rpi_m_axi_mm_wr_ARSIZE;
  wire camif_rpi_m_axi_mm_wr_ARVALID;
  wire [31:0]camif_rpi_m_axi_mm_wr_AWADDR;
  wire [1:0]camif_rpi_m_axi_mm_wr_AWBURST;
  wire [3:0]camif_rpi_m_axi_mm_wr_AWCACHE;
  wire [7:0]camif_rpi_m_axi_mm_wr_AWLEN;
  wire [1:0]camif_rpi_m_axi_mm_wr_AWLOCK;
  wire [2:0]camif_rpi_m_axi_mm_wr_AWPROT;
  wire [3:0]camif_rpi_m_axi_mm_wr_AWQOS;
  wire camif_rpi_m_axi_mm_wr_AWREADY;
  wire [2:0]camif_rpi_m_axi_mm_wr_AWSIZE;
  wire camif_rpi_m_axi_mm_wr_AWVALID;
  wire camif_rpi_m_axi_mm_wr_BREADY;
  wire [1:0]camif_rpi_m_axi_mm_wr_BRESP;
  wire camif_rpi_m_axi_mm_wr_BVALID;
  wire [127:0]camif_rpi_m_axi_mm_wr_RDATA;
  wire camif_rpi_m_axi_mm_wr_RLAST;
  wire camif_rpi_m_axi_mm_wr_RREADY;
  wire [1:0]camif_rpi_m_axi_mm_wr_RRESP;
  wire camif_rpi_m_axi_mm_wr_RVALID;
  wire [127:0]camif_rpi_m_axi_mm_wr_WDATA;
  wire camif_rpi_m_axi_mm_wr_WLAST;
  wire camif_rpi_m_axi_mm_wr_WREADY;
  wire [15:0]camif_rpi_m_axi_mm_wr_WSTRB;
  wire camif_rpi_m_axi_mm_wr_WVALID;
  wire clk_wiz_clk_ctrl;
  wire clk_wiz_clk_isp;
  wire clk_wiz_clk_mm;
  wire clk_wiz_clk_vcu;
  wire [0:0]gpio_slice_Dout_0;
  wire [0:0]gpio_slice_Dout_1;
  wire [0:0]gpio_slice_Dout_2;
  wire [0:0]gpio_slice_Dout_3;
  wire isp_pipe_irq_isp;
  wire isp_pipe_irq_rd;
  wire isp_pipe_irq_vip_1;
  wire isp_pipe_irq_vip_2;
  wire isp_pipe_irq_wr_1;
  wire isp_pipe_irq_wr_2;
  wire [31:0]isp_pipe_m_axi_mm_rd_ARADDR;
  wire [1:0]isp_pipe_m_axi_mm_rd_ARBURST;
  wire [3:0]isp_pipe_m_axi_mm_rd_ARCACHE;
  wire [7:0]isp_pipe_m_axi_mm_rd_ARLEN;
  wire [1:0]isp_pipe_m_axi_mm_rd_ARLOCK;
  wire [2:0]isp_pipe_m_axi_mm_rd_ARPROT;
  wire [3:0]isp_pipe_m_axi_mm_rd_ARQOS;
  wire isp_pipe_m_axi_mm_rd_ARREADY;
  wire [2:0]isp_pipe_m_axi_mm_rd_ARSIZE;
  wire isp_pipe_m_axi_mm_rd_ARVALID;
  wire [31:0]isp_pipe_m_axi_mm_rd_AWADDR;
  wire [1:0]isp_pipe_m_axi_mm_rd_AWBURST;
  wire [3:0]isp_pipe_m_axi_mm_rd_AWCACHE;
  wire [7:0]isp_pipe_m_axi_mm_rd_AWLEN;
  wire [1:0]isp_pipe_m_axi_mm_rd_AWLOCK;
  wire [2:0]isp_pipe_m_axi_mm_rd_AWPROT;
  wire [3:0]isp_pipe_m_axi_mm_rd_AWQOS;
  wire isp_pipe_m_axi_mm_rd_AWREADY;
  wire [2:0]isp_pipe_m_axi_mm_rd_AWSIZE;
  wire isp_pipe_m_axi_mm_rd_AWVALID;
  wire isp_pipe_m_axi_mm_rd_BREADY;
  wire [1:0]isp_pipe_m_axi_mm_rd_BRESP;
  wire isp_pipe_m_axi_mm_rd_BVALID;
  wire [63:0]isp_pipe_m_axi_mm_rd_RDATA;
  wire isp_pipe_m_axi_mm_rd_RLAST;
  wire isp_pipe_m_axi_mm_rd_RREADY;
  wire [1:0]isp_pipe_m_axi_mm_rd_RRESP;
  wire isp_pipe_m_axi_mm_rd_RVALID;
  wire [63:0]isp_pipe_m_axi_mm_rd_WDATA;
  wire isp_pipe_m_axi_mm_rd_WLAST;
  wire isp_pipe_m_axi_mm_rd_WREADY;
  wire [7:0]isp_pipe_m_axi_mm_rd_WSTRB;
  wire isp_pipe_m_axi_mm_rd_WVALID;
  wire [31:0]isp_pipe_m_axi_mm_wr_1_ARADDR;
  wire [1:0]isp_pipe_m_axi_mm_wr_1_ARBURST;
  wire [3:0]isp_pipe_m_axi_mm_wr_1_ARCACHE;
  wire [7:0]isp_pipe_m_axi_mm_wr_1_ARLEN;
  wire [1:0]isp_pipe_m_axi_mm_wr_1_ARLOCK;
  wire [2:0]isp_pipe_m_axi_mm_wr_1_ARPROT;
  wire [3:0]isp_pipe_m_axi_mm_wr_1_ARQOS;
  wire isp_pipe_m_axi_mm_wr_1_ARREADY;
  wire [2:0]isp_pipe_m_axi_mm_wr_1_ARSIZE;
  wire isp_pipe_m_axi_mm_wr_1_ARVALID;
  wire [31:0]isp_pipe_m_axi_mm_wr_1_AWADDR;
  wire [1:0]isp_pipe_m_axi_mm_wr_1_AWBURST;
  wire [3:0]isp_pipe_m_axi_mm_wr_1_AWCACHE;
  wire [7:0]isp_pipe_m_axi_mm_wr_1_AWLEN;
  wire [1:0]isp_pipe_m_axi_mm_wr_1_AWLOCK;
  wire [2:0]isp_pipe_m_axi_mm_wr_1_AWPROT;
  wire [3:0]isp_pipe_m_axi_mm_wr_1_AWQOS;
  wire isp_pipe_m_axi_mm_wr_1_AWREADY;
  wire [2:0]isp_pipe_m_axi_mm_wr_1_AWSIZE;
  wire isp_pipe_m_axi_mm_wr_1_AWVALID;
  wire isp_pipe_m_axi_mm_wr_1_BREADY;
  wire [1:0]isp_pipe_m_axi_mm_wr_1_BRESP;
  wire isp_pipe_m_axi_mm_wr_1_BVALID;
  wire [63:0]isp_pipe_m_axi_mm_wr_1_RDATA;
  wire isp_pipe_m_axi_mm_wr_1_RLAST;
  wire isp_pipe_m_axi_mm_wr_1_RREADY;
  wire [1:0]isp_pipe_m_axi_mm_wr_1_RRESP;
  wire isp_pipe_m_axi_mm_wr_1_RVALID;
  wire [63:0]isp_pipe_m_axi_mm_wr_1_WDATA;
  wire isp_pipe_m_axi_mm_wr_1_WLAST;
  wire isp_pipe_m_axi_mm_wr_1_WREADY;
  wire [7:0]isp_pipe_m_axi_mm_wr_1_WSTRB;
  wire isp_pipe_m_axi_mm_wr_1_WVALID;
  wire [31:0]isp_pipe_m_axi_mm_wr_2_ARADDR;
  wire [1:0]isp_pipe_m_axi_mm_wr_2_ARBURST;
  wire [3:0]isp_pipe_m_axi_mm_wr_2_ARCACHE;
  wire [7:0]isp_pipe_m_axi_mm_wr_2_ARLEN;
  wire [1:0]isp_pipe_m_axi_mm_wr_2_ARLOCK;
  wire [2:0]isp_pipe_m_axi_mm_wr_2_ARPROT;
  wire [3:0]isp_pipe_m_axi_mm_wr_2_ARQOS;
  wire isp_pipe_m_axi_mm_wr_2_ARREADY;
  wire [2:0]isp_pipe_m_axi_mm_wr_2_ARSIZE;
  wire isp_pipe_m_axi_mm_wr_2_ARVALID;
  wire [31:0]isp_pipe_m_axi_mm_wr_2_AWADDR;
  wire [1:0]isp_pipe_m_axi_mm_wr_2_AWBURST;
  wire [3:0]isp_pipe_m_axi_mm_wr_2_AWCACHE;
  wire [7:0]isp_pipe_m_axi_mm_wr_2_AWLEN;
  wire [1:0]isp_pipe_m_axi_mm_wr_2_AWLOCK;
  wire [2:0]isp_pipe_m_axi_mm_wr_2_AWPROT;
  wire [3:0]isp_pipe_m_axi_mm_wr_2_AWQOS;
  wire isp_pipe_m_axi_mm_wr_2_AWREADY;
  wire [2:0]isp_pipe_m_axi_mm_wr_2_AWSIZE;
  wire isp_pipe_m_axi_mm_wr_2_AWVALID;
  wire isp_pipe_m_axi_mm_wr_2_BREADY;
  wire [1:0]isp_pipe_m_axi_mm_wr_2_BRESP;
  wire isp_pipe_m_axi_mm_wr_2_BVALID;
  wire [63:0]isp_pipe_m_axi_mm_wr_2_RDATA;
  wire isp_pipe_m_axi_mm_wr_2_RLAST;
  wire isp_pipe_m_axi_mm_wr_2_RREADY;
  wire [1:0]isp_pipe_m_axi_mm_wr_2_RRESP;
  wire isp_pipe_m_axi_mm_wr_2_RVALID;
  wire [63:0]isp_pipe_m_axi_mm_wr_2_WDATA;
  wire isp_pipe_m_axi_mm_wr_2_WLAST;
  wire isp_pipe_m_axi_mm_wr_2_WREADY;
  wire [7:0]isp_pipe_m_axi_mm_wr_2_WSTRB;
  wire isp_pipe_m_axi_mm_wr_2_WVALID;
  wire mipi_rx_ias1_1_CLK_N;
  wire mipi_rx_ias1_1_CLK_P;
  wire [3:0]mipi_rx_ias1_1_DATA_N;
  wire [3:0]mipi_rx_ias1_1_DATA_P;
  wire mipi_rx_rpi_1_CLK_N;
  wire mipi_rx_rpi_1_CLK_P;
  wire [1:0]mipi_rx_rpi_1_DATA_N;
  wire [1:0]mipi_rx_rpi_1_DATA_P;
  wire [39:0]ps8_0_axi_periph_1_M00_AXI_ARADDR;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_1_M00_AXI_AWADDR;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_1_M00_AXI_BRESP;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_1_M00_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_1_M00_AXI_RRESP;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_1_M00_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_1_M00_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_1_M00_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_1_M01_AXI_ARADDR;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_1_M01_AXI_AWADDR;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_1_M01_AXI_BRESP;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_1_M01_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_1_M01_AXI_RRESP;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_1_M01_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_1_M01_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_1_M01_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_1_M02_AXI_ARADDR;
  wire [0:0]ps8_0_axi_periph_1_M02_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_1_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_1_M02_AXI_AWADDR;
  wire [0:0]ps8_0_axi_periph_1_M02_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_1_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_1_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_1_M02_AXI_BRESP;
  wire [0:0]ps8_0_axi_periph_1_M02_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_1_M02_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_1_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_1_M02_AXI_RRESP;
  wire [0:0]ps8_0_axi_periph_1_M02_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_1_M02_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_1_M02_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_1_M02_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_1_M02_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_1_M03_AXI_ARADDR;
  wire [0:0]ps8_0_axi_periph_1_M03_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_1_M03_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_1_M03_AXI_AWADDR;
  wire [0:0]ps8_0_axi_periph_1_M03_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_1_M03_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_1_M03_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_1_M03_AXI_BRESP;
  wire [0:0]ps8_0_axi_periph_1_M03_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_1_M03_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_1_M03_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_1_M03_AXI_RRESP;
  wire [0:0]ps8_0_axi_periph_1_M03_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_1_M03_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_1_M03_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_1_M03_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_1_M03_AXI_WVALID;
  wire [6:0]ps8_0_axi_periph_1_M04_AXI_ARADDR;
  wire ps8_0_axi_periph_1_M04_AXI_ARREADY;
  wire ps8_0_axi_periph_1_M04_AXI_ARVALID;
  wire [6:0]ps8_0_axi_periph_1_M04_AXI_AWADDR;
  wire ps8_0_axi_periph_1_M04_AXI_AWREADY;
  wire ps8_0_axi_periph_1_M04_AXI_AWVALID;
  wire ps8_0_axi_periph_1_M04_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_1_M04_AXI_BRESP;
  wire ps8_0_axi_periph_1_M04_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_1_M04_AXI_RDATA;
  wire ps8_0_axi_periph_1_M04_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_1_M04_AXI_RRESP;
  wire ps8_0_axi_periph_1_M04_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_1_M04_AXI_WDATA;
  wire ps8_0_axi_periph_1_M04_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_1_M04_AXI_WSTRB;
  wire ps8_0_axi_periph_1_M04_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M00_AXI_ARADDR;
  wire ps8_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M00_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M00_AXI_AWADDR;
  wire ps8_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_BRESP;
  wire ps8_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_RRESP;
  wire ps8_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_WDATA;
  wire ps8_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M00_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M00_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_ARADDR;
  wire ps8_0_axi_periph_M01_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M01_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_AWADDR;
  wire ps8_0_axi_periph_M01_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M01_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_BRESP;
  wire ps8_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_RRESP;
  wire ps8_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_WDATA;
  wire ps8_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M01_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M01_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M03_AXI_ARPROT;
  wire [0:0]ps8_0_axi_periph_M03_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M03_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M03_AXI_AWPROT;
  wire [0:0]ps8_0_axi_periph_M03_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M03_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_BRESP;
  wire [0:0]ps8_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_RRESP;
  wire [0:0]ps8_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M03_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M03_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M04_AXI_ARPROT;
  wire [0:0]ps8_0_axi_periph_M04_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M04_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M04_AXI_AWPROT;
  wire [0:0]ps8_0_axi_periph_M04_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M04_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_BRESP;
  wire [0:0]ps8_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_RRESP;
  wire [0:0]ps8_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M04_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M04_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M05_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M05_AXI_ARPROT;
  wire [0:0]ps8_0_axi_periph_M05_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M05_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M05_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M05_AXI_AWPROT;
  wire [0:0]ps8_0_axi_periph_M05_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M05_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M05_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M05_AXI_BRESP;
  wire [0:0]ps8_0_axi_periph_M05_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M05_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M05_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M05_AXI_RRESP;
  wire [0:0]ps8_0_axi_periph_M05_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M05_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M05_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M05_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M05_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M06_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M06_AXI_ARPROT;
  wire [0:0]ps8_0_axi_periph_M06_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M06_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M06_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M06_AXI_AWPROT;
  wire [0:0]ps8_0_axi_periph_M06_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M06_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M06_AXI_BRESP;
  wire [0:0]ps8_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M06_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M06_AXI_RRESP;
  wire [0:0]ps8_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M06_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M06_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M06_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M07_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M07_AXI_ARPROT;
  wire [0:0]ps8_0_axi_periph_M07_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M07_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M07_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M07_AXI_AWPROT;
  wire [0:0]ps8_0_axi_periph_M07_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M07_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M07_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M07_AXI_BRESP;
  wire [0:0]ps8_0_axi_periph_M07_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M07_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M07_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M07_AXI_RRESP;
  wire [0:0]ps8_0_axi_periph_M07_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M07_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M07_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M07_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M07_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M08_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M08_AXI_ARPROT;
  wire [0:0]ps8_0_axi_periph_M08_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M08_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M08_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M08_AXI_AWPROT;
  wire [0:0]ps8_0_axi_periph_M08_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M08_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M08_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M08_AXI_BRESP;
  wire [0:0]ps8_0_axi_periph_M08_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M08_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M08_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M08_AXI_RRESP;
  wire [0:0]ps8_0_axi_periph_M08_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M08_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M08_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M08_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M08_AXI_WVALID;
  wire [0:0]rst_clk_wiz_299M_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_99M_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_isp_peripheral_aresetn;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire [43:0]vcu_M_AXI_DEC0_ARADDR;
  wire [1:0]vcu_M_AXI_DEC0_ARBURST;
  wire [3:0]vcu_M_AXI_DEC0_ARCACHE;
  wire [3:0]vcu_M_AXI_DEC0_ARID;
  wire [7:0]vcu_M_AXI_DEC0_ARLEN;
  wire vcu_M_AXI_DEC0_ARLOCK;
  wire [2:0]vcu_M_AXI_DEC0_ARPROT;
  wire [3:0]vcu_M_AXI_DEC0_ARQOS;
  wire vcu_M_AXI_DEC0_ARREADY;
  wire [2:0]vcu_M_AXI_DEC0_ARSIZE;
  wire vcu_M_AXI_DEC0_ARVALID;
  wire [43:0]vcu_M_AXI_DEC0_AWADDR;
  wire [1:0]vcu_M_AXI_DEC0_AWBURST;
  wire [3:0]vcu_M_AXI_DEC0_AWCACHE;
  wire [3:0]vcu_M_AXI_DEC0_AWID;
  wire [7:0]vcu_M_AXI_DEC0_AWLEN;
  wire vcu_M_AXI_DEC0_AWLOCK;
  wire [2:0]vcu_M_AXI_DEC0_AWPROT;
  wire [3:0]vcu_M_AXI_DEC0_AWQOS;
  wire vcu_M_AXI_DEC0_AWREADY;
  wire [2:0]vcu_M_AXI_DEC0_AWSIZE;
  wire vcu_M_AXI_DEC0_AWVALID;
  wire [3:0]vcu_M_AXI_DEC0_BID;
  wire vcu_M_AXI_DEC0_BREADY;
  wire [1:0]vcu_M_AXI_DEC0_BRESP;
  wire vcu_M_AXI_DEC0_BVALID;
  wire [127:0]vcu_M_AXI_DEC0_RDATA;
  wire [3:0]vcu_M_AXI_DEC0_RID;
  wire vcu_M_AXI_DEC0_RLAST;
  wire vcu_M_AXI_DEC0_RREADY;
  wire [1:0]vcu_M_AXI_DEC0_RRESP;
  wire vcu_M_AXI_DEC0_RVALID;
  wire [127:0]vcu_M_AXI_DEC0_WDATA;
  wire vcu_M_AXI_DEC0_WLAST;
  wire vcu_M_AXI_DEC0_WREADY;
  wire [15:0]vcu_M_AXI_DEC0_WSTRB;
  wire vcu_M_AXI_DEC0_WVALID;
  wire [43:0]vcu_M_AXI_DEC1_ARADDR;
  wire [1:0]vcu_M_AXI_DEC1_ARBURST;
  wire [3:0]vcu_M_AXI_DEC1_ARCACHE;
  wire [3:0]vcu_M_AXI_DEC1_ARID;
  wire [7:0]vcu_M_AXI_DEC1_ARLEN;
  wire vcu_M_AXI_DEC1_ARLOCK;
  wire [2:0]vcu_M_AXI_DEC1_ARPROT;
  wire [3:0]vcu_M_AXI_DEC1_ARQOS;
  wire vcu_M_AXI_DEC1_ARREADY;
  wire [2:0]vcu_M_AXI_DEC1_ARSIZE;
  wire vcu_M_AXI_DEC1_ARVALID;
  wire [43:0]vcu_M_AXI_DEC1_AWADDR;
  wire [1:0]vcu_M_AXI_DEC1_AWBURST;
  wire [3:0]vcu_M_AXI_DEC1_AWCACHE;
  wire [3:0]vcu_M_AXI_DEC1_AWID;
  wire [7:0]vcu_M_AXI_DEC1_AWLEN;
  wire vcu_M_AXI_DEC1_AWLOCK;
  wire [2:0]vcu_M_AXI_DEC1_AWPROT;
  wire [3:0]vcu_M_AXI_DEC1_AWQOS;
  wire vcu_M_AXI_DEC1_AWREADY;
  wire [2:0]vcu_M_AXI_DEC1_AWSIZE;
  wire vcu_M_AXI_DEC1_AWVALID;
  wire [3:0]vcu_M_AXI_DEC1_BID;
  wire vcu_M_AXI_DEC1_BREADY;
  wire [1:0]vcu_M_AXI_DEC1_BRESP;
  wire vcu_M_AXI_DEC1_BVALID;
  wire [127:0]vcu_M_AXI_DEC1_RDATA;
  wire [3:0]vcu_M_AXI_DEC1_RID;
  wire vcu_M_AXI_DEC1_RLAST;
  wire vcu_M_AXI_DEC1_RREADY;
  wire [1:0]vcu_M_AXI_DEC1_RRESP;
  wire vcu_M_AXI_DEC1_RVALID;
  wire [127:0]vcu_M_AXI_DEC1_WDATA;
  wire vcu_M_AXI_DEC1_WLAST;
  wire vcu_M_AXI_DEC1_WREADY;
  wire [15:0]vcu_M_AXI_DEC1_WSTRB;
  wire vcu_M_AXI_DEC1_WVALID;
  wire [43:0]vcu_M_AXI_ENC0_ARADDR;
  wire [1:0]vcu_M_AXI_ENC0_ARBURST;
  wire [3:0]vcu_M_AXI_ENC0_ARCACHE;
  wire [3:0]vcu_M_AXI_ENC0_ARID;
  wire [7:0]vcu_M_AXI_ENC0_ARLEN;
  wire vcu_M_AXI_ENC0_ARLOCK;
  wire [2:0]vcu_M_AXI_ENC0_ARPROT;
  wire [3:0]vcu_M_AXI_ENC0_ARQOS;
  wire vcu_M_AXI_ENC0_ARREADY;
  wire [2:0]vcu_M_AXI_ENC0_ARSIZE;
  wire vcu_M_AXI_ENC0_ARVALID;
  wire [43:0]vcu_M_AXI_ENC0_AWADDR;
  wire [1:0]vcu_M_AXI_ENC0_AWBURST;
  wire [3:0]vcu_M_AXI_ENC0_AWCACHE;
  wire [3:0]vcu_M_AXI_ENC0_AWID;
  wire [7:0]vcu_M_AXI_ENC0_AWLEN;
  wire vcu_M_AXI_ENC0_AWLOCK;
  wire [2:0]vcu_M_AXI_ENC0_AWPROT;
  wire [3:0]vcu_M_AXI_ENC0_AWQOS;
  wire vcu_M_AXI_ENC0_AWREADY;
  wire [2:0]vcu_M_AXI_ENC0_AWSIZE;
  wire vcu_M_AXI_ENC0_AWVALID;
  wire [3:0]vcu_M_AXI_ENC0_BID;
  wire vcu_M_AXI_ENC0_BREADY;
  wire [1:0]vcu_M_AXI_ENC0_BRESP;
  wire vcu_M_AXI_ENC0_BVALID;
  wire [127:0]vcu_M_AXI_ENC0_RDATA;
  wire [3:0]vcu_M_AXI_ENC0_RID;
  wire vcu_M_AXI_ENC0_RLAST;
  wire vcu_M_AXI_ENC0_RREADY;
  wire [1:0]vcu_M_AXI_ENC0_RRESP;
  wire vcu_M_AXI_ENC0_RVALID;
  wire [127:0]vcu_M_AXI_ENC0_WDATA;
  wire vcu_M_AXI_ENC0_WLAST;
  wire vcu_M_AXI_ENC0_WREADY;
  wire [15:0]vcu_M_AXI_ENC0_WSTRB;
  wire vcu_M_AXI_ENC0_WVALID;
  wire [43:0]vcu_M_AXI_ENC1_ARADDR;
  wire [1:0]vcu_M_AXI_ENC1_ARBURST;
  wire [3:0]vcu_M_AXI_ENC1_ARCACHE;
  wire [3:0]vcu_M_AXI_ENC1_ARID;
  wire [7:0]vcu_M_AXI_ENC1_ARLEN;
  wire vcu_M_AXI_ENC1_ARLOCK;
  wire [2:0]vcu_M_AXI_ENC1_ARPROT;
  wire [3:0]vcu_M_AXI_ENC1_ARQOS;
  wire vcu_M_AXI_ENC1_ARREADY;
  wire [2:0]vcu_M_AXI_ENC1_ARSIZE;
  wire vcu_M_AXI_ENC1_ARVALID;
  wire [43:0]vcu_M_AXI_ENC1_AWADDR;
  wire [1:0]vcu_M_AXI_ENC1_AWBURST;
  wire [3:0]vcu_M_AXI_ENC1_AWCACHE;
  wire [3:0]vcu_M_AXI_ENC1_AWID;
  wire [7:0]vcu_M_AXI_ENC1_AWLEN;
  wire vcu_M_AXI_ENC1_AWLOCK;
  wire [2:0]vcu_M_AXI_ENC1_AWPROT;
  wire [3:0]vcu_M_AXI_ENC1_AWQOS;
  wire vcu_M_AXI_ENC1_AWREADY;
  wire [2:0]vcu_M_AXI_ENC1_AWSIZE;
  wire vcu_M_AXI_ENC1_AWVALID;
  wire [3:0]vcu_M_AXI_ENC1_BID;
  wire vcu_M_AXI_ENC1_BREADY;
  wire [1:0]vcu_M_AXI_ENC1_BRESP;
  wire vcu_M_AXI_ENC1_BVALID;
  wire [127:0]vcu_M_AXI_ENC1_RDATA;
  wire [3:0]vcu_M_AXI_ENC1_RID;
  wire vcu_M_AXI_ENC1_RLAST;
  wire vcu_M_AXI_ENC1_RREADY;
  wire [1:0]vcu_M_AXI_ENC1_RRESP;
  wire vcu_M_AXI_ENC1_RVALID;
  wire [127:0]vcu_M_AXI_ENC1_WDATA;
  wire vcu_M_AXI_ENC1_WLAST;
  wire vcu_M_AXI_ENC1_WREADY;
  wire [15:0]vcu_M_AXI_ENC1_WSTRB;
  wire vcu_M_AXI_ENC1_WVALID;
  wire [43:0]vcu_M_AXI_MCU_ARADDR;
  wire [1:0]vcu_M_AXI_MCU_ARBURST;
  wire [3:0]vcu_M_AXI_MCU_ARCACHE;
  wire [2:0]vcu_M_AXI_MCU_ARID;
  wire [7:0]vcu_M_AXI_MCU_ARLEN;
  wire vcu_M_AXI_MCU_ARLOCK;
  wire [2:0]vcu_M_AXI_MCU_ARPROT;
  wire [3:0]vcu_M_AXI_MCU_ARQOS;
  wire vcu_M_AXI_MCU_ARREADY;
  wire [2:0]vcu_M_AXI_MCU_ARSIZE;
  wire vcu_M_AXI_MCU_ARVALID;
  wire [43:0]vcu_M_AXI_MCU_AWADDR;
  wire [1:0]vcu_M_AXI_MCU_AWBURST;
  wire [3:0]vcu_M_AXI_MCU_AWCACHE;
  wire [2:0]vcu_M_AXI_MCU_AWID;
  wire [7:0]vcu_M_AXI_MCU_AWLEN;
  wire vcu_M_AXI_MCU_AWLOCK;
  wire [2:0]vcu_M_AXI_MCU_AWPROT;
  wire [3:0]vcu_M_AXI_MCU_AWQOS;
  wire vcu_M_AXI_MCU_AWREADY;
  wire [2:0]vcu_M_AXI_MCU_AWSIZE;
  wire vcu_M_AXI_MCU_AWVALID;
  wire [2:0]vcu_M_AXI_MCU_BID;
  wire vcu_M_AXI_MCU_BREADY;
  wire [1:0]vcu_M_AXI_MCU_BRESP;
  wire vcu_M_AXI_MCU_BVALID;
  wire [31:0]vcu_M_AXI_MCU_RDATA;
  wire [2:0]vcu_M_AXI_MCU_RID;
  wire vcu_M_AXI_MCU_RLAST;
  wire vcu_M_AXI_MCU_RREADY;
  wire [1:0]vcu_M_AXI_MCU_RRESP;
  wire vcu_M_AXI_MCU_RVALID;
  wire [31:0]vcu_M_AXI_MCU_WDATA;
  wire vcu_M_AXI_MCU_WLAST;
  wire vcu_M_AXI_MCU_WREADY;
  wire [3:0]vcu_M_AXI_MCU_WSTRB;
  wire vcu_M_AXI_MCU_WVALID;
  wire vcu_vcu_host_interrupt;
  wire [9:0]xlconcat_0_dout;
  wire [2:0]xlslice_4_Dout;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk1;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign axi_iic_0_IIC_SCL_I = iic_scl_i;
  assign axi_iic_0_IIC_SDA_I = iic_sda_i;
  assign gpio[2:0] = xlslice_4_Dout;
  assign iic_scl_o = axi_iic_0_IIC_SCL_O;
  assign iic_scl_t = axi_iic_0_IIC_SCL_T;
  assign iic_sda_o = axi_iic_0_IIC_SDA_O;
  assign iic_sda_t = axi_iic_0_IIC_SDA_T;
  assign mipi_rx_ias1_1_CLK_N = mipi_rx_ias1_clk_n;
  assign mipi_rx_ias1_1_CLK_P = mipi_rx_ias1_clk_p;
  assign mipi_rx_ias1_1_DATA_N = mipi_rx_ias1_data_n[3:0];
  assign mipi_rx_ias1_1_DATA_P = mipi_rx_ias1_data_p[3:0];
  assign mipi_rx_rpi_1_CLK_N = mipi_rx_rpi_clk_n;
  assign mipi_rx_rpi_1_CLK_P = mipi_rx_rpi_clk_p;
  assign mipi_rx_rpi_1_DATA_N = mipi_rx_rpi_data_n[1:0];
  assign mipi_rx_rpi_1_DATA_P = mipi_rx_rpi_data_p[1:0];
  design_1_axi_iic_0_0 axi_iic
       (.iic2intc_irpt(axi_iic_iic2intc_irpt),
        .s_axi_aclk(clk_wiz_clk_ctrl),
        .s_axi_araddr(ps8_0_axi_periph_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .scl_i(axi_iic_0_IIC_SCL_I),
        .scl_o(axi_iic_0_IIC_SCL_O),
        .scl_t(axi_iic_0_IIC_SCL_T),
        .sda_i(axi_iic_0_IIC_SDA_I),
        .sda_o(axi_iic_0_IIC_SDA_O),
        .sda_t(axi_iic_0_IIC_SDA_T));
  design_1_axi_intc_0_0 axi_intc
       (.intr(xlconcat_0_dout),
        .irq(axi_intc_0_irq),
        .s_axi_aclk(clk_wiz_clk_ctrl),
        .s_axi_araddr(ps8_0_axi_periph_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M00_AXI_WVALID));
  design_1_axi_smc_vcu_0_0 axi_smc_cam
       (.M00_AXI_araddr(axi_smc_cam_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_cam_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_cam_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_cam_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_cam_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_cam_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_cam_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_cam_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_cam_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_cam_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_cam_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_cam_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_cam_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_cam_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_cam_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_cam_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_cam_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_cam_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_cam_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_cam_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_cam_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_cam_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_cam_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_cam_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_cam_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_cam_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_cam_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_cam_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_cam_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_cam_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_cam_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_cam_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_cam_M00_AXI_WVALID),
        .S00_AXI_araddr(isp_pipe_m_axi_mm_rd_ARADDR),
        .S00_AXI_arburst(isp_pipe_m_axi_mm_rd_ARBURST),
        .S00_AXI_arcache(isp_pipe_m_axi_mm_rd_ARCACHE),
        .S00_AXI_arlen(isp_pipe_m_axi_mm_rd_ARLEN),
        .S00_AXI_arlock(isp_pipe_m_axi_mm_rd_ARLOCK[0]),
        .S00_AXI_arprot(isp_pipe_m_axi_mm_rd_ARPROT),
        .S00_AXI_arqos(isp_pipe_m_axi_mm_rd_ARQOS),
        .S00_AXI_arready(isp_pipe_m_axi_mm_rd_ARREADY),
        .S00_AXI_arsize(isp_pipe_m_axi_mm_rd_ARSIZE),
        .S00_AXI_arvalid(isp_pipe_m_axi_mm_rd_ARVALID),
        .S00_AXI_awaddr(isp_pipe_m_axi_mm_rd_AWADDR),
        .S00_AXI_awburst(isp_pipe_m_axi_mm_rd_AWBURST),
        .S00_AXI_awcache(isp_pipe_m_axi_mm_rd_AWCACHE),
        .S00_AXI_awlen(isp_pipe_m_axi_mm_rd_AWLEN),
        .S00_AXI_awlock(isp_pipe_m_axi_mm_rd_AWLOCK[0]),
        .S00_AXI_awprot(isp_pipe_m_axi_mm_rd_AWPROT),
        .S00_AXI_awqos(isp_pipe_m_axi_mm_rd_AWQOS),
        .S00_AXI_awready(isp_pipe_m_axi_mm_rd_AWREADY),
        .S00_AXI_awsize(isp_pipe_m_axi_mm_rd_AWSIZE),
        .S00_AXI_awvalid(isp_pipe_m_axi_mm_rd_AWVALID),
        .S00_AXI_bready(isp_pipe_m_axi_mm_rd_BREADY),
        .S00_AXI_bresp(isp_pipe_m_axi_mm_rd_BRESP),
        .S00_AXI_bvalid(isp_pipe_m_axi_mm_rd_BVALID),
        .S00_AXI_rdata(isp_pipe_m_axi_mm_rd_RDATA),
        .S00_AXI_rlast(isp_pipe_m_axi_mm_rd_RLAST),
        .S00_AXI_rready(isp_pipe_m_axi_mm_rd_RREADY),
        .S00_AXI_rresp(isp_pipe_m_axi_mm_rd_RRESP),
        .S00_AXI_rvalid(isp_pipe_m_axi_mm_rd_RVALID),
        .S00_AXI_wdata(isp_pipe_m_axi_mm_rd_WDATA),
        .S00_AXI_wlast(isp_pipe_m_axi_mm_rd_WLAST),
        .S00_AXI_wready(isp_pipe_m_axi_mm_rd_WREADY),
        .S00_AXI_wstrb(isp_pipe_m_axi_mm_rd_WSTRB),
        .S00_AXI_wvalid(isp_pipe_m_axi_mm_rd_WVALID),
        .S01_AXI_araddr(isp_pipe_m_axi_mm_wr_1_ARADDR),
        .S01_AXI_arburst(isp_pipe_m_axi_mm_wr_1_ARBURST),
        .S01_AXI_arcache(isp_pipe_m_axi_mm_wr_1_ARCACHE),
        .S01_AXI_arlen(isp_pipe_m_axi_mm_wr_1_ARLEN),
        .S01_AXI_arlock(isp_pipe_m_axi_mm_wr_1_ARLOCK[0]),
        .S01_AXI_arprot(isp_pipe_m_axi_mm_wr_1_ARPROT),
        .S01_AXI_arqos(isp_pipe_m_axi_mm_wr_1_ARQOS),
        .S01_AXI_arready(isp_pipe_m_axi_mm_wr_1_ARREADY),
        .S01_AXI_arsize(isp_pipe_m_axi_mm_wr_1_ARSIZE),
        .S01_AXI_arvalid(isp_pipe_m_axi_mm_wr_1_ARVALID),
        .S01_AXI_awaddr(isp_pipe_m_axi_mm_wr_1_AWADDR),
        .S01_AXI_awburst(isp_pipe_m_axi_mm_wr_1_AWBURST),
        .S01_AXI_awcache(isp_pipe_m_axi_mm_wr_1_AWCACHE),
        .S01_AXI_awlen(isp_pipe_m_axi_mm_wr_1_AWLEN),
        .S01_AXI_awlock(isp_pipe_m_axi_mm_wr_1_AWLOCK[0]),
        .S01_AXI_awprot(isp_pipe_m_axi_mm_wr_1_AWPROT),
        .S01_AXI_awqos(isp_pipe_m_axi_mm_wr_1_AWQOS),
        .S01_AXI_awready(isp_pipe_m_axi_mm_wr_1_AWREADY),
        .S01_AXI_awsize(isp_pipe_m_axi_mm_wr_1_AWSIZE),
        .S01_AXI_awvalid(isp_pipe_m_axi_mm_wr_1_AWVALID),
        .S01_AXI_bready(isp_pipe_m_axi_mm_wr_1_BREADY),
        .S01_AXI_bresp(isp_pipe_m_axi_mm_wr_1_BRESP),
        .S01_AXI_bvalid(isp_pipe_m_axi_mm_wr_1_BVALID),
        .S01_AXI_rdata(isp_pipe_m_axi_mm_wr_1_RDATA),
        .S01_AXI_rlast(isp_pipe_m_axi_mm_wr_1_RLAST),
        .S01_AXI_rready(isp_pipe_m_axi_mm_wr_1_RREADY),
        .S01_AXI_rresp(isp_pipe_m_axi_mm_wr_1_RRESP),
        .S01_AXI_rvalid(isp_pipe_m_axi_mm_wr_1_RVALID),
        .S01_AXI_wdata(isp_pipe_m_axi_mm_wr_1_WDATA),
        .S01_AXI_wlast(isp_pipe_m_axi_mm_wr_1_WLAST),
        .S01_AXI_wready(isp_pipe_m_axi_mm_wr_1_WREADY),
        .S01_AXI_wstrb(isp_pipe_m_axi_mm_wr_1_WSTRB),
        .S01_AXI_wvalid(isp_pipe_m_axi_mm_wr_1_WVALID),
        .S02_AXI_araddr(isp_pipe_m_axi_mm_wr_2_ARADDR),
        .S02_AXI_arburst(isp_pipe_m_axi_mm_wr_2_ARBURST),
        .S02_AXI_arcache(isp_pipe_m_axi_mm_wr_2_ARCACHE),
        .S02_AXI_arlen(isp_pipe_m_axi_mm_wr_2_ARLEN),
        .S02_AXI_arlock(isp_pipe_m_axi_mm_wr_2_ARLOCK[0]),
        .S02_AXI_arprot(isp_pipe_m_axi_mm_wr_2_ARPROT),
        .S02_AXI_arqos(isp_pipe_m_axi_mm_wr_2_ARQOS),
        .S02_AXI_arready(isp_pipe_m_axi_mm_wr_2_ARREADY),
        .S02_AXI_arsize(isp_pipe_m_axi_mm_wr_2_ARSIZE),
        .S02_AXI_arvalid(isp_pipe_m_axi_mm_wr_2_ARVALID),
        .S02_AXI_awaddr(isp_pipe_m_axi_mm_wr_2_AWADDR),
        .S02_AXI_awburst(isp_pipe_m_axi_mm_wr_2_AWBURST),
        .S02_AXI_awcache(isp_pipe_m_axi_mm_wr_2_AWCACHE),
        .S02_AXI_awlen(isp_pipe_m_axi_mm_wr_2_AWLEN),
        .S02_AXI_awlock(isp_pipe_m_axi_mm_wr_2_AWLOCK[0]),
        .S02_AXI_awprot(isp_pipe_m_axi_mm_wr_2_AWPROT),
        .S02_AXI_awqos(isp_pipe_m_axi_mm_wr_2_AWQOS),
        .S02_AXI_awready(isp_pipe_m_axi_mm_wr_2_AWREADY),
        .S02_AXI_awsize(isp_pipe_m_axi_mm_wr_2_AWSIZE),
        .S02_AXI_awvalid(isp_pipe_m_axi_mm_wr_2_AWVALID),
        .S02_AXI_bready(isp_pipe_m_axi_mm_wr_2_BREADY),
        .S02_AXI_bresp(isp_pipe_m_axi_mm_wr_2_BRESP),
        .S02_AXI_bvalid(isp_pipe_m_axi_mm_wr_2_BVALID),
        .S02_AXI_rdata(isp_pipe_m_axi_mm_wr_2_RDATA),
        .S02_AXI_rlast(isp_pipe_m_axi_mm_wr_2_RLAST),
        .S02_AXI_rready(isp_pipe_m_axi_mm_wr_2_RREADY),
        .S02_AXI_rresp(isp_pipe_m_axi_mm_wr_2_RRESP),
        .S02_AXI_rvalid(isp_pipe_m_axi_mm_wr_2_RVALID),
        .S02_AXI_wdata(isp_pipe_m_axi_mm_wr_2_WDATA),
        .S02_AXI_wlast(isp_pipe_m_axi_mm_wr_2_WLAST),
        .S02_AXI_wready(isp_pipe_m_axi_mm_wr_2_WREADY),
        .S02_AXI_wstrb(isp_pipe_m_axi_mm_wr_2_WSTRB),
        .S02_AXI_wvalid(isp_pipe_m_axi_mm_wr_2_WVALID),
        .S03_AXI_araddr(camif_ias1_m_axi_mm_wr_ARADDR),
        .S03_AXI_arburst(camif_ias1_m_axi_mm_wr_ARBURST),
        .S03_AXI_arcache(camif_ias1_m_axi_mm_wr_ARCACHE),
        .S03_AXI_arlen(camif_ias1_m_axi_mm_wr_ARLEN),
        .S03_AXI_arlock(camif_ias1_m_axi_mm_wr_ARLOCK[0]),
        .S03_AXI_arprot(camif_ias1_m_axi_mm_wr_ARPROT),
        .S03_AXI_arqos(camif_ias1_m_axi_mm_wr_ARQOS),
        .S03_AXI_arready(camif_ias1_m_axi_mm_wr_ARREADY),
        .S03_AXI_arsize(camif_ias1_m_axi_mm_wr_ARSIZE),
        .S03_AXI_arvalid(camif_ias1_m_axi_mm_wr_ARVALID),
        .S03_AXI_awaddr(camif_ias1_m_axi_mm_wr_AWADDR),
        .S03_AXI_awburst(camif_ias1_m_axi_mm_wr_AWBURST),
        .S03_AXI_awcache(camif_ias1_m_axi_mm_wr_AWCACHE),
        .S03_AXI_awlen(camif_ias1_m_axi_mm_wr_AWLEN),
        .S03_AXI_awlock(camif_ias1_m_axi_mm_wr_AWLOCK[0]),
        .S03_AXI_awprot(camif_ias1_m_axi_mm_wr_AWPROT),
        .S03_AXI_awqos(camif_ias1_m_axi_mm_wr_AWQOS),
        .S03_AXI_awready(camif_ias1_m_axi_mm_wr_AWREADY),
        .S03_AXI_awsize(camif_ias1_m_axi_mm_wr_AWSIZE),
        .S03_AXI_awvalid(camif_ias1_m_axi_mm_wr_AWVALID),
        .S03_AXI_bready(camif_ias1_m_axi_mm_wr_BREADY),
        .S03_AXI_bresp(camif_ias1_m_axi_mm_wr_BRESP),
        .S03_AXI_bvalid(camif_ias1_m_axi_mm_wr_BVALID),
        .S03_AXI_rdata(camif_ias1_m_axi_mm_wr_RDATA),
        .S03_AXI_rlast(camif_ias1_m_axi_mm_wr_RLAST),
        .S03_AXI_rready(camif_ias1_m_axi_mm_wr_RREADY),
        .S03_AXI_rresp(camif_ias1_m_axi_mm_wr_RRESP),
        .S03_AXI_rvalid(camif_ias1_m_axi_mm_wr_RVALID),
        .S03_AXI_wdata(camif_ias1_m_axi_mm_wr_WDATA),
        .S03_AXI_wlast(camif_ias1_m_axi_mm_wr_WLAST),
        .S03_AXI_wready(camif_ias1_m_axi_mm_wr_WREADY),
        .S03_AXI_wstrb(camif_ias1_m_axi_mm_wr_WSTRB),
        .S03_AXI_wvalid(camif_ias1_m_axi_mm_wr_WVALID),
        .S04_AXI_araddr(camif_rpi_m_axi_mm_wr_ARADDR),
        .S04_AXI_arburst(camif_rpi_m_axi_mm_wr_ARBURST),
        .S04_AXI_arcache(camif_rpi_m_axi_mm_wr_ARCACHE),
        .S04_AXI_arlen(camif_rpi_m_axi_mm_wr_ARLEN),
        .S04_AXI_arlock(camif_rpi_m_axi_mm_wr_ARLOCK[0]),
        .S04_AXI_arprot(camif_rpi_m_axi_mm_wr_ARPROT),
        .S04_AXI_arqos(camif_rpi_m_axi_mm_wr_ARQOS),
        .S04_AXI_arready(camif_rpi_m_axi_mm_wr_ARREADY),
        .S04_AXI_arsize(camif_rpi_m_axi_mm_wr_ARSIZE),
        .S04_AXI_arvalid(camif_rpi_m_axi_mm_wr_ARVALID),
        .S04_AXI_awaddr(camif_rpi_m_axi_mm_wr_AWADDR),
        .S04_AXI_awburst(camif_rpi_m_axi_mm_wr_AWBURST),
        .S04_AXI_awcache(camif_rpi_m_axi_mm_wr_AWCACHE),
        .S04_AXI_awlen(camif_rpi_m_axi_mm_wr_AWLEN),
        .S04_AXI_awlock(camif_rpi_m_axi_mm_wr_AWLOCK[0]),
        .S04_AXI_awprot(camif_rpi_m_axi_mm_wr_AWPROT),
        .S04_AXI_awqos(camif_rpi_m_axi_mm_wr_AWQOS),
        .S04_AXI_awready(camif_rpi_m_axi_mm_wr_AWREADY),
        .S04_AXI_awsize(camif_rpi_m_axi_mm_wr_AWSIZE),
        .S04_AXI_awvalid(camif_rpi_m_axi_mm_wr_AWVALID),
        .S04_AXI_bready(camif_rpi_m_axi_mm_wr_BREADY),
        .S04_AXI_bresp(camif_rpi_m_axi_mm_wr_BRESP),
        .S04_AXI_bvalid(camif_rpi_m_axi_mm_wr_BVALID),
        .S04_AXI_rdata(camif_rpi_m_axi_mm_wr_RDATA),
        .S04_AXI_rlast(camif_rpi_m_axi_mm_wr_RLAST),
        .S04_AXI_rready(camif_rpi_m_axi_mm_wr_RREADY),
        .S04_AXI_rresp(camif_rpi_m_axi_mm_wr_RRESP),
        .S04_AXI_rvalid(camif_rpi_m_axi_mm_wr_RVALID),
        .S04_AXI_wdata(camif_rpi_m_axi_mm_wr_WDATA),
        .S04_AXI_wlast(camif_rpi_m_axi_mm_wr_WLAST),
        .S04_AXI_wready(camif_rpi_m_axi_mm_wr_WREADY),
        .S04_AXI_wstrb(camif_rpi_m_axi_mm_wr_WSTRB),
        .S04_AXI_wvalid(camif_rpi_m_axi_mm_wr_WVALID),
        .aclk(clk_wiz_clk_mm),
        .aclk1(zynq_ultra_ps_e_0_pl_clk1),
        .aresetn(rst_clk_wiz_299M_peripheral_aresetn));
  design_1_axi_smc_1 axi_smc_vcu_0
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(vcu_M_AXI_MCU_ARADDR),
        .S00_AXI_arburst(vcu_M_AXI_MCU_ARBURST),
        .S00_AXI_arcache(vcu_M_AXI_MCU_ARCACHE),
        .S00_AXI_arid(vcu_M_AXI_MCU_ARID),
        .S00_AXI_arlen(vcu_M_AXI_MCU_ARLEN),
        .S00_AXI_arlock(vcu_M_AXI_MCU_ARLOCK),
        .S00_AXI_arprot(vcu_M_AXI_MCU_ARPROT),
        .S00_AXI_arqos(vcu_M_AXI_MCU_ARQOS),
        .S00_AXI_arready(vcu_M_AXI_MCU_ARREADY),
        .S00_AXI_arsize(vcu_M_AXI_MCU_ARSIZE),
        .S00_AXI_arvalid(vcu_M_AXI_MCU_ARVALID),
        .S00_AXI_awaddr(vcu_M_AXI_MCU_AWADDR),
        .S00_AXI_awburst(vcu_M_AXI_MCU_AWBURST),
        .S00_AXI_awcache(vcu_M_AXI_MCU_AWCACHE),
        .S00_AXI_awid(vcu_M_AXI_MCU_AWID),
        .S00_AXI_awlen(vcu_M_AXI_MCU_AWLEN),
        .S00_AXI_awlock(vcu_M_AXI_MCU_AWLOCK),
        .S00_AXI_awprot(vcu_M_AXI_MCU_AWPROT),
        .S00_AXI_awqos(vcu_M_AXI_MCU_AWQOS),
        .S00_AXI_awready(vcu_M_AXI_MCU_AWREADY),
        .S00_AXI_awsize(vcu_M_AXI_MCU_AWSIZE),
        .S00_AXI_awvalid(vcu_M_AXI_MCU_AWVALID),
        .S00_AXI_bid(vcu_M_AXI_MCU_BID),
        .S00_AXI_bready(vcu_M_AXI_MCU_BREADY),
        .S00_AXI_bresp(vcu_M_AXI_MCU_BRESP),
        .S00_AXI_bvalid(vcu_M_AXI_MCU_BVALID),
        .S00_AXI_rdata(vcu_M_AXI_MCU_RDATA),
        .S00_AXI_rid(vcu_M_AXI_MCU_RID),
        .S00_AXI_rlast(vcu_M_AXI_MCU_RLAST),
        .S00_AXI_rready(vcu_M_AXI_MCU_RREADY),
        .S00_AXI_rresp(vcu_M_AXI_MCU_RRESP),
        .S00_AXI_rvalid(vcu_M_AXI_MCU_RVALID),
        .S00_AXI_wdata(vcu_M_AXI_MCU_WDATA),
        .S00_AXI_wlast(vcu_M_AXI_MCU_WLAST),
        .S00_AXI_wready(vcu_M_AXI_MCU_WREADY),
        .S00_AXI_wstrb(vcu_M_AXI_MCU_WSTRB),
        .S00_AXI_wvalid(vcu_M_AXI_MCU_WVALID),
        .aclk(clk_wiz_clk_mm),
        .aresetn(rst_clk_wiz_299M_peripheral_aresetn));
  design_1_axi_smc_1_0 axi_smc_vcu_1
       (.M00_AXI_araddr(axi_smc_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_1_M00_AXI_WVALID),
        .S00_AXI_araddr(vcu_M_AXI_ENC0_ARADDR),
        .S00_AXI_arburst(vcu_M_AXI_ENC0_ARBURST),
        .S00_AXI_arcache(vcu_M_AXI_ENC0_ARCACHE),
        .S00_AXI_arid(vcu_M_AXI_ENC0_ARID),
        .S00_AXI_arlen(vcu_M_AXI_ENC0_ARLEN),
        .S00_AXI_arlock(vcu_M_AXI_ENC0_ARLOCK),
        .S00_AXI_arprot(vcu_M_AXI_ENC0_ARPROT),
        .S00_AXI_arqos(vcu_M_AXI_ENC0_ARQOS),
        .S00_AXI_arready(vcu_M_AXI_ENC0_ARREADY),
        .S00_AXI_arsize(vcu_M_AXI_ENC0_ARSIZE),
        .S00_AXI_arvalid(vcu_M_AXI_ENC0_ARVALID),
        .S00_AXI_awaddr(vcu_M_AXI_ENC0_AWADDR),
        .S00_AXI_awburst(vcu_M_AXI_ENC0_AWBURST),
        .S00_AXI_awcache(vcu_M_AXI_ENC0_AWCACHE),
        .S00_AXI_awid(vcu_M_AXI_ENC0_AWID),
        .S00_AXI_awlen(vcu_M_AXI_ENC0_AWLEN),
        .S00_AXI_awlock(vcu_M_AXI_ENC0_AWLOCK),
        .S00_AXI_awprot(vcu_M_AXI_ENC0_AWPROT),
        .S00_AXI_awqos(vcu_M_AXI_ENC0_AWQOS),
        .S00_AXI_awready(vcu_M_AXI_ENC0_AWREADY),
        .S00_AXI_awsize(vcu_M_AXI_ENC0_AWSIZE),
        .S00_AXI_awvalid(vcu_M_AXI_ENC0_AWVALID),
        .S00_AXI_bid(vcu_M_AXI_ENC0_BID),
        .S00_AXI_bready(vcu_M_AXI_ENC0_BREADY),
        .S00_AXI_bresp(vcu_M_AXI_ENC0_BRESP),
        .S00_AXI_bvalid(vcu_M_AXI_ENC0_BVALID),
        .S00_AXI_rdata(vcu_M_AXI_ENC0_RDATA),
        .S00_AXI_rid(vcu_M_AXI_ENC0_RID),
        .S00_AXI_rlast(vcu_M_AXI_ENC0_RLAST),
        .S00_AXI_rready(vcu_M_AXI_ENC0_RREADY),
        .S00_AXI_rresp(vcu_M_AXI_ENC0_RRESP),
        .S00_AXI_rvalid(vcu_M_AXI_ENC0_RVALID),
        .S00_AXI_wdata(vcu_M_AXI_ENC0_WDATA),
        .S00_AXI_wlast(vcu_M_AXI_ENC0_WLAST),
        .S00_AXI_wready(vcu_M_AXI_ENC0_WREADY),
        .S00_AXI_wstrb(vcu_M_AXI_ENC0_WSTRB),
        .S00_AXI_wvalid(vcu_M_AXI_ENC0_WVALID),
        .S01_AXI_araddr(vcu_M_AXI_ENC1_ARADDR),
        .S01_AXI_arburst(vcu_M_AXI_ENC1_ARBURST),
        .S01_AXI_arcache(vcu_M_AXI_ENC1_ARCACHE),
        .S01_AXI_arid(vcu_M_AXI_ENC1_ARID),
        .S01_AXI_arlen(vcu_M_AXI_ENC1_ARLEN),
        .S01_AXI_arlock(vcu_M_AXI_ENC1_ARLOCK),
        .S01_AXI_arprot(vcu_M_AXI_ENC1_ARPROT),
        .S01_AXI_arqos(vcu_M_AXI_ENC1_ARQOS),
        .S01_AXI_arready(vcu_M_AXI_ENC1_ARREADY),
        .S01_AXI_arsize(vcu_M_AXI_ENC1_ARSIZE),
        .S01_AXI_arvalid(vcu_M_AXI_ENC1_ARVALID),
        .S01_AXI_awaddr(vcu_M_AXI_ENC1_AWADDR),
        .S01_AXI_awburst(vcu_M_AXI_ENC1_AWBURST),
        .S01_AXI_awcache(vcu_M_AXI_ENC1_AWCACHE),
        .S01_AXI_awid(vcu_M_AXI_ENC1_AWID),
        .S01_AXI_awlen(vcu_M_AXI_ENC1_AWLEN),
        .S01_AXI_awlock(vcu_M_AXI_ENC1_AWLOCK),
        .S01_AXI_awprot(vcu_M_AXI_ENC1_AWPROT),
        .S01_AXI_awqos(vcu_M_AXI_ENC1_AWQOS),
        .S01_AXI_awready(vcu_M_AXI_ENC1_AWREADY),
        .S01_AXI_awsize(vcu_M_AXI_ENC1_AWSIZE),
        .S01_AXI_awvalid(vcu_M_AXI_ENC1_AWVALID),
        .S01_AXI_bid(vcu_M_AXI_ENC1_BID),
        .S01_AXI_bready(vcu_M_AXI_ENC1_BREADY),
        .S01_AXI_bresp(vcu_M_AXI_ENC1_BRESP),
        .S01_AXI_bvalid(vcu_M_AXI_ENC1_BVALID),
        .S01_AXI_rdata(vcu_M_AXI_ENC1_RDATA),
        .S01_AXI_rid(vcu_M_AXI_ENC1_RID),
        .S01_AXI_rlast(vcu_M_AXI_ENC1_RLAST),
        .S01_AXI_rready(vcu_M_AXI_ENC1_RREADY),
        .S01_AXI_rresp(vcu_M_AXI_ENC1_RRESP),
        .S01_AXI_rvalid(vcu_M_AXI_ENC1_RVALID),
        .S01_AXI_wdata(vcu_M_AXI_ENC1_WDATA),
        .S01_AXI_wlast(vcu_M_AXI_ENC1_WLAST),
        .S01_AXI_wready(vcu_M_AXI_ENC1_WREADY),
        .S01_AXI_wstrb(vcu_M_AXI_ENC1_WSTRB),
        .S01_AXI_wvalid(vcu_M_AXI_ENC1_WVALID),
        .aclk(clk_wiz_clk_mm),
        .aresetn(rst_clk_wiz_299M_peripheral_aresetn));
  design_1_axi_smc_2_0 axi_smc_vcu_2
       (.M00_AXI_araddr(axi_smc_2_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_2_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_2_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_2_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_2_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_2_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_2_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_2_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_2_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_2_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_2_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_2_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_2_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_2_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_2_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_2_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_2_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_2_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_2_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_2_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_2_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_2_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_2_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_2_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_2_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_2_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_2_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_2_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_2_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_2_M00_AXI_WVALID),
        .S00_AXI_araddr(vcu_M_AXI_DEC0_ARADDR),
        .S00_AXI_arburst(vcu_M_AXI_DEC0_ARBURST),
        .S00_AXI_arcache(vcu_M_AXI_DEC0_ARCACHE),
        .S00_AXI_arid(vcu_M_AXI_DEC0_ARID),
        .S00_AXI_arlen(vcu_M_AXI_DEC0_ARLEN),
        .S00_AXI_arlock(vcu_M_AXI_DEC0_ARLOCK),
        .S00_AXI_arprot(vcu_M_AXI_DEC0_ARPROT),
        .S00_AXI_arqos(vcu_M_AXI_DEC0_ARQOS),
        .S00_AXI_arready(vcu_M_AXI_DEC0_ARREADY),
        .S00_AXI_arsize(vcu_M_AXI_DEC0_ARSIZE),
        .S00_AXI_arvalid(vcu_M_AXI_DEC0_ARVALID),
        .S00_AXI_awaddr(vcu_M_AXI_DEC0_AWADDR),
        .S00_AXI_awburst(vcu_M_AXI_DEC0_AWBURST),
        .S00_AXI_awcache(vcu_M_AXI_DEC0_AWCACHE),
        .S00_AXI_awid(vcu_M_AXI_DEC0_AWID),
        .S00_AXI_awlen(vcu_M_AXI_DEC0_AWLEN),
        .S00_AXI_awlock(vcu_M_AXI_DEC0_AWLOCK),
        .S00_AXI_awprot(vcu_M_AXI_DEC0_AWPROT),
        .S00_AXI_awqos(vcu_M_AXI_DEC0_AWQOS),
        .S00_AXI_awready(vcu_M_AXI_DEC0_AWREADY),
        .S00_AXI_awsize(vcu_M_AXI_DEC0_AWSIZE),
        .S00_AXI_awvalid(vcu_M_AXI_DEC0_AWVALID),
        .S00_AXI_bid(vcu_M_AXI_DEC0_BID),
        .S00_AXI_bready(vcu_M_AXI_DEC0_BREADY),
        .S00_AXI_bresp(vcu_M_AXI_DEC0_BRESP),
        .S00_AXI_bvalid(vcu_M_AXI_DEC0_BVALID),
        .S00_AXI_rdata(vcu_M_AXI_DEC0_RDATA),
        .S00_AXI_rid(vcu_M_AXI_DEC0_RID),
        .S00_AXI_rlast(vcu_M_AXI_DEC0_RLAST),
        .S00_AXI_rready(vcu_M_AXI_DEC0_RREADY),
        .S00_AXI_rresp(vcu_M_AXI_DEC0_RRESP),
        .S00_AXI_rvalid(vcu_M_AXI_DEC0_RVALID),
        .S00_AXI_wdata(vcu_M_AXI_DEC0_WDATA),
        .S00_AXI_wlast(vcu_M_AXI_DEC0_WLAST),
        .S00_AXI_wready(vcu_M_AXI_DEC0_WREADY),
        .S00_AXI_wstrb(vcu_M_AXI_DEC0_WSTRB),
        .S00_AXI_wvalid(vcu_M_AXI_DEC0_WVALID),
        .S01_AXI_araddr(vcu_M_AXI_DEC1_ARADDR),
        .S01_AXI_arburst(vcu_M_AXI_DEC1_ARBURST),
        .S01_AXI_arcache(vcu_M_AXI_DEC1_ARCACHE),
        .S01_AXI_arid(vcu_M_AXI_DEC1_ARID),
        .S01_AXI_arlen(vcu_M_AXI_DEC1_ARLEN),
        .S01_AXI_arlock(vcu_M_AXI_DEC1_ARLOCK),
        .S01_AXI_arprot(vcu_M_AXI_DEC1_ARPROT),
        .S01_AXI_arqos(vcu_M_AXI_DEC1_ARQOS),
        .S01_AXI_arready(vcu_M_AXI_DEC1_ARREADY),
        .S01_AXI_arsize(vcu_M_AXI_DEC1_ARSIZE),
        .S01_AXI_arvalid(vcu_M_AXI_DEC1_ARVALID),
        .S01_AXI_awaddr(vcu_M_AXI_DEC1_AWADDR),
        .S01_AXI_awburst(vcu_M_AXI_DEC1_AWBURST),
        .S01_AXI_awcache(vcu_M_AXI_DEC1_AWCACHE),
        .S01_AXI_awid(vcu_M_AXI_DEC1_AWID),
        .S01_AXI_awlen(vcu_M_AXI_DEC1_AWLEN),
        .S01_AXI_awlock(vcu_M_AXI_DEC1_AWLOCK),
        .S01_AXI_awprot(vcu_M_AXI_DEC1_AWPROT),
        .S01_AXI_awqos(vcu_M_AXI_DEC1_AWQOS),
        .S01_AXI_awready(vcu_M_AXI_DEC1_AWREADY),
        .S01_AXI_awsize(vcu_M_AXI_DEC1_AWSIZE),
        .S01_AXI_awvalid(vcu_M_AXI_DEC1_AWVALID),
        .S01_AXI_bid(vcu_M_AXI_DEC1_BID),
        .S01_AXI_bready(vcu_M_AXI_DEC1_BREADY),
        .S01_AXI_bresp(vcu_M_AXI_DEC1_BRESP),
        .S01_AXI_bvalid(vcu_M_AXI_DEC1_BVALID),
        .S01_AXI_rdata(vcu_M_AXI_DEC1_RDATA),
        .S01_AXI_rid(vcu_M_AXI_DEC1_RID),
        .S01_AXI_rlast(vcu_M_AXI_DEC1_RLAST),
        .S01_AXI_rready(vcu_M_AXI_DEC1_RREADY),
        .S01_AXI_rresp(vcu_M_AXI_DEC1_RRESP),
        .S01_AXI_rvalid(vcu_M_AXI_DEC1_RVALID),
        .S01_AXI_wdata(vcu_M_AXI_DEC1_WDATA),
        .S01_AXI_wlast(vcu_M_AXI_DEC1_WLAST),
        .S01_AXI_wready(vcu_M_AXI_DEC1_WREADY),
        .S01_AXI_wstrb(vcu_M_AXI_DEC1_WSTRB),
        .S01_AXI_wvalid(vcu_M_AXI_DEC1_WVALID),
        .aclk(clk_wiz_clk_mm),
        .aresetn(rst_clk_wiz_299M_peripheral_aresetn));
  camif_ias1_imp_1C8CI1 camif_ias1
       (.axi_arstn_wr(axi_arstn_wr_1),
        .axi_ctrl_aclk(clk_wiz_clk_ctrl),
        .axi_ctrl_arstn(rst_clk_wiz_99M_peripheral_aresetn),
        .axi_mm_aclk(clk_wiz_clk_mm),
        .axi_mm_arstn(rst_clk_wiz_299M_peripheral_aresetn),
        .irq_mipi_rx(camif_ias1_irq_mipi_rx),
        .irq_wr(camif_ias1_irq_wr),
        .m_axi_mm_wr_araddr(camif_ias1_m_axi_mm_wr_ARADDR),
        .m_axi_mm_wr_arburst(camif_ias1_m_axi_mm_wr_ARBURST),
        .m_axi_mm_wr_arcache(camif_ias1_m_axi_mm_wr_ARCACHE),
        .m_axi_mm_wr_arlen(camif_ias1_m_axi_mm_wr_ARLEN),
        .m_axi_mm_wr_arlock(camif_ias1_m_axi_mm_wr_ARLOCK),
        .m_axi_mm_wr_arprot(camif_ias1_m_axi_mm_wr_ARPROT),
        .m_axi_mm_wr_arqos(camif_ias1_m_axi_mm_wr_ARQOS),
        .m_axi_mm_wr_arready(camif_ias1_m_axi_mm_wr_ARREADY),
        .m_axi_mm_wr_arsize(camif_ias1_m_axi_mm_wr_ARSIZE),
        .m_axi_mm_wr_arvalid(camif_ias1_m_axi_mm_wr_ARVALID),
        .m_axi_mm_wr_awaddr(camif_ias1_m_axi_mm_wr_AWADDR),
        .m_axi_mm_wr_awburst(camif_ias1_m_axi_mm_wr_AWBURST),
        .m_axi_mm_wr_awcache(camif_ias1_m_axi_mm_wr_AWCACHE),
        .m_axi_mm_wr_awlen(camif_ias1_m_axi_mm_wr_AWLEN),
        .m_axi_mm_wr_awlock(camif_ias1_m_axi_mm_wr_AWLOCK),
        .m_axi_mm_wr_awprot(camif_ias1_m_axi_mm_wr_AWPROT),
        .m_axi_mm_wr_awqos(camif_ias1_m_axi_mm_wr_AWQOS),
        .m_axi_mm_wr_awready(camif_ias1_m_axi_mm_wr_AWREADY),
        .m_axi_mm_wr_awsize(camif_ias1_m_axi_mm_wr_AWSIZE),
        .m_axi_mm_wr_awvalid(camif_ias1_m_axi_mm_wr_AWVALID),
        .m_axi_mm_wr_bready(camif_ias1_m_axi_mm_wr_BREADY),
        .m_axi_mm_wr_bresp(camif_ias1_m_axi_mm_wr_BRESP),
        .m_axi_mm_wr_bvalid(camif_ias1_m_axi_mm_wr_BVALID),
        .m_axi_mm_wr_rdata(camif_ias1_m_axi_mm_wr_RDATA),
        .m_axi_mm_wr_rlast(camif_ias1_m_axi_mm_wr_RLAST),
        .m_axi_mm_wr_rready(camif_ias1_m_axi_mm_wr_RREADY),
        .m_axi_mm_wr_rresp(camif_ias1_m_axi_mm_wr_RRESP),
        .m_axi_mm_wr_rvalid(camif_ias1_m_axi_mm_wr_RVALID),
        .m_axi_mm_wr_wdata(camif_ias1_m_axi_mm_wr_WDATA),
        .m_axi_mm_wr_wlast(camif_ias1_m_axi_mm_wr_WLAST),
        .m_axi_mm_wr_wready(camif_ias1_m_axi_mm_wr_WREADY),
        .m_axi_mm_wr_wstrb(camif_ias1_m_axi_mm_wr_WSTRB),
        .m_axi_mm_wr_wvalid(camif_ias1_m_axi_mm_wr_WVALID),
        .mipi_rx_dphy_if_clk_n(mipi_rx_ias1_1_CLK_N),
        .mipi_rx_dphy_if_clk_p(mipi_rx_ias1_1_CLK_P),
        .mipi_rx_dphy_if_data_n(mipi_rx_ias1_1_DATA_N),
        .mipi_rx_dphy_if_data_p(mipi_rx_ias1_1_DATA_P),
        .s_axi_ctrl_mipi_rx_araddr(ps8_0_axi_periph_M07_AXI_ARADDR),
        .s_axi_ctrl_mipi_rx_arprot(ps8_0_axi_periph_M07_AXI_ARPROT),
        .s_axi_ctrl_mipi_rx_arready(ps8_0_axi_periph_M07_AXI_ARREADY),
        .s_axi_ctrl_mipi_rx_arvalid(ps8_0_axi_periph_M07_AXI_ARVALID),
        .s_axi_ctrl_mipi_rx_awaddr(ps8_0_axi_periph_M07_AXI_AWADDR),
        .s_axi_ctrl_mipi_rx_awprot(ps8_0_axi_periph_M07_AXI_AWPROT),
        .s_axi_ctrl_mipi_rx_awready(ps8_0_axi_periph_M07_AXI_AWREADY),
        .s_axi_ctrl_mipi_rx_awvalid(ps8_0_axi_periph_M07_AXI_AWVALID),
        .s_axi_ctrl_mipi_rx_bready(ps8_0_axi_periph_M07_AXI_BREADY),
        .s_axi_ctrl_mipi_rx_bresp(ps8_0_axi_periph_M07_AXI_BRESP),
        .s_axi_ctrl_mipi_rx_bvalid(ps8_0_axi_periph_M07_AXI_BVALID),
        .s_axi_ctrl_mipi_rx_rdata(ps8_0_axi_periph_M07_AXI_RDATA),
        .s_axi_ctrl_mipi_rx_rready(ps8_0_axi_periph_M07_AXI_RREADY),
        .s_axi_ctrl_mipi_rx_rresp(ps8_0_axi_periph_M07_AXI_RRESP),
        .s_axi_ctrl_mipi_rx_rvalid(ps8_0_axi_periph_M07_AXI_RVALID),
        .s_axi_ctrl_mipi_rx_wdata(ps8_0_axi_periph_M07_AXI_WDATA),
        .s_axi_ctrl_mipi_rx_wready(ps8_0_axi_periph_M07_AXI_WREADY),
        .s_axi_ctrl_mipi_rx_wstrb(ps8_0_axi_periph_M07_AXI_WSTRB),
        .s_axi_ctrl_mipi_rx_wvalid(ps8_0_axi_periph_M07_AXI_WVALID),
        .s_axi_ctrl_wr_araddr(ps8_0_axi_periph_1_M03_AXI_ARADDR),
        .s_axi_ctrl_wr_arready(ps8_0_axi_periph_1_M03_AXI_ARREADY),
        .s_axi_ctrl_wr_arvalid(ps8_0_axi_periph_1_M03_AXI_ARVALID),
        .s_axi_ctrl_wr_awaddr(ps8_0_axi_periph_1_M03_AXI_AWADDR),
        .s_axi_ctrl_wr_awready(ps8_0_axi_periph_1_M03_AXI_AWREADY),
        .s_axi_ctrl_wr_awvalid(ps8_0_axi_periph_1_M03_AXI_AWVALID),
        .s_axi_ctrl_wr_bready(ps8_0_axi_periph_1_M03_AXI_BREADY),
        .s_axi_ctrl_wr_bresp(ps8_0_axi_periph_1_M03_AXI_BRESP),
        .s_axi_ctrl_wr_bvalid(ps8_0_axi_periph_1_M03_AXI_BVALID),
        .s_axi_ctrl_wr_rdata(ps8_0_axi_periph_1_M03_AXI_RDATA),
        .s_axi_ctrl_wr_rready(ps8_0_axi_periph_1_M03_AXI_RREADY),
        .s_axi_ctrl_wr_rresp(ps8_0_axi_periph_1_M03_AXI_RRESP),
        .s_axi_ctrl_wr_rvalid(ps8_0_axi_periph_1_M03_AXI_RVALID),
        .s_axi_ctrl_wr_wdata(ps8_0_axi_periph_1_M03_AXI_WDATA),
        .s_axi_ctrl_wr_wready(ps8_0_axi_periph_1_M03_AXI_WREADY),
        .s_axi_ctrl_wr_wstrb(ps8_0_axi_periph_1_M03_AXI_WSTRB),
        .s_axi_ctrl_wr_wvalid(ps8_0_axi_periph_1_M03_AXI_WVALID));
  camif_rpi_imp_1FWIAPX camif_rpi
       (.axi_arstn_wr(axi_arstn_wr_2),
        .axi_ctrl_aclk(clk_wiz_clk_ctrl),
        .axi_ctrl_arstn(rst_clk_wiz_99M_peripheral_aresetn),
        .axi_mm_aclk(zynq_ultra_ps_e_0_pl_clk1),
        .axi_mm_arstn(rst_ps8_0_99M_peripheral_aresetn),
        .m_axi_mm_wr_araddr(camif_rpi_m_axi_mm_wr_ARADDR),
        .m_axi_mm_wr_arburst(camif_rpi_m_axi_mm_wr_ARBURST),
        .m_axi_mm_wr_arcache(camif_rpi_m_axi_mm_wr_ARCACHE),
        .m_axi_mm_wr_arlen(camif_rpi_m_axi_mm_wr_ARLEN),
        .m_axi_mm_wr_arlock(camif_rpi_m_axi_mm_wr_ARLOCK),
        .m_axi_mm_wr_arprot(camif_rpi_m_axi_mm_wr_ARPROT),
        .m_axi_mm_wr_arqos(camif_rpi_m_axi_mm_wr_ARQOS),
        .m_axi_mm_wr_arready(camif_rpi_m_axi_mm_wr_ARREADY),
        .m_axi_mm_wr_arsize(camif_rpi_m_axi_mm_wr_ARSIZE),
        .m_axi_mm_wr_arvalid(camif_rpi_m_axi_mm_wr_ARVALID),
        .m_axi_mm_wr_awaddr(camif_rpi_m_axi_mm_wr_AWADDR),
        .m_axi_mm_wr_awburst(camif_rpi_m_axi_mm_wr_AWBURST),
        .m_axi_mm_wr_awcache(camif_rpi_m_axi_mm_wr_AWCACHE),
        .m_axi_mm_wr_awlen(camif_rpi_m_axi_mm_wr_AWLEN),
        .m_axi_mm_wr_awlock(camif_rpi_m_axi_mm_wr_AWLOCK),
        .m_axi_mm_wr_awprot(camif_rpi_m_axi_mm_wr_AWPROT),
        .m_axi_mm_wr_awqos(camif_rpi_m_axi_mm_wr_AWQOS),
        .m_axi_mm_wr_awready(camif_rpi_m_axi_mm_wr_AWREADY),
        .m_axi_mm_wr_awsize(camif_rpi_m_axi_mm_wr_AWSIZE),
        .m_axi_mm_wr_awvalid(camif_rpi_m_axi_mm_wr_AWVALID),
        .m_axi_mm_wr_bready(camif_rpi_m_axi_mm_wr_BREADY),
        .m_axi_mm_wr_bresp(camif_rpi_m_axi_mm_wr_BRESP),
        .m_axi_mm_wr_bvalid(camif_rpi_m_axi_mm_wr_BVALID),
        .m_axi_mm_wr_rdata(camif_rpi_m_axi_mm_wr_RDATA),
        .m_axi_mm_wr_rlast(camif_rpi_m_axi_mm_wr_RLAST),
        .m_axi_mm_wr_rready(camif_rpi_m_axi_mm_wr_RREADY),
        .m_axi_mm_wr_rresp(camif_rpi_m_axi_mm_wr_RRESP),
        .m_axi_mm_wr_rvalid(camif_rpi_m_axi_mm_wr_RVALID),
        .m_axi_mm_wr_wdata(camif_rpi_m_axi_mm_wr_WDATA),
        .m_axi_mm_wr_wlast(camif_rpi_m_axi_mm_wr_WLAST),
        .m_axi_mm_wr_wready(camif_rpi_m_axi_mm_wr_WREADY),
        .m_axi_mm_wr_wstrb(camif_rpi_m_axi_mm_wr_WSTRB),
        .m_axi_mm_wr_wvalid(camif_rpi_m_axi_mm_wr_WVALID),
        .mipi_rx_dphy_if_clk_n(mipi_rx_rpi_1_CLK_N),
        .mipi_rx_dphy_if_clk_p(mipi_rx_rpi_1_CLK_P),
        .mipi_rx_dphy_if_data_n(mipi_rx_rpi_1_DATA_N),
        .mipi_rx_dphy_if_data_p(mipi_rx_rpi_1_DATA_P),
        .s_axi_ctrl_mipi_rx_araddr(ps8_0_axi_periph_M08_AXI_ARADDR),
        .s_axi_ctrl_mipi_rx_arprot(ps8_0_axi_periph_M08_AXI_ARPROT),
        .s_axi_ctrl_mipi_rx_arready(ps8_0_axi_periph_M08_AXI_ARREADY),
        .s_axi_ctrl_mipi_rx_arvalid(ps8_0_axi_periph_M08_AXI_ARVALID),
        .s_axi_ctrl_mipi_rx_awaddr(ps8_0_axi_periph_M08_AXI_AWADDR),
        .s_axi_ctrl_mipi_rx_awprot(ps8_0_axi_periph_M08_AXI_AWPROT),
        .s_axi_ctrl_mipi_rx_awready(ps8_0_axi_periph_M08_AXI_AWREADY),
        .s_axi_ctrl_mipi_rx_awvalid(ps8_0_axi_periph_M08_AXI_AWVALID),
        .s_axi_ctrl_mipi_rx_bready(ps8_0_axi_periph_M08_AXI_BREADY),
        .s_axi_ctrl_mipi_rx_bresp(ps8_0_axi_periph_M08_AXI_BRESP),
        .s_axi_ctrl_mipi_rx_bvalid(ps8_0_axi_periph_M08_AXI_BVALID),
        .s_axi_ctrl_mipi_rx_rdata(ps8_0_axi_periph_M08_AXI_RDATA),
        .s_axi_ctrl_mipi_rx_rready(ps8_0_axi_periph_M08_AXI_RREADY),
        .s_axi_ctrl_mipi_rx_rresp(ps8_0_axi_periph_M08_AXI_RRESP),
        .s_axi_ctrl_mipi_rx_rvalid(ps8_0_axi_periph_M08_AXI_RVALID),
        .s_axi_ctrl_mipi_rx_wdata(ps8_0_axi_periph_M08_AXI_WDATA),
        .s_axi_ctrl_mipi_rx_wready(ps8_0_axi_periph_M08_AXI_WREADY),
        .s_axi_ctrl_mipi_rx_wstrb(ps8_0_axi_periph_M08_AXI_WSTRB),
        .s_axi_ctrl_mipi_rx_wvalid(ps8_0_axi_periph_M08_AXI_WVALID),
        .s_axi_ctrl_wr_araddr(ps8_0_axi_periph_1_M04_AXI_ARADDR),
        .s_axi_ctrl_wr_arready(ps8_0_axi_periph_1_M04_AXI_ARREADY),
        .s_axi_ctrl_wr_arvalid(ps8_0_axi_periph_1_M04_AXI_ARVALID),
        .s_axi_ctrl_wr_awaddr(ps8_0_axi_periph_1_M04_AXI_AWADDR),
        .s_axi_ctrl_wr_awready(ps8_0_axi_periph_1_M04_AXI_AWREADY),
        .s_axi_ctrl_wr_awvalid(ps8_0_axi_periph_1_M04_AXI_AWVALID),
        .s_axi_ctrl_wr_bready(ps8_0_axi_periph_1_M04_AXI_BREADY),
        .s_axi_ctrl_wr_bresp(ps8_0_axi_periph_1_M04_AXI_BRESP),
        .s_axi_ctrl_wr_bvalid(ps8_0_axi_periph_1_M04_AXI_BVALID),
        .s_axi_ctrl_wr_rdata(ps8_0_axi_periph_1_M04_AXI_RDATA),
        .s_axi_ctrl_wr_rready(ps8_0_axi_periph_1_M04_AXI_RREADY),
        .s_axi_ctrl_wr_rresp(ps8_0_axi_periph_1_M04_AXI_RRESP),
        .s_axi_ctrl_wr_rvalid(ps8_0_axi_periph_1_M04_AXI_RVALID),
        .s_axi_ctrl_wr_wdata(ps8_0_axi_periph_1_M04_AXI_WDATA),
        .s_axi_ctrl_wr_wready(ps8_0_axi_periph_1_M04_AXI_WREADY),
        .s_axi_ctrl_wr_wstrb(ps8_0_axi_periph_1_M04_AXI_WSTRB),
        .s_axi_ctrl_wr_wvalid(ps8_0_axi_periph_1_M04_AXI_WVALID));
  design_1_clk_wiz_0_0 clk_wiz
       (.clk_ctrl(clk_wiz_clk_ctrl),
        .clk_in1(zynq_ultra_ps_e_0_pl_clk1),
        .clk_isp(clk_wiz_clk_isp),
        .clk_mm(clk_wiz_clk_mm),
        .clk_vcu(clk_wiz_clk_vcu));
  gpio_slice_imp_UXAHX5 gpio_slice
       (.Dout_0(gpio_slice_Dout_0),
        .Dout_1(gpio_slice_Dout_1),
        .Dout_2(gpio_slice_Dout_2),
        .Dout_3(gpio_slice_Dout_3),
        .Dout_4(axi_arstn_wr_1),
        .Dout_5(axi_arstn_wr_2),
        .Dout_8_10(xlslice_4_Dout),
        .axi_ctrl_aclk(clk_wiz_clk_ctrl),
        .axi_ctrl_arstn(rst_clk_wiz_99M_peripheral_aresetn),
        .s_axi_ctrl_araddr(ps8_0_axi_periph_M02_AXI_ARADDR),
        .s_axi_ctrl_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_ctrl_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_ctrl_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR),
        .s_axi_ctrl_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_ctrl_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_ctrl_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_ctrl_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_ctrl_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_ctrl_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_ctrl_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_ctrl_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_ctrl_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_ctrl_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_ctrl_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_ctrl_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_ctrl_wvalid(ps8_0_axi_periph_M02_AXI_WVALID));
  isp_pipe_imp_1RRJHAC isp_pipe
       (.axi_arstn_rd(gpio_slice_Dout_1),
        .axi_arstn_wr_1(gpio_slice_Dout_2),
        .axi_arstn_wr_2(gpio_slice_Dout_3),
        .axi_ctrl_aclk(clk_wiz_clk_ctrl),
        .axi_ctrl_arstn(rst_clk_wiz_99M_peripheral_aresetn),
        .axi_mm_aclk(clk_wiz_clk_mm),
        .axi_mm_arstn(rst_clk_wiz_299M_peripheral_aresetn),
        .irq_isp(isp_pipe_irq_isp),
        .irq_rd(isp_pipe_irq_rd),
        .irq_vip_1(isp_pipe_irq_vip_1),
        .irq_vip_2(isp_pipe_irq_vip_2),
        .irq_wr_1(isp_pipe_irq_wr_1),
        .irq_wr_2(isp_pipe_irq_wr_2),
        .m_axi_mm_rd_araddr(isp_pipe_m_axi_mm_rd_ARADDR),
        .m_axi_mm_rd_arburst(isp_pipe_m_axi_mm_rd_ARBURST),
        .m_axi_mm_rd_arcache(isp_pipe_m_axi_mm_rd_ARCACHE),
        .m_axi_mm_rd_arlen(isp_pipe_m_axi_mm_rd_ARLEN),
        .m_axi_mm_rd_arlock(isp_pipe_m_axi_mm_rd_ARLOCK),
        .m_axi_mm_rd_arprot(isp_pipe_m_axi_mm_rd_ARPROT),
        .m_axi_mm_rd_arqos(isp_pipe_m_axi_mm_rd_ARQOS),
        .m_axi_mm_rd_arready(isp_pipe_m_axi_mm_rd_ARREADY),
        .m_axi_mm_rd_arsize(isp_pipe_m_axi_mm_rd_ARSIZE),
        .m_axi_mm_rd_arvalid(isp_pipe_m_axi_mm_rd_ARVALID),
        .m_axi_mm_rd_awaddr(isp_pipe_m_axi_mm_rd_AWADDR),
        .m_axi_mm_rd_awburst(isp_pipe_m_axi_mm_rd_AWBURST),
        .m_axi_mm_rd_awcache(isp_pipe_m_axi_mm_rd_AWCACHE),
        .m_axi_mm_rd_awlen(isp_pipe_m_axi_mm_rd_AWLEN),
        .m_axi_mm_rd_awlock(isp_pipe_m_axi_mm_rd_AWLOCK),
        .m_axi_mm_rd_awprot(isp_pipe_m_axi_mm_rd_AWPROT),
        .m_axi_mm_rd_awqos(isp_pipe_m_axi_mm_rd_AWQOS),
        .m_axi_mm_rd_awready(isp_pipe_m_axi_mm_rd_AWREADY),
        .m_axi_mm_rd_awsize(isp_pipe_m_axi_mm_rd_AWSIZE),
        .m_axi_mm_rd_awvalid(isp_pipe_m_axi_mm_rd_AWVALID),
        .m_axi_mm_rd_bready(isp_pipe_m_axi_mm_rd_BREADY),
        .m_axi_mm_rd_bresp(isp_pipe_m_axi_mm_rd_BRESP),
        .m_axi_mm_rd_bvalid(isp_pipe_m_axi_mm_rd_BVALID),
        .m_axi_mm_rd_rdata(isp_pipe_m_axi_mm_rd_RDATA),
        .m_axi_mm_rd_rlast(isp_pipe_m_axi_mm_rd_RLAST),
        .m_axi_mm_rd_rready(isp_pipe_m_axi_mm_rd_RREADY),
        .m_axi_mm_rd_rresp(isp_pipe_m_axi_mm_rd_RRESP),
        .m_axi_mm_rd_rvalid(isp_pipe_m_axi_mm_rd_RVALID),
        .m_axi_mm_rd_wdata(isp_pipe_m_axi_mm_rd_WDATA),
        .m_axi_mm_rd_wlast(isp_pipe_m_axi_mm_rd_WLAST),
        .m_axi_mm_rd_wready(isp_pipe_m_axi_mm_rd_WREADY),
        .m_axi_mm_rd_wstrb(isp_pipe_m_axi_mm_rd_WSTRB),
        .m_axi_mm_rd_wvalid(isp_pipe_m_axi_mm_rd_WVALID),
        .m_axi_mm_wr_1_araddr(isp_pipe_m_axi_mm_wr_1_ARADDR),
        .m_axi_mm_wr_1_arburst(isp_pipe_m_axi_mm_wr_1_ARBURST),
        .m_axi_mm_wr_1_arcache(isp_pipe_m_axi_mm_wr_1_ARCACHE),
        .m_axi_mm_wr_1_arlen(isp_pipe_m_axi_mm_wr_1_ARLEN),
        .m_axi_mm_wr_1_arlock(isp_pipe_m_axi_mm_wr_1_ARLOCK),
        .m_axi_mm_wr_1_arprot(isp_pipe_m_axi_mm_wr_1_ARPROT),
        .m_axi_mm_wr_1_arqos(isp_pipe_m_axi_mm_wr_1_ARQOS),
        .m_axi_mm_wr_1_arready(isp_pipe_m_axi_mm_wr_1_ARREADY),
        .m_axi_mm_wr_1_arsize(isp_pipe_m_axi_mm_wr_1_ARSIZE),
        .m_axi_mm_wr_1_arvalid(isp_pipe_m_axi_mm_wr_1_ARVALID),
        .m_axi_mm_wr_1_awaddr(isp_pipe_m_axi_mm_wr_1_AWADDR),
        .m_axi_mm_wr_1_awburst(isp_pipe_m_axi_mm_wr_1_AWBURST),
        .m_axi_mm_wr_1_awcache(isp_pipe_m_axi_mm_wr_1_AWCACHE),
        .m_axi_mm_wr_1_awlen(isp_pipe_m_axi_mm_wr_1_AWLEN),
        .m_axi_mm_wr_1_awlock(isp_pipe_m_axi_mm_wr_1_AWLOCK),
        .m_axi_mm_wr_1_awprot(isp_pipe_m_axi_mm_wr_1_AWPROT),
        .m_axi_mm_wr_1_awqos(isp_pipe_m_axi_mm_wr_1_AWQOS),
        .m_axi_mm_wr_1_awready(isp_pipe_m_axi_mm_wr_1_AWREADY),
        .m_axi_mm_wr_1_awsize(isp_pipe_m_axi_mm_wr_1_AWSIZE),
        .m_axi_mm_wr_1_awvalid(isp_pipe_m_axi_mm_wr_1_AWVALID),
        .m_axi_mm_wr_1_bready(isp_pipe_m_axi_mm_wr_1_BREADY),
        .m_axi_mm_wr_1_bresp(isp_pipe_m_axi_mm_wr_1_BRESP),
        .m_axi_mm_wr_1_bvalid(isp_pipe_m_axi_mm_wr_1_BVALID),
        .m_axi_mm_wr_1_rdata(isp_pipe_m_axi_mm_wr_1_RDATA),
        .m_axi_mm_wr_1_rlast(isp_pipe_m_axi_mm_wr_1_RLAST),
        .m_axi_mm_wr_1_rready(isp_pipe_m_axi_mm_wr_1_RREADY),
        .m_axi_mm_wr_1_rresp(isp_pipe_m_axi_mm_wr_1_RRESP),
        .m_axi_mm_wr_1_rvalid(isp_pipe_m_axi_mm_wr_1_RVALID),
        .m_axi_mm_wr_1_wdata(isp_pipe_m_axi_mm_wr_1_WDATA),
        .m_axi_mm_wr_1_wlast(isp_pipe_m_axi_mm_wr_1_WLAST),
        .m_axi_mm_wr_1_wready(isp_pipe_m_axi_mm_wr_1_WREADY),
        .m_axi_mm_wr_1_wstrb(isp_pipe_m_axi_mm_wr_1_WSTRB),
        .m_axi_mm_wr_1_wvalid(isp_pipe_m_axi_mm_wr_1_WVALID),
        .m_axi_mm_wr_2_araddr(isp_pipe_m_axi_mm_wr_2_ARADDR),
        .m_axi_mm_wr_2_arburst(isp_pipe_m_axi_mm_wr_2_ARBURST),
        .m_axi_mm_wr_2_arcache(isp_pipe_m_axi_mm_wr_2_ARCACHE),
        .m_axi_mm_wr_2_arlen(isp_pipe_m_axi_mm_wr_2_ARLEN),
        .m_axi_mm_wr_2_arlock(isp_pipe_m_axi_mm_wr_2_ARLOCK),
        .m_axi_mm_wr_2_arprot(isp_pipe_m_axi_mm_wr_2_ARPROT),
        .m_axi_mm_wr_2_arqos(isp_pipe_m_axi_mm_wr_2_ARQOS),
        .m_axi_mm_wr_2_arready(isp_pipe_m_axi_mm_wr_2_ARREADY),
        .m_axi_mm_wr_2_arsize(isp_pipe_m_axi_mm_wr_2_ARSIZE),
        .m_axi_mm_wr_2_arvalid(isp_pipe_m_axi_mm_wr_2_ARVALID),
        .m_axi_mm_wr_2_awaddr(isp_pipe_m_axi_mm_wr_2_AWADDR),
        .m_axi_mm_wr_2_awburst(isp_pipe_m_axi_mm_wr_2_AWBURST),
        .m_axi_mm_wr_2_awcache(isp_pipe_m_axi_mm_wr_2_AWCACHE),
        .m_axi_mm_wr_2_awlen(isp_pipe_m_axi_mm_wr_2_AWLEN),
        .m_axi_mm_wr_2_awlock(isp_pipe_m_axi_mm_wr_2_AWLOCK),
        .m_axi_mm_wr_2_awprot(isp_pipe_m_axi_mm_wr_2_AWPROT),
        .m_axi_mm_wr_2_awqos(isp_pipe_m_axi_mm_wr_2_AWQOS),
        .m_axi_mm_wr_2_awready(isp_pipe_m_axi_mm_wr_2_AWREADY),
        .m_axi_mm_wr_2_awsize(isp_pipe_m_axi_mm_wr_2_AWSIZE),
        .m_axi_mm_wr_2_awvalid(isp_pipe_m_axi_mm_wr_2_AWVALID),
        .m_axi_mm_wr_2_bready(isp_pipe_m_axi_mm_wr_2_BREADY),
        .m_axi_mm_wr_2_bresp(isp_pipe_m_axi_mm_wr_2_BRESP),
        .m_axi_mm_wr_2_bvalid(isp_pipe_m_axi_mm_wr_2_BVALID),
        .m_axi_mm_wr_2_rdata(isp_pipe_m_axi_mm_wr_2_RDATA),
        .m_axi_mm_wr_2_rlast(isp_pipe_m_axi_mm_wr_2_RLAST),
        .m_axi_mm_wr_2_rready(isp_pipe_m_axi_mm_wr_2_RREADY),
        .m_axi_mm_wr_2_rresp(isp_pipe_m_axi_mm_wr_2_RRESP),
        .m_axi_mm_wr_2_rvalid(isp_pipe_m_axi_mm_wr_2_RVALID),
        .m_axi_mm_wr_2_wdata(isp_pipe_m_axi_mm_wr_2_WDATA),
        .m_axi_mm_wr_2_wlast(isp_pipe_m_axi_mm_wr_2_WLAST),
        .m_axi_mm_wr_2_wready(isp_pipe_m_axi_mm_wr_2_WREADY),
        .m_axi_mm_wr_2_wstrb(isp_pipe_m_axi_mm_wr_2_WSTRB),
        .m_axi_mm_wr_2_wvalid(isp_pipe_m_axi_mm_wr_2_WVALID),
        .s_axi_ctrl_isp_araddr(ps8_0_axi_periph_M04_AXI_ARADDR),
        .s_axi_ctrl_isp_arprot(ps8_0_axi_periph_M04_AXI_ARPROT),
        .s_axi_ctrl_isp_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .s_axi_ctrl_isp_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .s_axi_ctrl_isp_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR),
        .s_axi_ctrl_isp_awprot(ps8_0_axi_periph_M04_AXI_AWPROT),
        .s_axi_ctrl_isp_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .s_axi_ctrl_isp_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .s_axi_ctrl_isp_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .s_axi_ctrl_isp_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .s_axi_ctrl_isp_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .s_axi_ctrl_isp_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .s_axi_ctrl_isp_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .s_axi_ctrl_isp_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .s_axi_ctrl_isp_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .s_axi_ctrl_isp_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .s_axi_ctrl_isp_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .s_axi_ctrl_isp_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .s_axi_ctrl_isp_wvalid(ps8_0_axi_periph_M04_AXI_WVALID),
        .s_axi_ctrl_rd_araddr(ps8_0_axi_periph_1_M00_AXI_ARADDR),
        .s_axi_ctrl_rd_arready(ps8_0_axi_periph_1_M00_AXI_ARREADY),
        .s_axi_ctrl_rd_arvalid(ps8_0_axi_periph_1_M00_AXI_ARVALID),
        .s_axi_ctrl_rd_awaddr(ps8_0_axi_periph_1_M00_AXI_AWADDR),
        .s_axi_ctrl_rd_awready(ps8_0_axi_periph_1_M00_AXI_AWREADY),
        .s_axi_ctrl_rd_awvalid(ps8_0_axi_periph_1_M00_AXI_AWVALID),
        .s_axi_ctrl_rd_bready(ps8_0_axi_periph_1_M00_AXI_BREADY),
        .s_axi_ctrl_rd_bresp(ps8_0_axi_periph_1_M00_AXI_BRESP),
        .s_axi_ctrl_rd_bvalid(ps8_0_axi_periph_1_M00_AXI_BVALID),
        .s_axi_ctrl_rd_rdata(ps8_0_axi_periph_1_M00_AXI_RDATA),
        .s_axi_ctrl_rd_rready(ps8_0_axi_periph_1_M00_AXI_RREADY),
        .s_axi_ctrl_rd_rresp(ps8_0_axi_periph_1_M00_AXI_RRESP),
        .s_axi_ctrl_rd_rvalid(ps8_0_axi_periph_1_M00_AXI_RVALID),
        .s_axi_ctrl_rd_wdata(ps8_0_axi_periph_1_M00_AXI_WDATA),
        .s_axi_ctrl_rd_wready(ps8_0_axi_periph_1_M00_AXI_WREADY),
        .s_axi_ctrl_rd_wstrb(ps8_0_axi_periph_1_M00_AXI_WSTRB),
        .s_axi_ctrl_rd_wvalid(ps8_0_axi_periph_1_M00_AXI_WVALID),
        .s_axi_ctrl_vip_1_araddr(ps8_0_axi_periph_M05_AXI_ARADDR),
        .s_axi_ctrl_vip_1_arprot(ps8_0_axi_periph_M05_AXI_ARPROT),
        .s_axi_ctrl_vip_1_arready(ps8_0_axi_periph_M05_AXI_ARREADY),
        .s_axi_ctrl_vip_1_arvalid(ps8_0_axi_periph_M05_AXI_ARVALID),
        .s_axi_ctrl_vip_1_awaddr(ps8_0_axi_periph_M05_AXI_AWADDR),
        .s_axi_ctrl_vip_1_awprot(ps8_0_axi_periph_M05_AXI_AWPROT),
        .s_axi_ctrl_vip_1_awready(ps8_0_axi_periph_M05_AXI_AWREADY),
        .s_axi_ctrl_vip_1_awvalid(ps8_0_axi_periph_M05_AXI_AWVALID),
        .s_axi_ctrl_vip_1_bready(ps8_0_axi_periph_M05_AXI_BREADY),
        .s_axi_ctrl_vip_1_bresp(ps8_0_axi_periph_M05_AXI_BRESP),
        .s_axi_ctrl_vip_1_bvalid(ps8_0_axi_periph_M05_AXI_BVALID),
        .s_axi_ctrl_vip_1_rdata(ps8_0_axi_periph_M05_AXI_RDATA),
        .s_axi_ctrl_vip_1_rready(ps8_0_axi_periph_M05_AXI_RREADY),
        .s_axi_ctrl_vip_1_rresp(ps8_0_axi_periph_M05_AXI_RRESP),
        .s_axi_ctrl_vip_1_rvalid(ps8_0_axi_periph_M05_AXI_RVALID),
        .s_axi_ctrl_vip_1_wdata(ps8_0_axi_periph_M05_AXI_WDATA),
        .s_axi_ctrl_vip_1_wready(ps8_0_axi_periph_M05_AXI_WREADY),
        .s_axi_ctrl_vip_1_wstrb(ps8_0_axi_periph_M05_AXI_WSTRB),
        .s_axi_ctrl_vip_1_wvalid(ps8_0_axi_periph_M05_AXI_WVALID),
        .s_axi_ctrl_vip_2_araddr(ps8_0_axi_periph_M06_AXI_ARADDR),
        .s_axi_ctrl_vip_2_arprot(ps8_0_axi_periph_M06_AXI_ARPROT),
        .s_axi_ctrl_vip_2_arready(ps8_0_axi_periph_M06_AXI_ARREADY),
        .s_axi_ctrl_vip_2_arvalid(ps8_0_axi_periph_M06_AXI_ARVALID),
        .s_axi_ctrl_vip_2_awaddr(ps8_0_axi_periph_M06_AXI_AWADDR),
        .s_axi_ctrl_vip_2_awprot(ps8_0_axi_periph_M06_AXI_AWPROT),
        .s_axi_ctrl_vip_2_awready(ps8_0_axi_periph_M06_AXI_AWREADY),
        .s_axi_ctrl_vip_2_awvalid(ps8_0_axi_periph_M06_AXI_AWVALID),
        .s_axi_ctrl_vip_2_bready(ps8_0_axi_periph_M06_AXI_BREADY),
        .s_axi_ctrl_vip_2_bresp(ps8_0_axi_periph_M06_AXI_BRESP),
        .s_axi_ctrl_vip_2_bvalid(ps8_0_axi_periph_M06_AXI_BVALID),
        .s_axi_ctrl_vip_2_rdata(ps8_0_axi_periph_M06_AXI_RDATA),
        .s_axi_ctrl_vip_2_rready(ps8_0_axi_periph_M06_AXI_RREADY),
        .s_axi_ctrl_vip_2_rresp(ps8_0_axi_periph_M06_AXI_RRESP),
        .s_axi_ctrl_vip_2_rvalid(ps8_0_axi_periph_M06_AXI_RVALID),
        .s_axi_ctrl_vip_2_wdata(ps8_0_axi_periph_M06_AXI_WDATA),
        .s_axi_ctrl_vip_2_wready(ps8_0_axi_periph_M06_AXI_WREADY),
        .s_axi_ctrl_vip_2_wstrb(ps8_0_axi_periph_M06_AXI_WSTRB),
        .s_axi_ctrl_vip_2_wvalid(ps8_0_axi_periph_M06_AXI_WVALID),
        .s_axi_ctrl_wr_1_araddr(ps8_0_axi_periph_1_M01_AXI_ARADDR),
        .s_axi_ctrl_wr_1_arready(ps8_0_axi_periph_1_M01_AXI_ARREADY),
        .s_axi_ctrl_wr_1_arvalid(ps8_0_axi_periph_1_M01_AXI_ARVALID),
        .s_axi_ctrl_wr_1_awaddr(ps8_0_axi_periph_1_M01_AXI_AWADDR),
        .s_axi_ctrl_wr_1_awready(ps8_0_axi_periph_1_M01_AXI_AWREADY),
        .s_axi_ctrl_wr_1_awvalid(ps8_0_axi_periph_1_M01_AXI_AWVALID),
        .s_axi_ctrl_wr_1_bready(ps8_0_axi_periph_1_M01_AXI_BREADY),
        .s_axi_ctrl_wr_1_bresp(ps8_0_axi_periph_1_M01_AXI_BRESP),
        .s_axi_ctrl_wr_1_bvalid(ps8_0_axi_periph_1_M01_AXI_BVALID),
        .s_axi_ctrl_wr_1_rdata(ps8_0_axi_periph_1_M01_AXI_RDATA),
        .s_axi_ctrl_wr_1_rready(ps8_0_axi_periph_1_M01_AXI_RREADY),
        .s_axi_ctrl_wr_1_rresp(ps8_0_axi_periph_1_M01_AXI_RRESP),
        .s_axi_ctrl_wr_1_rvalid(ps8_0_axi_periph_1_M01_AXI_RVALID),
        .s_axi_ctrl_wr_1_wdata(ps8_0_axi_periph_1_M01_AXI_WDATA),
        .s_axi_ctrl_wr_1_wready(ps8_0_axi_periph_1_M01_AXI_WREADY),
        .s_axi_ctrl_wr_1_wstrb(ps8_0_axi_periph_1_M01_AXI_WSTRB),
        .s_axi_ctrl_wr_1_wvalid(ps8_0_axi_periph_1_M01_AXI_WVALID),
        .s_axi_ctrl_wr_2_araddr(ps8_0_axi_periph_1_M02_AXI_ARADDR),
        .s_axi_ctrl_wr_2_arready(ps8_0_axi_periph_1_M02_AXI_ARREADY),
        .s_axi_ctrl_wr_2_arvalid(ps8_0_axi_periph_1_M02_AXI_ARVALID),
        .s_axi_ctrl_wr_2_awaddr(ps8_0_axi_periph_1_M02_AXI_AWADDR),
        .s_axi_ctrl_wr_2_awready(ps8_0_axi_periph_1_M02_AXI_AWREADY),
        .s_axi_ctrl_wr_2_awvalid(ps8_0_axi_periph_1_M02_AXI_AWVALID),
        .s_axi_ctrl_wr_2_bready(ps8_0_axi_periph_1_M02_AXI_BREADY),
        .s_axi_ctrl_wr_2_bresp(ps8_0_axi_periph_1_M02_AXI_BRESP),
        .s_axi_ctrl_wr_2_bvalid(ps8_0_axi_periph_1_M02_AXI_BVALID),
        .s_axi_ctrl_wr_2_rdata(ps8_0_axi_periph_1_M02_AXI_RDATA),
        .s_axi_ctrl_wr_2_rready(ps8_0_axi_periph_1_M02_AXI_RREADY),
        .s_axi_ctrl_wr_2_rresp(ps8_0_axi_periph_1_M02_AXI_RRESP),
        .s_axi_ctrl_wr_2_rvalid(ps8_0_axi_periph_1_M02_AXI_RVALID),
        .s_axi_ctrl_wr_2_wdata(ps8_0_axi_periph_1_M02_AXI_WDATA),
        .s_axi_ctrl_wr_2_wready(ps8_0_axi_periph_1_M02_AXI_WREADY),
        .s_axi_ctrl_wr_2_wstrb(ps8_0_axi_periph_1_M02_AXI_WSTRB),
        .s_axi_ctrl_wr_2_wvalid(ps8_0_axi_periph_1_M02_AXI_WVALID),
        .vid_pclk(clk_wiz_clk_isp),
        .vid_rstn(rst_clk_wiz_isp_peripheral_aresetn));
  design_1_ps8_0_axi_periph_1 ps8_0_axi_periph
       (.ACLK(clk_wiz_clk_ctrl),
        .ARESETN(rst_clk_wiz_99M_peripheral_aresetn),
        .M00_ACLK(clk_wiz_clk_ctrl),
        .M00_ARESETN(rst_clk_wiz_99M_peripheral_aresetn),
        .M00_AXI_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_clk_ctrl),
        .M01_ARESETN(rst_clk_wiz_99M_peripheral_aresetn),
        .M01_AXI_araddr(ps8_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_clk_ctrl),
        .M02_ARESETN(rst_clk_wiz_99M_peripheral_aresetn),
        .M02_AXI_araddr(ps8_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(ps8_0_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_clk_ctrl),
        .M03_ARESETN(rst_clk_wiz_99M_peripheral_aresetn),
        .M03_AXI_araddr(ps8_0_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arprot(ps8_0_axi_periph_M03_AXI_ARPROT),
        .M03_AXI_arready(ps8_0_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(ps8_0_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(ps8_0_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awprot(ps8_0_axi_periph_M03_AXI_AWPROT),
        .M03_AXI_awready(ps8_0_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(ps8_0_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(ps8_0_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(ps8_0_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(ps8_0_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(ps8_0_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(ps8_0_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(ps8_0_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(ps8_0_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(ps8_0_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(ps8_0_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(ps8_0_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(ps8_0_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(clk_wiz_clk_ctrl),
        .M04_ARESETN(rst_clk_wiz_99M_peripheral_aresetn),
        .M04_AXI_araddr(ps8_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arprot(ps8_0_axi_periph_M04_AXI_ARPROT),
        .M04_AXI_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awprot(ps8_0_axi_periph_M04_AXI_AWPROT),
        .M04_AXI_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(ps8_0_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(clk_wiz_clk_ctrl),
        .M05_ARESETN(rst_clk_wiz_99M_peripheral_aresetn),
        .M05_AXI_araddr(ps8_0_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arprot(ps8_0_axi_periph_M05_AXI_ARPROT),
        .M05_AXI_arready(ps8_0_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(ps8_0_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(ps8_0_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awprot(ps8_0_axi_periph_M05_AXI_AWPROT),
        .M05_AXI_awready(ps8_0_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(ps8_0_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(ps8_0_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(ps8_0_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(ps8_0_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(ps8_0_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(ps8_0_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(ps8_0_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(ps8_0_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(ps8_0_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(ps8_0_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(ps8_0_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(ps8_0_axi_periph_M05_AXI_WVALID),
        .M06_ACLK(clk_wiz_clk_ctrl),
        .M06_ARESETN(rst_clk_wiz_99M_peripheral_aresetn),
        .M06_AXI_araddr(ps8_0_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arprot(ps8_0_axi_periph_M06_AXI_ARPROT),
        .M06_AXI_arready(ps8_0_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(ps8_0_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(ps8_0_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awprot(ps8_0_axi_periph_M06_AXI_AWPROT),
        .M06_AXI_awready(ps8_0_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(ps8_0_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(ps8_0_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(ps8_0_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(ps8_0_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(ps8_0_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(ps8_0_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(ps8_0_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(ps8_0_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(ps8_0_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(ps8_0_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(ps8_0_axi_periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(ps8_0_axi_periph_M06_AXI_WVALID),
        .M07_ACLK(clk_wiz_clk_ctrl),
        .M07_ARESETN(rst_clk_wiz_99M_peripheral_aresetn),
        .M07_AXI_araddr(ps8_0_axi_periph_M07_AXI_ARADDR),
        .M07_AXI_arprot(ps8_0_axi_periph_M07_AXI_ARPROT),
        .M07_AXI_arready(ps8_0_axi_periph_M07_AXI_ARREADY),
        .M07_AXI_arvalid(ps8_0_axi_periph_M07_AXI_ARVALID),
        .M07_AXI_awaddr(ps8_0_axi_periph_M07_AXI_AWADDR),
        .M07_AXI_awprot(ps8_0_axi_periph_M07_AXI_AWPROT),
        .M07_AXI_awready(ps8_0_axi_periph_M07_AXI_AWREADY),
        .M07_AXI_awvalid(ps8_0_axi_periph_M07_AXI_AWVALID),
        .M07_AXI_bready(ps8_0_axi_periph_M07_AXI_BREADY),
        .M07_AXI_bresp(ps8_0_axi_periph_M07_AXI_BRESP),
        .M07_AXI_bvalid(ps8_0_axi_periph_M07_AXI_BVALID),
        .M07_AXI_rdata(ps8_0_axi_periph_M07_AXI_RDATA),
        .M07_AXI_rready(ps8_0_axi_periph_M07_AXI_RREADY),
        .M07_AXI_rresp(ps8_0_axi_periph_M07_AXI_RRESP),
        .M07_AXI_rvalid(ps8_0_axi_periph_M07_AXI_RVALID),
        .M07_AXI_wdata(ps8_0_axi_periph_M07_AXI_WDATA),
        .M07_AXI_wready(ps8_0_axi_periph_M07_AXI_WREADY),
        .M07_AXI_wstrb(ps8_0_axi_periph_M07_AXI_WSTRB),
        .M07_AXI_wvalid(ps8_0_axi_periph_M07_AXI_WVALID),
        .M08_ACLK(clk_wiz_clk_ctrl),
        .M08_ARESETN(rst_clk_wiz_99M_peripheral_aresetn),
        .M08_AXI_araddr(ps8_0_axi_periph_M08_AXI_ARADDR),
        .M08_AXI_arprot(ps8_0_axi_periph_M08_AXI_ARPROT),
        .M08_AXI_arready(ps8_0_axi_periph_M08_AXI_ARREADY),
        .M08_AXI_arvalid(ps8_0_axi_periph_M08_AXI_ARVALID),
        .M08_AXI_awaddr(ps8_0_axi_periph_M08_AXI_AWADDR),
        .M08_AXI_awprot(ps8_0_axi_periph_M08_AXI_AWPROT),
        .M08_AXI_awready(ps8_0_axi_periph_M08_AXI_AWREADY),
        .M08_AXI_awvalid(ps8_0_axi_periph_M08_AXI_AWVALID),
        .M08_AXI_bready(ps8_0_axi_periph_M08_AXI_BREADY),
        .M08_AXI_bresp(ps8_0_axi_periph_M08_AXI_BRESP),
        .M08_AXI_bvalid(ps8_0_axi_periph_M08_AXI_BVALID),
        .M08_AXI_rdata(ps8_0_axi_periph_M08_AXI_RDATA),
        .M08_AXI_rready(ps8_0_axi_periph_M08_AXI_RREADY),
        .M08_AXI_rresp(ps8_0_axi_periph_M08_AXI_RRESP),
        .M08_AXI_rvalid(ps8_0_axi_periph_M08_AXI_RVALID),
        .M08_AXI_wdata(ps8_0_axi_periph_M08_AXI_WDATA),
        .M08_AXI_wready(ps8_0_axi_periph_M08_AXI_WREADY),
        .M08_AXI_wstrb(ps8_0_axi_periph_M08_AXI_WSTRB),
        .M08_AXI_wvalid(ps8_0_axi_periph_M08_AXI_WVALID),
        .S00_ACLK(clk_wiz_clk_ctrl),
        .S00_ARESETN(rst_clk_wiz_99M_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID));
  design_1_ps8_0_axi_periph_1_0 ps8_0_axi_periph_1
       (.ACLK(clk_wiz_clk_mm),
        .ARESETN(rst_clk_wiz_299M_peripheral_aresetn),
        .M00_ACLK(clk_wiz_clk_mm),
        .M00_ARESETN(rst_clk_wiz_299M_peripheral_aresetn),
        .M00_AXI_araddr(ps8_0_axi_periph_1_M00_AXI_ARADDR),
        .M00_AXI_arready(ps8_0_axi_periph_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps8_0_axi_periph_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps8_0_axi_periph_1_M00_AXI_AWADDR),
        .M00_AXI_awready(ps8_0_axi_periph_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps8_0_axi_periph_1_M00_AXI_AWVALID),
        .M00_AXI_bready(ps8_0_axi_periph_1_M00_AXI_BREADY),
        .M00_AXI_bresp(ps8_0_axi_periph_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps8_0_axi_periph_1_M00_AXI_BVALID),
        .M00_AXI_rdata(ps8_0_axi_periph_1_M00_AXI_RDATA),
        .M00_AXI_rready(ps8_0_axi_periph_1_M00_AXI_RREADY),
        .M00_AXI_rresp(ps8_0_axi_periph_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps8_0_axi_periph_1_M00_AXI_RVALID),
        .M00_AXI_wdata(ps8_0_axi_periph_1_M00_AXI_WDATA),
        .M00_AXI_wready(ps8_0_axi_periph_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps8_0_axi_periph_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps8_0_axi_periph_1_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_clk_mm),
        .M01_ARESETN(rst_clk_wiz_299M_peripheral_aresetn),
        .M01_AXI_araddr(ps8_0_axi_periph_1_M01_AXI_ARADDR),
        .M01_AXI_arready(ps8_0_axi_periph_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps8_0_axi_periph_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps8_0_axi_periph_1_M01_AXI_AWADDR),
        .M01_AXI_awready(ps8_0_axi_periph_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps8_0_axi_periph_1_M01_AXI_AWVALID),
        .M01_AXI_bready(ps8_0_axi_periph_1_M01_AXI_BREADY),
        .M01_AXI_bresp(ps8_0_axi_periph_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps8_0_axi_periph_1_M01_AXI_BVALID),
        .M01_AXI_rdata(ps8_0_axi_periph_1_M01_AXI_RDATA),
        .M01_AXI_rready(ps8_0_axi_periph_1_M01_AXI_RREADY),
        .M01_AXI_rresp(ps8_0_axi_periph_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps8_0_axi_periph_1_M01_AXI_RVALID),
        .M01_AXI_wdata(ps8_0_axi_periph_1_M01_AXI_WDATA),
        .M01_AXI_wready(ps8_0_axi_periph_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps8_0_axi_periph_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps8_0_axi_periph_1_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_clk_mm),
        .M02_ARESETN(rst_clk_wiz_299M_peripheral_aresetn),
        .M02_AXI_araddr(ps8_0_axi_periph_1_M02_AXI_ARADDR),
        .M02_AXI_arready(ps8_0_axi_periph_1_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ps8_0_axi_periph_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ps8_0_axi_periph_1_M02_AXI_AWADDR),
        .M02_AXI_awready(ps8_0_axi_periph_1_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ps8_0_axi_periph_1_M02_AXI_AWVALID),
        .M02_AXI_bready(ps8_0_axi_periph_1_M02_AXI_BREADY),
        .M02_AXI_bresp(ps8_0_axi_periph_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(ps8_0_axi_periph_1_M02_AXI_BVALID),
        .M02_AXI_rdata(ps8_0_axi_periph_1_M02_AXI_RDATA),
        .M02_AXI_rready(ps8_0_axi_periph_1_M02_AXI_RREADY),
        .M02_AXI_rresp(ps8_0_axi_periph_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(ps8_0_axi_periph_1_M02_AXI_RVALID),
        .M02_AXI_wdata(ps8_0_axi_periph_1_M02_AXI_WDATA),
        .M02_AXI_wready(ps8_0_axi_periph_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(ps8_0_axi_periph_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(ps8_0_axi_periph_1_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_clk_mm),
        .M03_ARESETN(rst_clk_wiz_299M_peripheral_aresetn),
        .M03_AXI_araddr(ps8_0_axi_periph_1_M03_AXI_ARADDR),
        .M03_AXI_arready(ps8_0_axi_periph_1_M03_AXI_ARREADY),
        .M03_AXI_arvalid(ps8_0_axi_periph_1_M03_AXI_ARVALID),
        .M03_AXI_awaddr(ps8_0_axi_periph_1_M03_AXI_AWADDR),
        .M03_AXI_awready(ps8_0_axi_periph_1_M03_AXI_AWREADY),
        .M03_AXI_awvalid(ps8_0_axi_periph_1_M03_AXI_AWVALID),
        .M03_AXI_bready(ps8_0_axi_periph_1_M03_AXI_BREADY),
        .M03_AXI_bresp(ps8_0_axi_periph_1_M03_AXI_BRESP),
        .M03_AXI_bvalid(ps8_0_axi_periph_1_M03_AXI_BVALID),
        .M03_AXI_rdata(ps8_0_axi_periph_1_M03_AXI_RDATA),
        .M03_AXI_rready(ps8_0_axi_periph_1_M03_AXI_RREADY),
        .M03_AXI_rresp(ps8_0_axi_periph_1_M03_AXI_RRESP),
        .M03_AXI_rvalid(ps8_0_axi_periph_1_M03_AXI_RVALID),
        .M03_AXI_wdata(ps8_0_axi_periph_1_M03_AXI_WDATA),
        .M03_AXI_wready(ps8_0_axi_periph_1_M03_AXI_WREADY),
        .M03_AXI_wstrb(ps8_0_axi_periph_1_M03_AXI_WSTRB),
        .M03_AXI_wvalid(ps8_0_axi_periph_1_M03_AXI_WVALID),
        .M04_ACLK(zynq_ultra_ps_e_0_pl_clk1),
        .M04_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M04_AXI_araddr(ps8_0_axi_periph_1_M04_AXI_ARADDR),
        .M04_AXI_arready(ps8_0_axi_periph_1_M04_AXI_ARREADY),
        .M04_AXI_arvalid(ps8_0_axi_periph_1_M04_AXI_ARVALID),
        .M04_AXI_awaddr(ps8_0_axi_periph_1_M04_AXI_AWADDR),
        .M04_AXI_awready(ps8_0_axi_periph_1_M04_AXI_AWREADY),
        .M04_AXI_awvalid(ps8_0_axi_periph_1_M04_AXI_AWVALID),
        .M04_AXI_bready(ps8_0_axi_periph_1_M04_AXI_BREADY),
        .M04_AXI_bresp(ps8_0_axi_periph_1_M04_AXI_BRESP),
        .M04_AXI_bvalid(ps8_0_axi_periph_1_M04_AXI_BVALID),
        .M04_AXI_rdata(ps8_0_axi_periph_1_M04_AXI_RDATA),
        .M04_AXI_rready(ps8_0_axi_periph_1_M04_AXI_RREADY),
        .M04_AXI_rresp(ps8_0_axi_periph_1_M04_AXI_RRESP),
        .M04_AXI_rvalid(ps8_0_axi_periph_1_M04_AXI_RVALID),
        .M04_AXI_wdata(ps8_0_axi_periph_1_M04_AXI_WDATA),
        .M04_AXI_wready(ps8_0_axi_periph_1_M04_AXI_WREADY),
        .M04_AXI_wstrb(ps8_0_axi_periph_1_M04_AXI_WSTRB),
        .M04_AXI_wvalid(ps8_0_axi_periph_1_M04_AXI_WVALID),
        .S00_ACLK(clk_wiz_clk_mm),
        .S00_ARESETN(rst_clk_wiz_299M_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID));
  design_1_rst_clk_wiz_99M_0 rst_clk_wiz_ctrl
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_99M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_ctrl));
  design_1_rst_clk_wiz_ctrl_0 rst_clk_wiz_isp
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_isp_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_isp));
  design_1_rst_clk_wiz_299M_0 rst_clk_wiz_mm
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_299M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_mm));
  design_1_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk1));
  design_1_vcu_0_0 vcu
       (.m_axi_dec_aclk(clk_wiz_clk_mm),
        .m_axi_enc_aclk(clk_wiz_clk_mm),
        .m_axi_mcu_aclk(clk_wiz_clk_mm),
        .pl_vcu_araddr_axi_lite_apb(ps8_0_axi_periph_M03_AXI_ARADDR[19:0]),
        .pl_vcu_arprot_axi_lite_apb(ps8_0_axi_periph_M03_AXI_ARPROT),
        .pl_vcu_arvalid_axi_lite_apb(ps8_0_axi_periph_M03_AXI_ARVALID),
        .pl_vcu_awaddr_axi_lite_apb(ps8_0_axi_periph_M03_AXI_AWADDR[19:0]),
        .pl_vcu_awprot_axi_lite_apb(ps8_0_axi_periph_M03_AXI_AWPROT),
        .pl_vcu_awvalid_axi_lite_apb(ps8_0_axi_periph_M03_AXI_AWVALID),
        .pl_vcu_bready_axi_lite_apb(ps8_0_axi_periph_M03_AXI_BREADY),
        .pl_vcu_dec_arready0(vcu_M_AXI_DEC0_ARREADY),
        .pl_vcu_dec_arready1(vcu_M_AXI_DEC1_ARREADY),
        .pl_vcu_dec_awready0(vcu_M_AXI_DEC0_AWREADY),
        .pl_vcu_dec_awready1(vcu_M_AXI_DEC1_AWREADY),
        .pl_vcu_dec_bid0(vcu_M_AXI_DEC0_BID),
        .pl_vcu_dec_bid1(vcu_M_AXI_DEC1_BID),
        .pl_vcu_dec_bresp0(vcu_M_AXI_DEC0_BRESP),
        .pl_vcu_dec_bresp1(vcu_M_AXI_DEC1_BRESP),
        .pl_vcu_dec_bvalid0(vcu_M_AXI_DEC0_BVALID),
        .pl_vcu_dec_bvalid1(vcu_M_AXI_DEC1_BVALID),
        .pl_vcu_dec_rdata0(vcu_M_AXI_DEC0_RDATA),
        .pl_vcu_dec_rdata1(vcu_M_AXI_DEC1_RDATA),
        .pl_vcu_dec_rid0(vcu_M_AXI_DEC0_RID),
        .pl_vcu_dec_rid1(vcu_M_AXI_DEC1_RID),
        .pl_vcu_dec_rlast0(vcu_M_AXI_DEC0_RLAST),
        .pl_vcu_dec_rlast1(vcu_M_AXI_DEC1_RLAST),
        .pl_vcu_dec_rresp0(vcu_M_AXI_DEC0_RRESP),
        .pl_vcu_dec_rresp1(vcu_M_AXI_DEC1_RRESP),
        .pl_vcu_dec_rvalid0(vcu_M_AXI_DEC0_RVALID),
        .pl_vcu_dec_rvalid1(vcu_M_AXI_DEC1_RVALID),
        .pl_vcu_dec_wready0(vcu_M_AXI_DEC0_WREADY),
        .pl_vcu_dec_wready1(vcu_M_AXI_DEC1_WREADY),
        .pl_vcu_enc_arready0(vcu_M_AXI_ENC0_ARREADY),
        .pl_vcu_enc_arready1(vcu_M_AXI_ENC1_ARREADY),
        .pl_vcu_enc_awready0(vcu_M_AXI_ENC0_AWREADY),
        .pl_vcu_enc_awready1(vcu_M_AXI_ENC1_AWREADY),
        .pl_vcu_enc_bid0(vcu_M_AXI_ENC0_BID),
        .pl_vcu_enc_bid1(vcu_M_AXI_ENC1_BID),
        .pl_vcu_enc_bresp0(vcu_M_AXI_ENC0_BRESP),
        .pl_vcu_enc_bresp1(vcu_M_AXI_ENC1_BRESP),
        .pl_vcu_enc_bvalid0(vcu_M_AXI_ENC0_BVALID),
        .pl_vcu_enc_bvalid1(vcu_M_AXI_ENC1_BVALID),
        .pl_vcu_enc_rdata0(vcu_M_AXI_ENC0_RDATA),
        .pl_vcu_enc_rdata1(vcu_M_AXI_ENC1_RDATA),
        .pl_vcu_enc_rid0(vcu_M_AXI_ENC0_RID),
        .pl_vcu_enc_rid1(vcu_M_AXI_ENC1_RID),
        .pl_vcu_enc_rlast0(vcu_M_AXI_ENC0_RLAST),
        .pl_vcu_enc_rlast1(vcu_M_AXI_ENC1_RLAST),
        .pl_vcu_enc_rresp0(vcu_M_AXI_ENC0_RRESP),
        .pl_vcu_enc_rresp1(vcu_M_AXI_ENC1_RRESP),
        .pl_vcu_enc_rvalid0(vcu_M_AXI_ENC0_RVALID),
        .pl_vcu_enc_rvalid1(vcu_M_AXI_ENC1_RVALID),
        .pl_vcu_enc_wready0(vcu_M_AXI_ENC0_WREADY),
        .pl_vcu_enc_wready1(vcu_M_AXI_ENC1_WREADY),
        .pl_vcu_mcu_m_axi_ic_dc_arready(vcu_M_AXI_MCU_ARREADY),
        .pl_vcu_mcu_m_axi_ic_dc_awready(vcu_M_AXI_MCU_AWREADY),
        .pl_vcu_mcu_m_axi_ic_dc_bid(vcu_M_AXI_MCU_BID),
        .pl_vcu_mcu_m_axi_ic_dc_bresp(vcu_M_AXI_MCU_BRESP),
        .pl_vcu_mcu_m_axi_ic_dc_bvalid(vcu_M_AXI_MCU_BVALID),
        .pl_vcu_mcu_m_axi_ic_dc_rdata(vcu_M_AXI_MCU_RDATA),
        .pl_vcu_mcu_m_axi_ic_dc_rid(vcu_M_AXI_MCU_RID),
        .pl_vcu_mcu_m_axi_ic_dc_rlast(vcu_M_AXI_MCU_RLAST),
        .pl_vcu_mcu_m_axi_ic_dc_rresp(vcu_M_AXI_MCU_RRESP),
        .pl_vcu_mcu_m_axi_ic_dc_rvalid(vcu_M_AXI_MCU_RVALID),
        .pl_vcu_mcu_m_axi_ic_dc_wready(vcu_M_AXI_MCU_WREADY),
        .pl_vcu_rready_axi_lite_apb(ps8_0_axi_periph_M03_AXI_RREADY),
        .pl_vcu_wdata_axi_lite_apb(ps8_0_axi_periph_M03_AXI_WDATA),
        .pl_vcu_wstrb_axi_lite_apb(ps8_0_axi_periph_M03_AXI_WSTRB),
        .pl_vcu_wvalid_axi_lite_apb(ps8_0_axi_periph_M03_AXI_WVALID),
        .pll_ref_clk(clk_wiz_clk_vcu),
        .s_axi_lite_aclk(clk_wiz_clk_ctrl),
        .vcu_host_interrupt(vcu_vcu_host_interrupt),
        .vcu_pl_arready_axi_lite_apb(ps8_0_axi_periph_M03_AXI_ARREADY),
        .vcu_pl_awready_axi_lite_apb(ps8_0_axi_periph_M03_AXI_AWREADY),
        .vcu_pl_bresp_axi_lite_apb(ps8_0_axi_periph_M03_AXI_BRESP),
        .vcu_pl_bvalid_axi_lite_apb(ps8_0_axi_periph_M03_AXI_BVALID),
        .vcu_pl_dec_araddr0(vcu_M_AXI_DEC0_ARADDR),
        .vcu_pl_dec_araddr1(vcu_M_AXI_DEC1_ARADDR),
        .vcu_pl_dec_arburst0(vcu_M_AXI_DEC0_ARBURST),
        .vcu_pl_dec_arburst1(vcu_M_AXI_DEC1_ARBURST),
        .vcu_pl_dec_arcache0(vcu_M_AXI_DEC0_ARCACHE),
        .vcu_pl_dec_arcache1(vcu_M_AXI_DEC1_ARCACHE),
        .vcu_pl_dec_arid0(vcu_M_AXI_DEC0_ARID),
        .vcu_pl_dec_arid1(vcu_M_AXI_DEC1_ARID),
        .vcu_pl_dec_arlen0(vcu_M_AXI_DEC0_ARLEN),
        .vcu_pl_dec_arlen1(vcu_M_AXI_DEC1_ARLEN),
        .vcu_pl_dec_arlock0(vcu_M_AXI_DEC0_ARLOCK),
        .vcu_pl_dec_arlock1(vcu_M_AXI_DEC1_ARLOCK),
        .vcu_pl_dec_arprot0(vcu_M_AXI_DEC0_ARPROT),
        .vcu_pl_dec_arprot1(vcu_M_AXI_DEC1_ARPROT),
        .vcu_pl_dec_arqos0(vcu_M_AXI_DEC0_ARQOS),
        .vcu_pl_dec_arqos1(vcu_M_AXI_DEC1_ARQOS),
        .vcu_pl_dec_arsize0(vcu_M_AXI_DEC0_ARSIZE),
        .vcu_pl_dec_arsize1(vcu_M_AXI_DEC1_ARSIZE),
        .vcu_pl_dec_arvalid0(vcu_M_AXI_DEC0_ARVALID),
        .vcu_pl_dec_arvalid1(vcu_M_AXI_DEC1_ARVALID),
        .vcu_pl_dec_awaddr0(vcu_M_AXI_DEC0_AWADDR),
        .vcu_pl_dec_awaddr1(vcu_M_AXI_DEC1_AWADDR),
        .vcu_pl_dec_awburst0(vcu_M_AXI_DEC0_AWBURST),
        .vcu_pl_dec_awburst1(vcu_M_AXI_DEC1_AWBURST),
        .vcu_pl_dec_awcache0(vcu_M_AXI_DEC0_AWCACHE),
        .vcu_pl_dec_awcache1(vcu_M_AXI_DEC1_AWCACHE),
        .vcu_pl_dec_awid0(vcu_M_AXI_DEC0_AWID),
        .vcu_pl_dec_awid1(vcu_M_AXI_DEC1_AWID),
        .vcu_pl_dec_awlen0(vcu_M_AXI_DEC0_AWLEN),
        .vcu_pl_dec_awlen1(vcu_M_AXI_DEC1_AWLEN),
        .vcu_pl_dec_awlock0(vcu_M_AXI_DEC0_AWLOCK),
        .vcu_pl_dec_awlock1(vcu_M_AXI_DEC1_AWLOCK),
        .vcu_pl_dec_awprot0(vcu_M_AXI_DEC0_AWPROT),
        .vcu_pl_dec_awprot1(vcu_M_AXI_DEC1_AWPROT),
        .vcu_pl_dec_awqos0(vcu_M_AXI_DEC0_AWQOS),
        .vcu_pl_dec_awqos1(vcu_M_AXI_DEC1_AWQOS),
        .vcu_pl_dec_awsize0(vcu_M_AXI_DEC0_AWSIZE),
        .vcu_pl_dec_awsize1(vcu_M_AXI_DEC1_AWSIZE),
        .vcu_pl_dec_awvalid0(vcu_M_AXI_DEC0_AWVALID),
        .vcu_pl_dec_awvalid1(vcu_M_AXI_DEC1_AWVALID),
        .vcu_pl_dec_bready0(vcu_M_AXI_DEC0_BREADY),
        .vcu_pl_dec_bready1(vcu_M_AXI_DEC1_BREADY),
        .vcu_pl_dec_rready0(vcu_M_AXI_DEC0_RREADY),
        .vcu_pl_dec_rready1(vcu_M_AXI_DEC1_RREADY),
        .vcu_pl_dec_wdata0(vcu_M_AXI_DEC0_WDATA),
        .vcu_pl_dec_wdata1(vcu_M_AXI_DEC1_WDATA),
        .vcu_pl_dec_wlast0(vcu_M_AXI_DEC0_WLAST),
        .vcu_pl_dec_wlast1(vcu_M_AXI_DEC1_WLAST),
        .vcu_pl_dec_wstrb0(vcu_M_AXI_DEC0_WSTRB),
        .vcu_pl_dec_wstrb1(vcu_M_AXI_DEC1_WSTRB),
        .vcu_pl_dec_wvalid0(vcu_M_AXI_DEC0_WVALID),
        .vcu_pl_dec_wvalid1(vcu_M_AXI_DEC1_WVALID),
        .vcu_pl_enc_araddr0(vcu_M_AXI_ENC0_ARADDR),
        .vcu_pl_enc_araddr1(vcu_M_AXI_ENC1_ARADDR),
        .vcu_pl_enc_arburst0(vcu_M_AXI_ENC0_ARBURST),
        .vcu_pl_enc_arburst1(vcu_M_AXI_ENC1_ARBURST),
        .vcu_pl_enc_arcache0(vcu_M_AXI_ENC0_ARCACHE),
        .vcu_pl_enc_arcache1(vcu_M_AXI_ENC1_ARCACHE),
        .vcu_pl_enc_arid0(vcu_M_AXI_ENC0_ARID),
        .vcu_pl_enc_arid1(vcu_M_AXI_ENC1_ARID),
        .vcu_pl_enc_arlen0(vcu_M_AXI_ENC0_ARLEN),
        .vcu_pl_enc_arlen1(vcu_M_AXI_ENC1_ARLEN),
        .vcu_pl_enc_arlock0(vcu_M_AXI_ENC0_ARLOCK),
        .vcu_pl_enc_arlock1(vcu_M_AXI_ENC1_ARLOCK),
        .vcu_pl_enc_arprot0(vcu_M_AXI_ENC0_ARPROT),
        .vcu_pl_enc_arprot1(vcu_M_AXI_ENC1_ARPROT),
        .vcu_pl_enc_arqos0(vcu_M_AXI_ENC0_ARQOS),
        .vcu_pl_enc_arqos1(vcu_M_AXI_ENC1_ARQOS),
        .vcu_pl_enc_arsize0(vcu_M_AXI_ENC0_ARSIZE),
        .vcu_pl_enc_arsize1(vcu_M_AXI_ENC1_ARSIZE),
        .vcu_pl_enc_arvalid0(vcu_M_AXI_ENC0_ARVALID),
        .vcu_pl_enc_arvalid1(vcu_M_AXI_ENC1_ARVALID),
        .vcu_pl_enc_awaddr0(vcu_M_AXI_ENC0_AWADDR),
        .vcu_pl_enc_awaddr1(vcu_M_AXI_ENC1_AWADDR),
        .vcu_pl_enc_awburst0(vcu_M_AXI_ENC0_AWBURST),
        .vcu_pl_enc_awburst1(vcu_M_AXI_ENC1_AWBURST),
        .vcu_pl_enc_awcache0(vcu_M_AXI_ENC0_AWCACHE),
        .vcu_pl_enc_awcache1(vcu_M_AXI_ENC1_AWCACHE),
        .vcu_pl_enc_awid0(vcu_M_AXI_ENC0_AWID),
        .vcu_pl_enc_awid1(vcu_M_AXI_ENC1_AWID),
        .vcu_pl_enc_awlen0(vcu_M_AXI_ENC0_AWLEN),
        .vcu_pl_enc_awlen1(vcu_M_AXI_ENC1_AWLEN),
        .vcu_pl_enc_awlock0(vcu_M_AXI_ENC0_AWLOCK),
        .vcu_pl_enc_awlock1(vcu_M_AXI_ENC1_AWLOCK),
        .vcu_pl_enc_awprot0(vcu_M_AXI_ENC0_AWPROT),
        .vcu_pl_enc_awprot1(vcu_M_AXI_ENC1_AWPROT),
        .vcu_pl_enc_awqos0(vcu_M_AXI_ENC0_AWQOS),
        .vcu_pl_enc_awqos1(vcu_M_AXI_ENC1_AWQOS),
        .vcu_pl_enc_awsize0(vcu_M_AXI_ENC0_AWSIZE),
        .vcu_pl_enc_awsize1(vcu_M_AXI_ENC1_AWSIZE),
        .vcu_pl_enc_awvalid0(vcu_M_AXI_ENC0_AWVALID),
        .vcu_pl_enc_awvalid1(vcu_M_AXI_ENC1_AWVALID),
        .vcu_pl_enc_bready0(vcu_M_AXI_ENC0_BREADY),
        .vcu_pl_enc_bready1(vcu_M_AXI_ENC1_BREADY),
        .vcu_pl_enc_rready0(vcu_M_AXI_ENC0_RREADY),
        .vcu_pl_enc_rready1(vcu_M_AXI_ENC1_RREADY),
        .vcu_pl_enc_wdata0(vcu_M_AXI_ENC0_WDATA),
        .vcu_pl_enc_wdata1(vcu_M_AXI_ENC1_WDATA),
        .vcu_pl_enc_wlast0(vcu_M_AXI_ENC0_WLAST),
        .vcu_pl_enc_wlast1(vcu_M_AXI_ENC1_WLAST),
        .vcu_pl_enc_wstrb0(vcu_M_AXI_ENC0_WSTRB),
        .vcu_pl_enc_wstrb1(vcu_M_AXI_ENC1_WSTRB),
        .vcu_pl_enc_wvalid0(vcu_M_AXI_ENC0_WVALID),
        .vcu_pl_enc_wvalid1(vcu_M_AXI_ENC1_WVALID),
        .vcu_pl_mcu_m_axi_ic_dc_araddr(vcu_M_AXI_MCU_ARADDR),
        .vcu_pl_mcu_m_axi_ic_dc_arburst(vcu_M_AXI_MCU_ARBURST),
        .vcu_pl_mcu_m_axi_ic_dc_arcache(vcu_M_AXI_MCU_ARCACHE),
        .vcu_pl_mcu_m_axi_ic_dc_arid(vcu_M_AXI_MCU_ARID),
        .vcu_pl_mcu_m_axi_ic_dc_arlen(vcu_M_AXI_MCU_ARLEN),
        .vcu_pl_mcu_m_axi_ic_dc_arlock(vcu_M_AXI_MCU_ARLOCK),
        .vcu_pl_mcu_m_axi_ic_dc_arprot(vcu_M_AXI_MCU_ARPROT),
        .vcu_pl_mcu_m_axi_ic_dc_arqos(vcu_M_AXI_MCU_ARQOS),
        .vcu_pl_mcu_m_axi_ic_dc_arsize(vcu_M_AXI_MCU_ARSIZE),
        .vcu_pl_mcu_m_axi_ic_dc_arvalid(vcu_M_AXI_MCU_ARVALID),
        .vcu_pl_mcu_m_axi_ic_dc_awaddr(vcu_M_AXI_MCU_AWADDR),
        .vcu_pl_mcu_m_axi_ic_dc_awburst(vcu_M_AXI_MCU_AWBURST),
        .vcu_pl_mcu_m_axi_ic_dc_awcache(vcu_M_AXI_MCU_AWCACHE),
        .vcu_pl_mcu_m_axi_ic_dc_awid(vcu_M_AXI_MCU_AWID),
        .vcu_pl_mcu_m_axi_ic_dc_awlen(vcu_M_AXI_MCU_AWLEN),
        .vcu_pl_mcu_m_axi_ic_dc_awlock(vcu_M_AXI_MCU_AWLOCK),
        .vcu_pl_mcu_m_axi_ic_dc_awprot(vcu_M_AXI_MCU_AWPROT),
        .vcu_pl_mcu_m_axi_ic_dc_awqos(vcu_M_AXI_MCU_AWQOS),
        .vcu_pl_mcu_m_axi_ic_dc_awsize(vcu_M_AXI_MCU_AWSIZE),
        .vcu_pl_mcu_m_axi_ic_dc_awvalid(vcu_M_AXI_MCU_AWVALID),
        .vcu_pl_mcu_m_axi_ic_dc_bready(vcu_M_AXI_MCU_BREADY),
        .vcu_pl_mcu_m_axi_ic_dc_rready(vcu_M_AXI_MCU_RREADY),
        .vcu_pl_mcu_m_axi_ic_dc_wdata(vcu_M_AXI_MCU_WDATA),
        .vcu_pl_mcu_m_axi_ic_dc_wlast(vcu_M_AXI_MCU_WLAST),
        .vcu_pl_mcu_m_axi_ic_dc_wstrb(vcu_M_AXI_MCU_WSTRB),
        .vcu_pl_mcu_m_axi_ic_dc_wvalid(vcu_M_AXI_MCU_WVALID),
        .vcu_pl_rdata_axi_lite_apb(ps8_0_axi_periph_M03_AXI_RDATA),
        .vcu_pl_rresp_axi_lite_apb(ps8_0_axi_periph_M03_AXI_RRESP),
        .vcu_pl_rvalid_axi_lite_apb(ps8_0_axi_periph_M03_AXI_RVALID),
        .vcu_pl_wready_axi_lite_apb(ps8_0_axi_periph_M03_AXI_WREADY),
        .vcu_resetn(gpio_slice_Dout_0));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(axi_iic_iic2intc_irpt),
        .In1(vcu_vcu_host_interrupt),
        .In2(isp_pipe_irq_rd),
        .In3(isp_pipe_irq_isp),
        .In4(isp_pipe_irq_vip_1),
        .In5(isp_pipe_irq_wr_1),
        .In6(isp_pipe_irq_vip_2),
        .In7(isp_pipe_irq_wr_2),
        .In8(camif_ias1_irq_mipi_rx),
        .In9(camif_ias1_irq_wr),
        .dout(xlconcat_0_dout));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxigp1_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .maxigp1_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .maxigp1_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .maxigp1_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .maxigp1_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .maxigp1_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .maxigp1_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .maxigp1_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .maxigp1_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .maxigp1_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .maxigp1_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .maxigp1_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .maxigp1_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .maxigp1_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .maxigp1_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .maxigp1_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .maxigp1_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .maxigp1_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .maxigp1_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .maxigp1_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .maxigp1_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .maxigp1_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .maxigp1_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .maxigp1_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .maxigp1_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .maxigp1_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .maxigp1_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .maxigp1_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .maxigp1_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .maxigp1_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .maxigp1_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .maxigp1_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .maxigp1_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .maxigp1_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .maxigp1_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .maxigp1_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .maxigp1_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .maxihpm0_fpd_aclk(clk_wiz_clk_ctrl),
        .maxihpm1_fpd_aclk(clk_wiz_clk_mm),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk1),
        .pl_ps_irq0(axi_intc_0_irq),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp0_araddr(axi_smc_M00_AXI_ARADDR),
        .saxigp0_arburst(axi_smc_M00_AXI_ARBURST),
        .saxigp0_arcache(axi_smc_M00_AXI_ARCACHE),
        .saxigp0_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlen(axi_smc_M00_AXI_ARLEN),
        .saxigp0_arlock(axi_smc_M00_AXI_ARLOCK),
        .saxigp0_arprot(axi_smc_M00_AXI_ARPROT),
        .saxigp0_arqos(axi_smc_M00_AXI_ARQOS),
        .saxigp0_arready(axi_smc_M00_AXI_ARREADY),
        .saxigp0_arsize(axi_smc_M00_AXI_ARSIZE),
        .saxigp0_aruser(1'b0),
        .saxigp0_arvalid(axi_smc_M00_AXI_ARVALID),
        .saxigp0_awaddr(axi_smc_M00_AXI_AWADDR),
        .saxigp0_awburst(axi_smc_M00_AXI_AWBURST),
        .saxigp0_awcache(axi_smc_M00_AXI_AWCACHE),
        .saxigp0_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awlen(axi_smc_M00_AXI_AWLEN),
        .saxigp0_awlock(axi_smc_M00_AXI_AWLOCK),
        .saxigp0_awprot(axi_smc_M00_AXI_AWPROT),
        .saxigp0_awqos(axi_smc_M00_AXI_AWQOS),
        .saxigp0_awready(axi_smc_M00_AXI_AWREADY),
        .saxigp0_awsize(axi_smc_M00_AXI_AWSIZE),
        .saxigp0_awuser(1'b0),
        .saxigp0_awvalid(axi_smc_M00_AXI_AWVALID),
        .saxigp0_bready(axi_smc_M00_AXI_BREADY),
        .saxigp0_bresp(axi_smc_M00_AXI_BRESP),
        .saxigp0_bvalid(axi_smc_M00_AXI_BVALID),
        .saxigp0_rdata(axi_smc_M00_AXI_RDATA),
        .saxigp0_rlast(axi_smc_M00_AXI_RLAST),
        .saxigp0_rready(axi_smc_M00_AXI_RREADY),
        .saxigp0_rresp(axi_smc_M00_AXI_RRESP),
        .saxigp0_rvalid(axi_smc_M00_AXI_RVALID),
        .saxigp0_wdata(axi_smc_M00_AXI_WDATA),
        .saxigp0_wlast(axi_smc_M00_AXI_WLAST),
        .saxigp0_wready(axi_smc_M00_AXI_WREADY),
        .saxigp0_wstrb(axi_smc_M00_AXI_WSTRB),
        .saxigp0_wvalid(axi_smc_M00_AXI_WVALID),
        .saxigp2_araddr(axi_smc_1_M00_AXI_ARADDR),
        .saxigp2_arburst(axi_smc_1_M00_AXI_ARBURST),
        .saxigp2_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlen(axi_smc_1_M00_AXI_ARLEN),
        .saxigp2_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .saxigp2_arprot(axi_smc_1_M00_AXI_ARPROT),
        .saxigp2_arqos(axi_smc_1_M00_AXI_ARQOS),
        .saxigp2_arready(axi_smc_1_M00_AXI_ARREADY),
        .saxigp2_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .saxigp2_aruser(1'b0),
        .saxigp2_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .saxigp2_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .saxigp2_awburst(axi_smc_1_M00_AXI_AWBURST),
        .saxigp2_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlen(axi_smc_1_M00_AXI_AWLEN),
        .saxigp2_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .saxigp2_awprot(axi_smc_1_M00_AXI_AWPROT),
        .saxigp2_awqos(axi_smc_1_M00_AXI_AWQOS),
        .saxigp2_awready(axi_smc_1_M00_AXI_AWREADY),
        .saxigp2_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .saxigp2_awuser(1'b0),
        .saxigp2_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .saxigp2_bready(axi_smc_1_M00_AXI_BREADY),
        .saxigp2_bresp(axi_smc_1_M00_AXI_BRESP),
        .saxigp2_bvalid(axi_smc_1_M00_AXI_BVALID),
        .saxigp2_rdata(axi_smc_1_M00_AXI_RDATA),
        .saxigp2_rlast(axi_smc_1_M00_AXI_RLAST),
        .saxigp2_rready(axi_smc_1_M00_AXI_RREADY),
        .saxigp2_rresp(axi_smc_1_M00_AXI_RRESP),
        .saxigp2_rvalid(axi_smc_1_M00_AXI_RVALID),
        .saxigp2_wdata(axi_smc_1_M00_AXI_WDATA),
        .saxigp2_wlast(axi_smc_1_M00_AXI_WLAST),
        .saxigp2_wready(axi_smc_1_M00_AXI_WREADY),
        .saxigp2_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .saxigp2_wvalid(axi_smc_1_M00_AXI_WVALID),
        .saxigp3_araddr(axi_smc_2_M00_AXI_ARADDR),
        .saxigp3_arburst(axi_smc_2_M00_AXI_ARBURST),
        .saxigp3_arcache(axi_smc_2_M00_AXI_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_arlen(axi_smc_2_M00_AXI_ARLEN),
        .saxigp3_arlock(axi_smc_2_M00_AXI_ARLOCK),
        .saxigp3_arprot(axi_smc_2_M00_AXI_ARPROT),
        .saxigp3_arqos(axi_smc_2_M00_AXI_ARQOS),
        .saxigp3_arready(axi_smc_2_M00_AXI_ARREADY),
        .saxigp3_arsize(axi_smc_2_M00_AXI_ARSIZE),
        .saxigp3_aruser(1'b0),
        .saxigp3_arvalid(axi_smc_2_M00_AXI_ARVALID),
        .saxigp3_awaddr(axi_smc_2_M00_AXI_AWADDR),
        .saxigp3_awburst(axi_smc_2_M00_AXI_AWBURST),
        .saxigp3_awcache(axi_smc_2_M00_AXI_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_awlen(axi_smc_2_M00_AXI_AWLEN),
        .saxigp3_awlock(axi_smc_2_M00_AXI_AWLOCK),
        .saxigp3_awprot(axi_smc_2_M00_AXI_AWPROT),
        .saxigp3_awqos(axi_smc_2_M00_AXI_AWQOS),
        .saxigp3_awready(axi_smc_2_M00_AXI_AWREADY),
        .saxigp3_awsize(axi_smc_2_M00_AXI_AWSIZE),
        .saxigp3_awuser(1'b0),
        .saxigp3_awvalid(axi_smc_2_M00_AXI_AWVALID),
        .saxigp3_bready(axi_smc_2_M00_AXI_BREADY),
        .saxigp3_bresp(axi_smc_2_M00_AXI_BRESP),
        .saxigp3_bvalid(axi_smc_2_M00_AXI_BVALID),
        .saxigp3_rdata(axi_smc_2_M00_AXI_RDATA),
        .saxigp3_rlast(axi_smc_2_M00_AXI_RLAST),
        .saxigp3_rready(axi_smc_2_M00_AXI_RREADY),
        .saxigp3_rresp(axi_smc_2_M00_AXI_RRESP),
        .saxigp3_rvalid(axi_smc_2_M00_AXI_RVALID),
        .saxigp3_wdata(axi_smc_2_M00_AXI_WDATA),
        .saxigp3_wlast(axi_smc_2_M00_AXI_WLAST),
        .saxigp3_wready(axi_smc_2_M00_AXI_WREADY),
        .saxigp3_wstrb(axi_smc_2_M00_AXI_WSTRB),
        .saxigp3_wvalid(axi_smc_2_M00_AXI_WVALID),
        .saxigp4_araddr(axi_smc_cam_M00_AXI_ARADDR),
        .saxigp4_arburst(axi_smc_cam_M00_AXI_ARBURST),
        .saxigp4_arcache(axi_smc_cam_M00_AXI_ARCACHE),
        .saxigp4_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_arlen(axi_smc_cam_M00_AXI_ARLEN),
        .saxigp4_arlock(axi_smc_cam_M00_AXI_ARLOCK),
        .saxigp4_arprot(axi_smc_cam_M00_AXI_ARPROT),
        .saxigp4_arqos(axi_smc_cam_M00_AXI_ARQOS),
        .saxigp4_arready(axi_smc_cam_M00_AXI_ARREADY),
        .saxigp4_arsize(axi_smc_cam_M00_AXI_ARSIZE),
        .saxigp4_aruser(1'b0),
        .saxigp4_arvalid(axi_smc_cam_M00_AXI_ARVALID),
        .saxigp4_awaddr(axi_smc_cam_M00_AXI_AWADDR),
        .saxigp4_awburst(axi_smc_cam_M00_AXI_AWBURST),
        .saxigp4_awcache(axi_smc_cam_M00_AXI_AWCACHE),
        .saxigp4_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_awlen(axi_smc_cam_M00_AXI_AWLEN),
        .saxigp4_awlock(axi_smc_cam_M00_AXI_AWLOCK),
        .saxigp4_awprot(axi_smc_cam_M00_AXI_AWPROT),
        .saxigp4_awqos(axi_smc_cam_M00_AXI_AWQOS),
        .saxigp4_awready(axi_smc_cam_M00_AXI_AWREADY),
        .saxigp4_awsize(axi_smc_cam_M00_AXI_AWSIZE),
        .saxigp4_awuser(1'b0),
        .saxigp4_awvalid(axi_smc_cam_M00_AXI_AWVALID),
        .saxigp4_bready(axi_smc_cam_M00_AXI_BREADY),
        .saxigp4_bresp(axi_smc_cam_M00_AXI_BRESP),
        .saxigp4_bvalid(axi_smc_cam_M00_AXI_BVALID),
        .saxigp4_rdata(axi_smc_cam_M00_AXI_RDATA),
        .saxigp4_rlast(axi_smc_cam_M00_AXI_RLAST),
        .saxigp4_rready(axi_smc_cam_M00_AXI_RREADY),
        .saxigp4_rresp(axi_smc_cam_M00_AXI_RRESP),
        .saxigp4_rvalid(axi_smc_cam_M00_AXI_RVALID),
        .saxigp4_wdata(axi_smc_cam_M00_AXI_WDATA),
        .saxigp4_wlast(axi_smc_cam_M00_AXI_WLAST),
        .saxigp4_wready(axi_smc_cam_M00_AXI_WREADY),
        .saxigp4_wstrb(axi_smc_cam_M00_AXI_WSTRB),
        .saxigp4_wvalid(axi_smc_cam_M00_AXI_WVALID),
        .saxihp0_fpd_aclk(clk_wiz_clk_mm),
        .saxihp1_fpd_aclk(clk_wiz_clk_mm),
        .saxihp2_fpd_aclk(clk_wiz_clk_mm),
        .saxihpc0_fpd_aclk(clk_wiz_clk_mm));
endmodule

module design_1_ps8_0_axi_periph_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arprot,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awprot,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arprot,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awprot,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [39:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [39:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [39:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [39:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [39:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [39:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [39:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [39:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [39:0]M06_AXI_araddr;
  output [2:0]M06_AXI_arprot;
  input [0:0]M06_AXI_arready;
  output [0:0]M06_AXI_arvalid;
  output [39:0]M06_AXI_awaddr;
  output [2:0]M06_AXI_awprot;
  input [0:0]M06_AXI_awready;
  output [0:0]M06_AXI_awvalid;
  output [0:0]M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input [0:0]M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output [0:0]M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input [0:0]M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input [0:0]M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output [0:0]M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [39:0]M07_AXI_araddr;
  output [2:0]M07_AXI_arprot;
  input [0:0]M07_AXI_arready;
  output [0:0]M07_AXI_arvalid;
  output [39:0]M07_AXI_awaddr;
  output [2:0]M07_AXI_awprot;
  input [0:0]M07_AXI_awready;
  output [0:0]M07_AXI_awvalid;
  output [0:0]M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input [0:0]M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output [0:0]M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input [0:0]M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input [0:0]M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output [0:0]M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [39:0]M08_AXI_araddr;
  output [2:0]M08_AXI_arprot;
  input [0:0]M08_AXI_arready;
  output [0:0]M08_AXI_arvalid;
  output [39:0]M08_AXI_awaddr;
  output [2:0]M08_AXI_awprot;
  input [0:0]M08_AXI_awready;
  output [0:0]M08_AXI_awvalid;
  output [0:0]M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input [0:0]M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output [0:0]M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input [0:0]M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input [0:0]M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output [0:0]M08_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire [39:0]m00_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m00_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m03_couplers_to_ps8_0_axi_periph_ARPROT;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m03_couplers_to_ps8_0_axi_periph_AWPROT;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m04_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m04_couplers_to_ps8_0_axi_periph_ARPROT;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m04_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m04_couplers_to_ps8_0_axi_periph_AWPROT;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m04_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m05_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m05_couplers_to_ps8_0_axi_periph_ARPROT;
  wire [0:0]m05_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m05_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m05_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m05_couplers_to_ps8_0_axi_periph_AWPROT;
  wire [0:0]m05_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m05_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m05_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m05_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m05_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m05_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m05_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m05_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m06_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m06_couplers_to_ps8_0_axi_periph_ARPROT;
  wire [0:0]m06_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m06_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m06_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m06_couplers_to_ps8_0_axi_periph_AWPROT;
  wire [0:0]m06_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m06_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m06_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m06_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m06_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m06_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m06_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m06_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m07_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m07_couplers_to_ps8_0_axi_periph_ARPROT;
  wire [0:0]m07_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m07_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m07_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m07_couplers_to_ps8_0_axi_periph_AWPROT;
  wire [0:0]m07_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m07_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m07_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m07_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m07_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m07_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m07_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m07_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m07_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m08_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m08_couplers_to_ps8_0_axi_periph_ARPROT;
  wire [0:0]m08_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m08_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m08_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m08_couplers_to_ps8_0_axi_periph_AWPROT;
  wire [0:0]m08_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m08_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m08_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m08_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m08_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m08_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m08_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m08_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m08_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m08_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m08_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m08_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m08_couplers_to_ps8_0_axi_periph_WVALID;
  wire ps8_0_axi_periph_ACLK_net;
  wire ps8_0_axi_periph_ARESETN_net;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps8_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_ARVALID;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps8_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_AWVALID;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_BID;
  wire ps8_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_BRESP;
  wire ps8_0_axi_periph_to_s00_couplers_BVALID;
  wire [127:0]ps8_0_axi_periph_to_s00_couplers_RDATA;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_RID;
  wire ps8_0_axi_periph_to_s00_couplers_RLAST;
  wire ps8_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_RRESP;
  wire ps8_0_axi_periph_to_s00_couplers_RVALID;
  wire [127:0]ps8_0_axi_periph_to_s00_couplers_WDATA;
  wire ps8_0_axi_periph_to_s00_couplers_WLAST;
  wire ps8_0_axi_periph_to_s00_couplers_WREADY;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps8_0_axi_periph_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [199:160]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [199:160]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [239:200]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [239:200]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [279:240]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire [0:0]xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [279:240]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire [0:0]xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire [0:0]xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire [0:0]xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire [0:0]xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [319:280]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire [0:0]xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [319:280]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire [0:0]xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire [0:0]xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire [0:0]xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire [0:0]xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [359:320]xbar_to_m08_couplers_ARADDR;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire [0:0]xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [359:320]xbar_to_m08_couplers_AWADDR;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire [0:0]xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire [0:0]xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire [0:0]xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire [0:0]xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [26:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [26:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[39:0] = m00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_ps8_0_axi_periph_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_ps8_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_ps8_0_axi_periph_WVALID;
  assign M01_AXI_araddr[39:0] = m01_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[39:0] = m01_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_ps8_0_axi_periph_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_ps8_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps8_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_ps8_0_axi_periph_WVALID;
  assign M02_AXI_araddr[39:0] = m02_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[39:0] = m02_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_ps8_0_axi_periph_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_ps8_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ps8_0_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_ps8_0_axi_periph_WVALID;
  assign M03_AXI_araddr[39:0] = m03_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M03_AXI_arvalid[0] = m03_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr[39:0] = m03_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M03_AXI_awvalid[0] = m03_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_ps8_0_axi_periph_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_ps8_0_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_ps8_0_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_ps8_0_axi_periph_WVALID;
  assign M04_AXI_araddr[39:0] = m04_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M04_AXI_arvalid[0] = m04_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr[39:0] = m04_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M04_AXI_awvalid[0] = m04_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_ps8_0_axi_periph_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_ps8_0_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ps8_0_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_ps8_0_axi_periph_WVALID;
  assign M05_AXI_araddr[39:0] = m05_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M05_AXI_arvalid[0] = m05_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M05_AXI_awaddr[39:0] = m05_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M05_AXI_awvalid[0] = m05_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_ps8_0_axi_periph_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_ps8_0_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_ps8_0_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_ps8_0_axi_periph_WVALID;
  assign M06_AXI_araddr[39:0] = m06_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M06_AXI_arprot[2:0] = m06_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M06_AXI_arvalid[0] = m06_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M06_AXI_awaddr[39:0] = m06_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M06_AXI_awprot[2:0] = m06_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M06_AXI_awvalid[0] = m06_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M06_AXI_bready[0] = m06_couplers_to_ps8_0_axi_periph_BREADY;
  assign M06_AXI_rready[0] = m06_couplers_to_ps8_0_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_ps8_0_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M06_AXI_wvalid[0] = m06_couplers_to_ps8_0_axi_periph_WVALID;
  assign M07_AXI_araddr[39:0] = m07_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M07_AXI_arprot[2:0] = m07_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M07_AXI_arvalid[0] = m07_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M07_AXI_awaddr[39:0] = m07_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M07_AXI_awprot[2:0] = m07_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M07_AXI_awvalid[0] = m07_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M07_AXI_bready[0] = m07_couplers_to_ps8_0_axi_periph_BREADY;
  assign M07_AXI_rready[0] = m07_couplers_to_ps8_0_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_ps8_0_axi_periph_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M07_AXI_wvalid[0] = m07_couplers_to_ps8_0_axi_periph_WVALID;
  assign M08_AXI_araddr[39:0] = m08_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M08_AXI_arprot[2:0] = m08_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M08_AXI_arvalid[0] = m08_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M08_AXI_awaddr[39:0] = m08_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M08_AXI_awprot[2:0] = m08_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M08_AXI_awvalid[0] = m08_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M08_AXI_bready[0] = m08_couplers_to_ps8_0_axi_periph_BREADY;
  assign M08_AXI_rready[0] = m08_couplers_to_ps8_0_axi_periph_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_ps8_0_axi_periph_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M08_AXI_wvalid[0] = m08_couplers_to_ps8_0_axi_periph_WVALID;
  assign S00_AXI_arready = ps8_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps8_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps8_0_axi_periph_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_ps8_0_axi_periph_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_ps8_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_ps8_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps8_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_ps8_0_axi_periph_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_ps8_0_axi_periph_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_ps8_0_axi_periph_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_ps8_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_ps8_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps8_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_ps8_0_axi_periph_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_ps8_0_axi_periph_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_ps8_0_axi_periph_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_ps8_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_ps8_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps8_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_ps8_0_axi_periph_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_ps8_0_axi_periph_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_ps8_0_axi_periph_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_ps8_0_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_ps8_0_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ps8_0_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_ps8_0_axi_periph_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_ps8_0_axi_periph_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_ps8_0_axi_periph_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_ps8_0_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_ps8_0_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ps8_0_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_ps8_0_axi_periph_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_ps8_0_axi_periph_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_ps8_0_axi_periph_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_ps8_0_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_ps8_0_axi_periph_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_ps8_0_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_ps8_0_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_ps8_0_axi_periph_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_ps8_0_axi_periph_WREADY = M05_AXI_wready[0];
  assign m06_couplers_to_ps8_0_axi_periph_ARREADY = M06_AXI_arready[0];
  assign m06_couplers_to_ps8_0_axi_periph_AWREADY = M06_AXI_awready[0];
  assign m06_couplers_to_ps8_0_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_ps8_0_axi_periph_BVALID = M06_AXI_bvalid[0];
  assign m06_couplers_to_ps8_0_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_ps8_0_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_ps8_0_axi_periph_RVALID = M06_AXI_rvalid[0];
  assign m06_couplers_to_ps8_0_axi_periph_WREADY = M06_AXI_wready[0];
  assign m07_couplers_to_ps8_0_axi_periph_ARREADY = M07_AXI_arready[0];
  assign m07_couplers_to_ps8_0_axi_periph_AWREADY = M07_AXI_awready[0];
  assign m07_couplers_to_ps8_0_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_ps8_0_axi_periph_BVALID = M07_AXI_bvalid[0];
  assign m07_couplers_to_ps8_0_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_ps8_0_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_ps8_0_axi_periph_RVALID = M07_AXI_rvalid[0];
  assign m07_couplers_to_ps8_0_axi_periph_WREADY = M07_AXI_wready[0];
  assign m08_couplers_to_ps8_0_axi_periph_ARREADY = M08_AXI_arready[0];
  assign m08_couplers_to_ps8_0_axi_periph_AWREADY = M08_AXI_awready[0];
  assign m08_couplers_to_ps8_0_axi_periph_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_ps8_0_axi_periph_BVALID = M08_AXI_bvalid[0];
  assign m08_couplers_to_ps8_0_axi_periph_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_ps8_0_axi_periph_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_ps8_0_axi_periph_RVALID = M08_AXI_rvalid[0];
  assign m08_couplers_to_ps8_0_axi_periph_WREADY = M08_AXI_wready[0];
  assign ps8_0_axi_periph_ACLK_net = ACLK;
  assign ps8_0_axi_periph_ARESETN_net = ARESETN;
  assign ps8_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign ps8_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps8_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_QJIMLI m00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1D3SAH3 m01_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_P3UMW5 m02_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1E9R4HW m03_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m03_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m03_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m03_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m03_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_NB1YAO m04_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m04_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m04_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m04_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m04_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1FZ4A9T m05_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m05_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m05_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m05_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m05_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_MPDFMR m06_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m06_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m06_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m06_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m06_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_1GV49DU m07_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m07_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m07_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m07_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m07_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m07_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m07_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_K8X5UY m08_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m08_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m08_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m08_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m08_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m08_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m08_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m08_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m08_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  s00_couplers_imp_1A7ZMW4 s00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(ps8_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps8_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps8_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps8_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps8_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps8_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps8_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps8_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps8_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps8_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps8_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps8_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps8_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps8_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps8_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_to_s00_couplers_WVALID));
  design_1_xbar_1 xbar
       (.aclk(ps8_0_axi_periph_ACLK_net),
        .aresetn(ps8_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[8:0]}),
        .m_axi_arready({xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[8:0]}),
        .m_axi_awready({xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module design_1_ps8_0_axi_periph_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [39:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [39:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [39:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [39:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [6:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [6:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [39:0]m00_couplers_to_ps8_0_axi_periph_1_ARADDR;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_ARREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_ARVALID;
  wire [39:0]m00_couplers_to_ps8_0_axi_periph_1_AWADDR;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_AWREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_AWVALID;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_BREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_1_BRESP;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_BVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_1_RDATA;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_RREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_1_RRESP;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_RVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_1_WDATA;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_WREADY;
  wire [3:0]m00_couplers_to_ps8_0_axi_periph_1_WSTRB;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_1_WVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_1_ARADDR;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_ARREADY;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_ARVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_1_AWADDR;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_AWREADY;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_AWVALID;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_BREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_1_BRESP;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_BVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_1_RDATA;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_RREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_1_RRESP;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_RVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_1_WDATA;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_WREADY;
  wire [3:0]m01_couplers_to_ps8_0_axi_periph_1_WSTRB;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_1_WVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_1_ARADDR;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_1_ARREADY;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_1_ARVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_1_AWADDR;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_1_AWREADY;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_1_AWVALID;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_1_BREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_1_BRESP;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_1_BVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_1_RDATA;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_1_RREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_1_RRESP;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_1_RVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_1_WDATA;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_1_WREADY;
  wire [3:0]m02_couplers_to_ps8_0_axi_periph_1_WSTRB;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_1_WVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_1_ARADDR;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_1_ARREADY;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_1_ARVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_1_AWADDR;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_1_AWREADY;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_1_AWVALID;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_1_BREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_1_BRESP;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_1_BVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_1_RDATA;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_1_RREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_1_RRESP;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_1_RVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_1_WDATA;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_1_WREADY;
  wire [3:0]m03_couplers_to_ps8_0_axi_periph_1_WSTRB;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_1_WVALID;
  wire [6:0]m04_couplers_to_ps8_0_axi_periph_1_ARADDR;
  wire m04_couplers_to_ps8_0_axi_periph_1_ARREADY;
  wire m04_couplers_to_ps8_0_axi_periph_1_ARVALID;
  wire [6:0]m04_couplers_to_ps8_0_axi_periph_1_AWADDR;
  wire m04_couplers_to_ps8_0_axi_periph_1_AWREADY;
  wire m04_couplers_to_ps8_0_axi_periph_1_AWVALID;
  wire m04_couplers_to_ps8_0_axi_periph_1_BREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_1_BRESP;
  wire m04_couplers_to_ps8_0_axi_periph_1_BVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_1_RDATA;
  wire m04_couplers_to_ps8_0_axi_periph_1_RREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_1_RRESP;
  wire m04_couplers_to_ps8_0_axi_periph_1_RVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_1_WDATA;
  wire m04_couplers_to_ps8_0_axi_periph_1_WREADY;
  wire [3:0]m04_couplers_to_ps8_0_axi_periph_1_WSTRB;
  wire m04_couplers_to_ps8_0_axi_periph_1_WVALID;
  wire ps8_0_axi_periph_1_ACLK_net;
  wire ps8_0_axi_periph_1_ARESETN_net;
  wire [39:0]ps8_0_axi_periph_1_to_s00_couplers_ARADDR;
  wire [1:0]ps8_0_axi_periph_1_to_s00_couplers_ARBURST;
  wire [3:0]ps8_0_axi_periph_1_to_s00_couplers_ARCACHE;
  wire [15:0]ps8_0_axi_periph_1_to_s00_couplers_ARID;
  wire [7:0]ps8_0_axi_periph_1_to_s00_couplers_ARLEN;
  wire [0:0]ps8_0_axi_periph_1_to_s00_couplers_ARLOCK;
  wire [2:0]ps8_0_axi_periph_1_to_s00_couplers_ARPROT;
  wire [3:0]ps8_0_axi_periph_1_to_s00_couplers_ARQOS;
  wire ps8_0_axi_periph_1_to_s00_couplers_ARREADY;
  wire [2:0]ps8_0_axi_periph_1_to_s00_couplers_ARSIZE;
  wire ps8_0_axi_periph_1_to_s00_couplers_ARVALID;
  wire [39:0]ps8_0_axi_periph_1_to_s00_couplers_AWADDR;
  wire [1:0]ps8_0_axi_periph_1_to_s00_couplers_AWBURST;
  wire [3:0]ps8_0_axi_periph_1_to_s00_couplers_AWCACHE;
  wire [15:0]ps8_0_axi_periph_1_to_s00_couplers_AWID;
  wire [7:0]ps8_0_axi_periph_1_to_s00_couplers_AWLEN;
  wire [0:0]ps8_0_axi_periph_1_to_s00_couplers_AWLOCK;
  wire [2:0]ps8_0_axi_periph_1_to_s00_couplers_AWPROT;
  wire [3:0]ps8_0_axi_periph_1_to_s00_couplers_AWQOS;
  wire ps8_0_axi_periph_1_to_s00_couplers_AWREADY;
  wire [2:0]ps8_0_axi_periph_1_to_s00_couplers_AWSIZE;
  wire ps8_0_axi_periph_1_to_s00_couplers_AWVALID;
  wire [15:0]ps8_0_axi_periph_1_to_s00_couplers_BID;
  wire ps8_0_axi_periph_1_to_s00_couplers_BREADY;
  wire [1:0]ps8_0_axi_periph_1_to_s00_couplers_BRESP;
  wire ps8_0_axi_periph_1_to_s00_couplers_BVALID;
  wire [127:0]ps8_0_axi_periph_1_to_s00_couplers_RDATA;
  wire [15:0]ps8_0_axi_periph_1_to_s00_couplers_RID;
  wire ps8_0_axi_periph_1_to_s00_couplers_RLAST;
  wire ps8_0_axi_periph_1_to_s00_couplers_RREADY;
  wire [1:0]ps8_0_axi_periph_1_to_s00_couplers_RRESP;
  wire ps8_0_axi_periph_1_to_s00_couplers_RVALID;
  wire [127:0]ps8_0_axi_periph_1_to_s00_couplers_WDATA;
  wire ps8_0_axi_periph_1_to_s00_couplers_WLAST;
  wire ps8_0_axi_periph_1_to_s00_couplers_WREADY;
  wire [15:0]ps8_0_axi_periph_1_to_s00_couplers_WSTRB;
  wire ps8_0_axi_periph_1_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [199:160]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [199:160]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [14:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [14:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[39:0] = m00_couplers_to_ps8_0_axi_periph_1_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_ps8_0_axi_periph_1_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_ps8_0_axi_periph_1_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_ps8_0_axi_periph_1_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_ps8_0_axi_periph_1_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_ps8_0_axi_periph_1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps8_0_axi_periph_1_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_ps8_0_axi_periph_1_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_ps8_0_axi_periph_1_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[39:0] = m01_couplers_to_ps8_0_axi_periph_1_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_ps8_0_axi_periph_1_ARVALID;
  assign M01_AXI_awaddr[39:0] = m01_couplers_to_ps8_0_axi_periph_1_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_ps8_0_axi_periph_1_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_ps8_0_axi_periph_1_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_ps8_0_axi_periph_1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps8_0_axi_periph_1_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps8_0_axi_periph_1_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_ps8_0_axi_periph_1_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[39:0] = m02_couplers_to_ps8_0_axi_periph_1_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_ps8_0_axi_periph_1_ARVALID;
  assign M02_AXI_awaddr[39:0] = m02_couplers_to_ps8_0_axi_periph_1_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_ps8_0_axi_periph_1_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_ps8_0_axi_periph_1_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_ps8_0_axi_periph_1_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ps8_0_axi_periph_1_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_ps8_0_axi_periph_1_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_ps8_0_axi_periph_1_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[39:0] = m03_couplers_to_ps8_0_axi_periph_1_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_ps8_0_axi_periph_1_ARVALID;
  assign M03_AXI_awaddr[39:0] = m03_couplers_to_ps8_0_axi_periph_1_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_ps8_0_axi_periph_1_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_ps8_0_axi_periph_1_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_ps8_0_axi_periph_1_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_ps8_0_axi_periph_1_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_ps8_0_axi_periph_1_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_ps8_0_axi_periph_1_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[6:0] = m04_couplers_to_ps8_0_axi_periph_1_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_ps8_0_axi_periph_1_ARVALID;
  assign M04_AXI_awaddr[6:0] = m04_couplers_to_ps8_0_axi_periph_1_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_ps8_0_axi_periph_1_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_ps8_0_axi_periph_1_BREADY;
  assign M04_AXI_rready = m04_couplers_to_ps8_0_axi_periph_1_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ps8_0_axi_periph_1_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ps8_0_axi_periph_1_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_ps8_0_axi_periph_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps8_0_axi_periph_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = ps8_0_axi_periph_1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = ps8_0_axi_periph_1_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = ps8_0_axi_periph_1_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps8_0_axi_periph_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_1_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps8_0_axi_periph_1_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_ps8_0_axi_periph_1_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_ps8_0_axi_periph_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_1_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_ps8_0_axi_periph_1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps8_0_axi_periph_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_1_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_ps8_0_axi_periph_1_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_ps8_0_axi_periph_1_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_ps8_0_axi_periph_1_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_ps8_0_axi_periph_1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_1_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_ps8_0_axi_periph_1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps8_0_axi_periph_1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_1_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_ps8_0_axi_periph_1_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_ps8_0_axi_periph_1_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_ps8_0_axi_periph_1_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_ps8_0_axi_periph_1_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_1_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_ps8_0_axi_periph_1_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps8_0_axi_periph_1_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_1_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_ps8_0_axi_periph_1_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_ps8_0_axi_periph_1_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_ps8_0_axi_periph_1_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_ps8_0_axi_periph_1_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_1_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_ps8_0_axi_periph_1_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ps8_0_axi_periph_1_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_1_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_ps8_0_axi_periph_1_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_ps8_0_axi_periph_1_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_ps8_0_axi_periph_1_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_ps8_0_axi_periph_1_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_1_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_ps8_0_axi_periph_1_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ps8_0_axi_periph_1_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_1_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_ps8_0_axi_periph_1_WREADY = M04_AXI_wready;
  assign ps8_0_axi_periph_1_ACLK_net = ACLK;
  assign ps8_0_axi_periph_1_ARESETN_net = ARESETN;
  assign ps8_0_axi_periph_1_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_1_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps8_0_axi_periph_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign ps8_0_axi_periph_1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_3USNGV m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_ps8_0_axi_periph_1_ARADDR),
        .M_AXI_arready(m00_couplers_to_ps8_0_axi_periph_1_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps8_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps8_0_axi_periph_1_AWADDR),
        .M_AXI_awready(m00_couplers_to_ps8_0_axi_periph_1_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps8_0_axi_periph_1_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps8_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps8_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps8_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps8_0_axi_periph_1_RDATA),
        .M_AXI_rready(m00_couplers_to_ps8_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps8_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps8_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps8_0_axi_periph_1_WDATA),
        .M_AXI_wready(m00_couplers_to_ps8_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ps8_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_ps8_0_axi_periph_1_WVALID),
        .S_ACLK(ps8_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1QWM4OE m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_ps8_0_axi_periph_1_ARADDR),
        .M_AXI_arready(m01_couplers_to_ps8_0_axi_periph_1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps8_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps8_0_axi_periph_1_AWADDR),
        .M_AXI_awready(m01_couplers_to_ps8_0_axi_periph_1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps8_0_axi_periph_1_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps8_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps8_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps8_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps8_0_axi_periph_1_RDATA),
        .M_AXI_rready(m01_couplers_to_ps8_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps8_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps8_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps8_0_axi_periph_1_WDATA),
        .M_AXI_wready(m01_couplers_to_ps8_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps8_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps8_0_axi_periph_1_WVALID),
        .S_ACLK(ps8_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_29TYDO m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_ps8_0_axi_periph_1_ARADDR),
        .M_AXI_arready(m02_couplers_to_ps8_0_axi_periph_1_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps8_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps8_0_axi_periph_1_AWADDR),
        .M_AXI_awready(m02_couplers_to_ps8_0_axi_periph_1_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps8_0_axi_periph_1_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps8_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps8_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps8_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps8_0_axi_periph_1_RDATA),
        .M_AXI_rready(m02_couplers_to_ps8_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps8_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps8_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps8_0_axi_periph_1_WDATA),
        .M_AXI_wready(m02_couplers_to_ps8_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m02_couplers_to_ps8_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_ps8_0_axi_periph_1_WVALID),
        .S_ACLK(ps8_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1S7ALKD m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_ps8_0_axi_periph_1_ARADDR),
        .M_AXI_arready(m03_couplers_to_ps8_0_axi_periph_1_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ps8_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ps8_0_axi_periph_1_AWADDR),
        .M_AXI_awready(m03_couplers_to_ps8_0_axi_periph_1_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ps8_0_axi_periph_1_AWVALID),
        .M_AXI_bready(m03_couplers_to_ps8_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m03_couplers_to_ps8_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(m03_couplers_to_ps8_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m03_couplers_to_ps8_0_axi_periph_1_RDATA),
        .M_AXI_rready(m03_couplers_to_ps8_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m03_couplers_to_ps8_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(m03_couplers_to_ps8_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m03_couplers_to_ps8_0_axi_periph_1_WDATA),
        .M_AXI_wready(m03_couplers_to_ps8_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ps8_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ps8_0_axi_periph_1_WVALID),
        .S_ACLK(ps8_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_1QZ361 m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_ps8_0_axi_periph_1_ARADDR),
        .M_AXI_arready(m04_couplers_to_ps8_0_axi_periph_1_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ps8_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ps8_0_axi_periph_1_AWADDR),
        .M_AXI_awready(m04_couplers_to_ps8_0_axi_periph_1_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ps8_0_axi_periph_1_AWVALID),
        .M_AXI_bready(m04_couplers_to_ps8_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m04_couplers_to_ps8_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ps8_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m04_couplers_to_ps8_0_axi_periph_1_RDATA),
        .M_AXI_rready(m04_couplers_to_ps8_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m04_couplers_to_ps8_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ps8_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m04_couplers_to_ps8_0_axi_periph_1_WDATA),
        .M_AXI_wready(m04_couplers_to_ps8_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ps8_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ps8_0_axi_periph_1_WVALID),
        .S_ACLK(ps8_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  s00_couplers_imp_1VXTOR1 s00_couplers
       (.M_ACLK(ps8_0_axi_periph_1_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps8_0_axi_periph_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps8_0_axi_periph_1_to_s00_couplers_ARID),
        .S_AXI_arlen(ps8_0_axi_periph_1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps8_0_axi_periph_1_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps8_0_axi_periph_1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps8_0_axi_periph_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps8_0_axi_periph_1_to_s00_couplers_AWID),
        .S_AXI_awlen(ps8_0_axi_periph_1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps8_0_axi_periph_1_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps8_0_axi_periph_1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps8_0_axi_periph_1_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps8_0_axi_periph_1_to_s00_couplers_BID),
        .S_AXI_bready(ps8_0_axi_periph_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_1_to_s00_couplers_RDATA),
        .S_AXI_rid(ps8_0_axi_periph_1_to_s00_couplers_RID),
        .S_AXI_rlast(ps8_0_axi_periph_1_to_s00_couplers_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_1_to_s00_couplers_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_1_to_s00_couplers_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_1_to_s00_couplers_WVALID));
  design_1_xbar_2 xbar
       (.aclk(ps8_0_axi_periph_1_ACLK_net),
        .aresetn(ps8_0_axi_periph_1_ARESETN_net),
        .m_axi_araddr({xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m04_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[11:0]}),
        .m_axi_arready({xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m04_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[11:0]}),
        .m_axi_awready({xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module gpio_slice_imp_UXAHX5
   (Dout_0,
    Dout_1,
    Dout_2,
    Dout_3,
    Dout_4,
    Dout_5,
    Dout_8_10,
    axi_ctrl_aclk,
    axi_ctrl_arstn,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arready,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_awready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rready,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wready,
    s_axi_ctrl_wstrb,
    s_axi_ctrl_wvalid);
  output [0:0]Dout_0;
  output [0:0]Dout_1;
  output [0:0]Dout_2;
  output [0:0]Dout_3;
  output [0:0]Dout_4;
  output [0:0]Dout_5;
  output [2:0]Dout_8_10;
  input axi_ctrl_aclk;
  input axi_ctrl_arstn;
  input [39:0]s_axi_ctrl_araddr;
  output [0:0]s_axi_ctrl_arready;
  input [0:0]s_axi_ctrl_arvalid;
  input [39:0]s_axi_ctrl_awaddr;
  output [0:0]s_axi_ctrl_awready;
  input [0:0]s_axi_ctrl_awvalid;
  input [0:0]s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  output [0:0]s_axi_ctrl_bvalid;
  output [31:0]s_axi_ctrl_rdata;
  input [0:0]s_axi_ctrl_rready;
  output [1:0]s_axi_ctrl_rresp;
  output [0:0]s_axi_ctrl_rvalid;
  input [31:0]s_axi_ctrl_wdata;
  output [0:0]s_axi_ctrl_wready;
  input [3:0]s_axi_ctrl_wstrb;
  input [0:0]s_axi_ctrl_wvalid;

  wire [39:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire [0:0]Conn1_ARVALID;
  wire [39:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire [0:0]Conn1_AWVALID;
  wire [0:0]Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire [0:0]Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire [0:0]Conn1_WVALID;
  wire axi_ctrl_arstn_1;
  wire [15:0]axi_gpio_gpio_io_o;
  wire s_axi_aclk_0_1;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;
  wire [2:0]xlslice_4_Dout;
  wire [0:0]xlslice_4_Dout1;
  wire [0:0]xlslice_5_Dout;

  assign Conn1_ARADDR = s_axi_ctrl_araddr[39:0];
  assign Conn1_ARVALID = s_axi_ctrl_arvalid[0];
  assign Conn1_AWADDR = s_axi_ctrl_awaddr[39:0];
  assign Conn1_AWVALID = s_axi_ctrl_awvalid[0];
  assign Conn1_BREADY = s_axi_ctrl_bready[0];
  assign Conn1_RREADY = s_axi_ctrl_rready[0];
  assign Conn1_WDATA = s_axi_ctrl_wdata[31:0];
  assign Conn1_WSTRB = s_axi_ctrl_wstrb[3:0];
  assign Conn1_WVALID = s_axi_ctrl_wvalid[0];
  assign Dout_0[0] = xlslice_0_Dout;
  assign Dout_1[0] = xlslice_1_Dout;
  assign Dout_2[0] = xlslice_2_Dout;
  assign Dout_3[0] = xlslice_3_Dout;
  assign Dout_4[0] = xlslice_4_Dout1;
  assign Dout_5[0] = xlslice_5_Dout;
  assign Dout_8_10[2:0] = xlslice_4_Dout;
  assign axi_ctrl_arstn_1 = axi_ctrl_arstn;
  assign s_axi_aclk_0_1 = axi_ctrl_aclk;
  assign s_axi_ctrl_arready[0] = Conn1_ARREADY;
  assign s_axi_ctrl_awready[0] = Conn1_AWREADY;
  assign s_axi_ctrl_bresp[1:0] = Conn1_BRESP;
  assign s_axi_ctrl_bvalid[0] = Conn1_BVALID;
  assign s_axi_ctrl_rdata[31:0] = Conn1_RDATA;
  assign s_axi_ctrl_rresp[1:0] = Conn1_RRESP;
  assign s_axi_ctrl_rvalid[0] = Conn1_RVALID;
  assign s_axi_ctrl_wready[0] = Conn1_WREADY;
  design_1_axi_gpio_0_0 axi_gpio
       (.gpio_io_o(axi_gpio_gpio_io_o),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(Conn1_ARADDR[8:0]),
        .s_axi_aresetn(axi_ctrl_arstn_1),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR[8:0]),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID));
  design_1_xlslice_0_0 xlslice_0
       (.Din(axi_gpio_gpio_io_o),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_1_0 xlslice_1
       (.Din(axi_gpio_gpio_io_o),
        .Dout(xlslice_1_Dout));
  design_1_xlslice_2_0 xlslice_2
       (.Din(axi_gpio_gpio_io_o),
        .Dout(xlslice_2_Dout));
  design_1_xlslice_3_0 xlslice_3
       (.Din(axi_gpio_gpio_io_o),
        .Dout(xlslice_3_Dout));
  design_1_xlslice_4_1 xlslice_4
       (.Din(axi_gpio_gpio_io_o),
        .Dout(xlslice_4_Dout1));
  design_1_xlslice_5_0 xlslice_5
       (.Din(axi_gpio_gpio_io_o),
        .Dout(xlslice_5_Dout));
  design_1_xlslice_4_0 xlslice_8_10
       (.Din(axi_gpio_gpio_io_o),
        .Dout(xlslice_4_Dout));
endmodule

module isp_pipe_imp_1RRJHAC
   (axi_arstn_rd,
    axi_arstn_wr_1,
    axi_arstn_wr_2,
    axi_ctrl_aclk,
    axi_ctrl_arstn,
    axi_mm_aclk,
    axi_mm_arstn,
    irq_isp,
    irq_rd,
    irq_vip_1,
    irq_vip_2,
    irq_wr_1,
    irq_wr_2,
    m_axi_mm_rd_araddr,
    m_axi_mm_rd_arburst,
    m_axi_mm_rd_arcache,
    m_axi_mm_rd_arlen,
    m_axi_mm_rd_arlock,
    m_axi_mm_rd_arprot,
    m_axi_mm_rd_arqos,
    m_axi_mm_rd_arready,
    m_axi_mm_rd_arsize,
    m_axi_mm_rd_arvalid,
    m_axi_mm_rd_awaddr,
    m_axi_mm_rd_awburst,
    m_axi_mm_rd_awcache,
    m_axi_mm_rd_awlen,
    m_axi_mm_rd_awlock,
    m_axi_mm_rd_awprot,
    m_axi_mm_rd_awqos,
    m_axi_mm_rd_awready,
    m_axi_mm_rd_awsize,
    m_axi_mm_rd_awvalid,
    m_axi_mm_rd_bready,
    m_axi_mm_rd_bresp,
    m_axi_mm_rd_bvalid,
    m_axi_mm_rd_rdata,
    m_axi_mm_rd_rlast,
    m_axi_mm_rd_rready,
    m_axi_mm_rd_rresp,
    m_axi_mm_rd_rvalid,
    m_axi_mm_rd_wdata,
    m_axi_mm_rd_wlast,
    m_axi_mm_rd_wready,
    m_axi_mm_rd_wstrb,
    m_axi_mm_rd_wvalid,
    m_axi_mm_wr_1_araddr,
    m_axi_mm_wr_1_arburst,
    m_axi_mm_wr_1_arcache,
    m_axi_mm_wr_1_arlen,
    m_axi_mm_wr_1_arlock,
    m_axi_mm_wr_1_arprot,
    m_axi_mm_wr_1_arqos,
    m_axi_mm_wr_1_arready,
    m_axi_mm_wr_1_arsize,
    m_axi_mm_wr_1_arvalid,
    m_axi_mm_wr_1_awaddr,
    m_axi_mm_wr_1_awburst,
    m_axi_mm_wr_1_awcache,
    m_axi_mm_wr_1_awlen,
    m_axi_mm_wr_1_awlock,
    m_axi_mm_wr_1_awprot,
    m_axi_mm_wr_1_awqos,
    m_axi_mm_wr_1_awready,
    m_axi_mm_wr_1_awsize,
    m_axi_mm_wr_1_awvalid,
    m_axi_mm_wr_1_bready,
    m_axi_mm_wr_1_bresp,
    m_axi_mm_wr_1_bvalid,
    m_axi_mm_wr_1_rdata,
    m_axi_mm_wr_1_rlast,
    m_axi_mm_wr_1_rready,
    m_axi_mm_wr_1_rresp,
    m_axi_mm_wr_1_rvalid,
    m_axi_mm_wr_1_wdata,
    m_axi_mm_wr_1_wlast,
    m_axi_mm_wr_1_wready,
    m_axi_mm_wr_1_wstrb,
    m_axi_mm_wr_1_wvalid,
    m_axi_mm_wr_2_araddr,
    m_axi_mm_wr_2_arburst,
    m_axi_mm_wr_2_arcache,
    m_axi_mm_wr_2_arlen,
    m_axi_mm_wr_2_arlock,
    m_axi_mm_wr_2_arprot,
    m_axi_mm_wr_2_arqos,
    m_axi_mm_wr_2_arready,
    m_axi_mm_wr_2_arsize,
    m_axi_mm_wr_2_arvalid,
    m_axi_mm_wr_2_awaddr,
    m_axi_mm_wr_2_awburst,
    m_axi_mm_wr_2_awcache,
    m_axi_mm_wr_2_awlen,
    m_axi_mm_wr_2_awlock,
    m_axi_mm_wr_2_awprot,
    m_axi_mm_wr_2_awqos,
    m_axi_mm_wr_2_awready,
    m_axi_mm_wr_2_awsize,
    m_axi_mm_wr_2_awvalid,
    m_axi_mm_wr_2_bready,
    m_axi_mm_wr_2_bresp,
    m_axi_mm_wr_2_bvalid,
    m_axi_mm_wr_2_rdata,
    m_axi_mm_wr_2_rlast,
    m_axi_mm_wr_2_rready,
    m_axi_mm_wr_2_rresp,
    m_axi_mm_wr_2_rvalid,
    m_axi_mm_wr_2_wdata,
    m_axi_mm_wr_2_wlast,
    m_axi_mm_wr_2_wready,
    m_axi_mm_wr_2_wstrb,
    m_axi_mm_wr_2_wvalid,
    s_axi_ctrl_isp_araddr,
    s_axi_ctrl_isp_arprot,
    s_axi_ctrl_isp_arready,
    s_axi_ctrl_isp_arvalid,
    s_axi_ctrl_isp_awaddr,
    s_axi_ctrl_isp_awprot,
    s_axi_ctrl_isp_awready,
    s_axi_ctrl_isp_awvalid,
    s_axi_ctrl_isp_bready,
    s_axi_ctrl_isp_bresp,
    s_axi_ctrl_isp_bvalid,
    s_axi_ctrl_isp_rdata,
    s_axi_ctrl_isp_rready,
    s_axi_ctrl_isp_rresp,
    s_axi_ctrl_isp_rvalid,
    s_axi_ctrl_isp_wdata,
    s_axi_ctrl_isp_wready,
    s_axi_ctrl_isp_wstrb,
    s_axi_ctrl_isp_wvalid,
    s_axi_ctrl_rd_araddr,
    s_axi_ctrl_rd_arready,
    s_axi_ctrl_rd_arvalid,
    s_axi_ctrl_rd_awaddr,
    s_axi_ctrl_rd_awready,
    s_axi_ctrl_rd_awvalid,
    s_axi_ctrl_rd_bready,
    s_axi_ctrl_rd_bresp,
    s_axi_ctrl_rd_bvalid,
    s_axi_ctrl_rd_rdata,
    s_axi_ctrl_rd_rready,
    s_axi_ctrl_rd_rresp,
    s_axi_ctrl_rd_rvalid,
    s_axi_ctrl_rd_wdata,
    s_axi_ctrl_rd_wready,
    s_axi_ctrl_rd_wstrb,
    s_axi_ctrl_rd_wvalid,
    s_axi_ctrl_vip_1_araddr,
    s_axi_ctrl_vip_1_arprot,
    s_axi_ctrl_vip_1_arready,
    s_axi_ctrl_vip_1_arvalid,
    s_axi_ctrl_vip_1_awaddr,
    s_axi_ctrl_vip_1_awprot,
    s_axi_ctrl_vip_1_awready,
    s_axi_ctrl_vip_1_awvalid,
    s_axi_ctrl_vip_1_bready,
    s_axi_ctrl_vip_1_bresp,
    s_axi_ctrl_vip_1_bvalid,
    s_axi_ctrl_vip_1_rdata,
    s_axi_ctrl_vip_1_rready,
    s_axi_ctrl_vip_1_rresp,
    s_axi_ctrl_vip_1_rvalid,
    s_axi_ctrl_vip_1_wdata,
    s_axi_ctrl_vip_1_wready,
    s_axi_ctrl_vip_1_wstrb,
    s_axi_ctrl_vip_1_wvalid,
    s_axi_ctrl_vip_2_araddr,
    s_axi_ctrl_vip_2_arprot,
    s_axi_ctrl_vip_2_arready,
    s_axi_ctrl_vip_2_arvalid,
    s_axi_ctrl_vip_2_awaddr,
    s_axi_ctrl_vip_2_awprot,
    s_axi_ctrl_vip_2_awready,
    s_axi_ctrl_vip_2_awvalid,
    s_axi_ctrl_vip_2_bready,
    s_axi_ctrl_vip_2_bresp,
    s_axi_ctrl_vip_2_bvalid,
    s_axi_ctrl_vip_2_rdata,
    s_axi_ctrl_vip_2_rready,
    s_axi_ctrl_vip_2_rresp,
    s_axi_ctrl_vip_2_rvalid,
    s_axi_ctrl_vip_2_wdata,
    s_axi_ctrl_vip_2_wready,
    s_axi_ctrl_vip_2_wstrb,
    s_axi_ctrl_vip_2_wvalid,
    s_axi_ctrl_wr_1_araddr,
    s_axi_ctrl_wr_1_arready,
    s_axi_ctrl_wr_1_arvalid,
    s_axi_ctrl_wr_1_awaddr,
    s_axi_ctrl_wr_1_awready,
    s_axi_ctrl_wr_1_awvalid,
    s_axi_ctrl_wr_1_bready,
    s_axi_ctrl_wr_1_bresp,
    s_axi_ctrl_wr_1_bvalid,
    s_axi_ctrl_wr_1_rdata,
    s_axi_ctrl_wr_1_rready,
    s_axi_ctrl_wr_1_rresp,
    s_axi_ctrl_wr_1_rvalid,
    s_axi_ctrl_wr_1_wdata,
    s_axi_ctrl_wr_1_wready,
    s_axi_ctrl_wr_1_wstrb,
    s_axi_ctrl_wr_1_wvalid,
    s_axi_ctrl_wr_2_araddr,
    s_axi_ctrl_wr_2_arready,
    s_axi_ctrl_wr_2_arvalid,
    s_axi_ctrl_wr_2_awaddr,
    s_axi_ctrl_wr_2_awready,
    s_axi_ctrl_wr_2_awvalid,
    s_axi_ctrl_wr_2_bready,
    s_axi_ctrl_wr_2_bresp,
    s_axi_ctrl_wr_2_bvalid,
    s_axi_ctrl_wr_2_rdata,
    s_axi_ctrl_wr_2_rready,
    s_axi_ctrl_wr_2_rresp,
    s_axi_ctrl_wr_2_rvalid,
    s_axi_ctrl_wr_2_wdata,
    s_axi_ctrl_wr_2_wready,
    s_axi_ctrl_wr_2_wstrb,
    s_axi_ctrl_wr_2_wvalid,
    vid_pclk,
    vid_rstn);
  input axi_arstn_rd;
  input axi_arstn_wr_1;
  input axi_arstn_wr_2;
  input axi_ctrl_aclk;
  input axi_ctrl_arstn;
  input axi_mm_aclk;
  input axi_mm_arstn;
  output irq_isp;
  output irq_rd;
  output irq_vip_1;
  output irq_vip_2;
  output irq_wr_1;
  output irq_wr_2;
  output [31:0]m_axi_mm_rd_araddr;
  output [1:0]m_axi_mm_rd_arburst;
  output [3:0]m_axi_mm_rd_arcache;
  output [7:0]m_axi_mm_rd_arlen;
  output [1:0]m_axi_mm_rd_arlock;
  output [2:0]m_axi_mm_rd_arprot;
  output [3:0]m_axi_mm_rd_arqos;
  input m_axi_mm_rd_arready;
  output [2:0]m_axi_mm_rd_arsize;
  output m_axi_mm_rd_arvalid;
  output [31:0]m_axi_mm_rd_awaddr;
  output [1:0]m_axi_mm_rd_awburst;
  output [3:0]m_axi_mm_rd_awcache;
  output [7:0]m_axi_mm_rd_awlen;
  output [1:0]m_axi_mm_rd_awlock;
  output [2:0]m_axi_mm_rd_awprot;
  output [3:0]m_axi_mm_rd_awqos;
  input m_axi_mm_rd_awready;
  output [2:0]m_axi_mm_rd_awsize;
  output m_axi_mm_rd_awvalid;
  output m_axi_mm_rd_bready;
  input [1:0]m_axi_mm_rd_bresp;
  input m_axi_mm_rd_bvalid;
  input [63:0]m_axi_mm_rd_rdata;
  input m_axi_mm_rd_rlast;
  output m_axi_mm_rd_rready;
  input [1:0]m_axi_mm_rd_rresp;
  input m_axi_mm_rd_rvalid;
  output [63:0]m_axi_mm_rd_wdata;
  output m_axi_mm_rd_wlast;
  input m_axi_mm_rd_wready;
  output [7:0]m_axi_mm_rd_wstrb;
  output m_axi_mm_rd_wvalid;
  output [31:0]m_axi_mm_wr_1_araddr;
  output [1:0]m_axi_mm_wr_1_arburst;
  output [3:0]m_axi_mm_wr_1_arcache;
  output [7:0]m_axi_mm_wr_1_arlen;
  output [1:0]m_axi_mm_wr_1_arlock;
  output [2:0]m_axi_mm_wr_1_arprot;
  output [3:0]m_axi_mm_wr_1_arqos;
  input m_axi_mm_wr_1_arready;
  output [2:0]m_axi_mm_wr_1_arsize;
  output m_axi_mm_wr_1_arvalid;
  output [31:0]m_axi_mm_wr_1_awaddr;
  output [1:0]m_axi_mm_wr_1_awburst;
  output [3:0]m_axi_mm_wr_1_awcache;
  output [7:0]m_axi_mm_wr_1_awlen;
  output [1:0]m_axi_mm_wr_1_awlock;
  output [2:0]m_axi_mm_wr_1_awprot;
  output [3:0]m_axi_mm_wr_1_awqos;
  input m_axi_mm_wr_1_awready;
  output [2:0]m_axi_mm_wr_1_awsize;
  output m_axi_mm_wr_1_awvalid;
  output m_axi_mm_wr_1_bready;
  input [1:0]m_axi_mm_wr_1_bresp;
  input m_axi_mm_wr_1_bvalid;
  input [63:0]m_axi_mm_wr_1_rdata;
  input m_axi_mm_wr_1_rlast;
  output m_axi_mm_wr_1_rready;
  input [1:0]m_axi_mm_wr_1_rresp;
  input m_axi_mm_wr_1_rvalid;
  output [63:0]m_axi_mm_wr_1_wdata;
  output m_axi_mm_wr_1_wlast;
  input m_axi_mm_wr_1_wready;
  output [7:0]m_axi_mm_wr_1_wstrb;
  output m_axi_mm_wr_1_wvalid;
  output [31:0]m_axi_mm_wr_2_araddr;
  output [1:0]m_axi_mm_wr_2_arburst;
  output [3:0]m_axi_mm_wr_2_arcache;
  output [7:0]m_axi_mm_wr_2_arlen;
  output [1:0]m_axi_mm_wr_2_arlock;
  output [2:0]m_axi_mm_wr_2_arprot;
  output [3:0]m_axi_mm_wr_2_arqos;
  input m_axi_mm_wr_2_arready;
  output [2:0]m_axi_mm_wr_2_arsize;
  output m_axi_mm_wr_2_arvalid;
  output [31:0]m_axi_mm_wr_2_awaddr;
  output [1:0]m_axi_mm_wr_2_awburst;
  output [3:0]m_axi_mm_wr_2_awcache;
  output [7:0]m_axi_mm_wr_2_awlen;
  output [1:0]m_axi_mm_wr_2_awlock;
  output [2:0]m_axi_mm_wr_2_awprot;
  output [3:0]m_axi_mm_wr_2_awqos;
  input m_axi_mm_wr_2_awready;
  output [2:0]m_axi_mm_wr_2_awsize;
  output m_axi_mm_wr_2_awvalid;
  output m_axi_mm_wr_2_bready;
  input [1:0]m_axi_mm_wr_2_bresp;
  input m_axi_mm_wr_2_bvalid;
  input [63:0]m_axi_mm_wr_2_rdata;
  input m_axi_mm_wr_2_rlast;
  output m_axi_mm_wr_2_rready;
  input [1:0]m_axi_mm_wr_2_rresp;
  input m_axi_mm_wr_2_rvalid;
  output [63:0]m_axi_mm_wr_2_wdata;
  output m_axi_mm_wr_2_wlast;
  input m_axi_mm_wr_2_wready;
  output [7:0]m_axi_mm_wr_2_wstrb;
  output m_axi_mm_wr_2_wvalid;
  input [39:0]s_axi_ctrl_isp_araddr;
  input [2:0]s_axi_ctrl_isp_arprot;
  output [0:0]s_axi_ctrl_isp_arready;
  input [0:0]s_axi_ctrl_isp_arvalid;
  input [39:0]s_axi_ctrl_isp_awaddr;
  input [2:0]s_axi_ctrl_isp_awprot;
  output [0:0]s_axi_ctrl_isp_awready;
  input [0:0]s_axi_ctrl_isp_awvalid;
  input [0:0]s_axi_ctrl_isp_bready;
  output [1:0]s_axi_ctrl_isp_bresp;
  output [0:0]s_axi_ctrl_isp_bvalid;
  output [31:0]s_axi_ctrl_isp_rdata;
  input [0:0]s_axi_ctrl_isp_rready;
  output [1:0]s_axi_ctrl_isp_rresp;
  output [0:0]s_axi_ctrl_isp_rvalid;
  input [31:0]s_axi_ctrl_isp_wdata;
  output [0:0]s_axi_ctrl_isp_wready;
  input [3:0]s_axi_ctrl_isp_wstrb;
  input [0:0]s_axi_ctrl_isp_wvalid;
  input [39:0]s_axi_ctrl_rd_araddr;
  output [0:0]s_axi_ctrl_rd_arready;
  input [0:0]s_axi_ctrl_rd_arvalid;
  input [39:0]s_axi_ctrl_rd_awaddr;
  output [0:0]s_axi_ctrl_rd_awready;
  input [0:0]s_axi_ctrl_rd_awvalid;
  input [0:0]s_axi_ctrl_rd_bready;
  output [1:0]s_axi_ctrl_rd_bresp;
  output [0:0]s_axi_ctrl_rd_bvalid;
  output [31:0]s_axi_ctrl_rd_rdata;
  input [0:0]s_axi_ctrl_rd_rready;
  output [1:0]s_axi_ctrl_rd_rresp;
  output [0:0]s_axi_ctrl_rd_rvalid;
  input [31:0]s_axi_ctrl_rd_wdata;
  output [0:0]s_axi_ctrl_rd_wready;
  input [3:0]s_axi_ctrl_rd_wstrb;
  input [0:0]s_axi_ctrl_rd_wvalid;
  input [39:0]s_axi_ctrl_vip_1_araddr;
  input [2:0]s_axi_ctrl_vip_1_arprot;
  output [0:0]s_axi_ctrl_vip_1_arready;
  input [0:0]s_axi_ctrl_vip_1_arvalid;
  input [39:0]s_axi_ctrl_vip_1_awaddr;
  input [2:0]s_axi_ctrl_vip_1_awprot;
  output [0:0]s_axi_ctrl_vip_1_awready;
  input [0:0]s_axi_ctrl_vip_1_awvalid;
  input [0:0]s_axi_ctrl_vip_1_bready;
  output [1:0]s_axi_ctrl_vip_1_bresp;
  output [0:0]s_axi_ctrl_vip_1_bvalid;
  output [31:0]s_axi_ctrl_vip_1_rdata;
  input [0:0]s_axi_ctrl_vip_1_rready;
  output [1:0]s_axi_ctrl_vip_1_rresp;
  output [0:0]s_axi_ctrl_vip_1_rvalid;
  input [31:0]s_axi_ctrl_vip_1_wdata;
  output [0:0]s_axi_ctrl_vip_1_wready;
  input [3:0]s_axi_ctrl_vip_1_wstrb;
  input [0:0]s_axi_ctrl_vip_1_wvalid;
  input [39:0]s_axi_ctrl_vip_2_araddr;
  input [2:0]s_axi_ctrl_vip_2_arprot;
  output [0:0]s_axi_ctrl_vip_2_arready;
  input [0:0]s_axi_ctrl_vip_2_arvalid;
  input [39:0]s_axi_ctrl_vip_2_awaddr;
  input [2:0]s_axi_ctrl_vip_2_awprot;
  output [0:0]s_axi_ctrl_vip_2_awready;
  input [0:0]s_axi_ctrl_vip_2_awvalid;
  input [0:0]s_axi_ctrl_vip_2_bready;
  output [1:0]s_axi_ctrl_vip_2_bresp;
  output [0:0]s_axi_ctrl_vip_2_bvalid;
  output [31:0]s_axi_ctrl_vip_2_rdata;
  input [0:0]s_axi_ctrl_vip_2_rready;
  output [1:0]s_axi_ctrl_vip_2_rresp;
  output [0:0]s_axi_ctrl_vip_2_rvalid;
  input [31:0]s_axi_ctrl_vip_2_wdata;
  output [0:0]s_axi_ctrl_vip_2_wready;
  input [3:0]s_axi_ctrl_vip_2_wstrb;
  input [0:0]s_axi_ctrl_vip_2_wvalid;
  input [39:0]s_axi_ctrl_wr_1_araddr;
  output [0:0]s_axi_ctrl_wr_1_arready;
  input [0:0]s_axi_ctrl_wr_1_arvalid;
  input [39:0]s_axi_ctrl_wr_1_awaddr;
  output [0:0]s_axi_ctrl_wr_1_awready;
  input [0:0]s_axi_ctrl_wr_1_awvalid;
  input [0:0]s_axi_ctrl_wr_1_bready;
  output [1:0]s_axi_ctrl_wr_1_bresp;
  output [0:0]s_axi_ctrl_wr_1_bvalid;
  output [31:0]s_axi_ctrl_wr_1_rdata;
  input [0:0]s_axi_ctrl_wr_1_rready;
  output [1:0]s_axi_ctrl_wr_1_rresp;
  output [0:0]s_axi_ctrl_wr_1_rvalid;
  input [31:0]s_axi_ctrl_wr_1_wdata;
  output [0:0]s_axi_ctrl_wr_1_wready;
  input [3:0]s_axi_ctrl_wr_1_wstrb;
  input [0:0]s_axi_ctrl_wr_1_wvalid;
  input [39:0]s_axi_ctrl_wr_2_araddr;
  output [0:0]s_axi_ctrl_wr_2_arready;
  input [0:0]s_axi_ctrl_wr_2_arvalid;
  input [39:0]s_axi_ctrl_wr_2_awaddr;
  output [0:0]s_axi_ctrl_wr_2_awready;
  input [0:0]s_axi_ctrl_wr_2_awvalid;
  input [0:0]s_axi_ctrl_wr_2_bready;
  output [1:0]s_axi_ctrl_wr_2_bresp;
  output [0:0]s_axi_ctrl_wr_2_bvalid;
  output [31:0]s_axi_ctrl_wr_2_rdata;
  input [0:0]s_axi_ctrl_wr_2_rready;
  output [1:0]s_axi_ctrl_wr_2_rresp;
  output [0:0]s_axi_ctrl_wr_2_rvalid;
  input [31:0]s_axi_ctrl_wr_2_wdata;
  output [0:0]s_axi_ctrl_wr_2_wready;
  input [3:0]s_axi_ctrl_wr_2_wstrb;
  input [0:0]s_axi_ctrl_wr_2_wvalid;
  input vid_pclk;
  input vid_rstn;

  wire [39:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire [0:0]Conn1_ARVALID;
  wire [39:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire [0:0]Conn1_AWVALID;
  wire [0:0]Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire [0:0]Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire [0:0]Conn1_WVALID;
  wire [39:0]Conn2_ARADDR;
  wire Conn2_ARREADY;
  wire [0:0]Conn2_ARVALID;
  wire [39:0]Conn2_AWADDR;
  wire Conn2_AWREADY;
  wire [0:0]Conn2_AWVALID;
  wire [0:0]Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire [0:0]Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire [0:0]Conn2_WVALID;
  wire [31:0]Conn3_ARADDR;
  wire [1:0]Conn3_ARBURST;
  wire [3:0]Conn3_ARCACHE;
  wire [7:0]Conn3_ARLEN;
  wire [1:0]Conn3_ARLOCK;
  wire [2:0]Conn3_ARPROT;
  wire [3:0]Conn3_ARQOS;
  wire Conn3_ARREADY;
  wire [2:0]Conn3_ARSIZE;
  wire Conn3_ARVALID;
  wire [31:0]Conn3_AWADDR;
  wire [1:0]Conn3_AWBURST;
  wire [3:0]Conn3_AWCACHE;
  wire [7:0]Conn3_AWLEN;
  wire [1:0]Conn3_AWLOCK;
  wire [2:0]Conn3_AWPROT;
  wire [3:0]Conn3_AWQOS;
  wire Conn3_AWREADY;
  wire [2:0]Conn3_AWSIZE;
  wire Conn3_AWVALID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [63:0]Conn3_RDATA;
  wire Conn3_RLAST;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [63:0]Conn3_WDATA;
  wire Conn3_WLAST;
  wire Conn3_WREADY;
  wire [7:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire axi_arstn_rd_1;
  wire axi_ctrl_arstn_1;
  wire axis_to_video_0_locked;
  wire axis_to_video_0_vid_out_ACTIVE_VIDEO;
  wire [9:0]axis_to_video_0_vid_out_DATA;
  wire axis_to_video_0_vid_out_VSYNC;
  wire isp_irq;
  wire isp_yuv_ACTIVE_VIDEO;
  wire [29:0]isp_yuv_DATA;
  wire isp_yuv_VSYNC;
  wire [39:0]ps8_0_axi_periph_M03_AXI_ARADDR;
  wire ps8_0_axi_periph_M03_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M03_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_AWADDR;
  wire ps8_0_axi_periph_M03_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M03_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_BRESP;
  wire ps8_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_RRESP;
  wire ps8_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_WDATA;
  wire ps8_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M03_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M03_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M04_AXI_ARPROT;
  wire ps8_0_axi_periph_M04_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M04_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M04_AXI_AWPROT;
  wire ps8_0_axi_periph_M04_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M04_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_BRESP;
  wire ps8_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_RRESP;
  wire ps8_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_WDATA;
  wire ps8_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M04_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M04_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M05_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M05_AXI_ARPROT;
  wire ps8_0_axi_periph_M05_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M05_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M05_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M05_AXI_AWPROT;
  wire ps8_0_axi_periph_M05_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M05_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M05_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M05_AXI_BRESP;
  wire ps8_0_axi_periph_M05_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M05_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M05_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M05_AXI_RRESP;
  wire ps8_0_axi_periph_M05_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M05_AXI_WDATA;
  wire ps8_0_axi_periph_M05_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M05_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M05_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M06_AXI_ARADDR;
  wire ps8_0_axi_periph_M06_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M06_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M06_AXI_AWADDR;
  wire ps8_0_axi_periph_M06_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M06_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M06_AXI_BRESP;
  wire ps8_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M06_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M06_AXI_RRESP;
  wire ps8_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M06_AXI_WDATA;
  wire ps8_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M06_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M06_AXI_WVALID;
  wire rst_ps8_0_99M_peripheral_aresetn;
  wire s00_axi_aclk_0_1;
  wire v_frm_rd_0_interrupt;
  wire [31:0]v_frm_rd_0_m_axi_mm_video_ARADDR;
  wire [1:0]v_frm_rd_0_m_axi_mm_video_ARBURST;
  wire [3:0]v_frm_rd_0_m_axi_mm_video_ARCACHE;
  wire [7:0]v_frm_rd_0_m_axi_mm_video_ARLEN;
  wire [1:0]v_frm_rd_0_m_axi_mm_video_ARLOCK;
  wire [2:0]v_frm_rd_0_m_axi_mm_video_ARPROT;
  wire [3:0]v_frm_rd_0_m_axi_mm_video_ARQOS;
  wire v_frm_rd_0_m_axi_mm_video_ARREADY;
  wire [2:0]v_frm_rd_0_m_axi_mm_video_ARSIZE;
  wire v_frm_rd_0_m_axi_mm_video_ARVALID;
  wire [31:0]v_frm_rd_0_m_axi_mm_video_AWADDR;
  wire [1:0]v_frm_rd_0_m_axi_mm_video_AWBURST;
  wire [3:0]v_frm_rd_0_m_axi_mm_video_AWCACHE;
  wire [7:0]v_frm_rd_0_m_axi_mm_video_AWLEN;
  wire [1:0]v_frm_rd_0_m_axi_mm_video_AWLOCK;
  wire [2:0]v_frm_rd_0_m_axi_mm_video_AWPROT;
  wire [3:0]v_frm_rd_0_m_axi_mm_video_AWQOS;
  wire v_frm_rd_0_m_axi_mm_video_AWREADY;
  wire [2:0]v_frm_rd_0_m_axi_mm_video_AWSIZE;
  wire v_frm_rd_0_m_axi_mm_video_AWVALID;
  wire v_frm_rd_0_m_axi_mm_video_BREADY;
  wire [1:0]v_frm_rd_0_m_axi_mm_video_BRESP;
  wire v_frm_rd_0_m_axi_mm_video_BVALID;
  wire [63:0]v_frm_rd_0_m_axi_mm_video_RDATA;
  wire v_frm_rd_0_m_axi_mm_video_RLAST;
  wire v_frm_rd_0_m_axi_mm_video_RREADY;
  wire [1:0]v_frm_rd_0_m_axi_mm_video_RRESP;
  wire v_frm_rd_0_m_axi_mm_video_RVALID;
  wire [63:0]v_frm_rd_0_m_axi_mm_video_WDATA;
  wire v_frm_rd_0_m_axi_mm_video_WLAST;
  wire v_frm_rd_0_m_axi_mm_video_WREADY;
  wire [7:0]v_frm_rd_0_m_axi_mm_video_WSTRB;
  wire v_frm_rd_0_m_axi_mm_video_WVALID;
  wire [31:0]v_frm_rd_0_m_axis_video_TDATA;
  wire [0:0]v_frm_rd_0_m_axis_video_TLAST;
  wire v_frm_rd_0_m_axis_video_TREADY;
  wire [0:0]v_frm_rd_0_m_axis_video_TUSER;
  wire v_frm_rd_0_m_axis_video_TVALID;
  wire v_frm_wr_1_interrupt;
  wire [31:0]v_frm_wr_1_m_axi_mm_video_ARADDR;
  wire [1:0]v_frm_wr_1_m_axi_mm_video_ARBURST;
  wire [3:0]v_frm_wr_1_m_axi_mm_video_ARCACHE;
  wire [7:0]v_frm_wr_1_m_axi_mm_video_ARLEN;
  wire [1:0]v_frm_wr_1_m_axi_mm_video_ARLOCK;
  wire [2:0]v_frm_wr_1_m_axi_mm_video_ARPROT;
  wire [3:0]v_frm_wr_1_m_axi_mm_video_ARQOS;
  wire v_frm_wr_1_m_axi_mm_video_ARREADY;
  wire [2:0]v_frm_wr_1_m_axi_mm_video_ARSIZE;
  wire v_frm_wr_1_m_axi_mm_video_ARVALID;
  wire [31:0]v_frm_wr_1_m_axi_mm_video_AWADDR;
  wire [1:0]v_frm_wr_1_m_axi_mm_video_AWBURST;
  wire [3:0]v_frm_wr_1_m_axi_mm_video_AWCACHE;
  wire [7:0]v_frm_wr_1_m_axi_mm_video_AWLEN;
  wire [1:0]v_frm_wr_1_m_axi_mm_video_AWLOCK;
  wire [2:0]v_frm_wr_1_m_axi_mm_video_AWPROT;
  wire [3:0]v_frm_wr_1_m_axi_mm_video_AWQOS;
  wire v_frm_wr_1_m_axi_mm_video_AWREADY;
  wire [2:0]v_frm_wr_1_m_axi_mm_video_AWSIZE;
  wire v_frm_wr_1_m_axi_mm_video_AWVALID;
  wire v_frm_wr_1_m_axi_mm_video_BREADY;
  wire [1:0]v_frm_wr_1_m_axi_mm_video_BRESP;
  wire v_frm_wr_1_m_axi_mm_video_BVALID;
  wire [63:0]v_frm_wr_1_m_axi_mm_video_RDATA;
  wire v_frm_wr_1_m_axi_mm_video_RLAST;
  wire v_frm_wr_1_m_axi_mm_video_RREADY;
  wire [1:0]v_frm_wr_1_m_axi_mm_video_RRESP;
  wire v_frm_wr_1_m_axi_mm_video_RVALID;
  wire [63:0]v_frm_wr_1_m_axi_mm_video_WDATA;
  wire v_frm_wr_1_m_axi_mm_video_WLAST;
  wire v_frm_wr_1_m_axi_mm_video_WREADY;
  wire [7:0]v_frm_wr_1_m_axi_mm_video_WSTRB;
  wire v_frm_wr_1_m_axi_mm_video_WVALID;
  wire v_frm_wr_2_interrupt;
  wire vid_rstn_1;
  wire [23:0]video_to_axis_1_m_axis_TDATA;
  wire video_to_axis_1_m_axis_TLAST;
  wire video_to_axis_1_m_axis_TREADY;
  wire video_to_axis_1_m_axis_TUSER;
  wire video_to_axis_1_m_axis_TVALID;
  wire [23:0]video_to_axis_2_m_axis_TDATA;
  wire video_to_axis_2_m_axis_TLAST;
  wire video_to_axis_2_m_axis_TREADY;
  wire video_to_axis_2_m_axis_TUSER;
  wire video_to_axis_2_m_axis_TVALID;
  wire vip_2_irq;
  wire vip_2_out_pclk;
  wire vip_2_rgb_ACTIVE_VIDEO;
  wire [23:0]vip_2_rgb_DATA;
  wire vip_2_rgb_VSYNC;
  wire vip_irq;
  wire vip_out_pclk;
  wire vip_rgb_ACTIVE_VIDEO;
  wire [23:0]vip_rgb_DATA;
  wire vip_rgb_VSYNC;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_clk1;

  assign Conn1_ARADDR = s_axi_ctrl_vip_2_araddr[39:0];
  assign Conn1_ARPROT = s_axi_ctrl_vip_2_arprot[2:0];
  assign Conn1_ARVALID = s_axi_ctrl_vip_2_arvalid[0];
  assign Conn1_AWADDR = s_axi_ctrl_vip_2_awaddr[39:0];
  assign Conn1_AWPROT = s_axi_ctrl_vip_2_awprot[2:0];
  assign Conn1_AWVALID = s_axi_ctrl_vip_2_awvalid[0];
  assign Conn1_BREADY = s_axi_ctrl_vip_2_bready[0];
  assign Conn1_RREADY = s_axi_ctrl_vip_2_rready[0];
  assign Conn1_WDATA = s_axi_ctrl_vip_2_wdata[31:0];
  assign Conn1_WSTRB = s_axi_ctrl_vip_2_wstrb[3:0];
  assign Conn1_WVALID = s_axi_ctrl_vip_2_wvalid[0];
  assign Conn2_ARADDR = s_axi_ctrl_wr_2_araddr[39:0];
  assign Conn2_ARVALID = s_axi_ctrl_wr_2_arvalid[0];
  assign Conn2_AWADDR = s_axi_ctrl_wr_2_awaddr[39:0];
  assign Conn2_AWVALID = s_axi_ctrl_wr_2_awvalid[0];
  assign Conn2_BREADY = s_axi_ctrl_wr_2_bready[0];
  assign Conn2_RREADY = s_axi_ctrl_wr_2_rready[0];
  assign Conn2_WDATA = s_axi_ctrl_wr_2_wdata[31:0];
  assign Conn2_WSTRB = s_axi_ctrl_wr_2_wstrb[3:0];
  assign Conn2_WVALID = s_axi_ctrl_wr_2_wvalid[0];
  assign Conn3_ARREADY = m_axi_mm_wr_2_arready;
  assign Conn3_AWREADY = m_axi_mm_wr_2_awready;
  assign Conn3_BRESP = m_axi_mm_wr_2_bresp[1:0];
  assign Conn3_BVALID = m_axi_mm_wr_2_bvalid;
  assign Conn3_RDATA = m_axi_mm_wr_2_rdata[63:0];
  assign Conn3_RLAST = m_axi_mm_wr_2_rlast;
  assign Conn3_RRESP = m_axi_mm_wr_2_rresp[1:0];
  assign Conn3_RVALID = m_axi_mm_wr_2_rvalid;
  assign Conn3_WREADY = m_axi_mm_wr_2_wready;
  assign axi_arstn_rd_1 = axi_arstn_rd;
  assign axi_ctrl_arstn_1 = axi_ctrl_arstn;
  assign irq_isp = isp_irq;
  assign irq_rd = v_frm_rd_0_interrupt;
  assign irq_vip_1 = vip_irq;
  assign irq_vip_2 = vip_2_irq;
  assign irq_wr_1 = v_frm_wr_1_interrupt;
  assign irq_wr_2 = v_frm_wr_2_interrupt;
  assign m_axi_mm_rd_araddr[31:0] = v_frm_rd_0_m_axi_mm_video_ARADDR;
  assign m_axi_mm_rd_arburst[1:0] = v_frm_rd_0_m_axi_mm_video_ARBURST;
  assign m_axi_mm_rd_arcache[3:0] = v_frm_rd_0_m_axi_mm_video_ARCACHE;
  assign m_axi_mm_rd_arlen[7:0] = v_frm_rd_0_m_axi_mm_video_ARLEN;
  assign m_axi_mm_rd_arlock[1:0] = v_frm_rd_0_m_axi_mm_video_ARLOCK;
  assign m_axi_mm_rd_arprot[2:0] = v_frm_rd_0_m_axi_mm_video_ARPROT;
  assign m_axi_mm_rd_arqos[3:0] = v_frm_rd_0_m_axi_mm_video_ARQOS;
  assign m_axi_mm_rd_arsize[2:0] = v_frm_rd_0_m_axi_mm_video_ARSIZE;
  assign m_axi_mm_rd_arvalid = v_frm_rd_0_m_axi_mm_video_ARVALID;
  assign m_axi_mm_rd_awaddr[31:0] = v_frm_rd_0_m_axi_mm_video_AWADDR;
  assign m_axi_mm_rd_awburst[1:0] = v_frm_rd_0_m_axi_mm_video_AWBURST;
  assign m_axi_mm_rd_awcache[3:0] = v_frm_rd_0_m_axi_mm_video_AWCACHE;
  assign m_axi_mm_rd_awlen[7:0] = v_frm_rd_0_m_axi_mm_video_AWLEN;
  assign m_axi_mm_rd_awlock[1:0] = v_frm_rd_0_m_axi_mm_video_AWLOCK;
  assign m_axi_mm_rd_awprot[2:0] = v_frm_rd_0_m_axi_mm_video_AWPROT;
  assign m_axi_mm_rd_awqos[3:0] = v_frm_rd_0_m_axi_mm_video_AWQOS;
  assign m_axi_mm_rd_awsize[2:0] = v_frm_rd_0_m_axi_mm_video_AWSIZE;
  assign m_axi_mm_rd_awvalid = v_frm_rd_0_m_axi_mm_video_AWVALID;
  assign m_axi_mm_rd_bready = v_frm_rd_0_m_axi_mm_video_BREADY;
  assign m_axi_mm_rd_rready = v_frm_rd_0_m_axi_mm_video_RREADY;
  assign m_axi_mm_rd_wdata[63:0] = v_frm_rd_0_m_axi_mm_video_WDATA;
  assign m_axi_mm_rd_wlast = v_frm_rd_0_m_axi_mm_video_WLAST;
  assign m_axi_mm_rd_wstrb[7:0] = v_frm_rd_0_m_axi_mm_video_WSTRB;
  assign m_axi_mm_rd_wvalid = v_frm_rd_0_m_axi_mm_video_WVALID;
  assign m_axi_mm_wr_1_araddr[31:0] = v_frm_wr_1_m_axi_mm_video_ARADDR;
  assign m_axi_mm_wr_1_arburst[1:0] = v_frm_wr_1_m_axi_mm_video_ARBURST;
  assign m_axi_mm_wr_1_arcache[3:0] = v_frm_wr_1_m_axi_mm_video_ARCACHE;
  assign m_axi_mm_wr_1_arlen[7:0] = v_frm_wr_1_m_axi_mm_video_ARLEN;
  assign m_axi_mm_wr_1_arlock[1:0] = v_frm_wr_1_m_axi_mm_video_ARLOCK;
  assign m_axi_mm_wr_1_arprot[2:0] = v_frm_wr_1_m_axi_mm_video_ARPROT;
  assign m_axi_mm_wr_1_arqos[3:0] = v_frm_wr_1_m_axi_mm_video_ARQOS;
  assign m_axi_mm_wr_1_arsize[2:0] = v_frm_wr_1_m_axi_mm_video_ARSIZE;
  assign m_axi_mm_wr_1_arvalid = v_frm_wr_1_m_axi_mm_video_ARVALID;
  assign m_axi_mm_wr_1_awaddr[31:0] = v_frm_wr_1_m_axi_mm_video_AWADDR;
  assign m_axi_mm_wr_1_awburst[1:0] = v_frm_wr_1_m_axi_mm_video_AWBURST;
  assign m_axi_mm_wr_1_awcache[3:0] = v_frm_wr_1_m_axi_mm_video_AWCACHE;
  assign m_axi_mm_wr_1_awlen[7:0] = v_frm_wr_1_m_axi_mm_video_AWLEN;
  assign m_axi_mm_wr_1_awlock[1:0] = v_frm_wr_1_m_axi_mm_video_AWLOCK;
  assign m_axi_mm_wr_1_awprot[2:0] = v_frm_wr_1_m_axi_mm_video_AWPROT;
  assign m_axi_mm_wr_1_awqos[3:0] = v_frm_wr_1_m_axi_mm_video_AWQOS;
  assign m_axi_mm_wr_1_awsize[2:0] = v_frm_wr_1_m_axi_mm_video_AWSIZE;
  assign m_axi_mm_wr_1_awvalid = v_frm_wr_1_m_axi_mm_video_AWVALID;
  assign m_axi_mm_wr_1_bready = v_frm_wr_1_m_axi_mm_video_BREADY;
  assign m_axi_mm_wr_1_rready = v_frm_wr_1_m_axi_mm_video_RREADY;
  assign m_axi_mm_wr_1_wdata[63:0] = v_frm_wr_1_m_axi_mm_video_WDATA;
  assign m_axi_mm_wr_1_wlast = v_frm_wr_1_m_axi_mm_video_WLAST;
  assign m_axi_mm_wr_1_wstrb[7:0] = v_frm_wr_1_m_axi_mm_video_WSTRB;
  assign m_axi_mm_wr_1_wvalid = v_frm_wr_1_m_axi_mm_video_WVALID;
  assign m_axi_mm_wr_2_araddr[31:0] = Conn3_ARADDR;
  assign m_axi_mm_wr_2_arburst[1:0] = Conn3_ARBURST;
  assign m_axi_mm_wr_2_arcache[3:0] = Conn3_ARCACHE;
  assign m_axi_mm_wr_2_arlen[7:0] = Conn3_ARLEN;
  assign m_axi_mm_wr_2_arlock[1:0] = Conn3_ARLOCK;
  assign m_axi_mm_wr_2_arprot[2:0] = Conn3_ARPROT;
  assign m_axi_mm_wr_2_arqos[3:0] = Conn3_ARQOS;
  assign m_axi_mm_wr_2_arsize[2:0] = Conn3_ARSIZE;
  assign m_axi_mm_wr_2_arvalid = Conn3_ARVALID;
  assign m_axi_mm_wr_2_awaddr[31:0] = Conn3_AWADDR;
  assign m_axi_mm_wr_2_awburst[1:0] = Conn3_AWBURST;
  assign m_axi_mm_wr_2_awcache[3:0] = Conn3_AWCACHE;
  assign m_axi_mm_wr_2_awlen[7:0] = Conn3_AWLEN;
  assign m_axi_mm_wr_2_awlock[1:0] = Conn3_AWLOCK;
  assign m_axi_mm_wr_2_awprot[2:0] = Conn3_AWPROT;
  assign m_axi_mm_wr_2_awqos[3:0] = Conn3_AWQOS;
  assign m_axi_mm_wr_2_awsize[2:0] = Conn3_AWSIZE;
  assign m_axi_mm_wr_2_awvalid = Conn3_AWVALID;
  assign m_axi_mm_wr_2_bready = Conn3_BREADY;
  assign m_axi_mm_wr_2_rready = Conn3_RREADY;
  assign m_axi_mm_wr_2_wdata[63:0] = Conn3_WDATA;
  assign m_axi_mm_wr_2_wlast = Conn3_WLAST;
  assign m_axi_mm_wr_2_wstrb[7:0] = Conn3_WSTRB;
  assign m_axi_mm_wr_2_wvalid = Conn3_WVALID;
  assign ps8_0_axi_periph_M03_AXI_ARADDR = s_axi_ctrl_rd_araddr[39:0];
  assign ps8_0_axi_periph_M03_AXI_ARVALID = s_axi_ctrl_rd_arvalid[0];
  assign ps8_0_axi_periph_M03_AXI_AWADDR = s_axi_ctrl_rd_awaddr[39:0];
  assign ps8_0_axi_periph_M03_AXI_AWVALID = s_axi_ctrl_rd_awvalid[0];
  assign ps8_0_axi_periph_M03_AXI_BREADY = s_axi_ctrl_rd_bready[0];
  assign ps8_0_axi_periph_M03_AXI_RREADY = s_axi_ctrl_rd_rready[0];
  assign ps8_0_axi_periph_M03_AXI_WDATA = s_axi_ctrl_rd_wdata[31:0];
  assign ps8_0_axi_periph_M03_AXI_WSTRB = s_axi_ctrl_rd_wstrb[3:0];
  assign ps8_0_axi_periph_M03_AXI_WVALID = s_axi_ctrl_rd_wvalid[0];
  assign ps8_0_axi_periph_M04_AXI_ARADDR = s_axi_ctrl_isp_araddr[39:0];
  assign ps8_0_axi_periph_M04_AXI_ARPROT = s_axi_ctrl_isp_arprot[2:0];
  assign ps8_0_axi_periph_M04_AXI_ARVALID = s_axi_ctrl_isp_arvalid[0];
  assign ps8_0_axi_periph_M04_AXI_AWADDR = s_axi_ctrl_isp_awaddr[39:0];
  assign ps8_0_axi_periph_M04_AXI_AWPROT = s_axi_ctrl_isp_awprot[2:0];
  assign ps8_0_axi_periph_M04_AXI_AWVALID = s_axi_ctrl_isp_awvalid[0];
  assign ps8_0_axi_periph_M04_AXI_BREADY = s_axi_ctrl_isp_bready[0];
  assign ps8_0_axi_periph_M04_AXI_RREADY = s_axi_ctrl_isp_rready[0];
  assign ps8_0_axi_periph_M04_AXI_WDATA = s_axi_ctrl_isp_wdata[31:0];
  assign ps8_0_axi_periph_M04_AXI_WSTRB = s_axi_ctrl_isp_wstrb[3:0];
  assign ps8_0_axi_periph_M04_AXI_WVALID = s_axi_ctrl_isp_wvalid[0];
  assign ps8_0_axi_periph_M05_AXI_ARADDR = s_axi_ctrl_vip_1_araddr[39:0];
  assign ps8_0_axi_periph_M05_AXI_ARPROT = s_axi_ctrl_vip_1_arprot[2:0];
  assign ps8_0_axi_periph_M05_AXI_ARVALID = s_axi_ctrl_vip_1_arvalid[0];
  assign ps8_0_axi_periph_M05_AXI_AWADDR = s_axi_ctrl_vip_1_awaddr[39:0];
  assign ps8_0_axi_periph_M05_AXI_AWPROT = s_axi_ctrl_vip_1_awprot[2:0];
  assign ps8_0_axi_periph_M05_AXI_AWVALID = s_axi_ctrl_vip_1_awvalid[0];
  assign ps8_0_axi_periph_M05_AXI_BREADY = s_axi_ctrl_vip_1_bready[0];
  assign ps8_0_axi_periph_M05_AXI_RREADY = s_axi_ctrl_vip_1_rready[0];
  assign ps8_0_axi_periph_M05_AXI_WDATA = s_axi_ctrl_vip_1_wdata[31:0];
  assign ps8_0_axi_periph_M05_AXI_WSTRB = s_axi_ctrl_vip_1_wstrb[3:0];
  assign ps8_0_axi_periph_M05_AXI_WVALID = s_axi_ctrl_vip_1_wvalid[0];
  assign ps8_0_axi_periph_M06_AXI_ARADDR = s_axi_ctrl_wr_1_araddr[39:0];
  assign ps8_0_axi_periph_M06_AXI_ARVALID = s_axi_ctrl_wr_1_arvalid[0];
  assign ps8_0_axi_periph_M06_AXI_AWADDR = s_axi_ctrl_wr_1_awaddr[39:0];
  assign ps8_0_axi_periph_M06_AXI_AWVALID = s_axi_ctrl_wr_1_awvalid[0];
  assign ps8_0_axi_periph_M06_AXI_BREADY = s_axi_ctrl_wr_1_bready[0];
  assign ps8_0_axi_periph_M06_AXI_RREADY = s_axi_ctrl_wr_1_rready[0];
  assign ps8_0_axi_periph_M06_AXI_WDATA = s_axi_ctrl_wr_1_wdata[31:0];
  assign ps8_0_axi_periph_M06_AXI_WSTRB = s_axi_ctrl_wr_1_wstrb[3:0];
  assign ps8_0_axi_periph_M06_AXI_WVALID = s_axi_ctrl_wr_1_wvalid[0];
  assign rst_ps8_0_99M_peripheral_aresetn = axi_mm_arstn;
  assign s00_axi_aclk_0_1 = axi_ctrl_aclk;
  assign s_axi_ctrl_isp_arready[0] = ps8_0_axi_periph_M04_AXI_ARREADY;
  assign s_axi_ctrl_isp_awready[0] = ps8_0_axi_periph_M04_AXI_AWREADY;
  assign s_axi_ctrl_isp_bresp[1:0] = ps8_0_axi_periph_M04_AXI_BRESP;
  assign s_axi_ctrl_isp_bvalid[0] = ps8_0_axi_periph_M04_AXI_BVALID;
  assign s_axi_ctrl_isp_rdata[31:0] = ps8_0_axi_periph_M04_AXI_RDATA;
  assign s_axi_ctrl_isp_rresp[1:0] = ps8_0_axi_periph_M04_AXI_RRESP;
  assign s_axi_ctrl_isp_rvalid[0] = ps8_0_axi_periph_M04_AXI_RVALID;
  assign s_axi_ctrl_isp_wready[0] = ps8_0_axi_periph_M04_AXI_WREADY;
  assign s_axi_ctrl_rd_arready[0] = ps8_0_axi_periph_M03_AXI_ARREADY;
  assign s_axi_ctrl_rd_awready[0] = ps8_0_axi_periph_M03_AXI_AWREADY;
  assign s_axi_ctrl_rd_bresp[1:0] = ps8_0_axi_periph_M03_AXI_BRESP;
  assign s_axi_ctrl_rd_bvalid[0] = ps8_0_axi_periph_M03_AXI_BVALID;
  assign s_axi_ctrl_rd_rdata[31:0] = ps8_0_axi_periph_M03_AXI_RDATA;
  assign s_axi_ctrl_rd_rresp[1:0] = ps8_0_axi_periph_M03_AXI_RRESP;
  assign s_axi_ctrl_rd_rvalid[0] = ps8_0_axi_periph_M03_AXI_RVALID;
  assign s_axi_ctrl_rd_wready[0] = ps8_0_axi_periph_M03_AXI_WREADY;
  assign s_axi_ctrl_vip_1_arready[0] = ps8_0_axi_periph_M05_AXI_ARREADY;
  assign s_axi_ctrl_vip_1_awready[0] = ps8_0_axi_periph_M05_AXI_AWREADY;
  assign s_axi_ctrl_vip_1_bresp[1:0] = ps8_0_axi_periph_M05_AXI_BRESP;
  assign s_axi_ctrl_vip_1_bvalid[0] = ps8_0_axi_periph_M05_AXI_BVALID;
  assign s_axi_ctrl_vip_1_rdata[31:0] = ps8_0_axi_periph_M05_AXI_RDATA;
  assign s_axi_ctrl_vip_1_rresp[1:0] = ps8_0_axi_periph_M05_AXI_RRESP;
  assign s_axi_ctrl_vip_1_rvalid[0] = ps8_0_axi_periph_M05_AXI_RVALID;
  assign s_axi_ctrl_vip_1_wready[0] = ps8_0_axi_periph_M05_AXI_WREADY;
  assign s_axi_ctrl_vip_2_arready[0] = Conn1_ARREADY;
  assign s_axi_ctrl_vip_2_awready[0] = Conn1_AWREADY;
  assign s_axi_ctrl_vip_2_bresp[1:0] = Conn1_BRESP;
  assign s_axi_ctrl_vip_2_bvalid[0] = Conn1_BVALID;
  assign s_axi_ctrl_vip_2_rdata[31:0] = Conn1_RDATA;
  assign s_axi_ctrl_vip_2_rresp[1:0] = Conn1_RRESP;
  assign s_axi_ctrl_vip_2_rvalid[0] = Conn1_RVALID;
  assign s_axi_ctrl_vip_2_wready[0] = Conn1_WREADY;
  assign s_axi_ctrl_wr_1_arready[0] = ps8_0_axi_periph_M06_AXI_ARREADY;
  assign s_axi_ctrl_wr_1_awready[0] = ps8_0_axi_periph_M06_AXI_AWREADY;
  assign s_axi_ctrl_wr_1_bresp[1:0] = ps8_0_axi_periph_M06_AXI_BRESP;
  assign s_axi_ctrl_wr_1_bvalid[0] = ps8_0_axi_periph_M06_AXI_BVALID;
  assign s_axi_ctrl_wr_1_rdata[31:0] = ps8_0_axi_periph_M06_AXI_RDATA;
  assign s_axi_ctrl_wr_1_rresp[1:0] = ps8_0_axi_periph_M06_AXI_RRESP;
  assign s_axi_ctrl_wr_1_rvalid[0] = ps8_0_axi_periph_M06_AXI_RVALID;
  assign s_axi_ctrl_wr_1_wready[0] = ps8_0_axi_periph_M06_AXI_WREADY;
  assign s_axi_ctrl_wr_2_arready[0] = Conn2_ARREADY;
  assign s_axi_ctrl_wr_2_awready[0] = Conn2_AWREADY;
  assign s_axi_ctrl_wr_2_bresp[1:0] = Conn2_BRESP;
  assign s_axi_ctrl_wr_2_bvalid[0] = Conn2_BVALID;
  assign s_axi_ctrl_wr_2_rdata[31:0] = Conn2_RDATA;
  assign s_axi_ctrl_wr_2_rresp[1:0] = Conn2_RRESP;
  assign s_axi_ctrl_wr_2_rvalid[0] = Conn2_RVALID;
  assign s_axi_ctrl_wr_2_wready[0] = Conn2_WREADY;
  assign v_frm_rd_0_m_axi_mm_video_ARREADY = m_axi_mm_rd_arready;
  assign v_frm_rd_0_m_axi_mm_video_AWREADY = m_axi_mm_rd_awready;
  assign v_frm_rd_0_m_axi_mm_video_BRESP = m_axi_mm_rd_bresp[1:0];
  assign v_frm_rd_0_m_axi_mm_video_BVALID = m_axi_mm_rd_bvalid;
  assign v_frm_rd_0_m_axi_mm_video_RDATA = m_axi_mm_rd_rdata[63:0];
  assign v_frm_rd_0_m_axi_mm_video_RLAST = m_axi_mm_rd_rlast;
  assign v_frm_rd_0_m_axi_mm_video_RRESP = m_axi_mm_rd_rresp[1:0];
  assign v_frm_rd_0_m_axi_mm_video_RVALID = m_axi_mm_rd_rvalid;
  assign v_frm_rd_0_m_axi_mm_video_WREADY = m_axi_mm_rd_wready;
  assign v_frm_wr_1_m_axi_mm_video_ARREADY = m_axi_mm_wr_1_arready;
  assign v_frm_wr_1_m_axi_mm_video_AWREADY = m_axi_mm_wr_1_awready;
  assign v_frm_wr_1_m_axi_mm_video_BRESP = m_axi_mm_wr_1_bresp[1:0];
  assign v_frm_wr_1_m_axi_mm_video_BVALID = m_axi_mm_wr_1_bvalid;
  assign v_frm_wr_1_m_axi_mm_video_RDATA = m_axi_mm_wr_1_rdata[63:0];
  assign v_frm_wr_1_m_axi_mm_video_RLAST = m_axi_mm_wr_1_rlast;
  assign v_frm_wr_1_m_axi_mm_video_RRESP = m_axi_mm_wr_1_rresp[1:0];
  assign v_frm_wr_1_m_axi_mm_video_RVALID = m_axi_mm_wr_1_rvalid;
  assign v_frm_wr_1_m_axi_mm_video_WREADY = m_axi_mm_wr_1_wready;
  assign vid_rstn_1 = vid_rstn;
  assign zynq_ultra_ps_e_0_pl_clk0 = axi_mm_aclk;
  assign zynq_ultra_ps_e_0_pl_clk1 = vid_pclk;
  design_1_axis_to_video_0_0 axis_to_video
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .locked(axis_to_video_0_locked),
        .s_axis_tdata(v_frm_rd_0_m_axis_video_TDATA[9:0]),
        .s_axis_tlast(v_frm_rd_0_m_axis_video_TLAST),
        .s_axis_tready(v_frm_rd_0_m_axis_video_TREADY),
        .s_axis_tuser(v_frm_rd_0_m_axis_video_TUSER),
        .s_axis_tvalid(v_frm_rd_0_m_axis_video_TVALID),
        .vid_active_video(axis_to_video_0_vid_out_ACTIVE_VIDEO),
        .vid_clk(zynq_ultra_ps_e_0_pl_clk1),
        .vid_data(axis_to_video_0_vid_out_DATA),
        .vid_rstn(vid_rstn_1),
        .vid_vsync(axis_to_video_0_vid_out_VSYNC));
  design_1_xil_isp_lite_0_0 isp
       (.in_href(axis_to_video_0_vid_out_ACTIVE_VIDEO),
        .in_raw(axis_to_video_0_vid_out_DATA),
        .in_vsync(axis_to_video_0_vid_out_VSYNC),
        .irq(isp_irq),
        .out_href(isp_yuv_ACTIVE_VIDEO),
        .out_vsync(isp_yuv_VSYNC),
        .out_yuv(isp_yuv_DATA),
        .pclk(zynq_ultra_ps_e_0_pl_clk1),
        .rst_n(axis_to_video_0_locked),
        .s00_axi_aclk(s00_axi_aclk_0_1),
        .s00_axi_araddr(ps8_0_axi_periph_M04_AXI_ARADDR[13:0]),
        .s00_axi_aresetn(axi_ctrl_arstn_1),
        .s00_axi_arprot(ps8_0_axi_periph_M04_AXI_ARPROT),
        .s00_axi_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .s00_axi_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .s00_axi_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR[13:0]),
        .s00_axi_awprot(ps8_0_axi_periph_M04_AXI_AWPROT),
        .s00_axi_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .s00_axi_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .s00_axi_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .s00_axi_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .s00_axi_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .s00_axi_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .s00_axi_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .s00_axi_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .s00_axi_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .s00_axi_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .s00_axi_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .s00_axi_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .s00_axi_wvalid(ps8_0_axi_periph_M04_AXI_WVALID));
  design_1_v_frmbuf_rd_0_0 v_frm_rd
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(axi_arstn_rd_1),
        .interrupt(v_frm_rd_0_interrupt),
        .m_axi_mm_video_ARADDR(v_frm_rd_0_m_axi_mm_video_ARADDR),
        .m_axi_mm_video_ARBURST(v_frm_rd_0_m_axi_mm_video_ARBURST),
        .m_axi_mm_video_ARCACHE(v_frm_rd_0_m_axi_mm_video_ARCACHE),
        .m_axi_mm_video_ARLEN(v_frm_rd_0_m_axi_mm_video_ARLEN),
        .m_axi_mm_video_ARLOCK(v_frm_rd_0_m_axi_mm_video_ARLOCK),
        .m_axi_mm_video_ARPROT(v_frm_rd_0_m_axi_mm_video_ARPROT),
        .m_axi_mm_video_ARQOS(v_frm_rd_0_m_axi_mm_video_ARQOS),
        .m_axi_mm_video_ARREADY(v_frm_rd_0_m_axi_mm_video_ARREADY),
        .m_axi_mm_video_ARSIZE(v_frm_rd_0_m_axi_mm_video_ARSIZE),
        .m_axi_mm_video_ARVALID(v_frm_rd_0_m_axi_mm_video_ARVALID),
        .m_axi_mm_video_AWADDR(v_frm_rd_0_m_axi_mm_video_AWADDR),
        .m_axi_mm_video_AWBURST(v_frm_rd_0_m_axi_mm_video_AWBURST),
        .m_axi_mm_video_AWCACHE(v_frm_rd_0_m_axi_mm_video_AWCACHE),
        .m_axi_mm_video_AWLEN(v_frm_rd_0_m_axi_mm_video_AWLEN),
        .m_axi_mm_video_AWLOCK(v_frm_rd_0_m_axi_mm_video_AWLOCK),
        .m_axi_mm_video_AWPROT(v_frm_rd_0_m_axi_mm_video_AWPROT),
        .m_axi_mm_video_AWQOS(v_frm_rd_0_m_axi_mm_video_AWQOS),
        .m_axi_mm_video_AWREADY(v_frm_rd_0_m_axi_mm_video_AWREADY),
        .m_axi_mm_video_AWSIZE(v_frm_rd_0_m_axi_mm_video_AWSIZE),
        .m_axi_mm_video_AWVALID(v_frm_rd_0_m_axi_mm_video_AWVALID),
        .m_axi_mm_video_BREADY(v_frm_rd_0_m_axi_mm_video_BREADY),
        .m_axi_mm_video_BRESP(v_frm_rd_0_m_axi_mm_video_BRESP),
        .m_axi_mm_video_BVALID(v_frm_rd_0_m_axi_mm_video_BVALID),
        .m_axi_mm_video_RDATA(v_frm_rd_0_m_axi_mm_video_RDATA),
        .m_axi_mm_video_RLAST(v_frm_rd_0_m_axi_mm_video_RLAST),
        .m_axi_mm_video_RREADY(v_frm_rd_0_m_axi_mm_video_RREADY),
        .m_axi_mm_video_RRESP(v_frm_rd_0_m_axi_mm_video_RRESP),
        .m_axi_mm_video_RVALID(v_frm_rd_0_m_axi_mm_video_RVALID),
        .m_axi_mm_video_WDATA(v_frm_rd_0_m_axi_mm_video_WDATA),
        .m_axi_mm_video_WLAST(v_frm_rd_0_m_axi_mm_video_WLAST),
        .m_axi_mm_video_WREADY(v_frm_rd_0_m_axi_mm_video_WREADY),
        .m_axi_mm_video_WSTRB(v_frm_rd_0_m_axi_mm_video_WSTRB),
        .m_axi_mm_video_WVALID(v_frm_rd_0_m_axi_mm_video_WVALID),
        .m_axis_video_TDATA(v_frm_rd_0_m_axis_video_TDATA),
        .m_axis_video_TLAST(v_frm_rd_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_frm_rd_0_m_axis_video_TREADY),
        .m_axis_video_TUSER(v_frm_rd_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_frm_rd_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(ps8_0_axi_periph_M03_AXI_ARADDR[6:0]),
        .s_axi_CTRL_ARREADY(ps8_0_axi_periph_M03_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(ps8_0_axi_periph_M03_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(ps8_0_axi_periph_M03_AXI_AWADDR[6:0]),
        .s_axi_CTRL_AWREADY(ps8_0_axi_periph_M03_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(ps8_0_axi_periph_M03_AXI_AWVALID),
        .s_axi_CTRL_BREADY(ps8_0_axi_periph_M03_AXI_BREADY),
        .s_axi_CTRL_BRESP(ps8_0_axi_periph_M03_AXI_BRESP),
        .s_axi_CTRL_BVALID(ps8_0_axi_periph_M03_AXI_BVALID),
        .s_axi_CTRL_RDATA(ps8_0_axi_periph_M03_AXI_RDATA),
        .s_axi_CTRL_RREADY(ps8_0_axi_periph_M03_AXI_RREADY),
        .s_axi_CTRL_RRESP(ps8_0_axi_periph_M03_AXI_RRESP),
        .s_axi_CTRL_RVALID(ps8_0_axi_periph_M03_AXI_RVALID),
        .s_axi_CTRL_WDATA(ps8_0_axi_periph_M03_AXI_WDATA),
        .s_axi_CTRL_WREADY(ps8_0_axi_periph_M03_AXI_WREADY),
        .s_axi_CTRL_WSTRB(ps8_0_axi_periph_M03_AXI_WSTRB),
        .s_axi_CTRL_WVALID(ps8_0_axi_periph_M03_AXI_WVALID));
  design_1_v_frmbuf_wr_0_1 v_frm_wr_1
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_99M_peripheral_aresetn),
        .interrupt(v_frm_wr_1_interrupt),
        .m_axi_mm_video_ARADDR(v_frm_wr_1_m_axi_mm_video_ARADDR),
        .m_axi_mm_video_ARBURST(v_frm_wr_1_m_axi_mm_video_ARBURST),
        .m_axi_mm_video_ARCACHE(v_frm_wr_1_m_axi_mm_video_ARCACHE),
        .m_axi_mm_video_ARLEN(v_frm_wr_1_m_axi_mm_video_ARLEN),
        .m_axi_mm_video_ARLOCK(v_frm_wr_1_m_axi_mm_video_ARLOCK),
        .m_axi_mm_video_ARPROT(v_frm_wr_1_m_axi_mm_video_ARPROT),
        .m_axi_mm_video_ARQOS(v_frm_wr_1_m_axi_mm_video_ARQOS),
        .m_axi_mm_video_ARREADY(v_frm_wr_1_m_axi_mm_video_ARREADY),
        .m_axi_mm_video_ARSIZE(v_frm_wr_1_m_axi_mm_video_ARSIZE),
        .m_axi_mm_video_ARVALID(v_frm_wr_1_m_axi_mm_video_ARVALID),
        .m_axi_mm_video_AWADDR(v_frm_wr_1_m_axi_mm_video_AWADDR),
        .m_axi_mm_video_AWBURST(v_frm_wr_1_m_axi_mm_video_AWBURST),
        .m_axi_mm_video_AWCACHE(v_frm_wr_1_m_axi_mm_video_AWCACHE),
        .m_axi_mm_video_AWLEN(v_frm_wr_1_m_axi_mm_video_AWLEN),
        .m_axi_mm_video_AWLOCK(v_frm_wr_1_m_axi_mm_video_AWLOCK),
        .m_axi_mm_video_AWPROT(v_frm_wr_1_m_axi_mm_video_AWPROT),
        .m_axi_mm_video_AWQOS(v_frm_wr_1_m_axi_mm_video_AWQOS),
        .m_axi_mm_video_AWREADY(v_frm_wr_1_m_axi_mm_video_AWREADY),
        .m_axi_mm_video_AWSIZE(v_frm_wr_1_m_axi_mm_video_AWSIZE),
        .m_axi_mm_video_AWVALID(v_frm_wr_1_m_axi_mm_video_AWVALID),
        .m_axi_mm_video_BREADY(v_frm_wr_1_m_axi_mm_video_BREADY),
        .m_axi_mm_video_BRESP(v_frm_wr_1_m_axi_mm_video_BRESP),
        .m_axi_mm_video_BVALID(v_frm_wr_1_m_axi_mm_video_BVALID),
        .m_axi_mm_video_RDATA(v_frm_wr_1_m_axi_mm_video_RDATA),
        .m_axi_mm_video_RLAST(v_frm_wr_1_m_axi_mm_video_RLAST),
        .m_axi_mm_video_RREADY(v_frm_wr_1_m_axi_mm_video_RREADY),
        .m_axi_mm_video_RRESP(v_frm_wr_1_m_axi_mm_video_RRESP),
        .m_axi_mm_video_RVALID(v_frm_wr_1_m_axi_mm_video_RVALID),
        .m_axi_mm_video_WDATA(v_frm_wr_1_m_axi_mm_video_WDATA),
        .m_axi_mm_video_WLAST(v_frm_wr_1_m_axi_mm_video_WLAST),
        .m_axi_mm_video_WREADY(v_frm_wr_1_m_axi_mm_video_WREADY),
        .m_axi_mm_video_WSTRB(v_frm_wr_1_m_axi_mm_video_WSTRB),
        .m_axi_mm_video_WVALID(v_frm_wr_1_m_axi_mm_video_WVALID),
        .s_axi_CTRL_ARADDR(ps8_0_axi_periph_M06_AXI_ARADDR[6:0]),
        .s_axi_CTRL_ARREADY(ps8_0_axi_periph_M06_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(ps8_0_axi_periph_M06_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(ps8_0_axi_periph_M06_AXI_AWADDR[6:0]),
        .s_axi_CTRL_AWREADY(ps8_0_axi_periph_M06_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(ps8_0_axi_periph_M06_AXI_AWVALID),
        .s_axi_CTRL_BREADY(ps8_0_axi_periph_M06_AXI_BREADY),
        .s_axi_CTRL_BRESP(ps8_0_axi_periph_M06_AXI_BRESP),
        .s_axi_CTRL_BVALID(ps8_0_axi_periph_M06_AXI_BVALID),
        .s_axi_CTRL_RDATA(ps8_0_axi_periph_M06_AXI_RDATA),
        .s_axi_CTRL_RREADY(ps8_0_axi_periph_M06_AXI_RREADY),
        .s_axi_CTRL_RRESP(ps8_0_axi_periph_M06_AXI_RRESP),
        .s_axi_CTRL_RVALID(ps8_0_axi_periph_M06_AXI_RVALID),
        .s_axi_CTRL_WDATA(ps8_0_axi_periph_M06_AXI_WDATA),
        .s_axi_CTRL_WREADY(ps8_0_axi_periph_M06_AXI_WREADY),
        .s_axi_CTRL_WSTRB(ps8_0_axi_periph_M06_AXI_WSTRB),
        .s_axi_CTRL_WVALID(ps8_0_axi_periph_M06_AXI_WVALID),
        .s_axis_video_TDATA(video_to_axis_1_m_axis_TDATA),
        .s_axis_video_TDEST(1'b0),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP({1'b1,1'b1,1'b1}),
        .s_axis_video_TLAST(video_to_axis_1_m_axis_TLAST),
        .s_axis_video_TREADY(video_to_axis_1_m_axis_TREADY),
        .s_axis_video_TSTRB({1'b1,1'b1,1'b1}),
        .s_axis_video_TUSER(video_to_axis_1_m_axis_TUSER),
        .s_axis_video_TVALID(video_to_axis_1_m_axis_TVALID));
  design_1_v_frmbuf_wr_0_2 v_frm_wr_2
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_99M_peripheral_aresetn),
        .interrupt(v_frm_wr_2_interrupt),
        .m_axi_mm_video_ARADDR(Conn3_ARADDR),
        .m_axi_mm_video_ARBURST(Conn3_ARBURST),
        .m_axi_mm_video_ARCACHE(Conn3_ARCACHE),
        .m_axi_mm_video_ARLEN(Conn3_ARLEN),
        .m_axi_mm_video_ARLOCK(Conn3_ARLOCK),
        .m_axi_mm_video_ARPROT(Conn3_ARPROT),
        .m_axi_mm_video_ARQOS(Conn3_ARQOS),
        .m_axi_mm_video_ARREADY(Conn3_ARREADY),
        .m_axi_mm_video_ARSIZE(Conn3_ARSIZE),
        .m_axi_mm_video_ARVALID(Conn3_ARVALID),
        .m_axi_mm_video_AWADDR(Conn3_AWADDR),
        .m_axi_mm_video_AWBURST(Conn3_AWBURST),
        .m_axi_mm_video_AWCACHE(Conn3_AWCACHE),
        .m_axi_mm_video_AWLEN(Conn3_AWLEN),
        .m_axi_mm_video_AWLOCK(Conn3_AWLOCK),
        .m_axi_mm_video_AWPROT(Conn3_AWPROT),
        .m_axi_mm_video_AWQOS(Conn3_AWQOS),
        .m_axi_mm_video_AWREADY(Conn3_AWREADY),
        .m_axi_mm_video_AWSIZE(Conn3_AWSIZE),
        .m_axi_mm_video_AWVALID(Conn3_AWVALID),
        .m_axi_mm_video_BREADY(Conn3_BREADY),
        .m_axi_mm_video_BRESP(Conn3_BRESP),
        .m_axi_mm_video_BVALID(Conn3_BVALID),
        .m_axi_mm_video_RDATA(Conn3_RDATA),
        .m_axi_mm_video_RLAST(Conn3_RLAST),
        .m_axi_mm_video_RREADY(Conn3_RREADY),
        .m_axi_mm_video_RRESP(Conn3_RRESP),
        .m_axi_mm_video_RVALID(Conn3_RVALID),
        .m_axi_mm_video_WDATA(Conn3_WDATA),
        .m_axi_mm_video_WLAST(Conn3_WLAST),
        .m_axi_mm_video_WREADY(Conn3_WREADY),
        .m_axi_mm_video_WSTRB(Conn3_WSTRB),
        .m_axi_mm_video_WVALID(Conn3_WVALID),
        .s_axi_CTRL_ARADDR(Conn2_ARADDR[6:0]),
        .s_axi_CTRL_ARREADY(Conn2_ARREADY),
        .s_axi_CTRL_ARVALID(Conn2_ARVALID),
        .s_axi_CTRL_AWADDR(Conn2_AWADDR[6:0]),
        .s_axi_CTRL_AWREADY(Conn2_AWREADY),
        .s_axi_CTRL_AWVALID(Conn2_AWVALID),
        .s_axi_CTRL_BREADY(Conn2_BREADY),
        .s_axi_CTRL_BRESP(Conn2_BRESP),
        .s_axi_CTRL_BVALID(Conn2_BVALID),
        .s_axi_CTRL_RDATA(Conn2_RDATA),
        .s_axi_CTRL_RREADY(Conn2_RREADY),
        .s_axi_CTRL_RRESP(Conn2_RRESP),
        .s_axi_CTRL_RVALID(Conn2_RVALID),
        .s_axi_CTRL_WDATA(Conn2_WDATA),
        .s_axi_CTRL_WREADY(Conn2_WREADY),
        .s_axi_CTRL_WSTRB(Conn2_WSTRB),
        .s_axi_CTRL_WVALID(Conn2_WVALID),
        .s_axis_video_TDATA(video_to_axis_2_m_axis_TDATA),
        .s_axis_video_TDEST(1'b0),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP({1'b1,1'b1,1'b1}),
        .s_axis_video_TLAST(video_to_axis_2_m_axis_TLAST),
        .s_axis_video_TREADY(video_to_axis_2_m_axis_TREADY),
        .s_axis_video_TSTRB({1'b1,1'b1,1'b1}),
        .s_axis_video_TUSER(video_to_axis_2_m_axis_TUSER),
        .s_axis_video_TVALID(video_to_axis_2_m_axis_TVALID));
  design_1_video_to_axis_1_0 video_to_axis_1
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .m_axis_tdata(video_to_axis_1_m_axis_TDATA),
        .m_axis_tlast(video_to_axis_1_m_axis_TLAST),
        .m_axis_tready(video_to_axis_1_m_axis_TREADY),
        .m_axis_tuser(video_to_axis_1_m_axis_TUSER),
        .m_axis_tvalid(video_to_axis_1_m_axis_TVALID),
        .vid_active_video(vip_rgb_ACTIVE_VIDEO),
        .vid_ce(axis_to_video_0_locked),
        .vid_clk(vip_out_pclk),
        .vid_data(vip_rgb_DATA),
        .vid_rstn(axis_to_video_0_locked),
        .vid_vsync(vip_rgb_VSYNC));
  design_1_video_to_axis_0_2 video_to_axis_2
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .m_axis_tdata(video_to_axis_2_m_axis_TDATA),
        .m_axis_tlast(video_to_axis_2_m_axis_TLAST),
        .m_axis_tready(video_to_axis_2_m_axis_TREADY),
        .m_axis_tuser(video_to_axis_2_m_axis_TUSER),
        .m_axis_tvalid(video_to_axis_2_m_axis_TVALID),
        .vid_active_video(vip_2_rgb_ACTIVE_VIDEO),
        .vid_ce(axis_to_video_0_locked),
        .vid_clk(vip_2_out_pclk),
        .vid_data(vip_2_rgb_DATA),
        .vid_rstn(axis_to_video_0_locked),
        .vid_vsync(vip_2_rgb_VSYNC));
  design_1_xil_vip_0_0 vip_1
       (.in_href(isp_yuv_ACTIVE_VIDEO),
        .in_vsync(isp_yuv_VSYNC),
        .in_yuv(isp_yuv_DATA),
        .irq(vip_irq),
        .out_gbr(vip_rgb_DATA),
        .out_href(vip_rgb_ACTIVE_VIDEO),
        .out_pclk(vip_out_pclk),
        .out_vsync(vip_rgb_VSYNC),
        .pclk(zynq_ultra_ps_e_0_pl_clk1),
        .rst_n(axis_to_video_0_locked),
        .s00_axi_aclk(s00_axi_aclk_0_1),
        .s00_axi_araddr(ps8_0_axi_periph_M05_AXI_ARADDR[11:0]),
        .s00_axi_aresetn(axi_ctrl_arstn_1),
        .s00_axi_arprot(ps8_0_axi_periph_M05_AXI_ARPROT),
        .s00_axi_arready(ps8_0_axi_periph_M05_AXI_ARREADY),
        .s00_axi_arvalid(ps8_0_axi_periph_M05_AXI_ARVALID),
        .s00_axi_awaddr(ps8_0_axi_periph_M05_AXI_AWADDR[11:0]),
        .s00_axi_awprot(ps8_0_axi_periph_M05_AXI_AWPROT),
        .s00_axi_awready(ps8_0_axi_periph_M05_AXI_AWREADY),
        .s00_axi_awvalid(ps8_0_axi_periph_M05_AXI_AWVALID),
        .s00_axi_bready(ps8_0_axi_periph_M05_AXI_BREADY),
        .s00_axi_bresp(ps8_0_axi_periph_M05_AXI_BRESP),
        .s00_axi_bvalid(ps8_0_axi_periph_M05_AXI_BVALID),
        .s00_axi_rdata(ps8_0_axi_periph_M05_AXI_RDATA),
        .s00_axi_rready(ps8_0_axi_periph_M05_AXI_RREADY),
        .s00_axi_rresp(ps8_0_axi_periph_M05_AXI_RRESP),
        .s00_axi_rvalid(ps8_0_axi_periph_M05_AXI_RVALID),
        .s00_axi_wdata(ps8_0_axi_periph_M05_AXI_WDATA),
        .s00_axi_wready(ps8_0_axi_periph_M05_AXI_WREADY),
        .s00_axi_wstrb(ps8_0_axi_periph_M05_AXI_WSTRB),
        .s00_axi_wvalid(ps8_0_axi_periph_M05_AXI_WVALID));
  design_1_xil_vip_0_1 vip_2
       (.in_href(isp_yuv_ACTIVE_VIDEO),
        .in_vsync(isp_yuv_VSYNC),
        .in_yuv(isp_yuv_DATA),
        .irq(vip_2_irq),
        .out_gbr(vip_2_rgb_DATA),
        .out_href(vip_2_rgb_ACTIVE_VIDEO),
        .out_pclk(vip_2_out_pclk),
        .out_vsync(vip_2_rgb_VSYNC),
        .pclk(zynq_ultra_ps_e_0_pl_clk1),
        .rst_n(axis_to_video_0_locked),
        .s00_axi_aclk(s00_axi_aclk_0_1),
        .s00_axi_araddr(Conn1_ARADDR[11:0]),
        .s00_axi_aresetn(axi_ctrl_arstn_1),
        .s00_axi_arprot(Conn1_ARPROT),
        .s00_axi_arready(Conn1_ARREADY),
        .s00_axi_arvalid(Conn1_ARVALID),
        .s00_axi_awaddr(Conn1_AWADDR[11:0]),
        .s00_axi_awprot(Conn1_AWPROT),
        .s00_axi_awready(Conn1_AWREADY),
        .s00_axi_awvalid(Conn1_AWVALID),
        .s00_axi_bready(Conn1_BREADY),
        .s00_axi_bresp(Conn1_BRESP),
        .s00_axi_bvalid(Conn1_BVALID),
        .s00_axi_rdata(Conn1_RDATA),
        .s00_axi_rready(Conn1_RREADY),
        .s00_axi_rresp(Conn1_RRESP),
        .s00_axi_rvalid(Conn1_RVALID),
        .s00_axi_wdata(Conn1_WDATA),
        .s00_axi_wready(Conn1_WREADY),
        .s00_axi_wstrb(Conn1_WSTRB),
        .s00_axi_wvalid(Conn1_WVALID));
endmodule

module m00_couplers_imp_3USNGV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_QJIMLI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1D3SAH3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [39:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1QWM4OE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [39:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_29TYDO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [39:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_P3UMW5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [39:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_1E9R4HW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [39:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_1S7ALKD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [39:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_1QZ361
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m04_couplers_ARADDR;
  wire auto_cc_to_m04_couplers_ARREADY;
  wire auto_cc_to_m04_couplers_ARVALID;
  wire [6:0]auto_cc_to_m04_couplers_AWADDR;
  wire auto_cc_to_m04_couplers_AWREADY;
  wire auto_cc_to_m04_couplers_AWVALID;
  wire auto_cc_to_m04_couplers_BREADY;
  wire [1:0]auto_cc_to_m04_couplers_BRESP;
  wire auto_cc_to_m04_couplers_BVALID;
  wire [31:0]auto_cc_to_m04_couplers_RDATA;
  wire auto_cc_to_m04_couplers_RREADY;
  wire [1:0]auto_cc_to_m04_couplers_RRESP;
  wire auto_cc_to_m04_couplers_RVALID;
  wire [31:0]auto_cc_to_m04_couplers_WDATA;
  wire auto_cc_to_m04_couplers_WREADY;
  wire [3:0]auto_cc_to_m04_couplers_WSTRB;
  wire auto_cc_to_m04_couplers_WVALID;
  wire [39:0]m04_couplers_to_auto_cc_ARADDR;
  wire [2:0]m04_couplers_to_auto_cc_ARPROT;
  wire m04_couplers_to_auto_cc_ARREADY;
  wire m04_couplers_to_auto_cc_ARVALID;
  wire [39:0]m04_couplers_to_auto_cc_AWADDR;
  wire [2:0]m04_couplers_to_auto_cc_AWPROT;
  wire m04_couplers_to_auto_cc_AWREADY;
  wire m04_couplers_to_auto_cc_AWVALID;
  wire m04_couplers_to_auto_cc_BREADY;
  wire [1:0]m04_couplers_to_auto_cc_BRESP;
  wire m04_couplers_to_auto_cc_BVALID;
  wire [31:0]m04_couplers_to_auto_cc_RDATA;
  wire m04_couplers_to_auto_cc_RREADY;
  wire [1:0]m04_couplers_to_auto_cc_RRESP;
  wire m04_couplers_to_auto_cc_RVALID;
  wire [31:0]m04_couplers_to_auto_cc_WDATA;
  wire m04_couplers_to_auto_cc_WREADY;
  wire [3:0]m04_couplers_to_auto_cc_WSTRB;
  wire m04_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = auto_cc_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = auto_cc_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m04_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m04_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  design_1_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m04_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m04_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m04_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m04_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m04_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m04_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m04_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m04_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m04_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m04_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m04_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m04_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m04_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_cc_WVALID));
endmodule

module m04_couplers_imp_NB1YAO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [39:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_1FZ4A9T
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [2:0]m05_couplers_to_m05_couplers_ARPROT;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [39:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [2:0]m05_couplers_to_m05_couplers_AWPROT;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m05_couplers_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m05_couplers_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m05_couplers_to_m05_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m06_couplers_imp_MPDFMR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m06_couplers_to_m06_couplers_ARADDR;
  wire [2:0]m06_couplers_to_m06_couplers_ARPROT;
  wire [0:0]m06_couplers_to_m06_couplers_ARREADY;
  wire [0:0]m06_couplers_to_m06_couplers_ARVALID;
  wire [39:0]m06_couplers_to_m06_couplers_AWADDR;
  wire [2:0]m06_couplers_to_m06_couplers_AWPROT;
  wire [0:0]m06_couplers_to_m06_couplers_AWREADY;
  wire [0:0]m06_couplers_to_m06_couplers_AWVALID;
  wire [0:0]m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire [0:0]m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire [0:0]m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire [0:0]m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire [0:0]m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire [0:0]m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m06_couplers_to_m06_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m06_couplers_to_m06_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready[0] = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready[0] = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready[0] = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready[0] = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid[0] = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid[0] = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready[0] = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m06_couplers_to_m06_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready[0];
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid[0];
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m06_couplers_to_m06_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready[0];
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid[0];
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready[0];
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid[0];
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready[0];
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid[0];
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready[0];
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m07_couplers_imp_1GV49DU
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m07_couplers_to_m07_couplers_ARADDR;
  wire [2:0]m07_couplers_to_m07_couplers_ARPROT;
  wire [0:0]m07_couplers_to_m07_couplers_ARREADY;
  wire [0:0]m07_couplers_to_m07_couplers_ARVALID;
  wire [39:0]m07_couplers_to_m07_couplers_AWADDR;
  wire [2:0]m07_couplers_to_m07_couplers_AWPROT;
  wire [0:0]m07_couplers_to_m07_couplers_AWREADY;
  wire [0:0]m07_couplers_to_m07_couplers_AWVALID;
  wire [0:0]m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire [0:0]m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire [0:0]m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire [0:0]m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire [0:0]m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire [0:0]m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m07_couplers_to_m07_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m07_couplers_to_m07_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready[0] = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready[0] = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready[0] = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready[0] = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid[0] = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid[0] = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready[0] = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m07_couplers_to_m07_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready[0];
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid[0];
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m07_couplers_to_m07_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready[0];
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid[0];
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready[0];
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid[0];
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready[0];
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid[0];
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready[0];
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m08_couplers_imp_K8X5UY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m08_couplers_to_m08_couplers_ARADDR;
  wire [2:0]m08_couplers_to_m08_couplers_ARPROT;
  wire [0:0]m08_couplers_to_m08_couplers_ARREADY;
  wire [0:0]m08_couplers_to_m08_couplers_ARVALID;
  wire [39:0]m08_couplers_to_m08_couplers_AWADDR;
  wire [2:0]m08_couplers_to_m08_couplers_AWPROT;
  wire [0:0]m08_couplers_to_m08_couplers_AWREADY;
  wire [0:0]m08_couplers_to_m08_couplers_AWVALID;
  wire [0:0]m08_couplers_to_m08_couplers_BREADY;
  wire [1:0]m08_couplers_to_m08_couplers_BRESP;
  wire [0:0]m08_couplers_to_m08_couplers_BVALID;
  wire [31:0]m08_couplers_to_m08_couplers_RDATA;
  wire [0:0]m08_couplers_to_m08_couplers_RREADY;
  wire [1:0]m08_couplers_to_m08_couplers_RRESP;
  wire [0:0]m08_couplers_to_m08_couplers_RVALID;
  wire [31:0]m08_couplers_to_m08_couplers_WDATA;
  wire [0:0]m08_couplers_to_m08_couplers_WREADY;
  wire [3:0]m08_couplers_to_m08_couplers_WSTRB;
  wire [0:0]m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m08_couplers_to_m08_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m08_couplers_to_m08_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready[0] = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready[0] = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready[0] = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready[0] = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid[0] = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid[0] = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready[0] = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m08_couplers_to_m08_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready[0];
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid[0];
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m08_couplers_to_m08_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready[0];
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid[0];
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready[0];
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid[0];
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready[0];
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid[0];
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready[0];
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_1A7ZMW4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_ds_ARADDR;
  wire [1:0]s00_couplers_to_auto_ds_ARBURST;
  wire [3:0]s00_couplers_to_auto_ds_ARCACHE;
  wire [15:0]s00_couplers_to_auto_ds_ARID;
  wire [7:0]s00_couplers_to_auto_ds_ARLEN;
  wire [0:0]s00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]s00_couplers_to_auto_ds_ARPROT;
  wire [3:0]s00_couplers_to_auto_ds_ARQOS;
  wire s00_couplers_to_auto_ds_ARREADY;
  wire [2:0]s00_couplers_to_auto_ds_ARSIZE;
  wire s00_couplers_to_auto_ds_ARVALID;
  wire [39:0]s00_couplers_to_auto_ds_AWADDR;
  wire [1:0]s00_couplers_to_auto_ds_AWBURST;
  wire [3:0]s00_couplers_to_auto_ds_AWCACHE;
  wire [15:0]s00_couplers_to_auto_ds_AWID;
  wire [7:0]s00_couplers_to_auto_ds_AWLEN;
  wire [0:0]s00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]s00_couplers_to_auto_ds_AWPROT;
  wire [3:0]s00_couplers_to_auto_ds_AWQOS;
  wire s00_couplers_to_auto_ds_AWREADY;
  wire [2:0]s00_couplers_to_auto_ds_AWSIZE;
  wire s00_couplers_to_auto_ds_AWVALID;
  wire [15:0]s00_couplers_to_auto_ds_BID;
  wire s00_couplers_to_auto_ds_BREADY;
  wire [1:0]s00_couplers_to_auto_ds_BRESP;
  wire s00_couplers_to_auto_ds_BVALID;
  wire [127:0]s00_couplers_to_auto_ds_RDATA;
  wire [15:0]s00_couplers_to_auto_ds_RID;
  wire s00_couplers_to_auto_ds_RLAST;
  wire s00_couplers_to_auto_ds_RREADY;
  wire [1:0]s00_couplers_to_auto_ds_RRESP;
  wire s00_couplers_to_auto_ds_RVALID;
  wire [127:0]s00_couplers_to_auto_ds_WDATA;
  wire s00_couplers_to_auto_ds_WLAST;
  wire s00_couplers_to_auto_ds_WREADY;
  wire [15:0]s00_couplers_to_auto_ds_WSTRB;
  wire s00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_ds_ARID),
        .s_axi_arlen(s00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_ds_AWID),
        .s_axi_awlen(s00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_ds_BID),
        .s_axi_bready(s00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_ds_RDATA),
        .s_axi_rid(s00_couplers_to_auto_ds_RID),
        .s_axi_rlast(s00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(s00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(s00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_1VXTOR1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_ds_ARADDR;
  wire [1:0]s00_couplers_to_auto_ds_ARBURST;
  wire [3:0]s00_couplers_to_auto_ds_ARCACHE;
  wire [15:0]s00_couplers_to_auto_ds_ARID;
  wire [7:0]s00_couplers_to_auto_ds_ARLEN;
  wire [0:0]s00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]s00_couplers_to_auto_ds_ARPROT;
  wire [3:0]s00_couplers_to_auto_ds_ARQOS;
  wire s00_couplers_to_auto_ds_ARREADY;
  wire [2:0]s00_couplers_to_auto_ds_ARSIZE;
  wire s00_couplers_to_auto_ds_ARVALID;
  wire [39:0]s00_couplers_to_auto_ds_AWADDR;
  wire [1:0]s00_couplers_to_auto_ds_AWBURST;
  wire [3:0]s00_couplers_to_auto_ds_AWCACHE;
  wire [15:0]s00_couplers_to_auto_ds_AWID;
  wire [7:0]s00_couplers_to_auto_ds_AWLEN;
  wire [0:0]s00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]s00_couplers_to_auto_ds_AWPROT;
  wire [3:0]s00_couplers_to_auto_ds_AWQOS;
  wire s00_couplers_to_auto_ds_AWREADY;
  wire [2:0]s00_couplers_to_auto_ds_AWSIZE;
  wire s00_couplers_to_auto_ds_AWVALID;
  wire [15:0]s00_couplers_to_auto_ds_BID;
  wire s00_couplers_to_auto_ds_BREADY;
  wire [1:0]s00_couplers_to_auto_ds_BRESP;
  wire s00_couplers_to_auto_ds_BVALID;
  wire [127:0]s00_couplers_to_auto_ds_RDATA;
  wire [15:0]s00_couplers_to_auto_ds_RID;
  wire s00_couplers_to_auto_ds_RLAST;
  wire s00_couplers_to_auto_ds_RREADY;
  wire [1:0]s00_couplers_to_auto_ds_RRESP;
  wire s00_couplers_to_auto_ds_RVALID;
  wire [127:0]s00_couplers_to_auto_ds_WDATA;
  wire s00_couplers_to_auto_ds_WLAST;
  wire s00_couplers_to_auto_ds_WREADY;
  wire [15:0]s00_couplers_to_auto_ds_WSTRB;
  wire s00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_2 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_ds_ARID),
        .s_axi_arlen(s00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_ds_AWID),
        .s_axi_awlen(s00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_ds_BID),
        .s_axi_bready(s00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_ds_RDATA),
        .s_axi_rid(s00_couplers_to_auto_ds_RID),
        .s_axi_rlast(s00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(s00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(s00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule
