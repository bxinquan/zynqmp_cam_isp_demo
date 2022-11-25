// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_frmbuf_rd_0_0_FrmbufRdHlsDataFlow (
        m_axis_video_TDATA,
        m_axis_video_TKEEP,
        m_axis_video_TSTRB,
        m_axis_video_TUSER,
        m_axis_video_TLAST,
        m_axis_video_TID,
        m_axis_video_TDEST,
        m_axi_mm_video_AWVALID,
        m_axi_mm_video_AWREADY,
        m_axi_mm_video_AWADDR,
        m_axi_mm_video_AWID,
        m_axi_mm_video_AWLEN,
        m_axi_mm_video_AWSIZE,
        m_axi_mm_video_AWBURST,
        m_axi_mm_video_AWLOCK,
        m_axi_mm_video_AWCACHE,
        m_axi_mm_video_AWPROT,
        m_axi_mm_video_AWQOS,
        m_axi_mm_video_AWREGION,
        m_axi_mm_video_AWUSER,
        m_axi_mm_video_WVALID,
        m_axi_mm_video_WREADY,
        m_axi_mm_video_WDATA,
        m_axi_mm_video_WSTRB,
        m_axi_mm_video_WLAST,
        m_axi_mm_video_WID,
        m_axi_mm_video_WUSER,
        m_axi_mm_video_ARVALID,
        m_axi_mm_video_ARREADY,
        m_axi_mm_video_ARADDR,
        m_axi_mm_video_ARID,
        m_axi_mm_video_ARLEN,
        m_axi_mm_video_ARSIZE,
        m_axi_mm_video_ARBURST,
        m_axi_mm_video_ARLOCK,
        m_axi_mm_video_ARCACHE,
        m_axi_mm_video_ARPROT,
        m_axi_mm_video_ARQOS,
        m_axi_mm_video_ARREGION,
        m_axi_mm_video_ARUSER,
        m_axi_mm_video_RVALID,
        m_axi_mm_video_RREADY,
        m_axi_mm_video_RDATA,
        m_axi_mm_video_RLAST,
        m_axi_mm_video_RID,
        m_axi_mm_video_RFIFONUM,
        m_axi_mm_video_RUSER,
        m_axi_mm_video_RRESP,
        m_axi_mm_video_BVALID,
        m_axi_mm_video_BREADY,
        m_axi_mm_video_BRESP,
        m_axi_mm_video_BID,
        m_axi_mm_video_BUSER,
        HwReg_frm_buffer,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        ap_clk,
        ap_rst,
        p_read_ap_vld,
        p_read3_ap_vld,
        p_read5_ap_vld,
        ap_start,
        HwReg_frm_buffer_ap_vld,
        p_read1_ap_vld,
        p_read4_ap_vld,
        p_read2_ap_vld,
        m_axis_video_TVALID,
        m_axis_video_TREADY,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


