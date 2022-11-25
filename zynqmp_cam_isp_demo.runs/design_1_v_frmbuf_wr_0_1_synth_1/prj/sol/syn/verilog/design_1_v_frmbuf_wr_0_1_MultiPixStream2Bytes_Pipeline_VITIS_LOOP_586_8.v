// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_frmbuf_wr_0_1_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        img_dout,
        img_num_data_valid,
        img_fifo_cap,
        img_empty_n,
        img_read,
        pix_val_V_5,
        pix_val_V_4,
        trunc_ln571_1,
        bytePlanes_plane12_din,
        bytePlanes_plane12_num_data_valid,
        bytePlanes_plane12_fifo_cap,
        bytePlanes_plane12_full_n,
        bytePlanes_plane12_write,
        bytePlanes_plane01_din,
        bytePlanes_plane01_num_data_valid,
        bytePlanes_plane01_fifo_cap,
        bytePlanes_plane01_full_n,
        bytePlanes_plane01_write,
        brmerge153,
        icmp_ln576,
        cmp212_6,
        cmp212_5,
        cmp212_4,
        cmp212_3,
        cmp212_2,
        cmp212_1,
        sub209_cast107,
        cmp212,
        pix_val_V_11_out,
        pix_val_V_11_out_ap_vld,
        pix_val_V_10_out,
        pix_val_V_10_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [23:0] img_dout;
input  [1:0] img_num_data_valid;
input  [1:0] img_fifo_cap;
input   img_empty_n;
output   img_read;
input  [7:0] pix_val_V_5;
input  [7:0] pix_val_V_4;
input  [12:0] trunc_ln571_1;
output  [63:0] bytePlanes_plane12_din;
input  [10:0] bytePlanes_plane12_num_data_valid;
input  [10:0] bytePlanes_plane12_fifo_cap;
input   bytePlanes_plane12_full_n;
output   bytePlanes_plane12_write;
output  [63:0] bytePlanes_plane01_din;
input  [10:0] bytePlanes_plane01_num_data_valid;
input  [10:0] bytePlanes_plane01_fifo_cap;
input   bytePlanes_plane01_full_n;
output   bytePlanes_plane01_write;
input  [0:0] brmerge153;
input  [0:0] icmp_ln576;
input  [0:0] cmp212_6;
input  [0:0] cmp212_5;
input  [0:0] cmp212_4;
input  [0:0] cmp212_3;
input  [0:0] cmp212_2;
input  [0:0] cmp212_1;
input  [12:0] sub209_cast107;
input  [0:0] cmp212;
output  [7:0] pix_val_V_11_out;
output   pix_val_V_11_out_ap_vld;
output  [7:0] pix_val_V_10_out;
output   pix_val_V_10_out_ap_vld;

