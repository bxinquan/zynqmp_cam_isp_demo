// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        img_dout,
        img_num_data_valid,
        img_fifo_cap,
        img_empty_n,
        img_read,
        m_axis_video_TDATA,
        m_axis_video_TVALID,
        m_axis_video_TREADY,
        m_axis_video_TKEEP,
        m_axis_video_TSTRB,
        m_axis_video_TUSER,
        m_axis_video_TLAST,
        m_axis_video_TID,
        m_axis_video_TDEST,
        Height_dout,
        Height_num_data_valid,
        Height_fifo_cap,
        Height_empty_n,
        Height_read,
        WidthOut_dout,
        WidthOut_num_data_valid,
        WidthOut_fifo_cap,
        WidthOut_empty_n,
        WidthOut_read,
        colorFormat_dout,
        colorFormat_num_data_valid,
        colorFormat_fifo_cap,
        colorFormat_empty_n,
        colorFormat_read
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [29:0] img_dout;
input  [1:0] img_num_data_valid;
input  [1:0] img_fifo_cap;
input   img_empty_n;
output   img_read;
output  [31:0] m_axis_video_TDATA;
output   m_axis_video_TVALID;
input   m_axis_video_TREADY;
output  [3:0] m_axis_video_TKEEP;
output  [3:0] m_axis_video_TSTRB;
output  [0:0] m_axis_video_TUSER;
output  [0:0] m_axis_video_TLAST;
output  [0:0] m_axis_video_TID;
output  [0:0] m_axis_video_TDEST;
input  [11:0] Height_dout;
input  [1:0] Height_num_data_valid;
input  [1:0] Height_fifo_cap;
input   Height_empty_n;
output   Height_read;
input  [11:0] WidthOut_dout;
input  [1:0] WidthOut_num_data_valid;
input  [1:0] WidthOut_fifo_cap;
input   WidthOut_empty_n;
output   WidthOut_read;
input  [1:0] colorFormat_dout;
input  [2:0] colorFormat_num_data_valid;
input  [2:0] colorFormat_fifo_cap;
input   colorFormat_empty_n;
output   colorFormat_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg img_read;
reg Height_read;
reg WidthOut_read;
reg colorFormat_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    Height_blk_n;
reg    WidthOut_blk_n;
reg    colorFormat_blk_n;
reg   [11:0] Height_read_reg_283;
reg   [11:0] WidthOut_read_reg_288;
wire   [3:0] sub_ln291_fu_172_p2;
reg   [3:0] sub_ln291_reg_293;
wire   [11:0] grp_reg_unsigned_short_s_fu_189_ap_return;
reg   [11:0] rows_reg_298;
wire    ap_CS_fsm_state3;
wire   [11:0] grp_reg_unsigned_short_s_fu_194_ap_return;
reg   [11:0] cols_reg_303;
wire   [12:0] sub_fu_212_p2;
reg   [12:0] sub_reg_317;
wire   [0:0] cmp35184_fu_218_p2;
reg   [0:0] cmp35184_reg_322;
wire   [11:0] i_2_fu_232_p2;
reg   [11:0] i_2_reg_329;
wire    ap_CS_fsm_state4;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_start;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_done;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_idle;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_ready;
wire   [4:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_2_out;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_2_out_ap_vld;
wire   [4:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_1_out;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_1_out_ap_vld;
wire   [4:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_out;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_out_ap_vld;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_start;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_done;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_idle;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_ready;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_img_read;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TREADY;
wire   [31:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TDATA;
wire    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TVALID;
wire   [3:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TKEEP;
wire   [3:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TSTRB;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TUSER;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TLAST;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TID;
wire   [0:0] grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TDEST;
reg    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_start_reg;
reg    ap_block_state1_ignore_call19;
wire    ap_CS_fsm_state2;
reg    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_start_reg;
wire   [0:0] icmp_ln296_fu_227_p2;
wire    ap_CS_fsm_state5;
reg   [11:0] i_1_fu_86;
reg    ap_block_state5_on_subcall_done;
reg    ap_block_state1;
reg   [0:0] sof_fu_90;
wire   [3:0] tmp_fu_164_p3;
wire   [3:0] zext_ln291_fu_160_p1;
wire   [12:0] zext_ln247_fu_199_p1;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 Height_read_reg_283 = 12'd0;
#0 WidthOut_read_reg_288 = 12'd0;
#0 sub_ln291_reg_293 = 4'd0;
#0 rows_reg_298 = 12'd0;
#0 cols_reg_303 = 12'd0;
#0 sub_reg_317 = 13'd0;
#0 cmp35184_reg_322 = 1'd0;
#0 i_2_reg_329 = 12'd0;
#0 grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_start_reg = 1'b0;
#0 grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_start_reg = 1'b0;
#0 i_1_fu_86 = 12'd0;
#0 sof_fu_90 = 1'd0;
end

design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1 grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_start),
    .ap_done(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_done),
    .ap_idle(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_idle),
    .ap_ready(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_ready),
    .sub_ln291(sub_ln291_reg_293),
    .map_V_2_out(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_2_out),
    .map_V_2_out_ap_vld(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_2_out_ap_vld),
    .map_V_1_out(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_1_out),
    .map_V_1_out_ap_vld(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_1_out_ap_vld),
    .map_V_out(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_out),
    .map_V_out_ap_vld(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_out_ap_vld)
);

design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3 grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_start),
    .ap_done(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_done),
    .ap_idle(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_idle),
    .ap_ready(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_ready),
    .img_dout(img_dout),
    .img_num_data_valid(2'd0),
    .img_fifo_cap(2'd0),
    .img_empty_n(img_empty_n),
    .img_read(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_img_read),
    .m_axis_video_TREADY(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TREADY),
    .sof(sof_fu_90),
    .cols(cols_reg_303),
    .sub(sub_reg_317),
    .map_V_2_reload(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_2_out),
    .map_V_1_reload(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_1_out),
    .map_V_reload(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_map_V_out),
    .m_axis_video_TDATA(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TDATA),
    .m_axis_video_TVALID(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TVALID),
    .m_axis_video_TKEEP(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TKEEP),
    .m_axis_video_TSTRB(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TSTRB),
    .m_axis_video_TUSER(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TUSER),
    .m_axis_video_TLAST(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TLAST),
    .m_axis_video_TID(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TID),
    .m_axis_video_TDEST(grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TDEST)
);

design_1_v_frmbuf_rd_0_0_reg_unsigned_short_s grp_reg_unsigned_short_s_fu_189(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .d(Height_read_reg_283),
    .ap_return(grp_reg_unsigned_short_s_fu_189_ap_return)
);

design_1_v_frmbuf_rd_0_0_reg_unsigned_short_s grp_reg_unsigned_short_s_fu_194(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .d(WidthOut_read_reg_288),
    .ap_return(grp_reg_unsigned_short_s_fu_194_ap_return)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        Height_read_reg_283 <= 12'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state1)) begin
            Height_read_reg_283 <= Height_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        WidthOut_read_reg_288 <= 12'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state1)) begin
            WidthOut_read_reg_288 <= WidthOut_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln296_fu_227_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        cmp35184_reg_322 <= 1'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            cmp35184_reg_322 <= cmp35184_fu_218_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        cols_reg_303 <= 12'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            cols_reg_303 <= grp_reg_unsigned_short_s_fu_194_ap_return;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_start_reg <= 1'b0;
    end else begin
        if ((~((colorFormat_empty_n == 1'b0) | (1'b0 == WidthOut_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_start_reg <= 1'b1;
        end else if ((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_ready == 1'b1)) begin
            grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_start_reg <= 1'b0;
    end else begin
        if (((cmp35184_reg_322 == 1'd0) & (1'b1 == ap_CS_fsm_state4) & (icmp_ln296_fu_227_p2 == 1'd0))) begin
            grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_start_reg <= 1'b1;
        end else if ((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_ready == 1'b1)) begin
            grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        i_1_fu_86 <= 12'd0;
    end else begin
        if ((~((colorFormat_empty_n == 1'b0) | (1'b0 == WidthOut_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            i_1_fu_86 <= 12'd0;
        end else if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
            i_1_fu_86 <= i_2_reg_329;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        i_2_reg_329 <= 12'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            i_2_reg_329 <= i_2_fu_232_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        rows_reg_298 <= 12'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            rows_reg_298 <= grp_reg_unsigned_short_s_fu_189_ap_return;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sof_fu_90 <= 1'd0;
    end else begin
        if ((~((colorFormat_empty_n == 1'b0) | (1'b0 == WidthOut_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            sof_fu_90 <= 1'd1;
        end else if (((cmp35184_reg_322 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
            sof_fu_90 <= 1'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sub_ln291_reg_293 <= 4'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state1)) begin
            sub_ln291_reg_293 <= sub_ln291_fu_172_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sub_reg_317 <= 13'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            sub_reg_317 <= sub_fu_212_p2;
        end
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        Height_blk_n = Height_empty_n;
    end else begin
        Height_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((colorFormat_empty_n == 1'b0) | (1'b0 == WidthOut_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        Height_read = 1'b1;
    end else begin
        Height_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        WidthOut_blk_n = WidthOut_empty_n;
    end else begin
        WidthOut_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((colorFormat_empty_n == 1'b0) | (1'b0 == WidthOut_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        WidthOut_read = 1'b1;
    end else begin
        WidthOut_read = 1'b0;
    end
end

always @ (*) begin
    if (((colorFormat_empty_n == 1'b0) | (1'b0 == WidthOut_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state5_on_subcall_done)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln296_fu_227_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln296_fu_227_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        colorFormat_blk_n = colorFormat_empty_n;
    end else begin
        colorFormat_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((colorFormat_empty_n == 1'b0) | (1'b0 == WidthOut_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        colorFormat_read = 1'b1;
    end else begin
        colorFormat_read = 1'b0;
    end
end

always @ (*) begin
    if (((cmp35184_reg_322 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        img_read = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_img_read;
    end else begin
        img_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((colorFormat_empty_n == 1'b0) | (1'b0 == WidthOut_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln296_fu_227_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1 = ((colorFormat_empty_n == 1'b0) | (1'b0 == WidthOut_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state1_ignore_call19 = ((colorFormat_empty_n == 1'b0) | (1'b0 == WidthOut_empty_n) | (1'b0 == Height_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state5_on_subcall_done = ((cmp35184_reg_322 == 1'd0) & (grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_done == 1'b0));
end

assign cmp35184_fu_218_p2 = ((grp_reg_unsigned_short_s_fu_194_ap_return == 12'd0) ? 1'b1 : 1'b0);

assign grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_start = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_fu_124_ap_start_reg;

assign grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_start = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_ap_start_reg;

assign grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TREADY = (m_axis_video_TREADY & ap_CS_fsm_state5);

assign i_2_fu_232_p2 = (i_1_fu_86 + 12'd1);

assign icmp_ln296_fu_227_p2 = ((i_1_fu_86 == rows_reg_298) ? 1'b1 : 1'b0);

assign m_axis_video_TDATA = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TDATA;

assign m_axis_video_TDEST = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TDEST;

assign m_axis_video_TID = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TID;

assign m_axis_video_TKEEP = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TKEEP;

assign m_axis_video_TLAST = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TLAST;

assign m_axis_video_TSTRB = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TSTRB;

assign m_axis_video_TUSER = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TUSER;

assign m_axis_video_TVALID = grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134_m_axis_video_TVALID;

assign sub_fu_212_p2 = ($signed(zext_ln247_fu_199_p1) + $signed(13'd8191));

assign sub_ln291_fu_172_p2 = (tmp_fu_164_p3 - zext_ln291_fu_160_p1);

assign tmp_fu_164_p3 = {{colorFormat_dout}, {2'd0}};

assign zext_ln247_fu_199_p1 = grp_reg_unsigned_short_s_fu_194_ap_return;

assign zext_ln291_fu_160_p1 = colorFormat_dout;

endmodule //design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo