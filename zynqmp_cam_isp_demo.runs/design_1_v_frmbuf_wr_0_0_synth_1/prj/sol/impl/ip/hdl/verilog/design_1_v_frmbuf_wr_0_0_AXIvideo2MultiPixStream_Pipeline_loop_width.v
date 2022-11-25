// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        s_axis_video_TVALID,
        img_din,
        img_num_data_valid,
        img_fifo_cap,
        img_full_n,
        img_write,
        sof_2,
        axi_last_V_2,
        axi_data_V_2,
        div_cast,
        cond,
        icmp_ln235,
        s_axis_video_TDATA,
        s_axis_video_TREADY,
        s_axis_video_TKEEP,
        s_axis_video_TSTRB,
        s_axis_video_TUSER,
        s_axis_video_TLAST,
        s_axis_video_TID,
        s_axis_video_TDEST,
        eol_out,
        eol_out_ap_vld,
        axi_data_V_3_out,
        axi_data_V_3_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   s_axis_video_TVALID;
output  [119:0] img_din;
input  [1:0] img_num_data_valid;
input  [1:0] img_fifo_cap;
input   img_full_n;
output   img_write;
input  [0:0] sof_2;
input  [0:0] axi_last_V_2;
input  [119:0] axi_data_V_2;
input  [10:0] div_cast;
input  [0:0] cond;
input  [0:0] icmp_ln235;
input  [119:0] s_axis_video_TDATA;
output   s_axis_video_TREADY;
input  [14:0] s_axis_video_TKEEP;
input  [14:0] s_axis_video_TSTRB;
input  [0:0] s_axis_video_TUSER;
input  [0:0] s_axis_video_TLAST;
input  [0:0] s_axis_video_TID;
input  [0:0] s_axis_video_TDEST;
output  [0:0] eol_out;
output   eol_out_ap_vld;
output  [119:0] axi_data_V_3_out;
output   axi_data_V_3_out_ap_vld;

reg ap_idle;
reg img_write;
reg s_axis_video_TREADY;
reg eol_out_ap_vld;
reg axi_data_V_3_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] icmp_ln207_fu_257_p2;
wire   [0:0] or_ln210_fu_269_p2;
reg    ap_predicate_op37_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln207_reg_633;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    img_blk_n;
wire    ap_block_pp0_stage0;
reg    s_axis_video_TDATA_blk_n;
reg   [0:0] eol_reg_217;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ap_phi_mux_eol_phi_fu_220_p4;
wire    ap_loop_init;
reg   [0:0] ap_phi_mux_sof_phi_fu_231_p4;
reg   [10:0] j_fu_130;
wire   [10:0] j_2_fu_263_p2;
reg   [10:0] ap_sig_allocacmp_j_1;
reg   [119:0] axi_data_V_fu_134;
reg   [0:0] axi_last_V_fu_138;
reg    ap_block_pp0_stage0_01001;
wire   [9:0] pix_val_V_117_fu_304_p4;
wire   [9:0] pix_val_V_fu_314_p1;
wire   [9:0] pix_val_V_46_fu_325_p4;
wire   [9:0] pix_val_V_47_fu_349_p4;
wire   [9:0] pix_val_V_48_fu_359_p4;
wire   [9:0] pix_val_V_118_fu_369_p3;
wire   [9:0] pix_val_V_121_fu_383_p4;
wire   [9:0] pix_val_V_123_fu_407_p4;
wire   [9:0] pix_val_V_49_fu_417_p4;
wire   [9:0] pix_val_V_124_fu_427_p3;
wire   [9:0] pix_val_V_128_fu_441_p4;
wire   [9:0] pix_val_V_126_fu_451_p3;
wire   [9:0] pix_val_V_129_fu_465_p3;
wire   [9:0] pix_val_V_131_fu_479_p4;
wire   [9:0] pix_val_V_50_fu_489_p4;
wire   [9:0] pix_val_V_132_fu_499_p3;
wire   [9:0] pix_val_V_136_fu_513_p4;
wire   [9:0] pix_val_V_134_fu_523_p3;
wire   [9:0] pix_val_V_137_fu_537_p3;
wire   [9:0] pix_val_V_138_fu_544_p3;
wire   [9:0] pix_val_V_135_fu_530_p3;
wire   [9:0] pix_val_V_133_fu_506_p3;
wire   [9:0] pix_val_V_130_fu_472_p3;
wire   [9:0] pix_val_V_127_fu_458_p3;
wire   [9:0] pix_val_V_125_fu_434_p3;
wire   [9:0] pix_val_V_122_fu_400_p3;
wire   [9:0] pix_val_V_120_fu_393_p3;
wire   [9:0] pix_val_V_119_fu_376_p3;
wire   [9:0] pix_val_V_116_fu_342_p3;
wire   [9:0] pix_val_V_115_fu_335_p3;
wire   [9:0] pix_val_V_114_fu_318_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_423;
reg    ap_condition_426;
reg    ap_condition_430;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