reg ap_idle;
reg img_read;
reg bytePlanes_plane12_write;
reg bytePlanes_plane01_write;
reg pix_val_V_11_out_ap_vld;
reg pix_val_V_10_out_ap_vld;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
reg   [0:0] icmp_ln586_reg_642;
reg   [0:0] or_ln590_reg_657;
reg    ap_predicate_op53_read_state2;
reg    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_pp0_stage1_subdone;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
reg   [0:0] or_ln590_6_reg_706;
reg    ap_predicate_op102_read_state8;
reg    ap_block_state8_pp0_stage7_iter0;
reg    ap_block_pp0_stage7_subdone;
reg    bytePlanes_plane12_blk_n;
wire    ap_block_pp0_stage0;
reg    bytePlanes_plane01_blk_n;
reg    img_blk_n;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
reg   [0:0] or_ln590_1_reg_676;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg   [0:0] or_ln590_2_reg_685;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
reg   [0:0] or_ln590_3_reg_694;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
reg   [0:0] or_ln590_4_reg_698;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
reg   [0:0] or_ln590_5_reg_702;
wire    ap_block_pp0_stage7;
reg   [0:0] or_ln590_7_reg_710;
reg   [7:0] in_pix_UV_V_reg_200;
reg   [7:0] in_pix_Y_V_reg_210;
reg   [7:0] in_pix_UV_V_1_reg_220;
reg   [7:0] in_pix_Y_V_1_reg_231;
reg   [7:0] in_pix_UV_V_2_reg_242;
reg   [7:0] in_pix_Y_V_2_reg_253;
reg   [7:0] in_pix_UV_V_3_reg_264;
reg   [7:0] in_pix_Y_V_3_reg_275;
reg   [7:0] in_pix_UV_V_4_reg_286;
reg   [7:0] in_pix_Y_V_4_reg_297;
reg   [7:0] in_pix_UV_V_5_reg_308;
reg   [7:0] in_pix_Y_V_5_reg_319;
reg    ap_block_pp0_stage1_11001;
reg    ap_predicate_op69_read_state4;
reg    ap_block_state4_pp0_stage3_iter0;
reg    ap_block_pp0_stage3_11001;
reg    ap_predicate_op88_read_state6;
reg    ap_block_state6_pp0_stage5_iter0;
reg    ap_block_pp0_stage5_11001;
reg    ap_block_pp0_stage7_11001;
reg    ap_predicate_op61_read_state3;
reg    ap_block_state3_pp0_stage2_iter0;
reg    ap_block_pp0_stage2_11001;
reg    ap_predicate_op81_read_state5;
reg    ap_block_state5_pp0_stage4_iter0;
reg    ap_block_pp0_stage4_11001;
reg    ap_predicate_op95_read_state7;
reg    ap_block_state7_pp0_stage6_iter0;
reg    ap_block_pp0_stage6_11001;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_predicate_op109_read_state9;
reg    ap_block_state9_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln586_fu_418_p2;
wire   [0:0] cmp210_fu_434_p2;
reg   [0:0] cmp210_reg_646;
wire   [0:0] or_ln590_fu_440_p2;
wire   [7:0] pix_val_V_99_fu_457_p1;
wire   [0:0] or_ln590_1_fu_461_p2;
wire   [7:0] pix_val_V_102_fu_465_p1;
wire   [0:0] or_ln590_2_fu_469_p2;
wire   [7:0] pix_val_V_105_fu_473_p1;
wire   [0:0] or_ln590_3_fu_477_p2;
wire   [0:0] or_ln590_4_fu_481_p2;
wire   [0:0] or_ln590_5_fu_485_p2;
wire   [0:0] or_ln590_6_fu_489_p2;
wire   [0:0] or_ln590_7_fu_493_p2;
wire   [7:0] pix_val_V_108_fu_497_p1;
wire   [7:0] pix_val_V_112_fu_501_p1;
wire   [7:0] pix_val_V_116_fu_505_p1;
wire   [7:0] pix_val_V_120_fu_509_p1;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
reg   [7:0] ap_phi_reg_pp0_iter0_in_pix_UV_V_reg_200;
reg   [7:0] ap_phi_reg_pp0_iter0_in_pix_Y_V_reg_210;
reg   [7:0] ap_phi_reg_pp0_iter0_in_pix_UV_V_1_reg_220;
reg   [7:0] ap_phi_reg_pp0_iter0_in_pix_Y_V_1_reg_231;
reg   [7:0] ap_phi_reg_pp0_iter0_in_pix_UV_V_2_reg_242;
reg   [7:0] ap_phi_reg_pp0_iter0_in_pix_Y_V_2_reg_253;
reg   [7:0] ap_phi_reg_pp0_iter0_in_pix_UV_V_3_reg_264;
reg   [7:0] ap_phi_reg_pp0_iter0_in_pix_Y_V_3_reg_275;
reg   [7:0] ap_phi_reg_pp0_iter0_in_pix_UV_V_4_reg_286;
reg   [7:0] ap_phi_reg_pp0_iter0_in_pix_Y_V_4_reg_297;
reg   [7:0] ap_phi_reg_pp0_iter0_in_pix_UV_V_5_reg_308;
reg   [7:0] ap_phi_reg_pp0_iter0_in_pix_Y_V_5_reg_319;
wire   [7:0] ap_phi_reg_pp0_iter0_in_pix_UV_V_6_reg_330;
reg   [7:0] ap_phi_reg_pp0_iter1_in_pix_UV_V_6_reg_330;
wire   [7:0] ap_phi_reg_pp0_iter0_in_pix_Y_V_6_reg_340;
reg   [7:0] ap_phi_reg_pp0_iter1_in_pix_Y_V_6_reg_340;
reg   [7:0] ap_phi_mux_in_pix_UV_V_7_phi_fu_353_p4;
wire   [7:0] ap_phi_reg_pp0_iter1_in_pix_UV_V_7_reg_350;
reg   [7:0] ap_phi_mux_in_pix_Y_V_7_phi_fu_363_p4;
wire   [7:0] pix_val_V_124_fu_513_p1;
wire   [7:0] ap_phi_reg_pp0_iter1_in_pix_Y_V_7_reg_360;
reg   [12:0] x_2_fu_90;
wire   [12:0] x_5_fu_424_p2;
wire    ap_loop_init;
reg   [12:0] ap_sig_allocacmp_x;
reg   [7:0] pix_val_V_10_fu_94;
reg   [7:0] pix_val_V_11_fu_98;
reg    ap_block_pp0_stage0_01001;
wire   [13:0] zext_ln586_fu_430_p1;
wire  signed [13:0] sub209_cast107_cast_fu_396_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_block_pp0_stage2_subdone;
reg    ap_block_pp0_stage3_subdone;
reg    ap_block_pp0_stage4_subdone;
reg    ap_block_pp0_stage5_subdone;
reg    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_695;
reg    ap_condition_699;
reg    ap_condition_703;
reg    ap_condition_707;
reg    ap_condition_711;
reg    ap_condition_716;
reg    ap_condition_288;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

