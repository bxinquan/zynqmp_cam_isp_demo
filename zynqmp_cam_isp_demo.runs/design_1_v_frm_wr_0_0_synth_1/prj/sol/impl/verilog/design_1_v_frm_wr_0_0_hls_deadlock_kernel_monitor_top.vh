
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [2:0] axis_block_sigs;
wire [9:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_201.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[1] = ~grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_221.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_251.s_axis_video_TDATA_blk_n;

assign inst_idle_sigs[0] = grp_FrmbufWrHlsDataFlow_fu_184.entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (grp_FrmbufWrHlsDataFlow_fu_184.entry_proc_U0.ap_done & ~grp_FrmbufWrHlsDataFlow_fu_184.entry_proc_U0.ap_continue) | ~grp_FrmbufWrHlsDataFlow_fu_184.entry_proc_U0.HwReg_frm_buffer_c_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.entry_proc_U0.WidthInBytes_c9_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.entry_proc_U0.stride_c_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.entry_proc_U0.video_format_c_blk_n;
assign inst_idle_sigs[1] = grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.ap_idle;
assign inst_block_sigs[1] = (grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.ap_done & ~grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.ap_continue) | ~grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_221.img_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.width_c_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.height_c10_blk_n;
assign inst_idle_sigs[2] = grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.ap_idle;
assign inst_block_sigs[2] = (grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.ap_done & ~grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.ap_continue) | ~grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4_fu_252.img_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1_fu_273.img_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4_fu_252.bytePlanes1_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.grp_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1_fu_273.bytePlanes1_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.Height_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.WidthInPix_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.WidthInBytes_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.VideoFormat_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.WidthInBytes_c_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.MultiPixStream2Bytes_U0.height_c_blk_n;
assign inst_idle_sigs[3] = grp_FrmbufWrHlsDataFlow_fu_184.Bytes2AXIMMvideo_U0.ap_idle;
assign inst_block_sigs[3] = (grp_FrmbufWrHlsDataFlow_fu_184.Bytes2AXIMMvideo_U0.ap_done & ~grp_FrmbufWrHlsDataFlow_fu_184.Bytes2AXIMMvideo_U0.ap_continue) | ~grp_FrmbufWrHlsDataFlow_fu_184.Bytes2AXIMMvideo_U0.grp_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1_fu_141.bytePlanes1_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.Bytes2AXIMMvideo_U0.dstImg_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.Bytes2AXIMMvideo_U0.Height_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.Bytes2AXIMMvideo_U0.WidthInBytes_blk_n | ~grp_FrmbufWrHlsDataFlow_fu_184.Bytes2AXIMMvideo_U0.StrideInBytes_blk_n;

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = grp_FrmbufWrHlsDataFlow_fu_184.ap_idle;
assign inst_idle_sigs[6] = grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.ap_idle;
assign inst_idle_sigs[7] = grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_201.ap_idle;
assign inst_idle_sigs[8] = grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_221.ap_idle;
assign inst_idle_sigs[9] = grp_FrmbufWrHlsDataFlow_fu_184.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_251.ap_idle;

design_1_v_frm_wr_0_0_hls_deadlock_idx0_monitor design_1_v_frm_wr_0_0_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
