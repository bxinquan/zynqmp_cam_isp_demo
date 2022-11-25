// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Nov 25 21:05:09 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mipi_rx_to_video_ias1_0_sim_netlist.v
// Design      : design_1_mipi_rx_to_video_ias1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__csi2_lanes_aligner
   (align_flag_reg_0,
    module_reset_reg,
    D,
    \align_idx_reg[1][1]_0 ,
    \align_idx_reg[0][1]_0 ,
    \head_clk_idx_reg[0] ,
    align_flag_reg_1,
    \lane_buf_reg[2][15]_0 ,
    \lane_buf_reg[1][15]_0 ,
    \lane_buf_reg[0][15]_0 ,
    \lane_buf_reg[6][15]_0 ,
    \lane_buf_reg[5][15]_0 ,
    \lane_buf_reg[4][15]_0 ,
    \lane_buf_reg[3][15]_0 ,
    align_flag_reg_2,
    clk_hs_byte,
    Q,
    byte_data_valid,
    module_reset,
    s00_axi_aresetn,
    \align_idx_reg[0][0]_0 ,
    \align_idx_reg[0][1]_1 ,
    \lane_buf_reg[0][15]_1 ,
    \lane_buf_reg[1][15]_1 ,
    \lane_buf_reg[2][15]_1 ,
    \lane_buf_reg[3][15]_1 ,
    \lane_buf_reg[4][15]_1 ,
    \lane_buf_reg[5][15]_1 ,
    \lane_buf_reg[6][15]_1 ,
    \lane_buf_reg[7][15]_0 ,
    \align_idx_reg[1][0]_0 ,
    \align_idx_reg[1][1]_1 );
  output align_flag_reg_0;
  output module_reset_reg;
  output [15:0]D;
  output [1:0]\align_idx_reg[1][1]_0 ;
  output [1:0]\align_idx_reg[0][1]_0 ;
  output [15:0]\head_clk_idx_reg[0] ;
  output align_flag_reg_1;
  output [15:0]\lane_buf_reg[2][15]_0 ;
  output [15:0]\lane_buf_reg[1][15]_0 ;
  output [15:0]\lane_buf_reg[0][15]_0 ;
  output [15:0]\lane_buf_reg[6][15]_0 ;
  output [15:0]\lane_buf_reg[5][15]_0 ;
  output [15:0]\lane_buf_reg[4][15]_0 ;
  output [15:0]\lane_buf_reg[3][15]_0 ;
  input align_flag_reg_2;
  input clk_hs_byte;
  input [1:0]Q;
  input [1:0]byte_data_valid;
  input module_reset;
  input s00_axi_aresetn;
  input [0:0]\align_idx_reg[0][0]_0 ;
  input [1:0]\align_idx_reg[0][1]_1 ;
  input [15:0]\lane_buf_reg[0][15]_1 ;
  input [15:0]\lane_buf_reg[1][15]_1 ;
  input [15:0]\lane_buf_reg[2][15]_1 ;
  input [15:0]\lane_buf_reg[3][15]_1 ;
  input [15:0]\lane_buf_reg[4][15]_1 ;
  input [15:0]\lane_buf_reg[5][15]_1 ;
  input [15:0]\lane_buf_reg[6][15]_1 ;
  input [15:0]\lane_buf_reg[7][15]_0 ;
  input [0:0]\align_idx_reg[1][0]_0 ;
  input [1:0]\align_idx_reg[1][1]_1 ;

  wire [15:0]D;
  wire [1:0]Q;
  wire align_flag_reg_0;
  wire align_flag_reg_1;
  wire align_flag_reg_2;
  wire \align_idx[0][2]_i_2_n_0 ;
  wire \align_idx[1][2]_i_2_n_0 ;
  wire [0:0]\align_idx_reg[0][0]_0 ;
  wire [1:0]\align_idx_reg[0][1]_0 ;
  wire [1:0]\align_idx_reg[0][1]_1 ;
  wire [2:2]\align_idx_reg[0]_0 ;
  wire [0:0]\align_idx_reg[1][0]_0 ;
  wire [1:0]\align_idx_reg[1][1]_0 ;
  wire [1:0]\align_idx_reg[1][1]_1 ;
  wire [2:2]\align_idx_reg[1]_9 ;
  wire [1:0]byte_data_valid;
  wire clk_hs_byte;
  wire \head_clk_idx[0]_i_3_n_0 ;
  wire \head_clk_idx[0]_i_4_n_0 ;
  wire \head_clk_idx[0]_i_5_n_0 ;
  wire [15:0]\head_clk_idx_reg[0] ;
  wire \head_word[16]_i_3_n_0 ;
  wire \head_word[16]_i_4_n_0 ;
  wire \head_word[17]_i_3_n_0 ;
  wire \head_word[17]_i_4_n_0 ;
  wire \head_word[18]_i_3_n_0 ;
  wire \head_word[18]_i_4_n_0 ;
  wire \head_word[19]_i_3_n_0 ;
  wire \head_word[19]_i_4_n_0 ;
  wire \head_word[20]_i_3_n_0 ;
  wire \head_word[20]_i_4_n_0 ;
  wire \head_word[21]_i_3_n_0 ;
  wire \head_word[21]_i_4_n_0 ;
  wire \head_word[22]_i_3_n_0 ;
  wire \head_word[22]_i_4_n_0 ;
  wire \head_word[23]_i_3_n_0 ;
  wire \head_word[23]_i_4_n_0 ;
  wire \head_word[24]_i_3_n_0 ;
  wire \head_word[24]_i_4_n_0 ;
  wire \head_word[25]_i_3_n_0 ;
  wire \head_word[25]_i_4_n_0 ;
  wire \head_word[26]_i_3_n_0 ;
  wire \head_word[26]_i_4_n_0 ;
  wire \head_word[27]_i_3_n_0 ;
  wire \head_word[27]_i_4_n_0 ;
  wire \head_word[28]_i_3_n_0 ;
  wire \head_word[28]_i_4_n_0 ;
  wire \head_word[29]_i_3_n_0 ;
  wire \head_word[29]_i_4_n_0 ;
  wire \head_word[30]_i_3_n_0 ;
  wire \head_word[30]_i_4_n_0 ;
  wire \head_word[31]_i_4_n_0 ;
  wire \head_word[31]_i_5_n_0 ;
  wire \head_word_reg[16]_i_2_n_0 ;
  wire \head_word_reg[17]_i_2_n_0 ;
  wire \head_word_reg[18]_i_2_n_0 ;
  wire \head_word_reg[19]_i_2_n_0 ;
  wire \head_word_reg[20]_i_2_n_0 ;
  wire \head_word_reg[21]_i_2_n_0 ;
  wire \head_word_reg[22]_i_2_n_0 ;
  wire \head_word_reg[23]_i_2_n_0 ;
  wire \head_word_reg[24]_i_2_n_0 ;
  wire \head_word_reg[25]_i_2_n_0 ;
  wire \head_word_reg[26]_i_2_n_0 ;
  wire \head_word_reg[27]_i_2_n_0 ;
  wire \head_word_reg[28]_i_2_n_0 ;
  wire \head_word_reg[29]_i_2_n_0 ;
  wire \head_word_reg[30]_i_2_n_0 ;
  wire \head_word_reg[31]_i_3_n_0 ;
  wire [15:0]\lane_buf_reg[0][15]_0 ;
  wire [15:0]\lane_buf_reg[0][15]_1 ;
  wire [15:0]\lane_buf_reg[1][15]_0 ;
  wire [15:0]\lane_buf_reg[1][15]_1 ;
  wire [15:0]\lane_buf_reg[2][15]_0 ;
  wire [15:0]\lane_buf_reg[2][15]_1 ;
  wire [15:0]\lane_buf_reg[3][15]_0 ;
  wire [15:0]\lane_buf_reg[3][15]_1 ;
  wire [15:0]\lane_buf_reg[4][15]_0 ;
  wire [15:0]\lane_buf_reg[4][15]_1 ;
  wire [15:0]\lane_buf_reg[5][15]_0 ;
  wire [15:0]\lane_buf_reg[5][15]_1 ;
  wire [15:0]\lane_buf_reg[6][15]_0 ;
  wire [15:0]\lane_buf_reg[6][15]_1 ;
  wire [15:0]\lane_buf_reg[7][15]_0 ;
  wire [15:0]\lane_buf_reg[7]_8 ;
  wire module_reset;
  wire module_reset_reg;
  wire s00_axi_aresetn;

  FDCE align_flag_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(align_flag_reg_2),
        .Q(align_flag_reg_0));
  LUT5 #(
    .INIT(32'h0EEEE000)) 
    \align_idx[0][2]_i_2 
       (.I0(byte_data_valid[0]),
        .I1(byte_data_valid[1]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\align_idx_reg[0][1]_0 [0]),
        .I4(\align_idx_reg[0]_0 ),
        .O(\align_idx[0][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0EEEE000)) 
    \align_idx[1][2]_i_2 
       (.I0(byte_data_valid[0]),
        .I1(byte_data_valid[1]),
        .I2(\align_idx_reg[1][1]_0 [0]),
        .I3(\align_idx_reg[1][1]_0 [1]),
        .I4(\align_idx_reg[1]_9 ),
        .O(\align_idx[1][2]_i_2_n_0 ));
  FDCE \align_idx_reg[0][0] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[0][0]_0 ),
        .CLR(module_reset_reg),
        .D(\align_idx_reg[0][1]_1 [0]),
        .Q(\align_idx_reg[0][1]_0 [0]));
  FDCE \align_idx_reg[0][1] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[0][0]_0 ),
        .CLR(module_reset_reg),
        .D(\align_idx_reg[0][1]_1 [1]),
        .Q(\align_idx_reg[0][1]_0 [1]));
  FDCE \align_idx_reg[0][2] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[0][0]_0 ),
        .CLR(module_reset_reg),
        .D(\align_idx[0][2]_i_2_n_0 ),
        .Q(\align_idx_reg[0]_0 ));
  FDCE \align_idx_reg[1][0] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[1][0]_0 ),
        .CLR(module_reset_reg),
        .D(\align_idx_reg[1][1]_1 [0]),
        .Q(\align_idx_reg[1][1]_0 [0]));
  FDCE \align_idx_reg[1][1] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[1][0]_0 ),
        .CLR(module_reset_reg),
        .D(\align_idx_reg[1][1]_1 [1]),
        .Q(\align_idx_reg[1][1]_0 [1]));
  FDCE \align_idx_reg[1][2] 
       (.C(clk_hs_byte),
        .CE(\align_idx_reg[1][0]_0 ),
        .CLR(module_reset_reg),
        .D(\align_idx[1][2]_i_2_n_0 ),
        .Q(\align_idx_reg[1]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[0]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[16]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[10]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[26]_i_2_n_0 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[11]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[27]_i_2_n_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[12]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[28]_i_2_n_0 ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[13]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[29]_i_2_n_0 ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[14]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[30]_i_2_n_0 ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[15]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[31]_i_3_n_0 ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[1]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[17]_i_2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[2]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[18]_i_2_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[3]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[19]_i_2_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[4]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[20]_i_2_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[5]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[21]_i_2_n_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[6]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[22]_i_2_n_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[7]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[23]_i_2_n_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[8]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[24]_i_2_n_0 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_byte[9]_i_1 
       (.I0(align_flag_reg_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\head_word_reg[25]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \head_clk_idx[0]_i_2 
       (.I0(\head_clk_idx[0]_i_3_n_0 ),
        .I1(\head_clk_idx[0]_i_4_n_0 ),
        .I2(\head_clk_idx[0]_i_5_n_0 ),
        .I3(\head_word_reg[17]_i_2_n_0 ),
        .I4(\head_word_reg[29]_i_2_n_0 ),
        .I5(\head_word_reg[19]_i_2_n_0 ),
        .O(align_flag_reg_1));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \head_clk_idx[0]_i_3 
       (.I0(\head_word_reg[26]_i_2_n_0 ),
        .I1(align_flag_reg_0),
        .I2(\head_word_reg[20]_i_2_n_0 ),
        .I3(\head_word_reg[27]_i_2_n_0 ),
        .I4(\head_word_reg[23]_i_2_n_0 ),
        .I5(\head_word_reg[30]_i_2_n_0 ),
        .O(\head_clk_idx[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \head_clk_idx[0]_i_4 
       (.I0(\head_word_reg[18]_i_2_n_0 ),
        .I1(\head_word_reg[22]_i_2_n_0 ),
        .I2(\head_word_reg[28]_i_2_n_0 ),
        .I3(\head_word_reg[31]_i_3_n_0 ),
        .O(\head_clk_idx[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \head_clk_idx[0]_i_5 
       (.I0(\head_word_reg[24]_i_2_n_0 ),
        .I1(\head_word_reg[16]_i_2_n_0 ),
        .I2(\head_word_reg[25]_i_2_n_0 ),
        .I3(\head_word_reg[21]_i_2_n_0 ),
        .O(\head_clk_idx[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[16]_i_1 
       (.I0(\head_word_reg[16]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[16]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [0]),
        .I1(\lane_buf_reg[1][15]_0 [0]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [0]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [0]),
        .O(\head_word[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[16]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [0]),
        .I1(\lane_buf_reg[5][15]_0 [0]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [0]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [0]),
        .O(\head_word[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[17]_i_1 
       (.I0(\head_word_reg[17]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [1]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[17]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [1]),
        .I1(\lane_buf_reg[1][15]_0 [1]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [1]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [1]),
        .O(\head_word[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[17]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [1]),
        .I1(\lane_buf_reg[5][15]_0 [1]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [1]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [1]),
        .O(\head_word[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[18]_i_1 
       (.I0(\head_word_reg[18]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [2]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[18]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [2]),
        .I1(\lane_buf_reg[1][15]_0 [2]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [2]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [2]),
        .O(\head_word[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[18]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [2]),
        .I1(\lane_buf_reg[5][15]_0 [2]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [2]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [2]),
        .O(\head_word[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[19]_i_1 
       (.I0(\head_word_reg[19]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [3]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[19]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [3]),
        .I1(\lane_buf_reg[1][15]_0 [3]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [3]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [3]),
        .O(\head_word[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[19]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [3]),
        .I1(\lane_buf_reg[5][15]_0 [3]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [3]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [3]),
        .O(\head_word[19]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[20]_i_1 
       (.I0(\head_word_reg[20]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [4]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[20]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [4]),
        .I1(\lane_buf_reg[1][15]_0 [4]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [4]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [4]),
        .O(\head_word[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[20]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [4]),
        .I1(\lane_buf_reg[5][15]_0 [4]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [4]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [4]),
        .O(\head_word[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[21]_i_1 
       (.I0(\head_word_reg[21]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [5]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[21]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [5]),
        .I1(\lane_buf_reg[1][15]_0 [5]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [5]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [5]),
        .O(\head_word[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[21]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [5]),
        .I1(\lane_buf_reg[5][15]_0 [5]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [5]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [5]),
        .O(\head_word[21]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[22]_i_1 
       (.I0(\head_word_reg[22]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [6]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[22]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [6]),
        .I1(\lane_buf_reg[1][15]_0 [6]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [6]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [6]),
        .O(\head_word[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[22]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [6]),
        .I1(\lane_buf_reg[5][15]_0 [6]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [6]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [6]),
        .O(\head_word[22]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[23]_i_1 
       (.I0(\head_word_reg[23]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [7]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[23]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [7]),
        .I1(\lane_buf_reg[1][15]_0 [7]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [7]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [7]),
        .O(\head_word[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[23]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [7]),
        .I1(\lane_buf_reg[5][15]_0 [7]),
        .I2(\align_idx_reg[0][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [7]),
        .I4(\align_idx_reg[0][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [7]),
        .O(\head_word[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[24]_i_1 
       (.I0(\head_word_reg[24]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [8]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[24]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [8]),
        .I1(\lane_buf_reg[1][15]_0 [8]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [8]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [8]),
        .O(\head_word[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[24]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [8]),
        .I1(\lane_buf_reg[5][15]_0 [8]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [8]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [8]),
        .O(\head_word[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[25]_i_1 
       (.I0(\head_word_reg[25]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [9]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[25]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [9]),
        .I1(\lane_buf_reg[1][15]_0 [9]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [9]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [9]),
        .O(\head_word[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[25]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [9]),
        .I1(\lane_buf_reg[5][15]_0 [9]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [9]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [9]),
        .O(\head_word[25]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[26]_i_1 
       (.I0(\head_word_reg[26]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [10]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[26]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [10]),
        .I1(\lane_buf_reg[1][15]_0 [10]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [10]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [10]),
        .O(\head_word[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[26]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [10]),
        .I1(\lane_buf_reg[5][15]_0 [10]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [10]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [10]),
        .O(\head_word[26]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[27]_i_1 
       (.I0(\head_word_reg[27]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [11]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[27]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [11]),
        .I1(\lane_buf_reg[1][15]_0 [11]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [11]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [11]),
        .O(\head_word[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[27]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [11]),
        .I1(\lane_buf_reg[5][15]_0 [11]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [11]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [11]),
        .O(\head_word[27]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[28]_i_1 
       (.I0(\head_word_reg[28]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [12]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[28]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [12]),
        .I1(\lane_buf_reg[1][15]_0 [12]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [12]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [12]),
        .O(\head_word[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[28]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [12]),
        .I1(\lane_buf_reg[5][15]_0 [12]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [12]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [12]),
        .O(\head_word[28]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[29]_i_1 
       (.I0(\head_word_reg[29]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [13]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[29]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [13]),
        .I1(\lane_buf_reg[1][15]_0 [13]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [13]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [13]),
        .O(\head_word[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[29]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [13]),
        .I1(\lane_buf_reg[5][15]_0 [13]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [13]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [13]),
        .O(\head_word[29]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[30]_i_1 
       (.I0(\head_word_reg[30]_i_2_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [14]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[30]_i_3 
       (.I0(\lane_buf_reg[2][15]_0 [14]),
        .I1(\lane_buf_reg[1][15]_0 [14]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [14]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [14]),
        .O(\head_word[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[30]_i_4 
       (.I0(\lane_buf_reg[6][15]_0 [14]),
        .I1(\lane_buf_reg[5][15]_0 [14]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [14]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [14]),
        .O(\head_word[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h55544444)) 
    \head_word[31]_i_2 
       (.I0(\head_word_reg[31]_i_3_n_0 ),
        .I1(align_flag_reg_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(align_flag_reg_0),
        .O(\head_clk_idx_reg[0] [15]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[31]_i_4 
       (.I0(\lane_buf_reg[2][15]_0 [15]),
        .I1(\lane_buf_reg[1][15]_0 [15]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[0][15]_0 [15]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[7]_8 [15]),
        .O(\head_word[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \head_word[31]_i_5 
       (.I0(\lane_buf_reg[6][15]_0 [15]),
        .I1(\lane_buf_reg[5][15]_0 [15]),
        .I2(\align_idx_reg[1][1]_0 [1]),
        .I3(\lane_buf_reg[4][15]_0 [15]),
        .I4(\align_idx_reg[1][1]_0 [0]),
        .I5(\lane_buf_reg[3][15]_0 [15]),
        .O(\head_word[31]_i_5_n_0 ));
  MUXF7 \head_word_reg[16]_i_2 
       (.I0(\head_word[16]_i_3_n_0 ),
        .I1(\head_word[16]_i_4_n_0 ),
        .O(\head_word_reg[16]_i_2_n_0 ),
        .S(\align_idx_reg[0]_0 ));
  MUXF7 \head_word_reg[17]_i_2 
       (.I0(\head_word[17]_i_3_n_0 ),
        .I1(\head_word[17]_i_4_n_0 ),
        .O(\head_word_reg[17]_i_2_n_0 ),
        .S(\align_idx_reg[0]_0 ));
  MUXF7 \head_word_reg[18]_i_2 
       (.I0(\head_word[18]_i_3_n_0 ),
        .I1(\head_word[18]_i_4_n_0 ),
        .O(\head_word_reg[18]_i_2_n_0 ),
        .S(\align_idx_reg[0]_0 ));
  MUXF7 \head_word_reg[19]_i_2 
       (.I0(\head_word[19]_i_3_n_0 ),
        .I1(\head_word[19]_i_4_n_0 ),
        .O(\head_word_reg[19]_i_2_n_0 ),
        .S(\align_idx_reg[0]_0 ));
  MUXF7 \head_word_reg[20]_i_2 
       (.I0(\head_word[20]_i_3_n_0 ),
        .I1(\head_word[20]_i_4_n_0 ),
        .O(\head_word_reg[20]_i_2_n_0 ),
        .S(\align_idx_reg[0]_0 ));
  MUXF7 \head_word_reg[21]_i_2 
       (.I0(\head_word[21]_i_3_n_0 ),
        .I1(\head_word[21]_i_4_n_0 ),
        .O(\head_word_reg[21]_i_2_n_0 ),
        .S(\align_idx_reg[0]_0 ));
  MUXF7 \head_word_reg[22]_i_2 
       (.I0(\head_word[22]_i_3_n_0 ),
        .I1(\head_word[22]_i_4_n_0 ),
        .O(\head_word_reg[22]_i_2_n_0 ),
        .S(\align_idx_reg[0]_0 ));
  MUXF7 \head_word_reg[23]_i_2 
       (.I0(\head_word[23]_i_3_n_0 ),
        .I1(\head_word[23]_i_4_n_0 ),
        .O(\head_word_reg[23]_i_2_n_0 ),
        .S(\align_idx_reg[0]_0 ));
  MUXF7 \head_word_reg[24]_i_2 
       (.I0(\head_word[24]_i_3_n_0 ),
        .I1(\head_word[24]_i_4_n_0 ),
        .O(\head_word_reg[24]_i_2_n_0 ),
        .S(\align_idx_reg[1]_9 ));
  MUXF7 \head_word_reg[25]_i_2 
       (.I0(\head_word[25]_i_3_n_0 ),
        .I1(\head_word[25]_i_4_n_0 ),
        .O(\head_word_reg[25]_i_2_n_0 ),
        .S(\align_idx_reg[1]_9 ));
  MUXF7 \head_word_reg[26]_i_2 
       (.I0(\head_word[26]_i_3_n_0 ),
        .I1(\head_word[26]_i_4_n_0 ),
        .O(\head_word_reg[26]_i_2_n_0 ),
        .S(\align_idx_reg[1]_9 ));
  MUXF7 \head_word_reg[27]_i_2 
       (.I0(\head_word[27]_i_3_n_0 ),
        .I1(\head_word[27]_i_4_n_0 ),
        .O(\head_word_reg[27]_i_2_n_0 ),
        .S(\align_idx_reg[1]_9 ));
  MUXF7 \head_word_reg[28]_i_2 
       (.I0(\head_word[28]_i_3_n_0 ),
        .I1(\head_word[28]_i_4_n_0 ),
        .O(\head_word_reg[28]_i_2_n_0 ),
        .S(\align_idx_reg[1]_9 ));
  MUXF7 \head_word_reg[29]_i_2 
       (.I0(\head_word[29]_i_3_n_0 ),
        .I1(\head_word[29]_i_4_n_0 ),
        .O(\head_word_reg[29]_i_2_n_0 ),
        .S(\align_idx_reg[1]_9 ));
  MUXF7 \head_word_reg[30]_i_2 
       (.I0(\head_word[30]_i_3_n_0 ),
        .I1(\head_word[30]_i_4_n_0 ),
        .O(\head_word_reg[30]_i_2_n_0 ),
        .S(\align_idx_reg[1]_9 ));
  MUXF7 \head_word_reg[31]_i_3 
       (.I0(\head_word[31]_i_4_n_0 ),
        .I1(\head_word[31]_i_5_n_0 ),
        .O(\head_word_reg[31]_i_3_n_0 ),
        .S(\align_idx_reg[1]_9 ));
  FDCE \lane_buf_reg[0][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [0]),
        .Q(\lane_buf_reg[0][15]_0 [0]));
  FDCE \lane_buf_reg[0][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [10]),
        .Q(\lane_buf_reg[0][15]_0 [10]));
  FDCE \lane_buf_reg[0][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [11]),
        .Q(\lane_buf_reg[0][15]_0 [11]));
  FDCE \lane_buf_reg[0][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [12]),
        .Q(\lane_buf_reg[0][15]_0 [12]));
  FDCE \lane_buf_reg[0][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [13]),
        .Q(\lane_buf_reg[0][15]_0 [13]));
  FDCE \lane_buf_reg[0][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [14]),
        .Q(\lane_buf_reg[0][15]_0 [14]));
  FDCE \lane_buf_reg[0][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [15]),
        .Q(\lane_buf_reg[0][15]_0 [15]));
  FDCE \lane_buf_reg[0][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [1]),
        .Q(\lane_buf_reg[0][15]_0 [1]));
  FDCE \lane_buf_reg[0][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [2]),
        .Q(\lane_buf_reg[0][15]_0 [2]));
  FDCE \lane_buf_reg[0][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [3]),
        .Q(\lane_buf_reg[0][15]_0 [3]));
  FDCE \lane_buf_reg[0][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [4]),
        .Q(\lane_buf_reg[0][15]_0 [4]));
  FDCE \lane_buf_reg[0][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [5]),
        .Q(\lane_buf_reg[0][15]_0 [5]));
  FDCE \lane_buf_reg[0][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [6]),
        .Q(\lane_buf_reg[0][15]_0 [6]));
  FDCE \lane_buf_reg[0][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [7]),
        .Q(\lane_buf_reg[0][15]_0 [7]));
  FDCE \lane_buf_reg[0][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [8]),
        .Q(\lane_buf_reg[0][15]_0 [8]));
  FDCE \lane_buf_reg[0][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[0][15]_1 [9]),
        .Q(\lane_buf_reg[0][15]_0 [9]));
  FDCE \lane_buf_reg[1][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [0]),
        .Q(\lane_buf_reg[1][15]_0 [0]));
  FDCE \lane_buf_reg[1][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [10]),
        .Q(\lane_buf_reg[1][15]_0 [10]));
  FDCE \lane_buf_reg[1][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [11]),
        .Q(\lane_buf_reg[1][15]_0 [11]));
  FDCE \lane_buf_reg[1][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [12]),
        .Q(\lane_buf_reg[1][15]_0 [12]));
  FDCE \lane_buf_reg[1][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [13]),
        .Q(\lane_buf_reg[1][15]_0 [13]));
  FDCE \lane_buf_reg[1][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [14]),
        .Q(\lane_buf_reg[1][15]_0 [14]));
  FDCE \lane_buf_reg[1][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [15]),
        .Q(\lane_buf_reg[1][15]_0 [15]));
  FDCE \lane_buf_reg[1][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [1]),
        .Q(\lane_buf_reg[1][15]_0 [1]));
  FDCE \lane_buf_reg[1][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [2]),
        .Q(\lane_buf_reg[1][15]_0 [2]));
  FDCE \lane_buf_reg[1][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [3]),
        .Q(\lane_buf_reg[1][15]_0 [3]));
  FDCE \lane_buf_reg[1][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [4]),
        .Q(\lane_buf_reg[1][15]_0 [4]));
  FDCE \lane_buf_reg[1][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [5]),
        .Q(\lane_buf_reg[1][15]_0 [5]));
  FDCE \lane_buf_reg[1][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [6]),
        .Q(\lane_buf_reg[1][15]_0 [6]));
  FDCE \lane_buf_reg[1][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [7]),
        .Q(\lane_buf_reg[1][15]_0 [7]));
  FDCE \lane_buf_reg[1][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [8]),
        .Q(\lane_buf_reg[1][15]_0 [8]));
  FDCE \lane_buf_reg[1][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[1][15]_1 [9]),
        .Q(\lane_buf_reg[1][15]_0 [9]));
  FDCE \lane_buf_reg[2][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [0]),
        .Q(\lane_buf_reg[2][15]_0 [0]));
  FDCE \lane_buf_reg[2][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [10]),
        .Q(\lane_buf_reg[2][15]_0 [10]));
  FDCE \lane_buf_reg[2][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [11]),
        .Q(\lane_buf_reg[2][15]_0 [11]));
  FDCE \lane_buf_reg[2][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [12]),
        .Q(\lane_buf_reg[2][15]_0 [12]));
  FDCE \lane_buf_reg[2][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [13]),
        .Q(\lane_buf_reg[2][15]_0 [13]));
  FDCE \lane_buf_reg[2][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [14]),
        .Q(\lane_buf_reg[2][15]_0 [14]));
  FDCE \lane_buf_reg[2][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [15]),
        .Q(\lane_buf_reg[2][15]_0 [15]));
  FDCE \lane_buf_reg[2][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [1]),
        .Q(\lane_buf_reg[2][15]_0 [1]));
  FDCE \lane_buf_reg[2][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [2]),
        .Q(\lane_buf_reg[2][15]_0 [2]));
  FDCE \lane_buf_reg[2][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [3]),
        .Q(\lane_buf_reg[2][15]_0 [3]));
  FDCE \lane_buf_reg[2][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [4]),
        .Q(\lane_buf_reg[2][15]_0 [4]));
  FDCE \lane_buf_reg[2][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [5]),
        .Q(\lane_buf_reg[2][15]_0 [5]));
  FDCE \lane_buf_reg[2][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [6]),
        .Q(\lane_buf_reg[2][15]_0 [6]));
  FDCE \lane_buf_reg[2][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [7]),
        .Q(\lane_buf_reg[2][15]_0 [7]));
  FDCE \lane_buf_reg[2][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [8]),
        .Q(\lane_buf_reg[2][15]_0 [8]));
  FDCE \lane_buf_reg[2][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[2][15]_1 [9]),
        .Q(\lane_buf_reg[2][15]_0 [9]));
  FDCE \lane_buf_reg[3][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [0]),
        .Q(\lane_buf_reg[3][15]_0 [0]));
  FDCE \lane_buf_reg[3][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [10]),
        .Q(\lane_buf_reg[3][15]_0 [10]));
  FDCE \lane_buf_reg[3][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [11]),
        .Q(\lane_buf_reg[3][15]_0 [11]));
  FDCE \lane_buf_reg[3][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [12]),
        .Q(\lane_buf_reg[3][15]_0 [12]));
  FDCE \lane_buf_reg[3][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [13]),
        .Q(\lane_buf_reg[3][15]_0 [13]));
  FDCE \lane_buf_reg[3][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [14]),
        .Q(\lane_buf_reg[3][15]_0 [14]));
  FDCE \lane_buf_reg[3][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [15]),
        .Q(\lane_buf_reg[3][15]_0 [15]));
  FDCE \lane_buf_reg[3][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [1]),
        .Q(\lane_buf_reg[3][15]_0 [1]));
  FDCE \lane_buf_reg[3][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [2]),
        .Q(\lane_buf_reg[3][15]_0 [2]));
  FDCE \lane_buf_reg[3][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [3]),
        .Q(\lane_buf_reg[3][15]_0 [3]));
  FDCE \lane_buf_reg[3][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [4]),
        .Q(\lane_buf_reg[3][15]_0 [4]));
  FDCE \lane_buf_reg[3][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [5]),
        .Q(\lane_buf_reg[3][15]_0 [5]));
  FDCE \lane_buf_reg[3][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [6]),
        .Q(\lane_buf_reg[3][15]_0 [6]));
  FDCE \lane_buf_reg[3][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [7]),
        .Q(\lane_buf_reg[3][15]_0 [7]));
  FDCE \lane_buf_reg[3][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [8]),
        .Q(\lane_buf_reg[3][15]_0 [8]));
  FDCE \lane_buf_reg[3][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[3][15]_1 [9]),
        .Q(\lane_buf_reg[3][15]_0 [9]));
  FDCE \lane_buf_reg[4][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [0]),
        .Q(\lane_buf_reg[4][15]_0 [0]));
  FDCE \lane_buf_reg[4][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [10]),
        .Q(\lane_buf_reg[4][15]_0 [10]));
  FDCE \lane_buf_reg[4][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [11]),
        .Q(\lane_buf_reg[4][15]_0 [11]));
  FDCE \lane_buf_reg[4][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [12]),
        .Q(\lane_buf_reg[4][15]_0 [12]));
  FDCE \lane_buf_reg[4][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [13]),
        .Q(\lane_buf_reg[4][15]_0 [13]));
  FDCE \lane_buf_reg[4][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [14]),
        .Q(\lane_buf_reg[4][15]_0 [14]));
  FDCE \lane_buf_reg[4][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [15]),
        .Q(\lane_buf_reg[4][15]_0 [15]));
  FDCE \lane_buf_reg[4][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [1]),
        .Q(\lane_buf_reg[4][15]_0 [1]));
  FDCE \lane_buf_reg[4][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [2]),
        .Q(\lane_buf_reg[4][15]_0 [2]));
  FDCE \lane_buf_reg[4][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [3]),
        .Q(\lane_buf_reg[4][15]_0 [3]));
  FDCE \lane_buf_reg[4][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [4]),
        .Q(\lane_buf_reg[4][15]_0 [4]));
  FDCE \lane_buf_reg[4][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [5]),
        .Q(\lane_buf_reg[4][15]_0 [5]));
  FDCE \lane_buf_reg[4][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [6]),
        .Q(\lane_buf_reg[4][15]_0 [6]));
  FDCE \lane_buf_reg[4][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [7]),
        .Q(\lane_buf_reg[4][15]_0 [7]));
  FDCE \lane_buf_reg[4][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [8]),
        .Q(\lane_buf_reg[4][15]_0 [8]));
  FDCE \lane_buf_reg[4][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[4][15]_1 [9]),
        .Q(\lane_buf_reg[4][15]_0 [9]));
  FDCE \lane_buf_reg[5][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [0]),
        .Q(\lane_buf_reg[5][15]_0 [0]));
  FDCE \lane_buf_reg[5][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [10]),
        .Q(\lane_buf_reg[5][15]_0 [10]));
  FDCE \lane_buf_reg[5][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [11]),
        .Q(\lane_buf_reg[5][15]_0 [11]));
  FDCE \lane_buf_reg[5][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [12]),
        .Q(\lane_buf_reg[5][15]_0 [12]));
  FDCE \lane_buf_reg[5][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [13]),
        .Q(\lane_buf_reg[5][15]_0 [13]));
  FDCE \lane_buf_reg[5][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [14]),
        .Q(\lane_buf_reg[5][15]_0 [14]));
  FDCE \lane_buf_reg[5][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [15]),
        .Q(\lane_buf_reg[5][15]_0 [15]));
  FDCE \lane_buf_reg[5][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [1]),
        .Q(\lane_buf_reg[5][15]_0 [1]));
  FDCE \lane_buf_reg[5][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [2]),
        .Q(\lane_buf_reg[5][15]_0 [2]));
  FDCE \lane_buf_reg[5][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [3]),
        .Q(\lane_buf_reg[5][15]_0 [3]));
  FDCE \lane_buf_reg[5][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [4]),
        .Q(\lane_buf_reg[5][15]_0 [4]));
  FDCE \lane_buf_reg[5][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [5]),
        .Q(\lane_buf_reg[5][15]_0 [5]));
  FDCE \lane_buf_reg[5][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [6]),
        .Q(\lane_buf_reg[5][15]_0 [6]));
  FDCE \lane_buf_reg[5][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [7]),
        .Q(\lane_buf_reg[5][15]_0 [7]));
  FDCE \lane_buf_reg[5][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [8]),
        .Q(\lane_buf_reg[5][15]_0 [8]));
  FDCE \lane_buf_reg[5][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[5][15]_1 [9]),
        .Q(\lane_buf_reg[5][15]_0 [9]));
  FDCE \lane_buf_reg[6][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [0]),
        .Q(\lane_buf_reg[6][15]_0 [0]));
  FDCE \lane_buf_reg[6][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [10]),
        .Q(\lane_buf_reg[6][15]_0 [10]));
  FDCE \lane_buf_reg[6][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [11]),
        .Q(\lane_buf_reg[6][15]_0 [11]));
  FDCE \lane_buf_reg[6][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [12]),
        .Q(\lane_buf_reg[6][15]_0 [12]));
  FDCE \lane_buf_reg[6][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [13]),
        .Q(\lane_buf_reg[6][15]_0 [13]));
  FDCE \lane_buf_reg[6][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [14]),
        .Q(\lane_buf_reg[6][15]_0 [14]));
  FDCE \lane_buf_reg[6][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [15]),
        .Q(\lane_buf_reg[6][15]_0 [15]));
  FDCE \lane_buf_reg[6][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [1]),
        .Q(\lane_buf_reg[6][15]_0 [1]));
  FDCE \lane_buf_reg[6][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [2]),
        .Q(\lane_buf_reg[6][15]_0 [2]));
  FDCE \lane_buf_reg[6][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [3]),
        .Q(\lane_buf_reg[6][15]_0 [3]));
  FDCE \lane_buf_reg[6][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [4]),
        .Q(\lane_buf_reg[6][15]_0 [4]));
  FDCE \lane_buf_reg[6][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [5]),
        .Q(\lane_buf_reg[6][15]_0 [5]));
  FDCE \lane_buf_reg[6][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [6]),
        .Q(\lane_buf_reg[6][15]_0 [6]));
  FDCE \lane_buf_reg[6][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [7]),
        .Q(\lane_buf_reg[6][15]_0 [7]));
  FDCE \lane_buf_reg[6][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [8]),
        .Q(\lane_buf_reg[6][15]_0 [8]));
  FDCE \lane_buf_reg[6][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[6][15]_1 [9]),
        .Q(\lane_buf_reg[6][15]_0 [9]));
  FDCE \lane_buf_reg[7][0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [0]),
        .Q(\lane_buf_reg[7]_8 [0]));
  FDCE \lane_buf_reg[7][10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [10]),
        .Q(\lane_buf_reg[7]_8 [10]));
  FDCE \lane_buf_reg[7][11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [11]),
        .Q(\lane_buf_reg[7]_8 [11]));
  FDCE \lane_buf_reg[7][12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [12]),
        .Q(\lane_buf_reg[7]_8 [12]));
  FDCE \lane_buf_reg[7][13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [13]),
        .Q(\lane_buf_reg[7]_8 [13]));
  FDCE \lane_buf_reg[7][14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [14]),
        .Q(\lane_buf_reg[7]_8 [14]));
  FDCE \lane_buf_reg[7][15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [15]),
        .Q(\lane_buf_reg[7]_8 [15]));
  FDCE \lane_buf_reg[7][1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [1]),
        .Q(\lane_buf_reg[7]_8 [1]));
  FDCE \lane_buf_reg[7][2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [2]),
        .Q(\lane_buf_reg[7]_8 [2]));
  FDCE \lane_buf_reg[7][3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [3]),
        .Q(\lane_buf_reg[7]_8 [3]));
  FDCE \lane_buf_reg[7][4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [4]),
        .Q(\lane_buf_reg[7]_8 [4]));
  FDCE \lane_buf_reg[7][5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [5]),
        .Q(\lane_buf_reg[7]_8 [5]));
  FDCE \lane_buf_reg[7][6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [6]),
        .Q(\lane_buf_reg[7]_8 [6]));
  FDCE \lane_buf_reg[7][7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [7]),
        .Q(\lane_buf_reg[7]_8 [7]));
  FDCE \lane_buf_reg[7][8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [8]),
        .Q(\lane_buf_reg[7]_8 [8]));
  FDCE \lane_buf_reg[7][9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(module_reset_reg),
        .D(\lane_buf_reg[7][15]_0 [9]),
        .Q(\lane_buf_reg[7]_8 [9]));
  LUT2 #(
    .INIT(4'hB)) 
    reg_ce_i_2
       (.I0(module_reset),
        .I1(s00_axi_aresetn),
        .O(module_reset_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__csi2_packet_decoder
   (pkt_valid,
    reg_pix_valid_reg,
    \data_id_2_reg[4]_0 ,
    reg_pix_valid_reg_0,
    D,
    Q,
    data_flag_2_reg_0,
    data_flag_2_reg_1,
    E,
    \head_clk_idx_reg[1]_0 ,
    \data_byte_2_reg[15]_0 ,
    \data_byte_2_reg[15]_1 ,
    clk_hs_byte,
    \data_byte_2_reg[0]_0 ,
    raw10_pix_valid,
    raw10_pix_data_enable,
    \di_reg_reg[3] ,
    \head_word_reg[0]_0 ,
    \head_clk_idx_reg[0]_0 ,
    \head_word_reg[31]_0 ,
    \data_byte_reg[15]_0 );
  output pkt_valid;
  output reg_pix_valid_reg;
  output \data_id_2_reg[4]_0 ;
  output reg_pix_valid_reg_0;
  output [1:0]D;
  output [5:0]Q;
  output [2:0]data_flag_2_reg_0;
  output data_flag_2_reg_1;
  output [0:0]E;
  output [1:0]\head_clk_idx_reg[1]_0 ;
  output [15:0]\data_byte_2_reg[15]_0 ;
  output [15:0]\data_byte_2_reg[15]_1 ;
  input clk_hs_byte;
  input \data_byte_2_reg[0]_0 ;
  input raw10_pix_valid;
  input raw10_pix_data_enable;
  input [0:0]\di_reg_reg[3] ;
  input \head_word_reg[0]_0 ;
  input \head_clk_idx_reg[0]_0 ;
  input [15:0]\head_word_reg[31]_0 ;
  input [15:0]\data_byte_reg[15]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire clk_hs_byte;
  wire data0;
  wire [15:0]data_byte;
  wire \data_byte_2[0]_i_1_n_0 ;
  wire \data_byte_2[10]_i_1_n_0 ;
  wire \data_byte_2[11]_i_1_n_0 ;
  wire \data_byte_2[12]_i_1_n_0 ;
  wire \data_byte_2[13]_i_1_n_0 ;
  wire \data_byte_2[14]_i_1_n_0 ;
  wire \data_byte_2[15]_i_1_n_0 ;
  wire \data_byte_2[15]_i_2_n_0 ;
  wire \data_byte_2[1]_i_1_n_0 ;
  wire \data_byte_2[2]_i_1_n_0 ;
  wire \data_byte_2[3]_i_1_n_0 ;
  wire \data_byte_2[4]_i_1_n_0 ;
  wire \data_byte_2[5]_i_1_n_0 ;
  wire \data_byte_2[6]_i_1_n_0 ;
  wire \data_byte_2[7]_i_1_n_0 ;
  wire \data_byte_2[8]_i_1_n_0 ;
  wire \data_byte_2[9]_i_1_n_0 ;
  wire \data_byte_2_reg[0]_0 ;
  wire [15:0]\data_byte_2_reg[15]_0 ;
  wire [15:0]\data_byte_2_reg[15]_1 ;
  wire [15:0]\data_byte_reg[15]_0 ;
  wire [15:0]data_count_2;
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
  wire \data_count_2[15]_i_6_n_0 ;
  wire \data_count_2[1]_i_1_n_0 ;
  wire \data_count_2[2]_i_1_n_0 ;
  wire \data_count_2[3]_i_1_n_0 ;
  wire \data_count_2[4]_i_1_n_0 ;
  wire \data_count_2[5]_i_1_n_0 ;
  wire \data_count_2[6]_i_1_n_0 ;
  wire \data_count_2[7]_i_1_n_0 ;
  wire \data_count_2[8]_i_1_n_0 ;
  wire \data_count_2[9]_i_1_n_0 ;
  wire data_flag;
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
  wire data_flag_2_i_2_n_0;
  wire [2:0]data_flag_2_reg_0;
  wire data_flag_2_reg_1;
  wire [4:2]data_id_2;
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
  wire [15:1]data_index_2;
  wire \data_index_2[10]_i_1_n_0 ;
  wire \data_index_2[10]_i_2_n_0 ;
  wire \data_index_2[11]_i_1_n_0 ;
  wire \data_index_2[11]_i_2_n_0 ;
  wire \data_index_2[12]_i_1_n_0 ;
  wire \data_index_2[13]_i_1_n_0 ;
  wire \data_index_2[14]_i_1_n_0 ;
  wire \data_index_2[15]_i_1_n_0 ;
  wire \data_index_2[15]_i_2_n_0 ;
  wire \data_index_2[15]_i_3_n_0 ;
  wire \data_index_2[1]_i_1_n_0 ;
  wire \data_index_2[2]_i_1_n_0 ;
  wire \data_index_2[3]_i_1_n_0 ;
  wire \data_index_2[4]_i_1_n_0 ;
  wire \data_index_2[5]_i_1_n_0 ;
  wire \data_index_2[6]_i_1_n_0 ;
  wire \data_index_2[6]_i_2_n_0 ;
  wire \data_index_2[7]_i_1_n_0 ;
  wire \data_index_2[8]_i_1_n_0 ;
  wire \data_index_2[9]_i_1_n_0 ;
  wire [0:0]\di_reg_reg[3] ;
  wire \head_clk_idx[0]_i_1_n_0 ;
  wire \head_clk_idx[1]_i_1_n_0 ;
  wire \head_clk_idx_reg[0]_0 ;
  wire [1:0]\head_clk_idx_reg[1]_0 ;
  wire head_word0;
  wire \head_word_reg[0]_0 ;
  wire [15:0]\head_word_reg[31]_0 ;
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
  wire \head_word_reg_n_0_[22] ;
  wire \head_word_reg_n_0_[23] ;
  wire \head_word_reg_n_0_[24] ;
  wire \head_word_reg_n_0_[25] ;
  wire \head_word_reg_n_0_[26] ;
  wire \head_word_reg_n_0_[27] ;
  wire \head_word_reg_n_0_[28] ;
  wire \head_word_reg_n_0_[29] ;
  wire \head_word_reg_n_0_[2] ;
  wire \head_word_reg_n_0_[30] ;
  wire \head_word_reg_n_0_[31] ;
  wire \head_word_reg_n_0_[6] ;
  wire \head_word_reg_n_0_[7] ;
  wire \head_word_reg_n_0_[8] ;
  wire \head_word_reg_n_0_[9] ;
  wire [2:0]p_0_in;
  wire [5:4]p_1_in;
  wire [15:0]p_2_in;
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
    .INIT(32'h0000E000)) 
    \data_byte_2[0]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[0]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[10]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[10]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[11]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[11]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[12]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[12]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[13]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[13]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[14]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[14]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[15]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[15]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40040004)) 
    \data_byte_2[15]_i_2 
       (.I0(\data_count_2[15]_i_3_n_0 ),
        .I1(\data_count_2[15]_i_4_n_0 ),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\data_byte_2[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[1]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[1]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[2]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[2]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[3]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[3]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[4]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[4]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[5]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[5]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[6]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[6]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[7]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[7]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[8]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[8]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \data_byte_2[9]_i_1 
       (.I0(data0),
        .I1(data_flag_2_i_2_n_0),
        .I2(data_flag),
        .I3(data_byte[9]),
        .I4(\data_byte_2[15]_i_2_n_0 ),
        .O(\data_byte_2[9]_i_1_n_0 ));
  FDCE \data_byte_2_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[0]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [0]));
  FDCE \data_byte_2_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[10]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [10]));
  FDCE \data_byte_2_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[11]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [11]));
  FDCE \data_byte_2_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[12]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [12]));
  FDCE \data_byte_2_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[13]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [13]));
  FDCE \data_byte_2_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[14]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [14]));
  FDCE \data_byte_2_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[15]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [15]));
  FDCE \data_byte_2_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[1]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [1]));
  FDCE \data_byte_2_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[2]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [2]));
  FDCE \data_byte_2_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[3]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [3]));
  FDCE \data_byte_2_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[4]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [4]));
  FDCE \data_byte_2_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[5]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [5]));
  FDCE \data_byte_2_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[6]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [6]));
  FDCE \data_byte_2_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[7]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [7]));
  FDCE \data_byte_2_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[8]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [8]));
  FDCE \data_byte_2_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_2[9]_i_1_n_0 ),
        .Q(\data_byte_2_reg[15]_1 [9]));
  FDCE \data_byte_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [0]),
        .Q(data_byte[0]));
  FDCE \data_byte_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [10]),
        .Q(data_byte[10]));
  FDCE \data_byte_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [11]),
        .Q(data_byte[11]));
  FDCE \data_byte_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [12]),
        .Q(data_byte[12]));
  FDCE \data_byte_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [13]),
        .Q(data_byte[13]));
  FDCE \data_byte_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [14]),
        .Q(data_byte[14]));
  FDCE \data_byte_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [15]),
        .Q(data_byte[15]));
  FDCE \data_byte_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [1]),
        .Q(data_byte[1]));
  FDCE \data_byte_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [2]),
        .Q(data_byte[2]));
  FDCE \data_byte_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [3]),
        .Q(data_byte[3]));
  FDCE \data_byte_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [4]),
        .Q(data_byte[4]));
  FDCE \data_byte_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [5]),
        .Q(data_byte[5]));
  FDCE \data_byte_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [6]),
        .Q(data_byte[6]));
  FDCE \data_byte_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [7]),
        .Q(data_byte[7]));
  FDCE \data_byte_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [8]),
        .Q(data_byte[8]));
  FDCE \data_byte_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_byte_reg[15]_0 [9]),
        .Q(data_byte[9]));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[0]_i_1 
       (.I0(\head_word_reg_n_0_[8] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[10]_i_1 
       (.I0(\head_word_reg_n_0_[18] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[11]_i_1 
       (.I0(\head_word_reg_n_0_[19] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[12]_i_1 
       (.I0(p_1_in[4]),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[13]_i_1 
       (.I0(p_1_in[5]),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[14]_i_1 
       (.I0(\head_word_reg_n_0_[22] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \data_count_2[15]_i_1 
       (.I0(\data_count_2[15]_i_3_n_0 ),
        .I1(\data_count_2[15]_i_4_n_0 ),
        .I2(data_flag),
        .O(\data_count_2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[15]_i_2 
       (.I0(\head_word_reg_n_0_[23] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_count_2[15]_i_3 
       (.I0(\data_count_2[15]_i_5_n_0 ),
        .I1(data_index_2[6]),
        .I2(data_index_2[3]),
        .I3(data_index_2[12]),
        .I4(data_index_2[9]),
        .O(\data_count_2[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_count_2[15]_i_4 
       (.I0(data_index_2[15]),
        .I1(data_index_2[4]),
        .I2(data_index_2[10]),
        .I3(\data_count_2[15]_i_6_n_0 ),
        .I4(data_index_2[2]),
        .I5(data_index_2[1]),
        .O(\data_count_2[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_count_2[15]_i_5 
       (.I0(data_index_2[8]),
        .I1(data_index_2[14]),
        .I2(data_index_2[7]),
        .I3(data_index_2[13]),
        .O(\data_count_2[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_count_2[15]_i_6 
       (.I0(data_index_2[11]),
        .I1(data_index_2[5]),
        .O(\data_count_2[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[1]_i_1 
       (.I0(\head_word_reg_n_0_[9] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[2]_i_1 
       (.I0(\head_word_reg_n_0_[10] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[3]_i_1 
       (.I0(\head_word_reg_n_0_[11] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[4]_i_1 
       (.I0(\head_word_reg_n_0_[12] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[5]_i_1 
       (.I0(\head_word_reg_n_0_[13] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[6]_i_1 
       (.I0(\head_word_reg_n_0_[14] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[7]_i_1 
       (.I0(\head_word_reg_n_0_[15] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[8]_i_1 
       (.I0(\head_word_reg_n_0_[16] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08888800)) 
    \data_count_2[9]_i_1 
       (.I0(\head_word_reg_n_0_[17] ),
        .I1(data_flag),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\data_count_2[9]_i_1_n_0 ));
  FDCE \data_count_2_reg[0] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[0]_i_1_n_0 ),
        .Q(data_count_2[0]));
  FDCE \data_count_2_reg[10] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[10]_i_1_n_0 ),
        .Q(data_count_2[10]));
  FDCE \data_count_2_reg[11] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[11]_i_1_n_0 ),
        .Q(data_count_2[11]));
  FDCE \data_count_2_reg[12] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[12]_i_1_n_0 ),
        .Q(data_count_2[12]));
  FDCE \data_count_2_reg[13] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[13]_i_1_n_0 ),
        .Q(data_count_2[13]));
  FDCE \data_count_2_reg[14] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[14]_i_1_n_0 ),
        .Q(data_count_2[14]));
  FDCE \data_count_2_reg[15] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[15]_i_2_n_0 ),
        .Q(data_count_2[15]));
  FDCE \data_count_2_reg[1] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[1]_i_1_n_0 ),
        .Q(data_count_2[1]));
  FDCE \data_count_2_reg[2] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[2]_i_1_n_0 ),
        .Q(data_count_2[2]));
  FDCE \data_count_2_reg[3] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[3]_i_1_n_0 ),
        .Q(data_count_2[3]));
  FDCE \data_count_2_reg[4] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[4]_i_1_n_0 ),
        .Q(data_count_2[4]));
  FDCE \data_count_2_reg[5] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[5]_i_1_n_0 ),
        .Q(data_count_2[5]));
  FDCE \data_count_2_reg[6] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[6]_i_1_n_0 ),
        .Q(data_count_2[6]));
  FDCE \data_count_2_reg[7] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[7]_i_1_n_0 ),
        .Q(data_count_2[7]));
  FDCE \data_count_2_reg[8] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[8]_i_1_n_0 ),
        .Q(data_count_2[8]));
  FDCE \data_count_2_reg[9] 
       (.C(clk_hs_byte),
        .CE(\data_count_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_count_2[9]_i_1_n_0 ),
        .Q(data_count_2[9]));
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
       (.I0(data_index_2[15]),
        .I1(data_count_2[15]),
        .I2(data_count_2[14]),
        .I3(data_index_2[14]),
        .O(data_flag_20_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_10
       (.I0(data_count_2[13]),
        .I1(data_index_2[13]),
        .I2(data_count_2[12]),
        .I3(data_index_2[12]),
        .O(data_flag_20_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_11
       (.I0(data_count_2[11]),
        .I1(data_index_2[11]),
        .I2(data_count_2[10]),
        .I3(data_index_2[10]),
        .O(data_flag_20_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_12
       (.I0(data_count_2[9]),
        .I1(data_index_2[9]),
        .I2(data_count_2[8]),
        .I3(data_index_2[8]),
        .O(data_flag_20_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_13
       (.I0(data_count_2[7]),
        .I1(data_index_2[7]),
        .I2(data_count_2[6]),
        .I3(data_index_2[6]),
        .O(data_flag_20_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_14
       (.I0(data_count_2[5]),
        .I1(data_index_2[5]),
        .I2(data_count_2[4]),
        .I3(data_index_2[4]),
        .O(data_flag_20_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_15
       (.I0(data_count_2[3]),
        .I1(data_index_2[3]),
        .I2(data_count_2[2]),
        .I3(data_index_2[2]),
        .O(data_flag_20_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    data_flag_20_carry_i_16
       (.I0(data_count_2[0]),
        .I1(data_count_2[1]),
        .I2(data_index_2[1]),
        .O(data_flag_20_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_2
       (.I0(data_index_2[13]),
        .I1(data_count_2[13]),
        .I2(data_count_2[12]),
        .I3(data_index_2[12]),
        .O(data_flag_20_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_3
       (.I0(data_index_2[11]),
        .I1(data_count_2[11]),
        .I2(data_count_2[10]),
        .I3(data_index_2[10]),
        .O(data_flag_20_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_4
       (.I0(data_index_2[9]),
        .I1(data_count_2[9]),
        .I2(data_count_2[8]),
        .I3(data_index_2[8]),
        .O(data_flag_20_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_5
       (.I0(data_index_2[7]),
        .I1(data_count_2[7]),
        .I2(data_count_2[6]),
        .I3(data_index_2[6]),
        .O(data_flag_20_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_6
       (.I0(data_index_2[5]),
        .I1(data_count_2[5]),
        .I2(data_count_2[4]),
        .I3(data_index_2[4]),
        .O(data_flag_20_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    data_flag_20_carry_i_7
       (.I0(data_index_2[3]),
        .I1(data_count_2[3]),
        .I2(data_count_2[2]),
        .I3(data_index_2[2]),
        .O(data_flag_20_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    data_flag_20_carry_i_8
       (.I0(data_index_2[1]),
        .I1(data_count_2[1]),
        .I2(data_count_2[0]),
        .O(data_flag_20_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    data_flag_20_carry_i_9
       (.I0(data_count_2[15]),
        .I1(data_index_2[15]),
        .I2(data_count_2[14]),
        .I3(data_index_2[14]),
        .O(data_flag_20_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    data_flag_2_i_1
       (.I0(data_flag),
        .I1(data_flag_2_i_2_n_0),
        .I2(data0),
        .O(data_flag_20));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    data_flag_2_i_2
       (.I0(\data_count_2[15]_i_4_n_0 ),
        .I1(data_index_2[9]),
        .I2(data_index_2[12]),
        .I3(data_index_2[3]),
        .I4(data_index_2[6]),
        .I5(\data_count_2[15]_i_5_n_0 ),
        .O(data_flag_2_i_2_n_0));
  FDCE data_flag_2_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(data_flag_20),
        .Q(pkt_valid));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hAB000000)) 
    data_flag_i_1
       (.I0(\head_clk_idx_reg[1]_0 [0]),
        .I1(p_1_in[4]),
        .I2(p_1_in[5]),
        .I3(\head_word_reg[0]_0 ),
        .I4(\head_clk_idx_reg[1]_0 [1]),
        .O(data_flag0));
  FDCE data_flag_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(data_flag0),
        .Q(data_flag));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[0]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(\head_word_reg_n_0_[0] ),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[1]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(\head_word_reg_n_0_[1] ),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[2]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(\head_word_reg_n_0_[2] ),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[3]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(p_0_in[0]),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[4]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(p_0_in[1]),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[5]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(p_0_in[2]),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[6]_i_1 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(\head_word_reg_n_0_[6] ),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4FFF)) 
    \data_id_2[7]_i_1 
       (.I0(\data_count_2[15]_i_3_n_0 ),
        .I1(\data_count_2[15]_i_4_n_0 ),
        .I2(data_flag),
        .I3(data0),
        .O(\data_id_2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_id_2[7]_i_2 
       (.I0(\data_id_2[7]_i_3_n_0 ),
        .I1(\head_word_reg_n_0_[7] ),
        .I2(\data_id_2[7]_i_4_n_0 ),
        .O(\data_id_2[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \data_id_2[7]_i_3 
       (.I0(\data_count_2[15]_i_4_n_0 ),
        .I1(\data_id_2[7]_i_5_n_0 ),
        .I2(data_index_2[5]),
        .I3(data_index_2[11]),
        .I4(data_index_2[8]),
        .I5(data_index_2[14]),
        .O(\data_id_2[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \data_id_2[7]_i_4 
       (.I0(data_index_2[13]),
        .I1(data_index_2[7]),
        .I2(data_index_2[14]),
        .I3(data_index_2[8]),
        .I4(data_flag),
        .O(\data_id_2[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \data_id_2[7]_i_5 
       (.I0(data_index_2[3]),
        .I1(data_index_2[4]),
        .I2(data_index_2[9]),
        .I3(data_index_2[10]),
        .I4(\data_id_2[7]_i_6_n_0 ),
        .O(\data_id_2[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \data_id_2[7]_i_6 
       (.I0(data_index_2[7]),
        .I1(data_index_2[6]),
        .I2(data_index_2[13]),
        .I3(data_index_2[12]),
        .O(\data_id_2[7]_i_6_n_0 ));
  FDCE \data_id_2_reg[0] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_id_2[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \data_id_2_reg[1] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_id_2[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \data_id_2_reg[2] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_id_2[2]_i_1_n_0 ),
        .Q(data_id_2[2]));
  FDCE \data_id_2_reg[3] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_id_2[3]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \data_id_2_reg[4] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_id_2[4]_i_1_n_0 ),
        .Q(data_id_2[4]));
  FDCE \data_id_2_reg[5] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_id_2[5]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \data_id_2_reg[6] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_id_2[6]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \data_id_2_reg[7] 
       (.C(clk_hs_byte),
        .CE(\data_id_2[7]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_id_2[7]_i_2_n_0 ),
        .Q(Q[5]));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \data_index_2[10]_i_1 
       (.I0(data_flag),
        .I1(data_index_2[8]),
        .I2(\data_index_2[10]_i_2_n_0 ),
        .I3(data_index_2[7]),
        .I4(data_index_2[9]),
        .I5(data_index_2[10]),
        .O(\data_index_2[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \data_index_2[10]_i_2 
       (.I0(data_index_2[5]),
        .I1(data_index_2[3]),
        .I2(data_index_2[2]),
        .I3(data_index_2[1]),
        .I4(data_index_2[4]),
        .I5(data_index_2[6]),
        .O(\data_index_2[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \data_index_2[11]_i_1 
       (.I0(data_flag),
        .I1(\data_index_2[11]_i_2_n_0 ),
        .I2(data_index_2[11]),
        .O(\data_index_2[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \data_index_2[11]_i_2 
       (.I0(data_index_2[9]),
        .I1(data_index_2[7]),
        .I2(\data_index_2[10]_i_2_n_0 ),
        .I3(data_index_2[8]),
        .I4(data_index_2[10]),
        .O(\data_index_2[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \data_index_2[12]_i_1 
       (.I0(data_flag),
        .I1(\data_index_2[15]_i_3_n_0 ),
        .I2(data_index_2[12]),
        .O(\data_index_2[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \data_index_2[13]_i_1 
       (.I0(data_flag),
        .I1(\data_index_2[15]_i_3_n_0 ),
        .I2(data_index_2[12]),
        .I3(data_index_2[13]),
        .O(\data_index_2[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \data_index_2[14]_i_1 
       (.I0(data_flag),
        .I1(data_index_2[13]),
        .I2(data_index_2[12]),
        .I3(\data_index_2[15]_i_3_n_0 ),
        .I4(data_index_2[14]),
        .O(\data_index_2[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF4F)) 
    \data_index_2[15]_i_1 
       (.I0(\data_count_2[15]_i_3_n_0 ),
        .I1(\data_count_2[15]_i_4_n_0 ),
        .I2(data_flag),
        .I3(data0),
        .O(\data_index_2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF400000000000)) 
    \data_index_2[15]_i_2 
       (.I0(\data_index_2[15]_i_3_n_0 ),
        .I1(data_index_2[12]),
        .I2(data_index_2[13]),
        .I3(data_index_2[14]),
        .I4(data_index_2[15]),
        .I5(data_flag),
        .O(\data_index_2[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \data_index_2[15]_i_3 
       (.I0(data_index_2[10]),
        .I1(data_index_2[8]),
        .I2(\data_index_2[10]_i_2_n_0 ),
        .I3(data_index_2[7]),
        .I4(data_index_2[9]),
        .I5(data_index_2[11]),
        .O(\data_index_2[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_index_2[1]_i_1 
       (.I0(data_flag),
        .I1(data_index_2[1]),
        .O(\data_index_2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \data_index_2[2]_i_1 
       (.I0(data_index_2[1]),
        .I1(data_index_2[2]),
        .I2(data_flag),
        .O(\data_index_2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \data_index_2[3]_i_1 
       (.I0(data_flag),
        .I1(data_index_2[2]),
        .I2(data_index_2[1]),
        .I3(data_index_2[3]),
        .O(\data_index_2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \data_index_2[4]_i_1 
       (.I0(data_flag),
        .I1(data_index_2[1]),
        .I2(data_index_2[2]),
        .I3(data_index_2[3]),
        .I4(data_index_2[4]),
        .O(\data_index_2[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \data_index_2[5]_i_1 
       (.I0(data_flag),
        .I1(data_index_2[3]),
        .I2(data_index_2[2]),
        .I3(data_index_2[1]),
        .I4(data_index_2[4]),
        .I5(data_index_2[5]),
        .O(\data_index_2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \data_index_2[6]_i_1 
       (.I0(data_flag),
        .I1(\data_index_2[6]_i_2_n_0 ),
        .I2(data_index_2[6]),
        .O(\data_index_2[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \data_index_2[6]_i_2 
       (.I0(data_index_2[4]),
        .I1(data_index_2[1]),
        .I2(data_index_2[2]),
        .I3(data_index_2[3]),
        .I4(data_index_2[5]),
        .O(\data_index_2[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \data_index_2[7]_i_1 
       (.I0(data_flag),
        .I1(\data_index_2[10]_i_2_n_0 ),
        .I2(data_index_2[7]),
        .O(\data_index_2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \data_index_2[8]_i_1 
       (.I0(data_flag),
        .I1(\data_index_2[10]_i_2_n_0 ),
        .I2(data_index_2[7]),
        .I3(data_index_2[8]),
        .O(\data_index_2[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \data_index_2[9]_i_1 
       (.I0(data_flag),
        .I1(data_index_2[7]),
        .I2(\data_index_2[10]_i_2_n_0 ),
        .I3(data_index_2[8]),
        .I4(data_index_2[9]),
        .O(\data_index_2[9]_i_1_n_0 ));
  FDCE \data_index_2_reg[10] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[10]_i_1_n_0 ),
        .Q(data_index_2[10]));
  FDCE \data_index_2_reg[11] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[11]_i_1_n_0 ),
        .Q(data_index_2[11]));
  FDCE \data_index_2_reg[12] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[12]_i_1_n_0 ),
        .Q(data_index_2[12]));
  FDCE \data_index_2_reg[13] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[13]_i_1_n_0 ),
        .Q(data_index_2[13]));
  FDCE \data_index_2_reg[14] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[14]_i_1_n_0 ),
        .Q(data_index_2[14]));
  FDCE \data_index_2_reg[15] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[15]_i_2_n_0 ),
        .Q(data_index_2[15]));
  FDCE \data_index_2_reg[1] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[1]_i_1_n_0 ),
        .Q(data_index_2[1]));
  FDCE \data_index_2_reg[2] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[2]_i_1_n_0 ),
        .Q(data_index_2[2]));
  FDCE \data_index_2_reg[3] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[3]_i_1_n_0 ),
        .Q(data_index_2[3]));
  FDCE \data_index_2_reg[4] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[4]_i_1_n_0 ),
        .Q(data_index_2[4]));
  FDCE \data_index_2_reg[5] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[5]_i_1_n_0 ),
        .Q(data_index_2[5]));
  FDCE \data_index_2_reg[6] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[6]_i_1_n_0 ),
        .Q(data_index_2[6]));
  FDCE \data_index_2_reg[7] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[7]_i_1_n_0 ),
        .Q(data_index_2[7]));
  FDCE \data_index_2_reg[8] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[8]_i_1_n_0 ),
        .Q(data_index_2[8]));
  FDCE \data_index_2_reg[9] 
       (.C(clk_hs_byte),
        .CE(\data_index_2[15]_i_1_n_0 ),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\data_index_2[9]_i_1_n_0 ),
        .Q(data_index_2[9]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_reg[6]_i_1 
       (.I0(pkt_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(Q[4]),
        .O(data_flag_2_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \di_reg[7]_i_1 
       (.I0(pkt_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(\di_reg_reg[3] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_reg[7]_i_2 
       (.I0(pkt_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(Q[5]),
        .O(data_flag_2_reg_0[2]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \head_clk_idx[0]_i_1 
       (.I0(\head_clk_idx_reg[1]_0 [1]),
        .I1(\head_word_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[0]_0 ),
        .O(\head_clk_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \head_clk_idx[1]_i_1 
       (.I0(\head_clk_idx_reg[1]_0 [0]),
        .I1(\head_clk_idx_reg[1]_0 [1]),
        .I2(\head_word_reg[0]_0 ),
        .O(\head_clk_idx[1]_i_1_n_0 ));
  FDCE \head_clk_idx_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_clk_idx[0]_i_1_n_0 ),
        .Q(\head_clk_idx_reg[1]_0 [0]));
  FDCE \head_clk_idx_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_clk_idx[1]_i_1_n_0 ),
        .Q(\head_clk_idx_reg[1]_0 [1]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[0]_i_1 
       (.I0(\head_word_reg_n_0_[16] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[0]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[10]_i_1 
       (.I0(\head_word_reg_n_0_[26] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[10]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[11]_i_1 
       (.I0(\head_word_reg_n_0_[27] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[11]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[12]_i_1 
       (.I0(\head_word_reg_n_0_[28] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[12]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[13]_i_1 
       (.I0(\head_word_reg_n_0_[29] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[13]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[14]_i_1 
       (.I0(\head_word_reg_n_0_[30] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[14]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[15]_i_1 
       (.I0(\head_word_reg_n_0_[31] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[15]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[1]_i_1 
       (.I0(\head_word_reg_n_0_[17] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[2]_i_1 
       (.I0(\head_word_reg_n_0_[18] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[2]));
  LUT3 #(
    .INIT(8'h7F)) 
    \head_word[31]_i_1 
       (.I0(\head_word_reg[0]_0 ),
        .I1(\head_clk_idx_reg[1]_0 [0]),
        .I2(\head_clk_idx_reg[1]_0 [1]),
        .O(head_word0));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[3]_i_1 
       (.I0(\head_word_reg_n_0_[19] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[4]_i_1 
       (.I0(p_1_in[4]),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[4]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[5]_i_1 
       (.I0(p_1_in[5]),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[6]_i_1 
       (.I0(\head_word_reg_n_0_[22] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[7]_i_1 
       (.I0(\head_word_reg_n_0_[23] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[7]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[8]_i_1 
       (.I0(\head_word_reg_n_0_[24] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[8]));
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \head_word[9]_i_1 
       (.I0(\head_word_reg_n_0_[25] ),
        .I1(\head_clk_idx_reg[0]_0 ),
        .I2(\head_clk_idx_reg[1]_0 [0]),
        .I3(\head_clk_idx_reg[1]_0 [1]),
        .I4(\head_word_reg[0]_0 ),
        .O(p_2_in[9]));
  FDCE \head_word_reg[0] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[0]),
        .Q(\head_word_reg_n_0_[0] ));
  FDCE \head_word_reg[10] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[10]),
        .Q(\head_word_reg_n_0_[10] ));
  FDCE \head_word_reg[11] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[11]),
        .Q(\head_word_reg_n_0_[11] ));
  FDCE \head_word_reg[12] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[12]),
        .Q(\head_word_reg_n_0_[12] ));
  FDCE \head_word_reg[13] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[13]),
        .Q(\head_word_reg_n_0_[13] ));
  FDCE \head_word_reg[14] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[14]),
        .Q(\head_word_reg_n_0_[14] ));
  FDCE \head_word_reg[15] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[15]),
        .Q(\head_word_reg_n_0_[15] ));
  FDCE \head_word_reg[16] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [0]),
        .Q(\head_word_reg_n_0_[16] ));
  FDCE \head_word_reg[17] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [1]),
        .Q(\head_word_reg_n_0_[17] ));
  FDCE \head_word_reg[18] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [2]),
        .Q(\head_word_reg_n_0_[18] ));
  FDCE \head_word_reg[19] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [3]),
        .Q(\head_word_reg_n_0_[19] ));
  FDCE \head_word_reg[1] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[1]),
        .Q(\head_word_reg_n_0_[1] ));
  FDCE \head_word_reg[20] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [4]),
        .Q(p_1_in[4]));
  FDCE \head_word_reg[21] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [5]),
        .Q(p_1_in[5]));
  FDCE \head_word_reg[22] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [6]),
        .Q(\head_word_reg_n_0_[22] ));
  FDCE \head_word_reg[23] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [7]),
        .Q(\head_word_reg_n_0_[23] ));
  FDCE \head_word_reg[24] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [8]),
        .Q(\head_word_reg_n_0_[24] ));
  FDCE \head_word_reg[25] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [9]),
        .Q(\head_word_reg_n_0_[25] ));
  FDCE \head_word_reg[26] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [10]),
        .Q(\head_word_reg_n_0_[26] ));
  FDCE \head_word_reg[27] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [11]),
        .Q(\head_word_reg_n_0_[27] ));
  FDCE \head_word_reg[28] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [12]),
        .Q(\head_word_reg_n_0_[28] ));
  FDCE \head_word_reg[29] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [13]),
        .Q(\head_word_reg_n_0_[29] ));
  FDCE \head_word_reg[2] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[2]),
        .Q(\head_word_reg_n_0_[2] ));
  FDCE \head_word_reg[30] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [14]),
        .Q(\head_word_reg_n_0_[30] ));
  FDCE \head_word_reg[31] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(\head_word_reg[31]_0 [15]),
        .Q(\head_word_reg_n_0_[31] ));
  FDCE \head_word_reg[3] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[3]),
        .Q(p_0_in[0]));
  FDCE \head_word_reg[4] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[4]),
        .Q(p_0_in[1]));
  FDCE \head_word_reg[5] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[5]),
        .Q(p_0_in[2]));
  FDCE \head_word_reg[6] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[6]),
        .Q(\head_word_reg_n_0_[6] ));
  FDCE \head_word_reg[7] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[7]),
        .Q(\head_word_reg_n_0_[7] ));
  FDCE \head_word_reg[8] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[8]),
        .Q(\head_word_reg_n_0_[8] ));
  FDCE \head_word_reg[9] 
       (.C(clk_hs_byte),
        .CE(head_word0),
        .CLR(\data_byte_2_reg[0]_0 ),
        .D(p_2_in[9]),
        .Q(\head_word_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[16]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [0]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[17]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [1]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[18]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [2]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[19]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [3]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[20]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [4]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[21]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [5]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[22]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [6]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[23]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [7]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[24]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [8]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[25]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [9]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[26]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [10]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[27]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [11]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[28]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [12]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[29]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [13]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[30]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [14]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[31]_i_1 
       (.I0(\data_byte_2_reg[15]_1 [15]),
        .I1(data_flag_2_reg_1),
        .O(\data_byte_2_reg[15]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \last_data[31]_i_2 
       (.I0(pkt_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(\di_reg_reg[3] ),
        .O(data_flag_2_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ready_delay[0]_i_1 
       (.I0(pkt_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .O(data_flag_2_reg_0[0]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \ready_delay[0]_i_2 
       (.I0(data_id_2[4]),
        .I1(Q[2]),
        .I2(data_id_2[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
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
       (.I0(data_count_2[15]),
        .I1(data_count_2[13]),
        .I2(data_count_2[14]),
        .I3(data_count_2[10]),
        .I4(reg_pix_data_enable_i_4_n_0),
        .O(reg_pix_data_enable_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    reg_pix_data_enable_i_3
       (.I0(data_count_2[5]),
        .I1(data_count_2[6]),
        .I2(data_count_2[8]),
        .I3(data_count_2[11]),
        .I4(reg_pix_data_enable_i_5_n_0),
        .O(reg_pix_data_enable_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reg_pix_data_enable_i_4
       (.I0(data_count_2[3]),
        .I1(data_count_2[1]),
        .I2(data_count_2[7]),
        .I3(data_count_2[12]),
        .O(reg_pix_data_enable_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reg_pix_data_enable_i_5
       (.I0(data_count_2[2]),
        .I1(data_count_2[9]),
        .I2(data_count_2[0]),
        .I3(data_count_2[4]),
        .O(reg_pix_data_enable_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \reg_pix_di[2]_i_1 
       (.I0(raw10_pix_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(data_id_2[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \reg_pix_di[4]_i_1 
       (.I0(raw10_pix_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(data_id_2[4]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    reg_pix_valid_i_1__0
       (.I0(raw10_pix_valid),
        .I1(\data_id_2_reg[4]_0 ),
        .I2(pkt_valid),
        .O(reg_pix_valid_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__csi2_pixel_to_video
   (locked_reg_0,
    reg_ce_reg_0,
    reg_active_video_reg_0,
    reg_vsync_reg_0,
    \pix_cnt_reg[11] ,
    reg_active_video_reg_1,
    \line_cnt_reg[14] ,
    reg_ce_reg_1,
    reg_vsync_reg_1,
    mipi_width0__0,
    \axi_araddr_reg[5] ,
    \reg_di_reg[7]_0 ,
    vid_data,
    E,
    clk_hs_byte,
    AR,
    pix_data_enable,
    pix_valid,
    Q,
    \pix_cnt_reg[14] ,
    \pix_cnt_reg[8] ,
    \line_cnt_reg[15] ,
    \line_cnt_reg[11] ,
    \line_cnt_reg[6] ,
    pre_vsync,
    \line_cnt_reg[10] ,
    \line_cnt_reg[5] ,
    pre_active_video,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[0]_0 ,
    p_1_in_11,
    p_2_in,
    \axi_rdata_reg[0]_1 ,
    \line_cnt_reg[15]_0 ,
    \reg_pix_di_reg[7]_0 ,
    \reg_pix_data_reg[19]_0 );
  output locked_reg_0;
  output reg_ce_reg_0;
  output reg_active_video_reg_0;
  output reg_vsync_reg_0;
  output [5:0]\pix_cnt_reg[11] ;
  output reg_active_video_reg_1;
  output [15:0]\line_cnt_reg[14] ;
  output [0:0]reg_ce_reg_1;
  output [0:0]reg_vsync_reg_1;
  output mipi_width0__0;
  output [0:0]\axi_araddr_reg[5] ;
  output [7:0]\reg_di_reg[7]_0 ;
  output [19:0]vid_data;
  input [0:0]E;
  input clk_hs_byte;
  input [0:0]AR;
  input pix_data_enable;
  input pix_valid;
  input [12:0]Q;
  input \pix_cnt_reg[14] ;
  input \pix_cnt_reg[8] ;
  input [15:0]\line_cnt_reg[15] ;
  input \line_cnt_reg[11] ;
  input \line_cnt_reg[6] ;
  input pre_vsync;
  input \line_cnt_reg[10] ;
  input \line_cnt_reg[5] ;
  input pre_active_video;
  input \axi_rdata_reg[0] ;
  input [4:0]\axi_rdata_reg[0]_0 ;
  input [0:0]p_1_in_11;
  input [0:0]p_2_in;
  input [0:0]\axi_rdata_reg[0]_1 ;
  input \line_cnt_reg[15]_0 ;
  input [7:0]\reg_pix_di_reg[7]_0 ;
  input [19:0]\reg_pix_data_reg[19]_0 ;

  wire [0:0]AR;
  wire [0:0]E;
  wire [12:0]Q;
  wire [0:0]\axi_araddr_reg[5] ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata_reg[0] ;
  wire [4:0]\axi_rdata_reg[0]_0 ;
  wire [0:0]\axi_rdata_reg[0]_1 ;
  wire clk_hs_byte;
  wire \line_cnt[14]_i_2_n_0 ;
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
  wire [2:0]p_0_in;
  wire [7:0]p_1_in;
  wire [0:0]p_1_in_11;
  wire [0:0]p_2_in;
  wire [5:0]\pix_cnt_reg[11] ;
  wire \pix_cnt_reg[14] ;
  wire \pix_cnt_reg[8] ;
  wire pix_data_enable;
  wire pix_valid;
  wire pre_active_video;
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
  wire \reg_data[2]_i_1_n_0 ;
  wire \reg_data[3]_i_1_n_0 ;
  wire \reg_data[4]_i_1_n_0 ;
  wire \reg_data[5]_i_1_n_0 ;
  wire \reg_data[6]_i_1_n_0 ;
  wire \reg_data[7]_i_1_n_0 ;
  wire \reg_data[8]_i_1_n_0 ;
  wire \reg_data[9]_i_1_n_0 ;
  wire [7:0]\reg_di_reg[7]_0 ;
  wire [19:0]reg_pix_data;
  wire reg_pix_data_enable;
  wire [19:0]\reg_pix_data_reg[19]_0 ;
  wire [7:0]\reg_pix_di_reg[7]_0 ;
  wire \reg_pix_di_reg_n_0_[0] ;
  wire \reg_pix_di_reg_n_0_[1] ;
  wire \reg_pix_di_reg_n_0_[2] ;
  wire \reg_pix_di_reg_n_0_[6] ;
  wire \reg_pix_di_reg_n_0_[7] ;
  wire reg_pix_valid;
  wire reg_vsync_i_1_n_0;
  wire reg_vsync_i_2_n_0;
  wire reg_vsync_i_3_n_0;
  wire reg_vsync_reg_0;
  wire [0:0]reg_vsync_reg_1;
  wire [19:0]vid_data;

  LUT5 #(
    .INIT(32'h03020002)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 [3]),
        .I2(\axi_rdata_reg[0]_0 [4]),
        .I3(\axi_rdata_reg[0]_0 [2]),
        .I4(\axi_rdata[0]_i_3_n_0 ),
        .O(\axi_araddr_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(p_1_in_11),
        .I1(p_2_in),
        .I2(\axi_rdata_reg[0]_0 [1]),
        .I3(locked_reg_0),
        .I4(\axi_rdata_reg[0]_0 [0]),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(\axi_rdata[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \line_cnt[0]_i_1 
       (.I0(\line_cnt_reg[15] [0]),
        .I1(reg_vsync_reg_0),
        .I2(pre_vsync),
        .O(\line_cnt_reg[14] [0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    \line_cnt[10]_i_1 
       (.I0(reg_vsync_reg_0),
        .I1(pre_vsync),
        .I2(\line_cnt_reg[10] ),
        .I3(\line_cnt_reg[15] [10]),
        .O(\line_cnt_reg[14] [10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    \line_cnt[11]_i_1 
       (.I0(reg_vsync_reg_0),
        .I1(pre_vsync),
        .I2(\line_cnt_reg[11] ),
        .I3(\line_cnt_reg[15] [11]),
        .O(\line_cnt_reg[14] [11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB0BB0B00)) 
    \line_cnt[12]_i_1 
       (.I0(reg_vsync_reg_0),
        .I1(pre_vsync),
        .I2(\line_cnt_reg[11] ),
        .I3(\line_cnt_reg[15] [11]),
        .I4(\line_cnt_reg[15] [12]),
        .O(\line_cnt_reg[14] [12]));
  LUT5 #(
    .INIT(32'h51550400)) 
    \line_cnt[13]_i_1 
       (.I0(\line_cnt[14]_i_2_n_0 ),
        .I1(\line_cnt_reg[15] [11]),
        .I2(\line_cnt_reg[11] ),
        .I3(\line_cnt_reg[15] [12]),
        .I4(\line_cnt_reg[15] [13]),
        .O(\line_cnt_reg[14] [13]));
  LUT6 #(
    .INIT(64'h5515555500400000)) 
    \line_cnt[14]_i_1 
       (.I0(\line_cnt[14]_i_2_n_0 ),
        .I1(\line_cnt_reg[15] [13]),
        .I2(\line_cnt_reg[15] [12]),
        .I3(\line_cnt_reg[11] ),
        .I4(\line_cnt_reg[15] [11]),
        .I5(\line_cnt_reg[15] [14]),
        .O(\line_cnt_reg[14] [14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \line_cnt[14]_i_2 
       (.I0(pre_vsync),
        .I1(reg_ce_reg_0),
        .I2(reg_vsync_reg_0),
        .O(\line_cnt[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h4F004400)) 
    \line_cnt[15]_i_1 
       (.I0(reg_vsync_reg_0),
        .I1(pre_vsync),
        .I2(reg_active_video_reg_0),
        .I3(reg_ce_reg_0),
        .I4(pre_active_video),
        .O(reg_vsync_reg_1));
  LUT5 #(
    .INIT(32'h78007878)) 
    \line_cnt[15]_i_2 
       (.I0(\line_cnt_reg[15]_0 ),
        .I1(\line_cnt_reg[15] [14]),
        .I2(\line_cnt_reg[15] [15]),
        .I3(reg_vsync_reg_0),
        .I4(pre_vsync),
        .O(\line_cnt_reg[14] [15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6066)) 
    \line_cnt[1]_i_1 
       (.I0(\line_cnt_reg[15] [0]),
        .I1(\line_cnt_reg[15] [1]),
        .I2(reg_vsync_reg_0),
        .I3(pre_vsync),
        .O(\line_cnt_reg[14] [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h78007878)) 
    \line_cnt[2]_i_1 
       (.I0(\line_cnt_reg[15] [1]),
        .I1(\line_cnt_reg[15] [0]),
        .I2(\line_cnt_reg[15] [2]),
        .I3(reg_vsync_reg_0),
        .I4(pre_vsync),
        .O(\line_cnt_reg[14] [2]));
  LUT5 #(
    .INIT(32'h15554000)) 
    \line_cnt[3]_i_1 
       (.I0(\line_cnt[14]_i_2_n_0 ),
        .I1(\line_cnt_reg[15] [0]),
        .I2(\line_cnt_reg[15] [1]),
        .I3(\line_cnt_reg[15] [2]),
        .I4(\line_cnt_reg[15] [3]),
        .O(\line_cnt_reg[14] [3]));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \line_cnt[4]_i_1 
       (.I0(\line_cnt[14]_i_2_n_0 ),
        .I1(\line_cnt_reg[15] [2]),
        .I2(\line_cnt_reg[15] [1]),
        .I3(\line_cnt_reg[15] [0]),
        .I4(\line_cnt_reg[15] [3]),
        .I5(\line_cnt_reg[15] [4]),
        .O(\line_cnt_reg[14] [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    \line_cnt[5]_i_1 
       (.I0(reg_vsync_reg_0),
        .I1(pre_vsync),
        .I2(\line_cnt_reg[5] ),
        .I3(\line_cnt_reg[15] [5]),
        .O(\line_cnt_reg[14] [5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    \line_cnt[6]_i_1 
       (.I0(reg_vsync_reg_0),
        .I1(pre_vsync),
        .I2(\line_cnt_reg[6] ),
        .I3(\line_cnt_reg[15] [6]),
        .O(\line_cnt_reg[14] [6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB0BB0B00)) 
    \line_cnt[7]_i_1 
       (.I0(reg_vsync_reg_0),
        .I1(pre_vsync),
        .I2(\line_cnt_reg[6] ),
        .I3(\line_cnt_reg[15] [6]),
        .I4(\line_cnt_reg[15] [7]),
        .O(\line_cnt_reg[14] [7]));
  LUT5 #(
    .INIT(32'h51550400)) 
    \line_cnt[8]_i_1 
       (.I0(\line_cnt[14]_i_2_n_0 ),
        .I1(\line_cnt_reg[15] [6]),
        .I2(\line_cnt_reg[6] ),
        .I3(\line_cnt_reg[15] [7]),
        .I4(\line_cnt_reg[15] [8]),
        .O(\line_cnt_reg[14] [8]));
  LUT6 #(
    .INIT(64'h5155555504000000)) 
    \line_cnt[9]_i_1 
       (.I0(\line_cnt[14]_i_2_n_0 ),
        .I1(\line_cnt_reg[15] [7]),
        .I2(\line_cnt_reg[6] ),
        .I3(\line_cnt_reg[15] [6]),
        .I4(\line_cnt_reg[15] [8]),
        .I5(\line_cnt_reg[15] [9]),
        .O(\line_cnt_reg[14] [9]));
  FDCE locked_reg
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(1'b1),
        .Q(locked_reg_0));
  FDCE \locked_vc_reg[0] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(\reg_pix_di_reg[7]_0 [6]),
        .Q(locked_vc[0]));
  FDCE \locked_vc_reg[1] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(\reg_pix_di_reg[7]_0 [7]),
        .Q(locked_vc[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \mipi_di[7]_i_1 
       (.I0(reg_active_video_reg_0),
        .I1(reg_ce_reg_0),
        .I2(pre_active_video),
        .O(reg_active_video_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \mipi_width[15]_i_1 
       (.I0(reg_vsync_reg_0),
        .I1(reg_ce_reg_0),
        .I2(pre_vsync),
        .O(mipi_width0__0));
  LUT5 #(
    .INIT(32'h55150040)) 
    \pix_cnt[13]_i_1 
       (.I0(reg_active_video_reg_1),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(\pix_cnt_reg[14] ),
        .I4(Q[11]),
        .O(\pix_cnt_reg[11] [4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pix_cnt[14]_i_1 
       (.I0(reg_ce_reg_0),
        .I1(reg_active_video_reg_0),
        .O(reg_ce_reg_1));
  LUT6 #(
    .INIT(64'h00000000BFFF4000)) 
    \pix_cnt[14]_i_2 
       (.I0(\pix_cnt_reg[14] ),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[11]),
        .I4(Q[12]),
        .I5(reg_active_video_reg_1),
        .O(\pix_cnt_reg[11] [5]));
  LUT5 #(
    .INIT(32'h15554000)) 
    \pix_cnt[3]_i_1 
       (.I0(reg_active_video_reg_1),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\pix_cnt_reg[11] [0]));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \pix_cnt[4]_i_1 
       (.I0(reg_active_video_reg_1),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\pix_cnt_reg[11] [1]));
  LUT5 #(
    .INIT(32'h51550400)) 
    \pix_cnt[8]_i_1 
       (.I0(reg_active_video_reg_1),
        .I1(Q[5]),
        .I2(\pix_cnt_reg[8] ),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(\pix_cnt_reg[11] [2]));
  LUT6 #(
    .INIT(64'h5155555504000000)) 
    \pix_cnt[9]_i_1 
       (.I0(reg_active_video_reg_1),
        .I1(Q[6]),
        .I2(\pix_cnt_reg[8] ),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\pix_cnt_reg[11] [3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1454)) 
    reg_active_video_i_1
       (.I0(reg_ce_i_3_n_0),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .O(reg_active_video0));
  FDCE reg_active_video_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(reg_active_video0),
        .Q(reg_active_video_reg_0));
  LUT5 #(
    .INIT(32'hFFFFEAAF)) 
    reg_ce_i_1
       (.I0(reg_pix_data_enable),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(reg_ce_i_3_n_0),
        .O(reg_ce_i_1_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFFFFFF)) 
    reg_ce_i_3
       (.I0(locked_vc[1]),
        .I1(\reg_pix_di_reg_n_0_[7] ),
        .I2(locked_vc[0]),
        .I3(\reg_pix_di_reg_n_0_[6] ),
        .I4(reg_pix_valid),
        .I5(locked_reg_0),
        .O(reg_ce_i_3_n_0));
  FDPE reg_ce_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .D(reg_ce_i_1_n_0),
        .PRE(AR),
        .Q(reg_ce_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[0]_i_1 
       (.I0(reg_pix_data[0]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[10]_i_1 
       (.I0(reg_pix_data[10]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[11]_i_1 
       (.I0(reg_pix_data[11]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[12]_i_1 
       (.I0(reg_pix_data[12]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[13]_i_1 
       (.I0(reg_pix_data[13]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[14]_i_1 
       (.I0(reg_pix_data[14]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[15]_i_1 
       (.I0(reg_pix_data[15]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[16]_i_1 
       (.I0(reg_pix_data[16]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[17]_i_1 
       (.I0(reg_pix_data[17]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[18]_i_1 
       (.I0(reg_pix_data[18]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[19]_i_1 
       (.I0(reg_pix_data[19]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[1]_i_1 
       (.I0(reg_pix_data[1]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[2]_i_1 
       (.I0(reg_pix_data[2]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[3]_i_1 
       (.I0(reg_pix_data[3]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[4]_i_1 
       (.I0(reg_pix_data[4]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[5]_i_1 
       (.I0(reg_pix_data[5]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[6]_i_1 
       (.I0(reg_pix_data[6]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[7]_i_1 
       (.I0(reg_pix_data[7]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[8]_i_1 
       (.I0(reg_pix_data[8]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data[9]_i_1 
       (.I0(reg_pix_data[9]),
        .I1(reg_ce_i_3_n_0),
        .O(\reg_data[9]_i_1_n_0 ));
  FDCE \reg_data_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[0]_i_1_n_0 ),
        .Q(vid_data[0]));
  FDCE \reg_data_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[10]_i_1_n_0 ),
        .Q(vid_data[10]));
  FDCE \reg_data_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[11]_i_1_n_0 ),
        .Q(vid_data[11]));
  FDCE \reg_data_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[12]_i_1_n_0 ),
        .Q(vid_data[12]));
  FDCE \reg_data_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[13]_i_1_n_0 ),
        .Q(vid_data[13]));
  FDCE \reg_data_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[14]_i_1_n_0 ),
        .Q(vid_data[14]));
  FDCE \reg_data_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[15]_i_1_n_0 ),
        .Q(vid_data[15]));
  FDCE \reg_data_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[16]_i_1_n_0 ),
        .Q(vid_data[16]));
  FDCE \reg_data_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[17]_i_1_n_0 ),
        .Q(vid_data[17]));
  FDCE \reg_data_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[18]_i_1_n_0 ),
        .Q(vid_data[18]));
  FDCE \reg_data_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[19]_i_1_n_0 ),
        .Q(vid_data[19]));
  FDCE \reg_data_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[1]_i_1_n_0 ),
        .Q(vid_data[1]));
  FDCE \reg_data_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[2]_i_1_n_0 ),
        .Q(vid_data[2]));
  FDCE \reg_data_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[3]_i_1_n_0 ),
        .Q(vid_data[3]));
  FDCE \reg_data_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[4]_i_1_n_0 ),
        .Q(vid_data[4]));
  FDCE \reg_data_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[5]_i_1_n_0 ),
        .Q(vid_data[5]));
  FDCE \reg_data_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[6]_i_1_n_0 ),
        .Q(vid_data[6]));
  FDCE \reg_data_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[7]_i_1_n_0 ),
        .Q(vid_data[7]));
  FDCE \reg_data_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[8]_i_1_n_0 ),
        .Q(vid_data[8]));
  FDCE \reg_data_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_data[9]_i_1_n_0 ),
        .Q(vid_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
       (.I0(\reg_pix_di_reg_n_0_[1] ),
        .I1(reg_ce_i_3_n_0),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_di[2]_i_1 
       (.I0(\reg_pix_di_reg_n_0_[2] ),
        .I1(reg_ce_i_3_n_0),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_di[3]_i_1 
       (.I0(p_0_in[0]),
        .I1(reg_ce_i_3_n_0),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_di[4]_i_1 
       (.I0(p_0_in[1]),
        .I1(reg_ce_i_3_n_0),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_di[5]_i_1 
       (.I0(p_0_in[2]),
        .I1(reg_ce_i_3_n_0),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h8000000000008000)) 
    \reg_di[6]_i_1 
       (.I0(locked_reg_0),
        .I1(reg_pix_valid),
        .I2(\reg_pix_di_reg_n_0_[6] ),
        .I3(locked_vc[0]),
        .I4(\reg_pix_di_reg_n_0_[7] ),
        .I5(locked_vc[1]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h8008000000000000)) 
    \reg_di[7]_i_1 
       (.I0(locked_reg_0),
        .I1(reg_pix_valid),
        .I2(\reg_pix_di_reg_n_0_[6] ),
        .I3(locked_vc[0]),
        .I4(\reg_pix_di_reg_n_0_[7] ),
        .I5(locked_vc[1]),
        .O(p_1_in[7]));
  FDCE \reg_di_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[0]),
        .Q(\reg_di_reg[7]_0 [0]));
  FDCE \reg_di_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[1]),
        .Q(\reg_di_reg[7]_0 [1]));
  FDCE \reg_di_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[2]),
        .Q(\reg_di_reg[7]_0 [2]));
  FDCE \reg_di_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[3]),
        .Q(\reg_di_reg[7]_0 [3]));
  FDCE \reg_di_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[4]),
        .Q(\reg_di_reg[7]_0 [4]));
  FDCE \reg_di_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[5]),
        .Q(\reg_di_reg[7]_0 [5]));
  FDCE \reg_di_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[6]),
        .Q(\reg_di_reg[7]_0 [6]));
  FDCE \reg_di_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[7]),
        .Q(\reg_di_reg[7]_0 [7]));
  FDCE reg_pix_data_enable_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(pix_data_enable),
        .Q(reg_pix_data_enable));
  FDCE \reg_pix_data_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [0]),
        .Q(reg_pix_data[0]));
  FDCE \reg_pix_data_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [10]),
        .Q(reg_pix_data[10]));
  FDCE \reg_pix_data_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [11]),
        .Q(reg_pix_data[11]));
  FDCE \reg_pix_data_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [12]),
        .Q(reg_pix_data[12]));
  FDCE \reg_pix_data_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [13]),
        .Q(reg_pix_data[13]));
  FDCE \reg_pix_data_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [14]),
        .Q(reg_pix_data[14]));
  FDCE \reg_pix_data_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [15]),
        .Q(reg_pix_data[15]));
  FDCE \reg_pix_data_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [16]),
        .Q(reg_pix_data[16]));
  FDCE \reg_pix_data_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [17]),
        .Q(reg_pix_data[17]));
  FDCE \reg_pix_data_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [18]),
        .Q(reg_pix_data[18]));
  FDCE \reg_pix_data_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [19]),
        .Q(reg_pix_data[19]));
  FDCE \reg_pix_data_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [1]),
        .Q(reg_pix_data[1]));
  FDCE \reg_pix_data_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [2]),
        .Q(reg_pix_data[2]));
  FDCE \reg_pix_data_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [3]),
        .Q(reg_pix_data[3]));
  FDCE \reg_pix_data_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [4]),
        .Q(reg_pix_data[4]));
  FDCE \reg_pix_data_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [5]),
        .Q(reg_pix_data[5]));
  FDCE \reg_pix_data_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [6]),
        .Q(reg_pix_data[6]));
  FDCE \reg_pix_data_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [7]),
        .Q(reg_pix_data[7]));
  FDCE \reg_pix_data_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [8]),
        .Q(reg_pix_data[8]));
  FDCE \reg_pix_data_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_data_reg[19]_0 [9]),
        .Q(reg_pix_data[9]));
  FDCE \reg_pix_di_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_di_reg[7]_0 [0]),
        .Q(\reg_pix_di_reg_n_0_[0] ));
  FDCE \reg_pix_di_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_di_reg[7]_0 [1]),
        .Q(\reg_pix_di_reg_n_0_[1] ));
  FDCE \reg_pix_di_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_di_reg[7]_0 [2]),
        .Q(\reg_pix_di_reg_n_0_[2] ));
  FDCE \reg_pix_di_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_di_reg[7]_0 [3]),
        .Q(p_0_in[0]));
  FDCE \reg_pix_di_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_di_reg[7]_0 [4]),
        .Q(p_0_in[1]));
  FDCE \reg_pix_di_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_di_reg[7]_0 [5]),
        .Q(p_0_in[2]));
  FDCE \reg_pix_di_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_di_reg[7]_0 [6]),
        .Q(\reg_pix_di_reg_n_0_[6] ));
  FDCE \reg_pix_di_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\reg_pix_di_reg[7]_0 [7]),
        .Q(\reg_pix_di_reg_n_0_[7] ));
  FDCE reg_pix_valid_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(pix_valid),
        .Q(reg_pix_valid));
  LUT5 #(
    .INIT(32'hFEFF02FF)) 
    reg_vsync_i_1
       (.I0(\reg_pix_di_reg_n_0_[0] ),
        .I1(reg_vsync_i_2_n_0),
        .I2(reg_vsync_i_3_n_0),
        .I3(locked_reg_0),
        .I4(reg_vsync_reg_0),
        .O(reg_vsync_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    reg_vsync_i_2
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(\reg_pix_di_reg_n_0_[2] ),
        .I3(\reg_pix_di_reg_n_0_[1] ),
        .I4(p_0_in[0]),
        .O(reg_vsync_i_2_n_0));
  LUT5 #(
    .INIT(32'h7DFFFF7D)) 
    reg_vsync_i_3
       (.I0(reg_pix_valid),
        .I1(\reg_pix_di_reg_n_0_[6] ),
        .I2(locked_vc[0]),
        .I3(\reg_pix_di_reg_n_0_[7] ),
        .I4(locked_vc[1]),
        .O(reg_vsync_i_3_n_0));
  FDPE reg_vsync_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .D(reg_vsync_i_1_n_0),
        .PRE(AR),
        .Q(reg_vsync_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__csi2_raw10_unpack
   (raw10_pix_valid,
    raw10_pix_data_enable,
    D,
    reg_pix_valid_reg_0,
    \ready_delay_reg[1]_0 ,
    clk_hs_byte,
    \reg_pix_di_reg[3]_0 ,
    \reg_pix_data_reg[15]_0 ,
    \reg_pix_di_reg[7]_0 ,
    Q,
    pkt_valid,
    \last_size_reg[2]_0 ,
    \last_data_reg[31]_0 ,
    \di_reg_reg[7]_0 ,
    E);
  output raw10_pix_valid;
  output raw10_pix_data_enable;
  output [5:0]D;
  output [19:0]reg_pix_valid_reg_0;
  output [0:0]\ready_delay_reg[1]_0 ;
  input clk_hs_byte;
  input \reg_pix_di_reg[3]_0 ;
  input [15:0]\reg_pix_data_reg[15]_0 ;
  input \reg_pix_di_reg[7]_0 ;
  input [5:0]Q;
  input pkt_valid;
  input \last_size_reg[2]_0 ;
  input [15:0]\last_data_reg[31]_0 ;
  input [2:0]\di_reg_reg[7]_0 ;
  input [0:0]E;

  wire [5:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire clk_hs_byte;
  wire [7:3]di_reg;
  wire [2:0]\di_reg_reg[7]_0 ;
  wire \last_data[0]_i_1_n_0 ;
  wire \last_data[10]_i_1_n_0 ;
  wire \last_data[11]_i_1_n_0 ;
  wire \last_data[12]_i_1_n_0 ;
  wire \last_data[13]_i_1_n_0 ;
  wire \last_data[14]_i_1_n_0 ;
  wire \last_data[15]_i_1_n_0 ;
  wire \last_data[1]_i_1_n_0 ;
  wire \last_data[2]_i_1_n_0 ;
  wire \last_data[3]_i_1_n_0 ;
  wire \last_data[4]_i_1_n_0 ;
  wire \last_data[5]_i_1_n_0 ;
  wire \last_data[6]_i_1_n_0 ;
  wire \last_data[7]_i_1_n_0 ;
  wire \last_data[8]_i_1_n_0 ;
  wire \last_data[9]_i_1_n_0 ;
  wire [15:0]\last_data_reg[31]_0 ;
  wire \last_data_reg_n_0_[0] ;
  wire \last_data_reg_n_0_[10] ;
  wire \last_data_reg_n_0_[11] ;
  wire \last_data_reg_n_0_[12] ;
  wire \last_data_reg_n_0_[13] ;
  wire \last_data_reg_n_0_[14] ;
  wire \last_data_reg_n_0_[15] ;
  wire \last_data_reg_n_0_[1] ;
  wire \last_data_reg_n_0_[2] ;
  wire \last_data_reg_n_0_[3] ;
  wire \last_data_reg_n_0_[4] ;
  wire \last_data_reg_n_0_[5] ;
  wire \last_data_reg_n_0_[6] ;
  wire \last_data_reg_n_0_[7] ;
  wire \last_data_reg_n_0_[8] ;
  wire \last_data_reg_n_0_[9] ;
  wire \last_pix_idx[1]_i_1_n_0 ;
  wire \last_pix_idx_reg_n_0_[1] ;
  wire \last_size[2]_i_1_n_0 ;
  wire [2:0]last_size_reg;
  wire \last_size_reg[2]_0 ;
  wire p_0_in;
  wire [2:0]p_0_in__0;
  wire [15:0]p_1_in;
  wire [19:0]pixel_data;
  wire \pixel_data[0]_i_1_n_0 ;
  wire \pixel_data[0]_i_3_n_0 ;
  wire \pixel_data[0]_i_4_n_0 ;
  wire \pixel_data[0]_i_5_n_0 ;
  wire \pixel_data[0]_i_6_n_0 ;
  wire \pixel_data[10]_i_1_n_0 ;
  wire \pixel_data[10]_i_2_n_0 ;
  wire \pixel_data[10]_i_3_n_0 ;
  wire \pixel_data[10]_i_5_n_0 ;
  wire \pixel_data[10]_i_6_n_0 ;
  wire \pixel_data[11]_i_1_n_0 ;
  wire \pixel_data[11]_i_2_n_0 ;
  wire \pixel_data[11]_i_3_n_0 ;
  wire \pixel_data[11]_i_6_n_0 ;
  wire \pixel_data[11]_i_7_n_0 ;
  wire \pixel_data[11]_i_8_n_0 ;
  wire \pixel_data[11]_i_9_n_0 ;
  wire \pixel_data[12]_i_1_n_0 ;
  wire \pixel_data[12]_i_2_n_0 ;
  wire \pixel_data[12]_i_3_n_0 ;
  wire \pixel_data[13]_i_1_n_0 ;
  wire \pixel_data[13]_i_2_n_0 ;
  wire \pixel_data[13]_i_3_n_0 ;
  wire \pixel_data[14]_i_1_n_0 ;
  wire \pixel_data[14]_i_2_n_0 ;
  wire \pixel_data[14]_i_3_n_0 ;
  wire \pixel_data[15]_i_1_n_0 ;
  wire \pixel_data[15]_i_2_n_0 ;
  wire \pixel_data[15]_i_3_n_0 ;
  wire \pixel_data[16]_i_1_n_0 ;
  wire \pixel_data[16]_i_2_n_0 ;
  wire \pixel_data[16]_i_3_n_0 ;
  wire \pixel_data[17]_i_1_n_0 ;
  wire \pixel_data[17]_i_2_n_0 ;
  wire \pixel_data[17]_i_3_n_0 ;
  wire \pixel_data[18]_i_1_n_0 ;
  wire \pixel_data[18]_i_2_n_0 ;
  wire \pixel_data[18]_i_3_n_0 ;
  wire \pixel_data[19]_i_1_n_0 ;
  wire \pixel_data[19]_i_2_n_0 ;
  wire \pixel_data[19]_i_3_n_0 ;
  wire \pixel_data[1]_i_1_n_0 ;
  wire \pixel_data[1]_i_3_n_0 ;
  wire \pixel_data[1]_i_4_n_0 ;
  wire \pixel_data[1]_i_5_n_0 ;
  wire \pixel_data[1]_i_6_n_0 ;
  wire \pixel_data[1]_i_7_n_0 ;
  wire \pixel_data[1]_i_8_n_0 ;
  wire \pixel_data[2]_i_1_n_0 ;
  wire \pixel_data[2]_i_2_n_0 ;
  wire \pixel_data[3]_i_1_n_0 ;
  wire \pixel_data[3]_i_2_n_0 ;
  wire \pixel_data[4]_i_1_n_0 ;
  wire \pixel_data[4]_i_2_n_0 ;
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
  wire \pixel_data_reg[0]_i_2_n_0 ;
  wire \pixel_data_reg[10]_i_4_n_0 ;
  wire \pixel_data_reg[11]_i_4_n_0 ;
  wire \pixel_data_reg[11]_i_5_n_12 ;
  wire \pixel_data_reg[11]_i_5_n_13 ;
  wire \pixel_data_reg[11]_i_5_n_14 ;
  wire \pixel_data_reg[11]_i_5_n_15 ;
  wire \pixel_data_reg[11]_i_5_n_5 ;
  wire \pixel_data_reg[11]_i_5_n_6 ;
  wire \pixel_data_reg[11]_i_5_n_7 ;
  wire \pixel_data_reg[1]_i_2_n_0 ;
  wire pixel_enable;
  wire pixel_enable3_out;
  wire pkt_valid;
  wire raw10_pix_data_enable;
  wire raw10_pix_valid;
  wire [0:0]\ready_delay_reg[1]_0 ;
  wire \ready_delay_reg_n_0_[0] ;
  wire [19:0]reg_pix_data;
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
  wire \reg_pix_data[2]_i_1_n_0 ;
  wire \reg_pix_data[3]_i_1_n_0 ;
  wire \reg_pix_data[4]_i_1_n_0 ;
  wire \reg_pix_data[5]_i_1_n_0 ;
  wire \reg_pix_data[6]_i_1_n_0 ;
  wire \reg_pix_data[7]_i_1_n_0 ;
  wire \reg_pix_data[8]_i_1_n_0 ;
  wire \reg_pix_data[9]_i_1_n_0 ;
  wire reg_pix_data_enable0;
  wire [15:0]\reg_pix_data_reg[15]_0 ;
  wire [7:3]reg_pix_di;
  wire \reg_pix_di[3]_i_1_n_0 ;
  wire \reg_pix_di[6]_i_1_n_0 ;
  wire \reg_pix_di[7]_i_1_n_0 ;
  wire \reg_pix_di_reg[3]_0 ;
  wire \reg_pix_di_reg[7]_0 ;
  wire reg_pix_valid0;
  wire [19:0]reg_pix_valid_reg_0;
  wire [7:3]\NLW_pixel_data_reg[11]_i_5_CO_UNCONNECTED ;
  wire [7:4]\NLW_pixel_data_reg[11]_i_5_O_UNCONNECTED ;

  FDCE \di_reg_reg[3] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\di_reg_reg[7]_0 [0]),
        .Q(di_reg[3]));
  FDCE \di_reg_reg[6] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\di_reg_reg[7]_0 [1]),
        .Q(di_reg[6]));
  FDCE \di_reg_reg[7] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\di_reg_reg[7]_0 [2]),
        .Q(di_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[0]_i_1 
       (.I0(p_1_in[0]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[10]_i_1 
       (.I0(p_1_in[10]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[11]_i_1 
       (.I0(p_1_in[11]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[12]_i_1 
       (.I0(p_1_in[12]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[13]_i_1 
       (.I0(p_1_in[13]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[14]_i_1 
       (.I0(p_1_in[14]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[15]_i_1 
       (.I0(p_1_in[15]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[1]_i_1 
       (.I0(p_1_in[1]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[2]_i_1 
       (.I0(p_1_in[2]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[3]_i_1 
       (.I0(p_1_in[3]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[4]_i_1 
       (.I0(p_1_in[4]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[5]_i_1 
       (.I0(p_1_in[5]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[6]_i_1 
       (.I0(p_1_in[6]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[7]_i_1 
       (.I0(p_1_in[7]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[8]_i_1 
       (.I0(p_1_in[8]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_data[9]_i_1 
       (.I0(p_1_in[9]),
        .I1(\last_size_reg[2]_0 ),
        .O(\last_data[9]_i_1_n_0 ));
  FDCE \last_data_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[0]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[0] ));
  FDCE \last_data_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[10]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[10] ));
  FDCE \last_data_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[11]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[11] ));
  FDCE \last_data_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[12]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[12] ));
  FDCE \last_data_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[13]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[13] ));
  FDCE \last_data_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[14]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[14] ));
  FDCE \last_data_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[15]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[15] ));
  FDCE \last_data_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [0]),
        .Q(p_1_in[0]));
  FDCE \last_data_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [1]),
        .Q(p_1_in[1]));
  FDCE \last_data_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [2]),
        .Q(p_1_in[2]));
  FDCE \last_data_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [3]),
        .Q(p_1_in[3]));
  FDCE \last_data_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[1]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[1] ));
  FDCE \last_data_reg[20] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [4]),
        .Q(p_1_in[4]));
  FDCE \last_data_reg[21] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [5]),
        .Q(p_1_in[5]));
  FDCE \last_data_reg[22] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [6]),
        .Q(p_1_in[6]));
  FDCE \last_data_reg[23] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [7]),
        .Q(p_1_in[7]));
  FDCE \last_data_reg[24] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [8]),
        .Q(p_1_in[8]));
  FDCE \last_data_reg[25] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [9]),
        .Q(p_1_in[9]));
  FDCE \last_data_reg[26] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [10]),
        .Q(p_1_in[10]));
  FDCE \last_data_reg[27] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [11]),
        .Q(p_1_in[11]));
  FDCE \last_data_reg[28] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [12]),
        .Q(p_1_in[12]));
  FDCE \last_data_reg[29] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [13]),
        .Q(p_1_in[13]));
  FDCE \last_data_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[2]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[2] ));
  FDCE \last_data_reg[30] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [14]),
        .Q(p_1_in[14]));
  FDCE \last_data_reg[31] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data_reg[31]_0 [15]),
        .Q(p_1_in[15]));
  FDCE \last_data_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[3]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[3] ));
  FDCE \last_data_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[4]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[4] ));
  FDCE \last_data_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[5]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[5] ));
  FDCE \last_data_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[6]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[6] ));
  FDCE \last_data_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[7]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[7] ));
  FDCE \last_data_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[8]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[8] ));
  FDCE \last_data_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_data[9]_i_1_n_0 ),
        .Q(\last_data_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h000000EA)) 
    \last_pix_idx[1]_i_1 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .I3(\last_size_reg[2]_0 ),
        .I4(\last_pix_idx_reg_n_0_[1] ),
        .O(\last_pix_idx[1]_i_1_n_0 ));
  FDCE \last_pix_idx_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\last_pix_idx[1]_i_1_n_0 ),
        .Q(\last_pix_idx_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0414)) 
    \last_size[0]_i_1 
       (.I0(\last_size_reg[2]_0 ),
        .I1(last_size_reg[2]),
        .I2(last_size_reg[0]),
        .I3(last_size_reg[1]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h5015)) 
    \last_size[1]_i_1 
       (.I0(\last_size_reg[2]_0 ),
        .I1(last_size_reg[2]),
        .I2(last_size_reg[0]),
        .I3(last_size_reg[1]),
        .O(p_0_in__0[1]));
  LUT5 #(
    .INIT(32'hEEEEEFFF)) 
    \last_size[2]_i_1 
       (.I0(\last_pix_idx_reg_n_0_[1] ),
        .I1(\last_size_reg[2]_0 ),
        .I2(last_size_reg[1]),
        .I3(last_size_reg[0]),
        .I4(last_size_reg[2]),
        .O(\last_size[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \last_size[2]_i_2 
       (.I0(\last_size_reg[2]_0 ),
        .I1(last_size_reg[1]),
        .I2(last_size_reg[0]),
        .I3(last_size_reg[2]),
        .O(p_0_in__0[2]));
  FDCE \last_size_reg[0] 
       (.C(clk_hs_byte),
        .CE(\last_size[2]_i_1_n_0 ),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(p_0_in__0[0]),
        .Q(last_size_reg[0]));
  FDCE \last_size_reg[1] 
       (.C(clk_hs_byte),
        .CE(\last_size[2]_i_1_n_0 ),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(p_0_in__0[1]),
        .Q(last_size_reg[1]));
  FDCE \last_size_reg[2] 
       (.C(clk_hs_byte),
        .CE(\last_size[2]_i_1_n_0 ),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(p_0_in__0[2]),
        .Q(last_size_reg[2]));
  LUT5 #(
    .INIT(32'h53005000)) 
    \pixel_data[0]_i_1 
       (.I0(\pixel_data_reg[0]_i_2_n_0 ),
        .I1(\pixel_data[0]_i_3_n_0 ),
        .I2(\last_pix_idx_reg_n_0_[1] ),
        .I3(pixel_enable3_out),
        .I4(\pixel_data[0]_i_4_n_0 ),
        .O(\pixel_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \pixel_data[0]_i_3 
       (.I0(last_size_reg[0]),
        .I1(\last_data_reg_n_0_[8] ),
        .I2(\pixel_data[1]_i_7_n_0 ),
        .I3(\reg_pix_data_reg[15]_0 [8]),
        .I4(\pixel_data[1]_i_8_n_0 ),
        .I5(p_1_in[8]),
        .O(\pixel_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    \pixel_data[0]_i_4 
       (.I0(last_size_reg[0]),
        .I1(\last_data_reg_n_0_[0] ),
        .I2(\pixel_data[1]_i_7_n_0 ),
        .I3(\reg_pix_data_reg[15]_0 [0]),
        .I4(\pixel_data[1]_i_8_n_0 ),
        .I5(p_1_in[0]),
        .O(\pixel_data[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00FF4747)) 
    \pixel_data[0]_i_5 
       (.I0(\reg_pix_data_reg[15]_0 [4]),
        .I1(\pixel_data[1]_i_7_n_0 ),
        .I2(\last_data_reg_n_0_[4] ),
        .I3(p_1_in[4]),
        .I4(\pixel_data[1]_i_8_n_0 ),
        .O(\pixel_data[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00FF4747)) 
    \pixel_data[0]_i_6 
       (.I0(\reg_pix_data_reg[15]_0 [12]),
        .I1(\pixel_data[1]_i_7_n_0 ),
        .I2(\last_data_reg_n_0_[12] ),
        .I3(p_1_in[12]),
        .I4(\pixel_data[1]_i_8_n_0 ),
        .O(\pixel_data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8B800000000)) 
    \pixel_data[10]_i_1 
       (.I0(\pixel_data[10]_i_2_n_0 ),
        .I1(\pixel_data_reg[11]_i_5_n_14 ),
        .I2(\pixel_data[10]_i_3_n_0 ),
        .I3(\pixel_data_reg[10]_i_4_n_0 ),
        .I4(\pixel_data_reg[11]_i_5_n_15 ),
        .I5(pixel_enable3_out),
        .O(\pixel_data[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pixel_data[10]_i_2 
       (.I0(p_1_in[10]),
        .I1(\pixel_data_reg[11]_i_5_n_13 ),
        .I2(\reg_pix_data_reg[15]_0 [10]),
        .I3(\pixel_data_reg[11]_i_5_n_12 ),
        .I4(\last_data_reg_n_0_[10] ),
        .O(\pixel_data[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pixel_data[10]_i_3 
       (.I0(p_1_in[2]),
        .I1(\pixel_data_reg[11]_i_5_n_13 ),
        .I2(\reg_pix_data_reg[15]_0 [2]),
        .I3(\pixel_data_reg[11]_i_5_n_12 ),
        .I4(\last_data_reg_n_0_[2] ),
        .O(\pixel_data[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pixel_data[10]_i_5 
       (.I0(p_1_in[6]),
        .I1(\pixel_data_reg[11]_i_5_n_13 ),
        .I2(\reg_pix_data_reg[15]_0 [6]),
        .I3(\pixel_data_reg[11]_i_5_n_12 ),
        .I4(\last_data_reg_n_0_[6] ),
        .O(\pixel_data[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pixel_data[10]_i_6 
       (.I0(p_1_in[14]),
        .I1(\pixel_data_reg[11]_i_5_n_13 ),
        .I2(\reg_pix_data_reg[15]_0 [14]),
        .I3(\pixel_data_reg[11]_i_5_n_12 ),
        .I4(\last_data_reg_n_0_[14] ),
        .O(\pixel_data[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF0EE0000)) 
    \pixel_data[11]_i_1 
       (.I0(\pixel_data[11]_i_2_n_0 ),
        .I1(\pixel_data[11]_i_3_n_0 ),
        .I2(\pixel_data_reg[11]_i_4_n_0 ),
        .I3(\pixel_data_reg[11]_i_5_n_15 ),
        .I4(pixel_enable3_out),
        .O(\pixel_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \pixel_data[11]_i_2 
       (.I0(\last_data_reg_n_0_[11] ),
        .I1(\pixel_data_reg[11]_i_5_n_12 ),
        .I2(\reg_pix_data_reg[15]_0 [11]),
        .I3(\pixel_data_reg[11]_i_5_n_13 ),
        .I4(p_1_in[11]),
        .I5(\pixel_data_reg[11]_i_5_n_14 ),
        .O(\pixel_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \pixel_data[11]_i_3 
       (.I0(\last_data_reg_n_0_[3] ),
        .I1(\pixel_data_reg[11]_i_5_n_12 ),
        .I2(\reg_pix_data_reg[15]_0 [3]),
        .I3(\pixel_data_reg[11]_i_5_n_13 ),
        .I4(p_1_in[3]),
        .I5(\pixel_data_reg[11]_i_5_n_14 ),
        .O(\pixel_data[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pixel_data[11]_i_6 
       (.I0(p_1_in[7]),
        .I1(\pixel_data_reg[11]_i_5_n_13 ),
        .I2(\reg_pix_data_reg[15]_0 [7]),
        .I3(\pixel_data_reg[11]_i_5_n_12 ),
        .I4(\last_data_reg_n_0_[7] ),
        .O(\pixel_data[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pixel_data[11]_i_7 
       (.I0(p_1_in[15]),
        .I1(\pixel_data_reg[11]_i_5_n_13 ),
        .I2(\reg_pix_data_reg[15]_0 [15]),
        .I3(\pixel_data_reg[11]_i_5_n_12 ),
        .I4(\last_data_reg_n_0_[15] ),
        .O(\pixel_data[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9556)) 
    \pixel_data[11]_i_8 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .I3(\last_pix_idx_reg_n_0_[1] ),
        .O(\pixel_data[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \pixel_data[11]_i_9 
       (.I0(last_size_reg[0]),
        .I1(\last_pix_idx_reg_n_0_[1] ),
        .I2(last_size_reg[1]),
        .O(\pixel_data[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00EA0000)) 
    \pixel_data[12]_i_1 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .I3(\last_size_reg[2]_0 ),
        .I4(\pixel_data[12]_i_2_n_0 ),
        .O(\pixel_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \pixel_data[12]_i_2 
       (.I0(\last_data_reg_n_0_[8] ),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg_n_0_[0] ),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[12]_i_3_n_0 ),
        .O(\pixel_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[12]_i_3 
       (.I0(p_1_in[0]),
        .I1(p_1_in[8]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[15]_0 [0]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [8]),
        .O(\pixel_data[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00EA0000)) 
    \pixel_data[13]_i_1 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .I3(\last_size_reg[2]_0 ),
        .I4(\pixel_data[13]_i_2_n_0 ),
        .O(\pixel_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \pixel_data[13]_i_2 
       (.I0(\last_data_reg_n_0_[9] ),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg_n_0_[1] ),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[13]_i_3_n_0 ),
        .O(\pixel_data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[13]_i_3 
       (.I0(p_1_in[1]),
        .I1(p_1_in[9]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[15]_0 [1]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [9]),
        .O(\pixel_data[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00EA0000)) 
    \pixel_data[14]_i_1 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .I3(\last_size_reg[2]_0 ),
        .I4(\pixel_data[14]_i_2_n_0 ),
        .O(\pixel_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \pixel_data[14]_i_2 
       (.I0(\last_data_reg_n_0_[10] ),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg_n_0_[2] ),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[14]_i_3_n_0 ),
        .O(\pixel_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[14]_i_3 
       (.I0(p_1_in[2]),
        .I1(p_1_in[10]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[15]_0 [2]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [10]),
        .O(\pixel_data[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00EA0000)) 
    \pixel_data[15]_i_1 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .I3(\last_size_reg[2]_0 ),
        .I4(\pixel_data[15]_i_2_n_0 ),
        .O(\pixel_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \pixel_data[15]_i_2 
       (.I0(\last_data_reg_n_0_[11] ),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg_n_0_[3] ),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[15]_i_3_n_0 ),
        .O(\pixel_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[15]_i_3 
       (.I0(p_1_in[3]),
        .I1(p_1_in[11]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[15]_0 [3]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [11]),
        .O(\pixel_data[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00EA0000)) 
    \pixel_data[16]_i_1 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .I3(\last_size_reg[2]_0 ),
        .I4(\pixel_data[16]_i_2_n_0 ),
        .O(\pixel_data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \pixel_data[16]_i_2 
       (.I0(\last_data_reg_n_0_[12] ),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg_n_0_[4] ),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[16]_i_3_n_0 ),
        .O(\pixel_data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[16]_i_3 
       (.I0(p_1_in[4]),
        .I1(p_1_in[12]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[15]_0 [4]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [12]),
        .O(\pixel_data[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00EA0000)) 
    \pixel_data[17]_i_1 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .I3(\last_size_reg[2]_0 ),
        .I4(\pixel_data[17]_i_2_n_0 ),
        .O(\pixel_data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \pixel_data[17]_i_2 
       (.I0(\last_data_reg_n_0_[13] ),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg_n_0_[5] ),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[17]_i_3_n_0 ),
        .O(\pixel_data[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[17]_i_3 
       (.I0(p_1_in[5]),
        .I1(p_1_in[13]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[15]_0 [5]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [13]),
        .O(\pixel_data[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00EA0000)) 
    \pixel_data[18]_i_1 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .I3(\last_size_reg[2]_0 ),
        .I4(\pixel_data[18]_i_2_n_0 ),
        .O(\pixel_data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \pixel_data[18]_i_2 
       (.I0(\last_data_reg_n_0_[14] ),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg_n_0_[6] ),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[18]_i_3_n_0 ),
        .O(\pixel_data[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[18]_i_3 
       (.I0(p_1_in[6]),
        .I1(p_1_in[14]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[15]_0 [6]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [14]),
        .O(\pixel_data[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00EA0000)) 
    \pixel_data[19]_i_1 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .I3(\last_size_reg[2]_0 ),
        .I4(\pixel_data[19]_i_2_n_0 ),
        .O(\pixel_data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \pixel_data[19]_i_2 
       (.I0(\last_data_reg_n_0_[15] ),
        .I1(last_size_reg[0]),
        .I2(\last_data_reg_n_0_[7] ),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[2]),
        .I5(\pixel_data[19]_i_3_n_0 ),
        .O(\pixel_data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[19]_i_3 
       (.I0(p_1_in[7]),
        .I1(p_1_in[15]),
        .I2(last_size_reg[1]),
        .I3(\reg_pix_data_reg[15]_0 [7]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [15]),
        .O(\pixel_data[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h70404040)) 
    \pixel_data[1]_i_1 
       (.I0(\pixel_data_reg[1]_i_2_n_0 ),
        .I1(\last_pix_idx_reg_n_0_[1] ),
        .I2(pixel_enable3_out),
        .I3(\pixel_data[1]_i_3_n_0 ),
        .I4(\pixel_data[1]_i_4_n_0 ),
        .O(\pixel_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDF5FFF555)) 
    \pixel_data[1]_i_3 
       (.I0(last_size_reg[0]),
        .I1(p_1_in[9]),
        .I2(\reg_pix_data_reg[15]_0 [9]),
        .I3(\pixel_data[1]_i_7_n_0 ),
        .I4(\last_data_reg_n_0_[9] ),
        .I5(\pixel_data[1]_i_8_n_0 ),
        .O(\pixel_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    \pixel_data[1]_i_4 
       (.I0(last_size_reg[0]),
        .I1(\last_data_reg_n_0_[1] ),
        .I2(\pixel_data[1]_i_7_n_0 ),
        .I3(\reg_pix_data_reg[15]_0 [1]),
        .I4(\pixel_data[1]_i_8_n_0 ),
        .I5(p_1_in[1]),
        .O(\pixel_data[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00FF4747)) 
    \pixel_data[1]_i_5 
       (.I0(\reg_pix_data_reg[15]_0 [5]),
        .I1(\pixel_data[1]_i_7_n_0 ),
        .I2(\last_data_reg_n_0_[5] ),
        .I3(p_1_in[5]),
        .I4(\pixel_data[1]_i_8_n_0 ),
        .O(\pixel_data[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \pixel_data[1]_i_6 
       (.I0(\reg_pix_data_reg[15]_0 [13]),
        .I1(\pixel_data[1]_i_7_n_0 ),
        .I2(\last_data_reg_n_0_[13] ),
        .I3(\pixel_data[1]_i_8_n_0 ),
        .I4(p_1_in[13]),
        .O(\pixel_data[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h9556)) 
    \pixel_data[1]_i_7 
       (.I0(last_size_reg[2]),
        .I1(last_size_reg[0]),
        .I2(last_size_reg[1]),
        .I3(\last_pix_idx_reg_n_0_[1] ),
        .O(\pixel_data[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pixel_data[1]_i_8 
       (.I0(last_size_reg[0]),
        .I1(\last_pix_idx_reg_n_0_[1] ),
        .I2(last_size_reg[1]),
        .O(\pixel_data[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0400005004000000)) 
    \pixel_data[2]_i_1 
       (.I0(\last_size_reg[2]_0 ),
        .I1(\pixel_data[2]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[0]),
        .I5(\last_data_reg_n_0_[0] ),
        .O(\pixel_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[2]_i_2 
       (.I0(\last_data_reg_n_0_[8] ),
        .I1(p_1_in[0]),
        .I2(last_size_reg[1]),
        .I3(p_1_in[8]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [0]),
        .O(\pixel_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400005004000000)) 
    \pixel_data[3]_i_1 
       (.I0(\last_size_reg[2]_0 ),
        .I1(\pixel_data[3]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[0]),
        .I5(\last_data_reg_n_0_[1] ),
        .O(\pixel_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[3]_i_2 
       (.I0(\last_data_reg_n_0_[9] ),
        .I1(p_1_in[1]),
        .I2(last_size_reg[1]),
        .I3(p_1_in[9]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [1]),
        .O(\pixel_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400005004000000)) 
    \pixel_data[4]_i_1 
       (.I0(\last_size_reg[2]_0 ),
        .I1(\pixel_data[4]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[0]),
        .I5(\last_data_reg_n_0_[2] ),
        .O(\pixel_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[4]_i_2 
       (.I0(\last_data_reg_n_0_[10] ),
        .I1(p_1_in[2]),
        .I2(last_size_reg[1]),
        .I3(p_1_in[10]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [2]),
        .O(\pixel_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400005004000000)) 
    \pixel_data[5]_i_1 
       (.I0(\last_size_reg[2]_0 ),
        .I1(\pixel_data[5]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[0]),
        .I5(\last_data_reg_n_0_[3] ),
        .O(\pixel_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[5]_i_2 
       (.I0(\last_data_reg_n_0_[11] ),
        .I1(p_1_in[3]),
        .I2(last_size_reg[1]),
        .I3(p_1_in[11]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [3]),
        .O(\pixel_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400005004000000)) 
    \pixel_data[6]_i_1 
       (.I0(\last_size_reg[2]_0 ),
        .I1(\pixel_data[6]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[0]),
        .I5(\last_data_reg_n_0_[4] ),
        .O(\pixel_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[6]_i_2 
       (.I0(\last_data_reg_n_0_[12] ),
        .I1(p_1_in[4]),
        .I2(last_size_reg[1]),
        .I3(p_1_in[12]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [4]),
        .O(\pixel_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400005004000000)) 
    \pixel_data[7]_i_1 
       (.I0(\last_size_reg[2]_0 ),
        .I1(\pixel_data[7]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[0]),
        .I5(\last_data_reg_n_0_[5] ),
        .O(\pixel_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[7]_i_2 
       (.I0(\last_data_reg_n_0_[13] ),
        .I1(p_1_in[5]),
        .I2(last_size_reg[1]),
        .I3(p_1_in[13]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [5]),
        .O(\pixel_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400005004000000)) 
    \pixel_data[8]_i_1 
       (.I0(\last_size_reg[2]_0 ),
        .I1(\pixel_data[8]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[0]),
        .I5(\last_data_reg_n_0_[6] ),
        .O(\pixel_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[8]_i_2 
       (.I0(\last_data_reg_n_0_[14] ),
        .I1(p_1_in[6]),
        .I2(last_size_reg[1]),
        .I3(p_1_in[14]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [6]),
        .O(\pixel_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400005004000000)) 
    \pixel_data[9]_i_1 
       (.I0(\last_size_reg[2]_0 ),
        .I1(\pixel_data[9]_i_2_n_0 ),
        .I2(last_size_reg[2]),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[0]),
        .I5(\last_data_reg_n_0_[7] ),
        .O(\pixel_data[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data[9]_i_2 
       (.I0(\last_data_reg_n_0_[15] ),
        .I1(p_1_in[7]),
        .I2(last_size_reg[1]),
        .I3(p_1_in[15]),
        .I4(last_size_reg[0]),
        .I5(\reg_pix_data_reg[15]_0 [7]),
        .O(\pixel_data[9]_i_2_n_0 ));
  FDCE \pixel_data_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[0]_i_1_n_0 ),
        .Q(pixel_data[0]));
  MUXF7 \pixel_data_reg[0]_i_2 
       (.I0(\pixel_data[0]_i_5_n_0 ),
        .I1(\pixel_data[0]_i_6_n_0 ),
        .O(\pixel_data_reg[0]_i_2_n_0 ),
        .S(last_size_reg[0]));
  FDCE \pixel_data_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[10]_i_1_n_0 ),
        .Q(pixel_data[10]));
  MUXF7 \pixel_data_reg[10]_i_4 
       (.I0(\pixel_data[10]_i_5_n_0 ),
        .I1(\pixel_data[10]_i_6_n_0 ),
        .O(\pixel_data_reg[10]_i_4_n_0 ),
        .S(\pixel_data_reg[11]_i_5_n_14 ));
  FDCE \pixel_data_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[11]_i_1_n_0 ),
        .Q(pixel_data[11]));
  MUXF7 \pixel_data_reg[11]_i_4 
       (.I0(\pixel_data[11]_i_6_n_0 ),
        .I1(\pixel_data[11]_i_7_n_0 ),
        .O(\pixel_data_reg[11]_i_4_n_0 ),
        .S(\pixel_data_reg[11]_i_5_n_14 ));
  CARRY8 \pixel_data_reg[11]_i_5 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_pixel_data_reg[11]_i_5_CO_UNCONNECTED [7:3],\pixel_data_reg[11]_i_5_n_5 ,\pixel_data_reg[11]_i_5_n_6 ,\pixel_data_reg[11]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,last_size_reg[0],1'b0}),
        .O({\NLW_pixel_data_reg[11]_i_5_O_UNCONNECTED [7:4],\pixel_data_reg[11]_i_5_n_12 ,\pixel_data_reg[11]_i_5_n_13 ,\pixel_data_reg[11]_i_5_n_14 ,\pixel_data_reg[11]_i_5_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\pixel_data[11]_i_8_n_0 ,\pixel_data[11]_i_9_n_0 ,last_size_reg[0],\last_pix_idx_reg_n_0_[1] }));
  FDCE \pixel_data_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[12]_i_1_n_0 ),
        .Q(pixel_data[12]));
  FDCE \pixel_data_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[13]_i_1_n_0 ),
        .Q(pixel_data[13]));
  FDCE \pixel_data_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[14]_i_1_n_0 ),
        .Q(pixel_data[14]));
  FDCE \pixel_data_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[15]_i_1_n_0 ),
        .Q(pixel_data[15]));
  FDCE \pixel_data_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[16]_i_1_n_0 ),
        .Q(pixel_data[16]));
  FDCE \pixel_data_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[17]_i_1_n_0 ),
        .Q(pixel_data[17]));
  FDCE \pixel_data_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[18]_i_1_n_0 ),
        .Q(pixel_data[18]));
  FDCE \pixel_data_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[19]_i_1_n_0 ),
        .Q(pixel_data[19]));
  FDCE \pixel_data_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[1]_i_1_n_0 ),
        .Q(pixel_data[1]));
  MUXF7 \pixel_data_reg[1]_i_2 
       (.I0(\pixel_data[1]_i_5_n_0 ),
        .I1(\pixel_data[1]_i_6_n_0 ),
        .O(\pixel_data_reg[1]_i_2_n_0 ),
        .S(last_size_reg[0]));
  FDCE \pixel_data_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[2]_i_1_n_0 ),
        .Q(pixel_data[2]));
  FDCE \pixel_data_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[3]_i_1_n_0 ),
        .Q(pixel_data[3]));
  FDCE \pixel_data_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[4]_i_1_n_0 ),
        .Q(pixel_data[4]));
  FDCE \pixel_data_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[5]_i_1_n_0 ),
        .Q(pixel_data[5]));
  FDCE \pixel_data_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[6]_i_1_n_0 ),
        .Q(pixel_data[6]));
  FDCE \pixel_data_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[7]_i_1_n_0 ),
        .Q(pixel_data[7]));
  FDCE \pixel_data_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[8]_i_1_n_0 ),
        .Q(pixel_data[8]));
  FDCE \pixel_data_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\pixel_data[9]_i_1_n_0 ),
        .Q(pixel_data[9]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8000000)) 
    pixel_enable_i_1
       (.I0(pkt_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\ready_delay_reg[1]_0 ),
        .I3(last_size_reg[1]),
        .I4(last_size_reg[0]),
        .I5(last_size_reg[2]),
        .O(pixel_enable3_out));
  FDCE pixel_enable_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(pixel_enable3_out),
        .Q(pixel_enable));
  FDCE \ready_delay_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\di_reg_reg[7]_0 [0]),
        .Q(\ready_delay_reg_n_0_[0] ));
  FDCE \ready_delay_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\ready_delay_reg_n_0_[0] ),
        .Q(\ready_delay_reg[1]_0 ));
  FDCE \ready_delay_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\ready_delay_reg[1]_0 ),
        .Q(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[0]_i_1 
       (.I0(pixel_data[0]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[0]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [0]),
        .I3(reg_pix_data[0]),
        .O(reg_pix_valid_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[10]_i_1 
       (.I0(pixel_data[10]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[10]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [10]),
        .I3(reg_pix_data[10]),
        .O(reg_pix_valid_reg_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[11]_i_1 
       (.I0(pixel_data[11]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[11]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [11]),
        .I3(reg_pix_data[11]),
        .O(reg_pix_valid_reg_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[12]_i_1 
       (.I0(pixel_data[12]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[12]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [12]),
        .I3(reg_pix_data[12]),
        .O(reg_pix_valid_reg_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[13]_i_1 
       (.I0(pixel_data[13]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[13]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [13]),
        .I3(reg_pix_data[13]),
        .O(reg_pix_valid_reg_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[14]_i_1 
       (.I0(pixel_data[14]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[14]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [14]),
        .I3(reg_pix_data[14]),
        .O(reg_pix_valid_reg_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[15]_i_1 
       (.I0(pixel_data[15]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[15]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [15]),
        .I3(reg_pix_data[15]),
        .O(reg_pix_valid_reg_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[16]_i_1 
       (.I0(pixel_data[16]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_pix_data[16]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(reg_pix_data[16]),
        .O(reg_pix_valid_reg_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[17]_i_1 
       (.I0(pixel_data[17]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_pix_data[17]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(reg_pix_data[17]),
        .O(reg_pix_valid_reg_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[18]_i_1 
       (.I0(pixel_data[18]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_pix_data[18]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(reg_pix_data[18]),
        .O(reg_pix_valid_reg_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[19]_i_1 
       (.I0(pixel_data[19]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_pix_data[19]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(reg_pix_data[19]),
        .O(reg_pix_valid_reg_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[1]_i_1 
       (.I0(pixel_data[1]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[1]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [1]),
        .I3(reg_pix_data[1]),
        .O(reg_pix_valid_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[2]_i_1 
       (.I0(pixel_data[2]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[2]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [2]),
        .I3(reg_pix_data[2]),
        .O(reg_pix_valid_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[3]_i_1 
       (.I0(pixel_data[3]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[3]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [3]),
        .I3(reg_pix_data[3]),
        .O(reg_pix_valid_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[4]_i_1 
       (.I0(pixel_data[4]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[4]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [4]),
        .I3(reg_pix_data[4]),
        .O(reg_pix_valid_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[5]_i_1 
       (.I0(pixel_data[5]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[5]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [5]),
        .I3(reg_pix_data[5]),
        .O(reg_pix_valid_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[6]_i_1 
       (.I0(pixel_data[6]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[6]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [6]),
        .I3(reg_pix_data[6]),
        .O(reg_pix_valid_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[7]_i_1 
       (.I0(pixel_data[7]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[7]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [7]),
        .I3(reg_pix_data[7]),
        .O(reg_pix_valid_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[8]_i_1 
       (.I0(pixel_data[8]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[8]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [8]),
        .I3(reg_pix_data[8]),
        .O(reg_pix_valid_reg_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_data[9]_i_1 
       (.I0(pixel_data[9]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_data[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_data[9]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(\reg_pix_data_reg[15]_0 [9]),
        .I3(reg_pix_data[9]),
        .O(reg_pix_valid_reg_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h80)) 
    reg_pix_data_enable_i_1
       (.I0(pixel_enable),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(reg_pix_data_enable0));
  FDCE reg_pix_data_enable_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(reg_pix_data_enable0),
        .Q(raw10_pix_data_enable));
  FDCE \reg_pix_data_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[0]_i_1_n_0 ),
        .Q(reg_pix_data[0]));
  FDCE \reg_pix_data_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[10]_i_1_n_0 ),
        .Q(reg_pix_data[10]));
  FDCE \reg_pix_data_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[11]_i_1_n_0 ),
        .Q(reg_pix_data[11]));
  FDCE \reg_pix_data_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[12]_i_1_n_0 ),
        .Q(reg_pix_data[12]));
  FDCE \reg_pix_data_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[13]_i_1_n_0 ),
        .Q(reg_pix_data[13]));
  FDCE \reg_pix_data_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[14]_i_1_n_0 ),
        .Q(reg_pix_data[14]));
  FDCE \reg_pix_data_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[15]_i_1_n_0 ),
        .Q(reg_pix_data[15]));
  FDCE \reg_pix_data_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[16]_i_1_n_0 ),
        .Q(reg_pix_data[16]));
  FDCE \reg_pix_data_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[17]_i_1_n_0 ),
        .Q(reg_pix_data[17]));
  FDCE \reg_pix_data_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[18]_i_1_n_0 ),
        .Q(reg_pix_data[18]));
  FDCE \reg_pix_data_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[19]_i_1_n_0 ),
        .Q(reg_pix_data[19]));
  FDCE \reg_pix_data_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[1]_i_1_n_0 ),
        .Q(reg_pix_data[1]));
  FDCE \reg_pix_data_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[2]_i_1_n_0 ),
        .Q(reg_pix_data[2]));
  FDCE \reg_pix_data_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[3]_i_1_n_0 ),
        .Q(reg_pix_data[3]));
  FDCE \reg_pix_data_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[4]_i_1_n_0 ),
        .Q(reg_pix_data[4]));
  FDCE \reg_pix_data_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[5]_i_1_n_0 ),
        .Q(reg_pix_data[5]));
  FDCE \reg_pix_data_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[6]_i_1_n_0 ),
        .Q(reg_pix_data[6]));
  FDCE \reg_pix_data_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[7]_i_1_n_0 ),
        .Q(reg_pix_data[7]));
  FDCE \reg_pix_data_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[8]_i_1_n_0 ),
        .Q(reg_pix_data[8]));
  FDCE \reg_pix_data_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_data[9]_i_1_n_0 ),
        .Q(reg_pix_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_di[0]_i_1 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(Q[0]),
        .I3(reg_pix_di[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_di[1]_i_1 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(Q[1]),
        .I3(reg_pix_di[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_di[3]_i_1 
       (.I0(di_reg[3]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_di[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_di[3]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(Q[2]),
        .I3(reg_pix_di[3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_di[5]_i_1 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(Q[3]),
        .I3(reg_pix_di[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_di[6]_i_1 
       (.I0(di_reg[6]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_di[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_di[6]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(Q[4]),
        .I3(reg_pix_di[6]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_pix_di[7]_i_1 
       (.I0(di_reg[7]),
        .I1(p_0_in),
        .I2(\ready_delay_reg[1]_0 ),
        .O(\reg_pix_di[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \reg_pix_di[7]_i_1__0 
       (.I0(raw10_pix_valid),
        .I1(\reg_pix_di_reg[7]_0 ),
        .I2(Q[5]),
        .I3(reg_pix_di[7]),
        .O(D[5]));
  FDCE \reg_pix_di_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_di[3]_i_1_n_0 ),
        .Q(reg_pix_di[3]));
  FDCE \reg_pix_di_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_di[6]_i_1_n_0 ),
        .Q(reg_pix_di[6]));
  FDCE \reg_pix_di_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(\reg_pix_di[7]_i_1_n_0 ),
        .Q(reg_pix_di[7]));
  LUT2 #(
    .INIT(4'h8)) 
    reg_pix_valid_i_1
       (.I0(\ready_delay_reg[1]_0 ),
        .I1(p_0_in),
        .O(reg_pix_valid0));
  FDCE reg_pix_valid_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(\reg_pix_di_reg[3]_0 ),
        .D(reg_pix_valid0),
        .Q(raw10_pix_valid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_clk_io
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_data_byte_aligner
   (data_byte_valid_reg_0,
    Q,
    data_byte_valid_reg_1,
    D,
    data_byte_valid_reg_2,
    data_byte_valid_reg_3,
    data_byte_valid_reg_4,
    data_byte_valid_reg_5,
    data_byte_valid_reg_6,
    data_byte_valid_reg_7,
    data_byte_valid_reg_8,
    data_byte_valid_reg_9,
    data_byte_valid_reg_10,
    data_byte_valid_reg_11,
    u_ISERDESE3,
    u_ISERDESE3_0,
    \last_byte_reg[7]_0 ,
    \last_byte_reg[7]_1 ,
    data_byte_valid_reg_12,
    E,
    clk_hs_byte,
    AR,
    \data_byte_aligned_reg[4]_0 ,
    \data_byte_aligned_reg[2]_0 ,
    \data_byte_aligned_reg[3]_0 ,
    \data_byte_aligned_reg[7]_0 ,
    \align_idx_reg[0][0] ,
    align_flag,
    \align_idx_reg[0][1] ,
    \align_idx_reg[1][1] ,
    \lane_buf_reg[1][15] ,
    \lane_buf_reg[2][15] ,
    \lane_buf_reg[3][15] ,
    \lane_buf_reg[4][15] ,
    \lane_buf_reg[5][15] ,
    \lane_buf_reg[6][15] ,
    \lane_buf_reg[7][15] ,
    \align_offset_reg[1]_0 ,
    \data_byte_aligned_reg[2]_1 ,
    \data_byte_aligned_reg[2]_2 ,
    \last_byte_reg[7]_2 ,
    \align_offset_reg[2]_0 ,
    \data_byte_aligned_reg[6]_0 ,
    \align_offset_reg[1]_1 ,
    \data_byte_aligned_reg[5]_0 ,
    \data_byte_aligned[4]_i_2_0 ,
    \align_offset_reg[0]_0 ,
    \data_byte_aligned_reg[7]_1 );
  output data_byte_valid_reg_0;
  output [1:0]Q;
  output [0:0]data_byte_valid_reg_1;
  output [1:0]D;
  output [1:0]data_byte_valid_reg_2;
  output [7:0]data_byte_valid_reg_3;
  output [15:0]data_byte_valid_reg_4;
  output [15:0]data_byte_valid_reg_5;
  output [15:0]data_byte_valid_reg_6;
  output [15:0]data_byte_valid_reg_7;
  output [15:0]data_byte_valid_reg_8;
  output [15:0]data_byte_valid_reg_9;
  output [15:0]data_byte_valid_reg_10;
  output [0:0]data_byte_valid_reg_11;
  output u_ISERDESE3;
  output u_ISERDESE3_0;
  output [3:0]\last_byte_reg[7]_0 ;
  output \last_byte_reg[7]_1 ;
  output data_byte_valid_reg_12;
  input [0:0]E;
  input clk_hs_byte;
  input [0:0]AR;
  input \data_byte_aligned_reg[4]_0 ;
  input \data_byte_aligned_reg[2]_0 ;
  input \data_byte_aligned_reg[3]_0 ;
  input \data_byte_aligned_reg[7]_0 ;
  input \align_idx_reg[0][0] ;
  input align_flag;
  input [1:0]\align_idx_reg[0][1] ;
  input [1:0]\align_idx_reg[1][1] ;
  input [15:0]\lane_buf_reg[1][15] ;
  input [15:0]\lane_buf_reg[2][15] ;
  input [15:0]\lane_buf_reg[3][15] ;
  input [15:0]\lane_buf_reg[4][15] ;
  input [15:0]\lane_buf_reg[5][15] ;
  input [15:0]\lane_buf_reg[6][15] ;
  input [15:0]\lane_buf_reg[7][15] ;
  input \align_offset_reg[1]_0 ;
  input \data_byte_aligned_reg[2]_1 ;
  input \data_byte_aligned_reg[2]_2 ;
  input [7:0]\last_byte_reg[7]_2 ;
  input \align_offset_reg[2]_0 ;
  input \data_byte_aligned_reg[6]_0 ;
  input \align_offset_reg[1]_1 ;
  input \data_byte_aligned_reg[5]_0 ;
  input \data_byte_aligned[4]_i_2_0 ;
  input [0:0]\align_offset_reg[0]_0 ;
  input [0:0]\data_byte_aligned_reg[7]_1 ;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire align_flag;
  wire \align_idx_reg[0][0] ;
  wire [1:0]\align_idx_reg[0][1] ;
  wire [1:0]\align_idx_reg[1][1] ;
  wire [2:2]align_offset;
  wire \align_offset[0]_i_4_n_0 ;
  wire \align_offset[0]_i_5_n_0 ;
  wire \align_offset[2]_i_11_n_0 ;
  wire \align_offset[2]_i_12_n_0 ;
  wire \align_offset[2]_i_7_n_0 ;
  wire \align_offset[2]_i_8_n_0 ;
  wire [0:0]\align_offset_reg[0]_0 ;
  wire \align_offset_reg[1]_0 ;
  wire \align_offset_reg[1]_1 ;
  wire \align_offset_reg[2]_0 ;
  wire [7:0]byte_data;
  wire clk_hs_byte;
  wire \data_byte_aligned[0]_i_2__0_n_0 ;
  wire \data_byte_aligned[0]_i_3_n_0 ;
  wire \data_byte_aligned[0]_i_4_n_0 ;
  wire \data_byte_aligned[1]_i_2_n_0 ;
  wire \data_byte_aligned[1]_i_3__0_n_0 ;
  wire \data_byte_aligned[1]_i_4_n_0 ;
  wire \data_byte_aligned[2]_i_2_n_0 ;
  wire \data_byte_aligned[2]_i_3_n_0 ;
  wire \data_byte_aligned[2]_i_4_n_0 ;
  wire \data_byte_aligned[3]_i_2__0_n_0 ;
  wire \data_byte_aligned[3]_i_3_n_0 ;
  wire \data_byte_aligned[3]_i_4_n_0 ;
  wire \data_byte_aligned[4]_i_2_0 ;
  wire \data_byte_aligned[4]_i_2_n_0 ;
  wire \data_byte_aligned[4]_i_3_n_0 ;
  wire \data_byte_aligned[4]_i_4_n_0 ;
  wire \data_byte_aligned[5]_i_2_n_0 ;
  wire \data_byte_aligned[5]_i_4_n_0 ;
  wire \data_byte_aligned[5]_i_5_n_0 ;
  wire \data_byte_aligned[6]_i_2_n_0 ;
  wire \data_byte_aligned[6]_i_3_n_0 ;
  wire \data_byte_aligned[7]_i_3__0_n_0 ;
  wire \data_byte_aligned[7]_i_4_n_0 ;
  wire \data_byte_aligned_reg[2]_0 ;
  wire \data_byte_aligned_reg[2]_1 ;
  wire \data_byte_aligned_reg[2]_2 ;
  wire \data_byte_aligned_reg[3]_0 ;
  wire \data_byte_aligned_reg[4]_0 ;
  wire \data_byte_aligned_reg[5]_0 ;
  wire \data_byte_aligned_reg[6]_0 ;
  wire \data_byte_aligned_reg[7]_0 ;
  wire [0:0]\data_byte_aligned_reg[7]_1 ;
  wire data_byte_valid_reg_0;
  wire [0:0]data_byte_valid_reg_1;
  wire [15:0]data_byte_valid_reg_10;
  wire [0:0]data_byte_valid_reg_11;
  wire data_byte_valid_reg_12;
  wire [1:0]data_byte_valid_reg_2;
  wire [7:0]data_byte_valid_reg_3;
  wire [15:0]data_byte_valid_reg_4;
  wire [15:0]data_byte_valid_reg_5;
  wire [15:0]data_byte_valid_reg_6;
  wire [15:0]data_byte_valid_reg_7;
  wire [15:0]data_byte_valid_reg_8;
  wire [15:0]data_byte_valid_reg_9;
  wire [15:0]\lane_buf_reg[1][15] ;
  wire [15:0]\lane_buf_reg[2][15] ;
  wire [15:0]\lane_buf_reg[3][15] ;
  wire [15:0]\lane_buf_reg[4][15] ;
  wire [15:0]\lane_buf_reg[5][15] ;
  wire [15:0]\lane_buf_reg[6][15] ;
  wire [15:0]\lane_buf_reg[7][15] ;
  wire [3:0]\last_byte_reg[7]_0 ;
  wire \last_byte_reg[7]_1 ;
  wire [7:0]\last_byte_reg[7]_2 ;
  wire \last_byte_reg_n_0_[0] ;
  wire \last_byte_reg_n_0_[1] ;
  wire \last_byte_reg_n_0_[2] ;
  wire \last_byte_reg_n_0_[3] ;
  wire [2:1]p_0_in;
  wire [7:0]p_1_in;
  wire u_ISERDESE3;
  wire u_ISERDESE3_0;

  LUT3 #(
    .INIT(8'hE8)) 
    align_flag_i_1
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(align_flag),
        .O(data_byte_valid_reg_12));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \align_idx[0][0]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\align_idx_reg[0][1] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \align_idx[0][1]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\align_idx_reg[0][1] [0]),
        .I3(\align_idx_reg[0][1] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h1B)) 
    \align_idx[0][2]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(align_flag),
        .O(data_byte_valid_reg_11));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \align_idx[1][0]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\align_idx_reg[1][1] [0]),
        .O(data_byte_valid_reg_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \align_idx[1][1]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\align_idx_reg[1][1] [1]),
        .I3(\align_idx_reg[1][1] [0]),
        .O(data_byte_valid_reg_2[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \align_idx[1][2]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(align_flag),
        .O(data_byte_valid_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \align_offset[0]_i_2 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(\last_byte_reg_n_0_[1] ),
        .I2(\last_byte_reg_n_0_[2] ),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(\align_offset[0]_i_4_n_0 ),
        .O(\last_byte_reg[7]_1 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \align_offset[0]_i_3 
       (.I0(\last_byte_reg[7]_2 [1]),
        .I1(\last_byte_reg[7]_2 [2]),
        .I2(\last_byte_reg[7]_0 [3]),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(\align_offset[0]_i_5_n_0 ),
        .O(u_ISERDESE3_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \align_offset[0]_i_4 
       (.I0(\last_byte_reg[7]_2 [0]),
        .I1(\last_byte_reg[7]_0 [2]),
        .I2(\last_byte_reg[7]_0 [1]),
        .I3(\last_byte_reg[7]_0 [0]),
        .O(\align_offset[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[0]_i_5 
       (.I0(\last_byte_reg[7]_2 [0]),
        .I1(\last_byte_reg[7]_0 [2]),
        .I2(\last_byte_reg[7]_0 [1]),
        .I3(\last_byte_reg[7]_0 [0]),
        .O(\align_offset[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \align_offset[1]_i_1 
       (.I0(u_ISERDESE3),
        .I1(\align_offset_reg[1]_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \align_offset[2]_i_11 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(\last_byte_reg_n_0_[3] ),
        .O(\align_offset[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \align_offset[2]_i_12 
       (.I0(\last_byte_reg[7]_2 [1]),
        .I1(\last_byte_reg[7]_0 [1]),
        .I2(\last_byte_reg[7]_0 [3]),
        .I3(\last_byte_reg[7]_0 [2]),
        .O(\align_offset[2]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \align_offset[2]_i_2 
       (.I0(\align_offset[2]_i_7_n_0 ),
        .I1(\align_offset[2]_i_8_n_0 ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h000000000000FFEF)) 
    \align_offset[2]_i_4 
       (.I0(\last_byte_reg[7]_2 [0]),
        .I1(\last_byte_reg[7]_0 [0]),
        .I2(\align_offset[2]_i_11_n_0 ),
        .I3(\align_offset[2]_i_12_n_0 ),
        .I4(\last_byte_reg[7]_1 ),
        .I5(\align_offset_reg[1]_1 ),
        .O(u_ISERDESE3));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \align_offset[2]_i_7 
       (.I0(\last_byte_reg[7]_1 ),
        .I1(\align_offset[2]_i_12_n_0 ),
        .I2(\last_byte_reg_n_0_[3] ),
        .I3(\last_byte_reg_n_0_[2] ),
        .I4(\last_byte_reg[7]_0 [0]),
        .I5(\last_byte_reg[7]_2 [0]),
        .O(\align_offset[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABAAAAAA)) 
    \align_offset[2]_i_8 
       (.I0(u_ISERDESE3_0),
        .I1(\align_offset_reg[2]_0 ),
        .I2(\last_byte_reg[7]_0 [2]),
        .I3(\last_byte_reg[7]_2 [0]),
        .I4(\last_byte_reg[7]_0 [3]),
        .I5(\last_byte_reg[7]_2 [2]),
        .O(\align_offset[2]_i_8_n_0 ));
  FDCE \align_offset_reg[0] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(\align_offset_reg[0]_0 ),
        .Q(Q[0]));
  FDCE \align_offset_reg[1] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE \align_offset_reg[2] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(align_offset));
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    \data_byte_aligned[0]_i_1 
       (.I0(\data_byte_aligned[0]_i_2__0_n_0 ),
        .I1(\last_byte_reg[7]_2 [0]),
        .I2(\align_offset[2]_i_7_n_0 ),
        .I3(\data_byte_aligned_reg[2]_2 ),
        .I4(data_byte_valid_reg_0),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \data_byte_aligned[0]_i_2__0 
       (.I0(data_byte_valid_reg_0),
        .I1(\data_byte_aligned[0]_i_3_n_0 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned[0]_i_4_n_0 ),
        .I4(align_offset),
        .I5(\data_byte_aligned[4]_i_4_n_0 ),
        .O(\data_byte_aligned[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h155515550000FFFF)) 
    \data_byte_aligned[0]_i_3 
       (.I0(\data_byte_aligned[4]_i_2_0 ),
        .I1(\last_byte_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\data_byte_aligned_reg[4]_0 ),
        .I5(align_offset),
        .O(\data_byte_aligned[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_byte_aligned[0]_i_4 
       (.I0(\last_byte_reg[7]_0 [0]),
        .I1(\last_byte_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(\last_byte_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(\last_byte_reg_n_0_[1] ),
        .O(\data_byte_aligned[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \data_byte_aligned[1]_i_1 
       (.I0(\data_byte_aligned[1]_i_2_n_0 ),
        .I1(\last_byte_reg[7]_2 [1]),
        .I2(u_ISERDESE3),
        .I3(\data_byte_aligned_reg[2]_2 ),
        .I4(data_byte_valid_reg_0),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[1]_i_2 
       (.I0(\data_byte_aligned[5]_i_4_n_0 ),
        .I1(\data_byte_aligned[1]_i_3__0_n_0 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned[1]_i_4_n_0 ),
        .I4(align_offset),
        .I5(\data_byte_aligned_reg[5]_0 ),
        .O(\data_byte_aligned[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[1]_i_3__0 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(\last_byte_reg[7]_0 [0]),
        .I2(Q[1]),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(Q[0]),
        .I5(\last_byte_reg_n_0_[2] ),
        .O(\data_byte_aligned[1]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \data_byte_aligned[1]_i_4 
       (.I0(\last_byte_reg[7]_2 [7]),
        .I1(\last_byte_reg[7]_2 [6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\last_byte_reg_n_0_[1] ),
        .O(\data_byte_aligned[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \data_byte_aligned[2]_i_1 
       (.I0(u_ISERDESE3),
        .I1(\data_byte_aligned_reg[2]_1 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned_reg[2]_2 ),
        .I4(\last_byte_reg[7]_2 [2]),
        .I5(\data_byte_aligned[2]_i_2_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \data_byte_aligned[2]_i_2 
       (.I0(\data_byte_aligned[2]_i_3_n_0 ),
        .I1(data_byte_valid_reg_0),
        .I2(\data_byte_aligned[2]_i_4_n_0 ),
        .I3(align_offset),
        .I4(\data_byte_aligned_reg[2]_0 ),
        .I5(data_byte_valid_reg_0),
        .O(\data_byte_aligned[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \data_byte_aligned[2]_i_3 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(\last_byte_reg[7]_2 [7]),
        .I3(Q[0]),
        .I4(align_offset),
        .I5(\data_byte_aligned_reg[6]_0 ),
        .O(\data_byte_aligned[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \data_byte_aligned[2]_i_4 
       (.I0(\last_byte_reg[7]_0 [0]),
        .I1(\last_byte_reg_n_0_[3] ),
        .I2(\last_byte_reg[7]_0 [2]),
        .I3(Q[0]),
        .I4(\last_byte_reg[7]_0 [1]),
        .I5(Q[1]),
        .O(\data_byte_aligned[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFDFF)) 
    \data_byte_aligned[3]_i_1 
       (.I0(u_ISERDESE3),
        .I1(\data_byte_aligned_reg[2]_1 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned_reg[2]_2 ),
        .I4(\last_byte_reg[7]_2 [3]),
        .I5(\data_byte_aligned[3]_i_2__0_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \data_byte_aligned[3]_i_2__0 
       (.I0(data_byte_valid_reg_0),
        .I1(\data_byte_aligned[3]_i_3_n_0 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned[3]_i_4_n_0 ),
        .I4(align_offset),
        .I5(\data_byte_aligned_reg[3]_0 ),
        .O(\data_byte_aligned[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \data_byte_aligned[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\last_byte_reg_n_0_[3] ),
        .I3(align_offset),
        .I4(\data_byte_aligned_reg[7]_0 ),
        .O(\data_byte_aligned[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[3]_i_4 
       (.I0(\last_byte_reg[7]_0 [3]),
        .I1(\last_byte_reg[7]_0 [2]),
        .I2(Q[1]),
        .I3(\last_byte_reg[7]_0 [1]),
        .I4(Q[0]),
        .I5(\last_byte_reg[7]_0 [0]),
        .O(\data_byte_aligned[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFDFF)) 
    \data_byte_aligned[4]_i_1 
       (.I0(u_ISERDESE3),
        .I1(\data_byte_aligned_reg[2]_1 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned_reg[2]_2 ),
        .I4(\last_byte_reg[7]_2 [4]),
        .I5(\data_byte_aligned[4]_i_2_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h02A20202A2A2A202)) 
    \data_byte_aligned[4]_i_2 
       (.I0(data_byte_valid_reg_0),
        .I1(\data_byte_aligned[4]_i_3_n_0 ),
        .I2(data_byte_valid_reg_0),
        .I3(align_offset),
        .I4(\data_byte_aligned[4]_i_4_n_0 ),
        .I5(\data_byte_aligned_reg[4]_0 ),
        .O(\data_byte_aligned[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \data_byte_aligned[4]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\last_byte_reg[7]_0 [0]),
        .I3(align_offset),
        .I4(\data_byte_aligned[4]_i_2_0 ),
        .O(\data_byte_aligned[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_byte_aligned[4]_i_4 
       (.I0(\last_byte_reg[7]_2 [0]),
        .I1(\last_byte_reg[7]_0 [3]),
        .I2(Q[1]),
        .I3(\last_byte_reg[7]_0 [2]),
        .I4(Q[0]),
        .I5(\last_byte_reg[7]_0 [1]),
        .O(\data_byte_aligned[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFDFF)) 
    \data_byte_aligned[5]_i_1 
       (.I0(u_ISERDESE3),
        .I1(\data_byte_aligned_reg[2]_1 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned_reg[2]_2 ),
        .I4(\last_byte_reg[7]_2 [5]),
        .I5(\data_byte_aligned[5]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h474700FF00000000)) 
    \data_byte_aligned[5]_i_2 
       (.I0(\data_byte_aligned_reg[5]_0 ),
        .I1(align_offset),
        .I2(\data_byte_aligned[5]_i_4_n_0 ),
        .I3(\data_byte_aligned[5]_i_5_n_0 ),
        .I4(data_byte_valid_reg_0),
        .I5(data_byte_valid_reg_0),
        .O(\data_byte_aligned[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[5]_i_4 
       (.I0(\last_byte_reg[7]_2 [1]),
        .I1(\last_byte_reg[7]_2 [0]),
        .I2(Q[1]),
        .I3(\last_byte_reg[7]_0 [3]),
        .I4(Q[0]),
        .I5(\last_byte_reg[7]_0 [2]),
        .O(\data_byte_aligned[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8800880033300030)) 
    \data_byte_aligned[5]_i_5 
       (.I0(\last_byte_reg[7]_0 [1]),
        .I1(align_offset),
        .I2(\last_byte_reg[7]_2 [6]),
        .I3(Q[0]),
        .I4(\last_byte_reg[7]_2 [7]),
        .I5(Q[1]),
        .O(\data_byte_aligned[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \data_byte_aligned[6]_i_1 
       (.I0(u_ISERDESE3),
        .I1(\data_byte_aligned_reg[2]_1 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned_reg[2]_2 ),
        .I4(\last_byte_reg[7]_2 [6]),
        .I5(\data_byte_aligned[6]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \data_byte_aligned[6]_i_2 
       (.I0(\data_byte_aligned[6]_i_3_n_0 ),
        .I1(data_byte_valid_reg_0),
        .I2(\data_byte_aligned_reg[2]_0 ),
        .I3(align_offset),
        .I4(\data_byte_aligned_reg[6]_0 ),
        .I5(data_byte_valid_reg_0),
        .O(\data_byte_aligned[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80800300)) 
    \data_byte_aligned[6]_i_3 
       (.I0(\last_byte_reg[7]_0 [2]),
        .I1(align_offset),
        .I2(Q[0]),
        .I3(\last_byte_reg[7]_2 [7]),
        .I4(Q[1]),
        .O(\data_byte_aligned[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFDFF)) 
    \data_byte_aligned[7]_i_2 
       (.I0(u_ISERDESE3),
        .I1(\data_byte_aligned_reg[2]_1 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned_reg[2]_2 ),
        .I4(\last_byte_reg[7]_2 [7]),
        .I5(\data_byte_aligned[7]_i_3__0_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \data_byte_aligned[7]_i_3__0 
       (.I0(data_byte_valid_reg_0),
        .I1(\data_byte_aligned[7]_i_4_n_0 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned_reg[3]_0 ),
        .I4(align_offset),
        .I5(\data_byte_aligned_reg[7]_0 ),
        .O(\data_byte_aligned[7]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \data_byte_aligned[7]_i_4 
       (.I0(Q[1]),
        .I1(align_offset),
        .I2(Q[0]),
        .I3(\last_byte_reg[7]_0 [3]),
        .O(\data_byte_aligned[7]_i_4_n_0 ));
  FDCE \data_byte_aligned_reg[0] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[7]_1 ),
        .CLR(AR),
        .D(p_1_in[0]),
        .Q(byte_data[0]));
  FDCE \data_byte_aligned_reg[1] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[7]_1 ),
        .CLR(AR),
        .D(p_1_in[1]),
        .Q(byte_data[1]));
  FDCE \data_byte_aligned_reg[2] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[7]_1 ),
        .CLR(AR),
        .D(p_1_in[2]),
        .Q(byte_data[2]));
  FDCE \data_byte_aligned_reg[3] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[7]_1 ),
        .CLR(AR),
        .D(p_1_in[3]),
        .Q(byte_data[3]));
  FDCE \data_byte_aligned_reg[4] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[7]_1 ),
        .CLR(AR),
        .D(p_1_in[4]),
        .Q(byte_data[4]));
  FDCE \data_byte_aligned_reg[5] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[7]_1 ),
        .CLR(AR),
        .D(p_1_in[5]),
        .Q(byte_data[5]));
  FDCE \data_byte_aligned_reg[6] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[7]_1 ),
        .CLR(AR),
        .D(p_1_in[6]),
        .Q(byte_data[6]));
  FDCE \data_byte_aligned_reg[7] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[7]_1 ),
        .CLR(AR),
        .D(p_1_in[7]),
        .Q(byte_data[7]));
  FDCE data_byte_valid_reg
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(1'b1),
        .Q(data_byte_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][0]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(byte_data[0]),
        .O(data_byte_valid_reg_3[0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][1]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(byte_data[1]),
        .O(data_byte_valid_reg_3[1]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][2]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(byte_data[2]),
        .O(data_byte_valid_reg_3[2]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][3]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(byte_data[3]),
        .O(data_byte_valid_reg_3[3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][4]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(byte_data[4]),
        .O(data_byte_valid_reg_3[4]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][5]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(byte_data[5]),
        .O(data_byte_valid_reg_3[5]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][6]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(byte_data[6]),
        .O(data_byte_valid_reg_3[6]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][7]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(byte_data[7]),
        .O(data_byte_valid_reg_3[7]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][0]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [0]),
        .O(data_byte_valid_reg_4[0]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][10]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [10]),
        .O(data_byte_valid_reg_4[10]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][11]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [11]),
        .O(data_byte_valid_reg_4[11]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][12]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [12]),
        .O(data_byte_valid_reg_4[12]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][13]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [13]),
        .O(data_byte_valid_reg_4[13]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][14]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [14]),
        .O(data_byte_valid_reg_4[14]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][15]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [15]),
        .O(data_byte_valid_reg_4[15]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][1]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [1]),
        .O(data_byte_valid_reg_4[1]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][2]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [2]),
        .O(data_byte_valid_reg_4[2]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][3]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [3]),
        .O(data_byte_valid_reg_4[3]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][4]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [4]),
        .O(data_byte_valid_reg_4[4]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][5]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [5]),
        .O(data_byte_valid_reg_4[5]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][6]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [6]),
        .O(data_byte_valid_reg_4[6]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][7]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [7]),
        .O(data_byte_valid_reg_4[7]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][8]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [8]),
        .O(data_byte_valid_reg_4[8]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[1][9]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[1][15] [9]),
        .O(data_byte_valid_reg_4[9]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][0]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [0]),
        .O(data_byte_valid_reg_5[0]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][10]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [10]),
        .O(data_byte_valid_reg_5[10]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][11]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [11]),
        .O(data_byte_valid_reg_5[11]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][12]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [12]),
        .O(data_byte_valid_reg_5[12]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][13]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [13]),
        .O(data_byte_valid_reg_5[13]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][14]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [14]),
        .O(data_byte_valid_reg_5[14]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][15]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [15]),
        .O(data_byte_valid_reg_5[15]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][1]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [1]),
        .O(data_byte_valid_reg_5[1]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][2]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [2]),
        .O(data_byte_valid_reg_5[2]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][3]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [3]),
        .O(data_byte_valid_reg_5[3]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][4]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [4]),
        .O(data_byte_valid_reg_5[4]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][5]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [5]),
        .O(data_byte_valid_reg_5[5]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][6]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [6]),
        .O(data_byte_valid_reg_5[6]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][7]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [7]),
        .O(data_byte_valid_reg_5[7]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][8]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [8]),
        .O(data_byte_valid_reg_5[8]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[2][9]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[2][15] [9]),
        .O(data_byte_valid_reg_5[9]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][0]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [0]),
        .O(data_byte_valid_reg_6[0]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][10]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [10]),
        .O(data_byte_valid_reg_6[10]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][11]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [11]),
        .O(data_byte_valid_reg_6[11]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][12]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [12]),
        .O(data_byte_valid_reg_6[12]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][13]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [13]),
        .O(data_byte_valid_reg_6[13]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][14]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [14]),
        .O(data_byte_valid_reg_6[14]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][15]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [15]),
        .O(data_byte_valid_reg_6[15]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][1]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [1]),
        .O(data_byte_valid_reg_6[1]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][2]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [2]),
        .O(data_byte_valid_reg_6[2]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][3]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [3]),
        .O(data_byte_valid_reg_6[3]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][4]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [4]),
        .O(data_byte_valid_reg_6[4]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][5]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [5]),
        .O(data_byte_valid_reg_6[5]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][6]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [6]),
        .O(data_byte_valid_reg_6[6]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][7]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [7]),
        .O(data_byte_valid_reg_6[7]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][8]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [8]),
        .O(data_byte_valid_reg_6[8]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[3][9]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[3][15] [9]),
        .O(data_byte_valid_reg_6[9]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][0]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [0]),
        .O(data_byte_valid_reg_7[0]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][10]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [10]),
        .O(data_byte_valid_reg_7[10]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][11]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [11]),
        .O(data_byte_valid_reg_7[11]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][12]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [12]),
        .O(data_byte_valid_reg_7[12]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][13]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [13]),
        .O(data_byte_valid_reg_7[13]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][14]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [14]),
        .O(data_byte_valid_reg_7[14]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][15]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [15]),
        .O(data_byte_valid_reg_7[15]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][1]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [1]),
        .O(data_byte_valid_reg_7[1]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][2]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [2]),
        .O(data_byte_valid_reg_7[2]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][3]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [3]),
        .O(data_byte_valid_reg_7[3]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][4]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [4]),
        .O(data_byte_valid_reg_7[4]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][5]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [5]),
        .O(data_byte_valid_reg_7[5]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][6]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [6]),
        .O(data_byte_valid_reg_7[6]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][7]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [7]),
        .O(data_byte_valid_reg_7[7]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][8]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [8]),
        .O(data_byte_valid_reg_7[8]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[4][9]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[4][15] [9]),
        .O(data_byte_valid_reg_7[9]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][0]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [0]),
        .O(data_byte_valid_reg_8[0]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][10]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [10]),
        .O(data_byte_valid_reg_8[10]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][11]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [11]),
        .O(data_byte_valid_reg_8[11]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][12]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [12]),
        .O(data_byte_valid_reg_8[12]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][13]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [13]),
        .O(data_byte_valid_reg_8[13]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][14]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [14]),
        .O(data_byte_valid_reg_8[14]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][15]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [15]),
        .O(data_byte_valid_reg_8[15]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][1]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [1]),
        .O(data_byte_valid_reg_8[1]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][2]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [2]),
        .O(data_byte_valid_reg_8[2]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][3]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [3]),
        .O(data_byte_valid_reg_8[3]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][4]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [4]),
        .O(data_byte_valid_reg_8[4]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][5]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [5]),
        .O(data_byte_valid_reg_8[5]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][6]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [6]),
        .O(data_byte_valid_reg_8[6]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][7]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [7]),
        .O(data_byte_valid_reg_8[7]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][8]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [8]),
        .O(data_byte_valid_reg_8[8]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[5][9]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[5][15] [9]),
        .O(data_byte_valid_reg_8[9]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][0]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [0]),
        .O(data_byte_valid_reg_9[0]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][10]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [10]),
        .O(data_byte_valid_reg_9[10]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][11]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [11]),
        .O(data_byte_valid_reg_9[11]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][12]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [12]),
        .O(data_byte_valid_reg_9[12]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][13]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [13]),
        .O(data_byte_valid_reg_9[13]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][14]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [14]),
        .O(data_byte_valid_reg_9[14]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][15]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [15]),
        .O(data_byte_valid_reg_9[15]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][1]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [1]),
        .O(data_byte_valid_reg_9[1]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][2]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [2]),
        .O(data_byte_valid_reg_9[2]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][3]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [3]),
        .O(data_byte_valid_reg_9[3]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][4]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [4]),
        .O(data_byte_valid_reg_9[4]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][5]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [5]),
        .O(data_byte_valid_reg_9[5]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][6]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [6]),
        .O(data_byte_valid_reg_9[6]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][7]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [7]),
        .O(data_byte_valid_reg_9[7]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][8]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [8]),
        .O(data_byte_valid_reg_9[8]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[6][9]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[6][15] [9]),
        .O(data_byte_valid_reg_9[9]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][0]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [0]),
        .O(data_byte_valid_reg_10[0]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][10]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [10]),
        .O(data_byte_valid_reg_10[10]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][11]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [11]),
        .O(data_byte_valid_reg_10[11]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][12]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [12]),
        .O(data_byte_valid_reg_10[12]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][13]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [13]),
        .O(data_byte_valid_reg_10[13]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][14]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [14]),
        .O(data_byte_valid_reg_10[14]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][15]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [15]),
        .O(data_byte_valid_reg_10[15]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][1]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [1]),
        .O(data_byte_valid_reg_10[1]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][2]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [2]),
        .O(data_byte_valid_reg_10[2]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][3]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [3]),
        .O(data_byte_valid_reg_10[3]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][4]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [4]),
        .O(data_byte_valid_reg_10[4]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][5]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [5]),
        .O(data_byte_valid_reg_10[5]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][6]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [6]),
        .O(data_byte_valid_reg_10[6]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][7]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [7]),
        .O(data_byte_valid_reg_10[7]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][8]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [8]),
        .O(data_byte_valid_reg_10[8]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[7][9]_i_1 
       (.I0(data_byte_valid_reg_0),
        .I1(\align_idx_reg[0][0] ),
        .I2(\lane_buf_reg[7][15] [9]),
        .O(data_byte_valid_reg_10[9]));
  FDCE \last_byte_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\last_byte_reg[7]_2 [0]),
        .Q(\last_byte_reg_n_0_[0] ));
  FDCE \last_byte_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\last_byte_reg[7]_2 [1]),
        .Q(\last_byte_reg_n_0_[1] ));
  FDCE \last_byte_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\last_byte_reg[7]_2 [2]),
        .Q(\last_byte_reg_n_0_[2] ));
  FDCE \last_byte_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\last_byte_reg[7]_2 [3]),
        .Q(\last_byte_reg_n_0_[3] ));
  FDCE \last_byte_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\last_byte_reg[7]_2 [4]),
        .Q(\last_byte_reg[7]_0 [0]));
  FDCE \last_byte_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\last_byte_reg[7]_2 [5]),
        .Q(\last_byte_reg[7]_0 [1]));
  FDCE \last_byte_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\last_byte_reg[7]_2 [6]),
        .Q(\last_byte_reg[7]_0 [2]));
  FDCE \last_byte_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(\last_byte_reg[7]_2 [7]),
        .Q(\last_byte_reg[7]_0 [3]));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_data_byte_aligner" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_data_byte_aligner_2
   (data_byte_valid_reg_0,
    data_byte_valid_reg_1,
    data_byte_valid_reg_2,
    data_byte_valid_reg_3,
    \last_byte_reg[5]_0 ,
    \last_byte_reg[7]_0 ,
    \last_byte_reg[7]_1 ,
    \last_byte_reg[7]_2 ,
    \last_byte_reg[6]_0 ,
    \last_byte_reg[7]_3 ,
    \last_byte_reg[4]_0 ,
    \last_byte_reg[6]_1 ,
    \align_offset_reg[2]_0 ,
    data_byte_valid_reg_4,
    \align_offset_reg[2]_1 ,
    data_byte_valid_reg_5,
    \align_offset_reg[1]_0 ,
    data_byte_valid_reg_6,
    E,
    clk_hs_byte,
    AR,
    \data_byte_aligned_reg[0]_0 ,
    \data_byte_aligned_reg[2]_0 ,
    \lane_buf_reg[0][8] ,
    \data_byte_aligned_reg[0]_1 ,
    \data_byte_aligned_reg[0]_2 ,
    Q,
    \align_offset_reg[0]_0 ,
    \data_byte_aligned_reg[0]_3 ,
    \data_byte_aligned_reg[5]_0 ,
    \data_byte_aligned_reg[7]_0 ,
    \data_byte_aligned_reg[7]_1 ,
    \data_byte_aligned_reg[0]_4 ,
    \data_byte_aligned[4]_i_2__0_0 ,
    \data_byte_aligned_reg[6]_0 ,
    D,
    \data_byte_aligned_reg[0]_5 ,
    \data_byte_aligned_reg[7]_2 );
  output data_byte_valid_reg_0;
  output data_byte_valid_reg_1;
  output data_byte_valid_reg_2;
  output [7:0]data_byte_valid_reg_3;
  output \last_byte_reg[5]_0 ;
  output \last_byte_reg[7]_0 ;
  output [3:0]\last_byte_reg[7]_1 ;
  output \last_byte_reg[7]_2 ;
  output \last_byte_reg[6]_0 ;
  output \last_byte_reg[7]_3 ;
  output \last_byte_reg[4]_0 ;
  output \last_byte_reg[6]_1 ;
  output \align_offset_reg[2]_0 ;
  output data_byte_valid_reg_4;
  output \align_offset_reg[2]_1 ;
  output data_byte_valid_reg_5;
  output [1:0]\align_offset_reg[1]_0 ;
  output data_byte_valid_reg_6;
  input [0:0]E;
  input clk_hs_byte;
  input [0:0]AR;
  input \data_byte_aligned_reg[0]_0 ;
  input \data_byte_aligned_reg[2]_0 ;
  input \lane_buf_reg[0][8] ;
  input \data_byte_aligned_reg[0]_1 ;
  input \data_byte_aligned_reg[0]_2 ;
  input [7:0]Q;
  input \align_offset_reg[0]_0 ;
  input \data_byte_aligned_reg[0]_3 ;
  input \data_byte_aligned_reg[5]_0 ;
  input \data_byte_aligned_reg[7]_0 ;
  input \data_byte_aligned_reg[7]_1 ;
  input \data_byte_aligned_reg[0]_4 ;
  input \data_byte_aligned[4]_i_2__0_0 ;
  input \data_byte_aligned_reg[6]_0 ;
  input [0:0]D;
  input [0:0]\data_byte_aligned_reg[0]_5 ;
  input [6:0]\data_byte_aligned_reg[7]_2 ;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire \align_offset[0]_i_1_n_0 ;
  wire \align_offset[0]_i_3__0_n_0 ;
  wire \align_offset[0]_i_4__0_n_0 ;
  wire \align_offset[0]_i_8_n_0 ;
  wire \align_offset[2]_i_10__0_n_0 ;
  wire \align_offset[2]_i_11__0_n_0 ;
  wire \align_offset[2]_i_2__0_n_0 ;
  wire \align_offset[2]_i_9__0_n_0 ;
  wire \align_offset_reg[0]_0 ;
  wire [1:0]\align_offset_reg[1]_0 ;
  wire \align_offset_reg[2]_0 ;
  wire \align_offset_reg[2]_1 ;
  wire \align_offset_reg_n_0_[2] ;
  wire [15:8]byte_data;
  wire clk_hs_byte;
  wire \data_byte_aligned[0]_i_1__0_n_0 ;
  wire \data_byte_aligned[0]_i_2_n_0 ;
  wire \data_byte_aligned[0]_i_3__0_n_0 ;
  wire \data_byte_aligned[1]_i_4__0_n_0 ;
  wire \data_byte_aligned[1]_i_5_n_0 ;
  wire \data_byte_aligned[2]_i_3__0_n_0 ;
  wire \data_byte_aligned[2]_i_4__0_n_0 ;
  wire \data_byte_aligned[3]_i_3__0_n_0 ;
  wire \data_byte_aligned[3]_i_4__0_n_0 ;
  wire \data_byte_aligned[4]_i_2__0_0 ;
  wire \data_byte_aligned[4]_i_3__0_n_0 ;
  wire \data_byte_aligned[4]_i_4__0_n_0 ;
  wire \data_byte_aligned[5]_i_4__0_n_0 ;
  wire \data_byte_aligned[5]_i_5__0_n_0 ;
  wire \data_byte_aligned[6]_i_4__0_n_0 ;
  wire \data_byte_aligned[7]_i_6__0_n_0 ;
  wire \data_byte_aligned_reg[0]_0 ;
  wire \data_byte_aligned_reg[0]_1 ;
  wire \data_byte_aligned_reg[0]_2 ;
  wire \data_byte_aligned_reg[0]_3 ;
  wire \data_byte_aligned_reg[0]_4 ;
  wire [0:0]\data_byte_aligned_reg[0]_5 ;
  wire \data_byte_aligned_reg[2]_0 ;
  wire \data_byte_aligned_reg[5]_0 ;
  wire \data_byte_aligned_reg[6]_0 ;
  wire \data_byte_aligned_reg[7]_0 ;
  wire \data_byte_aligned_reg[7]_1 ;
  wire [6:0]\data_byte_aligned_reg[7]_2 ;
  wire data_byte_valid_reg_0;
  wire data_byte_valid_reg_1;
  wire data_byte_valid_reg_2;
  wire [7:0]data_byte_valid_reg_3;
  wire data_byte_valid_reg_4;
  wire data_byte_valid_reg_5;
  wire data_byte_valid_reg_6;
  wire \lane_buf_reg[0][8] ;
  wire \last_byte_reg[4]_0 ;
  wire \last_byte_reg[5]_0 ;
  wire \last_byte_reg[6]_0 ;
  wire \last_byte_reg[6]_1 ;
  wire \last_byte_reg[7]_0 ;
  wire [3:0]\last_byte_reg[7]_1 ;
  wire \last_byte_reg[7]_2 ;
  wire \last_byte_reg[7]_3 ;
  wire \last_byte_reg_n_0_[1] ;
  wire \last_byte_reg_n_0_[2] ;
  wire \last_byte_reg_n_0_[3] ;
  wire \last_byte_reg_n_0_[4] ;

  LUT3 #(
    .INIT(8'h02)) 
    \align_offset[0]_i_1 
       (.I0(\align_offset_reg[0]_0 ),
        .I1(\align_offset[0]_i_3__0_n_0 ),
        .I2(\align_offset[0]_i_4__0_n_0 ),
        .O(\align_offset[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \align_offset[0]_i_3__0 
       (.I0(\last_byte_reg_n_0_[4] ),
        .I1(\last_byte_reg[7]_1 [1]),
        .I2(Q[0]),
        .I3(\last_byte_reg[7]_1 [2]),
        .I4(\last_byte_reg[7]_3 ),
        .O(\align_offset[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \align_offset[0]_i_4__0 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(\last_byte_reg_n_0_[1] ),
        .I2(\last_byte_reg[7]_1 [3]),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(\align_offset[0]_i_8_n_0 ),
        .O(\align_offset[0]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[0]_i_6 
       (.I0(\last_byte_reg[7]_1 [2]),
        .I1(\last_byte_reg[7]_1 [3]),
        .O(\last_byte_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \align_offset[0]_i_8 
       (.I0(\last_byte_reg[7]_1 [2]),
        .I1(Q[0]),
        .I2(\last_byte_reg[7]_1 [1]),
        .I3(\last_byte_reg_n_0_[4] ),
        .O(\align_offset[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \align_offset[1]_i_4 
       (.I0(\last_byte_reg[7]_1 [3]),
        .I1(\last_byte_reg[7]_1 [2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\last_byte_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \align_offset[1]_i_5 
       (.I0(\last_byte_reg[7]_1 [3]),
        .I1(\last_byte_reg[7]_1 [2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\last_byte_reg[7]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \align_offset[2]_i_10__0 
       (.I0(\last_byte_reg[7]_1 [3]),
        .I1(\last_byte_reg[7]_1 [2]),
        .I2(\last_byte_reg[7]_1 [1]),
        .I3(Q[1]),
        .O(\align_offset[2]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \align_offset[2]_i_11__0 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(\last_byte_reg_n_0_[3] ),
        .I2(\last_byte_reg_n_0_[4] ),
        .I3(Q[0]),
        .O(\align_offset[2]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \align_offset[2]_i_12__0 
       (.I0(\last_byte_reg[7]_1 [2]),
        .I1(Q[2]),
        .I2(\last_byte_reg[7]_1 [3]),
        .I3(Q[0]),
        .O(\last_byte_reg[6]_1 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \align_offset[2]_i_13__0 
       (.I0(\last_byte_reg[7]_1 [3]),
        .I1(\last_byte_reg_n_0_[3] ),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\last_byte_reg[7]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \align_offset[2]_i_14 
       (.I0(\last_byte_reg_n_0_[4] ),
        .I1(\last_byte_reg[7]_1 [1]),
        .O(\last_byte_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \align_offset[2]_i_2__0 
       (.I0(\last_byte_reg[5]_0 ),
        .I1(\data_byte_aligned_reg[0]_2 ),
        .O(\align_offset[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00007FFF7FFF)) 
    \align_offset[2]_i_5__0 
       (.I0(\data_byte_aligned_reg[0]_3 ),
        .I1(\last_byte_reg[7]_1 [1]),
        .I2(\last_byte_reg_n_0_[4] ),
        .I3(\align_offset[2]_i_9__0_n_0 ),
        .I4(\align_offset[2]_i_10__0_n_0 ),
        .I5(\align_offset[2]_i_11__0_n_0 ),
        .O(\last_byte_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \align_offset[2]_i_9__0 
       (.I0(\last_byte_reg_n_0_[3] ),
        .I1(\last_byte_reg[7]_1 [3]),
        .I2(\last_byte_reg_n_0_[1] ),
        .I3(\last_byte_reg_n_0_[2] ),
        .O(\align_offset[2]_i_9__0_n_0 ));
  FDCE \align_offset_reg[0] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(\align_offset[0]_i_1_n_0 ),
        .Q(\align_offset_reg[1]_0 [0]));
  FDCE \align_offset_reg[1] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(\align_offset_reg[1]_0 [1]));
  FDCE \align_offset_reg[2] 
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(\align_offset[2]_i_2__0_n_0 ),
        .Q(\align_offset_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFF020000000200)) 
    \data_byte_aligned[0]_i_1__0 
       (.I0(\last_byte_reg[5]_0 ),
        .I1(\data_byte_aligned_reg[0]_1 ),
        .I2(\data_byte_aligned_reg[0]_2 ),
        .I3(Q[0]),
        .I4(data_byte_valid_reg_0),
        .I5(\data_byte_aligned[0]_i_2_n_0 ),
        .O(\data_byte_aligned[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[0]_i_2 
       (.I0(\data_byte_aligned[4]_i_4__0_n_0 ),
        .I1(\data_byte_aligned[0]_i_3__0_n_0 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned_reg[0]_4 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[0]_0 ),
        .O(\data_byte_aligned[0]_i_2_n_0 ));
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
        .I1(\data_byte_aligned[1]_i_4__0_n_0 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned[1]_i_5_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[5]_0 ),
        .O(data_byte_valid_reg_4));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[1]_i_4__0 
       (.I0(\last_byte_reg[7]_1 [1]),
        .I1(\last_byte_reg_n_0_[4] ),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[3] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[2] ),
        .O(\data_byte_aligned[1]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \data_byte_aligned[1]_i_5 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\align_offset_reg[1]_0 [0]),
        .I3(\align_offset_reg[1]_0 [1]),
        .I4(\last_byte_reg_n_0_[1] ),
        .O(\data_byte_aligned[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \data_byte_aligned[2]_i_2__0 
       (.I0(\data_byte_aligned[2]_i_3__0_n_0 ),
        .I1(data_byte_valid_reg_0),
        .I2(\data_byte_aligned[2]_i_4__0_n_0 ),
        .I3(\align_offset_reg_n_0_[2] ),
        .I4(\data_byte_aligned_reg[2]_0 ),
        .I5(data_byte_valid_reg_0),
        .O(data_byte_valid_reg_2));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \data_byte_aligned[2]_i_3__0 
       (.I0(\last_byte_reg_n_0_[2] ),
        .I1(\align_offset_reg[1]_0 [1]),
        .I2(Q[7]),
        .I3(\align_offset_reg[1]_0 [0]),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[6]_0 ),
        .O(\data_byte_aligned[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[2]_i_4__0 
       (.I0(\last_byte_reg[7]_1 [2]),
        .I1(\last_byte_reg[7]_1 [1]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg_n_0_[4] ),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[3] ),
        .O(\data_byte_aligned[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[3]_i_2 
       (.I0(\data_byte_aligned_reg[7]_1 ),
        .I1(\data_byte_aligned[3]_i_3__0_n_0 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned[3]_i_4__0_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[7]_0 ),
        .O(data_byte_valid_reg_5));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[3]_i_3__0 
       (.I0(\last_byte_reg[7]_1 [3]),
        .I1(\last_byte_reg[7]_1 [2]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_1 [1]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg_n_0_[4] ),
        .O(\data_byte_aligned[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_byte_aligned[3]_i_4__0 
       (.I0(\align_offset_reg[1]_0 [1]),
        .I1(\align_offset_reg[1]_0 [0]),
        .I2(\last_byte_reg_n_0_[3] ),
        .O(\data_byte_aligned[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \data_byte_aligned[4]_i_2__0 
       (.I0(data_byte_valid_reg_0),
        .I1(\data_byte_aligned[4]_i_3__0_n_0 ),
        .I2(data_byte_valid_reg_0),
        .I3(\data_byte_aligned[4]_i_4__0_n_0 ),
        .I4(\align_offset_reg_n_0_[2] ),
        .I5(\data_byte_aligned_reg[0]_0 ),
        .O(data_byte_valid_reg_1));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \data_byte_aligned[4]_i_3__0 
       (.I0(\align_offset_reg[1]_0 [1]),
        .I1(\align_offset_reg[1]_0 [0]),
        .I2(\last_byte_reg_n_0_[4] ),
        .I3(\align_offset_reg_n_0_[2] ),
        .I4(\data_byte_aligned[4]_i_2__0_0 ),
        .O(\data_byte_aligned[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[4]_i_4__0 
       (.I0(Q[0]),
        .I1(\last_byte_reg[7]_1 [3]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_1 [2]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg[7]_1 [1]),
        .O(\data_byte_aligned[4]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h474700FF00000000)) 
    \data_byte_aligned[5]_i_2__0 
       (.I0(\data_byte_aligned_reg[5]_0 ),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\data_byte_aligned[5]_i_4__0_n_0 ),
        .I3(\data_byte_aligned[5]_i_5__0_n_0 ),
        .I4(data_byte_valid_reg_0),
        .I5(data_byte_valid_reg_0),
        .O(\align_offset_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[5]_i_4__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\align_offset_reg[1]_0 [1]),
        .I3(\last_byte_reg[7]_1 [3]),
        .I4(\align_offset_reg[1]_0 [0]),
        .I5(\last_byte_reg[7]_1 [2]),
        .O(\data_byte_aligned[5]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h8800880033300030)) 
    \data_byte_aligned[5]_i_5__0 
       (.I0(\last_byte_reg[7]_1 [1]),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(Q[6]),
        .I3(\align_offset_reg[1]_0 [0]),
        .I4(Q[7]),
        .I5(\align_offset_reg[1]_0 [1]),
        .O(\data_byte_aligned[5]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \data_byte_aligned[6]_i_3__0 
       (.I0(\data_byte_aligned[6]_i_4__0_n_0 ),
        .I1(data_byte_valid_reg_0),
        .I2(\data_byte_aligned_reg[2]_0 ),
        .I3(\align_offset_reg_n_0_[2] ),
        .I4(\data_byte_aligned_reg[6]_0 ),
        .I5(data_byte_valid_reg_0),
        .O(data_byte_valid_reg_6));
  LUT5 #(
    .INIT(32'h80800300)) 
    \data_byte_aligned[6]_i_4__0 
       (.I0(\last_byte_reg[7]_1 [2]),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\align_offset_reg[1]_0 [0]),
        .I3(Q[7]),
        .I4(\align_offset_reg[1]_0 [1]),
        .O(\data_byte_aligned[6]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_byte_aligned[7]_i_3 
       (.I0(\data_byte_aligned_reg[7]_0 ),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\data_byte_aligned_reg[7]_1 ),
        .I3(data_byte_valid_reg_0),
        .I4(\data_byte_aligned[7]_i_6__0_n_0 ),
        .O(\align_offset_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_byte_aligned[7]_i_6__0 
       (.I0(\align_offset_reg[1]_0 [1]),
        .I1(\align_offset_reg_n_0_[2] ),
        .I2(\align_offset_reg[1]_0 [0]),
        .I3(\last_byte_reg[7]_1 [3]),
        .O(\data_byte_aligned[7]_i_6__0_n_0 ));
  FDCE \data_byte_aligned_reg[0] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_5 ),
        .CLR(AR),
        .D(\data_byte_aligned[0]_i_1__0_n_0 ),
        .Q(byte_data[8]));
  FDCE \data_byte_aligned_reg[1] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_5 ),
        .CLR(AR),
        .D(\data_byte_aligned_reg[7]_2 [0]),
        .Q(byte_data[9]));
  FDCE \data_byte_aligned_reg[2] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_5 ),
        .CLR(AR),
        .D(\data_byte_aligned_reg[7]_2 [1]),
        .Q(byte_data[10]));
  FDCE \data_byte_aligned_reg[3] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_5 ),
        .CLR(AR),
        .D(\data_byte_aligned_reg[7]_2 [2]),
        .Q(byte_data[11]));
  FDCE \data_byte_aligned_reg[4] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_5 ),
        .CLR(AR),
        .D(\data_byte_aligned_reg[7]_2 [3]),
        .Q(byte_data[12]));
  FDCE \data_byte_aligned_reg[5] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_5 ),
        .CLR(AR),
        .D(\data_byte_aligned_reg[7]_2 [4]),
        .Q(byte_data[13]));
  FDCE \data_byte_aligned_reg[6] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_5 ),
        .CLR(AR),
        .D(\data_byte_aligned_reg[7]_2 [5]),
        .Q(byte_data[14]));
  FDCE \data_byte_aligned_reg[7] 
       (.C(clk_hs_byte),
        .CE(\data_byte_aligned_reg[0]_5 ),
        .CLR(AR),
        .D(\data_byte_aligned_reg[7]_2 [6]),
        .Q(byte_data[15]));
  FDCE data_byte_valid_reg
       (.C(clk_hs_byte),
        .CE(E),
        .CLR(AR),
        .D(1'b1),
        .Q(data_byte_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][10]_i_1 
       (.I0(\lane_buf_reg[0][8] ),
        .I1(data_byte_valid_reg_0),
        .I2(byte_data[10]),
        .O(data_byte_valid_reg_3[2]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][11]_i_1 
       (.I0(\lane_buf_reg[0][8] ),
        .I1(data_byte_valid_reg_0),
        .I2(byte_data[11]),
        .O(data_byte_valid_reg_3[3]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][12]_i_1 
       (.I0(\lane_buf_reg[0][8] ),
        .I1(data_byte_valid_reg_0),
        .I2(byte_data[12]),
        .O(data_byte_valid_reg_3[4]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][13]_i_1 
       (.I0(\lane_buf_reg[0][8] ),
        .I1(data_byte_valid_reg_0),
        .I2(byte_data[13]),
        .O(data_byte_valid_reg_3[5]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][14]_i_1 
       (.I0(\lane_buf_reg[0][8] ),
        .I1(data_byte_valid_reg_0),
        .I2(byte_data[14]),
        .O(data_byte_valid_reg_3[6]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][15]_i_1 
       (.I0(\lane_buf_reg[0][8] ),
        .I1(data_byte_valid_reg_0),
        .I2(byte_data[15]),
        .O(data_byte_valid_reg_3[7]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][8]_i_1 
       (.I0(\lane_buf_reg[0][8] ),
        .I1(data_byte_valid_reg_0),
        .I2(byte_data[8]),
        .O(data_byte_valid_reg_3[0]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \lane_buf[0][9]_i_1 
       (.I0(\lane_buf_reg[0][8] ),
        .I1(data_byte_valid_reg_0),
        .I2(byte_data[9]),
        .O(data_byte_valid_reg_3[1]));
  FDCE \last_byte_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[0]),
        .Q(\last_byte_reg[7]_1 [0]));
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
        .Q(\last_byte_reg[7]_1 [1]));
  FDCE \last_byte_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[6]),
        .Q(\last_byte_reg[7]_1 [2]));
  FDCE \last_byte_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[7]),
        .Q(\last_byte_reg[7]_1 [3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_data_io
   (data_hs_bit_0,
    AR,
    dphy_data_p,
    dphy_data_n);
  output data_hs_bit_0;
  output [0:0]AR;
  input [0:0]dphy_data_p;
  input [0:0]dphy_data_n;

  wire [0:0]AR;
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
  LUT2 #(
    .INIT(4'hE)) 
    u_IDELAYE3_i_1
       (.I0(data_lp_p_0),
        .I1(data_lp_n_0),
        .O(AR));
endmodule

(* ORIG_REF_NAME = "_dphy_rx_data_io" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_data_io_0
   (data_hs_bit_1,
    AR,
    dphy_data_p,
    dphy_data_n);
  output data_hs_bit_1;
  output [0:0]AR;
  input [0:0]dphy_data_p;
  input [0:0]dphy_data_n;

  wire [0:0]AR;
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
  LUT2 #(
    .INIT(4'hE)) 
    u_IDELAYE3_i_1__0
       (.I0(data_lp_p_1),
        .I1(data_lp_n_1),
        .O(AR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_to_byte
   (Q,
    D,
    u_ISERDESE3_0,
    u_ISERDESE3_1,
    E,
    u_ISERDESE3_2,
    data_byte_valid_reg,
    u_ISERDESE3_3,
    u_ISERDESE3_4,
    \last_byte_reg[6] ,
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
    \align_offset_reg[0] ,
    \align_offset_reg[0]_0 ,
    \data_byte_aligned_reg[7] ,
    data_byte_valid_reg_0,
    \data_byte_aligned_reg[7]_0 ,
    \data_byte_aligned[2]_i_3 );
  output [7:0]Q;
  output [0:0]D;
  output u_ISERDESE3_0;
  output u_ISERDESE3_1;
  output [0:0]E;
  output u_ISERDESE3_2;
  output [0:0]data_byte_valid_reg;
  output u_ISERDESE3_3;
  output u_ISERDESE3_4;
  output \last_byte_reg[6] ;
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
  input \align_offset_reg[0] ;
  input \align_offset_reg[0]_0 ;
  input \data_byte_aligned_reg[7] ;
  input data_byte_valid_reg_0;
  input [3:0]\data_byte_aligned_reg[7]_0 ;
  input [1:0]\data_byte_aligned[2]_i_3 ;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire FIFO_RD_EN0;
  wire [7:0]Q;
  wire \align_offset[2]_i_14__0_n_0 ;
  wire \align_offset[2]_i_15_n_0 ;
  wire \align_offset[2]_i_16_n_0 ;
  wire \align_offset[2]_i_6_n_0 ;
  wire \align_offset[2]_i_9_n_0 ;
  wire \align_offset_reg[0] ;
  wire \align_offset_reg[0]_0 ;
  wire clk_hs_bit;
  wire clk_hs_byte;
  wire data_bit_delayed;
  wire [1:0]\data_byte_aligned[2]_i_3 ;
  wire \data_byte_aligned_reg[7] ;
  wire [3:0]\data_byte_aligned_reg[7]_0 ;
  wire [0:0]data_byte_valid_reg;
  wire data_byte_valid_reg_0;
  wire data_hs_bit_0;
  wire fifo_empty;
  wire \last_byte_reg[6] ;
  wire u_ISERDESE3_0;
  wire u_ISERDESE3_1;
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
    .INIT(16'h0001)) 
    \align_offset[0]_i_1__0 
       (.I0(u_ISERDESE3_0),
        .I1(\align_offset_reg[0] ),
        .I2(\align_offset_reg[0]_0 ),
        .I3(u_ISERDESE3_1),
        .O(D));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \align_offset[1]_i_2 
       (.I0(\align_offset[2]_i_14__0_n_0 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(\data_byte_aligned_reg[7]_0 [1]),
        .I4(Q[0]),
        .I5(\data_byte_aligned_reg[7]_0 [2]),
        .O(u_ISERDESE3_1));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h0000FFF7)) 
    \align_offset[2]_i_1 
       (.I0(u_ISERDESE3_2),
        .I1(\data_byte_aligned_reg[7] ),
        .I2(u_ISERDESE3_0),
        .I3(\align_offset[2]_i_6_n_0 ),
        .I4(data_byte_valid_reg_0),
        .O(E));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \align_offset[2]_i_10 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\data_byte_aligned_reg[7]_0 [1]),
        .I3(\data_byte_aligned_reg[7]_0 [0]),
        .O(u_ISERDESE3_3));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \align_offset[2]_i_13 
       (.I0(\data_byte_aligned_reg[7]_0 [2]),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(\data_byte_aligned_reg[7]_0 [3]),
        .I4(\align_offset[2]_i_16_n_0 ),
        .O(\last_byte_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \align_offset[2]_i_14__0 
       (.I0(\data_byte_aligned_reg[7]_0 [3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\align_offset[2]_i_14__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \align_offset[2]_i_15 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[6]),
        .O(\align_offset[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \align_offset[2]_i_16 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\align_offset[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFBF)) 
    \align_offset[2]_i_3 
       (.I0(Q[2]),
        .I1(\data_byte_aligned_reg[7]_0 [3]),
        .I2(\align_offset[2]_i_9_n_0 ),
        .I3(u_ISERDESE3_3),
        .I4(\align_offset_reg[0]_0 ),
        .I5(u_ISERDESE3_1),
        .O(u_ISERDESE3_2));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \align_offset[2]_i_5 
       (.I0(\align_offset[2]_i_14__0_n_0 ),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[6]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(u_ISERDESE3_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \align_offset[2]_i_6 
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(\align_offset[2]_i_15_n_0 ),
        .O(\align_offset[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \align_offset[2]_i_9 
       (.I0(Q[0]),
        .I1(\data_byte_aligned_reg[7]_0 [2]),
        .O(\align_offset[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[4]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\data_byte_aligned[2]_i_3 [1]),
        .I3(Q[2]),
        .I4(\data_byte_aligned[2]_i_3 [0]),
        .I5(Q[1]),
        .O(u_ISERDESE3_9));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_byte_aligned[4]_i_6 
       (.I0(Q[7]),
        .I1(\data_byte_aligned[2]_i_3 [1]),
        .I2(Q[6]),
        .I3(\data_byte_aligned[2]_i_3 [0]),
        .I4(Q[5]),
        .O(u_ISERDESE3_8));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[5]_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\data_byte_aligned[2]_i_3 [1]),
        .I3(Q[3]),
        .I4(\data_byte_aligned[2]_i_3 [0]),
        .I5(Q[2]),
        .O(u_ISERDESE3_6));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \data_byte_aligned[6]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\data_byte_aligned[2]_i_3 [0]),
        .I4(\data_byte_aligned_reg[7]_0 [3]),
        .I5(\data_byte_aligned[2]_i_3 [1]),
        .O(u_ISERDESE3_4));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[6]_i_5 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\data_byte_aligned[2]_i_3 [1]),
        .I3(Q[4]),
        .I4(\data_byte_aligned[2]_i_3 [0]),
        .I5(Q[3]),
        .O(u_ISERDESE3_10));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \data_byte_aligned[7]_i_1 
       (.I0(\align_offset[2]_i_6_n_0 ),
        .I1(u_ISERDESE3_0),
        .I2(\data_byte_aligned_reg[7] ),
        .I3(data_byte_valid_reg_0),
        .I4(u_ISERDESE3_2),
        .O(data_byte_valid_reg));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[7]_i_5 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\data_byte_aligned[2]_i_3 [1]),
        .I3(Q[1]),
        .I4(\data_byte_aligned[2]_i_3 [0]),
        .I5(Q[0]),
        .O(u_ISERDESE3_5));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[7]_i_6 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\data_byte_aligned[2]_i_3 [1]),
        .I3(Q[5]),
        .I4(\data_byte_aligned[2]_i_3 [0]),
        .I5(Q[4]),
        .O(u_ISERDESE3_7));
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_to_byte_1
   (Q,
    u_ISERDESE3_0,
    u_ISERDESE3_1,
    E,
    data_byte_valid_reg,
    D,
    \last_byte_reg[5] ,
    u_ISERDESE3_2,
    \last_byte_reg[5]_0 ,
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
    AR,
    clk_hs_bit,
    \align_offset_reg[1] ,
    \data_byte_aligned_reg[0] ,
    \data_byte_aligned_reg[1] ,
    \data_byte_aligned_reg[6] ,
    \data_byte_aligned_reg[5] ,
    \data_byte_aligned_reg[4] ,
    \data_byte_aligned_reg[2] ,
    \data_byte_aligned_reg[3] ,
    \data_byte_aligned_reg[7] ,
    \data_byte_aligned_reg[0]_0 ,
    \data_byte_aligned_reg[0]_1 ,
    \data_byte_aligned_reg[0]_2 ,
    \align_offset_reg[1]_0 ,
    \align_offset_reg[0] ,
    \data_byte_aligned[6]_i_3__0 ,
    \data_byte_aligned_reg[1]_0 ,
    \data_byte_aligned[6]_i_3__0_0 );
  output [7:0]Q;
  output u_ISERDESE3_0;
  output u_ISERDESE3_1;
  output [0:0]E;
  output [0:0]data_byte_valid_reg;
  output [6:0]D;
  output \last_byte_reg[5] ;
  output u_ISERDESE3_2;
  output [0:0]\last_byte_reg[5]_0 ;
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
  input [0:0]AR;
  input clk_hs_bit;
  input \align_offset_reg[1] ;
  input \data_byte_aligned_reg[0] ;
  input \data_byte_aligned_reg[1] ;
  input \data_byte_aligned_reg[6] ;
  input \data_byte_aligned_reg[5] ;
  input \data_byte_aligned_reg[4] ;
  input \data_byte_aligned_reg[2] ;
  input \data_byte_aligned_reg[3] ;
  input \data_byte_aligned_reg[7] ;
  input \data_byte_aligned_reg[0]_0 ;
  input \data_byte_aligned_reg[0]_1 ;
  input \data_byte_aligned_reg[0]_2 ;
  input \align_offset_reg[1]_0 ;
  input \align_offset_reg[0] ;
  input [3:0]\data_byte_aligned[6]_i_3__0 ;
  input \data_byte_aligned_reg[1]_0 ;
  input [1:0]\data_byte_aligned[6]_i_3__0_0 ;

  wire [0:0]AR;
  wire [6:0]D;
  wire [0:0]E;
  wire FIFO_RD_EN0;
  wire [7:0]Q;
  wire \align_offset[0]_i_5__0_n_0 ;
  wire \align_offset[0]_i_7_n_0 ;
  wire \align_offset[1]_i_2__0_n_0 ;
  wire \align_offset[2]_i_3__0_n_0 ;
  wire \align_offset[2]_i_4__0_n_0 ;
  wire \align_offset[2]_i_7__0_n_0 ;
  wire \align_offset_reg[0] ;
  wire \align_offset_reg[1] ;
  wire \align_offset_reg[1]_0 ;
  wire clk_hs_bit;
  wire clk_hs_byte;
  wire data_bit_delayed;
  wire \data_byte_aligned[1]_i_3_n_0 ;
  wire \data_byte_aligned[6]_i_2__0_n_0 ;
  wire [3:0]\data_byte_aligned[6]_i_3__0 ;
  wire [1:0]\data_byte_aligned[6]_i_3__0_0 ;
  wire \data_byte_aligned_reg[0] ;
  wire \data_byte_aligned_reg[0]_0 ;
  wire \data_byte_aligned_reg[0]_1 ;
  wire \data_byte_aligned_reg[0]_2 ;
  wire \data_byte_aligned_reg[1] ;
  wire \data_byte_aligned_reg[1]_0 ;
  wire \data_byte_aligned_reg[2] ;
  wire \data_byte_aligned_reg[3] ;
  wire \data_byte_aligned_reg[4] ;
  wire \data_byte_aligned_reg[5] ;
  wire \data_byte_aligned_reg[6] ;
  wire \data_byte_aligned_reg[7] ;
  wire [0:0]data_byte_valid_reg;
  wire data_hs_bit_1;
  wire fifo_empty;
  wire \last_byte_reg[5] ;
  wire [0:0]\last_byte_reg[5]_0 ;
  wire u_ISERDESE3_0;
  wire u_ISERDESE3_1;
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

  LUT6 #(
    .INIT(64'h7777707777777777)) 
    \align_offset[0]_i_2__0 
       (.I0(\align_offset[0]_i_5__0_n_0 ),
        .I1(\align_offset[2]_i_7__0_n_0 ),
        .I2(\align_offset_reg[0] ),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\align_offset[0]_i_7_n_0 ),
        .O(u_ISERDESE3_1));
  LUT4 #(
    .INIT(16'h1000)) 
    \align_offset[0]_i_5__0 
       (.I0(\data_byte_aligned[6]_i_3__0 [3]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[6]),
        .O(\align_offset[0]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \align_offset[0]_i_7 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(\data_byte_aligned[6]_i_3__0 [1]),
        .O(\align_offset[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \align_offset[1]_i_1__0 
       (.I0(\align_offset_reg[1] ),
        .I1(\align_offset[1]_i_2__0_n_0 ),
        .I2(\last_byte_reg[5] ),
        .O(\last_byte_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \align_offset[1]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(\align_offset_reg[1]_0 ),
        .O(\align_offset[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \align_offset[1]_i_3 
       (.I0(\data_byte_aligned[6]_i_3__0 [1]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\data_byte_aligned_reg[1]_0 ),
        .O(\last_byte_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \align_offset[2]_i_1__0 
       (.I0(\align_offset[2]_i_3__0_n_0 ),
        .I1(\align_offset[2]_i_4__0_n_0 ),
        .I2(\data_byte_aligned_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \align_offset[2]_i_3__0 
       (.I0(u_ISERDESE3_1),
        .I1(\align_offset[1]_i_2__0_n_0 ),
        .I2(\align_offset_reg[1] ),
        .I3(u_ISERDESE3_0),
        .O(\align_offset[2]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \align_offset[2]_i_4__0 
       (.I0(\align_offset[2]_i_7__0_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(\align_offset[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080FF8080)) 
    \align_offset[2]_i_6__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\data_byte_aligned_reg[0]_0 ),
        .I3(\data_byte_aligned_reg[0]_1 ),
        .I4(u_ISERDESE3_2),
        .I5(\data_byte_aligned_reg[0]_2 ),
        .O(u_ISERDESE3_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \align_offset[2]_i_7__0 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[0]),
        .O(\align_offset[2]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \align_offset[2]_i_8__0 
       (.I0(Q[0]),
        .I1(\data_byte_aligned[6]_i_3__0 [2]),
        .O(u_ISERDESE3_2));
  LUT6 #(
    .INIT(64'hFFF0CCAA00F0CCAA)) 
    \data_byte_aligned[0]_i_4__0 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\data_byte_aligned[6]_i_3__0_0 [0]),
        .I4(\data_byte_aligned[6]_i_3__0_0 [1]),
        .I5(\data_byte_aligned[6]_i_3__0 [0]),
        .O(u_ISERDESE3_6));
  LUT5 #(
    .INIT(32'h8B888888)) 
    \data_byte_aligned[1]_i_1__0 
       (.I0(\data_byte_aligned_reg[1] ),
        .I1(\data_byte_aligned_reg[0] ),
        .I2(\last_byte_reg[5] ),
        .I3(Q[1]),
        .I4(\data_byte_aligned[1]_i_3_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_byte_aligned[1]_i_3 
       (.I0(u_ISERDESE3_0),
        .I1(\align_offset_reg[1] ),
        .I2(\align_offset[1]_i_2__0_n_0 ),
        .O(\data_byte_aligned[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \data_byte_aligned[2]_i_1__0 
       (.I0(\data_byte_aligned[6]_i_2__0_n_0 ),
        .I1(Q[2]),
        .I2(\data_byte_aligned_reg[2] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hFE0E)) 
    \data_byte_aligned[3]_i_1__0 
       (.I0(Q[3]),
        .I1(\align_offset[2]_i_3__0_n_0 ),
        .I2(\data_byte_aligned_reg[0] ),
        .I3(\data_byte_aligned_reg[3] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_byte_aligned[4]_i_1__0 
       (.I0(\data_byte_aligned[6]_i_2__0_n_0 ),
        .I1(Q[4]),
        .I2(\data_byte_aligned_reg[4] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[4]_i_5__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\data_byte_aligned[6]_i_3__0_0 [1]),
        .I3(Q[2]),
        .I4(\data_byte_aligned[6]_i_3__0_0 [0]),
        .I5(Q[1]),
        .O(u_ISERDESE3_9));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_byte_aligned[4]_i_6__0 
       (.I0(Q[7]),
        .I1(\data_byte_aligned[6]_i_3__0_0 [1]),
        .I2(Q[6]),
        .I3(\data_byte_aligned[6]_i_3__0_0 [0]),
        .I4(Q[5]),
        .O(u_ISERDESE3_7));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_byte_aligned[5]_i_1__0 
       (.I0(\data_byte_aligned[6]_i_2__0_n_0 ),
        .I1(Q[5]),
        .I2(\data_byte_aligned_reg[5] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[5]_i_3__0 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\data_byte_aligned[6]_i_3__0_0 [1]),
        .I3(Q[3]),
        .I4(\data_byte_aligned[6]_i_3__0_0 [0]),
        .I5(Q[2]),
        .O(u_ISERDESE3_3));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \data_byte_aligned[6]_i_1__0 
       (.I0(\data_byte_aligned[6]_i_2__0_n_0 ),
        .I1(Q[6]),
        .I2(\data_byte_aligned_reg[6] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \data_byte_aligned[6]_i_2__0 
       (.I0(u_ISERDESE3_0),
        .I1(\align_offset_reg[1] ),
        .I2(\align_offset[1]_i_2__0_n_0 ),
        .I3(u_ISERDESE3_1),
        .I4(\data_byte_aligned_reg[0] ),
        .O(\data_byte_aligned[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[6]_i_5__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\data_byte_aligned[6]_i_3__0_0 [1]),
        .I3(Q[0]),
        .I4(\data_byte_aligned[6]_i_3__0_0 [0]),
        .I5(\data_byte_aligned[6]_i_3__0 [3]),
        .O(u_ISERDESE3_8));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[6]_i_6 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\data_byte_aligned[6]_i_3__0_0 [1]),
        .I3(Q[4]),
        .I4(\data_byte_aligned[6]_i_3__0_0 [0]),
        .I5(Q[3]),
        .O(u_ISERDESE3_10));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \data_byte_aligned[7]_i_1__0 
       (.I0(\align_offset[2]_i_3__0_n_0 ),
        .I1(\align_offset[2]_i_4__0_n_0 ),
        .I2(\data_byte_aligned_reg[0] ),
        .O(data_byte_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hFE0E)) 
    \data_byte_aligned[7]_i_2__0 
       (.I0(Q[7]),
        .I1(\align_offset[2]_i_3__0_n_0 ),
        .I2(\data_byte_aligned_reg[0] ),
        .I3(\data_byte_aligned_reg[7] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[7]_i_4__0 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\data_byte_aligned[6]_i_3__0_0 [1]),
        .I3(Q[5]),
        .I4(\data_byte_aligned[6]_i_3__0_0 [0]),
        .I5(Q[4]),
        .O(u_ISERDESE3_4));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_byte_aligned[7]_i_5__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\data_byte_aligned[6]_i_3__0_0 [1]),
        .I3(Q[1]),
        .I4(\data_byte_aligned[6]_i_3__0_0 [0]),
        .I5(Q[0]),
        .O(u_ISERDESE3_5));
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
    u_ISERDESE3_i_1__0
       (.I0(fifo_empty),
        .O(FIFO_RD_EN0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_csi2_rx_to_pixel
   (AR,
    pix_valid,
    pix_data_enable,
    align_flag,
    Q,
    \align_idx_reg[0][1] ,
    E,
    \lane_buf_reg[2][15] ,
    \lane_buf_reg[1][15] ,
    \lane_buf_reg[0][15] ,
    \lane_buf_reg[6][15] ,
    \lane_buf_reg[5][15] ,
    \lane_buf_reg[4][15] ,
    \lane_buf_reg[3][15] ,
    \reg_pix_di_reg[7]_0 ,
    \reg_pix_data_reg[19]_0 ,
    clk_hs_byte,
    align_flag_reg,
    byte_data_valid,
    locked_reg,
    module_reset,
    s00_axi_aresetn,
    \align_idx_reg[0][0] ,
    D,
    \lane_buf_reg[0][15]_0 ,
    \lane_buf_reg[1][15]_0 ,
    \lane_buf_reg[2][15]_0 ,
    \lane_buf_reg[3][15]_0 ,
    \lane_buf_reg[4][15]_0 ,
    \lane_buf_reg[5][15]_0 ,
    \lane_buf_reg[6][15]_0 ,
    \lane_buf_reg[7][15] ,
    \align_idx_reg[1][0] ,
    \align_idx_reg[1][1] );
  output [0:0]AR;
  output pix_valid;
  output pix_data_enable;
  output align_flag;
  output [1:0]Q;
  output [1:0]\align_idx_reg[0][1] ;
  output [0:0]E;
  output [15:0]\lane_buf_reg[2][15] ;
  output [15:0]\lane_buf_reg[1][15] ;
  output [15:0]\lane_buf_reg[0][15] ;
  output [15:0]\lane_buf_reg[6][15] ;
  output [15:0]\lane_buf_reg[5][15] ;
  output [15:0]\lane_buf_reg[4][15] ;
  output [15:0]\lane_buf_reg[3][15] ;
  output [7:0]\reg_pix_di_reg[7]_0 ;
  output [19:0]\reg_pix_data_reg[19]_0 ;
  input clk_hs_byte;
  input align_flag_reg;
  input [1:0]byte_data_valid;
  input locked_reg;
  input module_reset;
  input s00_axi_aresetn;
  input [0:0]\align_idx_reg[0][0] ;
  input [1:0]D;
  input [15:0]\lane_buf_reg[0][15]_0 ;
  input [15:0]\lane_buf_reg[1][15]_0 ;
  input [15:0]\lane_buf_reg[2][15]_0 ;
  input [15:0]\lane_buf_reg[3][15]_0 ;
  input [15:0]\lane_buf_reg[4][15]_0 ;
  input [15:0]\lane_buf_reg[5][15]_0 ;
  input [15:0]\lane_buf_reg[6][15]_0 ;
  input [15:0]\lane_buf_reg[7][15] ;
  input [0:0]\align_idx_reg[1][0] ;
  input [1:0]\align_idx_reg[1][1] ;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire align_flag;
  wire align_flag_reg;
  wire [0:0]\align_idx_reg[0][0] ;
  wire [1:0]\align_idx_reg[0][1] ;
  wire [0:0]\align_idx_reg[1][0] ;
  wire [1:0]\align_idx_reg[1][1] ;
  wire [1:0]byte_data_valid;
  wire clk_hs_byte;
  wire [7:0]data_id_2;
  wire flag_ready;
  wire [1:0]head_clk_idx;
  wire [15:0]\lane_buf_reg[0][15] ;
  wire [15:0]\lane_buf_reg[0][15]_0 ;
  wire [15:0]\lane_buf_reg[1][15] ;
  wire [15:0]\lane_buf_reg[1][15]_0 ;
  wire [15:0]\lane_buf_reg[2][15] ;
  wire [15:0]\lane_buf_reg[2][15]_0 ;
  wire [15:0]\lane_buf_reg[3][15] ;
  wire [15:0]\lane_buf_reg[3][15]_0 ;
  wire [15:0]\lane_buf_reg[4][15] ;
  wire [15:0]\lane_buf_reg[4][15]_0 ;
  wire [15:0]\lane_buf_reg[5][15] ;
  wire [15:0]\lane_buf_reg[5][15]_0 ;
  wire [15:0]\lane_buf_reg[6][15] ;
  wire [15:0]\lane_buf_reg[6][15]_0 ;
  wire [15:0]\lane_buf_reg[7][15] ;
  wire locked_reg;
  wire module_reset;
  wire [31:16]p_2_in;
  wire pix_data_enable;
  wire pix_valid;
  wire [15:0]pkt_data;
  wire pkt_valid;
  wire raw10_pix_data_enable;
  wire raw10_pix_valid;
  wire [19:0]\reg_pix_data_reg[19]_0 ;
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
  wire u_csi2_lanes_aligner_n_2;
  wire u_csi2_lanes_aligner_n_3;
  wire u_csi2_lanes_aligner_n_38;
  wire u_csi2_lanes_aligner_n_4;
  wire u_csi2_lanes_aligner_n_5;
  wire u_csi2_lanes_aligner_n_6;
  wire u_csi2_lanes_aligner_n_7;
  wire u_csi2_lanes_aligner_n_8;
  wire u_csi2_lanes_aligner_n_9;
  wire u_csi2_packet_decoder_n_1;
  wire u_csi2_packet_decoder_n_12;
  wire u_csi2_packet_decoder_n_13;
  wire u_csi2_packet_decoder_n_14;
  wire u_csi2_packet_decoder_n_15;
  wire u_csi2_packet_decoder_n_16;
  wire u_csi2_packet_decoder_n_19;
  wire u_csi2_packet_decoder_n_2;
  wire u_csi2_packet_decoder_n_20;
  wire u_csi2_packet_decoder_n_21;
  wire u_csi2_packet_decoder_n_22;
  wire u_csi2_packet_decoder_n_23;
  wire u_csi2_packet_decoder_n_24;
  wire u_csi2_packet_decoder_n_25;
  wire u_csi2_packet_decoder_n_26;
  wire u_csi2_packet_decoder_n_27;
  wire u_csi2_packet_decoder_n_28;
  wire u_csi2_packet_decoder_n_29;
  wire u_csi2_packet_decoder_n_3;
  wire u_csi2_packet_decoder_n_30;
  wire u_csi2_packet_decoder_n_31;
  wire u_csi2_packet_decoder_n_32;
  wire u_csi2_packet_decoder_n_33;
  wire u_csi2_packet_decoder_n_34;
  wire u_csi2_packet_decoder_n_4;
  wire u_csi2_packet_decoder_n_5;
  wire u_csi2_raw10_unpack_n_10;
  wire u_csi2_raw10_unpack_n_11;
  wire u_csi2_raw10_unpack_n_12;
  wire u_csi2_raw10_unpack_n_13;
  wire u_csi2_raw10_unpack_n_14;
  wire u_csi2_raw10_unpack_n_15;
  wire u_csi2_raw10_unpack_n_16;
  wire u_csi2_raw10_unpack_n_17;
  wire u_csi2_raw10_unpack_n_18;
  wire u_csi2_raw10_unpack_n_19;
  wire u_csi2_raw10_unpack_n_2;
  wire u_csi2_raw10_unpack_n_20;
  wire u_csi2_raw10_unpack_n_21;
  wire u_csi2_raw10_unpack_n_22;
  wire u_csi2_raw10_unpack_n_23;
  wire u_csi2_raw10_unpack_n_24;
  wire u_csi2_raw10_unpack_n_25;
  wire u_csi2_raw10_unpack_n_26;
  wire u_csi2_raw10_unpack_n_27;
  wire u_csi2_raw10_unpack_n_3;
  wire u_csi2_raw10_unpack_n_4;
  wire u_csi2_raw10_unpack_n_5;
  wire u_csi2_raw10_unpack_n_6;
  wire u_csi2_raw10_unpack_n_7;
  wire u_csi2_raw10_unpack_n_8;
  wire u_csi2_raw10_unpack_n_9;

  LUT2 #(
    .INIT(4'h2)) 
    locked_i_1
       (.I0(pix_valid),
        .I1(locked_reg),
        .O(E));
  FDCE reg_pix_data_enable_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_packet_decoder_n_3),
        .Q(pix_data_enable));
  FDCE \reg_pix_data_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_27),
        .Q(\reg_pix_data_reg[19]_0 [0]));
  FDCE \reg_pix_data_reg[10] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_17),
        .Q(\reg_pix_data_reg[19]_0 [10]));
  FDCE \reg_pix_data_reg[11] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_16),
        .Q(\reg_pix_data_reg[19]_0 [11]));
  FDCE \reg_pix_data_reg[12] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_15),
        .Q(\reg_pix_data_reg[19]_0 [12]));
  FDCE \reg_pix_data_reg[13] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_14),
        .Q(\reg_pix_data_reg[19]_0 [13]));
  FDCE \reg_pix_data_reg[14] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_13),
        .Q(\reg_pix_data_reg[19]_0 [14]));
  FDCE \reg_pix_data_reg[15] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_12),
        .Q(\reg_pix_data_reg[19]_0 [15]));
  FDCE \reg_pix_data_reg[16] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_11),
        .Q(\reg_pix_data_reg[19]_0 [16]));
  FDCE \reg_pix_data_reg[17] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_10),
        .Q(\reg_pix_data_reg[19]_0 [17]));
  FDCE \reg_pix_data_reg[18] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_9),
        .Q(\reg_pix_data_reg[19]_0 [18]));
  FDCE \reg_pix_data_reg[19] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_8),
        .Q(\reg_pix_data_reg[19]_0 [19]));
  FDCE \reg_pix_data_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_26),
        .Q(\reg_pix_data_reg[19]_0 [1]));
  FDCE \reg_pix_data_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_25),
        .Q(\reg_pix_data_reg[19]_0 [2]));
  FDCE \reg_pix_data_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_24),
        .Q(\reg_pix_data_reg[19]_0 [3]));
  FDCE \reg_pix_data_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_23),
        .Q(\reg_pix_data_reg[19]_0 [4]));
  FDCE \reg_pix_data_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_22),
        .Q(\reg_pix_data_reg[19]_0 [5]));
  FDCE \reg_pix_data_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_21),
        .Q(\reg_pix_data_reg[19]_0 [6]));
  FDCE \reg_pix_data_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_20),
        .Q(\reg_pix_data_reg[19]_0 [7]));
  FDCE \reg_pix_data_reg[8] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_19),
        .Q(\reg_pix_data_reg[19]_0 [8]));
  FDCE \reg_pix_data_reg[9] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_18),
        .Q(\reg_pix_data_reg[19]_0 [9]));
  FDCE \reg_pix_di_reg[0] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_7),
        .Q(\reg_pix_di_reg[7]_0 [0]));
  FDCE \reg_pix_di_reg[1] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_6),
        .Q(\reg_pix_di_reg[7]_0 [1]));
  FDCE \reg_pix_di_reg[2] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_packet_decoder_n_5),
        .Q(\reg_pix_di_reg[7]_0 [2]));
  FDCE \reg_pix_di_reg[3] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_5),
        .Q(\reg_pix_di_reg[7]_0 [3]));
  FDCE \reg_pix_di_reg[4] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_packet_decoder_n_4),
        .Q(\reg_pix_di_reg[7]_0 [4]));
  FDCE \reg_pix_di_reg[5] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_4),
        .Q(\reg_pix_di_reg[7]_0 [5]));
  FDCE \reg_pix_di_reg[6] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_3),
        .Q(\reg_pix_di_reg[7]_0 [6]));
  FDCE \reg_pix_di_reg[7] 
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_raw10_unpack_n_2),
        .Q(\reg_pix_di_reg[7]_0 [7]));
  FDCE reg_pix_valid_reg
       (.C(clk_hs_byte),
        .CE(1'b1),
        .CLR(AR),
        .D(u_csi2_packet_decoder_n_1),
        .Q(pix_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__csi2_lanes_aligner u_csi2_lanes_aligner
       (.D({u_csi2_lanes_aligner_n_2,u_csi2_lanes_aligner_n_3,u_csi2_lanes_aligner_n_4,u_csi2_lanes_aligner_n_5,u_csi2_lanes_aligner_n_6,u_csi2_lanes_aligner_n_7,u_csi2_lanes_aligner_n_8,u_csi2_lanes_aligner_n_9,u_csi2_lanes_aligner_n_10,u_csi2_lanes_aligner_n_11,u_csi2_lanes_aligner_n_12,u_csi2_lanes_aligner_n_13,u_csi2_lanes_aligner_n_14,u_csi2_lanes_aligner_n_15,u_csi2_lanes_aligner_n_16,u_csi2_lanes_aligner_n_17}),
        .Q(head_clk_idx),
        .align_flag_reg_0(align_flag),
        .align_flag_reg_1(u_csi2_lanes_aligner_n_38),
        .align_flag_reg_2(align_flag_reg),
        .\align_idx_reg[0][0]_0 (\align_idx_reg[0][0] ),
        .\align_idx_reg[0][1]_0 (\align_idx_reg[0][1] ),
        .\align_idx_reg[0][1]_1 (D),
        .\align_idx_reg[1][0]_0 (\align_idx_reg[1][0] ),
        .\align_idx_reg[1][1]_0 (Q),
        .\align_idx_reg[1][1]_1 (\align_idx_reg[1][1] ),
        .byte_data_valid(byte_data_valid),
        .clk_hs_byte(clk_hs_byte),
        .\head_clk_idx_reg[0] (p_2_in),
        .\lane_buf_reg[0][15]_0 (\lane_buf_reg[0][15] ),
        .\lane_buf_reg[0][15]_1 (\lane_buf_reg[0][15]_0 ),
        .\lane_buf_reg[1][15]_0 (\lane_buf_reg[1][15] ),
        .\lane_buf_reg[1][15]_1 (\lane_buf_reg[1][15]_0 ),
        .\lane_buf_reg[2][15]_0 (\lane_buf_reg[2][15] ),
        .\lane_buf_reg[2][15]_1 (\lane_buf_reg[2][15]_0 ),
        .\lane_buf_reg[3][15]_0 (\lane_buf_reg[3][15] ),
        .\lane_buf_reg[3][15]_1 (\lane_buf_reg[3][15]_0 ),
        .\lane_buf_reg[4][15]_0 (\lane_buf_reg[4][15] ),
        .\lane_buf_reg[4][15]_1 (\lane_buf_reg[4][15]_0 ),
        .\lane_buf_reg[5][15]_0 (\lane_buf_reg[5][15] ),
        .\lane_buf_reg[5][15]_1 (\lane_buf_reg[5][15]_0 ),
        .\lane_buf_reg[6][15]_0 (\lane_buf_reg[6][15] ),
        .\lane_buf_reg[6][15]_1 (\lane_buf_reg[6][15]_0 ),
        .\lane_buf_reg[7][15]_0 (\lane_buf_reg[7][15] ),
        .module_reset(module_reset),
        .module_reset_reg(AR),
        .s00_axi_aresetn(s00_axi_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__csi2_packet_decoder u_csi2_packet_decoder
       (.D({u_csi2_packet_decoder_n_4,u_csi2_packet_decoder_n_5}),
        .E(u_csi2_packet_decoder_n_16),
        .Q({data_id_2[7:5],data_id_2[3],data_id_2[1:0]}),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_2_reg[0]_0 (AR),
        .\data_byte_2_reg[15]_0 ({u_csi2_packet_decoder_n_19,u_csi2_packet_decoder_n_20,u_csi2_packet_decoder_n_21,u_csi2_packet_decoder_n_22,u_csi2_packet_decoder_n_23,u_csi2_packet_decoder_n_24,u_csi2_packet_decoder_n_25,u_csi2_packet_decoder_n_26,u_csi2_packet_decoder_n_27,u_csi2_packet_decoder_n_28,u_csi2_packet_decoder_n_29,u_csi2_packet_decoder_n_30,u_csi2_packet_decoder_n_31,u_csi2_packet_decoder_n_32,u_csi2_packet_decoder_n_33,u_csi2_packet_decoder_n_34}),
        .\data_byte_2_reg[15]_1 (pkt_data),
        .\data_byte_reg[15]_0 ({u_csi2_lanes_aligner_n_2,u_csi2_lanes_aligner_n_3,u_csi2_lanes_aligner_n_4,u_csi2_lanes_aligner_n_5,u_csi2_lanes_aligner_n_6,u_csi2_lanes_aligner_n_7,u_csi2_lanes_aligner_n_8,u_csi2_lanes_aligner_n_9,u_csi2_lanes_aligner_n_10,u_csi2_lanes_aligner_n_11,u_csi2_lanes_aligner_n_12,u_csi2_lanes_aligner_n_13,u_csi2_lanes_aligner_n_14,u_csi2_lanes_aligner_n_15,u_csi2_lanes_aligner_n_16,u_csi2_lanes_aligner_n_17}),
        .data_flag_2_reg_0({u_csi2_packet_decoder_n_12,u_csi2_packet_decoder_n_13,u_csi2_packet_decoder_n_14}),
        .data_flag_2_reg_1(u_csi2_packet_decoder_n_15),
        .\data_id_2_reg[4]_0 (u_csi2_packet_decoder_n_2),
        .\di_reg_reg[3] (flag_ready),
        .\head_clk_idx_reg[0]_0 (u_csi2_lanes_aligner_n_38),
        .\head_clk_idx_reg[1]_0 (head_clk_idx),
        .\head_word_reg[0]_0 (align_flag),
        .\head_word_reg[31]_0 (p_2_in),
        .pkt_valid(pkt_valid),
        .raw10_pix_data_enable(raw10_pix_data_enable),
        .raw10_pix_valid(raw10_pix_valid),
        .reg_pix_valid_reg(u_csi2_packet_decoder_n_1),
        .reg_pix_valid_reg_0(u_csi2_packet_decoder_n_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__csi2_raw10_unpack u_csi2_raw10_unpack
       (.D({u_csi2_raw10_unpack_n_2,u_csi2_raw10_unpack_n_3,u_csi2_raw10_unpack_n_4,u_csi2_raw10_unpack_n_5,u_csi2_raw10_unpack_n_6,u_csi2_raw10_unpack_n_7}),
        .E(u_csi2_packet_decoder_n_16),
        .Q({data_id_2[7:5],data_id_2[3],data_id_2[1:0]}),
        .clk_hs_byte(clk_hs_byte),
        .\di_reg_reg[7]_0 ({u_csi2_packet_decoder_n_12,u_csi2_packet_decoder_n_13,u_csi2_packet_decoder_n_14}),
        .\last_data_reg[31]_0 ({u_csi2_packet_decoder_n_19,u_csi2_packet_decoder_n_20,u_csi2_packet_decoder_n_21,u_csi2_packet_decoder_n_22,u_csi2_packet_decoder_n_23,u_csi2_packet_decoder_n_24,u_csi2_packet_decoder_n_25,u_csi2_packet_decoder_n_26,u_csi2_packet_decoder_n_27,u_csi2_packet_decoder_n_28,u_csi2_packet_decoder_n_29,u_csi2_packet_decoder_n_30,u_csi2_packet_decoder_n_31,u_csi2_packet_decoder_n_32,u_csi2_packet_decoder_n_33,u_csi2_packet_decoder_n_34}),
        .\last_size_reg[2]_0 (u_csi2_packet_decoder_n_15),
        .pkt_valid(pkt_valid),
        .raw10_pix_data_enable(raw10_pix_data_enable),
        .raw10_pix_valid(raw10_pix_valid),
        .\ready_delay_reg[1]_0 (flag_ready),
        .\reg_pix_data_reg[15]_0 (pkt_data),
        .\reg_pix_di_reg[3]_0 (AR),
        .\reg_pix_di_reg[7]_0 (u_csi2_packet_decoder_n_2),
        .reg_pix_valid_reg_0({u_csi2_raw10_unpack_n_8,u_csi2_raw10_unpack_n_9,u_csi2_raw10_unpack_n_10,u_csi2_raw10_unpack_n_11,u_csi2_raw10_unpack_n_12,u_csi2_raw10_unpack_n_13,u_csi2_raw10_unpack_n_14,u_csi2_raw10_unpack_n_15,u_csi2_raw10_unpack_n_16,u_csi2_raw10_unpack_n_17,u_csi2_raw10_unpack_n_18,u_csi2_raw10_unpack_n_19,u_csi2_raw10_unpack_n_20,u_csi2_raw10_unpack_n_21,u_csi2_raw10_unpack_n_22,u_csi2_raw10_unpack_n_23,u_csi2_raw10_unpack_n_24,u_csi2_raw10_unpack_n_25,u_csi2_raw10_unpack_n_26,u_csi2_raw10_unpack_n_27}));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_mipi_rx_to_video_ias1_0,mipi_rx_to_video_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "mipi_rx_to_video_v1_0,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_rx DATA_P" *) input [1:0]dphy_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_rx DATA_N" *) input [1:0]dphy_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_clk, ASSOCIATED_BUSIF video, ASSOCIATED_RESET vid_ce, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_mipi_rx_to_video_ias1_0_vid_clk, INSERT_VIP 0" *) output vid_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 vid_ce CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_ce, FREQ_HZ 100000000, PHASE 0, POLARITY ACTIVE_HIGH" *) output vid_ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video VSYNC" *) output vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video ACTIVE_VIDEO" *) output vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video DATA" *) output [19:0]vid_data;
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
  (* DIFF_TERM_ADV = "TERM_100" *) (* IOSTANDARD = "MIPI_DPHY_DCI" *) wire [1:0]dphy_data_n;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IOSTANDARD = "MIPI_DPHY_DCI" *) wire [1:0]dphy_data_p;
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
  wire [19:0]vid_data;
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
  (* HS_SETTLE_DELAY = "0" *) 
  (* LANES_NUM = "2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mipi_rx_to_video_v1_0 inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dphy_rx_to_byte
   (clk_hs_byte,
    byte_data_valid,
    data_byte_valid_reg,
    D,
    data_byte_valid_reg_0,
    data_byte_valid_reg_1,
    data_byte_valid_reg_2,
    data_byte_valid_reg_3,
    data_byte_valid_reg_4,
    data_byte_valid_reg_5,
    data_byte_valid_reg_6,
    data_byte_valid_reg_7,
    data_byte_valid_reg_8,
    data_byte_valid_reg_9,
    data_byte_valid_reg_10,
    dphy_data_p,
    dphy_data_n,
    align_flag,
    \align_idx_reg[0][1] ,
    Q,
    \lane_buf_reg[1][15] ,
    \lane_buf_reg[2][15] ,
    \lane_buf_reg[3][15] ,
    \lane_buf_reg[4][15] ,
    \lane_buf_reg[5][15] ,
    \lane_buf_reg[6][15] ,
    \lane_buf_reg[7][15] ,
    dphy_clk_p,
    dphy_clk_n);
  output clk_hs_byte;
  output [1:0]byte_data_valid;
  output [0:0]data_byte_valid_reg;
  output [1:0]D;
  output [1:0]data_byte_valid_reg_0;
  output [15:0]data_byte_valid_reg_1;
  output [15:0]data_byte_valid_reg_2;
  output [15:0]data_byte_valid_reg_3;
  output [15:0]data_byte_valid_reg_4;
  output [15:0]data_byte_valid_reg_5;
  output [15:0]data_byte_valid_reg_6;
  output [15:0]data_byte_valid_reg_7;
  output [15:0]data_byte_valid_reg_8;
  output [0:0]data_byte_valid_reg_9;
  output data_byte_valid_reg_10;
  input [1:0]dphy_data_p;
  input [1:0]dphy_data_n;
  input align_flag;
  input [1:0]\align_idx_reg[0][1] ;
  input [1:0]Q;
  input [15:0]\lane_buf_reg[1][15] ;
  input [15:0]\lane_buf_reg[2][15] ;
  input [15:0]\lane_buf_reg[3][15] ;
  input [15:0]\lane_buf_reg[4][15] ;
  input [15:0]\lane_buf_reg[5][15] ;
  input [15:0]\lane_buf_reg[6][15] ;
  input [15:0]\lane_buf_reg[7][15] ;
  input dphy_clk_p;
  input dphy_clk_n;

  wire [1:0]D;
  wire [1:0]Q;
  wire align_flag;
  wire [1:0]\align_idx_reg[0][1] ;
  wire [1:0]align_offset;
  wire [1:0]byte_data_valid;
  wire clk_hs_bit;
  wire clk_hs_byte;
  wire [0:0]data6;
  wire [0:0]data6__0;
  wire [0:0]data_byte_valid_reg;
  wire [1:0]data_byte_valid_reg_0;
  wire [15:0]data_byte_valid_reg_1;
  wire data_byte_valid_reg_10;
  wire [15:0]data_byte_valid_reg_2;
  wire [15:0]data_byte_valid_reg_3;
  wire [15:0]data_byte_valid_reg_4;
  wire [15:0]data_byte_valid_reg_5;
  wire [15:0]data_byte_valid_reg_6;
  wire [15:0]data_byte_valid_reg_7;
  wire [15:0]data_byte_valid_reg_8;
  wire [0:0]data_byte_valid_reg_9;
  wire data_hs_bit_0;
  wire data_hs_bit_1;
  wire [7:0]data_hs_byte_0;
  wire [7:0]data_hs_byte_8;
  wire dphy_clk_n;
  wire dphy_clk_p;
  wire [1:0]dphy_data_n;
  wire [1:0]dphy_data_p;
  wire \genblk2[0].u_dphy_rx_to_byte_n_10 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_11 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_12 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_13 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_14 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_15 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_16 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_17 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_18 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_19 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_20 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_21 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_22 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_8 ;
  wire \genblk2[0].u_dphy_rx_to_byte_n_9 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_10 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_11 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_12 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_13 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_14 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_15 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_16 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_17 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_18 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_19 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_20 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_21 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_22 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_23 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_24 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_25 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_26 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_27 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_28 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_29 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_8 ;
  wire \genblk2[1].u_dphy_rx_to_byte_n_9 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_129 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_130 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_132 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_133 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_134 ;
  wire \genblk3[0].u_dphy_rx_data_byte_aligner_n_135 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_1 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_11 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_12 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_14 ;
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
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_26 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_27 ;
  wire \genblk3[1].u_dphy_rx_data_byte_aligner_n_28 ;
  wire [15:0]\lane_buf_reg[1][15] ;
  wire [15:0]\lane_buf_reg[2][15] ;
  wire [15:0]\lane_buf_reg[3][15] ;
  wire [15:0]\lane_buf_reg[4][15] ;
  wire [15:0]\lane_buf_reg[5][15] ;
  wire [15:0]\lane_buf_reg[6][15] ;
  wire [15:0]\lane_buf_reg[7][15] ;
  wire rst0;
  wire rst00_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_data_io \genblk1[0].u_dphy_rx_data_io 
       (.AR(rst0),
        .data_hs_bit_0(data_hs_bit_0),
        .dphy_data_n(dphy_data_n[0]),
        .dphy_data_p(dphy_data_p[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_data_io_0 \genblk1[1].u_dphy_rx_data_io 
       (.AR(rst00_out),
        .data_hs_bit_1(data_hs_bit_1),
        .dphy_data_n(dphy_data_n[1]),
        .dphy_data_p(dphy_data_p[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_to_byte \genblk2[0].u_dphy_rx_to_byte 
       (.AR(rst0),
        .D(\genblk2[0].u_dphy_rx_to_byte_n_8 ),
        .E(\genblk2[0].u_dphy_rx_to_byte_n_11 ),
        .Q(data_hs_byte_0),
        .\align_offset_reg[0] (\genblk3[0].u_dphy_rx_data_byte_aligner_n_135 ),
        .\align_offset_reg[0]_0 (\genblk3[0].u_dphy_rx_data_byte_aligner_n_130 ),
        .clk_hs_bit(clk_hs_bit),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned[2]_i_3 (align_offset),
        .\data_byte_aligned_reg[7] (\genblk3[0].u_dphy_rx_data_byte_aligner_n_129 ),
        .\data_byte_aligned_reg[7]_0 ({data6,\genblk3[0].u_dphy_rx_data_byte_aligner_n_132 ,\genblk3[0].u_dphy_rx_data_byte_aligner_n_133 ,\genblk3[0].u_dphy_rx_data_byte_aligner_n_134 }),
        .data_byte_valid_reg(\genblk2[0].u_dphy_rx_to_byte_n_13 ),
        .data_byte_valid_reg_0(byte_data_valid[0]),
        .data_hs_bit_0(data_hs_bit_0),
        .\last_byte_reg[6] (\genblk2[0].u_dphy_rx_to_byte_n_16 ),
        .u_ISERDESE3_0(\genblk2[0].u_dphy_rx_to_byte_n_9 ),
        .u_ISERDESE3_1(\genblk2[0].u_dphy_rx_to_byte_n_10 ),
        .u_ISERDESE3_10(\genblk2[0].u_dphy_rx_to_byte_n_22 ),
        .u_ISERDESE3_2(\genblk2[0].u_dphy_rx_to_byte_n_12 ),
        .u_ISERDESE3_3(\genblk2[0].u_dphy_rx_to_byte_n_14 ),
        .u_ISERDESE3_4(\genblk2[0].u_dphy_rx_to_byte_n_15 ),
        .u_ISERDESE3_5(\genblk2[0].u_dphy_rx_to_byte_n_17 ),
        .u_ISERDESE3_6(\genblk2[0].u_dphy_rx_to_byte_n_18 ),
        .u_ISERDESE3_7(\genblk2[0].u_dphy_rx_to_byte_n_19 ),
        .u_ISERDESE3_8(\genblk2[0].u_dphy_rx_to_byte_n_20 ),
        .u_ISERDESE3_9(\genblk2[0].u_dphy_rx_to_byte_n_21 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_to_byte_1 \genblk2[1].u_dphy_rx_to_byte 
       (.AR(rst00_out),
        .D({\genblk2[1].u_dphy_rx_to_byte_n_12 ,\genblk2[1].u_dphy_rx_to_byte_n_13 ,\genblk2[1].u_dphy_rx_to_byte_n_14 ,\genblk2[1].u_dphy_rx_to_byte_n_15 ,\genblk2[1].u_dphy_rx_to_byte_n_16 ,\genblk2[1].u_dphy_rx_to_byte_n_17 ,\genblk2[1].u_dphy_rx_to_byte_n_18 }),
        .E(\genblk2[1].u_dphy_rx_to_byte_n_10 ),
        .Q(data_hs_byte_8),
        .\align_offset_reg[0] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_18 ),
        .\align_offset_reg[1] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_11 ),
        .\align_offset_reg[1]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_12 ),
        .clk_hs_bit(clk_hs_bit),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned[6]_i_3__0 ({data6__0,\genblk3[1].u_dphy_rx_data_byte_aligner_n_14 ,\genblk3[1].u_dphy_rx_data_byte_aligner_n_15 ,\genblk3[1].u_dphy_rx_data_byte_aligner_n_16 }),
        .\data_byte_aligned[6]_i_3__0_0 ({\genblk3[1].u_dphy_rx_data_byte_aligner_n_26 ,\genblk3[1].u_dphy_rx_data_byte_aligner_n_27 }),
        .\data_byte_aligned_reg[0] (byte_data_valid[1]),
        .\data_byte_aligned_reg[0]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_21 ),
        .\data_byte_aligned_reg[0]_1 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_19 ),
        .\data_byte_aligned_reg[0]_2 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_20 ),
        .\data_byte_aligned_reg[1] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_23 ),
        .\data_byte_aligned_reg[1]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_17 ),
        .\data_byte_aligned_reg[2] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_2 ),
        .\data_byte_aligned_reg[3] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_25 ),
        .\data_byte_aligned_reg[4] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_1 ),
        .\data_byte_aligned_reg[5] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_22 ),
        .\data_byte_aligned_reg[6] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_28 ),
        .\data_byte_aligned_reg[7] (\genblk3[1].u_dphy_rx_data_byte_aligner_n_24 ),
        .data_byte_valid_reg(\genblk2[1].u_dphy_rx_to_byte_n_11 ),
        .data_hs_bit_1(data_hs_bit_1),
        .\last_byte_reg[5] (\genblk2[1].u_dphy_rx_to_byte_n_19 ),
        .\last_byte_reg[5]_0 (\genblk2[1].u_dphy_rx_to_byte_n_21 ),
        .u_ISERDESE3_0(\genblk2[1].u_dphy_rx_to_byte_n_8 ),
        .u_ISERDESE3_1(\genblk2[1].u_dphy_rx_to_byte_n_9 ),
        .u_ISERDESE3_10(\genblk2[1].u_dphy_rx_to_byte_n_29 ),
        .u_ISERDESE3_2(\genblk2[1].u_dphy_rx_to_byte_n_20 ),
        .u_ISERDESE3_3(\genblk2[1].u_dphy_rx_to_byte_n_22 ),
        .u_ISERDESE3_4(\genblk2[1].u_dphy_rx_to_byte_n_23 ),
        .u_ISERDESE3_5(\genblk2[1].u_dphy_rx_to_byte_n_24 ),
        .u_ISERDESE3_6(\genblk2[1].u_dphy_rx_to_byte_n_25 ),
        .u_ISERDESE3_7(\genblk2[1].u_dphy_rx_to_byte_n_26 ),
        .u_ISERDESE3_8(\genblk2[1].u_dphy_rx_to_byte_n_27 ),
        .u_ISERDESE3_9(\genblk2[1].u_dphy_rx_to_byte_n_28 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_data_byte_aligner \genblk3[0].u_dphy_rx_data_byte_aligner 
       (.AR(rst0),
        .D(D),
        .E(\genblk2[0].u_dphy_rx_to_byte_n_11 ),
        .Q(align_offset),
        .align_flag(align_flag),
        .\align_idx_reg[0][0] (byte_data_valid[1]),
        .\align_idx_reg[0][1] (\align_idx_reg[0][1] ),
        .\align_idx_reg[1][1] (Q),
        .\align_offset_reg[0]_0 (\genblk2[0].u_dphy_rx_to_byte_n_8 ),
        .\align_offset_reg[1]_0 (\genblk2[0].u_dphy_rx_to_byte_n_10 ),
        .\align_offset_reg[1]_1 (\genblk2[0].u_dphy_rx_to_byte_n_16 ),
        .\align_offset_reg[2]_0 (\genblk2[0].u_dphy_rx_to_byte_n_14 ),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned[4]_i_2_0 (\genblk2[0].u_dphy_rx_to_byte_n_20 ),
        .\data_byte_aligned_reg[2]_0 (\genblk2[0].u_dphy_rx_to_byte_n_15 ),
        .\data_byte_aligned_reg[2]_1 (\genblk2[0].u_dphy_rx_to_byte_n_9 ),
        .\data_byte_aligned_reg[2]_2 (\genblk2[0].u_dphy_rx_to_byte_n_12 ),
        .\data_byte_aligned_reg[3]_0 (\genblk2[0].u_dphy_rx_to_byte_n_17 ),
        .\data_byte_aligned_reg[4]_0 (\genblk2[0].u_dphy_rx_to_byte_n_21 ),
        .\data_byte_aligned_reg[5]_0 (\genblk2[0].u_dphy_rx_to_byte_n_18 ),
        .\data_byte_aligned_reg[6]_0 (\genblk2[0].u_dphy_rx_to_byte_n_22 ),
        .\data_byte_aligned_reg[7]_0 (\genblk2[0].u_dphy_rx_to_byte_n_19 ),
        .\data_byte_aligned_reg[7]_1 (\genblk2[0].u_dphy_rx_to_byte_n_13 ),
        .data_byte_valid_reg_0(byte_data_valid[0]),
        .data_byte_valid_reg_1(data_byte_valid_reg),
        .data_byte_valid_reg_10(data_byte_valid_reg_8),
        .data_byte_valid_reg_11(data_byte_valid_reg_9),
        .data_byte_valid_reg_12(data_byte_valid_reg_10),
        .data_byte_valid_reg_2(data_byte_valid_reg_0),
        .data_byte_valid_reg_3(data_byte_valid_reg_1[7:0]),
        .data_byte_valid_reg_4(data_byte_valid_reg_2),
        .data_byte_valid_reg_5(data_byte_valid_reg_3),
        .data_byte_valid_reg_6(data_byte_valid_reg_4),
        .data_byte_valid_reg_7(data_byte_valid_reg_5),
        .data_byte_valid_reg_8(data_byte_valid_reg_6),
        .data_byte_valid_reg_9(data_byte_valid_reg_7),
        .\lane_buf_reg[1][15] (\lane_buf_reg[1][15] ),
        .\lane_buf_reg[2][15] (\lane_buf_reg[2][15] ),
        .\lane_buf_reg[3][15] (\lane_buf_reg[3][15] ),
        .\lane_buf_reg[4][15] (\lane_buf_reg[4][15] ),
        .\lane_buf_reg[5][15] (\lane_buf_reg[5][15] ),
        .\lane_buf_reg[6][15] (\lane_buf_reg[6][15] ),
        .\lane_buf_reg[7][15] (\lane_buf_reg[7][15] ),
        .\last_byte_reg[7]_0 ({data6,\genblk3[0].u_dphy_rx_data_byte_aligner_n_132 ,\genblk3[0].u_dphy_rx_data_byte_aligner_n_133 ,\genblk3[0].u_dphy_rx_data_byte_aligner_n_134 }),
        .\last_byte_reg[7]_1 (\genblk3[0].u_dphy_rx_data_byte_aligner_n_135 ),
        .\last_byte_reg[7]_2 (data_hs_byte_0),
        .u_ISERDESE3(\genblk3[0].u_dphy_rx_data_byte_aligner_n_129 ),
        .u_ISERDESE3_0(\genblk3[0].u_dphy_rx_data_byte_aligner_n_130 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_data_byte_aligner_2 \genblk3[1].u_dphy_rx_data_byte_aligner 
       (.AR(rst00_out),
        .D(\genblk2[1].u_dphy_rx_to_byte_n_21 ),
        .E(\genblk2[1].u_dphy_rx_to_byte_n_10 ),
        .Q(data_hs_byte_8),
        .\align_offset_reg[0]_0 (\genblk2[1].u_dphy_rx_to_byte_n_9 ),
        .\align_offset_reg[1]_0 ({\genblk3[1].u_dphy_rx_data_byte_aligner_n_26 ,\genblk3[1].u_dphy_rx_data_byte_aligner_n_27 }),
        .\align_offset_reg[2]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_22 ),
        .\align_offset_reg[2]_1 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_24 ),
        .clk_hs_byte(clk_hs_byte),
        .\data_byte_aligned[4]_i_2__0_0 (\genblk2[1].u_dphy_rx_to_byte_n_26 ),
        .\data_byte_aligned_reg[0]_0 (\genblk2[1].u_dphy_rx_to_byte_n_28 ),
        .\data_byte_aligned_reg[0]_1 (\genblk2[1].u_dphy_rx_to_byte_n_19 ),
        .\data_byte_aligned_reg[0]_2 (\genblk2[1].u_dphy_rx_to_byte_n_8 ),
        .\data_byte_aligned_reg[0]_3 (\genblk2[1].u_dphy_rx_to_byte_n_20 ),
        .\data_byte_aligned_reg[0]_4 (\genblk2[1].u_dphy_rx_to_byte_n_25 ),
        .\data_byte_aligned_reg[0]_5 (\genblk2[1].u_dphy_rx_to_byte_n_11 ),
        .\data_byte_aligned_reg[2]_0 (\genblk2[1].u_dphy_rx_to_byte_n_27 ),
        .\data_byte_aligned_reg[5]_0 (\genblk2[1].u_dphy_rx_to_byte_n_22 ),
        .\data_byte_aligned_reg[6]_0 (\genblk2[1].u_dphy_rx_to_byte_n_29 ),
        .\data_byte_aligned_reg[7]_0 (\genblk2[1].u_dphy_rx_to_byte_n_23 ),
        .\data_byte_aligned_reg[7]_1 (\genblk2[1].u_dphy_rx_to_byte_n_24 ),
        .\data_byte_aligned_reg[7]_2 ({\genblk2[1].u_dphy_rx_to_byte_n_12 ,\genblk2[1].u_dphy_rx_to_byte_n_13 ,\genblk2[1].u_dphy_rx_to_byte_n_14 ,\genblk2[1].u_dphy_rx_to_byte_n_15 ,\genblk2[1].u_dphy_rx_to_byte_n_16 ,\genblk2[1].u_dphy_rx_to_byte_n_17 ,\genblk2[1].u_dphy_rx_to_byte_n_18 }),
        .data_byte_valid_reg_0(byte_data_valid[1]),
        .data_byte_valid_reg_1(\genblk3[1].u_dphy_rx_data_byte_aligner_n_1 ),
        .data_byte_valid_reg_2(\genblk3[1].u_dphy_rx_data_byte_aligner_n_2 ),
        .data_byte_valid_reg_3(data_byte_valid_reg_1[15:8]),
        .data_byte_valid_reg_4(\genblk3[1].u_dphy_rx_data_byte_aligner_n_23 ),
        .data_byte_valid_reg_5(\genblk3[1].u_dphy_rx_data_byte_aligner_n_25 ),
        .data_byte_valid_reg_6(\genblk3[1].u_dphy_rx_data_byte_aligner_n_28 ),
        .\lane_buf_reg[0][8] (byte_data_valid[0]),
        .\last_byte_reg[4]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_20 ),
        .\last_byte_reg[5]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_11 ),
        .\last_byte_reg[6]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_18 ),
        .\last_byte_reg[6]_1 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_21 ),
        .\last_byte_reg[7]_0 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_12 ),
        .\last_byte_reg[7]_1 ({data6__0,\genblk3[1].u_dphy_rx_data_byte_aligner_n_14 ,\genblk3[1].u_dphy_rx_data_byte_aligner_n_15 ,\genblk3[1].u_dphy_rx_data_byte_aligner_n_16 }),
        .\last_byte_reg[7]_2 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_17 ),
        .\last_byte_reg[7]_3 (\genblk3[1].u_dphy_rx_data_byte_aligner_n_19 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__dphy_rx_clk_io u_dphy_rx_clk_io
       (.clk_hs_bit(clk_hs_bit),
        .clk_hs_byte(clk_hs_byte),
        .dphy_clk_n(dphy_clk_n),
        .dphy_clk_p(dphy_clk_p));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mipi_rx_to_video
   (clk_hs_byte,
    locked_reg,
    reg_ce_reg,
    reg_active_video_reg,
    D,
    \pix_cnt_reg[11] ,
    pix_cnt1,
    \line_cnt_reg[14] ,
    E,
    reg_vsync_reg,
    mipi_width0__0,
    \axi_araddr_reg[5] ,
    \reg_di_reg[7] ,
    vid_data,
    dphy_data_p,
    dphy_data_n,
    Q,
    \pix_cnt_reg[14] ,
    \pix_cnt_reg[8] ,
    \line_cnt_reg[15] ,
    \line_cnt_reg[11] ,
    \line_cnt_reg[6] ,
    pre_vsync,
    \line_cnt_reg[10] ,
    \line_cnt_reg[5] ,
    module_reset,
    s00_axi_aresetn,
    pre_active_video,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[0]_0 ,
    p_1_in_11,
    p_2_in,
    \axi_rdata_reg[0]_1 ,
    \line_cnt_reg[15]_0 ,
    dphy_clk_p,
    dphy_clk_n);
  output clk_hs_byte;
  output locked_reg;
  output reg_ce_reg;
  output reg_active_video_reg;
  output [0:0]D;
  output [5:0]\pix_cnt_reg[11] ;
  output pix_cnt1;
  output [15:0]\line_cnt_reg[14] ;
  output [0:0]E;
  output [0:0]reg_vsync_reg;
  output mipi_width0__0;
  output [0:0]\axi_araddr_reg[5] ;
  output [7:0]\reg_di_reg[7] ;
  output [19:0]vid_data;
  input [1:0]dphy_data_p;
  input [1:0]dphy_data_n;
  input [12:0]Q;
  input \pix_cnt_reg[14] ;
  input \pix_cnt_reg[8] ;
  input [15:0]\line_cnt_reg[15] ;
  input \line_cnt_reg[11] ;
  input \line_cnt_reg[6] ;
  input pre_vsync;
  input \line_cnt_reg[10] ;
  input \line_cnt_reg[5] ;
  input module_reset;
  input s00_axi_aresetn;
  input pre_active_video;
  input \axi_rdata_reg[0] ;
  input [4:0]\axi_rdata_reg[0]_0 ;
  input [0:0]p_1_in_11;
  input [0:0]p_2_in;
  input [0:0]\axi_rdata_reg[0]_1 ;
  input \line_cnt_reg[15]_0 ;
  input dphy_clk_p;
  input dphy_clk_n;

  wire [0:0]D;
  wire [0:0]E;
  wire [12:0]Q;
  wire align_flag;
  wire [1:0]\align_idx_reg[0]_0 ;
  wire [1:0]\align_idx_reg[1]_9 ;
  wire [0:0]\axi_araddr_reg[5] ;
  wire \axi_rdata_reg[0] ;
  wire [4:0]\axi_rdata_reg[0]_0 ;
  wire [0:0]\axi_rdata_reg[0]_1 ;
  wire [1:0]byte_data_valid;
  wire clk_hs_byte;
  wire dphy_clk_n;
  wire dphy_clk_p;
  wire [1:0]dphy_data_n;
  wire [1:0]dphy_data_p;
  wire [15:0]\lane_buf_reg[0]_1 ;
  wire [15:0]\lane_buf_reg[1]_2 ;
  wire [15:0]\lane_buf_reg[2]_3 ;
  wire [15:0]\lane_buf_reg[3]_4 ;
  wire [15:0]\lane_buf_reg[4]_5 ;
  wire [15:0]\lane_buf_reg[5]_6 ;
  wire [15:0]\lane_buf_reg[6]_7 ;
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
  wire [0:0]p_1_in_11;
  wire [0:0]p_2_in;
  wire pix_cnt1;
  wire [5:0]\pix_cnt_reg[11] ;
  wire \pix_cnt_reg[14] ;
  wire \pix_cnt_reg[8] ;
  wire [19:0]pix_data;
  wire pix_data_enable;
  wire [7:0]pix_di;
  wire pix_valid;
  wire pre_active_video;
  wire pre_vsync;
  wire reg_active_video_reg;
  wire reg_ce_reg;
  wire [7:0]\reg_di_reg[7] ;
  wire [0:0]reg_vsync_reg;
  wire s00_axi_aresetn;
  wire u_csi2_rx_to_pixel_n_0;
  wire u_dphy_rx_to_byte_n_10;
  wire u_dphy_rx_to_byte_n_100;
  wire u_dphy_rx_to_byte_n_101;
  wire u_dphy_rx_to_byte_n_102;
  wire u_dphy_rx_to_byte_n_103;
  wire u_dphy_rx_to_byte_n_104;
  wire u_dphy_rx_to_byte_n_105;
  wire u_dphy_rx_to_byte_n_106;
  wire u_dphy_rx_to_byte_n_107;
  wire u_dphy_rx_to_byte_n_108;
  wire u_dphy_rx_to_byte_n_109;
  wire u_dphy_rx_to_byte_n_11;
  wire u_dphy_rx_to_byte_n_110;
  wire u_dphy_rx_to_byte_n_111;
  wire u_dphy_rx_to_byte_n_112;
  wire u_dphy_rx_to_byte_n_113;
  wire u_dphy_rx_to_byte_n_114;
  wire u_dphy_rx_to_byte_n_115;
  wire u_dphy_rx_to_byte_n_116;
  wire u_dphy_rx_to_byte_n_117;
  wire u_dphy_rx_to_byte_n_118;
  wire u_dphy_rx_to_byte_n_119;
  wire u_dphy_rx_to_byte_n_12;
  wire u_dphy_rx_to_byte_n_120;
  wire u_dphy_rx_to_byte_n_121;
  wire u_dphy_rx_to_byte_n_122;
  wire u_dphy_rx_to_byte_n_123;
  wire u_dphy_rx_to_byte_n_124;
  wire u_dphy_rx_to_byte_n_125;
  wire u_dphy_rx_to_byte_n_126;
  wire u_dphy_rx_to_byte_n_127;
  wire u_dphy_rx_to_byte_n_128;
  wire u_dphy_rx_to_byte_n_129;
  wire u_dphy_rx_to_byte_n_13;
  wire u_dphy_rx_to_byte_n_130;
  wire u_dphy_rx_to_byte_n_131;
  wire u_dphy_rx_to_byte_n_132;
  wire u_dphy_rx_to_byte_n_133;
  wire u_dphy_rx_to_byte_n_134;
  wire u_dphy_rx_to_byte_n_135;
  wire u_dphy_rx_to_byte_n_136;
  wire u_dphy_rx_to_byte_n_137;
  wire u_dphy_rx_to_byte_n_14;
  wire u_dphy_rx_to_byte_n_15;
  wire u_dphy_rx_to_byte_n_16;
  wire u_dphy_rx_to_byte_n_17;
  wire u_dphy_rx_to_byte_n_18;
  wire u_dphy_rx_to_byte_n_19;
  wire u_dphy_rx_to_byte_n_20;
  wire u_dphy_rx_to_byte_n_21;
  wire u_dphy_rx_to_byte_n_22;
  wire u_dphy_rx_to_byte_n_23;
  wire u_dphy_rx_to_byte_n_24;
  wire u_dphy_rx_to_byte_n_25;
  wire u_dphy_rx_to_byte_n_26;
  wire u_dphy_rx_to_byte_n_27;
  wire u_dphy_rx_to_byte_n_28;
  wire u_dphy_rx_to_byte_n_29;
  wire u_dphy_rx_to_byte_n_3;
  wire u_dphy_rx_to_byte_n_30;
  wire u_dphy_rx_to_byte_n_31;
  wire u_dphy_rx_to_byte_n_32;
  wire u_dphy_rx_to_byte_n_33;
  wire u_dphy_rx_to_byte_n_34;
  wire u_dphy_rx_to_byte_n_35;
  wire u_dphy_rx_to_byte_n_36;
  wire u_dphy_rx_to_byte_n_37;
  wire u_dphy_rx_to_byte_n_38;
  wire u_dphy_rx_to_byte_n_39;
  wire u_dphy_rx_to_byte_n_4;
  wire u_dphy_rx_to_byte_n_40;
  wire u_dphy_rx_to_byte_n_41;
  wire u_dphy_rx_to_byte_n_42;
  wire u_dphy_rx_to_byte_n_43;
  wire u_dphy_rx_to_byte_n_44;
  wire u_dphy_rx_to_byte_n_45;
  wire u_dphy_rx_to_byte_n_46;
  wire u_dphy_rx_to_byte_n_47;
  wire u_dphy_rx_to_byte_n_48;
  wire u_dphy_rx_to_byte_n_49;
  wire u_dphy_rx_to_byte_n_5;
  wire u_dphy_rx_to_byte_n_50;
  wire u_dphy_rx_to_byte_n_51;
  wire u_dphy_rx_to_byte_n_52;
  wire u_dphy_rx_to_byte_n_53;
  wire u_dphy_rx_to_byte_n_54;
  wire u_dphy_rx_to_byte_n_55;
  wire u_dphy_rx_to_byte_n_56;
  wire u_dphy_rx_to_byte_n_57;
  wire u_dphy_rx_to_byte_n_58;
  wire u_dphy_rx_to_byte_n_59;
  wire u_dphy_rx_to_byte_n_6;
  wire u_dphy_rx_to_byte_n_60;
  wire u_dphy_rx_to_byte_n_61;
  wire u_dphy_rx_to_byte_n_62;
  wire u_dphy_rx_to_byte_n_63;
  wire u_dphy_rx_to_byte_n_64;
  wire u_dphy_rx_to_byte_n_65;
  wire u_dphy_rx_to_byte_n_66;
  wire u_dphy_rx_to_byte_n_67;
  wire u_dphy_rx_to_byte_n_68;
  wire u_dphy_rx_to_byte_n_69;
  wire u_dphy_rx_to_byte_n_7;
  wire u_dphy_rx_to_byte_n_70;
  wire u_dphy_rx_to_byte_n_71;
  wire u_dphy_rx_to_byte_n_72;
  wire u_dphy_rx_to_byte_n_73;
  wire u_dphy_rx_to_byte_n_74;
  wire u_dphy_rx_to_byte_n_75;
  wire u_dphy_rx_to_byte_n_76;
  wire u_dphy_rx_to_byte_n_77;
  wire u_dphy_rx_to_byte_n_78;
  wire u_dphy_rx_to_byte_n_79;
  wire u_dphy_rx_to_byte_n_8;
  wire u_dphy_rx_to_byte_n_80;
  wire u_dphy_rx_to_byte_n_81;
  wire u_dphy_rx_to_byte_n_82;
  wire u_dphy_rx_to_byte_n_83;
  wire u_dphy_rx_to_byte_n_84;
  wire u_dphy_rx_to_byte_n_85;
  wire u_dphy_rx_to_byte_n_86;
  wire u_dphy_rx_to_byte_n_87;
  wire u_dphy_rx_to_byte_n_88;
  wire u_dphy_rx_to_byte_n_89;
  wire u_dphy_rx_to_byte_n_9;
  wire u_dphy_rx_to_byte_n_90;
  wire u_dphy_rx_to_byte_n_91;
  wire u_dphy_rx_to_byte_n_92;
  wire u_dphy_rx_to_byte_n_93;
  wire u_dphy_rx_to_byte_n_94;
  wire u_dphy_rx_to_byte_n_95;
  wire u_dphy_rx_to_byte_n_96;
  wire u_dphy_rx_to_byte_n_97;
  wire u_dphy_rx_to_byte_n_98;
  wire u_dphy_rx_to_byte_n_99;
  wire [19:0]vid_data;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix__csi2_pixel_to_video u_csi2_pixel_to_video
       (.AR(u_csi2_rx_to_pixel_n_0),
        .E(locked0),
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
        .p_1_in_11(p_1_in_11),
        .p_2_in(p_2_in),
        .\pix_cnt_reg[11] (\pix_cnt_reg[11] ),
        .\pix_cnt_reg[14] (\pix_cnt_reg[14] ),
        .\pix_cnt_reg[8] (\pix_cnt_reg[8] ),
        .pix_data_enable(pix_data_enable),
        .pix_valid(pix_valid),
        .pre_active_video(pre_active_video),
        .pre_vsync(pre_vsync),
        .reg_active_video_reg_0(reg_active_video_reg),
        .reg_active_video_reg_1(pix_cnt1),
        .reg_ce_reg_0(reg_ce_reg),
        .reg_ce_reg_1(E),
        .\reg_di_reg[7]_0 (\reg_di_reg[7] ),
        .\reg_pix_data_reg[19]_0 (pix_data),
        .\reg_pix_di_reg[7]_0 (pix_di),
        .reg_vsync_reg_0(D),
        .reg_vsync_reg_1(reg_vsync_reg),
        .vid_data(vid_data));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_csi2_rx_to_pixel u_csi2_rx_to_pixel
       (.AR(u_csi2_rx_to_pixel_n_0),
        .D({u_dphy_rx_to_byte_n_4,u_dphy_rx_to_byte_n_5}),
        .E(locked0),
        .Q(\align_idx_reg[1]_9 ),
        .align_flag(align_flag),
        .align_flag_reg(u_dphy_rx_to_byte_n_137),
        .\align_idx_reg[0][0] (u_dphy_rx_to_byte_n_136),
        .\align_idx_reg[0][1] (\align_idx_reg[0]_0 ),
        .\align_idx_reg[1][0] (u_dphy_rx_to_byte_n_3),
        .\align_idx_reg[1][1] ({u_dphy_rx_to_byte_n_6,u_dphy_rx_to_byte_n_7}),
        .byte_data_valid(byte_data_valid),
        .clk_hs_byte(clk_hs_byte),
        .\lane_buf_reg[0][15] (\lane_buf_reg[0]_1 ),
        .\lane_buf_reg[0][15]_0 ({u_dphy_rx_to_byte_n_8,u_dphy_rx_to_byte_n_9,u_dphy_rx_to_byte_n_10,u_dphy_rx_to_byte_n_11,u_dphy_rx_to_byte_n_12,u_dphy_rx_to_byte_n_13,u_dphy_rx_to_byte_n_14,u_dphy_rx_to_byte_n_15,u_dphy_rx_to_byte_n_16,u_dphy_rx_to_byte_n_17,u_dphy_rx_to_byte_n_18,u_dphy_rx_to_byte_n_19,u_dphy_rx_to_byte_n_20,u_dphy_rx_to_byte_n_21,u_dphy_rx_to_byte_n_22,u_dphy_rx_to_byte_n_23}),
        .\lane_buf_reg[1][15] (\lane_buf_reg[1]_2 ),
        .\lane_buf_reg[1][15]_0 ({u_dphy_rx_to_byte_n_24,u_dphy_rx_to_byte_n_25,u_dphy_rx_to_byte_n_26,u_dphy_rx_to_byte_n_27,u_dphy_rx_to_byte_n_28,u_dphy_rx_to_byte_n_29,u_dphy_rx_to_byte_n_30,u_dphy_rx_to_byte_n_31,u_dphy_rx_to_byte_n_32,u_dphy_rx_to_byte_n_33,u_dphy_rx_to_byte_n_34,u_dphy_rx_to_byte_n_35,u_dphy_rx_to_byte_n_36,u_dphy_rx_to_byte_n_37,u_dphy_rx_to_byte_n_38,u_dphy_rx_to_byte_n_39}),
        .\lane_buf_reg[2][15] (\lane_buf_reg[2]_3 ),
        .\lane_buf_reg[2][15]_0 ({u_dphy_rx_to_byte_n_40,u_dphy_rx_to_byte_n_41,u_dphy_rx_to_byte_n_42,u_dphy_rx_to_byte_n_43,u_dphy_rx_to_byte_n_44,u_dphy_rx_to_byte_n_45,u_dphy_rx_to_byte_n_46,u_dphy_rx_to_byte_n_47,u_dphy_rx_to_byte_n_48,u_dphy_rx_to_byte_n_49,u_dphy_rx_to_byte_n_50,u_dphy_rx_to_byte_n_51,u_dphy_rx_to_byte_n_52,u_dphy_rx_to_byte_n_53,u_dphy_rx_to_byte_n_54,u_dphy_rx_to_byte_n_55}),
        .\lane_buf_reg[3][15] (\lane_buf_reg[3]_4 ),
        .\lane_buf_reg[3][15]_0 ({u_dphy_rx_to_byte_n_56,u_dphy_rx_to_byte_n_57,u_dphy_rx_to_byte_n_58,u_dphy_rx_to_byte_n_59,u_dphy_rx_to_byte_n_60,u_dphy_rx_to_byte_n_61,u_dphy_rx_to_byte_n_62,u_dphy_rx_to_byte_n_63,u_dphy_rx_to_byte_n_64,u_dphy_rx_to_byte_n_65,u_dphy_rx_to_byte_n_66,u_dphy_rx_to_byte_n_67,u_dphy_rx_to_byte_n_68,u_dphy_rx_to_byte_n_69,u_dphy_rx_to_byte_n_70,u_dphy_rx_to_byte_n_71}),
        .\lane_buf_reg[4][15] (\lane_buf_reg[4]_5 ),
        .\lane_buf_reg[4][15]_0 ({u_dphy_rx_to_byte_n_72,u_dphy_rx_to_byte_n_73,u_dphy_rx_to_byte_n_74,u_dphy_rx_to_byte_n_75,u_dphy_rx_to_byte_n_76,u_dphy_rx_to_byte_n_77,u_dphy_rx_to_byte_n_78,u_dphy_rx_to_byte_n_79,u_dphy_rx_to_byte_n_80,u_dphy_rx_to_byte_n_81,u_dphy_rx_to_byte_n_82,u_dphy_rx_to_byte_n_83,u_dphy_rx_to_byte_n_84,u_dphy_rx_to_byte_n_85,u_dphy_rx_to_byte_n_86,u_dphy_rx_to_byte_n_87}),
        .\lane_buf_reg[5][15] (\lane_buf_reg[5]_6 ),
        .\lane_buf_reg[5][15]_0 ({u_dphy_rx_to_byte_n_88,u_dphy_rx_to_byte_n_89,u_dphy_rx_to_byte_n_90,u_dphy_rx_to_byte_n_91,u_dphy_rx_to_byte_n_92,u_dphy_rx_to_byte_n_93,u_dphy_rx_to_byte_n_94,u_dphy_rx_to_byte_n_95,u_dphy_rx_to_byte_n_96,u_dphy_rx_to_byte_n_97,u_dphy_rx_to_byte_n_98,u_dphy_rx_to_byte_n_99,u_dphy_rx_to_byte_n_100,u_dphy_rx_to_byte_n_101,u_dphy_rx_to_byte_n_102,u_dphy_rx_to_byte_n_103}),
        .\lane_buf_reg[6][15] (\lane_buf_reg[6]_7 ),
        .\lane_buf_reg[6][15]_0 ({u_dphy_rx_to_byte_n_104,u_dphy_rx_to_byte_n_105,u_dphy_rx_to_byte_n_106,u_dphy_rx_to_byte_n_107,u_dphy_rx_to_byte_n_108,u_dphy_rx_to_byte_n_109,u_dphy_rx_to_byte_n_110,u_dphy_rx_to_byte_n_111,u_dphy_rx_to_byte_n_112,u_dphy_rx_to_byte_n_113,u_dphy_rx_to_byte_n_114,u_dphy_rx_to_byte_n_115,u_dphy_rx_to_byte_n_116,u_dphy_rx_to_byte_n_117,u_dphy_rx_to_byte_n_118,u_dphy_rx_to_byte_n_119}),
        .\lane_buf_reg[7][15] ({u_dphy_rx_to_byte_n_120,u_dphy_rx_to_byte_n_121,u_dphy_rx_to_byte_n_122,u_dphy_rx_to_byte_n_123,u_dphy_rx_to_byte_n_124,u_dphy_rx_to_byte_n_125,u_dphy_rx_to_byte_n_126,u_dphy_rx_to_byte_n_127,u_dphy_rx_to_byte_n_128,u_dphy_rx_to_byte_n_129,u_dphy_rx_to_byte_n_130,u_dphy_rx_to_byte_n_131,u_dphy_rx_to_byte_n_132,u_dphy_rx_to_byte_n_133,u_dphy_rx_to_byte_n_134,u_dphy_rx_to_byte_n_135}),
        .locked_reg(locked_reg),
        .module_reset(module_reset),
        .pix_data_enable(pix_data_enable),
        .pix_valid(pix_valid),
        .\reg_pix_data_reg[19]_0 (pix_data),
        .\reg_pix_di_reg[7]_0 (pix_di),
        .s00_axi_aresetn(s00_axi_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dphy_rx_to_byte u_dphy_rx_to_byte
       (.D({u_dphy_rx_to_byte_n_4,u_dphy_rx_to_byte_n_5}),
        .Q(\align_idx_reg[1]_9 ),
        .align_flag(align_flag),
        .\align_idx_reg[0][1] (\align_idx_reg[0]_0 ),
        .byte_data_valid(byte_data_valid),
        .clk_hs_byte(clk_hs_byte),
        .data_byte_valid_reg(u_dphy_rx_to_byte_n_3),
        .data_byte_valid_reg_0({u_dphy_rx_to_byte_n_6,u_dphy_rx_to_byte_n_7}),
        .data_byte_valid_reg_1({u_dphy_rx_to_byte_n_8,u_dphy_rx_to_byte_n_9,u_dphy_rx_to_byte_n_10,u_dphy_rx_to_byte_n_11,u_dphy_rx_to_byte_n_12,u_dphy_rx_to_byte_n_13,u_dphy_rx_to_byte_n_14,u_dphy_rx_to_byte_n_15,u_dphy_rx_to_byte_n_16,u_dphy_rx_to_byte_n_17,u_dphy_rx_to_byte_n_18,u_dphy_rx_to_byte_n_19,u_dphy_rx_to_byte_n_20,u_dphy_rx_to_byte_n_21,u_dphy_rx_to_byte_n_22,u_dphy_rx_to_byte_n_23}),
        .data_byte_valid_reg_10(u_dphy_rx_to_byte_n_137),
        .data_byte_valid_reg_2({u_dphy_rx_to_byte_n_24,u_dphy_rx_to_byte_n_25,u_dphy_rx_to_byte_n_26,u_dphy_rx_to_byte_n_27,u_dphy_rx_to_byte_n_28,u_dphy_rx_to_byte_n_29,u_dphy_rx_to_byte_n_30,u_dphy_rx_to_byte_n_31,u_dphy_rx_to_byte_n_32,u_dphy_rx_to_byte_n_33,u_dphy_rx_to_byte_n_34,u_dphy_rx_to_byte_n_35,u_dphy_rx_to_byte_n_36,u_dphy_rx_to_byte_n_37,u_dphy_rx_to_byte_n_38,u_dphy_rx_to_byte_n_39}),
        .data_byte_valid_reg_3({u_dphy_rx_to_byte_n_40,u_dphy_rx_to_byte_n_41,u_dphy_rx_to_byte_n_42,u_dphy_rx_to_byte_n_43,u_dphy_rx_to_byte_n_44,u_dphy_rx_to_byte_n_45,u_dphy_rx_to_byte_n_46,u_dphy_rx_to_byte_n_47,u_dphy_rx_to_byte_n_48,u_dphy_rx_to_byte_n_49,u_dphy_rx_to_byte_n_50,u_dphy_rx_to_byte_n_51,u_dphy_rx_to_byte_n_52,u_dphy_rx_to_byte_n_53,u_dphy_rx_to_byte_n_54,u_dphy_rx_to_byte_n_55}),
        .data_byte_valid_reg_4({u_dphy_rx_to_byte_n_56,u_dphy_rx_to_byte_n_57,u_dphy_rx_to_byte_n_58,u_dphy_rx_to_byte_n_59,u_dphy_rx_to_byte_n_60,u_dphy_rx_to_byte_n_61,u_dphy_rx_to_byte_n_62,u_dphy_rx_to_byte_n_63,u_dphy_rx_to_byte_n_64,u_dphy_rx_to_byte_n_65,u_dphy_rx_to_byte_n_66,u_dphy_rx_to_byte_n_67,u_dphy_rx_to_byte_n_68,u_dphy_rx_to_byte_n_69,u_dphy_rx_to_byte_n_70,u_dphy_rx_to_byte_n_71}),
        .data_byte_valid_reg_5({u_dphy_rx_to_byte_n_72,u_dphy_rx_to_byte_n_73,u_dphy_rx_to_byte_n_74,u_dphy_rx_to_byte_n_75,u_dphy_rx_to_byte_n_76,u_dphy_rx_to_byte_n_77,u_dphy_rx_to_byte_n_78,u_dphy_rx_to_byte_n_79,u_dphy_rx_to_byte_n_80,u_dphy_rx_to_byte_n_81,u_dphy_rx_to_byte_n_82,u_dphy_rx_to_byte_n_83,u_dphy_rx_to_byte_n_84,u_dphy_rx_to_byte_n_85,u_dphy_rx_to_byte_n_86,u_dphy_rx_to_byte_n_87}),
        .data_byte_valid_reg_6({u_dphy_rx_to_byte_n_88,u_dphy_rx_to_byte_n_89,u_dphy_rx_to_byte_n_90,u_dphy_rx_to_byte_n_91,u_dphy_rx_to_byte_n_92,u_dphy_rx_to_byte_n_93,u_dphy_rx_to_byte_n_94,u_dphy_rx_to_byte_n_95,u_dphy_rx_to_byte_n_96,u_dphy_rx_to_byte_n_97,u_dphy_rx_to_byte_n_98,u_dphy_rx_to_byte_n_99,u_dphy_rx_to_byte_n_100,u_dphy_rx_to_byte_n_101,u_dphy_rx_to_byte_n_102,u_dphy_rx_to_byte_n_103}),
        .data_byte_valid_reg_7({u_dphy_rx_to_byte_n_104,u_dphy_rx_to_byte_n_105,u_dphy_rx_to_byte_n_106,u_dphy_rx_to_byte_n_107,u_dphy_rx_to_byte_n_108,u_dphy_rx_to_byte_n_109,u_dphy_rx_to_byte_n_110,u_dphy_rx_to_byte_n_111,u_dphy_rx_to_byte_n_112,u_dphy_rx_to_byte_n_113,u_dphy_rx_to_byte_n_114,u_dphy_rx_to_byte_n_115,u_dphy_rx_to_byte_n_116,u_dphy_rx_to_byte_n_117,u_dphy_rx_to_byte_n_118,u_dphy_rx_to_byte_n_119}),
        .data_byte_valid_reg_8({u_dphy_rx_to_byte_n_120,u_dphy_rx_to_byte_n_121,u_dphy_rx_to_byte_n_122,u_dphy_rx_to_byte_n_123,u_dphy_rx_to_byte_n_124,u_dphy_rx_to_byte_n_125,u_dphy_rx_to_byte_n_126,u_dphy_rx_to_byte_n_127,u_dphy_rx_to_byte_n_128,u_dphy_rx_to_byte_n_129,u_dphy_rx_to_byte_n_130,u_dphy_rx_to_byte_n_131,u_dphy_rx_to_byte_n_132,u_dphy_rx_to_byte_n_133,u_dphy_rx_to_byte_n_134,u_dphy_rx_to_byte_n_135}),
        .data_byte_valid_reg_9(u_dphy_rx_to_byte_n_136),
        .dphy_clk_n(dphy_clk_n),
        .dphy_clk_p(dphy_clk_p),
        .dphy_data_n(dphy_data_n),
        .dphy_data_p(dphy_data_p),
        .\lane_buf_reg[1][15] (\lane_buf_reg[0]_1 ),
        .\lane_buf_reg[2][15] (\lane_buf_reg[1]_2 ),
        .\lane_buf_reg[3][15] (\lane_buf_reg[2]_3 ),
        .\lane_buf_reg[4][15] (\lane_buf_reg[3]_4 ),
        .\lane_buf_reg[5][15] (\lane_buf_reg[4]_5 ),
        .\lane_buf_reg[6][15] (\lane_buf_reg[5]_6 ),
        .\lane_buf_reg[7][15] (\lane_buf_reg[6]_7 ));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "7" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* DATA_BITS = "10" *) 
(* DATA_DELAY_INSIDE = "1'b1" *) (* DATA_DELAY_NTAPS = "200" *) (* HS_SETTLE_DELAY = "0" *) 
(* LANES_NUM = "2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mipi_rx_to_video_v1_0
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
  input [1:0]dphy_data_p;
  input [1:0]dphy_data_n;
  output vid_clk;
  output vid_ce;
  output vid_vsync;
  output vid_active_video;
  output [19:0]vid_data;
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
  wire [1:0]dphy_data_n;
  wire [1:0]dphy_data_p;
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
  wire [19:0]vid_data;
  wire vid_locked;
  wire vid_vsync;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mipi_rx_to_video_v1_0_S00_AXI mipi_rx_to_video_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .clk_hs_byte(vid_clk),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mipi_rx_to_video_v1_0_S00_AXI
   (vid_locked,
    reg_vsync_reg,
    clk_hs_byte,
    vid_ce,
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
  output vid_locked;
  output reg_vsync_reg;
  output clk_hs_byte;
  output vid_ce;
  output vid_active_video;
  output [19:0]vid_data;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output irq;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [1:0]dphy_data_p;
  input [1:0]dphy_data_n;
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
  wire \axi_araddr_reg_n_0_[5] ;
  wire \axi_araddr_reg_n_0_[6] ;
  wire axi_arready0;
  wire \axi_awaddr_reg_n_0_[6] ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_1_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire clk_hs_byte;
  wire dphy_clk_n;
  wire dphy_clk_p;
  wire [1:0]dphy_data_n;
  wire [1:0]dphy_data_p;
  wire int_frame_done_i_1_n_0;
  wire int_frame_start;
  wire int_frame_start_i_1_n_0;
  wire int_mask_frame_start;
  wire irq;
  wire \line_cnt[10]_i_2_n_0 ;
  wire \line_cnt[14]_i_3_n_0 ;
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
  wire mipi_rx_to_video_inst_n_10;
  wire mipi_rx_to_video_inst_n_13;
  wire mipi_rx_to_video_inst_n_14;
  wire mipi_rx_to_video_inst_n_15;
  wire mipi_rx_to_video_inst_n_16;
  wire mipi_rx_to_video_inst_n_17;
  wire mipi_rx_to_video_inst_n_18;
  wire mipi_rx_to_video_inst_n_19;
  wire mipi_rx_to_video_inst_n_20;
  wire mipi_rx_to_video_inst_n_21;
  wire mipi_rx_to_video_inst_n_22;
  wire mipi_rx_to_video_inst_n_23;
  wire mipi_rx_to_video_inst_n_24;
  wire mipi_rx_to_video_inst_n_28;
  wire mipi_rx_to_video_inst_n_29;
  wire mipi_rx_to_video_inst_n_6;
  wire mipi_rx_to_video_inst_n_7;
  wire mipi_rx_to_video_inst_n_8;
  wire mipi_rx_to_video_inst_n_9;
  wire [15:1]mipi_width;
  wire mipi_width0__0;
  wire module_reset;
  wire module_reset_i_1_n_0;
  wire module_reset_i_2_n_0;
  wire p_0_in;
  wire p_0_in0;
  wire p_0_in7_in;
  wire [2:0]p_0_in_10;
  wire [14:0]p_0_in__1;
  wire [15:0]p_0_in__2;
  wire [31:0]p_1_in;
  wire p_1_in6_in;
  wire [1:0]p_1_in_11;
  wire [1:0]p_2_in;
  wire pix_cnt1;
  wire \pix_cnt[10]_i_1_n_0 ;
  wire \pix_cnt[10]_i_2_n_0 ;
  wire \pix_cnt[11]_i_1_n_0 ;
  wire \pix_cnt[12]_i_1_n_0 ;
  wire \pix_cnt[14]_i_3_n_0 ;
  wire \pix_cnt[5]_i_1_n_0 ;
  wire \pix_cnt[5]_i_2_n_0 ;
  wire \pix_cnt[6]_i_1_n_0 ;
  wire \pix_cnt[7]_i_1_n_0 ;
  wire \pix_cnt[9]_i_2_n_0 ;
  wire [14:0]pix_cnt_reg;
  wire pre_active_video;
  wire pre_vsync;
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
  wire [2:0]sel0;
  wire slv_reg_rden__0;
  wire slv_reg_wren__2;
  wire vid_active_video;
  wire vid_ce;
  wire [19:0]vid_data;
  wire [7:0]vid_di;
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
        .S(p_0_in));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(\axi_araddr_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[4]),
        .Q(\axi_araddr_reg_n_0_[6] ),
        .R(p_0_in));
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
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in_10[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in_10[1]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in_10[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in0),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[4]),
        .Q(\axi_awaddr_reg_n_0_[6] ),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(p_0_in));
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
        .R(p_0_in));
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
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[0]_i_2 
       (.I0(mipi_frame_cnt_reg[0]),
        .I1(mipi_height[0]),
        .I2(sel0[1]),
        .I3(module_reset),
        .I4(sel0[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \axi_rdata[10]_i_1 
       (.I0(mipi_width[10]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(mipi_height[10]),
        .I4(mipi_frame_cnt_reg[10]),
        .I5(\axi_rdata[15]_i_2_n_0 ),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \axi_rdata[11]_i_1 
       (.I0(mipi_width[11]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(mipi_height[11]),
        .I4(mipi_frame_cnt_reg[11]),
        .I5(\axi_rdata[15]_i_2_n_0 ),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \axi_rdata[12]_i_1 
       (.I0(mipi_width[12]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(mipi_height[12]),
        .I4(mipi_frame_cnt_reg[12]),
        .I5(\axi_rdata[15]_i_2_n_0 ),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \axi_rdata[13]_i_1 
       (.I0(mipi_width[13]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(mipi_height[13]),
        .I4(mipi_frame_cnt_reg[13]),
        .I5(\axi_rdata[15]_i_2_n_0 ),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \axi_rdata[14]_i_1 
       (.I0(mipi_width[14]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(mipi_height[14]),
        .I4(mipi_frame_cnt_reg[14]),
        .I5(\axi_rdata[15]_i_2_n_0 ),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \axi_rdata[15]_i_1 
       (.I0(mipi_width[15]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(mipi_height[15]),
        .I4(mipi_frame_cnt_reg[15]),
        .I5(\axi_rdata[15]_i_2_n_0 ),
        .O(\axi_rdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \axi_rdata[15]_i_2 
       (.I0(sel0[2]),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(\axi_araddr_reg_n_0_[6] ),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[16]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[17]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[18]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[19]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'h03020002)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(\axi_araddr_reg_n_0_[6] ),
        .I3(sel0[2]),
        .I4(\axi_rdata[1]_i_3_n_0 ),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(mipi_frame_cnt_reg[1]),
        .I1(mipi_height[1]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(mipi_width[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_3 
       (.I0(p_1_in_11[1]),
        .I1(p_2_in[1]),
        .I2(sel0[1]),
        .I3(mipi_di[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[20]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[21]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[22]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[23]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[24]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[25]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[26]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[27]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[28]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[29]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'h4444444F44444444)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(mipi_di[2]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg_n_0_[5] ),
        .I4(\axi_araddr_reg_n_0_[6] ),
        .I5(\axi_rdata[2]_i_2_n_0 ),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(mipi_frame_cnt_reg[2]),
        .I1(mipi_height[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(mipi_width[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[30]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \axi_rdata[31]_i_1 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(sel0[2]),
        .I3(mipi_frame_cnt_reg[31]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h4444444F44444444)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(mipi_di[3]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg_n_0_[5] ),
        .I4(\axi_araddr_reg_n_0_[6] ),
        .I5(\axi_rdata[3]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(mipi_frame_cnt_reg[3]),
        .I1(mipi_height[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(mipi_width[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444F44444444)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(mipi_di[4]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg_n_0_[5] ),
        .I4(\axi_araddr_reg_n_0_[6] ),
        .I5(\axi_rdata[4]_i_2_n_0 ),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(mipi_frame_cnt_reg[4]),
        .I1(mipi_height[4]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(mipi_width[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444F44444444)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(mipi_di[5]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg_n_0_[5] ),
        .I4(\axi_araddr_reg_n_0_[6] ),
        .I5(\axi_rdata[5]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(mipi_frame_cnt_reg[5]),
        .I1(mipi_height[5]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(mipi_width[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444F44444444)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(mipi_di[6]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg_n_0_[5] ),
        .I4(\axi_araddr_reg_n_0_[6] ),
        .I5(\axi_rdata[6]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(mipi_frame_cnt_reg[6]),
        .I1(mipi_height[6]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(mipi_width[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444F44444444)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(mipi_di[7]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg_n_0_[5] ),
        .I4(\axi_araddr_reg_n_0_[6] ),
        .I5(\axi_rdata[7]_i_3_n_0 ),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \axi_rdata[7]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(mipi_frame_cnt_reg[7]),
        .I1(mipi_height[7]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(mipi_width[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \axi_rdata[8]_i_1 
       (.I0(mipi_width[8]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(mipi_height[8]),
        .I4(mipi_frame_cnt_reg[8]),
        .I5(\axi_rdata[15]_i_2_n_0 ),
        .O(\axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \axi_rdata[9]_i_1 
       (.I0(mipi_width[9]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(mipi_height[9]),
        .I4(mipi_frame_cnt_reg[9]),
        .I5(\axi_rdata[15]_i_2_n_0 ),
        .O(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[0]),
        .Q(s00_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(s00_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(s00_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(s00_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(s00_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(s00_axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(s00_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[16]),
        .Q(s00_axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[17]),
        .Q(s00_axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[18]),
        .Q(s00_axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[19]),
        .Q(s00_axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[1]),
        .Q(s00_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[20]),
        .Q(s00_axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[21]),
        .Q(s00_axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[22]),
        .Q(s00_axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[23]),
        .Q(s00_axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[24]),
        .Q(s00_axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[25]),
        .Q(s00_axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[26]),
        .Q(s00_axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[27]),
        .Q(s00_axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[28]),
        .Q(s00_axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[29]),
        .Q(s00_axi_rdata[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[2]),
        .Q(s00_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[30]),
        .Q(s00_axi_rdata[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[31]),
        .Q(s00_axi_rdata[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[3]),
        .Q(s00_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[4]),
        .Q(s00_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[5]),
        .Q(s00_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[6]),
        .Q(s00_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(p_1_in[7]),
        .Q(s00_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[8]_i_1_n_0 ),
        .Q(s00_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(s00_axi_rdata[9]),
        .R(p_0_in));
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
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
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
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
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
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
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
        .I2(p_0_in_10[0]),
        .I3(p_0_in_10[2]),
        .I4(p_0_in_10[1]),
        .I5(slv_reg_wren__2),
        .O(int_frame_start));
  FDRE int_frame_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_frame_start_i_1_n_0),
        .Q(p_2_in[0]),
        .R(p_0_in));
  FDSE int_mask_frame_done_reg
       (.C(s00_axi_aclk),
        .CE(int_mask_frame_start),
        .D(s00_axi_wdata[1]),
        .Q(p_1_in_11[1]),
        .S(p_0_in));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    int_mask_frame_start_i_1
       (.I0(\axi_awaddr_reg_n_0_[6] ),
        .I1(p_0_in0),
        .I2(p_0_in_10[1]),
        .I3(p_0_in_10[0]),
        .I4(p_0_in_10[2]),
        .I5(slv_reg_wren__2),
        .O(int_mask_frame_start));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
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
        .Q(p_1_in_11[0]),
        .S(p_0_in));
  LUT4 #(
    .INIT(16'h4F44)) 
    irq_INST_0
       (.I0(p_1_in_11[0]),
        .I1(p_2_in[0]),
        .I2(p_1_in_11[1]),
        .I3(p_2_in[1]),
        .O(irq));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \line_cnt[10]_i_2 
       (.I0(line_cnt_reg[8]),
        .I1(line_cnt_reg[6]),
        .I2(\line_cnt[9]_i_2_n_0 ),
        .I3(line_cnt_reg[7]),
        .I4(line_cnt_reg[9]),
        .O(\line_cnt[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \line_cnt[14]_i_3 
       (.I0(line_cnt_reg[9]),
        .I1(line_cnt_reg[7]),
        .I2(\line_cnt[9]_i_2_n_0 ),
        .I3(line_cnt_reg[6]),
        .I4(line_cnt_reg[8]),
        .I5(line_cnt_reg[10]),
        .O(\line_cnt[14]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \line_cnt[15]_i_3 
       (.I0(line_cnt_reg[13]),
        .I1(line_cnt_reg[12]),
        .I2(\line_cnt[14]_i_3_n_0 ),
        .I3(line_cnt_reg[11]),
        .O(\line_cnt[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \line_cnt[5]_i_2 
       (.I0(line_cnt_reg[3]),
        .I1(line_cnt_reg[0]),
        .I2(line_cnt_reg[1]),
        .I3(line_cnt_reg[2]),
        .I4(line_cnt_reg[4]),
        .O(\line_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \line_cnt[9]_i_2 
       (.I0(line_cnt_reg[4]),
        .I1(line_cnt_reg[2]),
        .I2(line_cnt_reg[1]),
        .I3(line_cnt_reg[0]),
        .I4(line_cnt_reg[3]),
        .I5(line_cnt_reg[5]),
        .O(\line_cnt[9]_i_2_n_0 ));
  FDCE \line_cnt_reg[0] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(p_0_in__2[0]),
        .Q(line_cnt_reg[0]));
  FDCE \line_cnt_reg[10] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_17),
        .Q(line_cnt_reg[10]));
  FDCE \line_cnt_reg[11] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_16),
        .Q(line_cnt_reg[11]));
  FDCE \line_cnt_reg[12] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_15),
        .Q(line_cnt_reg[12]));
  FDCE \line_cnt_reg[13] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_14),
        .Q(line_cnt_reg[13]));
  FDCE \line_cnt_reg[14] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_13),
        .Q(line_cnt_reg[14]));
  FDCE \line_cnt_reg[15] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(p_0_in__2[15]),
        .Q(line_cnt_reg[15]));
  FDCE \line_cnt_reg[1] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(p_0_in__2[1]),
        .Q(line_cnt_reg[1]));
  FDCE \line_cnt_reg[2] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(p_0_in__2[2]),
        .Q(line_cnt_reg[2]));
  FDCE \line_cnt_reg[3] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_24),
        .Q(line_cnt_reg[3]));
  FDCE \line_cnt_reg[4] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_23),
        .Q(line_cnt_reg[4]));
  FDCE \line_cnt_reg[5] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_22),
        .Q(line_cnt_reg[5]));
  FDCE \line_cnt_reg[6] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_21),
        .Q(line_cnt_reg[6]));
  FDCE \line_cnt_reg[7] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_20),
        .Q(line_cnt_reg[7]));
  FDCE \line_cnt_reg[8] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_19),
        .Q(line_cnt_reg[8]));
  FDCE \line_cnt_reg[9] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_29),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_18),
        .Q(line_cnt_reg[9]));
  FDCE \mipi_di_reg[0] 
       (.C(clk_hs_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(vid_di[0]),
        .Q(mipi_di[0]));
  FDCE \mipi_di_reg[1] 
       (.C(clk_hs_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(vid_di[1]),
        .Q(mipi_di[1]));
  FDCE \mipi_di_reg[2] 
       (.C(clk_hs_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(vid_di[2]),
        .Q(mipi_di[2]));
  FDCE \mipi_di_reg[3] 
       (.C(clk_hs_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(vid_di[3]),
        .Q(mipi_di[3]));
  FDCE \mipi_di_reg[4] 
       (.C(clk_hs_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(vid_di[4]),
        .Q(mipi_di[4]));
  FDCE \mipi_di_reg[5] 
       (.C(clk_hs_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(vid_di[5]),
        .Q(mipi_di[5]));
  FDCE \mipi_di_reg[6] 
       (.C(clk_hs_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(vid_di[6]),
        .Q(mipi_di[6]));
  FDCE \mipi_di_reg[7] 
       (.C(clk_hs_byte),
        .CE(pix_cnt1),
        .CLR(module_reset),
        .D(vid_di[7]),
        .Q(mipi_di[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \mipi_frame_cnt[0]_i_2 
       (.I0(mipi_frame_cnt_reg[0]),
        .O(\mipi_frame_cnt[0]_i_2_n_0 ));
  FDCE \mipi_frame_cnt_reg[0] 
       (.C(clk_hs_byte),
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
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_13 ),
        .Q(mipi_frame_cnt_reg[10]));
  FDCE \mipi_frame_cnt_reg[11] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_12 ),
        .Q(mipi_frame_cnt_reg[11]));
  FDCE \mipi_frame_cnt_reg[12] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_11 ),
        .Q(mipi_frame_cnt_reg[12]));
  FDCE \mipi_frame_cnt_reg[13] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_10 ),
        .Q(mipi_frame_cnt_reg[13]));
  FDCE \mipi_frame_cnt_reg[14] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_9 ),
        .Q(mipi_frame_cnt_reg[14]));
  FDCE \mipi_frame_cnt_reg[15] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_8 ),
        .Q(mipi_frame_cnt_reg[15]));
  FDCE \mipi_frame_cnt_reg[16] 
       (.C(clk_hs_byte),
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
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_14 ),
        .Q(mipi_frame_cnt_reg[17]));
  FDCE \mipi_frame_cnt_reg[18] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_13 ),
        .Q(mipi_frame_cnt_reg[18]));
  FDCE \mipi_frame_cnt_reg[19] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_12 ),
        .Q(mipi_frame_cnt_reg[19]));
  FDCE \mipi_frame_cnt_reg[1] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_14 ),
        .Q(mipi_frame_cnt_reg[1]));
  FDCE \mipi_frame_cnt_reg[20] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_11 ),
        .Q(mipi_frame_cnt_reg[20]));
  FDCE \mipi_frame_cnt_reg[21] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_10 ),
        .Q(mipi_frame_cnt_reg[21]));
  FDCE \mipi_frame_cnt_reg[22] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_9 ),
        .Q(mipi_frame_cnt_reg[22]));
  FDCE \mipi_frame_cnt_reg[23] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[16]_i_1_n_8 ),
        .Q(mipi_frame_cnt_reg[23]));
  FDCE \mipi_frame_cnt_reg[24] 
       (.C(clk_hs_byte),
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
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_14 ),
        .Q(mipi_frame_cnt_reg[25]));
  FDCE \mipi_frame_cnt_reg[26] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_13 ),
        .Q(mipi_frame_cnt_reg[26]));
  FDCE \mipi_frame_cnt_reg[27] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_12 ),
        .Q(mipi_frame_cnt_reg[27]));
  FDCE \mipi_frame_cnt_reg[28] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_11 ),
        .Q(mipi_frame_cnt_reg[28]));
  FDCE \mipi_frame_cnt_reg[29] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_10 ),
        .Q(mipi_frame_cnt_reg[29]));
  FDCE \mipi_frame_cnt_reg[2] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_13 ),
        .Q(mipi_frame_cnt_reg[2]));
  FDCE \mipi_frame_cnt_reg[30] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_9 ),
        .Q(mipi_frame_cnt_reg[30]));
  FDCE \mipi_frame_cnt_reg[31] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[24]_i_1_n_8 ),
        .Q(mipi_frame_cnt_reg[31]));
  FDCE \mipi_frame_cnt_reg[3] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_12 ),
        .Q(mipi_frame_cnt_reg[3]));
  FDCE \mipi_frame_cnt_reg[4] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_11 ),
        .Q(mipi_frame_cnt_reg[4]));
  FDCE \mipi_frame_cnt_reg[5] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_10 ),
        .Q(mipi_frame_cnt_reg[5]));
  FDCE \mipi_frame_cnt_reg[6] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_9 ),
        .Q(mipi_frame_cnt_reg[6]));
  FDCE \mipi_frame_cnt_reg[7] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[0]_i_1_n_8 ),
        .Q(mipi_frame_cnt_reg[7]));
  FDCE \mipi_frame_cnt_reg[8] 
       (.C(clk_hs_byte),
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
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(\mipi_frame_cnt_reg[8]_i_1_n_14 ),
        .Q(mipi_frame_cnt_reg[9]));
  FDCE \mipi_height_reg[0] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[0]),
        .Q(mipi_height[0]));
  FDCE \mipi_height_reg[10] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[10]),
        .Q(mipi_height[10]));
  FDCE \mipi_height_reg[11] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[11]),
        .Q(mipi_height[11]));
  FDCE \mipi_height_reg[12] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[12]),
        .Q(mipi_height[12]));
  FDCE \mipi_height_reg[13] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[13]),
        .Q(mipi_height[13]));
  FDCE \mipi_height_reg[14] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[14]),
        .Q(mipi_height[14]));
  FDCE \mipi_height_reg[15] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[15]),
        .Q(mipi_height[15]));
  FDCE \mipi_height_reg[1] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[1]),
        .Q(mipi_height[1]));
  FDCE \mipi_height_reg[2] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[2]),
        .Q(mipi_height[2]));
  FDCE \mipi_height_reg[3] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[3]),
        .Q(mipi_height[3]));
  FDCE \mipi_height_reg[4] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[4]),
        .Q(mipi_height[4]));
  FDCE \mipi_height_reg[5] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[5]),
        .Q(mipi_height[5]));
  FDCE \mipi_height_reg[6] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[6]),
        .Q(mipi_height[6]));
  FDCE \mipi_height_reg[7] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[7]),
        .Q(mipi_height[7]));
  FDCE \mipi_height_reg[8] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[8]),
        .Q(mipi_height[8]));
  FDCE \mipi_height_reg[9] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(line_cnt_reg[9]),
        .Q(mipi_height[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mipi_rx_to_video mipi_rx_to_video_inst
       (.D(reg_vsync_reg),
        .E(mipi_rx_to_video_inst_n_28),
        .Q({pix_cnt_reg[14:11],pix_cnt_reg[9:6],pix_cnt_reg[4:0]}),
        .\axi_araddr_reg[5] (p_1_in[0]),
        .\axi_rdata_reg[0] (\axi_rdata[0]_i_2_n_0 ),
        .\axi_rdata_reg[0]_0 ({\axi_araddr_reg_n_0_[6] ,\axi_araddr_reg_n_0_[5] ,sel0}),
        .\axi_rdata_reg[0]_1 (mipi_di[0]),
        .clk_hs_byte(clk_hs_byte),
        .dphy_clk_n(dphy_clk_n),
        .dphy_clk_p(dphy_clk_p),
        .dphy_data_n(dphy_data_n),
        .dphy_data_p(dphy_data_p),
        .\line_cnt_reg[10] (\line_cnt[10]_i_2_n_0 ),
        .\line_cnt_reg[11] (\line_cnt[14]_i_3_n_0 ),
        .\line_cnt_reg[14] ({p_0_in__2[15],mipi_rx_to_video_inst_n_13,mipi_rx_to_video_inst_n_14,mipi_rx_to_video_inst_n_15,mipi_rx_to_video_inst_n_16,mipi_rx_to_video_inst_n_17,mipi_rx_to_video_inst_n_18,mipi_rx_to_video_inst_n_19,mipi_rx_to_video_inst_n_20,mipi_rx_to_video_inst_n_21,mipi_rx_to_video_inst_n_22,mipi_rx_to_video_inst_n_23,mipi_rx_to_video_inst_n_24,p_0_in__2[2:0]}),
        .\line_cnt_reg[15] (line_cnt_reg),
        .\line_cnt_reg[15]_0 (\line_cnt[15]_i_3_n_0 ),
        .\line_cnt_reg[5] (\line_cnt[5]_i_2_n_0 ),
        .\line_cnt_reg[6] (\line_cnt[9]_i_2_n_0 ),
        .locked_reg(vid_locked),
        .mipi_width0__0(mipi_width0__0),
        .module_reset(module_reset),
        .p_1_in_11(p_1_in_11[0]),
        .p_2_in(p_2_in[0]),
        .pix_cnt1(pix_cnt1),
        .\pix_cnt_reg[11] ({p_0_in__1[14],mipi_rx_to_video_inst_n_6,mipi_rx_to_video_inst_n_7,mipi_rx_to_video_inst_n_8,mipi_rx_to_video_inst_n_9,mipi_rx_to_video_inst_n_10}),
        .\pix_cnt_reg[14] (\pix_cnt[14]_i_3_n_0 ),
        .\pix_cnt_reg[8] (\pix_cnt[9]_i_2_n_0 ),
        .pre_active_video(pre_active_video),
        .pre_vsync(pre_vsync),
        .reg_active_video_reg(vid_active_video),
        .reg_ce_reg(vid_ce),
        .\reg_di_reg[7] (vid_di),
        .reg_vsync_reg(mipi_rx_to_video_inst_n_29),
        .s00_axi_aresetn(s00_axi_aresetn),
        .vid_data(vid_data));
  FDCE \mipi_width_reg[10] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[9]),
        .Q(mipi_width[10]));
  FDCE \mipi_width_reg[11] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[10]),
        .Q(mipi_width[11]));
  FDCE \mipi_width_reg[12] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[11]),
        .Q(mipi_width[12]));
  FDCE \mipi_width_reg[13] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[12]),
        .Q(mipi_width[13]));
  FDCE \mipi_width_reg[14] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[13]),
        .Q(mipi_width[14]));
  FDCE \mipi_width_reg[15] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[14]),
        .Q(mipi_width[15]));
  FDCE \mipi_width_reg[1] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[0]),
        .Q(mipi_width[1]));
  FDCE \mipi_width_reg[2] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[1]),
        .Q(mipi_width[2]));
  FDCE \mipi_width_reg[3] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[2]),
        .Q(mipi_width[3]));
  FDCE \mipi_width_reg[4] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[3]),
        .Q(mipi_width[4]));
  FDCE \mipi_width_reg[5] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[4]),
        .Q(mipi_width[5]));
  FDCE \mipi_width_reg[6] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[5]),
        .Q(mipi_width[6]));
  FDCE \mipi_width_reg[7] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[6]),
        .Q(mipi_width[7]));
  FDCE \mipi_width_reg[8] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[7]),
        .Q(mipi_width[8]));
  FDCE \mipi_width_reg[9] 
       (.C(clk_hs_byte),
        .CE(mipi_width0__0),
        .CLR(module_reset),
        .D(pix_cnt_reg[8]),
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
       (.I0(p_0_in_10[2]),
        .I1(p_0_in_10[0]),
        .I2(p_0_in_10[1]),
        .I3(p_0_in0),
        .I4(\axi_awaddr_reg_n_0_[6] ),
        .O(module_reset_i_2_n_0));
  FDSE module_reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(module_reset_i_1_n_0),
        .Q(module_reset),
        .S(p_0_in));
  LUT2 #(
    .INIT(4'h7)) 
    \pix_cnt[0]_i_1 
       (.I0(pre_active_video),
        .I1(pix_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \pix_cnt[10]_i_1 
       (.I0(pre_active_video),
        .I1(\pix_cnt[10]_i_2_n_0 ),
        .I2(pix_cnt_reg[10]),
        .O(\pix_cnt[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \pix_cnt[10]_i_2 
       (.I0(pix_cnt_reg[8]),
        .I1(pix_cnt_reg[6]),
        .I2(\pix_cnt[9]_i_2_n_0 ),
        .I3(pix_cnt_reg[7]),
        .I4(pix_cnt_reg[9]),
        .O(\pix_cnt[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \pix_cnt[11]_i_1 
       (.I0(pre_active_video),
        .I1(\pix_cnt[14]_i_3_n_0 ),
        .I2(pix_cnt_reg[11]),
        .O(\pix_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \pix_cnt[12]_i_1 
       (.I0(pre_active_video),
        .I1(\pix_cnt[14]_i_3_n_0 ),
        .I2(pix_cnt_reg[11]),
        .I3(pix_cnt_reg[12]),
        .O(\pix_cnt[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \pix_cnt[14]_i_3 
       (.I0(pix_cnt_reg[9]),
        .I1(pix_cnt_reg[7]),
        .I2(\pix_cnt[9]_i_2_n_0 ),
        .I3(pix_cnt_reg[6]),
        .I4(pix_cnt_reg[8]),
        .I5(pix_cnt_reg[10]),
        .O(\pix_cnt[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \pix_cnt[1]_i_1 
       (.I0(pix_cnt_reg[0]),
        .I1(pix_cnt_reg[1]),
        .I2(pre_active_video),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \pix_cnt[2]_i_1 
       (.I0(pix_cnt_reg[1]),
        .I1(pix_cnt_reg[0]),
        .I2(pix_cnt_reg[2]),
        .I3(pre_active_video),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \pix_cnt[5]_i_1 
       (.I0(pre_active_video),
        .I1(\pix_cnt[5]_i_2_n_0 ),
        .I2(pix_cnt_reg[5]),
        .O(\pix_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \pix_cnt[5]_i_2 
       (.I0(pix_cnt_reg[3]),
        .I1(pix_cnt_reg[0]),
        .I2(pix_cnt_reg[1]),
        .I3(pix_cnt_reg[2]),
        .I4(pix_cnt_reg[4]),
        .O(\pix_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \pix_cnt[6]_i_1 
       (.I0(pre_active_video),
        .I1(\pix_cnt[9]_i_2_n_0 ),
        .I2(pix_cnt_reg[6]),
        .O(\pix_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \pix_cnt[7]_i_1 
       (.I0(pre_active_video),
        .I1(\pix_cnt[9]_i_2_n_0 ),
        .I2(pix_cnt_reg[6]),
        .I3(pix_cnt_reg[7]),
        .O(\pix_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pix_cnt[9]_i_2 
       (.I0(pix_cnt_reg[4]),
        .I1(pix_cnt_reg[2]),
        .I2(pix_cnt_reg[1]),
        .I3(pix_cnt_reg[0]),
        .I4(pix_cnt_reg[3]),
        .I5(pix_cnt_reg[5]),
        .O(\pix_cnt[9]_i_2_n_0 ));
  FDCE \pix_cnt_reg[0] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(p_0_in__1[0]),
        .Q(pix_cnt_reg[0]));
  FDCE \pix_cnt_reg[10] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(\pix_cnt[10]_i_1_n_0 ),
        .Q(pix_cnt_reg[10]));
  FDCE \pix_cnt_reg[11] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(\pix_cnt[11]_i_1_n_0 ),
        .Q(pix_cnt_reg[11]));
  FDCE \pix_cnt_reg[12] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(\pix_cnt[12]_i_1_n_0 ),
        .Q(pix_cnt_reg[12]));
  FDCE \pix_cnt_reg[13] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_6),
        .Q(pix_cnt_reg[13]));
  FDCE \pix_cnt_reg[14] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(p_0_in__1[14]),
        .Q(pix_cnt_reg[14]));
  FDCE \pix_cnt_reg[1] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(p_0_in__1[1]),
        .Q(pix_cnt_reg[1]));
  FDCE \pix_cnt_reg[2] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(p_0_in__1[2]),
        .Q(pix_cnt_reg[2]));
  FDCE \pix_cnt_reg[3] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_10),
        .Q(pix_cnt_reg[3]));
  FDCE \pix_cnt_reg[4] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_9),
        .Q(pix_cnt_reg[4]));
  FDCE \pix_cnt_reg[5] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(\pix_cnt[5]_i_1_n_0 ),
        .Q(pix_cnt_reg[5]));
  FDCE \pix_cnt_reg[6] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(\pix_cnt[6]_i_1_n_0 ),
        .Q(pix_cnt_reg[6]));
  FDCE \pix_cnt_reg[7] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(\pix_cnt[7]_i_1_n_0 ),
        .Q(pix_cnt_reg[7]));
  FDCE \pix_cnt_reg[8] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_8),
        .Q(pix_cnt_reg[8]));
  FDCE \pix_cnt_reg[9] 
       (.C(clk_hs_byte),
        .CE(mipi_rx_to_video_inst_n_28),
        .CLR(module_reset),
        .D(mipi_rx_to_video_inst_n_7),
        .Q(pix_cnt_reg[9]));
  FDRE pre_active_video_reg
       (.C(clk_hs_byte),
        .CE(vid_ce),
        .D(vid_active_video),
        .Q(pre_active_video),
        .R(1'b0));
  FDRE pre_vsync_reg
       (.C(clk_hs_byte),
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
