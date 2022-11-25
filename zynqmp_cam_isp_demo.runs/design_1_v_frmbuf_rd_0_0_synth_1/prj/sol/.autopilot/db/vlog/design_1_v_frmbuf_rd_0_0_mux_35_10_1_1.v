// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module design_1_v_frmbuf_rd_0_0_mux_35_10_1_1 #(
parameter
    ID                = 0,
    NUM_STAGE         = 1,
    din0_WIDTH       = 32,
    din1_WIDTH       = 32,
    din2_WIDTH       = 32,
    din3_WIDTH         = 32,
    dout_WIDTH            = 32
)(
    input  [9 : 0]     din0,
    input  [9 : 0]     din1,
    input  [9 : 0]     din2,
    input  [4 : 0]    din3,
    output [9 : 0]   dout);

// puts internal signals
wire [4 : 0]     sel;
// level 1 signals
wire [9 : 0]         mux_1_0;
wire [9 : 0]         mux_1_1;
// level 2 signals
wire [9 : 0]         mux_2_0;
// level 3 signals
wire [9 : 0]         mux_3_0;
// level 4 signals
wire [9 : 0]         mux_4_0;
// level 5 signals
wire [9 : 0]         mux_5_0;

assign sel = din3;

// Generate level 1 logic
assign mux_1_0 = (sel[0] == 0)? din0 : din1;
assign mux_1_1 = din2;

// Generate level 2 logic
assign mux_2_0 = (sel[1] == 0)? mux_1_0 : mux_1_1;

// Generate level 3 logic
assign mux_3_0 = mux_2_0;

// Generate level 4 logic
assign mux_4_0 = mux_3_0;

// Generate level 5 logic
assign mux_5_0 = mux_4_0;

// output logic
assign dout = mux_5_0;

endmodule