design_1_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((1'b1 == ap_condition_426)) begin
            axi_data_V_fu_134 <= s_axis_video_TDATA;
        end else if ((ap_loop_init == 1'b1)) begin
            axi_data_V_fu_134 <= axi_data_V_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((1'b1 == ap_condition_426)) begin
            axi_last_V_fu_138 <= s_axis_video_TLAST;
        end else if ((ap_loop_init == 1'b1)) begin
            axi_last_V_fu_138 <= axi_last_V_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            eol_reg_217 <= 1'd0;
        end else if ((1'b1 == ap_condition_430)) begin
            eol_reg_217 <= axi_last_V_fu_138;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln207_fu_257_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            j_fu_130 <= j_2_fu_263_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_130 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln207_reg_633 <= icmp_ln207_fu_257_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln207_fu_257_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_eol_phi_fu_220_p4 = 1'd0;
        end else if ((1'b1 == ap_condition_423)) begin
            ap_phi_mux_eol_phi_fu_220_p4 = axi_last_V_fu_138;
        end else begin
            ap_phi_mux_eol_phi_fu_220_p4 = eol_reg_217;
        end
    end else begin
        ap_phi_mux_eol_phi_fu_220_p4 = eol_reg_217;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_sof_phi_fu_231_p4 = sof_2;
        end else if ((1'b1 == ap_condition_423)) begin
            ap_phi_mux_sof_phi_fu_231_p4 = 1'd0;
        end else begin
            ap_phi_mux_sof_phi_fu_231_p4 = sof_2;
        end
    end else begin
        ap_phi_mux_sof_phi_fu_231_p4 = sof_2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_130;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln207_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        axi_data_V_3_out_ap_vld = 1'b1;
    end else begin
        axi_data_V_3_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln207_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        eol_out_ap_vld = 1'b1;
    end else begin
        eol_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln207_reg_633 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        img_blk_n = img_full_n;
    end else begin
        img_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln207_reg_633 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        img_write = 1'b1;
    end else begin
        img_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op37_read_state1 == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_axis_video_TDATA_blk_n = s_axis_video_TVALID;
    end else begin
        s_axis_video_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op37_read_state1 == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_axis_video_TREADY = 1'b1;
    end else begin
        s_axis_video_TREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln207_reg_633 == 1'd0) & (img_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_predicate_op37_read_state1 == 1'b1) & (s_axis_video_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln207_reg_633 == 1'd0) & (img_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_predicate_op37_read_state1 == 1'b1) & (s_axis_video_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln207_reg_633 == 1'd0) & (img_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_predicate_op37_read_state1 == 1'b1) & (s_axis_video_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_predicate_op37_read_state1 == 1'b1) & (s_axis_video_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln207_reg_633 == 1'd0) & (img_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_423 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln207_reg_633 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_426 = ((or_ln210_fu_269_p2 == 1'd0) & (icmp_ln207_fu_257_p2 == 1'd0) & (ap_start_int == 1'b1));
end

always @ (*) begin
    ap_condition_430 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln207_reg_633 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

always @ (*) begin
    ap_predicate_op37_read_state1 = ((or_ln210_fu_269_p2 == 1'd0) & (icmp_ln207_fu_257_p2 == 1'd0));
end

assign axi_data_V_3_out = axi_data_V_fu_134;

assign eol_out = eol_reg_217;

assign icmp_ln207_fu_257_p2 = ((ap_sig_allocacmp_j_1 == div_cast) ? 1'b1 : 1'b0);

assign img_din = {{{{{{{{{{{{pix_val_V_138_fu_544_p3}, {pix_val_V_135_fu_530_p3}}, {pix_val_V_133_fu_506_p3}}, {pix_val_V_130_fu_472_p3}}, {pix_val_V_127_fu_458_p3}}, {pix_val_V_125_fu_434_p3}}, {pix_val_V_122_fu_400_p3}}, {pix_val_V_120_fu_393_p3}}, {pix_val_V_119_fu_376_p3}}, {pix_val_V_116_fu_342_p3}}, {pix_val_V_115_fu_335_p3}}, {pix_val_V_114_fu_318_p3}};

assign j_2_fu_263_p2 = (ap_sig_allocacmp_j_1 + 11'd1);

assign or_ln210_fu_269_p2 = (ap_phi_mux_sof_phi_fu_231_p4 | ap_phi_mux_eol_phi_fu_220_p4);

assign pix_val_V_114_fu_318_p3 = ((cond[0:0] == 1'b1) ? pix_val_V_117_fu_304_p4 : pix_val_V_fu_314_p1);

assign pix_val_V_115_fu_335_p3 = ((cond[0:0] == 1'b1) ? pix_val_V_fu_314_p1 : pix_val_V_46_fu_325_p4);

assign pix_val_V_116_fu_342_p3 = ((cond[0:0] == 1'b1) ? pix_val_V_46_fu_325_p4 : pix_val_V_117_fu_304_p4);

assign pix_val_V_117_fu_304_p4 = {{axi_data_V_fu_134[29:20]}};

assign pix_val_V_118_fu_369_p3 = ((cond[0:0] == 1'b1) ? pix_val_V_47_fu_349_p4 : pix_val_V_117_fu_304_p4);

assign pix_val_V_119_fu_376_p3 = ((icmp_ln235[0:0] == 1'b1) ? pix_val_V_48_fu_359_p4 : pix_val_V_118_fu_369_p3);

assign pix_val_V_120_fu_393_p3 = ((icmp_ln235[0:0] == 1'b1) ? pix_val_V_121_fu_383_p4 : pix_val_V_48_fu_359_p4);

assign pix_val_V_121_fu_383_p4 = {{axi_data_V_fu_134[49:40]}};

assign pix_val_V_122_fu_400_p3 = ((icmp_ln235[0:0] == 1'b1) ? pix_val_V_47_fu_349_p4 : pix_val_V_121_fu_383_p4);

assign pix_val_V_123_fu_407_p4 = {{axi_data_V_fu_134[89:80]}};

assign pix_val_V_124_fu_427_p3 = ((cond[0:0] == 1'b1) ? pix_val_V_123_fu_407_p4 : pix_val_V_121_fu_383_p4);

assign pix_val_V_125_fu_434_p3 = ((icmp_ln235[0:0] == 1'b1) ? pix_val_V_49_fu_417_p4 : pix_val_V_124_fu_427_p3);

assign pix_val_V_126_fu_451_p3 = ((cond[0:0] == 1'b1) ? pix_val_V_49_fu_417_p4 : pix_val_V_47_fu_349_p4);

assign pix_val_V_127_fu_458_p3 = ((icmp_ln235[0:0] == 1'b1) ? pix_val_V_128_fu_441_p4 : pix_val_V_126_fu_451_p3);

assign pix_val_V_128_fu_441_p4 = {{axi_data_V_fu_134[79:70]}};

assign pix_val_V_129_fu_465_p3 = ((cond[0:0] == 1'b1) ? pix_val_V_128_fu_441_p4 : pix_val_V_49_fu_417_p4);

assign pix_val_V_130_fu_472_p3 = ((icmp_ln235[0:0] == 1'b1) ? pix_val_V_123_fu_407_p4 : pix_val_V_129_fu_465_p3);

assign pix_val_V_131_fu_479_p4 = {{axi_data_V_fu_134[119:110]}};

assign pix_val_V_132_fu_499_p3 = ((cond[0:0] == 1'b1) ? pix_val_V_131_fu_479_p4 : pix_val_V_49_fu_417_p4);

assign pix_val_V_133_fu_506_p3 = ((icmp_ln235[0:0] == 1'b1) ? pix_val_V_50_fu_489_p4 : pix_val_V_132_fu_499_p3);

assign pix_val_V_134_fu_523_p3 = ((cond[0:0] == 1'b1) ? pix_val_V_50_fu_489_p4 : pix_val_V_128_fu_441_p4);

assign pix_val_V_135_fu_530_p3 = ((icmp_ln235[0:0] == 1'b1) ? pix_val_V_136_fu_513_p4 : pix_val_V_134_fu_523_p3);

assign pix_val_V_136_fu_513_p4 = {{axi_data_V_fu_134[109:100]}};

assign pix_val_V_137_fu_537_p3 = ((cond[0:0] == 1'b1) ? pix_val_V_136_fu_513_p4 : pix_val_V_123_fu_407_p4);

assign pix_val_V_138_fu_544_p3 = ((icmp_ln235[0:0] == 1'b1) ? pix_val_V_131_fu_479_p4 : pix_val_V_137_fu_537_p3);

assign pix_val_V_46_fu_325_p4 = {{axi_data_V_fu_134[19:10]}};

assign pix_val_V_47_fu_349_p4 = {{axi_data_V_fu_134[59:50]}};

assign pix_val_V_48_fu_359_p4 = {{axi_data_V_fu_134[39:30]}};

assign pix_val_V_49_fu_417_p4 = {{axi_data_V_fu_134[69:60]}};

assign pix_val_V_50_fu_489_p4 = {{axi_data_V_fu_134[99:90]}};

assign pix_val_V_fu_314_p1 = axi_data_V_fu_134[9:0];

endmodule //design_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width