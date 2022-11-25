onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+design_1 -L xilinx_vip -L xpm -L xlconcat_v2_1_4 -L xil_defaultlib -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_26 -L axis_subset_converter_v1_1_26 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_18 -L floating_point_v7_0_20 -L xbip_dsp48_mult_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L div_gen_v5_1_19 -L v_frmbuf_wr_v2_4_0 -L v_frmbuf_rd_v2_4_0 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_17 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_26 -L fifo_generator_v13_2_7 -L axi_data_fifo_v2_1_25 -L axi_crossbar_v2_1_27 -L axi_protocol_converter_v2_1_26 -L axi_clock_converter_v2_1_25 -L blk_mem_gen_v8_4_5 -L axi_dwidth_converter_v2_1_26 -L lib_pkg_v1_0_2 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_4 -L axi_iic_v2_1_2 -L xlconstant_v1_1_7 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L axi_gpio_v2_0_28 -L xlslice_v1_0_2 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force
