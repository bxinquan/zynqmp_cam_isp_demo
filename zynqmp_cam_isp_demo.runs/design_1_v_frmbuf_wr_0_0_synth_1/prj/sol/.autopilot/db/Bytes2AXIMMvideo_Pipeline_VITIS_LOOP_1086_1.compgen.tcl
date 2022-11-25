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
    id 110 \
    name mm_video \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mm_video \
    op interface \
    ports { m_axi_mm_video_AWVALID { O 1 bit } m_axi_mm_video_AWREADY { I 1 bit } m_axi_mm_video_AWADDR { O 32 vector } m_axi_mm_video_AWID { O 1 vector } m_axi_mm_video_AWLEN { O 32 vector } m_axi_mm_video_AWSIZE { O 3 vector } m_axi_mm_video_AWBURST { O 2 vector } m_axi_mm_video_AWLOCK { O 2 vector } m_axi_mm_video_AWCACHE { O 4 vector } m_axi_mm_video_AWPROT { O 3 vector } m_axi_mm_video_AWQOS { O 4 vector } m_axi_mm_video_AWREGION { O 4 vector } m_axi_mm_video_AWUSER { O 1 vector } m_axi_mm_video_WVALID { O 1 bit } m_axi_mm_video_WREADY { I 1 bit } m_axi_mm_video_WDATA { O 256 vector } m_axi_mm_video_WSTRB { O 32 vector } m_axi_mm_video_WLAST { O 1 bit } m_axi_mm_video_WID { O 1 vector } m_axi_mm_video_WUSER { O 1 vector } m_axi_mm_video_ARVALID { O 1 bit } m_axi_mm_video_ARREADY { I 1 bit } m_axi_mm_video_ARADDR { O 32 vector } m_axi_mm_video_ARID { O 1 vector } m_axi_mm_video_ARLEN { O 32 vector } m_axi_mm_video_ARSIZE { O 3 vector } m_axi_mm_video_ARBURST { O 2 vector } m_axi_mm_video_ARLOCK { O 2 vector } m_axi_mm_video_ARCACHE { O 4 vector } m_axi_mm_video_ARPROT { O 3 vector } m_axi_mm_video_ARQOS { O 4 vector } m_axi_mm_video_ARREGION { O 4 vector } m_axi_mm_video_ARUSER { O 1 vector } m_axi_mm_video_RVALID { I 1 bit } m_axi_mm_video_RREADY { O 1 bit } m_axi_mm_video_RDATA { I 256 vector } m_axi_mm_video_RLAST { I 1 bit } m_axi_mm_video_RID { I 1 vector } m_axi_mm_video_RFIFONUM { I 9 vector } m_axi_mm_video_RUSER { I 1 vector } m_axi_mm_video_RRESP { I 2 vector } m_axi_mm_video_BVALID { I 1 bit } m_axi_mm_video_BREADY { O 1 bit } m_axi_mm_video_BRESP { I 2 vector } m_axi_mm_video_BID { I 1 vector } m_axi_mm_video_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name sext_ln1086 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln1086 \
    op interface \
    ports { sext_ln1086 { I 27 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name loopWidth \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_loopWidth \
    op interface \
    ports { loopWidth { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name bytePlanes1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bytePlanes1 \
    op interface \
    ports { bytePlanes1_dout { I 256 vector } bytePlanes1_num_data_valid { I 10 vector } bytePlanes1_fifo_cap { I 10 vector } bytePlanes1_empty_n { I 1 bit } bytePlanes1_read { O 1 bit } } \
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


