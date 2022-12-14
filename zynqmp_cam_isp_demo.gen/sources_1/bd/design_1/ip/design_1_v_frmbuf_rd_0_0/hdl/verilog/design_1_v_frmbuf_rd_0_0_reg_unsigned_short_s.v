// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_frmbuf_rd_0_0_reg_unsigned_short_s (
        ap_clk,
        ap_rst,
        d,
        ap_return
);


input   ap_clk;
input   ap_rst;
input  [11:0] d;
output  [11:0] ap_return;

reg   [11:0] d_read_reg_22;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 d_read_reg_22 = 12'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        d_read_reg_22 <= 12'd0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            d_read_reg_22 <= d;
        end
    end
end

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_return = d_read_reg_22;

endmodule //design_1_v_frmbuf_rd_0_0_reg_unsigned_short_s