design_1_v_frmbuf_wr_0_1_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_695)) begin
        if ((or_ln590_1_reg_676 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_in_pix_UV_V_1_reg_220 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_reg_200;
        end else if ((or_ln590_1_reg_676 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_in_pix_UV_V_1_reg_220 <= {{img_dout[15:8]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_699)) begin
        if ((or_ln590_2_reg_685 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_in_pix_UV_V_2_reg_242 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_1_reg_220;
        end else if ((or_ln590_2_reg_685 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_in_pix_UV_V_2_reg_242 <= {{img_dout[15:8]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_703)) begin
        if ((or_ln590_3_reg_694 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_in_pix_UV_V_3_reg_264 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_2_reg_242;
        end else if ((or_ln590_3_reg_694 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_in_pix_UV_V_3_reg_264 <= {{img_dout[15:8]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_707)) begin
        if ((or_ln590_4_reg_698 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_in_pix_UV_V_4_reg_286 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_3_reg_264;
        end else if ((or_ln590_4_reg_698 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_in_pix_UV_V_4_reg_286 <= {{img_dout[15:8]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_711)) begin
        if ((or_ln590_5_reg_702 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_in_pix_UV_V_5_reg_308 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_4_reg_286;
        end else if ((or_ln590_5_reg_702 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_in_pix_UV_V_5_reg_308 <= {{img_dout[15:8]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_716)) begin
        if ((or_ln590_reg_657 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_in_pix_UV_V_reg_200 <= pix_val_V_11_fu_98;
        end else if ((or_ln590_reg_657 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_in_pix_UV_V_reg_200 <= {{img_dout[15:8]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_695)) begin
        if ((or_ln590_1_reg_676 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_in_pix_Y_V_1_reg_231 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_reg_210;
        end else if ((or_ln590_1_reg_676 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_in_pix_Y_V_1_reg_231 <= pix_val_V_102_fu_465_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_699)) begin
        if ((or_ln590_2_reg_685 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_in_pix_Y_V_2_reg_253 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_1_reg_231;
        end else if ((or_ln590_2_reg_685 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_in_pix_Y_V_2_reg_253 <= pix_val_V_105_fu_473_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_703)) begin
        if ((or_ln590_3_reg_694 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_in_pix_Y_V_3_reg_275 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_2_reg_253;
        end else if ((or_ln590_3_reg_694 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_in_pix_Y_V_3_reg_275 <= pix_val_V_108_fu_497_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_707)) begin
        if ((or_ln590_4_reg_698 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_in_pix_Y_V_4_reg_297 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_3_reg_275;
        end else if ((or_ln590_4_reg_698 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_in_pix_Y_V_4_reg_297 <= pix_val_V_112_fu_501_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_711)) begin
        if ((or_ln590_5_reg_702 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_in_pix_Y_V_5_reg_319 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_4_reg_297;
        end else if ((or_ln590_5_reg_702 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_in_pix_Y_V_5_reg_319 <= pix_val_V_116_fu_505_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_716)) begin
        if ((or_ln590_reg_657 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_in_pix_Y_V_reg_210 <= pix_val_V_10_fu_94;
        end else if ((or_ln590_reg_657 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_in_pix_Y_V_reg_210 <= pix_val_V_99_fu_457_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_288)) begin
        if (((or_ln590_6_reg_706 == 1'd0) & (icmp_ln586_reg_642 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_in_pix_UV_V_6_reg_330 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_5_reg_308;
        end else if (((or_ln590_6_reg_706 == 1'd1) & (icmp_ln586_reg_642 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_in_pix_UV_V_6_reg_330 <= {{img_dout[15:8]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_in_pix_UV_V_6_reg_330 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_6_reg_330;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_288)) begin
        if (((or_ln590_6_reg_706 == 1'd0) & (icmp_ln586_reg_642 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_in_pix_Y_V_6_reg_340 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_5_reg_319;
        end else if (((or_ln590_6_reg_706 == 1'd1) & (icmp_ln586_reg_642 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_in_pix_Y_V_6_reg_340 <= pix_val_V_120_fu_509_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_in_pix_Y_V_6_reg_340 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_6_reg_340;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            pix_val_V_10_fu_94 <= pix_val_V_4;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            pix_val_V_10_fu_94 <= ap_phi_mux_in_pix_Y_V_7_phi_fu_363_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            pix_val_V_11_fu_98 <= pix_val_V_5;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            pix_val_V_11_fu_98 <= ap_phi_mux_in_pix_UV_V_7_phi_fu_353_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln586_fu_418_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            x_2_fu_90 <= x_5_fu_424_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            x_2_fu_90 <= 13'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln586_fu_418_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cmp210_reg_646 <= cmp210_fu_434_p2;
        or_ln590_reg_657 <= or_ln590_fu_440_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln586_reg_642 <= icmp_ln586_fu_418_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        in_pix_UV_V_1_reg_220 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_1_reg_220;
        in_pix_Y_V_1_reg_231 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_1_reg_231;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        in_pix_UV_V_2_reg_242 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_2_reg_242;
        in_pix_Y_V_2_reg_253 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_2_reg_253;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        in_pix_UV_V_3_reg_264 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_3_reg_264;
        in_pix_Y_V_3_reg_275 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_3_reg_275;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        in_pix_UV_V_4_reg_286 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_4_reg_286;
        in_pix_Y_V_4_reg_297 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_4_reg_297;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        in_pix_UV_V_5_reg_308 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_5_reg_308;
        in_pix_Y_V_5_reg_319 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_5_reg_319;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        in_pix_UV_V_reg_200 <= ap_phi_reg_pp0_iter0_in_pix_UV_V_reg_200;
        in_pix_Y_V_reg_210 <= ap_phi_reg_pp0_iter0_in_pix_Y_V_reg_210;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln586_reg_642 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        or_ln590_1_reg_676 <= or_ln590_1_fu_461_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln586_reg_642 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        or_ln590_2_reg_685 <= or_ln590_2_fu_469_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln586_reg_642 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        or_ln590_3_reg_694 <= or_ln590_3_fu_477_p2;
        or_ln590_4_reg_698 <= or_ln590_4_fu_481_p2;
        or_ln590_5_reg_702 <= or_ln590_5_fu_485_p2;
        or_ln590_6_reg_706 <= or_ln590_6_fu_489_p2;
        or_ln590_7_reg_710 <= or_ln590_7_fu_493_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (icmp_ln586_reg_642 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln586_reg_642 == 1'd0)) begin
        if ((or_ln590_7_reg_710 == 1'd0)) begin
            ap_phi_mux_in_pix_UV_V_7_phi_fu_353_p4 = ap_phi_reg_pp0_iter1_in_pix_UV_V_6_reg_330;
        end else if ((or_ln590_7_reg_710 == 1'd1)) begin
            ap_phi_mux_in_pix_UV_V_7_phi_fu_353_p4 = {{img_dout[15:8]}};
        end else begin
            ap_phi_mux_in_pix_UV_V_7_phi_fu_353_p4 = ap_phi_reg_pp0_iter1_in_pix_UV_V_7_reg_350;
        end
    end else begin
        ap_phi_mux_in_pix_UV_V_7_phi_fu_353_p4 = ap_phi_reg_pp0_iter1_in_pix_UV_V_7_reg_350;
    end
end

always @ (*) begin
    if ((icmp_ln586_reg_642 == 1'd0)) begin
        if ((or_ln590_7_reg_710 == 1'd0)) begin
            ap_phi_mux_in_pix_Y_V_7_phi_fu_363_p4 = ap_phi_reg_pp0_iter1_in_pix_Y_V_6_reg_340;
        end else if ((or_ln590_7_reg_710 == 1'd1)) begin
            ap_phi_mux_in_pix_Y_V_7_phi_fu_363_p4 = pix_val_V_124_fu_513_p1;
        end else begin
            ap_phi_mux_in_pix_Y_V_7_phi_fu_363_p4 = ap_phi_reg_pp0_iter1_in_pix_Y_V_7_reg_360;
        end
    end else begin
        ap_phi_mux_in_pix_Y_V_7_phi_fu_363_p4 = ap_phi_reg_pp0_iter1_in_pix_Y_V_7_reg_360;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_x = 13'd0;
    end else begin
        ap_sig_allocacmp_x = x_2_fu_90;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bytePlanes_plane01_blk_n = bytePlanes_plane01_full_n;
    end else begin
        bytePlanes_plane01_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bytePlanes_plane01_write = 1'b1;
    end else begin
        bytePlanes_plane01_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (brmerge153 == 1'd1))) begin
        bytePlanes_plane12_blk_n = bytePlanes_plane12_full_n;
    end else begin
        bytePlanes_plane12_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (brmerge153 == 1'd1))) begin
        bytePlanes_plane12_write = 1'b1;
    end else begin
        bytePlanes_plane12_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op102_read_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (icmp_ln586_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (or_ln590_5_reg_702 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (icmp_ln586_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln590_4_reg_698 == 1'd1)) | ((1'b0 == ap_block_pp0_stage4) & (icmp_ln586_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln590_3_reg_694 == 1'd1)) | ((1'b0 == ap_block_pp0_stage3) & (icmp_ln586_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln590_2_reg_685 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2) & (icmp_ln586_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln590_1_reg_676 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_predicate_op53_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln586_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln590_7_reg_710 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        img_blk_n = img_empty_n;
    end else begin
        img_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op102_read_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op109_read_state9 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_predicate_op95_read_state7 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_predicate_op81_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_predicate_op61_read_state3 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op88_read_state6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op69_read_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_op53_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        img_read = 1'b1;
    end else begin
        img_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln586_reg_642 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pix_val_V_10_out_ap_vld = 1'b1;
    end else begin
        pix_val_V_10_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln586_reg_642 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pix_val_V_11_out_ap_vld = 1'b1;
    end else begin
        pix_val_V_11_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((bytePlanes_plane01_full_n == 1'b0) | ((img_empty_n == 1'b0) & (ap_predicate_op109_read_state9 == 1'b1)) | ((bytePlanes_plane12_full_n == 1'b0) & (brmerge153 == 1'd1))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((bytePlanes_plane01_full_n == 1'b0) | ((img_empty_n == 1'b0) & (ap_predicate_op109_read_state9 == 1'b1)) | ((bytePlanes_plane12_full_n == 1'b0) & (brmerge153 == 1'd1))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((bytePlanes_plane01_full_n == 1'b0) | ((img_empty_n == 1'b0) & (ap_predicate_op109_read_state9 == 1'b1)) | ((bytePlanes_plane12_full_n == 1'b0) & (brmerge153 == 1'd1))));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((ap_predicate_op53_read_state2 == 1'b1) & (img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((ap_predicate_op53_read_state2 == 1'b1) & (img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_11001 = ((img_empty_n == 1'b0) & (ap_predicate_op61_read_state3 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = ((img_empty_n == 1'b0) & (ap_predicate_op61_read_state3 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op69_read_state4 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op69_read_state4 == 1'b1));
end

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage4_11001 = ((img_empty_n == 1'b0) & (ap_predicate_op81_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage4_subdone = ((img_empty_n == 1'b0) & (ap_predicate_op81_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage5_11001 = ((img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op88_read_state6 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage5_subdone = ((img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op88_read_state6 == 1'b1));
end

assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage6_11001 = ((img_empty_n == 1'b0) & (ap_predicate_op95_read_state7 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage6_subdone = ((img_empty_n == 1'b0) & (ap_predicate_op95_read_state7 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage7_11001 = ((ap_predicate_op102_read_state8 == 1'b1) & (img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage7_subdone = ((ap_predicate_op102_read_state8 == 1'b1) & (img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = ((ap_predicate_op53_read_state2 == 1'b1) & (img_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = ((img_empty_n == 1'b0) & (ap_predicate_op61_read_state3 == 1'b1));
end

always @ (*) begin
    ap_block_state4_pp0_stage3_iter0 = ((img_empty_n == 1'b0) & (ap_predicate_op69_read_state4 == 1'b1));
end

always @ (*) begin
    ap_block_state5_pp0_stage4_iter0 = ((img_empty_n == 1'b0) & (ap_predicate_op81_read_state5 == 1'b1));
end

always @ (*) begin
    ap_block_state6_pp0_stage5_iter0 = ((img_empty_n == 1'b0) & (ap_predicate_op88_read_state6 == 1'b1));
end

always @ (*) begin
    ap_block_state7_pp0_stage6_iter0 = ((img_empty_n == 1'b0) & (ap_predicate_op95_read_state7 == 1'b1));
end

always @ (*) begin
    ap_block_state8_pp0_stage7_iter0 = ((ap_predicate_op102_read_state8 == 1'b1) & (img_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state9_pp0_stage0_iter1 = ((bytePlanes_plane01_full_n == 1'b0) | ((img_empty_n == 1'b0) & (ap_predicate_op109_read_state9 == 1'b1)) | ((bytePlanes_plane12_full_n == 1'b0) & (brmerge153 == 1'd1)));
end

always @ (*) begin
    ap_condition_288 = ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7));
end

always @ (*) begin
    ap_condition_695 = ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln586_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end

always @ (*) begin
    ap_condition_699 = ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln586_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end

always @ (*) begin
    ap_condition_703 = ((1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln586_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4));
end

always @ (*) begin
    ap_condition_707 = ((1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln586_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5));
end

always @ (*) begin
    ap_condition_711 = ((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln586_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6));
end

always @ (*) begin
    ap_condition_716 = ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln586_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign ap_phi_reg_pp0_iter0_in_pix_UV_V_6_reg_330 = 'bx;

assign ap_phi_reg_pp0_iter0_in_pix_Y_V_6_reg_340 = 'bx;

assign ap_phi_reg_pp0_iter1_in_pix_UV_V_7_reg_350 = 'bx;

assign ap_phi_reg_pp0_iter1_in_pix_Y_V_7_reg_360 = 'bx;

always @ (*) begin
    ap_predicate_op102_read_state8 = ((or_ln590_6_reg_706 == 1'd1) & (icmp_ln586_reg_642 == 1'd0));
end

always @ (*) begin
    ap_predicate_op109_read_state9 = ((icmp_ln586_reg_642 == 1'd0) & (or_ln590_7_reg_710 == 1'd1));
end

always @ (*) begin
    ap_predicate_op53_read_state2 = ((or_ln590_reg_657 == 1'd1) & (icmp_ln586_reg_642 == 1'd0));
end

always @ (*) begin
    ap_predicate_op61_read_state3 = ((icmp_ln586_reg_642 == 1'd0) & (or_ln590_1_reg_676 == 1'd1));
end

always @ (*) begin
    ap_predicate_op69_read_state4 = ((icmp_ln586_reg_642 == 1'd0) & (or_ln590_2_reg_685 == 1'd1));
end

always @ (*) begin
    ap_predicate_op81_read_state5 = ((icmp_ln586_reg_642 == 1'd0) & (or_ln590_3_reg_694 == 1'd1));
end

always @ (*) begin
    ap_predicate_op88_read_state6 = ((icmp_ln586_reg_642 == 1'd0) & (or_ln590_4_reg_698 == 1'd1));
end

always @ (*) begin
    ap_predicate_op95_read_state7 = ((icmp_ln586_reg_642 == 1'd0) & (or_ln590_5_reg_702 == 1'd1));
end

assign bytePlanes_plane01_din = {{{{{{{{ap_phi_mux_in_pix_Y_V_7_phi_fu_363_p4}, {ap_phi_reg_pp0_iter1_in_pix_Y_V_6_reg_340}}, {in_pix_Y_V_5_reg_319}}, {in_pix_Y_V_4_reg_297}}, {in_pix_Y_V_3_reg_275}}, {in_pix_Y_V_2_reg_253}}, {in_pix_Y_V_1_reg_231}}, {in_pix_Y_V_reg_210}};

assign bytePlanes_plane12_din = {{{{{{{{ap_phi_mux_in_pix_UV_V_7_phi_fu_353_p4}, {ap_phi_reg_pp0_iter1_in_pix_UV_V_6_reg_330}}, {in_pix_UV_V_5_reg_308}}, {in_pix_UV_V_4_reg_286}}, {in_pix_UV_V_3_reg_264}}, {in_pix_UV_V_2_reg_242}}, {in_pix_UV_V_1_reg_220}}, {in_pix_UV_V_reg_200}};

assign cmp210_fu_434_p2 = (($signed(zext_ln586_fu_430_p1) < $signed(sub209_cast107_cast_fu_396_p1)) ? 1'b1 : 1'b0);

assign icmp_ln586_fu_418_p2 = ((ap_sig_allocacmp_x == trunc_ln571_1) ? 1'b1 : 1'b0);

assign or_ln590_1_fu_461_p2 = (cmp212_1 | cmp210_reg_646);

assign or_ln590_2_fu_469_p2 = (cmp212_2 | cmp210_reg_646);

assign or_ln590_3_fu_477_p2 = (cmp212_3 | cmp210_reg_646);

assign or_ln590_4_fu_481_p2 = (cmp212_4 | cmp210_reg_646);

assign or_ln590_5_fu_485_p2 = (cmp212_5 | cmp210_reg_646);

assign or_ln590_6_fu_489_p2 = (cmp212_6 | cmp210_reg_646);

assign or_ln590_7_fu_493_p2 = (icmp_ln576 | cmp210_reg_646);

assign or_ln590_fu_440_p2 = (cmp212 | cmp210_fu_434_p2);

assign pix_val_V_102_fu_465_p1 = img_dout[7:0];

assign pix_val_V_105_fu_473_p1 = img_dout[7:0];

assign pix_val_V_108_fu_497_p1 = img_dout[7:0];

assign pix_val_V_10_out = pix_val_V_10_fu_94;

assign pix_val_V_112_fu_501_p1 = img_dout[7:0];

assign pix_val_V_116_fu_505_p1 = img_dout[7:0];

assign pix_val_V_11_out = pix_val_V_11_fu_98;

assign pix_val_V_120_fu_509_p1 = img_dout[7:0];

assign pix_val_V_124_fu_513_p1 = img_dout[7:0];

assign pix_val_V_99_fu_457_p1 = img_dout[7:0];

assign sub209_cast107_cast_fu_396_p1 = $signed(sub209_cast107);

assign x_5_fu_424_p2 = (ap_sig_allocacmp_x + 13'd1);

assign zext_ln586_fu_430_p1 = ap_sig_allocacmp_x;

endmodule //design_1_v_frmbuf_wr_0_1_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_586_8