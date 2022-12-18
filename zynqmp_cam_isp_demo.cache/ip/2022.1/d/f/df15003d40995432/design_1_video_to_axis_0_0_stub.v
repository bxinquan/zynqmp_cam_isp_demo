// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec 17 00:26:58 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_video_to_axis_0_0_stub.v
// Design      : design_1_video_to_axis_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "video_to_axis_v1_0,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(vid_clk, vid_rstn, vid_ce, vid_vsync, 
  vid_active_video, vid_data, aclk, aresetn, m_axis_tdata, m_axis_tvalid, m_axis_tready, 
  m_axis_tlast, m_axis_tuser, overflow)
/* synthesis syn_black_box black_box_pad_pin="vid_clk,vid_rstn,vid_ce,vid_vsync,vid_active_video,vid_data[39:0],aclk,aresetn,m_axis_tdata[39:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tuser,overflow" */;
  input vid_clk;
  input vid_rstn;
  input vid_ce;
  input vid_vsync;
  input vid_active_video;
  input [39:0]vid_data;
  input aclk;
  input aresetn;
  output [39:0]m_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output m_axis_tuser;
  output overflow;
endmodule
