

#set_false_path -from [get_cells v_frmbuf_rd_CTRL_s_axi_U/int_HwReg_width_reg[*]]
#set_false_path -from [get_cells v_frmbuf_rd_CTRL_s_axi_U/int_HwReg_height_reg[*]]
#set_false_path -from [get_cells v_frmbuf_rd_CTRL_s_axi_U/int_HwReg_stride_reg[*]]
#set_false_path -from [get_cells v_frmbuf_rd_CTRL_s_axi_U/int_HwReg_video_format_reg[*]]

set_false_path -from [get_cells CTRL_s_axi_U/int_width_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_height_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_stride_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_video_format_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_frm_buffer_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_frm_buffer2_reg[*]]

