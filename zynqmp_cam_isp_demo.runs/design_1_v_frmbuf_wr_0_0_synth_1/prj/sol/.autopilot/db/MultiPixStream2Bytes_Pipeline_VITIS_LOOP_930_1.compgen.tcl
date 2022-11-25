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
    id 80 \
    name pix_val_V_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_3 \
    op interface \
    ports { pix_val_V_3 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name pix_val_V_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_2 \
    op interface \
    ports { pix_val_V_2 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name pix_val_V_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_1 \
    op interface \
    ports { pix_val_V_1 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name pix_val_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V \
    op interface \
    ports { pix_val_V { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name trunc_ln915_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln915_1 \
    op interface \
    ports { trunc_ln915_1 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
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
    id 86 \
    name icmp_ln920 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln920 \
    op interface \
    ports { icmp_ln920 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name cmp103_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp103_6 \
    op interface \
    ports { cmp103_6 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name cmp103_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp103_5 \
    op interface \
    ports { cmp103_5 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name cmp103_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp103_4 \
    op interface \
    ports { cmp103_4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name cmp103_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp103_3 \
    op interface \
    ports { cmp103_3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name cmp103_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp103_2 \
    op interface \
    ports { cmp103_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name cmp103_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp103_1 \
    op interface \
    ports { cmp103_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name sub100_cast72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub100_cast72 \
    op interface \
    ports { sub100_cast72 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name cmp103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp103 \
    op interface \
    ports { cmp103 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
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
    id 96 \
    name pix_val_V_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_11_out \
    op interface \
    ports { pix_val_V_11_out { O 10 vector } pix_val_V_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name pix_val_V_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_10_out \
    op interface \
    ports { pix_val_V_10_out { O 10 vector } pix_val_V_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name pix_val_V_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_9_out \
    op interface \
    ports { pix_val_V_9_out { O 10 vector } pix_val_V_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name pix_val_V_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_val_V_8_out \
    op interface \
    ports { pix_val_V_8_out { O 10 vector } pix_val_V_8_out_ap_vld { O 1 bit } } \
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


