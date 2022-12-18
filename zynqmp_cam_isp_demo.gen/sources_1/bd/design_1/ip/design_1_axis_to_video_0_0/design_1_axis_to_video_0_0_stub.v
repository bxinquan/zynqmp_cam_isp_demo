// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Dec 17 00:26:58 2022
// Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_axis_to_video_0_0/design_1_axis_to_video_0_0_stub.v
// Design      : design_1_axis_to_video_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_to_video_v1_0,Vivado 2022.1" *)
module design_1_axis_to_video_0_0(aclk, aresetn, s_axis_tdata, s_axis_tvalid, 
  s_axis_tready, s_axis_tlast, s_axis_tuser, vid_clk, vid_rstn, vid_hsync, vid_vsync, 
  vid_active_video, vid_data, locked, underflow)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tdata[9:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,s_axis_tuser,vid_clk,vid_rstn,vid_hsync,vid_vsync,vid_active_video,vid_data[9:0],locked,underflow" */;
  input aclk;
  input aresetn;
  input [9:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  input s_axis_tuser;
  input vid_clk;
  input vid_rstn;
  output vid_hsync;
  output vid_vsync;
  output vid_active_video;
  output [9:0]vid_data;
  output locked;
  output underflow;
endmodule
