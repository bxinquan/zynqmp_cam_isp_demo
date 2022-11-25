
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [0:0] axis_block_sigs;
wire [7:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_FrmbufRdHlsDataFlow_fu_186.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134.m_axis_video_TDATA_blk_n;

assign inst_idle_sigs[0] = grp_FrmbufRdHlsDataFlow_fu_186.entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (grp_FrmbufRdHlsDataFlow_fu_186.entry_proc_U0.ap_done & ~grp_FrmbufRdHlsDataFlow_fu_186.entry_proc_U0.ap_continue) | ~grp_FrmbufRdHlsDataFlow_fu_186.entry_proc_U0.width_c9_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.entry_proc_U0.video_format_c_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.entry_proc_U0.colorFormat_c_blk_n;
assign inst_idle_sigs[1] = grp_FrmbufRdHlsDataFlow_fu_186.AXIMMvideo2Bytes_U0.ap_idle;
assign inst_block_sigs[1] = (grp_FrmbufRdHlsDataFlow_fu_186.AXIMMvideo2Bytes_U0.ap_done & ~grp_FrmbufRdHlsDataFlow_fu_186.AXIMMvideo2Bytes_U0.ap_continue) | ~grp_FrmbufRdHlsDataFlow_fu_186.AXIMMvideo2Bytes_U0.grp_AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1_fu_170.bytePlanes1_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.AXIMMvideo2Bytes_U0.height_c10_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.AXIMMvideo2Bytes_U0.WidthInBytes_c_blk_n;
assign inst_idle_sigs[2] = grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.ap_idle;
assign inst_block_sigs[2] = (grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.ap_done & ~grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.ap_continue) | ~grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4_fu_218.bytePlanes1_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1_fu_234.bytePlanes1_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4_fu_218.img_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.grp_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1_fu_234.img_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.Height_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.Width_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.WidthInBytes_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.VideoFormat_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.width_c_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.Bytes2MultiPixStream_U0.height_c_blk_n;
assign inst_idle_sigs[3] = grp_FrmbufRdHlsDataFlow_fu_186.MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_block_sigs[3] = (grp_FrmbufRdHlsDataFlow_fu_186.MultiPixStream2AXIvideo_U0.ap_done & ~grp_FrmbufRdHlsDataFlow_fu_186.MultiPixStream2AXIvideo_U0.ap_continue) | ~grp_FrmbufRdHlsDataFlow_fu_186.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134.img_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.MultiPixStream2AXIvideo_U0.Height_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.MultiPixStream2AXIvideo_U0.WidthOut_blk_n | ~grp_FrmbufRdHlsDataFlow_fu_186.MultiPixStream2AXIvideo_U0.colorFormat_blk_n;

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = grp_FrmbufRdHlsDataFlow_fu_186.ap_idle;
assign inst_idle_sigs[6] = grp_FrmbufRdHlsDataFlow_fu_186.MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_idle_sigs[7] = grp_FrmbufRdHlsDataFlow_fu_186.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3_fu_134.ap_idle;

design_1_v_frmbuf_rd_0_0_hls_deadlock_idx0_monitor design_1_v_frmbuf_rd_0_0_hls_deadlock_idx0_monitor_U (
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
