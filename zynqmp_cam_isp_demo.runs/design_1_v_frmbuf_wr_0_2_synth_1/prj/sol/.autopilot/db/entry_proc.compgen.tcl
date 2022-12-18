# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name HwReg_frm_buffer \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_frm_buffer \
    op interface \
    ports { HwReg_frm_buffer { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name HwReg_frm_buffer_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_frm_buffer_c \
    op interface \
    ports { HwReg_frm_buffer_c_din { O 32 vector } HwReg_frm_buffer_c_num_data_valid { I 3 vector } HwReg_frm_buffer_c_fifo_cap { I 3 vector } HwReg_frm_buffer_c_full_n { I 1 bit } HwReg_frm_buffer_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name HwReg_frm_buffer2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_frm_buffer2 \
    op interface \
    ports { HwReg_frm_buffer2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name HwReg_frm_buffer2_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_frm_buffer2_c \
    op interface \
    ports { HwReg_frm_buffer2_c_din { O 32 vector } HwReg_frm_buffer2_c_num_data_valid { I 3 vector } HwReg_frm_buffer2_c_fifo_cap { I 3 vector } HwReg_frm_buffer2_c_full_n { I 1 bit } HwReg_frm_buffer2_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name WidthInBytes_c9 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthInBytes_c9 \
    op interface \
    ports { WidthInBytes_c9_din { O 15 vector } WidthInBytes_c9_num_data_valid { I 3 vector } WidthInBytes_c9_fifo_cap { I 3 vector } WidthInBytes_c9_full_n { I 1 bit } WidthInBytes_c9_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name stride_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stride_c \
    op interface \
    ports { stride_c_din { O 16 vector } stride_c_num_data_valid { I 3 vector } stride_c_fifo_cap { I 3 vector } stride_c_full_n { I 1 bit } stride_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name video_format_c11 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_video_format_c11 \
    op interface \
    ports { video_format_c11_din { O 6 vector } video_format_c11_num_data_valid { I 3 vector } video_format_c11_fifo_cap { I 3 vector } video_format_c11_full_n { I 1 bit } video_format_c11_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


