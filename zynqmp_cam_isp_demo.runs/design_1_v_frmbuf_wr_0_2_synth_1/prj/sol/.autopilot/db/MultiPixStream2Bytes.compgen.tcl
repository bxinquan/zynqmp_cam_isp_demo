# This script segment is generated automatically by AutoPilot

set id 145
set name design_1_v_frmbuf_wr_0_2_mul_mul_13ns_14ns_27_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 13
set in0_signed 0
set in1_width 14
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 27
set arg_lists {i0 {13 0 +} i1 {14 0 +} p {27 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name img \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img \
    op interface \
    ports { img_dout { I 24 vector } img_num_data_valid { I 2 vector } img_fifo_cap { I 2 vector } img_empty_n { I 1 bit } img_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name bytePlanes_plane01 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bytePlanes_plane01 \
    op interface \
    ports { bytePlanes_plane01_din { O 64 vector } bytePlanes_plane01_num_data_valid { I 11 vector } bytePlanes_plane01_fifo_cap { I 11 vector } bytePlanes_plane01_full_n { I 1 bit } bytePlanes_plane01_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name bytePlanes_plane12 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bytePlanes_plane12 \
    op interface \
    ports { bytePlanes_plane12_din { O 64 vector } bytePlanes_plane12_num_data_valid { I 11 vector } bytePlanes_plane12_fifo_cap { I 11 vector } bytePlanes_plane12_full_n { I 1 bit } bytePlanes_plane12_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name Height \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Height \
    op interface \
    ports { Height_dout { I 12 vector } Height_num_data_valid { I 2 vector } Height_fifo_cap { I 2 vector } Height_empty_n { I 1 bit } Height_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name WidthInPix \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthInPix \
    op interface \
    ports { WidthInPix_dout { I 3 vector } WidthInPix_num_data_valid { I 2 vector } WidthInPix_fifo_cap { I 2 vector } WidthInPix_empty_n { I 1 bit } WidthInPix_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name WidthInBytes \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthInBytes \
    op interface \
    ports { WidthInBytes_dout { I 15 vector } WidthInBytes_num_data_valid { I 3 vector } WidthInBytes_fifo_cap { I 3 vector } WidthInBytes_empty_n { I 1 bit } WidthInBytes_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name VideoFormat \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_VideoFormat \
    op interface \
    ports { VideoFormat_dout { I 6 vector } VideoFormat_num_data_valid { I 3 vector } VideoFormat_fifo_cap { I 3 vector } VideoFormat_empty_n { I 1 bit } VideoFormat_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name WidthInBytes_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthInBytes_c \
    op interface \
    ports { WidthInBytes_c_din { O 15 vector } WidthInBytes_c_num_data_valid { I 2 vector } WidthInBytes_c_fifo_cap { I 2 vector } WidthInBytes_c_full_n { I 1 bit } WidthInBytes_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name height_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_height_c \
    op interface \
    ports { height_c_din { O 12 vector } height_c_num_data_valid { I 2 vector } height_c_fifo_cap { I 2 vector } height_c_full_n { I 1 bit } height_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name video_format_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_video_format_c \
    op interface \
    ports { video_format_c_din { O 6 vector } video_format_c_num_data_valid { I 2 vector } video_format_c_fifo_cap { I 2 vector } video_format_c_full_n { I 1 bit } video_format_c_write { O 1 bit } } \
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


