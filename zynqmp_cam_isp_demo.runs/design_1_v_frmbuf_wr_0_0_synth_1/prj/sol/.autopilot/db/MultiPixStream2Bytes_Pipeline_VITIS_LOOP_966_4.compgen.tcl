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
    id 60 \
    name pix_val_V_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_7 \
    op interface \
    ports { pix_val_V_7 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name pix_val_V_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_6 \
    op interface \
    ports { pix_val_V_6 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name pix_val_V_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_5 \
    op interface \
    ports { pix_val_V_5 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name pix_val_V_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_4 \
    op interface \
    ports { pix_val_V_4 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name trunc_ln1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln1 \
    op interface \
    ports { trunc_ln1 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name bytePlanes1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bytePlanes1 \
    op interface \
    ports { bytePlanes1_din { O 256 vector } bytePlanes1_num_data_valid { I 10 vector } bytePlanes1_fifo_cap { I 10 vector } bytePlanes1_full_n { I 1 bit } bytePlanes1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name cmp169_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp169_5 \
    op interface \
    ports { cmp169_5 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name cmp169_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp169_4 \
    op interface \
    ports { cmp169_4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name cmp169_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp169_3 \
    op interface \
    ports { cmp169_3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name cmp169_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp169_2 \
    op interface \
    ports { cmp169_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name cmp169_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp169_1 \
    op interface \
    ports { cmp169_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name sub166_cast73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub166_cast73 \
    op interface \
    ports { sub166_cast73 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name cmp169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp169 \
    op interface \
    ports { cmp169 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name img \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img \
    op interface \
    ports { img_dout { I 120 vector } img_num_data_valid { I 2 vector } img_fifo_cap { I 2 vector } img_empty_n { I 1 bit } img_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name pix_val_V_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_15_out \
    op interface \
    ports { pix_val_V_15_out { O 10 vector } pix_val_V_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name pix_val_V_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_14_out \
    op interface \
    ports { pix_val_V_14_out { O 10 vector } pix_val_V_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name pix_val_V_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_13_out \
    op interface \
    ports { pix_val_V_13_out { O 10 vector } pix_val_V_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name pix_val_V_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_12_out \
    op interface \
    ports { pix_val_V_12_out { O 10 vector } pix_val_V_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name out_pix_V_11_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_out_pix_V_11_out \
    op interface \
    ports { out_pix_V_11_out_i { I 256 vector } out_pix_V_11_out_o { O 256 vector } out_pix_V_11_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name raw_pix_V_5_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_raw_pix_V_5_out \
    op interface \
    ports { raw_pix_V_5_out_i { I 256 vector } raw_pix_V_5_out_o { O 256 vector } raw_pix_V_5_out_o_ap_vld { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


# flow_control definition:
set InstName design_1_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init_U
set CompName design_1_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix design_1_v_frmbuf_wr_0_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