output  [31:0] m_axis_video_TDATA;
output  [3:0] m_axis_video_TKEEP;
output  [3:0] m_axis_video_TSTRB;
output  [0:0] m_axis_video_TUSER;
output  [0:0] m_axis_video_TLAST;
output  [0:0] m_axis_video_TID;
output  [0:0] m_axis_video_TDEST;
output   m_axi_mm_video_AWVALID;
input   m_axi_mm_video_AWREADY;
output  [31:0] m_axi_mm_video_AWADDR;
output  [0:0] m_axi_mm_video_AWID;
output  [31:0] m_axi_mm_video_AWLEN;
output  [2:0] m_axi_mm_video_AWSIZE;
output  [1:0] m_axi_mm_video_AWBURST;
output  [1:0] m_axi_mm_video_AWLOCK;
output  [3:0] m_axi_mm_video_AWCACHE;
output  [2:0] m_axi_mm_video_AWPROT;
output  [3:0] m_axi_mm_video_AWQOS;
output  [3:0] m_axi_mm_video_AWREGION;
output  [0:0] m_axi_mm_video_AWUSER;
output   m_axi_mm_video_WVALID;
input   m_axi_mm_video_WREADY;
output  [63:0] m_axi_mm_video_WDATA;
output  [7:0] m_axi_mm_video_WSTRB;
output   m_axi_mm_video_WLAST;
output  [0:0] m_axi_mm_video_WID;
output  [0:0] m_axi_mm_video_WUSER;
output   m_axi_mm_video_ARVALID;
input   m_axi_mm_video_ARREADY;
output  [31:0] m_axi_mm_video_ARADDR;
output  [0:0] m_axi_mm_video_ARID;
output  [31:0] m_axi_mm_video_ARLEN;
output  [2:0] m_axi_mm_video_ARSIZE;
output  [1:0] m_axi_mm_video_ARBURST;
output  [1:0] m_axi_mm_video_ARLOCK;
output  [3:0] m_axi_mm_video_ARCACHE;
output  [2:0] m_axi_mm_video_ARPROT;
output  [3:0] m_axi_mm_video_ARQOS;
output  [3:0] m_axi_mm_video_ARREGION;
output  [0:0] m_axi_mm_video_ARUSER;
input   m_axi_mm_video_RVALID;
output   m_axi_mm_video_RREADY;
input  [63:0] m_axi_mm_video_RDATA;
input   m_axi_mm_video_RLAST;
input  [0:0] m_axi_mm_video_RID;
input  [6:0] m_axi_mm_video_RFIFONUM;
input  [0:0] m_axi_mm_video_RUSER;
input  [1:0] m_axi_mm_video_RRESP;
input   m_axi_mm_video_BVALID;
output   m_axi_mm_video_BREADY;
input  [1:0] m_axi_mm_video_BRESP;
input  [0:0] m_axi_mm_video_BID;
input  [0:0] m_axi_mm_video_BUSER;
input  [31:0] HwReg_frm_buffer;
input  [11:0] p_read;
input  [11:0] p_read1;
input  [15:0] p_read2;
input  [5:0] p_read3;
input  [14:0] p_read4;
input  [1:0] p_read5;
input   ap_clk;
input   ap_rst;
input   p_read_ap_vld;
input   p_read3_ap_vld;
input   p_read5_ap_vld;
input   ap_start;
input   HwReg_frm_buffer_ap_vld;
input   p_read1_ap_vld;
input   p_read4_ap_vld;
input   p_read2_ap_vld;
output   m_axis_video_TVALID;
input   m_axis_video_TREADY;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    entry_proc_U0_ap_start;
wire    entry_proc_U0_start_full_n;
wire    entry_proc_U0_ap_done;
wire    entry_proc_U0_ap_continue;
wire    entry_proc_U0_ap_idle;
wire    entry_proc_U0_ap_ready;
wire    entry_proc_U0_start_out;
wire    entry_proc_U0_start_write;
wire   [11:0] entry_proc_U0_width_c9_din;
wire    entry_proc_U0_width_c9_write;
wire   [5:0] entry_proc_U0_video_format_c_din;
wire    entry_proc_U0_video_format_c_write;
wire   [1:0] entry_proc_U0_colorFormat_c_din;
wire    entry_proc_U0_colorFormat_c_write;
wire    AXIMMvideo2Bytes_U0_ap_start;
wire    AXIMMvideo2Bytes_U0_ap_done;
wire    AXIMMvideo2Bytes_U0_ap_continue;
wire    AXIMMvideo2Bytes_U0_ap_idle;
wire    AXIMMvideo2Bytes_U0_ap_ready;
wire    AXIMMvideo2Bytes_U0_m_axi_mm_video_AWVALID;
wire   [31:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_AWADDR;
wire   [0:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_AWID;
wire   [31:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_AWLEN;
wire   [2:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_AWSIZE;
wire   [1:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_AWBURST;
wire   [1:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_AWLOCK;
wire   [3:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_AWCACHE;
wire   [2:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_AWPROT;
wire   [3:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_AWQOS;
wire   [3:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_AWREGION;
wire   [0:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_AWUSER;
wire    AXIMMvideo2Bytes_U0_m_axi_mm_video_WVALID;
wire   [63:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_WDATA;
wire   [7:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_WSTRB;
wire    AXIMMvideo2Bytes_U0_m_axi_mm_video_WLAST;
wire   [0:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_WID;
wire   [0:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_WUSER;
wire    AXIMMvideo2Bytes_U0_m_axi_mm_video_ARVALID;
wire   [31:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_ARADDR;
wire   [0:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_ARID;
wire   [31:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_ARLEN;
wire   [2:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_ARSIZE;
wire   [1:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_ARBURST;
wire   [1:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_ARLOCK;
wire   [3:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_ARCACHE;
wire   [2:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_ARPROT;
wire   [3:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_ARQOS;
wire   [3:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_ARREGION;
wire   [0:0] AXIMMvideo2Bytes_U0_m_axi_mm_video_ARUSER;
wire    AXIMMvideo2Bytes_U0_m_axi_mm_video_RREADY;
wire    AXIMMvideo2Bytes_U0_m_axi_mm_video_BREADY;
wire   [63:0] AXIMMvideo2Bytes_U0_bytePlanes1_din;
wire    AXIMMvideo2Bytes_U0_bytePlanes1_write;
wire   [11:0] AXIMMvideo2Bytes_U0_height_c10_din;
wire    AXIMMvideo2Bytes_U0_height_c10_write;
wire   [14:0] AXIMMvideo2Bytes_U0_WidthInBytes_c_din;
wire    AXIMMvideo2Bytes_U0_WidthInBytes_c_write;
wire    Bytes2MultiPixStream_U0_ap_start;
wire    Bytes2MultiPixStream_U0_ap_done;
wire    Bytes2MultiPixStream_U0_ap_continue;
wire    Bytes2MultiPixStream_U0_ap_idle;
wire    Bytes2MultiPixStream_U0_ap_ready;
wire    Bytes2MultiPixStream_U0_bytePlanes1_read;
wire   [29:0] Bytes2MultiPixStream_U0_img_din;
wire    Bytes2MultiPixStream_U0_img_write;
wire    Bytes2MultiPixStream_U0_Height_read;
wire    Bytes2MultiPixStream_U0_Width_read;
wire    Bytes2MultiPixStream_U0_WidthInBytes_read;
wire    Bytes2MultiPixStream_U0_VideoFormat_read;
wire   [11:0] Bytes2MultiPixStream_U0_width_c_din;
wire    Bytes2MultiPixStream_U0_width_c_write;
wire   [11:0] Bytes2MultiPixStream_U0_height_c_din;
wire    Bytes2MultiPixStream_U0_height_c_write;
wire    MultiPixStream2AXIvideo_U0_ap_start;
wire    MultiPixStream2AXIvideo_U0_ap_done;
wire    MultiPixStream2AXIvideo_U0_ap_continue;
wire    MultiPixStream2AXIvideo_U0_ap_idle;
wire    MultiPixStream2AXIvideo_U0_ap_ready;
wire    MultiPixStream2AXIvideo_U0_img_read;
wire   [31:0] MultiPixStream2AXIvideo_U0_m_axis_video_TDATA;
wire    MultiPixStream2AXIvideo_U0_m_axis_video_TVALID;
wire   [3:0] MultiPixStream2AXIvideo_U0_m_axis_video_TKEEP;
wire   [3:0] MultiPixStream2AXIvideo_U0_m_axis_video_TSTRB;
wire   [0:0] MultiPixStream2AXIvideo_U0_m_axis_video_TUSER;
wire   [0:0] MultiPixStream2AXIvideo_U0_m_axis_video_TLAST;
wire   [0:0] MultiPixStream2AXIvideo_U0_m_axis_video_TID;
wire   [0:0] MultiPixStream2AXIvideo_U0_m_axis_video_TDEST;
wire    MultiPixStream2AXIvideo_U0_Height_read;
wire    MultiPixStream2AXIvideo_U0_WidthOut_read;
wire    MultiPixStream2AXIvideo_U0_colorFormat_read;
wire    width_c9_full_n;
wire   [11:0] width_c9_dout;
wire   [2:0] width_c9_num_data_valid;
wire   [2:0] width_c9_fifo_cap;
wire    width_c9_empty_n;
wire    video_format_c_full_n;
wire   [5:0] video_format_c_dout;
wire   [2:0] video_format_c_num_data_valid;
wire   [2:0] video_format_c_fifo_cap;
wire    video_format_c_empty_n;
wire    colorFormat_c_full_n;
wire   [1:0] colorFormat_c_dout;
wire   [2:0] colorFormat_c_num_data_valid;
wire   [2:0] colorFormat_c_fifo_cap;
wire    colorFormat_c_empty_n;
wire    bytePlanes_plane0_full_n;
wire   [63:0] bytePlanes_plane0_dout;
wire   [10:0] bytePlanes_plane0_num_data_valid;
wire   [10:0] bytePlanes_plane0_fifo_cap;
wire    bytePlanes_plane0_empty_n;
wire    height_c10_full_n;
wire   [11:0] height_c10_dout;
wire   [1:0] height_c10_num_data_valid;
wire   [1:0] height_c10_fifo_cap;
wire    height_c10_empty_n;
wire    WidthInBytes_c_full_n;
wire   [14:0] WidthInBytes_c_dout;
wire   [1:0] WidthInBytes_c_num_data_valid;
wire   [1:0] WidthInBytes_c_fifo_cap;
wire    WidthInBytes_c_empty_n;
wire    img_full_n;
wire   [29:0] img_dout;
wire   [1:0] img_num_data_valid;
wire   [1:0] img_fifo_cap;
wire    img_empty_n;
wire    width_c_full_n;
wire   [11:0] width_c_dout;
wire   [1:0] width_c_num_data_valid;
wire   [1:0] width_c_fifo_cap;
wire    width_c_empty_n;
wire    height_c_full_n;
wire   [11:0] height_c_dout;
wire   [1:0] height_c_num_data_valid;
wire   [1:0] height_c_fifo_cap;
wire    height_c_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_entry_proc_U0_ap_ready;
wire    ap_sync_entry_proc_U0_ap_ready;
reg    ap_sync_reg_AXIMMvideo2Bytes_U0_ap_ready;
wire    ap_sync_AXIMMvideo2Bytes_U0_ap_ready;
wire   [0:0] start_for_Bytes2MultiPixStream_U0_din;
wire    start_for_Bytes2MultiPixStream_U0_full_n;
wire   [0:0] start_for_Bytes2MultiPixStream_U0_dout;
wire    start_for_Bytes2MultiPixStream_U0_empty_n;
wire   [0:0] start_for_MultiPixStream2AXIvideo_U0_din;
wire    start_for_MultiPixStream2AXIvideo_U0_full_n;
wire   [0:0] start_for_MultiPixStream2AXIvideo_U0_dout;
wire    start_for_MultiPixStream2AXIvideo_U0_empty_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_entry_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_AXIMMvideo2Bytes_U0_ap_ready = 1'b0;
end

design_1_v_frmbuf_rd_0_0_entry_proc entry_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(entry_proc_U0_ap_start),
    .start_full_n(entry_proc_U0_start_full_n),
    .ap_done(entry_proc_U0_ap_done),
    .ap_continue(entry_proc_U0_ap_continue),
    .ap_idle(entry_proc_U0_ap_idle),
    .ap_ready(entry_proc_U0_ap_ready),
    .start_out(entry_proc_U0_start_out),
    .start_write(entry_proc_U0_start_write),
    .p_read(p_read),
    .width_c9_din(entry_proc_U0_width_c9_din),
    .width_c9_num_data_valid(width_c9_num_data_valid),
    .width_c9_fifo_cap(width_c9_fifo_cap),
    .width_c9_full_n(width_c9_full_n),
    .width_c9_write(entry_proc_U0_width_c9_write),
    .p_read1(p_read3),
    .video_format_c_din(entry_proc_U0_video_format_c_din),
    .video_format_c_num_data_valid(video_format_c_num_data_valid),
    .video_format_c_fifo_cap(video_format_c_fifo_cap),
    .video_format_c_full_n(video_format_c_full_n),
    .video_format_c_write(entry_proc_U0_video_format_c_write),
    .p_read2(p_read5),
    .colorFormat_c_din(entry_proc_U0_colorFormat_c_din),
    .colorFormat_c_num_data_valid(colorFormat_c_num_data_valid),
    .colorFormat_c_fifo_cap(colorFormat_c_fifo_cap),
    .colorFormat_c_full_n(colorFormat_c_full_n),
    .colorFormat_c_write(entry_proc_U0_colorFormat_c_write)
);

design_1_v_frmbuf_rd_0_0_AXIMMvideo2Bytes AXIMMvideo2Bytes_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(AXIMMvideo2Bytes_U0_ap_start),
    .ap_done(AXIMMvideo2Bytes_U0_ap_done),
    .ap_continue(AXIMMvideo2Bytes_U0_ap_continue),
    .ap_idle(AXIMMvideo2Bytes_U0_ap_idle),
    .ap_ready(AXIMMvideo2Bytes_U0_ap_ready),
    .m_axi_mm_video_AWVALID(AXIMMvideo2Bytes_U0_m_axi_mm_video_AWVALID),
    .m_axi_mm_video_AWREADY(1'b0),
    .m_axi_mm_video_AWADDR(AXIMMvideo2Bytes_U0_m_axi_mm_video_AWADDR),
    .m_axi_mm_video_AWID(AXIMMvideo2Bytes_U0_m_axi_mm_video_AWID),
    .m_axi_mm_video_AWLEN(AXIMMvideo2Bytes_U0_m_axi_mm_video_AWLEN),
    .m_axi_mm_video_AWSIZE(AXIMMvideo2Bytes_U0_m_axi_mm_video_AWSIZE),
    .m_axi_mm_video_AWBURST(AXIMMvideo2Bytes_U0_m_axi_mm_video_AWBURST),
    .m_axi_mm_video_AWLOCK(AXIMMvideo2Bytes_U0_m_axi_mm_video_AWLOCK),
    .m_axi_mm_video_AWCACHE(AXIMMvideo2Bytes_U0_m_axi_mm_video_AWCACHE),
    .m_axi_mm_video_AWPROT(AXIMMvideo2Bytes_U0_m_axi_mm_video_AWPROT),
    .m_axi_mm_video_AWQOS(AXIMMvideo2Bytes_U0_m_axi_mm_video_AWQOS),
    .m_axi_mm_video_AWREGION(AXIMMvideo2Bytes_U0_m_axi_mm_video_AWREGION),
    .m_axi_mm_video_AWUSER(AXIMMvideo2Bytes_U0_m_axi_mm_video_AWUSER),
    .m_axi_mm_video_WVALID(AXIMMvideo2Bytes_U0_m_axi_mm_video_WVALID),
    .m_axi_mm_video_WREADY(1'b0),
    .m_axi_mm_video_WDATA(AXIMMvideo2Bytes_U0_m_axi_mm_video_WDATA),
    .m_axi_mm_video_WSTRB(AXIMMvideo2Bytes_U0_m_axi_mm_video_WSTRB),
    .m_axi_mm_video_WLAST(AXIMMvideo2Bytes_U0_m_axi_mm_video_WLAST),
    .m_axi_mm_video_WID(AXIMMvideo2Bytes_U0_m_axi_mm_video_WID),
    .m_axi_mm_video_WUSER(AXIMMvideo2Bytes_U0_m_axi_mm_video_WUSER),
    .m_axi_mm_video_ARVALID(AXIMMvideo2Bytes_U0_m_axi_mm_video_ARVALID),
    .m_axi_mm_video_ARREADY(m_axi_mm_video_ARREADY),
    .m_axi_mm_video_ARADDR(AXIMMvideo2Bytes_U0_m_axi_mm_video_ARADDR),
    .m_axi_mm_video_ARID(AXIMMvideo2Bytes_U0_m_axi_mm_video_ARID),
    .m_axi_mm_video_ARLEN(AXIMMvideo2Bytes_U0_m_axi_mm_video_ARLEN),
    .m_axi_mm_video_ARSIZE(AXIMMvideo2Bytes_U0_m_axi_mm_video_ARSIZE),
    .m_axi_mm_video_ARBURST(AXIMMvideo2Bytes_U0_m_axi_mm_video_ARBURST),
    .m_axi_mm_video_ARLOCK(AXIMMvideo2Bytes_U0_m_axi_mm_video_ARLOCK),
    .m_axi_mm_video_ARCACHE(AXIMMvideo2Bytes_U0_m_axi_mm_video_ARCACHE),
    .m_axi_mm_video_ARPROT(AXIMMvideo2Bytes_U0_m_axi_mm_video_ARPROT),
    .m_axi_mm_video_ARQOS(AXIMMvideo2Bytes_U0_m_axi_mm_video_ARQOS),
    .m_axi_mm_video_ARREGION(AXIMMvideo2Bytes_U0_m_axi_mm_video_ARREGION),
    .m_axi_mm_video_ARUSER(AXIMMvideo2Bytes_U0_m_axi_mm_video_ARUSER),
    .m_axi_mm_video_RVALID(m_axi_mm_video_RVALID),
    .m_axi_mm_video_RREADY(AXIMMvideo2Bytes_U0_m_axi_mm_video_RREADY),
    .m_axi_mm_video_RDATA(m_axi_mm_video_RDATA),
    .m_axi_mm_video_RLAST(m_axi_mm_video_RLAST),
    .m_axi_mm_video_RID(m_axi_mm_video_RID),
    .m_axi_mm_video_RFIFONUM(m_axi_mm_video_RFIFONUM),
    .m_axi_mm_video_RUSER(m_axi_mm_video_RUSER),
    .m_axi_mm_video_RRESP(m_axi_mm_video_RRESP),
    .m_axi_mm_video_BVALID(1'b0),
    .m_axi_mm_video_BREADY(AXIMMvideo2Bytes_U0_m_axi_mm_video_BREADY),
    .m_axi_mm_video_BRESP(2'd0),
    .m_axi_mm_video_BID(1'd0),
    .m_axi_mm_video_BUSER(1'd0),
    .srcImg(HwReg_frm_buffer),
    .bytePlanes1_din(AXIMMvideo2Bytes_U0_bytePlanes1_din),
    .bytePlanes1_num_data_valid(bytePlanes_plane0_num_data_valid),
    .bytePlanes1_fifo_cap(bytePlanes_plane0_fifo_cap),
    .bytePlanes1_full_n(bytePlanes_plane0_full_n),
    .bytePlanes1_write(AXIMMvideo2Bytes_U0_bytePlanes1_write),
    .p_read(p_read1),
    .p_read1(p_read4),
    .p_read2(p_read2),
    .height_c10_din(AXIMMvideo2Bytes_U0_height_c10_din),
    .height_c10_num_data_valid(height_c10_num_data_valid),
    .height_c10_fifo_cap(height_c10_fifo_cap),
    .height_c10_full_n(height_c10_full_n),
    .height_c10_write(AXIMMvideo2Bytes_U0_height_c10_write),
    .WidthInBytes_c_din(AXIMMvideo2Bytes_U0_WidthInBytes_c_din),
    .WidthInBytes_c_num_data_valid(WidthInBytes_c_num_data_valid),
    .WidthInBytes_c_fifo_cap(WidthInBytes_c_fifo_cap),
    .WidthInBytes_c_full_n(WidthInBytes_c_full_n),
    .WidthInBytes_c_write(AXIMMvideo2Bytes_U0_WidthInBytes_c_write)
);

design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream Bytes2MultiPixStream_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Bytes2MultiPixStream_U0_ap_start),
    .ap_done(Bytes2MultiPixStream_U0_ap_done),
    .ap_continue(Bytes2MultiPixStream_U0_ap_continue),
    .ap_idle(Bytes2MultiPixStream_U0_ap_idle),
    .ap_ready(Bytes2MultiPixStream_U0_ap_ready),
    .bytePlanes1_dout(bytePlanes_plane0_dout),
    .bytePlanes1_num_data_valid(bytePlanes_plane0_num_data_valid),
    .bytePlanes1_fifo_cap(bytePlanes_plane0_fifo_cap),
    .bytePlanes1_empty_n(bytePlanes_plane0_empty_n),
    .bytePlanes1_read(Bytes2MultiPixStream_U0_bytePlanes1_read),
    .img_din(Bytes2MultiPixStream_U0_img_din),
    .img_num_data_valid(img_num_data_valid),
    .img_fifo_cap(img_fifo_cap),
    .img_full_n(img_full_n),
    .img_write(Bytes2MultiPixStream_U0_img_write),
    .Height_dout(height_c10_dout),
    .Height_num_data_valid(height_c10_num_data_valid),
    .Height_fifo_cap(height_c10_fifo_cap),
    .Height_empty_n(height_c10_empty_n),
    .Height_read(Bytes2MultiPixStream_U0_Height_read),
    .Width_dout(width_c9_dout),
    .Width_num_data_valid(width_c9_num_data_valid),
    .Width_fifo_cap(width_c9_fifo_cap),
    .Width_empty_n(width_c9_empty_n),
    .Width_read(Bytes2MultiPixStream_U0_Width_read),
    .WidthInBytes_dout(WidthInBytes_c_dout),
    .WidthInBytes_num_data_valid(WidthInBytes_c_num_data_valid),
    .WidthInBytes_fifo_cap(WidthInBytes_c_fifo_cap),
    .WidthInBytes_empty_n(WidthInBytes_c_empty_n),
    .WidthInBytes_read(Bytes2MultiPixStream_U0_WidthInBytes_read),
    .VideoFormat_dout(video_format_c_dout),
    .VideoFormat_num_data_valid(video_format_c_num_data_valid),
    .VideoFormat_fifo_cap(video_format_c_fifo_cap),
    .VideoFormat_empty_n(video_format_c_empty_n),
    .VideoFormat_read(Bytes2MultiPixStream_U0_VideoFormat_read),
    .width_c_din(Bytes2MultiPixStream_U0_width_c_din),
    .width_c_num_data_valid(width_c_num_data_valid),
    .width_c_fifo_cap(width_c_fifo_cap),
    .width_c_full_n(width_c_full_n),
    .width_c_write(Bytes2MultiPixStream_U0_width_c_write),
    .height_c_din(Bytes2MultiPixStream_U0_height_c_din),
    .height_c_num_data_valid(height_c_num_data_valid),
    .height_c_fifo_cap(height_c_fifo_cap),
    .height_c_full_n(height_c_full_n),
    .height_c_write(Bytes2MultiPixStream_U0_height_c_write)
);

design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo MultiPixStream2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(MultiPixStream2AXIvideo_U0_ap_start),
    .ap_done(MultiPixStream2AXIvideo_U0_ap_done),
    .ap_continue(MultiPixStream2AXIvideo_U0_ap_continue),
    .ap_idle(MultiPixStream2AXIvideo_U0_ap_idle),
    .ap_ready(MultiPixStream2AXIvideo_U0_ap_ready),
    .img_dout(img_dout),
    .img_num_data_valid(img_num_data_valid),
    .img_fifo_cap(img_fifo_cap),
    .img_empty_n(img_empty_n),
    .img_read(MultiPixStream2AXIvideo_U0_img_read),
    .m_axis_video_TDATA(MultiPixStream2AXIvideo_U0_m_axis_video_TDATA),
    .m_axis_video_TVALID(MultiPixStream2AXIvideo_U0_m_axis_video_TVALID),
    .m_axis_video_TREADY(m_axis_video_TREADY),
    .m_axis_video_TKEEP(MultiPixStream2AXIvideo_U0_m_axis_video_TKEEP),
    .m_axis_video_TSTRB(MultiPixStream2AXIvideo_U0_m_axis_video_TSTRB),
    .m_axis_video_TUSER(MultiPixStream2AXIvideo_U0_m_axis_video_TUSER),
    .m_axis_video_TLAST(MultiPixStream2AXIvideo_U0_m_axis_video_TLAST),
    .m_axis_video_TID(MultiPixStream2AXIvideo_U0_m_axis_video_TID),
    .m_axis_video_TDEST(MultiPixStream2AXIvideo_U0_m_axis_video_TDEST),
    .Height_dout(height_c_dout),
    .Height_num_data_valid(height_c_num_data_valid),
    .Height_fifo_cap(height_c_fifo_cap),
    .Height_empty_n(height_c_empty_n),
    .Height_read(MultiPixStream2AXIvideo_U0_Height_read),
    .WidthOut_dout(width_c_dout),
    .WidthOut_num_data_valid(width_c_num_data_valid),
    .WidthOut_fifo_cap(width_c_fifo_cap),
    .WidthOut_empty_n(width_c_empty_n),
    .WidthOut_read(MultiPixStream2AXIvideo_U0_WidthOut_read),
    .colorFormat_dout(colorFormat_c_dout),
    .colorFormat_num_data_valid(colorFormat_c_num_data_valid),
    .colorFormat_fifo_cap(colorFormat_c_fifo_cap),
    .colorFormat_empty_n(colorFormat_c_empty_n),
    .colorFormat_read(MultiPixStream2AXIvideo_U0_colorFormat_read)
);

design_1_v_frmbuf_rd_0_0_fifo_w12_d3_S width_c9_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_width_c9_din),
    .if_full_n(width_c9_full_n),
    .if_write(entry_proc_U0_width_c9_write),
    .if_dout(width_c9_dout),
    .if_num_data_valid(width_c9_num_data_valid),
    .if_fifo_cap(width_c9_fifo_cap),
    .if_empty_n(width_c9_empty_n),
    .if_read(Bytes2MultiPixStream_U0_Width_read)
);

design_1_v_frmbuf_rd_0_0_fifo_w6_d3_S video_format_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_video_format_c_din),
    .if_full_n(video_format_c_full_n),
    .if_write(entry_proc_U0_video_format_c_write),
    .if_dout(video_format_c_dout),
    .if_num_data_valid(video_format_c_num_data_valid),
    .if_fifo_cap(video_format_c_fifo_cap),
    .if_empty_n(video_format_c_empty_n),
    .if_read(Bytes2MultiPixStream_U0_VideoFormat_read)
);

design_1_v_frmbuf_rd_0_0_fifo_w2_d4_S colorFormat_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_colorFormat_c_din),
    .if_full_n(colorFormat_c_full_n),
    .if_write(entry_proc_U0_colorFormat_c_write),
    .if_dout(colorFormat_c_dout),
    .if_num_data_valid(colorFormat_c_num_data_valid),
    .if_fifo_cap(colorFormat_c_fifo_cap),
    .if_empty_n(colorFormat_c_empty_n),
    .if_read(MultiPixStream2AXIvideo_U0_colorFormat_read)
);

design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B bytePlanes_plane0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIMMvideo2Bytes_U0_bytePlanes1_din),
    .if_full_n(bytePlanes_plane0_full_n),
    .if_write(AXIMMvideo2Bytes_U0_bytePlanes1_write),
    .if_dout(bytePlanes_plane0_dout),
    .if_num_data_valid(bytePlanes_plane0_num_data_valid),
    .if_fifo_cap(bytePlanes_plane0_fifo_cap),
    .if_empty_n(bytePlanes_plane0_empty_n),
    .if_read(Bytes2MultiPixStream_U0_bytePlanes1_read)
);

design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S height_c10_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIMMvideo2Bytes_U0_height_c10_din),
    .if_full_n(height_c10_full_n),
    .if_write(AXIMMvideo2Bytes_U0_height_c10_write),
    .if_dout(height_c10_dout),
    .if_num_data_valid(height_c10_num_data_valid),
    .if_fifo_cap(height_c10_fifo_cap),
    .if_empty_n(height_c10_empty_n),
    .if_read(Bytes2MultiPixStream_U0_Height_read)
);

design_1_v_frmbuf_rd_0_0_fifo_w15_d2_S WidthInBytes_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIMMvideo2Bytes_U0_WidthInBytes_c_din),
    .if_full_n(WidthInBytes_c_full_n),
    .if_write(AXIMMvideo2Bytes_U0_WidthInBytes_c_write),
    .if_dout(WidthInBytes_c_dout),
    .if_num_data_valid(WidthInBytes_c_num_data_valid),
    .if_fifo_cap(WidthInBytes_c_fifo_cap),
    .if_empty_n(WidthInBytes_c_empty_n),
    .if_read(Bytes2MultiPixStream_U0_WidthInBytes_read)
);

design_1_v_frmbuf_rd_0_0_fifo_w30_d2_S img_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Bytes2MultiPixStream_U0_img_din),
    .if_full_n(img_full_n),
    .if_write(Bytes2MultiPixStream_U0_img_write),
    .if_dout(img_dout),
    .if_num_data_valid(img_num_data_valid),
    .if_fifo_cap(img_fifo_cap),
    .if_empty_n(img_empty_n),
    .if_read(MultiPixStream2AXIvideo_U0_img_read)
);

design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S width_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Bytes2MultiPixStream_U0_width_c_din),
    .if_full_n(width_c_full_n),
    .if_write(Bytes2MultiPixStream_U0_width_c_write),
    .if_dout(width_c_dout),
    .if_num_data_valid(width_c_num_data_valid),
    .if_fifo_cap(width_c_fifo_cap),
    .if_empty_n(width_c_empty_n),
    .if_read(MultiPixStream2AXIvideo_U0_WidthOut_read)
);

design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S height_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Bytes2MultiPixStream_U0_height_c_din),
    .if_full_n(height_c_full_n),
    .if_write(Bytes2MultiPixStream_U0_height_c_write),
    .if_dout(height_c_dout),
    .if_num_data_valid(height_c_num_data_valid),
    .if_fifo_cap(height_c_fifo_cap),
    .if_empty_n(height_c_empty_n),
    .if_read(MultiPixStream2AXIvideo_U0_Height_read)
);

design_1_v_frmbuf_rd_0_0_start_for_Bytes2MultiPixStream_U0 start_for_Bytes2MultiPixStream_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Bytes2MultiPixStream_U0_din),
    .if_full_n(start_for_Bytes2MultiPixStream_U0_full_n),
    .if_write(entry_proc_U0_start_write),
    .if_dout(start_for_Bytes2MultiPixStream_U0_dout),
    .if_empty_n(start_for_Bytes2MultiPixStream_U0_empty_n),
    .if_read(Bytes2MultiPixStream_U0_ap_ready)
);

design_1_v_frmbuf_rd_0_0_start_for_MultiPixStream2AXIvideo_U0 start_for_MultiPixStream2AXIvideo_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_MultiPixStream2AXIvideo_U0_din),
    .if_full_n(start_for_MultiPixStream2AXIvideo_U0_full_n),
    .if_write(entry_proc_U0_start_write),
    .if_dout(start_for_MultiPixStream2AXIvideo_U0_dout),
    .if_empty_n(start_for_MultiPixStream2AXIvideo_U0_empty_n),
    .if_read(MultiPixStream2AXIvideo_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_AXIMMvideo2Bytes_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_AXIMMvideo2Bytes_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_AXIMMvideo2Bytes_U0_ap_ready <= ap_sync_AXIMMvideo2Bytes_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_entry_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_entry_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_entry_proc_U0_ap_ready <= ap_sync_entry_proc_U0_ap_ready;
        end
    end
end

assign AXIMMvideo2Bytes_U0_ap_continue = 1'b1;

assign AXIMMvideo2Bytes_U0_ap_start = ((ap_sync_reg_AXIMMvideo2Bytes_U0_ap_ready ^ 1'b1) & ap_start);

assign Bytes2MultiPixStream_U0_ap_continue = 1'b1;

assign Bytes2MultiPixStream_U0_ap_start = start_for_Bytes2MultiPixStream_U0_empty_n;

assign MultiPixStream2AXIvideo_U0_ap_continue = ap_continue;

assign MultiPixStream2AXIvideo_U0_ap_start = start_for_MultiPixStream2AXIvideo_U0_empty_n;

assign ap_done = MultiPixStream2AXIvideo_U0_ap_done;

assign ap_idle = (entry_proc_U0_ap_idle & MultiPixStream2AXIvideo_U0_ap_idle & Bytes2MultiPixStream_U0_ap_idle & AXIMMvideo2Bytes_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_AXIMMvideo2Bytes_U0_ap_ready = (ap_sync_reg_AXIMMvideo2Bytes_U0_ap_ready | AXIMMvideo2Bytes_U0_ap_ready);

assign ap_sync_entry_proc_U0_ap_ready = (entry_proc_U0_ap_ready | ap_sync_reg_entry_proc_U0_ap_ready);

assign ap_sync_ready = (ap_sync_entry_proc_U0_ap_ready & ap_sync_AXIMMvideo2Bytes_U0_ap_ready);

assign entry_proc_U0_ap_continue = 1'b1;

assign entry_proc_U0_ap_start = ((ap_sync_reg_entry_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign entry_proc_U0_start_full_n = (start_for_MultiPixStream2AXIvideo_U0_full_n & start_for_Bytes2MultiPixStream_U0_full_n);

assign m_axi_mm_video_ARADDR = AXIMMvideo2Bytes_U0_m_axi_mm_video_ARADDR;

assign m_axi_mm_video_ARBURST = AXIMMvideo2Bytes_U0_m_axi_mm_video_ARBURST;

assign m_axi_mm_video_ARCACHE = AXIMMvideo2Bytes_U0_m_axi_mm_video_ARCACHE;

assign m_axi_mm_video_ARID = AXIMMvideo2Bytes_U0_m_axi_mm_video_ARID;

assign m_axi_mm_video_ARLEN = AXIMMvideo2Bytes_U0_m_axi_mm_video_ARLEN;

assign m_axi_mm_video_ARLOCK = AXIMMvideo2Bytes_U0_m_axi_mm_video_ARLOCK;

assign m_axi_mm_video_ARPROT = AXIMMvideo2Bytes_U0_m_axi_mm_video_ARPROT;

assign m_axi_mm_video_ARQOS = AXIMMvideo2Bytes_U0_m_axi_mm_video_ARQOS;

assign m_axi_mm_video_ARREGION = AXIMMvideo2Bytes_U0_m_axi_mm_video_ARREGION;

assign m_axi_mm_video_ARSIZE = AXIMMvideo2Bytes_U0_m_axi_mm_video_ARSIZE;

assign m_axi_mm_video_ARUSER = AXIMMvideo2Bytes_U0_m_axi_mm_video_ARUSER;

assign m_axi_mm_video_ARVALID = AXIMMvideo2Bytes_U0_m_axi_mm_video_ARVALID;

assign m_axi_mm_video_AWADDR = 32'd0;

assign m_axi_mm_video_AWBURST = 2'd0;

assign m_axi_mm_video_AWCACHE = 4'd0;

assign m_axi_mm_video_AWID = 1'd0;

assign m_axi_mm_video_AWLEN = 32'd0;

assign m_axi_mm_video_AWLOCK = 2'd0;

assign m_axi_mm_video_AWPROT = 3'd0;

assign m_axi_mm_video_AWQOS = 4'd0;

assign m_axi_mm_video_AWREGION = 4'd0;

assign m_axi_mm_video_AWSIZE = 3'd0;

assign m_axi_mm_video_AWUSER = 1'd0;

assign m_axi_mm_video_AWVALID = 1'b0;

assign m_axi_mm_video_BREADY = 1'b0;

assign m_axi_mm_video_RREADY = AXIMMvideo2Bytes_U0_m_axi_mm_video_RREADY;

assign m_axi_mm_video_WDATA = 64'd0;

assign m_axi_mm_video_WID = 1'd0;

assign m_axi_mm_video_WLAST = 1'b0;

assign m_axi_mm_video_WSTRB = 8'd0;

assign m_axi_mm_video_WUSER = 1'd0;

assign m_axi_mm_video_WVALID = 1'b0;

assign m_axis_video_TDATA = MultiPixStream2AXIvideo_U0_m_axis_video_TDATA;

assign m_axis_video_TDEST = MultiPixStream2AXIvideo_U0_m_axis_video_TDEST;

assign m_axis_video_TID = MultiPixStream2AXIvideo_U0_m_axis_video_TID;

assign m_axis_video_TKEEP = MultiPixStream2AXIvideo_U0_m_axis_video_TKEEP;

assign m_axis_video_TLAST = MultiPixStream2AXIvideo_U0_m_axis_video_TLAST;

assign m_axis_video_TSTRB = MultiPixStream2AXIvideo_U0_m_axis_video_TSTRB;

assign m_axis_video_TUSER = MultiPixStream2AXIvideo_U0_m_axis_video_TUSER;

assign m_axis_video_TVALID = MultiPixStream2AXIvideo_U0_m_axis_video_TVALID;

assign start_for_Bytes2MultiPixStream_U0_din = 1'b1;

assign start_for_MultiPixStream2AXIvideo_U0_din = 1'b1;

endmodule //design_1_v_frmbuf_rd_0_0_FrmbufRdHlsDataFlow