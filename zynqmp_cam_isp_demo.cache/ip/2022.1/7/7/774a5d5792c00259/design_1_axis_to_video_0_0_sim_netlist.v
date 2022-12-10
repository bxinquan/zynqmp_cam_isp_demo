// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec 10 20:28:12 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axis_to_video_0_0_sim_netlist.v
// Design      : design_1_axis_to_video_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo
   (DOUTBDOUT,
    vid_rstn_0,
    \raddr_reg[6]_0 ,
    underflow,
    wfull,
    s_axis_tready,
    aclk,
    vid_clk,
    DINADIN,
    active_video_w,
    mem_reg_bram_0,
    rd_valid,
    aresetn,
    vid_rstn,
    s_axis_tvalid);
  output [10:0]DOUTBDOUT;
  output vid_rstn_0;
  output \raddr_reg[6]_0 ;
  output underflow;
  output wfull;
  output s_axis_tready;
  input aclk;
  input vid_clk;
  input [10:0]DINADIN;
  input active_video_w;
  input mem_reg_bram_0;
  input rd_valid;
  input aresetn;
  input vid_rstn;
  input s_axis_tvalid;

  wire [10:0]DINADIN;
  wire [10:0]DOUTBDOUT;
  wire aclk;
  wire active_video_w;
  wire aresetn;
  wire mem_reg_bram_0;
  wire [11:0]p_0_in;
  wire [11:0]p_0_in__0;
  wire [11:0]r2w_rptr1;
  wire \r2w_rptr1[11]_i_1_n_0 ;
  wire [11:0]r2w_rptr2;
  wire raddr0_carry__0_n_6;
  wire raddr0_carry__0_n_7;
  wire raddr0_carry_n_0;
  wire raddr0_carry_n_1;
  wire raddr0_carry_n_2;
  wire raddr0_carry_n_3;
  wire raddr0_carry_n_4;
  wire raddr0_carry_n_5;
  wire raddr0_carry_n_6;
  wire raddr0_carry_n_7;
  wire [10:0]raddr_reg;
  wire \raddr_reg[6]_0 ;
  wire [11:11]raddr_reg__0;
  wire rd_flag;
  wire rd_valid;
  wire [10:0]rptr;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire underflow;
  wire vid_clk;
  wire vid_rstn;
  wire vid_rstn_0;
  wire [11:0]w2r_wptr1;
  wire [11:0]w2r_wptr2;
  wire waddr0_carry__0_n_6;
  wire waddr0_carry__0_n_7;
  wire waddr0_carry_n_0;
  wire waddr0_carry_n_1;
  wire waddr0_carry_n_2;
  wire waddr0_carry_n_3;
  wire waddr0_carry_n_4;
  wire waddr0_carry_n_5;
  wire waddr0_carry_n_6;
  wire waddr0_carry_n_7;
  wire [10:0]waddr_reg;
  wire [11:11]waddr_reg__0;
  wire wfull;
  wire [10:0]wptr;
  wire wr_flag;
  wire [7:2]NLW_raddr0_carry__0_CO_UNCONNECTED;
  wire [7:3]NLW_raddr0_carry__0_O_UNCONNECTED;
  wire [7:2]NLW_waddr0_carry__0_CO_UNCONNECTED;
  wire [7:3]NLW_waddr0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    locked_r_i_2
       (.I0(vid_rstn),
        .O(vid_rstn_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[0]_i_1 
       (.I0(raddr_reg[0]),
        .I1(raddr_reg[1]),
        .O(rptr[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[10]_i_1 
       (.I0(raddr_reg[10]),
        .I1(raddr_reg__0),
        .O(rptr[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \r2w_rptr1[11]_i_1 
       (.I0(aresetn),
        .O(\r2w_rptr1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[1]_i_1 
       (.I0(raddr_reg[1]),
        .I1(raddr_reg[2]),
        .O(rptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[2]_i_1 
       (.I0(raddr_reg[2]),
        .I1(raddr_reg[3]),
        .O(rptr[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[3]_i_1 
       (.I0(raddr_reg[3]),
        .I1(raddr_reg[4]),
        .O(rptr[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[4]_i_1 
       (.I0(raddr_reg[4]),
        .I1(raddr_reg[5]),
        .O(rptr[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[5]_i_1 
       (.I0(raddr_reg[5]),
        .I1(raddr_reg[6]),
        .O(rptr[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[6]_i_1 
       (.I0(raddr_reg[6]),
        .I1(raddr_reg[7]),
        .O(rptr[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[7]_i_1 
       (.I0(raddr_reg[7]),
        .I1(raddr_reg[8]),
        .O(rptr[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[8]_i_1 
       (.I0(raddr_reg[8]),
        .I1(raddr_reg[9]),
        .O(rptr[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r2w_rptr1[9]_i_1 
       (.I0(raddr_reg[9]),
        .I1(raddr_reg[10]),
        .O(rptr[9]));
  FDCE \r2w_rptr1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(rptr[0]),
        .Q(r2w_rptr1[0]));
  FDCE \r2w_rptr1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(rptr[10]),
        .Q(r2w_rptr1[10]));
  FDCE \r2w_rptr1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(raddr_reg__0),
        .Q(r2w_rptr1[11]));
  FDCE \r2w_rptr1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(rptr[1]),
        .Q(r2w_rptr1[1]));
  FDCE \r2w_rptr1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(rptr[2]),
        .Q(r2w_rptr1[2]));
  FDCE \r2w_rptr1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(rptr[3]),
        .Q(r2w_rptr1[3]));
  FDCE \r2w_rptr1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(rptr[4]),
        .Q(r2w_rptr1[4]));
  FDCE \r2w_rptr1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(rptr[5]),
        .Q(r2w_rptr1[5]));
  FDCE \r2w_rptr1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(rptr[6]),
        .Q(r2w_rptr1[6]));
  FDCE \r2w_rptr1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(rptr[7]),
        .Q(r2w_rptr1[7]));
  FDCE \r2w_rptr1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(rptr[8]),
        .Q(r2w_rptr1[8]));
  FDCE \r2w_rptr1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(rptr[9]),
        .Q(r2w_rptr1[9]));
  FDCE \r2w_rptr2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(r2w_rptr1[0]),
        .Q(r2w_rptr2[0]));
  FDCE \r2w_rptr2_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(r2w_rptr1[10]),
        .Q(r2w_rptr2[10]));
  FDCE \r2w_rptr2_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(r2w_rptr1[11]),
        .Q(r2w_rptr2[11]));
  FDCE \r2w_rptr2_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(r2w_rptr1[1]),
        .Q(r2w_rptr2[1]));
  FDCE \r2w_rptr2_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(r2w_rptr1[2]),
        .Q(r2w_rptr2[2]));
  FDCE \r2w_rptr2_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(r2w_rptr1[3]),
        .Q(r2w_rptr2[3]));
  FDCE \r2w_rptr2_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(r2w_rptr1[4]),
        .Q(r2w_rptr2[4]));
  FDCE \r2w_rptr2_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(r2w_rptr1[5]),
        .Q(r2w_rptr2[5]));
  FDCE \r2w_rptr2_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(r2w_rptr1[6]),
        .Q(r2w_rptr2[6]));
  FDCE \r2w_rptr2_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(r2w_rptr1[7]),
        .Q(r2w_rptr2[7]));
  FDCE \r2w_rptr2_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(r2w_rptr1[8]),
        .Q(r2w_rptr2[8]));
  FDCE \r2w_rptr2_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(r2w_rptr1[9]),
        .Q(r2w_rptr2[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raddr0_carry
       (.CI(raddr_reg[0]),
        .CI_TOP(1'b0),
        .CO({raddr0_carry_n_0,raddr0_carry_n_1,raddr0_carry_n_2,raddr0_carry_n_3,raddr0_carry_n_4,raddr0_carry_n_5,raddr0_carry_n_6,raddr0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:1]),
        .S(raddr_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 raddr0_carry__0
       (.CI(raddr0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_raddr0_carry__0_CO_UNCONNECTED[7:2],raddr0_carry__0_n_6,raddr0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_raddr0_carry__0_O_UNCONNECTED[7:3],p_0_in[11:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,raddr_reg__0,raddr_reg[10:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \raddr[0]_i_1 
       (.I0(raddr_reg[0]),
        .O(p_0_in[0]));
  FDCE \raddr_reg[0] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[0]),
        .Q(raddr_reg[0]));
  FDCE \raddr_reg[10] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[10]),
        .Q(raddr_reg[10]));
  FDCE \raddr_reg[11] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[11]),
        .Q(raddr_reg__0));
  FDCE \raddr_reg[1] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[1]),
        .Q(raddr_reg[1]));
  FDCE \raddr_reg[2] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[2]),
        .Q(raddr_reg[2]));
  FDCE \raddr_reg[3] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[3]),
        .Q(raddr_reg[3]));
  FDCE \raddr_reg[4] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[4]),
        .Q(raddr_reg[4]));
  FDCE \raddr_reg[5] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[5]),
        .Q(raddr_reg[5]));
  FDCE \raddr_reg[6] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[6]),
        .Q(raddr_reg[6]));
  FDCE \raddr_reg[7] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[7]),
        .Q(raddr_reg[7]));
  FDCE \raddr_reg[8] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[8]),
        .Q(raddr_reg[8]));
  FDCE \raddr_reg[9] 
       (.C(vid_clk),
        .CE(rd_flag),
        .CLR(vid_rstn_0),
        .D(p_0_in[9]),
        .Q(raddr_reg[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram ram
       (.DINADIN(DINADIN),
        .DOUTBDOUT(DOUTBDOUT),
        .Q(w2r_wptr2),
        .S(raddr_reg__0),
        .aclk(aclk),
        .active_video_w(active_video_w),
        .mem_reg_bram_0_0(mem_reg_bram_0),
        .raddr_reg(raddr_reg),
        .raddr_reg_6_sp_1(\raddr_reg[6]_0 ),
        .rd_flag(rd_flag),
        .rd_valid(rd_valid),
        .s_axis_tready_INST_0_i_4_0(r2w_rptr2),
        .s_axis_tready_INST_0_i_4_1(waddr_reg__0),
        .s_axis_tvalid(s_axis_tvalid),
        .vid_clk(vid_clk),
        .waddr_reg(waddr_reg),
        .wfull(wfull),
        .wr_flag(wr_flag));
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_tready_INST_0
       (.I0(wfull),
        .O(s_axis_tready));
  LUT1 #(
    .INIT(2'h1)) 
    underflow_INST_0
       (.I0(\raddr_reg[6]_0 ),
        .O(underflow));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[0]_i_1 
       (.I0(waddr_reg[1]),
        .I1(waddr_reg[0]),
        .O(wptr[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[10]_i_1 
       (.I0(waddr_reg__0),
        .I1(waddr_reg[10]),
        .O(wptr[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[1]_i_1 
       (.I0(waddr_reg[2]),
        .I1(waddr_reg[1]),
        .O(wptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[2]_i_1 
       (.I0(waddr_reg[3]),
        .I1(waddr_reg[2]),
        .O(wptr[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[3]_i_1 
       (.I0(waddr_reg[4]),
        .I1(waddr_reg[3]),
        .O(wptr[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[4]_i_1 
       (.I0(waddr_reg[5]),
        .I1(waddr_reg[4]),
        .O(wptr[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[5]_i_1 
       (.I0(waddr_reg[6]),
        .I1(waddr_reg[5]),
        .O(wptr[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[6]_i_1 
       (.I0(waddr_reg[7]),
        .I1(waddr_reg[6]),
        .O(wptr[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[7]_i_1 
       (.I0(waddr_reg[8]),
        .I1(waddr_reg[7]),
        .O(wptr[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[8]_i_1 
       (.I0(waddr_reg[9]),
        .I1(waddr_reg[8]),
        .O(wptr[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w2r_wptr1[9]_i_1 
       (.I0(waddr_reg[10]),
        .I1(waddr_reg[9]),
        .O(wptr[9]));
  FDCE \w2r_wptr1_reg[0] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[0]),
        .Q(w2r_wptr1[0]));
  FDCE \w2r_wptr1_reg[10] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[10]),
        .Q(w2r_wptr1[10]));
  FDCE \w2r_wptr1_reg[11] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(waddr_reg__0),
        .Q(w2r_wptr1[11]));
  FDCE \w2r_wptr1_reg[1] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[1]),
        .Q(w2r_wptr1[1]));
  FDCE \w2r_wptr1_reg[2] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[2]),
        .Q(w2r_wptr1[2]));
  FDCE \w2r_wptr1_reg[3] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[3]),
        .Q(w2r_wptr1[3]));
  FDCE \w2r_wptr1_reg[4] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[4]),
        .Q(w2r_wptr1[4]));
  FDCE \w2r_wptr1_reg[5] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[5]),
        .Q(w2r_wptr1[5]));
  FDCE \w2r_wptr1_reg[6] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[6]),
        .Q(w2r_wptr1[6]));
  FDCE \w2r_wptr1_reg[7] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[7]),
        .Q(w2r_wptr1[7]));
  FDCE \w2r_wptr1_reg[8] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[8]),
        .Q(w2r_wptr1[8]));
  FDCE \w2r_wptr1_reg[9] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(wptr[9]),
        .Q(w2r_wptr1[9]));
  FDCE \w2r_wptr2_reg[0] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[0]),
        .Q(w2r_wptr2[0]));
  FDCE \w2r_wptr2_reg[10] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[10]),
        .Q(w2r_wptr2[10]));
  FDCE \w2r_wptr2_reg[11] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[11]),
        .Q(w2r_wptr2[11]));
  FDCE \w2r_wptr2_reg[1] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[1]),
        .Q(w2r_wptr2[1]));
  FDCE \w2r_wptr2_reg[2] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[2]),
        .Q(w2r_wptr2[2]));
  FDCE \w2r_wptr2_reg[3] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[3]),
        .Q(w2r_wptr2[3]));
  FDCE \w2r_wptr2_reg[4] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[4]),
        .Q(w2r_wptr2[4]));
  FDCE \w2r_wptr2_reg[5] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[5]),
        .Q(w2r_wptr2[5]));
  FDCE \w2r_wptr2_reg[6] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[6]),
        .Q(w2r_wptr2[6]));
  FDCE \w2r_wptr2_reg[7] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[7]),
        .Q(w2r_wptr2[7]));
  FDCE \w2r_wptr2_reg[8] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[8]),
        .Q(w2r_wptr2[8]));
  FDCE \w2r_wptr2_reg[9] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(vid_rstn_0),
        .D(w2r_wptr1[9]),
        .Q(w2r_wptr2[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 waddr0_carry
       (.CI(waddr_reg[0]),
        .CI_TOP(1'b0),
        .CO({waddr0_carry_n_0,waddr0_carry_n_1,waddr0_carry_n_2,waddr0_carry_n_3,waddr0_carry_n_4,waddr0_carry_n_5,waddr0_carry_n_6,waddr0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[8:1]),
        .S(waddr_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 waddr0_carry__0
       (.CI(waddr0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_waddr0_carry__0_CO_UNCONNECTED[7:2],waddr0_carry__0_n_6,waddr0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_waddr0_carry__0_O_UNCONNECTED[7:3],p_0_in__0[11:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,waddr_reg__0,waddr_reg[10:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[0]_i_1 
       (.I0(waddr_reg[0]),
        .O(p_0_in__0[0]));
  FDCE \waddr_reg[0] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(waddr_reg[0]));
  FDCE \waddr_reg[10] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(p_0_in__0[10]),
        .Q(waddr_reg[10]));
  FDCE \waddr_reg[11] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(p_0_in__0[11]),
        .Q(waddr_reg__0));
  FDCE \waddr_reg[1] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(waddr_reg[1]));
  FDCE \waddr_reg[2] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(waddr_reg[2]));
  FDCE \waddr_reg[3] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(waddr_reg[3]));
  FDCE \waddr_reg[4] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(waddr_reg[4]));
  FDCE \waddr_reg[5] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(waddr_reg[5]));
  FDCE \waddr_reg[6] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(waddr_reg[6]));
  FDCE \waddr_reg[7] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(waddr_reg[7]));
  FDCE \waddr_reg[8] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(p_0_in__0[8]),
        .Q(waddr_reg[8]));
  FDCE \waddr_reg[9] 
       (.C(aclk),
        .CE(wr_flag),
        .CLR(\r2w_rptr1[11]_i_1_n_0 ),
        .D(p_0_in__0[9]),
        .Q(waddr_reg[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video
   (locked,
    vid_data,
    vid_hsync,
    vid_vsync,
    vid_active_video,
    underflow,
    s_axis_tready,
    vid_rstn,
    aclk,
    vid_clk,
    DINADIN,
    s_axis_tvalid,
    aresetn);
  output locked;
  output [9:0]vid_data;
  output vid_hsync;
  output vid_vsync;
  output vid_active_video;
  output underflow;
  output s_axis_tready;
  input vid_rstn;
  input aclk;
  input vid_clk;
  input [10:0]DINADIN;
  input s_axis_tvalid;
  input aresetn;

  wire [10:0]DINADIN;
  wire aclk;
  wire active_video_w;
  wire aresetn;
  wire fifo_n_11;
  wire fifo_n_12;
  wire frmsync_wait_reg_n_0;
  wire locked;
  wire locked_r_i_1_n_0;
  wire rd_tuser;
  wire rd_valid;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire timing_n_2;
  wire timing_n_3;
  wire timing_n_4;
  wire underflow;
  wire vid_active_video;
  wire vid_clk;
  wire [9:0]vid_data;
  wire vid_hsync;
  wire vid_rstn;
  wire vid_vsync;
  wire vsync_w;
  wire w2r_wfull1;
  wire w2r_wfull2;
  wire wfull;

  FDRE active_video_r_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(active_video_w),
        .Q(vid_active_video),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo fifo
       (.DINADIN(DINADIN),
        .DOUTBDOUT({rd_tuser,vid_data}),
        .aclk(aclk),
        .active_video_w(active_video_w),
        .aresetn(aresetn),
        .mem_reg_bram_0(frmsync_wait_reg_n_0),
        .\raddr_reg[6]_0 (fifo_n_12),
        .rd_valid(rd_valid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .underflow(underflow),
        .vid_clk(vid_clk),
        .vid_rstn(vid_rstn),
        .vid_rstn_0(fifo_n_11),
        .wfull(wfull));
  FDPE frmsync_wait_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(timing_n_4),
        .PRE(fifo_n_11),
        .Q(frmsync_wait_reg_n_0));
  FDRE hsync_r_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(timing_n_2),
        .Q(vid_hsync),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    locked_r_i_1
       (.I0(w2r_wfull2),
        .I1(locked),
        .O(locked_r_i_1_n_0));
  FDCE locked_r_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_11),
        .D(locked_r_i_1_n_0),
        .Q(locked));
  FDCE rd_valid_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_11),
        .D(timing_n_3),
        .Q(rd_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_timing_gen timing
       (.DOUTBDOUT(rd_tuser),
        .active_video_w(active_video_w),
        .frmsync_wait_reg(frmsync_wait_reg_n_0),
        .locked(locked),
        .mem_reg_bram_0(timing_n_4),
        .rd_valid(rd_valid),
        .rd_valid_reg(timing_n_3),
        .rd_valid_reg_0(fifo_n_12),
        .vid_clk(vid_clk),
        .vid_hsync_reg_0(timing_n_2),
        .vid_rstn(vid_rstn),
        .vid_vsync(vid_vsync),
        .vsync_w(vsync_w));
  FDRE vsync_r_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(vsync_w),
        .Q(vid_vsync),
        .R(1'b0));
  FDCE w2r_wfull1_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_11),
        .D(wfull),
        .Q(w2r_wfull1));
  FDCE w2r_wfull2_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(fifo_n_11),
        .D(w2r_wfull1),
        .Q(w2r_wfull2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video_v1_0
   (locked,
    vid_data,
    vid_hsync,
    vid_vsync,
    vid_active_video,
    underflow,
    s_axis_tready,
    vid_rstn,
    aclk,
    vid_clk,
    DINADIN,
    s_axis_tvalid,
    aresetn);
  output locked;
  output [9:0]vid_data;
  output vid_hsync;
  output vid_vsync;
  output vid_active_video;
  output underflow;
  output s_axis_tready;
  input vid_rstn;
  input aclk;
  input vid_clk;
  input [10:0]DINADIN;
  input s_axis_tvalid;
  input aresetn;

  wire [10:0]DINADIN;
  wire aclk;
  wire aresetn;
  wire locked;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire underflow;
  wire vid_active_video;
  wire vid_clk;
  wire [9:0]vid_data;
  wire vid_hsync;
  wire vid_rstn;
  wire vid_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video axis_to_video_inst
       (.DINADIN(DINADIN),
        .aclk(aclk),
        .aresetn(aresetn),
        .locked(locked),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .underflow(underflow),
        .vid_active_video(vid_active_video),
        .vid_clk(vid_clk),
        .vid_data(vid_data),
        .vid_hsync(vid_hsync),
        .vid_rstn(vid_rstn),
        .vid_vsync(vid_vsync));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axis_to_video_0_0,axis_to_video_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_to_video_v1_0,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    s_axis_tuser,
    vid_clk,
    vid_rstn,
    vid_hsync,
    vid_vsync,
    vid_active_video,
    vid_data,
    locked,
    underflow);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF s_axis, FREQ_HZ 150074602, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_sys, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [9:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150074602, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_sys, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_clk, ASSOCIATED_RESET vid_rstn, ASSOCIATED_BUSIF video_out, FREQ_HZ 124493704, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_sys, INSERT_VIP 0" *) input vid_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input vid_rstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_out HSYNC" *) output vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_out VSYNC" *) output vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_out ACTIVE_VIDEO" *) output vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_out DATA" *) output [9:0]vid_data;
  output locked;
  output underflow;

  wire aclk;
  wire aresetn;
  wire locked;
  wire [9:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tuser;
  wire s_axis_tvalid;
  wire underflow;
  wire vid_active_video;
  wire vid_clk;
  wire [9:0]vid_data;
  wire vid_hsync;
  wire vid_rstn;
  wire vid_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_to_video_v1_0 inst
       (.DINADIN({s_axis_tuser,s_axis_tdata}),
        .aclk(aclk),
        .aresetn(aresetn),
        .locked(locked),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .underflow(underflow),
        .vid_active_video(vid_active_video),
        .vid_clk(vid_clk),
        .vid_data(vid_data),
        .vid_hsync(vid_hsync),
        .vid_rstn(vid_rstn),
        .vid_vsync(vid_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_dp_ram
   (DOUTBDOUT,
    rd_flag,
    wr_flag,
    raddr_reg_6_sp_1,
    wfull,
    aclk,
    vid_clk,
    waddr_reg,
    raddr_reg,
    DINADIN,
    active_video_w,
    mem_reg_bram_0_0,
    rd_valid,
    Q,
    S,
    s_axis_tvalid,
    s_axis_tready_INST_0_i_4_0,
    s_axis_tready_INST_0_i_4_1);
  output [10:0]DOUTBDOUT;
  output rd_flag;
  output wr_flag;
  output raddr_reg_6_sp_1;
  output wfull;
  input aclk;
  input vid_clk;
  input [10:0]waddr_reg;
  input [10:0]raddr_reg;
  input [10:0]DINADIN;
  input active_video_w;
  input mem_reg_bram_0_0;
  input rd_valid;
  input [11:0]Q;
  input [0:0]S;
  input s_axis_tvalid;
  input [11:0]s_axis_tready_INST_0_i_4_0;
  input [0:0]s_axis_tready_INST_0_i_4_1;

  wire [10:0]DINADIN;
  wire [10:0]DOUTBDOUT;
  wire [11:0]Q;
  wire [0:0]S;
  wire aclk;
  wire active_video_w;
  wire mem_reg_bram_0_0;
  wire [10:0]raddr_reg;
  wire raddr_reg_6_sn_1;
  wire rd_flag;
  wire rd_valid;
  wire s_axis_tready_INST_0_i_2_n_0;
  wire s_axis_tready_INST_0_i_3_n_0;
  wire [11:0]s_axis_tready_INST_0_i_4_0;
  wire [0:0]s_axis_tready_INST_0_i_4_1;
  wire s_axis_tready_INST_0_i_4_n_0;
  wire s_axis_tready_INST_0_i_5_n_0;
  wire s_axis_tready_INST_0_i_6_n_0;
  wire s_axis_tready_INST_0_i_7_n_0;
  wire s_axis_tvalid;
  wire underflow_INST_0_i_2_n_0;
  wire underflow_INST_0_i_3_n_0;
  wire underflow_INST_0_i_4_n_0;
  wire underflow_INST_0_i_5_n_0;
  wire underflow_INST_0_i_6_n_0;
  wire underflow_INST_0_i_7_n_0;
  wire vid_clk;
  wire [10:0]waddr_reg;
  wire wfull;
  wire wr_flag;
  wire NLW_mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_bram_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_bram_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_bram_0_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_mem_reg_bram_0_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_mem_reg_bram_0_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_mem_reg_bram_0_CASDOUTPB_UNCONNECTED;
  wire [31:0]NLW_mem_reg_bram_0_DOUTADOUT_UNCONNECTED;
  wire [31:11]NLW_mem_reg_bram_0_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_bram_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_bram_0_RDADDRECC_UNCONNECTED;

  assign raddr_reg_6_sp_1 = raddr_reg_6_sn_1;
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d11" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "22528" *) 
  (* RTL_RAM_NAME = "inst/axis_to_video_inst/fifo/ram/mem_reg_bram_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "10" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg_bram_0
       (.ADDRARDADDR({waddr_reg,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({raddr_reg,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_mem_reg_bram_0_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_mem_reg_bram_0_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_mem_reg_bram_0_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_mem_reg_bram_0_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(vid_clk),
        .DBITERR(NLW_mem_reg_bram_0_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DINADIN}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(NLW_mem_reg_bram_0_DOUTADOUT_UNCONNECTED[31:0]),
        .DOUTBDOUT({NLW_mem_reg_bram_0_DOUTBDOUT_UNCONNECTED[31:11],DOUTBDOUT}),
        .DOUTPADOUTP(NLW_mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_bram_0_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(rd_flag),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_mem_reg_bram_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_bram_0_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({wr_flag,wr_flag,wr_flag,wr_flag}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h0C88CC88)) 
    mem_reg_bram_0_i_1
       (.I0(active_video_w),
        .I1(raddr_reg_6_sn_1),
        .I2(DOUTBDOUT[10]),
        .I3(mem_reg_bram_0_0),
        .I4(rd_valid),
        .O(rd_flag));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_bram_0_i_2
       (.I0(s_axis_tvalid),
        .I1(wfull),
        .O(wr_flag));
  LUT6 #(
    .INIT(64'h0000000028820000)) 
    s_axis_tready_INST_0_i_1
       (.I0(s_axis_tready_INST_0_i_2_n_0),
        .I1(waddr_reg[1]),
        .I2(waddr_reg[0]),
        .I3(s_axis_tready_INST_0_i_4_0[0]),
        .I4(s_axis_tready_INST_0_i_3_n_0),
        .I5(s_axis_tready_INST_0_i_4_n_0),
        .O(wfull));
  LUT4 #(
    .INIT(16'h6900)) 
    s_axis_tready_INST_0_i_2
       (.I0(waddr_reg[4]),
        .I1(waddr_reg[3]),
        .I2(s_axis_tready_INST_0_i_4_0[3]),
        .I3(s_axis_tready_INST_0_i_5_n_0),
        .O(s_axis_tready_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h06906009)) 
    s_axis_tready_INST_0_i_3
       (.I0(waddr_reg[1]),
        .I1(s_axis_tready_INST_0_i_4_0[1]),
        .I2(waddr_reg[3]),
        .I3(waddr_reg[2]),
        .I4(s_axis_tready_INST_0_i_4_0[2]),
        .O(s_axis_tready_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hD77DFFFF)) 
    s_axis_tready_INST_0_i_4
       (.I0(s_axis_tready_INST_0_i_6_n_0),
        .I1(s_axis_tready_INST_0_i_4_0[6]),
        .I2(waddr_reg[6]),
        .I3(waddr_reg[7]),
        .I4(s_axis_tready_INST_0_i_7_n_0),
        .O(s_axis_tready_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'h06906009)) 
    s_axis_tready_INST_0_i_5
       (.I0(waddr_reg[4]),
        .I1(s_axis_tready_INST_0_i_4_0[4]),
        .I2(waddr_reg[6]),
        .I3(waddr_reg[5]),
        .I4(s_axis_tready_INST_0_i_4_0[5]),
        .O(s_axis_tready_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'h06906009)) 
    s_axis_tready_INST_0_i_6
       (.I0(waddr_reg[7]),
        .I1(s_axis_tready_INST_0_i_4_0[7]),
        .I2(waddr_reg[9]),
        .I3(waddr_reg[8]),
        .I4(s_axis_tready_INST_0_i_4_0[8]),
        .O(s_axis_tready_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0600006000900900)) 
    s_axis_tready_INST_0_i_7
       (.I0(waddr_reg[9]),
        .I1(s_axis_tready_INST_0_i_4_0[9]),
        .I2(s_axis_tready_INST_0_i_4_0[11]),
        .I3(s_axis_tready_INST_0_i_4_1),
        .I4(s_axis_tready_INST_0_i_4_0[10]),
        .I5(waddr_reg[10]),
        .O(s_axis_tready_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF96)) 
    underflow_INST_0_i_1
       (.I0(raddr_reg[6]),
        .I1(raddr_reg[7]),
        .I2(Q[6]),
        .I3(underflow_INST_0_i_2_n_0),
        .I4(underflow_INST_0_i_3_n_0),
        .I5(underflow_INST_0_i_4_n_0),
        .O(raddr_reg_6_sn_1));
  LUT5 #(
    .INIT(32'hF69F9FF6)) 
    underflow_INST_0_i_2
       (.I0(raddr_reg[7]),
        .I1(Q[7]),
        .I2(raddr_reg[8]),
        .I3(raddr_reg[9]),
        .I4(Q[8]),
        .O(underflow_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF9FF6FFFFF9FFFF6)) 
    underflow_INST_0_i_3
       (.I0(raddr_reg[9]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(S),
        .I4(raddr_reg[10]),
        .I5(Q[11]),
        .O(underflow_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEBBE)) 
    underflow_INST_0_i_4
       (.I0(underflow_INST_0_i_5_n_0),
        .I1(Q[3]),
        .I2(raddr_reg[4]),
        .I3(raddr_reg[3]),
        .I4(underflow_INST_0_i_6_n_0),
        .I5(underflow_INST_0_i_7_n_0),
        .O(underflow_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'hF69F9FF6)) 
    underflow_INST_0_i_5
       (.I0(raddr_reg[4]),
        .I1(Q[4]),
        .I2(raddr_reg[5]),
        .I3(raddr_reg[6]),
        .I4(Q[5]),
        .O(underflow_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'hF96F9FF6)) 
    underflow_INST_0_i_6
       (.I0(raddr_reg[3]),
        .I1(Q[2]),
        .I2(raddr_reg[1]),
        .I3(raddr_reg[2]),
        .I4(Q[1]),
        .O(underflow_INST_0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    underflow_INST_0_i_7
       (.I0(Q[0]),
        .I1(raddr_reg[1]),
        .I2(raddr_reg[0]),
        .O(underflow_INST_0_i_7_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_timing_gen
   (active_video_w,
    vsync_w,
    vid_hsync_reg_0,
    rd_valid_reg,
    mem_reg_bram_0,
    vid_clk,
    locked,
    vid_rstn,
    rd_valid,
    frmsync_wait_reg,
    rd_valid_reg_0,
    DOUTBDOUT,
    vid_vsync);
  output active_video_w;
  output vsync_w;
  output vid_hsync_reg_0;
  output rd_valid_reg;
  output mem_reg_bram_0;
  input vid_clk;
  input locked;
  input vid_rstn;
  input rd_valid;
  input frmsync_wait_reg;
  input rd_valid_reg_0;
  input [0:0]DOUTBDOUT;
  input vid_vsync;

  wire [0:0]DOUTBDOUT;
  wire active_video_w;
  wire frmsync_wait_reg;
  wire line_cnt;
  wire \line_cnt[0]_i_1_n_0 ;
  wire \line_cnt[10]_i_2_n_0 ;
  wire \line_cnt[10]_i_3_n_0 ;
  wire \line_cnt[10]_i_4_n_0 ;
  wire \line_cnt[10]_i_5_n_0 ;
  wire \line_cnt[10]_i_6_n_0 ;
  wire \line_cnt[10]_i_7_n_0 ;
  wire \line_cnt[10]_i_8_n_0 ;
  wire \line_cnt[1]_i_1_n_0 ;
  wire \line_cnt[2]_i_1_n_0 ;
  wire \line_cnt[3]_i_1_n_0 ;
  wire \line_cnt[4]_i_1_n_0 ;
  wire \line_cnt[5]_i_1_n_0 ;
  wire \line_cnt[5]_i_2_n_0 ;
  wire \line_cnt[6]_i_1_n_0 ;
  wire \line_cnt[7]_i_1_n_0 ;
  wire \line_cnt[7]_i_2_n_0 ;
  wire \line_cnt[8]_i_1_n_0 ;
  wire \line_cnt[9]_i_1_n_0 ;
  wire \line_cnt[9]_i_2_n_0 ;
  wire \line_cnt_reg_n_0_[0] ;
  wire \line_cnt_reg_n_0_[10] ;
  wire \line_cnt_reg_n_0_[1] ;
  wire \line_cnt_reg_n_0_[2] ;
  wire \line_cnt_reg_n_0_[3] ;
  wire \line_cnt_reg_n_0_[4] ;
  wire \line_cnt_reg_n_0_[5] ;
  wire \line_cnt_reg_n_0_[6] ;
  wire \line_cnt_reg_n_0_[7] ;
  wire \line_cnt_reg_n_0_[8] ;
  wire \line_cnt_reg_n_0_[9] ;
  wire locked;
  wire mem_reg_bram_0;
  wire [11:0]pix_cnt;
  wire \pix_cnt[0]_i_1_n_0 ;
  wire \pix_cnt[0]_i_2_n_0 ;
  wire \pix_cnt[0]_i_3_n_0 ;
  wire \pix_cnt[10]_i_1_n_0 ;
  wire \pix_cnt[11]_i_1_n_0 ;
  wire \pix_cnt[11]_i_2_n_0 ;
  wire \pix_cnt[11]_i_3_n_0 ;
  wire \pix_cnt[11]_i_4_n_0 ;
  wire \pix_cnt[11]_i_5_n_0 ;
  wire \pix_cnt[11]_i_6_n_0 ;
  wire \pix_cnt[11]_i_7_n_0 ;
  wire \pix_cnt[11]_i_8_n_0 ;
  wire \pix_cnt[11]_i_9_n_0 ;
  wire \pix_cnt[1]_i_1_n_0 ;
  wire \pix_cnt[2]_i_1_n_0 ;
  wire \pix_cnt[3]_i_1_n_0 ;
  wire \pix_cnt[4]_i_1_n_0 ;
  wire \pix_cnt[5]_i_1_n_0 ;
  wire \pix_cnt[5]_i_2_n_0 ;
  wire \pix_cnt[6]_i_1_n_0 ;
  wire \pix_cnt[7]_i_1_n_0 ;
  wire \pix_cnt[8]_i_1_n_0 ;
  wire \pix_cnt[9]_i_1_n_0 ;
  wire \pix_cnt[9]_i_2_n_0 ;
  wire rd_valid;
  wire rd_valid_reg;
  wire rd_valid_reg_0;
  wire vid_active_video0;
  wire vid_active_video_i_2_n_0;
  wire vid_active_video_i_3_n_0;
  wire vid_active_video_i_4_n_0;
  wire vid_clk;
  wire vid_hsync_i_1_n_0;
  wire vid_hsync_i_2_n_0;
  wire vid_hsync_i_3_n_0;
  wire vid_hsync_reg_0;
  wire vid_rstn;
  wire vid_vsync;
  wire vid_vsync_i_1_n_0;
  wire vid_vsync_i_2_n_0;
  wire vsync_w;

  LUT5 #(
    .INIT(32'h4C7F7F4C)) 
    frmsync_wait_i_1
       (.I0(DOUTBDOUT),
        .I1(frmsync_wait_reg),
        .I2(active_video_w),
        .I3(vid_vsync),
        .I4(vsync_w),
        .O(mem_reg_bram_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_cnt[0]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[0] ),
        .O(\line_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \line_cnt[10]_i_1 
       (.I0(\line_cnt[10]_i_3_n_0 ),
        .I1(pix_cnt[11]),
        .I2(pix_cnt[5]),
        .I3(pix_cnt[4]),
        .I4(pix_cnt[3]),
        .I5(\line_cnt[10]_i_4_n_0 ),
        .O(line_cnt));
  LUT6 #(
    .INIT(64'hAAAAAAAA20000000)) 
    \line_cnt[10]_i_2 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt[10]_i_6_n_0 ),
        .I2(\line_cnt_reg_n_0_[7] ),
        .I3(\line_cnt_reg_n_0_[8] ),
        .I4(\line_cnt_reg_n_0_[9] ),
        .I5(\line_cnt_reg_n_0_[10] ),
        .O(\line_cnt[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \line_cnt[10]_i_3 
       (.I0(pix_cnt[6]),
        .I1(pix_cnt[7]),
        .I2(pix_cnt[2]),
        .I3(pix_cnt[1]),
        .I4(pix_cnt[0]),
        .O(\line_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \line_cnt[10]_i_4 
       (.I0(pix_cnt[8]),
        .I1(pix_cnt[9]),
        .I2(pix_cnt[10]),
        .O(\line_cnt[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00005755FFFFFFFF)) 
    \line_cnt[10]_i_5 
       (.I0(\line_cnt_reg_n_0_[4] ),
        .I1(\line_cnt_reg_n_0_[2] ),
        .I2(\line_cnt_reg_n_0_[3] ),
        .I3(\line_cnt[5]_i_2_n_0 ),
        .I4(\line_cnt[10]_i_7_n_0 ),
        .I5(\line_cnt[10]_i_8_n_0 ),
        .O(\line_cnt[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \line_cnt[10]_i_6 
       (.I0(\line_cnt_reg_n_0_[5] ),
        .I1(\line_cnt_reg_n_0_[3] ),
        .I2(\line_cnt[5]_i_2_n_0 ),
        .I3(\line_cnt_reg_n_0_[2] ),
        .I4(\line_cnt_reg_n_0_[4] ),
        .I5(\line_cnt_reg_n_0_[6] ),
        .O(\line_cnt[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \line_cnt[10]_i_7 
       (.I0(\line_cnt_reg_n_0_[6] ),
        .I1(\line_cnt_reg_n_0_[8] ),
        .I2(\line_cnt_reg_n_0_[5] ),
        .I3(\line_cnt_reg_n_0_[7] ),
        .O(\line_cnt[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_cnt[10]_i_8 
       (.I0(\line_cnt_reg_n_0_[10] ),
        .I1(\line_cnt_reg_n_0_[9] ),
        .O(\line_cnt[10]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \line_cnt[1]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[0] ),
        .I2(\line_cnt_reg_n_0_[1] ),
        .O(\line_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \line_cnt[2]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[0] ),
        .I2(\line_cnt_reg_n_0_[1] ),
        .I3(\line_cnt_reg_n_0_[2] ),
        .O(\line_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \line_cnt[3]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[1] ),
        .I2(\line_cnt_reg_n_0_[0] ),
        .I3(\line_cnt_reg_n_0_[2] ),
        .I4(\line_cnt_reg_n_0_[3] ),
        .O(\line_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \line_cnt[4]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[2] ),
        .I2(\line_cnt_reg_n_0_[0] ),
        .I3(\line_cnt_reg_n_0_[1] ),
        .I4(\line_cnt_reg_n_0_[3] ),
        .I5(\line_cnt_reg_n_0_[4] ),
        .O(\line_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \line_cnt[5]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[3] ),
        .I2(\line_cnt[5]_i_2_n_0 ),
        .I3(\line_cnt_reg_n_0_[2] ),
        .I4(\line_cnt_reg_n_0_[4] ),
        .I5(\line_cnt_reg_n_0_[5] ),
        .O(\line_cnt[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \line_cnt[5]_i_2 
       (.I0(\line_cnt_reg_n_0_[0] ),
        .I1(\line_cnt_reg_n_0_[1] ),
        .O(\line_cnt[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \line_cnt[6]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[4] ),
        .I2(\line_cnt[7]_i_2_n_0 ),
        .I3(\line_cnt_reg_n_0_[5] ),
        .I4(\line_cnt_reg_n_0_[6] ),
        .O(\line_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \line_cnt[7]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[5] ),
        .I2(\line_cnt[7]_i_2_n_0 ),
        .I3(\line_cnt_reg_n_0_[4] ),
        .I4(\line_cnt_reg_n_0_[6] ),
        .I5(\line_cnt_reg_n_0_[7] ),
        .O(\line_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \line_cnt[7]_i_2 
       (.I0(\line_cnt_reg_n_0_[2] ),
        .I1(\line_cnt_reg_n_0_[0] ),
        .I2(\line_cnt_reg_n_0_[1] ),
        .I3(\line_cnt_reg_n_0_[3] ),
        .O(\line_cnt[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \line_cnt[8]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[6] ),
        .I2(\line_cnt[9]_i_2_n_0 ),
        .I3(\line_cnt_reg_n_0_[7] ),
        .I4(\line_cnt_reg_n_0_[8] ),
        .O(\line_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \line_cnt[9]_i_1 
       (.I0(\line_cnt[10]_i_5_n_0 ),
        .I1(\line_cnt_reg_n_0_[8] ),
        .I2(\line_cnt_reg_n_0_[7] ),
        .I3(\line_cnt[9]_i_2_n_0 ),
        .I4(\line_cnt_reg_n_0_[6] ),
        .I5(\line_cnt_reg_n_0_[9] ),
        .O(\line_cnt[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \line_cnt[9]_i_2 
       (.I0(\line_cnt_reg_n_0_[4] ),
        .I1(\line_cnt_reg_n_0_[2] ),
        .I2(\line_cnt_reg_n_0_[0] ),
        .I3(\line_cnt_reg_n_0_[1] ),
        .I4(\line_cnt_reg_n_0_[3] ),
        .I5(\line_cnt_reg_n_0_[5] ),
        .O(\line_cnt[9]_i_2_n_0 ));
  FDCE \line_cnt_reg[0] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[0]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[0] ));
  FDCE \line_cnt_reg[10] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[10]_i_2_n_0 ),
        .Q(\line_cnt_reg_n_0_[10] ));
  FDCE \line_cnt_reg[1] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[1]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[1] ));
  FDCE \line_cnt_reg[2] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[2]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[2] ));
  FDCE \line_cnt_reg[3] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[3]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[3] ));
  FDCE \line_cnt_reg[4] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[4]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[4] ));
  FDCE \line_cnt_reg[5] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[5]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[5] ));
  FDCE \line_cnt_reg[6] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[6]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[6] ));
  FDCE \line_cnt_reg[7] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[7]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[7] ));
  FDCE \line_cnt_reg[8] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[8]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[8] ));
  FDCE \line_cnt_reg[9] 
       (.C(vid_clk),
        .CE(line_cnt),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\line_cnt[9]_i_1_n_0 ),
        .Q(\line_cnt_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h44444404)) 
    \pix_cnt[0]_i_1 
       (.I0(pix_cnt[0]),
        .I1(\pix_cnt[11]_i_4_n_0 ),
        .I2(\pix_cnt[11]_i_5_n_0 ),
        .I3(\pix_cnt[0]_i_2_n_0 ),
        .I4(\pix_cnt[0]_i_3_n_0 ),
        .O(\pix_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pix_cnt[0]_i_2 
       (.I0(\pix_cnt[11]_i_9_n_0 ),
        .I1(\line_cnt_reg_n_0_[3] ),
        .I2(\line_cnt_reg_n_0_[2] ),
        .I3(pix_cnt[0]),
        .I4(DOUTBDOUT),
        .I5(\pix_cnt[11]_i_7_n_0 ),
        .O(\pix_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pix_cnt[0]_i_3 
       (.I0(\line_cnt_reg_n_0_[4] ),
        .I1(\line_cnt_reg_n_0_[7] ),
        .I2(\line_cnt_reg_n_0_[5] ),
        .I3(\line_cnt_reg_n_0_[8] ),
        .I4(\line_cnt_reg_n_0_[6] ),
        .O(\pix_cnt[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \pix_cnt[10]_i_1 
       (.I0(\pix_cnt[11]_i_4_n_0 ),
        .I1(\pix_cnt[11]_i_3_n_0 ),
        .I2(pix_cnt[10]),
        .O(\pix_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF800F8000000F800)) 
    \pix_cnt[11]_i_1 
       (.I0(\pix_cnt[11]_i_3_n_0 ),
        .I1(pix_cnt[10]),
        .I2(pix_cnt[11]),
        .I3(\pix_cnt[11]_i_4_n_0 ),
        .I4(\pix_cnt[11]_i_5_n_0 ),
        .I5(\pix_cnt[11]_i_6_n_0 ),
        .O(\pix_cnt[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \pix_cnt[11]_i_2 
       (.I0(locked),
        .I1(vid_rstn),
        .O(\pix_cnt[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \pix_cnt[11]_i_3 
       (.I0(pix_cnt[9]),
        .I1(pix_cnt[8]),
        .I2(\pix_cnt[9]_i_2_n_0 ),
        .I3(pix_cnt[6]),
        .I4(pix_cnt[7]),
        .O(\pix_cnt[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h555555555555555D)) 
    \pix_cnt[11]_i_4 
       (.I0(pix_cnt[11]),
        .I1(vid_active_video_i_3_n_0),
        .I2(pix_cnt[10]),
        .I3(pix_cnt[9]),
        .I4(pix_cnt[8]),
        .I5(\line_cnt[10]_i_3_n_0 ),
        .O(\pix_cnt[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pix_cnt[11]_i_5 
       (.I0(pix_cnt[6]),
        .I1(pix_cnt[11]),
        .I2(pix_cnt[10]),
        .I3(pix_cnt[9]),
        .I4(pix_cnt[8]),
        .I5(pix_cnt[7]),
        .O(\pix_cnt[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pix_cnt[11]_i_6 
       (.I0(\pix_cnt[0]_i_3_n_0 ),
        .I1(\pix_cnt[11]_i_7_n_0 ),
        .I2(DOUTBDOUT),
        .I3(pix_cnt[0]),
        .I4(\pix_cnt[11]_i_8_n_0 ),
        .I5(\pix_cnt[11]_i_9_n_0 ),
        .O(\pix_cnt[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pix_cnt[11]_i_7 
       (.I0(pix_cnt[1]),
        .I1(pix_cnt[3]),
        .I2(pix_cnt[2]),
        .O(\pix_cnt[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pix_cnt[11]_i_8 
       (.I0(\line_cnt_reg_n_0_[2] ),
        .I1(\line_cnt_reg_n_0_[3] ),
        .O(\pix_cnt[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pix_cnt[11]_i_9 
       (.I0(\line_cnt_reg_n_0_[1] ),
        .I1(\line_cnt_reg_n_0_[0] ),
        .I2(\line_cnt_reg_n_0_[10] ),
        .I3(\line_cnt_reg_n_0_[9] ),
        .I4(pix_cnt[5]),
        .I5(pix_cnt[4]),
        .O(\pix_cnt[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \pix_cnt[1]_i_1 
       (.I0(\pix_cnt[11]_i_4_n_0 ),
        .I1(pix_cnt[0]),
        .I2(pix_cnt[1]),
        .O(\pix_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \pix_cnt[2]_i_1 
       (.I0(\pix_cnt[11]_i_4_n_0 ),
        .I1(pix_cnt[1]),
        .I2(pix_cnt[0]),
        .I3(pix_cnt[2]),
        .O(\pix_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \pix_cnt[3]_i_1 
       (.I0(\pix_cnt[11]_i_4_n_0 ),
        .I1(pix_cnt[0]),
        .I2(pix_cnt[1]),
        .I3(pix_cnt[2]),
        .I4(pix_cnt[3]),
        .O(\pix_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \pix_cnt[4]_i_1 
       (.I0(\pix_cnt[11]_i_4_n_0 ),
        .I1(pix_cnt[2]),
        .I2(pix_cnt[1]),
        .I3(pix_cnt[0]),
        .I4(pix_cnt[3]),
        .I5(pix_cnt[4]),
        .O(\pix_cnt[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A20)) 
    \pix_cnt[5]_i_1 
       (.I0(\pix_cnt[11]_i_4_n_0 ),
        .I1(\pix_cnt[5]_i_2_n_0 ),
        .I2(pix_cnt[4]),
        .I3(pix_cnt[5]),
        .O(\pix_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pix_cnt[5]_i_2 
       (.I0(pix_cnt[2]),
        .I1(pix_cnt[1]),
        .I2(pix_cnt[0]),
        .I3(pix_cnt[3]),
        .O(\pix_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \pix_cnt[6]_i_1 
       (.I0(\pix_cnt[11]_i_4_n_0 ),
        .I1(\pix_cnt[9]_i_2_n_0 ),
        .I2(pix_cnt[6]),
        .O(\pix_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \pix_cnt[7]_i_1 
       (.I0(\pix_cnt[11]_i_4_n_0 ),
        .I1(\pix_cnt[9]_i_2_n_0 ),
        .I2(pix_cnt[6]),
        .I3(pix_cnt[7]),
        .O(\pix_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \pix_cnt[8]_i_1 
       (.I0(\pix_cnt[11]_i_4_n_0 ),
        .I1(\pix_cnt[9]_i_2_n_0 ),
        .I2(pix_cnt[6]),
        .I3(pix_cnt[7]),
        .I4(pix_cnt[8]),
        .O(\pix_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \pix_cnt[9]_i_1 
       (.I0(\pix_cnt[11]_i_4_n_0 ),
        .I1(pix_cnt[7]),
        .I2(pix_cnt[6]),
        .I3(\pix_cnt[9]_i_2_n_0 ),
        .I4(pix_cnt[8]),
        .I5(pix_cnt[9]),
        .O(\pix_cnt[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pix_cnt[9]_i_2 
       (.I0(pix_cnt[3]),
        .I1(pix_cnt[0]),
        .I2(pix_cnt[1]),
        .I3(pix_cnt[2]),
        .I4(pix_cnt[4]),
        .I5(pix_cnt[5]),
        .O(\pix_cnt[9]_i_2_n_0 ));
  FDCE \pix_cnt_reg[0] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[0]_i_1_n_0 ),
        .Q(pix_cnt[0]));
  FDCE \pix_cnt_reg[10] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[10]_i_1_n_0 ),
        .Q(pix_cnt[10]));
  FDCE \pix_cnt_reg[11] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[11]_i_1_n_0 ),
        .Q(pix_cnt[11]));
  FDCE \pix_cnt_reg[1] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[1]_i_1_n_0 ),
        .Q(pix_cnt[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[2]_i_1_n_0 ),
        .Q(pix_cnt[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[3]_i_1_n_0 ),
        .Q(pix_cnt[3]));
  FDCE \pix_cnt_reg[4] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[4]_i_1_n_0 ),
        .Q(pix_cnt[4]));
  FDCE \pix_cnt_reg[5] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[5]_i_1_n_0 ),
        .Q(pix_cnt[5]));
  FDCE \pix_cnt_reg[6] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[6]_i_1_n_0 ),
        .Q(pix_cnt[6]));
  FDCE \pix_cnt_reg[7] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[7]_i_1_n_0 ),
        .Q(pix_cnt[7]));
  FDCE \pix_cnt_reg[8] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[8]_i_1_n_0 ),
        .Q(pix_cnt[8]));
  FDCE \pix_cnt_reg[9] 
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(\pix_cnt[9]_i_1_n_0 ),
        .Q(pix_cnt[9]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    rd_valid_i_1
       (.I0(rd_valid),
        .I1(frmsync_wait_reg),
        .I2(active_video_w),
        .I3(rd_valid_reg_0),
        .O(rd_valid_reg));
  LUT5 #(
    .INIT(32'hBDBD00BD)) 
    vid_active_video_i_1
       (.I0(vid_active_video_i_2_n_0),
        .I1(\line_cnt_reg_n_0_[9] ),
        .I2(\line_cnt_reg_n_0_[10] ),
        .I3(vid_active_video_i_3_n_0),
        .I4(vid_active_video_i_4_n_0),
        .O(vid_active_video0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0057)) 
    vid_active_video_i_2
       (.I0(\line_cnt_reg_n_0_[3] ),
        .I1(\line_cnt_reg_n_0_[1] ),
        .I2(\line_cnt_reg_n_0_[2] ),
        .I3(\pix_cnt[0]_i_3_n_0 ),
        .O(vid_active_video_i_2_n_0));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    vid_active_video_i_3
       (.I0(pix_cnt[5]),
        .I1(pix_cnt[4]),
        .I2(pix_cnt[3]),
        .I3(pix_cnt[6]),
        .I4(pix_cnt[7]),
        .O(vid_active_video_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    vid_active_video_i_4
       (.I0(pix_cnt[11]),
        .I1(pix_cnt[10]),
        .I2(pix_cnt[9]),
        .I3(pix_cnt[8]),
        .O(vid_active_video_i_4_n_0));
  FDCE vid_active_video_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(vid_active_video0),
        .Q(active_video_w));
  LUT6 #(
    .INIT(64'hFFFFFFF3FFFF0505)) 
    vid_hsync_i_1
       (.I0(vid_hsync_i_2_n_0),
        .I1(vid_hsync_i_3_n_0),
        .I2(pix_cnt[6]),
        .I3(pix_cnt[5]),
        .I4(vid_active_video_i_4_n_0),
        .I5(pix_cnt[7]),
        .O(vid_hsync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    vid_hsync_i_2
       (.I0(pix_cnt[2]),
        .I1(pix_cnt[3]),
        .I2(pix_cnt[1]),
        .I3(pix_cnt[4]),
        .I4(pix_cnt[5]),
        .O(vid_hsync_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    vid_hsync_i_3
       (.I0(pix_cnt[2]),
        .I1(pix_cnt[1]),
        .I2(pix_cnt[3]),
        .I3(pix_cnt[4]),
        .O(vid_hsync_i_3_n_0));
  FDPE vid_hsync_reg
       (.C(vid_clk),
        .CE(1'b1),
        .D(vid_hsync_i_1_n_0),
        .PRE(\pix_cnt[11]_i_2_n_0 ),
        .Q(vid_hsync_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hC0FFC040)) 
    vid_vsync_i_1
       (.I0(\line_cnt[7]_i_2_n_0 ),
        .I1(\line_cnt_reg_n_0_[10] ),
        .I2(\line_cnt_reg_n_0_[9] ),
        .I3(\pix_cnt[0]_i_3_n_0 ),
        .I4(vid_vsync_i_2_n_0),
        .O(vid_vsync_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000057)) 
    vid_vsync_i_2
       (.I0(\line_cnt_reg_n_0_[2] ),
        .I1(\line_cnt_reg_n_0_[0] ),
        .I2(\line_cnt_reg_n_0_[1] ),
        .I3(\line_cnt_reg_n_0_[10] ),
        .I4(\line_cnt_reg_n_0_[9] ),
        .I5(\line_cnt_reg_n_0_[3] ),
        .O(vid_vsync_i_2_n_0));
  FDCE vid_vsync_reg
       (.C(vid_clk),
        .CE(1'b1),
        .CLR(\pix_cnt[11]_i_2_n_0 ),
        .D(vid_vsync_i_1_n_0),
        .Q(vsync_w));
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
