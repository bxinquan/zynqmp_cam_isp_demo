
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:062default:default2
00:00:072default:default2
1301.1952default:default2
43.9062default:defaultZ17-268h px? 
>
Refreshing IP repositories
234*coregenZ19-234h px? 
}
 Loaded user IP repository '%s'.
1135*coregen26
"d:/zynqmp_cam_isp_demo/xil_ip_repo2default:defaultZ19-1700h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
D:/Xilinx/Vivado/2022.1/data/ip2default:defaultZ19-2313h px? 
?
?
****** Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
  **** SW Build 3526262 on Mon Apr 18 15:48:16 MDT 2022
  **** IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.

source D:/Xilinx/Vitis_HLS/2022.1/scripts/vitis_hls/hls.tcl -notrace
INFO: [HLS 200-10] Running 'D:/Xilinx/Vitis_HLS/2022.1/bin/unwrapped/win64.o/vitis_hls.exe'
INFO: [HLS 200-10] For user 'bianxinquan' on host 'legion-bianxinq' (Windows NT_amd64 version 6.2) on Sat Dec 17 00:25:56 +0800 2022
INFO: [HLS 200-10] In directory 'D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1'
Sourcing Tcl script 'D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/runhls.tcl'
INFO: [HLS 200-1510] Running: open_project -reset prj 
INFO: [HLS 200-10] Creating and opening project 'D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj'.
INFO: [HLS 200-1510] Running: set_top v_frmbuf*commonh px? 
?
?_rd 
INFO: [HLS 200-1510] Running: open_solution sol 
INFO: [HLS 200-10] Creating and opening solution 'D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol'.
INFO: [HLS 200-1505] Using default flow_target 'vivado'
Resolution: For help on HLS 200-1505 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-1505.html
INFO: [HLS 200-435] Setting 'open_solution -flow_target vivado' configuration: config_interface -m_axi_latency=0
INFO: [HLS 200-1510] Running: set_part xck26-sfvc784-2lv-c 
INFO: [HLS 200-1611] Setting target device to 'xck26-sfvc784-2LV-c'
*commonh px? 
?
?INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/v_frmbuf_rd_config.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/v_frmbuf_rd_config.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/v_frmbuf_rd.cpp 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.g*commonh px? 
?
?en/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/v_frmbuf_rd.cpp' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/v_frmbuf_rd.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/v_frmbuf_rd.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls_video.h 
INFO: [HLS *commonh px? 
?
?200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls_video.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls_opencv.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls_opencv.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/*commonh px? 
?
?design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_axi_io.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_axi_io.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_arithm.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_arithm.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design*commonh px? 
?
?_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_core.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_core.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_fast.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_fast.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/de*commonh px? 
?
?sign_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_haar.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_haar.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_harris.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_harris.h' to the project
INFO: [HLS 200-1510] R*commonh px? 
?
?unning: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_histogram.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_histogram.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_hough.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sou*commonh px? 
?
?rces_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_hough.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_imgbase.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_imgbase.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/h*commonh px? 
?
?ls_video_imgproc.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_imgproc.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_io.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_io.h' to the project
*commonh px? 
?
?INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_mem.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_mem.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_stereobm.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp*commonh px? 
?
?_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_stereobm.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_types.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_types.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0*commonh px? 
?
?_0/src/hls/hls_video_undistort.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/hls/hls_video_undistort.h' to the project
INFO: [HLS 200-1510] Running: create_clock -period 3.333 -name ap_clk 
INFO: [SYN 201-201] Setting up clock 'ap_clk' with a period of 3.333ns.
INFO: [HLS 200-1510] Running: config_rtl -reset all 
INFO: [HLS 200-1510] Running: config_interface -m_axi_flush_mode 
INFO: [HLS 200-1510] Running: config_interface -m_axi_conservative_mode 
INFO: [HLS 200-1510] Running: config_interface -m_axi_addr64=false 
INFO: [HLS 200-1510] Running: config_rtl -module_prefix design_1_v_frmbuf_rd_0_0_ 
INFO: [HLS 200-1510] Running: config_export -vendor xilinx.com -library ip -version 2.4 
INFO: [HLS 200-1510] Running: csynth_design 
INFO: [HLS 200-111] Finished File checks and directory preparation: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.014 seconds; current allocated memory: 1.10*commonh px? 
?
?2 GB.
INFO: [HLS 200-10] Analyzing design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/src/v_frmbuf_rd.cpp' ... 
*commonh px? 
?
?WARNING: [HLS 207-5292] unused parameter 'srcImg2' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:421:12)
WARNING: [HLS 207-5292] unused parameter 'srcImg3' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:422:9)
WARNING: [HLS 207-5292] unused parameter 'VideoFormat' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:427:16)
INFO: [HLS 200-111] Finished Source Code Analysis and Preprocessing: CPU user time: 3 seconds. CPU system time: 0 seconds. Elapsed time: 57.873 seconds; current allocated memory: 1.102 GB.
*commonh px? 
]
HINFO: [HLS 200-777] Using interface defaults for 'Vivado' flow target.
*commonh px? 
?
?INFO: [HLS 214-131] Inlining function 'ap_range_ref<64, false>::ap_range_ref(ap_int_base<64, false>*, int, int)' into 'ap_int_base<64, false>::range(int, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1094:12)
INFO: [HLS 214-131] Inlining function 'ap_int_base<64, false>::range(int, int)' into 'ap_int_base<64, false>::operator()(int, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1131:18)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<64, false>::get() const' into 'ap_int_base<64, false>::ap_int_base<64, false>(ap_range_ref<64, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:404:20)
INFO: [HLS 214-131] Inlining function 'ssdm_int<32, true>::ssdm_int(int)' into 'ap_int_base<32, true>::ap_int_base(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:260:67)
INFO: [HLS 214-131] Inlining function 'ssdm_int<32, false>::ssdm_int(unsigned int)' into 'ap_int_base<32, false>::ap_int_base<32, true*commonh px? 
?
?>(ap_int_base<32, true> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:231:106)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi1ELb0EEC2EDq1_j' into 'ap_int_base<1, false>::ap_int_base(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:260:67)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi33ELb1EEC2EDq33_i' into 'ap_int_base<33, true>::ap_int_base<1, false>(ap_int_base<1, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:231:106)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi33ELb1EEC2EDq33_i' into 'ap_int_base<33, true>::ap_int_base<32, true>(ap_int_base<32, true> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:231:106)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi33ELb1EEC2EDq33_i' into 'ap_int_base<33, true>::ap_int_base(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:260:67)
INFO: [HLS 214-131] Inlining function 'ap_int_bas*commonh px? 
?
?e<33, true>::ap_int_base<1, false>(ap_int_base<1, false> const&)' into 'ap_int_base<1, false>::RType<32, true>::minus operator-<1, false, 32, true>(ap_int_base<1, false> const&, ap_int_base<32, true> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1542:341)
INFO: [HLS 214-131] Inlining function 'ap_int_base<33, true>::ap_int_base(int)' into 'ap_int_base<1, false>::RType<32, true>::minus operator-<1, false, 32, true>(ap_int_base<1, false> const&, ap_int_base<32, true> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1542:520)
INFO: [HLS 214-131] Inlining function 'ap_int_base<33, true>::ap_int_base<32, true>(ap_int_base<32, true> const&)' into 'ap_int_base<1, false>::RType<32, true>::minus operator-<1, false, 32, true>(ap_int_base<1, false> const&, ap_int_base<32, true> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1542:430)
INFO: [HLS 214-131] Inlining function 'ap_int_base<1, false>::ap_int_base(int)' into 'ap_int_ba*commonh px? 
?
?se<32, true>::operator-() const' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:941:12)
INFO: [HLS 214-131] Inlining function 'ap_int_base<1, false>::RType<32, true>::minus operator-<1, false, 32, true>(ap_int_base<1, false> const&, ap_int_base<32, true> const&)' into 'ap_int_base<32, true>::operator-() const' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:941:37)
INFO: [HLS 214-131] Inlining function 'ssdm_int<64, false>::ssdm_int(unsigned long)' into 'ap_int_base<64, false>::ap_int_base(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:260:67)
INFO: [HLS 214-131] Inlining function 'ap_int_base<64, false>::ap_int_base(int)' into 'ap_uint<64> ap_int_base<64, false>::operator>><32>(ap_int_base<32, false> const&) const' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:993:17)
INFO: [HLS 214-131] Inlining function 'ap_int_base<32, false>::to_uint() const' into 'ap_uint<64> ap_int_base<64, false>::operator>><32>(ap_int_ba*commonh px? 
?
?se<32, false> const&) const' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:994:26)
INFO: [HLS 214-131] Inlining function 'ap_int_base<64, false>::ap_int_base(int)' into 'ap_uint<64> ap_int_base<64, false>::operator<<<32>(ap_int_base<32, false> const&) const' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:975:17)
INFO: [HLS 214-131] Inlining function 'ap_int_base<32, false>::to_uint() const' into 'ap_uint<64> ap_int_base<64, false>::operator<<<32>(ap_int_base<32, false> const&) const' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:976:26)
INFO: [HLS 214-131] Inlining function 'ap_int_base<32, false>::ap_int_base<32, true>(ap_int_base<32, true> const&)' into 'ap_uint<64> ap_int_base<64, false>::operator<<<32>(ap_int_base<32, true> const&) const' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:965:37)
INFO: [HLS 214-131] Inlining function 'ap_uint<64> ap_int_base<64, false>::operator<<<32>(ap_int_base<32, false> const&) c*commonh px? 
?
?onst' into 'ap_uint<64> ap_int_base<64, false>::operator<<<32>(ap_int_base<32, true> const&) const' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:970:14)
INFO: [HLS 214-131] Inlining function 'ap_uint<64> ap_int_base<64, false>::operator>><32>(ap_int_base<32, false> const&) const' into 'ap_uint<64> ap_int_base<64, false>::operator<<<32>(ap_int_base<32, true> const&) const' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:968:14)
INFO: [HLS 214-131] Inlining function 'ap_int_base<32, false>& ap_int_base<32, false>::operator=<33, true>(ap_int_base<33, true> const&)' into 'ap_uint<64> ap_int_base<64, false>::operator<<<32>(ap_int_base<32, true> const&) const' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:967:10)
INFO: [HLS 214-131] Inlining function 'ap_int_base<32, true>::operator-() const' into 'ap_uint<64> ap_int_base<64, false>::operator<<<32>(ap_int_base<32, true> const&) const' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int*commonh px? 
?
?_base.h:967:12)
INFO: [HLS 214-131] Inlining function 'ap_int_base<64, false>::ap_int_base<64, false>(ap_range_ref<64, false> const&)' into 'ap_int_base<64, false>::RType<($_0)32, true>::arg1 operator<<<64, false>(ap_range_ref<64, false> const&, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_ref.h:1152:2591)
INFO: [HLS 214-131] Inlining function 'ap_uint<64> ap_int_base<64, false>::operator<<<32>(ap_int_base<32, true> const&) const' into 'ap_int_base<64, false>::RType<($_0)32, true>::arg1 operator<<<64, false>(ap_range_ref<64, false> const&, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_ref.h:1152:2621)
INFO: [HLS 214-131] Inlining function 'ap_int_base<32, true>::ap_int_base(int)' into 'ap_int_base<64, false>::RType<($_0)32, true>::arg1 operator<<<64, false>(ap_range_ref<64, false> const&, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_ref.h:1152:2624)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi10ELb0EEC2EDq10_j' into 'ap_int_base<*commonh px? 
?
?10, false>::ap_int_base<64, false>(ap_int_base<64, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:231:106)
INFO: [HLS 214-131] Inlining function 'ap_int_base<10, false>::ap_int_base<64, false>(ap_int_base<64, false> const&)' into 'ap_uint<10>::ap_uint<64>(ap_uint<64> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_int.h:232:90)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi10ELb0EEC2EDq10_j' into 'ap_int_base<10, false>::ap_int_base(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:260:67)
INFO: [HLS 214-131] Inlining function 'ap_int_base<10, false>::ap_int_base(int)' into 'ap_uint<10>::ap_uint(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_int.h:333:58)
INFO: [HLS 214-131] Inlining function 'ap_int_base<64, false>::ap_int_base<64, false>(ap_range_ref<64, false> const&)' into 'ap_range_ref<64, false>::operator=(ap_range_ref<64, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\*commonh px? 
?
?ap_int_ref.h:422:22)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<64, false>& ap_range_ref<64, false>::operator=<64, false>(ap_int_base<64, false> const&)' into 'ap_range_ref<64, false>::operator=(ap_range_ref<64, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_ref.h:422:12)
INFO: [HLS 214-131] Inlining function 'hls::Scalar<3, ap_uint<10> >::Scalar()' into 'Bytes2MultiPixStream(STREAM_PLANES&, hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, unsigned short const&, unsigned short const&, unsigned short const&, unsigned short const&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1259:18)
*commonh px? 
?
?INFO: [HLS 214-131] Inlining function 'ap_int_base<64, false>::RType<($_0)32, true>::arg1 operator<<<64, false>(ap_range_ref<64, false> const&, int)' into 'Bytes2MultiPixStream(STREAM_PLANES&, hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, unsigned short const&, unsigned short const&, unsigned short const&, unsigned short const&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1319:27)
INFO: [HLS 214-131] Inlining function 'ap_int_base<64, false>::operator()(int, int)' into 'Bytes2MultiPixStream(STREAM_PLANES&, hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, unsigned short const&, unsigned short const&, unsigned short const&, unsigned short const&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1318:28)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<64, false>::operator=(ap_range_ref<64, false> const&)' into 'Bytes2MultiPixStream(STREAM_PLANES&, hls::stream<hls::*commonh px? 
?
?Scalar<3, ap_uint<10> >, 0>&, unsigned short const&, unsigned short const&, unsigned short const&, unsigned short const&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1311:32)
INFO: [HLS 214-131] Inlining function 'ap_int_base<64, false>::operator()(int, int)' into 'Bytes2MultiPixStream(STREAM_PLANES&, hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, unsigned short const&, unsigned short const&, unsigned short const&, unsigned short const&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1311:6)
INFO: [HLS 214-131] Inlining function 'ap_int_base<64, false>::operator()(int, int)' into 'Bytes2MultiPixStream(STREAM_PLANES&, hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, unsigned short const&, unsigned short const&, unsigned short const&, unsigned short const&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmb*commonh px? 
?
?uf_rd.cpp:1311:34)
INFO: [HLS 214-131] Inlining function 'hls::Scalar<3, ap_uint<10> >::Scalar()' into 'Bytes2MultiPixStream(STREAM_PLANES&, hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, unsigned short const&, unsigned short const&, unsigned short const&, unsigned short const&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1299:18)
INFO: [HLS 214-131] Inlining function 'ap_int_base<64, false>::RType<($_0)32, true>::arg1 operator<<<64, false>(ap_range_ref<64, false> const&, int)' into 'Bytes2MultiPixStream(STREAM_PLANES&, hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, unsigned short const&, unsigned short const&, unsigned short const&, unsigned short const&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1274:26)
INFO: [HLS 214-131] Inlining function 'ap_int_base<64, false>::operator()(int, int)' into 'Bytes2MultiPixStream(STREAM_PLANES&, hls::stream<hls::Scalar<3*commonh px? 
?
?, ap_uint<10> >, 0>&, unsigned short const&, unsigned short const&, unsigned short const&, unsigned short const&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1273:29)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi5ELb0EEC2EDq5_j' into 'ap_int_base<5, false>::ap_int_base(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:260:67)
INFO: [HLS 214-131] Inlining function 'ap_int_base<5, false>::ap_int_base(int)' into 'ap_uint<5>::ap_uint(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_int.h:333:58)
INFO: [HLS 214-131] Inlining function 'ap_int_base<1, false>::ap_int_base(int)' into 'ap_uint<1>::ap_uint(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_int.h:333:58)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi30ELb0EEC2EDq30_j' into 'ap_int_base<30, false>::ap_int_base(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:260:67)
INFO: [HLS 214*commonh px? 
?
?-131] Inlining function 'ap_int_base<30, false>::ap_int_base(int)' into 'ap_uint<30>::ap_uint(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_int.h:333:58)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<30, false>::ap_range_ref(ap_int_base<30, false>*, int, int)' into 'ap_int_base<30, false>::range(int, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1094:12)
INFO: [HLS 214-131] Inlining function 'ap_int_base<30, false>::range(int, int)' into 'ap_int_base<30, false>::operator()(int, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1131:18)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi30ELb0EEC2EDq30_j' into 'ap_int_base<30, false>::ap_int_base<10, false>(ap_int_base<10, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:231:106)
INFO: [HLS 214-131] Inlining function 'ap_int_base<30, false>::ap_int_base<10, false>(ap_int_base<10, false> const&)' into 'ap_range_ref<30, false>& ap_range_ref<30*commonh px? 
?
?, false>::operator=<10, false>(ap_int_base<10, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_ref.h:413:31)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi4ELb0EEC2EDq4_j' into 'ap_int_base<4, false>::ap_int_base(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:260:67)
INFO: [HLS 214-131] Inlining function 'ap_int_base<4, false>::ap_int_base(int)' into 'ap_uint<4>::ap_uint(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_int.h:333:58)
INFO: [HLS 214-131] Inlining function 'hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>::write(hls::axis<ap_uint<30>, 1ul, 1ul, 1ul> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:304:51)
INFO: [HLS 214-131] Inlining function 'hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>::write(hls::axis<ap_uint<30>, 1ul, 1ul, 1ul> const&)' (D:/Xili*commonh px? 
?
?nx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:307:26)
INFO: [HLS 214-131] Inlining function 'hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>::write(hls::axis<ap_uint<30>, 1ul, 1ul, 1ul> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:306:68)
INFO: [HLS 214-131] Inlining function 'hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>::write(hls::axis<ap_uint<30>, 1ul, 1ul, 1ul> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:306:37)
INFO: [HLS 214-131] Inlining function 'hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>::write(hls::axis<ap_uint<30>, 1ul, 1ul, 1ul> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:305:40)
INFO: [HLS 214-131] Inlining function 'hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>::get_id_ptr()' in*commonh px? 
?
?to 'hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>::write(hls::axis<ap_uint<30>, 1ul, 1ul, 1ul> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:305:24)
INFO: [HLS 214-131] Inlining function 'hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>::write(hls::axis<ap_uint<30>, 1ul, 1ul, 1ul> const&)' into 'hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>::operator<<(hls::axis<ap_uint<30>, 1ul, 1ul, 1ul> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:262:86)
INFO: [HLS 214-131] Inlining function 'hls::Scalar<3, ap_uint<10> >::Scalar()' into 'MultiPixStream2AXIvideo(hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:240:18)
INFO: [HLS 214-131] Inlining function 'hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>::ope*commonh px? 
?
?rator<<(hls::axis<ap_uint<30>, 1ul, 1ul, 1ul> const&)' into 'MultiPixStream2AXIvideo(hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:336:19)
*commonh px? 
?
?INFO: [HLS 214-131] Inlining function 'ap_range_ref<30, false>& ap_range_ref<30, false>::operator=<10, false>(ap_int_base<10, false> const&)' into 'MultiPixStream2AXIvideo(hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:331:41)
*commonh px? 
?
?INFO: [HLS 214-131] Inlining function 'ap_int_base<30, false>::operator()(int, int)' into 'MultiPixStream2AXIvideo(hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:331:6)
INFO: [HLS 214-131] Inlining function 'ap_int_base<5, false>::operator unsigned long long() const' into 'MultiPixStream2AXIvideo(hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:329:17)
INFO: [HLS 214-210] Disaggregating variable 'pix160' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1299:18)
INFO: [HLS 214-210] Disaggregating*commonh px? 
?
? variable 'pix' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1259:18)
INFO: [HLS 214-210] Disaggregating variable 'pix' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:240:18)
INFO: [HLS 214-210] Disaggregating variable 'bytePlanes' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:37:16)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_325_4' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:325:22)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_327_5' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:327:23)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_1269_2' is mark*commonh px? 
?
?ed as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1269:24)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_1271_3' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1271:25)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_1309_5' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1309:24)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_1314_6' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1314:24)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_1316_7' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_*commonh px? 
?
?isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1316:25)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_325_4' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:325:22) in function 'MultiPixStream2AXIvideo' completely with a factor of 1 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:239:0)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_327_5' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:327:23) in function 'MultiPixStream2AXIvideo' completely with a factor of 3 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:239:0)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_1269_2' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:12*commonh px? 
?
?69:24) in function 'Bytes2MultiPixStream' completely with a factor of 8 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:572:0)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_1271_3' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1271:25) in function 'Bytes2MultiPixStream' completely with a factor of 1 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:572:0)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_1309_5' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1309:24) in function 'Bytes2MultiPixStream' completely with a factor of 2 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:572:0)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_1314_6' (D:/zynqmp_cam_isp_*commonh px? 
?
?demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1314:24) in function 'Bytes2MultiPixStream' completely with a factor of 6 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:572:0)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_1316_7' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:1316:25) in function 'Bytes2MultiPixStream' completely with a factor of 1 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:572:0)
INFO: [HLS 214-248] Applying array_partition to 'pix': Complete partitioning on dimension 1. (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:240:18)
INFO: [HLS 214-248] Applying array_partition to 'map': Complete partitioning on dimension 1. (D:/zynqmp_cam_isp_demo/zynqmp_ca*commonh px? 
?
?m_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:287:13)
INFO: [HLS 214-241] Aggregating fifo (hls::stream) variable 'img' with compact=bit mode in 30-bits (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:35:18)
INFO: [HLS 214-241] Aggregating maxi variable 'frm_buffer' with compact=none mode in 64-bits
INFO: [HLS 214-115] Multiple burst reads of variable length and bit width 64 in loop 'VITIS_LOOP_437_1'(D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:437:20) has been inferred on bundle 'mm_video'. These burst requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:437:20)
INFO: [HLS 214-131] Inlining function '_llvm.fpg*commonh px? 
?
?a.pack.none.i64.s_struct.ap_uint<64>s' into 'AXIMMvideo2Bytes(ap_uint<64>*&, ap_uint<64>*&, ap_uint<64>*&, STREAM_PLANES&, unsigned short const&, unsigned short const&, unsigned short const&, unsigned short const&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/hls_stream_39.h:174:9)
INFO: [HLS 214-131] Inlining function '_llvm.fpga.pack.none.i48.s_class.hls::Scalar<3, ap_uint<10> >s' into 'Bytes2MultiPixStream(STREAM_PLANES&, hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, unsigned short const&, unsigned short const&, unsigned short const&, unsigned short const&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/hls_stream_39.h:174:9)
INFO: [HLS 214-131] Inlining function '_llvm.fpga.pack.bits.i30.s_class.hls::Scalar<3, ap_uint<10> >s.1' into 'Bytes2MultiPixStream(STREAM_PLANES&, hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, unsigned short const&, unsigned short const&, unsigned short const&, unsigned short const&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/hls_str*commonh px? 
?
?eam_39.h:174:9)
INFO: [HLS 214-131] Inlining function '_llvm.fpga.pack.none.i48.a3s_struct.ap_uint<10>s' into '_llvm.fpga.unpack.bits.s_class.hls::Scalar<3, ap_uint<10> >s.i30.1'
INFO: [HLS 214-131] Inlining function '_llvm.fpga.unpack.bits.s_class.hls::Scalar<3, ap_uint<10> >s.i30.1' into 'MultiPixStream2AXIvideo(hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>&, unsigned short&, unsigned short&, unsigned short&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/hls_stream_39.h:145:9)
*commonh px? 
?
?INFO: [HLS 214-131] Inlining function '_llvm.fpga.pack.none.i1.s_struct.ap_uint<1>s' into 'MultiPixStream2AXIvideo(hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>&, unsigned short&, unsigned short&, unsigned short&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:304:5)
INFO: [HLS 214-131] Inlining function '_llvm.fpga.pack.none.i4.s_struct.ap_uint<4>s' into 'MultiPixStream2AXIvideo(hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>&, unsigned short&, unsigned short&, unsigned short&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:304:5)
INFO: [HLS 214-131] Inlining function '_llvm.fpga.pack.none.i30.s_struct.ap_uint<30>s' into 'MultiPixStream2AXIvideo(hls::stream<hls::Scalar<3, ap_uint<10> >, 0>&, hls::stream<hls::axis<ap_uint<30>, 1ul, 1ul, 1ul>, 0>&, unsigned short&, unsigned short&, unsigned short&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technolo*commonh px? 
?
?gy/autopilot\ap_axi_sdata.h:304:5)
INFO: [HLS 200-111] Finished Compiling Optimization and Transform: CPU user time: 1 seconds. CPU system time: 1 seconds. Elapsed time: 12.466 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-111] Finished Checking Pragmas: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.002 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] Starting code transformations ...
INFO: [HLS 200-111] Finished Standard Transforms: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.097 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] Checking synthesizability ...
INFO: [HLS 200-111] Finished Checking Synthesizability: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.205 seconds; current allocated memory: 1.102 GB.
INFO: [XFORM 203-510] Pipelining loop 'VITIS_LOOP_289_1' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:287) in fu*commonh px? 
?
?nction 'MultiPixStream2AXIvideo' automatically.
WARNING: [HLS 200-805] An internal stream 'img' with default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
INFO: [XFORM 203-712] Applying dataflow to function 'FrmbufRdHlsDataFlow' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_rd.cpp:37:1), detected/extracted 4 process function(s): 
	 'entry_proc'
	 'AXIMMvideo2Bytes'
	 'Bytes2MultiPixStream'
	 'MultiPixStream2AXIvideo'.
INFO: [HLS 200-111] Finished Loop, function and other optimizations: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.427 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-111] Finished Architecture Synthesis: CPU user time: 1 seconds. CPU system time: 0 seconds. Elapsed time: 0.341 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] Starting hardware synthesis ...
INFO: [HLS 200-10] Synthesiz*commonh px? 
?
?ing 'v_frmbuf_rd' ...
WARNING: [SYN 201-103] Legalizing function name 'reg<unsigned short>' to 'reg_unsigned_short_s'.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'entry_proc' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.139 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.028 seconds; current allocated memory: 1.102 GB.
INFO: *commonh px? 
?
?[HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'VITIS_LOOP_437_1'.
INFO: [HLS 200-1470] Pipelining result : Target II = 1, Final II = 1, Depth = 3, loop 'VITIS_LOOP_437_1'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.046 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed ti*commonh px? 
?
?me: 0.037 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'AXIMMvideo2Bytes' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.195 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.378 seconds; current allocated memory: 1.102 GB.
*commonh px? 
?
?INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'VITIS_LOOP_1302_4'.
INFO: [HLS 200-1470] Pipelining result : Target II = 6, Final II = 6, Depth = 7, loop 'VITIS_LOOP_1302_4'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.146 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 second*commonh px? 
?
?s. Elapsed time: 0.072 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'VITIS_LOOP_1262_1'.
INFO: [HLS 200-1470] Pipelining result : Target II = 8, Final II = 8, Depth = 9, loop 'VITIS_LOOP_1262_1'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 1 seconds. CPU system time: 0 seconds. Elapsed time: 0.139 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] F*commonh px? 
?
?inished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.09 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'Bytes2MultiPixStream' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.181 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.201 seconds; current allocated memory*commonh px? 
?
?: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'reg_unsigned_short_s' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining function 'reg<unsigned short>'.
INFO: [HLS 200-1470] Pipelining result : Target II = 1, Final II = 1, Depth = 2, function 'reg<unsigned short>'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.196 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. *commonh px? 
?
?Elapsed time: 0.023 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'VITIS_LOOP_289_1'.
INFO: [HLS 200-1470] Pipelining result : Target II = NA, Final II = 1, Depth = 2, loop 'VITIS_LOOP_289_1'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.049 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Fin*commonh px? 
?
?ished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.044 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'VITIS_LOOP_298_3'.
INFO: [HLS 200-1470] Pipelining result : Target II = 1, Final II = 1, Depth = 2, loop 'VITIS_LOOP_298_3'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.09 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-1*commonh px? 
?
?00] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.057 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'MultiPixStream2AXIvideo' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.073 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 1 seconds. CPU system t*commonh px? 
?
?ime: 0 seconds. Elapsed time: 0.068 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'FrmbufRdHlsDataFlow' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.086 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.091 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ------------------------*commonh px? 
w
b----------------------------------------
INFO: [HLS 200-42] -- Implementing module 'v_frmbuf_rd' 
*commonh px? 
?
?INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [HLS 200-486] Changing DSP latency (root=mul_ln171) to 3 in order to utilize available DSP registers.
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.448 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.154 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'entry_proc' 
INFO: [HLS 200-10] *commonh px? 
?
?----------------------------------------------------------------
INFO: [RTGEN 206-100] Finished creating RTL model for 'entry_proc'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.247 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-1030] Apply Unified Pipeline Control on module 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1' pipeline 'VITIS_LOOP_437_1' pipeline type 'loop pipeline'
WARNING: [RTGEN 206-101] Setting dangling out port 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1/m_axi_mm_video_ARVALID' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1/m_axi_mm_video_ARADDR' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port *commonh px? 
?
?'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1/m_axi_mm_video_ARID' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1/m_axi_mm_video_ARLEN' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1/m_axi_mm_video_ARSIZE' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1/m_axi_mm_video_ARBURST' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1/m_axi_mm_video_ARLOCK' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1/m_axi_mm_video_ARCACHE' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1/m_axi_mm_video_ARPROT' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1/m_axi_mm_video_ARQOS' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_*commonh px? 
?
?437_1/m_axi_mm_video_ARREGION' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1/m_axi_mm_video_ARUSER' to 0.
INFO: [RTGEN 206-100] Finished creating RTL model for 'AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.115 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'AXIMMvideo2Bytes' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [RTGEN 206-100] Finished creating RTL model for 'AXIMMvideo2Bytes'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 1 seconds. CPU system time: 0 seconds. Elapsed time: 0.117 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL *commonh px? 
?
?for module 'Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-1030] Apply Unified Pipeline Control on module 'Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4' pipeline 'VITIS_LOOP_1302_4' pipeline type 'loop pipeline'
INFO: [RTGEN 206-100] Finished creating RTL model for 'Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.218 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-1030] Apply Unified Pipeline Control on module 'Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1' pipeline 'VITIS_LOOP_1262_1' pipeline type 'loop pipeline'
*commonh px? 
?
?INFO: [RTGEN 206-100] Finished creating RTL model for 'Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.266 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'Bytes2MultiPixStream' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [RTGEN 206-100] Generating core module 'urem_12ns_4ns_3_16_seq_1': 1 instance(s).
INFO: [RTGEN 206-100] Finished creating RTL model for 'Bytes2MultiPixStream'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.357 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'reg_unsigned_short_s' 
INFO: [HLS 200-10] ------*commonh px? 
?
?----------------------------------------------------------
INFO: [RTGEN 206-100] Finished creating RTL model for 'reg_unsigned_short_s'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 1 seconds. CPU system time: 0 seconds. Elapsed time: 0.386 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-1030] Apply Unified Pipeline Control on module 'MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1' pipeline 'VITIS_LOOP_289_1' pipeline type 'loop pipeline'
INFO: [RTGEN 206-100] Finished creating RTL model for 'MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1'.
*commonh px? 
?
?INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.059 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-1030] Apply Unified Pipeline Control on module 'MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3' pipeline 'VITIS_LOOP_298_3' pipeline type 'loop pipeline'
INFO: [RTGEN 206-100] Generating core module 'mux_35_10_1_1': 3 instance(s).
INFO: [RTGEN 206-100] Finished creating RTL model for 'MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.124 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ------------------------------------------------*commonh px? 
?
?----------------
INFO: [HLS 200-10] -- Generating RTL for module 'MultiPixStream2AXIvideo' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [RTGEN 206-100] Finished creating RTL model for 'MultiPixStream2AXIvideo'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.155 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'FrmbufRdHlsDataFlow' 
INFO: [HLS 200-10] ----------------------------------------------------------------
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_AWVALID' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_AWADDR' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_AWID' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHl*commonh px? 
?
?sDataFlow/m_axi_mm_video_AWLEN' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_AWSIZE' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_AWBURST' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_AWLOCK' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_AWCACHE' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_AWPROT' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_AWQOS' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_AWREGION' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_AWUSER' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_WVALID' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_*commonh px? 
?
?mm_video_WDATA' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_WSTRB' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_WLAST' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_WID' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_WUSER' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufRdHlsDataFlow/m_axi_mm_video_BREADY' to 0.
INFO: [RTGEN 206-100] Finished creating RTL model for 'FrmbufRdHlsDataFlow'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.306 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'v_frmbuf_rd' 
INFO: [HLS 200-10] ----------------------------------------------------------------
WARNING: [RTGEN 206-101] Design*commonh px? 
?
? contains AXI ports. Reset is fixed to synchronous and active low.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/mm_video' to 'm_axi'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/width' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/height' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/stride' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/video_format' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/frm_buffer' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/frm_buffer2' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/frm_buffer3' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/m_axis_video_V_data_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting in*commonh px? 
?
?terface mode on port 'v_frmbuf_rd/m_axis_video_V_keep_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/m_axis_video_V_strb_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/m_axis_video_V_user_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/m_axis_video_V_last_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/m_axis_video_V_id_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_rd/m_axis_video_V_dest_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on function 'v_frmbuf_rd' to 's_axilite & ap_ctrl_hs'.
INFO: [RTGEN 206-100] Bundling port 'width', 'height', 'stride', 'video_format', 'frm_buffer', 'frm_buffer2', 'frm_buffer3' and 'return' to AXI-Lite port CTRL.
INFO: [RTGEN 206-100] Generating core module 'mul_12ns_3ns_15_1_1': 1 *commonh px? 
?
?instance(s).
INFO: [RTGEN 206-100] Generating core module 'mul_mul_14ns_15ns_29_4_1': 1 instance(s).
INFO: [RTGEN 206-100] Finished creating RTL model for 'v_frmbuf_rd'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 1 seconds. CPU system time: 0 seconds. Elapsed time: 0.423 seconds; current allocated memory: 1.102 GB.
INFO: [RTMG 210-279] Implementing memory 'design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_mapComp_ROM_AUTO_1R' using auto ROMs.
*commonh px? 
?
?INFO: [RTMG 210-285] Implementing FIFO 'width_c9_U(design_1_v_frmbuf_rd_0_0_fifo_w12_d3_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'video_format_c_U(design_1_v_frmbuf_rd_0_0_fifo_w6_d3_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'colorFormat_c_U(design_1_v_frmbuf_rd_0_0_fifo_w2_d4_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'bytePlanes_plane0_U(design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B)' using Block RAMs.
INFO: [RTMG 210-285] Implementing FIFO 'height_c10_U(design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'WidthInBytes_c_U(design_1_v_frmbuf_rd_0_0_fifo_w15_d2_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'img_U(design_1_v_frmbuf_rd_0_0_fifo_w30_d2_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'width_c_U(design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'height_c_U(design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S)'*commonh px? 
?
? using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'start_for_Bytes2MultiPixStream_U0_U(design_1_v_frmbuf_rd_0_0_start_for_Bytes2MultiPixStream_U0)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'start_for_MultiPixStream2AXIvideo_U0_U(design_1_v_frmbuf_rd_0_0_start_for_MultiPixStream2AXIvideo_U0)' using Shift Registers.
INFO: [RTMG 210-279] Implementing memory 'design_1_v_frmbuf_rd_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R' using auto ROMs.
INFO: [RTMG 210-279] Implementing memory 'design_1_v_frmbuf_rd_0_0_MEMORY2LIVE_ROM_AUTO_1R' using auto ROMs.
INFO: [HLS 200-111] Finished Generating all RTL models: CPU user time: 1 seconds. CPU system time: 0 seconds. Elapsed time: 1.529 seconds; current allocated memory: 1.102 GB.
*commonh px? 
?
?INFO: [HLS 200-1603] Design has inferred MAXI bursts and missed bursts, see Vitis HLS GUI synthesis summary report for detailed information.
INFO: [HLS 200-111] Finished Updating report files: CPU user time: 2 seconds. CPU system time: 1 seconds. Elapsed time: 3.128 seconds; current allocated memory: 1.102 GB.
INFO: [VHDL 208-304] Generating VHDL RTL for v_frmbuf_rd with prefix design_1_v_frmbuf_rd_0_0_.
INFO: [VLOG 209-307] Generating Verilog RTL for v_frmbuf_rd with prefix design_1_v_frmbuf_rd_0_0_.
INFO: [HLS 200-789] **** Estimated Fmax: 411.00 MHz
INFO: [HLS 200-111] Finished Command csynth_design CPU user time: 15 seconds. CPU system time: 2 seconds. Elapsed time: 82.104 seconds; current allocated memory: 0.000 MB.
INFO: [HLS 200-1510] Running: export_design -format ip_catalog 
INFO: [IMPL 213-8] Exporting RTL as a Vivado IP.
*commonh px? 
?
?
****** Vivado v2022.1 (64-bit)
  **** SW Build 3526262 on Mon Apr 18 15:48:16 MDT 2022
  **** IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.

source run_ippack.tcl -notrace
*commonh px? 
?
?INFO: [IP_Flow 19-234] Refreshing IP repositories
INFO: [IP_Flow 19-1704] No user IP repositories specified
INFO: [IP_Flow 19-2313] Loaded Vivado IP repository 'D:/Xilinx/Vivado/2022.1/data/ip'.
INFO: [Common 17-206] Exiting Vivado at Sat Dec 17 00:27:35 2022...
INFO: [HLS 200-802] Generated output file prj/sol/impl/export.zip
INFO: [HLS 200-111] Finished Command export_design CPU user time: 5 seconds. CPU system time: 0 seconds. Elapsed time: 14.481 seconds; current allocated memory: 0.000 MB.
INFO: [HLS 200-112] Total CPU user time: 23 seconds. Total CPU system time: 3 seconds. Total elapsed time: 100.125 seconds; peak allocated memory: 1.102 GB.
INFO: [Common 17-206] Exiting vitis_hls at Sat Dec 17 00:27:35 2022...
*commonh px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
compile_c: 2default:default2
00:00:002default:default2
00:01:422default:default2
1301.1952default:default2
0.0002default:defaultZ17-268h px? 
?
Command: %s
53*	vivadotcl2?
osynth_design -top design_1_v_frmbuf_rd_0_0 -part xck26-sfvc784-2LV-c -incremental_mode off -mode out_of_context2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xck262default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xck262default:defaultZ17-349h px? 
Z
Loading part %s157*device2'
xck26-sfvc784-2LV-c2default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
253642default:defaultZ8-7075h px? 
?
Ygenerate block is allowed only inside loop and conditional generate in SystemVerilog mode5759*oasys2R
<D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
40232default:default8@Z8-9501h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1704.629 ; gain = 319.793
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2,
design_1_v_frmbuf_rd_0_02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
532default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_v_frmbuf_rd.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2H
4design_1_v_frmbuf_rd_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R.v2default:default2
72default:default8@Z8-6157h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2N
:./design_1_v_frmbuf_rd_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R.dat2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R.v2default:default2
232default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2H
4design_1_v_frmbuf_rd_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2D
0design_1_v_frmbuf_rd_0_0_MEMORY2LIVE_ROM_AUTO_1R2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_MEMORY2LIVE_ROM_AUTO_1R.v2default:default2
72default:default8@Z8-6157h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2J
6./design_1_v_frmbuf_rd_0_0_MEMORY2LIVE_ROM_AUTO_1R.dat2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_MEMORY2LIVE_ROM_AUTO_1R.v2default:default2
232default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2D
0design_1_v_frmbuf_rd_0_0_MEMORY2LIVE_ROM_AUTO_1R2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_MEMORY2LIVE_ROM_AUTO_1R.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2@
,design_1_v_frmbuf_rd_0_0_FrmbufRdHlsDataFlow2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_FrmbufRdHlsDataFlow.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys27
#design_1_v_frmbuf_rd_0_0_entry_proc2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_entry_proc.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys27
#design_1_v_frmbuf_rd_0_0_entry_proc2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_entry_proc.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2=
)design_1_v_frmbuf_rd_0_0_AXIMMvideo2Bytes2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_AXIMMvideo2Bytes.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2W
Cdesign_1_v_frmbuf_rd_0_0_AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2S
?design_1_v_frmbuf_rd_0_0_flow_control_loop_pipe_sequential_init2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_flow_control_loop_pipe_sequential_init.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2S
?design_1_v_frmbuf_rd_0_0_flow_control_loop_pipe_sequential_init2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_flow_control_loop_pipe_sequential_init.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2W
Cdesign_1_v_frmbuf_rd_0_0_AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_AXIMMvideo2Bytes_Pipeline_VITIS_LOOP_437_1.v2default:default2
102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2=
)design_1_v_frmbuf_rd_0_0_AXIMMvideo2Bytes2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_AXIMMvideo2Bytes.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_4.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_1.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2E
1design_1_v_frmbuf_rd_0_0_urem_12ns_4ns_3_16_seq_12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_urem_12ns_4ns_3_16_seq_1.v2default:default2
832default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2L
8design_1_v_frmbuf_rd_0_0_urem_12ns_4ns_3_16_seq_1_divseq2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_urem_12ns_4ns_3_16_seq_1.v2default:default2
82default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2L
8design_1_v_frmbuf_rd_0_0_urem_12ns_4ns_3_16_seq_1_divseq2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_urem_12ns_4ns_3_16_seq_1.v2default:default2
82default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1design_1_v_frmbuf_rd_0_0_urem_12ns_4ns_3_16_seq_12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_urem_12ns_4ns_3_16_seq_1.v2default:default2
832default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2^
Jdesign_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2r
^design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_mapComp_ROM_AUTO_1R2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_mapComp_ROM_AUTO_1R.v2default:default2
72default:default8@Z8-6157h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2x
d./design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_mapComp_ROM_AUTO_1R.dat2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_mapComp_ROM_AUTO_1R.v2default:default2
232default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2r
^design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_mapComp_ROM_AUTO_1R2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_mapComp_ROM_AUTO_1R.v2default:default2
72default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2^
Jdesign_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2^
Jdesign_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_32default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_rd_0_0_mux_35_10_1_12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mux_35_10_1_1.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_rd_0_0_mux_35_10_1_12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mux_35_10_1_1.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2^
Jdesign_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_32default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_3.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-design_1_v_frmbuf_rd_0_0_reg_unsigned_short_s2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_reg_unsigned_short_s.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-design_1_v_frmbuf_rd_0_0_reg_unsigned_short_s2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_reg_unsigned_short_s.v2default:default2
102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_rd_0_0_fifo_w12_d3_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w12_d3_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2C
/design_1_v_frmbuf_rd_0_0_fifo_w12_d3_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w12_d3_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2C
/design_1_v_frmbuf_rd_0_0_fifo_w12_d3_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w12_d3_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_rd_0_0_fifo_w12_d3_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w12_d3_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys29
%design_1_v_frmbuf_rd_0_0_fifo_w6_d3_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w6_d3_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2B
.design_1_v_frmbuf_rd_0_0_fifo_w6_d3_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w6_d3_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2B
.design_1_v_frmbuf_rd_0_0_fifo_w6_d3_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w6_d3_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys29
%design_1_v_frmbuf_rd_0_0_fifo_w6_d3_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w6_d3_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys29
%design_1_v_frmbuf_rd_0_0_fifo_w2_d4_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w2_d4_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2B
.design_1_v_frmbuf_rd_0_0_fifo_w2_d4_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w2_d4_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2B
.design_1_v_frmbuf_rd_0_0_fifo_w2_d4_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w2_d4_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys29
%design_1_v_frmbuf_rd_0_0_fifo_w2_d4_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w2_d4_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2<
(design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B.v2default:default2
522default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2@
,design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2<
(design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B.v2default:default2
522default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2C
/design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2C
/design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w12_d2_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_rd_0_0_fifo_w15_d2_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w15_d2_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2C
/design_1_v_frmbuf_rd_0_0_fifo_w15_d2_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w15_d2_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2C
/design_1_v_frmbuf_rd_0_0_fifo_w15_d2_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w15_d2_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_rd_0_0_fifo_w15_d2_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w15_d2_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_rd_0_0_fifo_w30_d2_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w30_d2_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2C
/design_1_v_frmbuf_rd_0_0_fifo_w30_d2_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w30_d2_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2C
/design_1_v_frmbuf_rd_0_0_fifo_w30_d2_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w30_d2_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_rd_0_0_fifo_w30_d2_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_fifo_w30_d2_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2N
:design_1_v_frmbuf_rd_0_0_start_for_Bytes2MultiPixStream_U02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_start_for_Bytes2MultiPixStream_U0.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2W
Cdesign_1_v_frmbuf_rd_0_0_start_for_Bytes2MultiPixStream_U0_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_start_for_Bytes2MultiPixStream_U0.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2W
Cdesign_1_v_frmbuf_rd_0_0_start_for_Bytes2MultiPixStream_U0_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_start_for_Bytes2MultiPixStream_U0.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2N
:design_1_v_frmbuf_rd_0_0_start_for_Bytes2MultiPixStream_U02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_start_for_Bytes2MultiPixStream_U0.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2Q
=design_1_v_frmbuf_rd_0_0_start_for_MultiPixStream2AXIvideo_U02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_start_for_MultiPixStream2AXIvideo_U0.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2Z
Fdesign_1_v_frmbuf_rd_0_0_start_for_MultiPixStream2AXIvideo_U0_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_start_for_MultiPixStream2AXIvideo_U0.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2Z
Fdesign_1_v_frmbuf_rd_0_0_start_for_MultiPixStream2AXIvideo_U0_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_start_for_MultiPixStream2AXIvideo_U0.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2Q
=design_1_v_frmbuf_rd_0_0_start_for_MultiPixStream2AXIvideo_U02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_start_for_MultiPixStream2AXIvideo_U0.v2default:default2
432default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,design_1_v_frmbuf_rd_0_0_FrmbufRdHlsDataFlow2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_FrmbufRdHlsDataFlow.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys27
#design_1_v_frmbuf_rd_0_0_CTRL_s_axi2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_CTRL_s_axi.v2default:default2
72default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_CTRL_s_axi.v2default:default2
2522default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys27
#design_1_v_frmbuf_rd_0_0_CTRL_s_axi2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_CTRL_s_axi.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2;
'design_1_v_frmbuf_rd_0_0_mm_video_m_axi2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
112default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2A
-design_1_v_frmbuf_rd_0_0_mm_video_m_axi_store2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
8142default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2@
,design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2?
+design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2?
+design_1_v_frmbuf_rd_0_0_mm_video_m_axi_mem2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
29522default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+design_1_v_frmbuf_rd_0_0_mm_video_m_axi_mem2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
29522default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl__parameterized02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized22default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl__parameterized12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized22default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-design_1_v_frmbuf_rd_0_0_mm_video_m_axi_store2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
8142default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2@
,design_1_v_frmbuf_rd_0_0_mm_video_m_axi_load2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
3582default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized32default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_mem__parameterized02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
29522default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_mem__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
29522default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized32default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,design_1_v_frmbuf_rd_0_0_mm_video_m_axi_load2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
3582default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-design_1_v_frmbuf_rd_0_0_mm_video_m_axi_write2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
18862default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2E
1design_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1design_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized42default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl__parameterized22default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl__parameterized22default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized42default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2D
0design_1_v_frmbuf_rd_0_0_mm_video_m_axi_throttle2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
23942default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2U
Adesign_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice__parameterized02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2U
Adesign_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized52default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl__parameterized32default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl__parameterized32default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized52default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized62default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl__parameterized42default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl__parameterized42default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized62default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2D
0design_1_v_frmbuf_rd_0_0_mm_video_m_axi_throttle2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
23942default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2U
Adesign_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice__parameterized12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2U
Adesign_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6155h px? 
?
Nreplacing case/wildcard equality operator %s with logical equality operator %s589*oasys2
===2default:default2
==2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
23862default:default8@Z8-589h px? 
?
Nreplacing case/wildcard equality operator %s with logical equality operator %s589*oasys2
===2default:default2
==2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
23892default:default8@Z8-589h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-design_1_v_frmbuf_rd_0_0_mm_video_m_axi_write2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
18862default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2@
,design_1_v_frmbuf_rd_0_0_mm_video_m_axi_read2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
15022default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2U
Adesign_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice__parameterized22default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2U
Adesign_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice__parameterized22default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized72default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl__parameterized52default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl__parameterized52default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo__parameterized72default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
Nreplacing case/wildcard equality operator %s with logical equality operator %s589*oasys2
===2default:default2
==2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
18782default:default8@Z8-589h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,design_1_v_frmbuf_rd_0_0_mm_video_m_axi_read2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
15022default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2H
4design_1_v_frmbuf_rd_0_0_mm_video_m_axi_flushManager2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
13592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2H
4design_1_v_frmbuf_rd_0_0_mm_video_m_axi_flushManager2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
13592default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2;
'design_1_v_frmbuf_rd_0_0_mm_video_m_axi2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mm_video_m_axi.v2default:default2
112default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2@
,design_1_v_frmbuf_rd_0_0_mul_12ns_3ns_15_1_12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mul_12ns_3ns_15_1_1.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,design_1_v_frmbuf_rd_0_0_mul_12ns_3ns_15_1_12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mul_12ns_3ns_15_1_1.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2E
1design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1.v2default:default2
382default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2M
9design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2M
9design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1.v2default:default2
42default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1.v2default:default2
382default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_rd_0_0_regslice_both2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_regslice_both.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_rd_0_0_regslice_both2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_regslice_both.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2J
6design_1_v_frmbuf_rd_0_0_regslice_both__parameterized02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_regslice_both.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2J
6design_1_v_frmbuf_rd_0_0_regslice_both__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_regslice_both.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2J
6design_1_v_frmbuf_rd_0_0_regslice_both__parameterized12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_regslice_both.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2J
6design_1_v_frmbuf_rd_0_0_regslice_both__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_regslice_both.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_v_frmbuf_rd.v2default:default2
102default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2'
m_axi_mm_video_AWID2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2)
m_axi_mm_video_AWUSER2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2&
m_axi_mm_video_WID2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
m_axi_mm_video_WUSER2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2'
m_axi_mm_video_ARID2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2)
m_axi_mm_video_ARUSER2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2&
m_axi_mm_video_RID2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
m_axi_mm_video_RUSER2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2&
m_axi_mm_video_BID2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
m_axi_mm_video_BUSER2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
inst2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:default2
742default:default2
642default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
2692default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
design_1_v_frmbuf_rd_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/synth/design_1_v_frmbuf_rd_0_0.v2default:default2
532default:default8@Z8-6155h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
quot_reg2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_urem_12ns_4ns_3_16_seq_1.v2default:default2
1492default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
int_ap_done_reg2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_CTRL_s_axi.v2default:default2
3402default:default8@Z8-6014h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
in_BUS_RID[0]2default:default2@
,design_1_v_frmbuf_rd_0_0_mm_video_m_axi_read2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
in_BUS_RRESP[1]2default:default2@
,design_1_v_frmbuf_rd_0_0_mm_video_m_axi_read2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
in_BUS_RRESP[0]2default:default2@
,design_1_v_frmbuf_rd_0_0_mm_video_m_axi_read2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
in_BUS_RUSER[0]2default:default2@
,design_1_v_frmbuf_rd_0_0_mm_video_m_axi_read2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
in_BUS_BID[0]2default:default2A
-design_1_v_frmbuf_rd_0_0_mm_video_m_axi_write2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
in_BUS_BRESP[1]2default:default2A
-design_1_v_frmbuf_rd_0_0_mm_video_m_axi_write2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
in_BUS_BRESP[0]2default:default2A
-design_1_v_frmbuf_rd_0_0_mm_video_m_axi_write2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
in_BUS_BUSER[0]2default:default2A
-design_1_v_frmbuf_rd_0_0_mm_video_m_axi_write2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
din3[4]2default:default2:
&design_1_v_frmbuf_rd_0_0_mux_35_10_1_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
din3[3]2default:default2:
&design_1_v_frmbuf_rd_0_0_mux_35_10_1_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
din3[2]2default:default2:
&design_1_v_frmbuf_rd_0_0_mux_35_10_1_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
img_num_data_valid[1]2default:default2^
Jdesign_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_32default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
img_num_data_valid[0]2default:default2^
Jdesign_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_32default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
img_fifo_cap[1]2default:default2^
Jdesign_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_32default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
img_fifo_cap[0]2default:default2^
Jdesign_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_298_32default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2default:default2r
^design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_289_1_mapComp_ROM_AUTO_1R2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
img_num_data_valid[1]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
img_num_data_valid[0]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
img_fifo_cap[1]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
img_fifo_cap[0]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
Height_num_data_valid[1]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
Height_num_data_valid[0]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2&
Height_fifo_cap[1]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2&
Height_fifo_cap[0]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2.
WidthOut_num_data_valid[1]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2.
WidthOut_num_data_valid[0]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
WidthOut_fifo_cap[1]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
WidthOut_fifo_cap[0]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
colorFormat_num_data_valid[2]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
colorFormat_num_data_valid[1]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
colorFormat_num_data_valid[0]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
colorFormat_fifo_cap[2]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
colorFormat_fifo_cap[1]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
colorFormat_fifo_cap[0]2default:default2D
0design_1_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
img_num_data_valid[1]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
img_num_data_valid[0]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
img_fifo_cap[1]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
img_fifo_cap[0]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys22
bytePlanes1_num_data_valid[10]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[9]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[8]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[7]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[6]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[5]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[4]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[3]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[2]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[1]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[0]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
bytePlanes1_fifo_cap[10]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[9]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[8]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[7]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[6]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[5]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[4]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[3]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[2]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[1]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[0]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1262_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
img_num_data_valid[1]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
img_num_data_valid[0]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
img_fifo_cap[1]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
img_fifo_cap[0]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
bytePlanes1_dout[63]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
bytePlanes1_dout[62]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
bytePlanes1_dout[31]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2(
bytePlanes1_dout[30]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys22
bytePlanes1_num_data_valid[10]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[9]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[8]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[7]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[6]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[5]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[4]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[3]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[2]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[1]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[0]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2,
bytePlanes1_fifo_cap[10]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[9]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[8]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[7]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[6]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[5]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[4]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[3]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[2]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[1]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[0]2default:default2\
Hdesign_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1302_42default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys22
bytePlanes1_num_data_valid[10]2default:default2A
-design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[9]2default:default2A
-design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[8]2default:default2A
-design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[7]2default:default2A
-design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[6]2default:default2A
-design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[5]2default:default2A
-design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[4]2default:default2A
-design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[3]2default:default2A
-design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[2]2default:default2A
-design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[1]2default:default2A
-design_1_v_frmbuf_rd_0_0_Bytes2MultiPixStream2default:defaultZ8-7129h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1906.914 ; gain = 522.078
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1906.914 ; gain = 522.078
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1906.914 ; gain = 522.078
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.4492default:default2
1906.9142default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/design_1_v_frmbuf_rd_0_0_ooc.xdc2default:default2
inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/design_1_v_frmbuf_rd_0_0_ooc.xdc2default:default2
inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2u
_D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2u
_D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/dont_touch.xdc2default:default8Z20-178h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
}d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/design_1_v_frmbuf_rd_0_0.xdc2default:default2
inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
}d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/design_1_v_frmbuf_rd_0_0.xdc2default:default2
inst	2default:default8Z20-847h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0082default:default2
1983.1952default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:012default:default2 
00:00:00.4192default:default2
1983.1992default:default2
0.0042default:defaultZ17-268h px? 
c
!Incremental synthesis strategy %s2274*designutils2
off2default:defaultZ20-5008h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:35 ; elapsed = 00:00:36 . Memory (MB): peak = 1983.199 ; gain = 598.363
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
N
%s
*synth26
"Loading part: xck26-sfvc784-2LV-c
2default:defaulth p
x
? 
B
 Reading net delay rules and data4578*oasysZ8-6742h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:35 ; elapsed = 00:00:36 . Memory (MB): peak = 1983.199 ; gain = 598.363
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:35 ; elapsed = 00:00:36 . Memory (MB): peak = 1983.199 ; gain = 598.363
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px? 
?
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px? 
?
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2 
remd_tmp_reg2default:default2
122default:default2
112default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_rd_0_0/hdl/verilog/design_1_v_frmbuf_rd_0_0_urem_12ns_4ns_3_16_seq_1.v2default:default2
402default:default8@Z8-3936h px? 
?
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px? 
?
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2

wstate_reg2default:default27
#design_1_v_frmbuf_rd_0_0_CTRL_s_axi2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2

rstate_reg2default:default27
#design_1_v_frmbuf_rd_0_0_CTRL_s_axi2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2E
1design_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2U
Adesign_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice__parameterized02default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2U
Adesign_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice__parameterized12default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2U
Adesign_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice__parameterized22default:defaultZ8-802h px? 
?
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
362default:default2K
7"design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram:/mem_reg"2default:defaultZ8-7030h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
282default:default2K
7"design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram:/mem_reg"2default:defaultZ8-7030h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                             0001 |                               11
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                  WRIDLE |                             0010 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                  WRDATA |                             0100 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                  WRRESP |                             1000 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

wstate_reg2default:default2
one-hot2default:default27
#design_1_v_frmbuf_rd_0_0_CTRL_s_axi2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                              001 |                               10
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                  RDIDLE |                              010 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                  RDDATA |                              100 |                               01
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

rstate_reg2default:default2
one-hot2default:default27
#design_1_v_frmbuf_rd_0_0_CTRL_s_axi2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    ZERO |                               00 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                     ONE |                               10 |                               11
2default:defaulth p
x
? 
?
%s
*synth2s
_                     TWO |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2E
1design_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    ZERO |                               00 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                     ONE |                               10 |                               11
2default:defaulth p
x
? 
?
%s
*synth2s
_                     TWO |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2U
Adesign_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice__parameterized02default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    ZERO |                               00 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                     ONE |                               10 |                               11
2default:defaulth p
x
? 
?
%s
*synth2s
_                     TWO |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2U
Adesign_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice__parameterized12default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    ZERO |                               00 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                     ONE |                               10 |                               11
2default:defaulth p
x
? 
?
%s
*synth2s
_                     TWO |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2U
Adesign_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice__parameterized22default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1983.199 ; gain = 598.363
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   20 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   13 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   13 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   11 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 17    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    4 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 13    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 18    
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              110 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               73 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               72 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               66 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               65 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               40 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 19    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               30 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               29 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               23 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               19 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               15 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               13 Bit    Registers := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 27    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 15    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 31    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 216   
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
j
%s
*synth2R
>	              59K Bit	(959 X 64 bit)          RAMs := 1     
2default:defaulth p
x
? 
i
%s
*synth2Q
=	               4K Bit	(63 X 66 bit)          RAMs := 1     
2default:defaulth p
x
? 
i
%s
*synth2Q
=	               1K Bit	(15 X 72 bit)          RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input  110 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input  110 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	 111 Input  110 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   65 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   64 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   40 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  12 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   30 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   23 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  24 Input   23 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   21 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   20 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   19 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   15 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   15 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   12 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  11 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 12    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 18    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 18    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  12 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 17    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 81    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 17    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  13 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 12    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 228   
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2l
XPart Resources:
DSPs: 1248 (col length:96)
BRAMs: 288 (col length: RAMB18 96 RAMB36 48)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
%s
*synth2?
?DSP Report: Generating DSP mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_reg, operation Mode is: ((A:0x5556)'*B'')'.
2default:defaulth p
x
? 
?
%s
*synth2?
?DSP Report: register mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_reg is absorbed into DSP mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_reg.
2default:defaulth p
x
? 
?
%s
*synth2?
?DSP Report: register mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_reg is absorbed into DSP mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_reg.
2default:defaulth p
x
? 
?
%s
*synth2?
?DSP Report: register mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_reg is absorbed into DSP mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_reg.
2default:defaulth p
x
? 
?
%s
*synth2?
?DSP Report: register mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_reg is absorbed into DSP mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_reg.
2default:defaulth p
x
? 
?
%s
*synth2?
?DSP Report: register mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_tmp_reg is absorbed into DSP mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_reg.
2default:defaulth p
x
? 
?
%s
*synth2?
?DSP Report: operator mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_tmp0 is absorbed into DSP mul_mul_14ns_15ns_29_4_1_U113/design_1_v_frmbuf_rd_0_0_mul_mul_14ns_15ns_29_4_1_DSP48_0_U/p_reg_reg.
2default:defaulth p
x
? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
362default:default2?
p"inst/grp_FrmbufRdHlsDataFlow_fu_186/bytePlanes_plane0_U/U_design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram/mem_reg"2default:defaultZ8-7030h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
282default:default2?
p"inst/grp_FrmbufRdHlsDataFlow_fu_186/bytePlanes_plane0_U/U_design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram/mem_reg"2default:defaultZ8-7030h px? 
?
iOptimized %s bits of RAM "%s" due to constant propagation. Old ram width %s bits, new ram width %s bits.
4187*oasys2
722default:default2<
(store_unit/buff_wdata/U_fifo_mem/mem_reg2default:default2
722default:default2
02default:defaultZ8-5784h px? 
?
HRemoved RAM "%s" due to constant propagation. Write data stuck at zero 
4188*oasys2<
(store_unit/buff_wdata/U_fifo_mem/mem_reg2default:defaultZ8-5785h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%CTRL_s_axi_U/FSM_onehot_wstate_reg[0]2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%CTRL_s_axi_U/FSM_onehot_rstate_reg[0]2default:default28
$design_1_v_frmbuf_rd_0_0_v_frmbuf_rd2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2A
-bus_write/rs_wreq/FSM_sequential_state_reg[1]2default:default2;
'design_1_v_frmbuf_rd_0_0_mm_video_m_axi2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2A
-bus_write/rs_wreq/FSM_sequential_state_reg[0]2default:default2;
'design_1_v_frmbuf_rd_0_0_mm_video_m_axi2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2N
:bus_write/wreq_throttle/rs_req/FSM_sequential_state_reg[1]2default:default2;
'design_1_v_frmbuf_rd_0_0_mm_video_m_axi2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2N
:bus_write/wreq_throttle/rs_req/FSM_sequential_state_reg[0]2default:default2;
'design_1_v_frmbuf_rd_0_0_mm_video_m_axi2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:56 ; elapsed = 00:00:58 . Memory (MB): peak = 1983.199 ; gain = 598.363
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px? 
?
%s*synth2z
f+-----------------------------------------------------+------------+---------------+----------------+
2default:defaulth px? 
?
%s*synth2{
g|Module Name                                          | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px? 
?
%s*synth2z
f+-----------------------------------------------------+------------+---------------+----------------+
2default:defaulth px? 
?
%s*synth2{
g|design_1_v_frmbuf_rd_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R | ram        | 64x3          | LUT            | 
2default:defaulth px? 
?
%s*synth2{
g|design_1_v_frmbuf_rd_0_0_MEMORY2LIVE_ROM_AUTO_1R     | ram        | 64x2          | LUT            | 
2default:defaulth px? 
?
%s*synth2{
g|design_1_v_frmbuf_rd_0_0_v_frmbuf_rd                 | p_0_out    | 64x3          | LUT            | 
2default:defaulth px? 
?
%s*synth2{
g|design_1_v_frmbuf_rd_0_0_v_frmbuf_rd                 | p_0_out    | 64x2          | LUT            | 
2default:defaulth px? 
?
%s*synth2{
g+-----------------------------------------------------+------------+---------------+----------------+

2default:defaulth px? 
d
%s*synth2L
8
Block RAM: Preliminary Mapping Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+------------------------------------+----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name                         | RTL Object                                                                 | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | Cascade Heights | 
2default:defaulth px? 
?
%s*synth2?
?+------------------------------------+----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth px? 
?
%s*synth2?
?|inst/grp_FrmbufRdHlsDataFlow_fu_186 | bytePlanes_plane0_U/U_design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram/mem_reg | 0 K x 64(READ_FIRST)   | W |   | 0 K x 64(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 1,1             | 
2default:defaulth px? 
?
%s*synth2?
?|inst/mm_video_m_axi_U               | load_unit/buff_rdata/U_fifo_mem/mem_reg                                    | 63 x 66(READ_FIRST)    | W |   | 63 x 66(WRITE_FIRST)   |   | R | Port A and B     | 0      | 1      |                 | 
2default:defaulth px? 
?
%s*synth2?
?+------------------------------------+----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px? 
?
%s*synth2p
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
2default:defaulth px? 
?
%s*synth2?
?+-------------------------------------+--------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name                          | DSP Mapping        | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
?+-------------------------------------+--------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|design_1_v_frmbuf_rd_0_0_v_frmbuf_rd | ((A:0x5556)'*B'')' | 15     | 16     | -      | -      | 31     | 2    | 1    | -    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?+-------------------------------------+--------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:10 ; elapsed = 00:01:13 . Memory (MB): peak = 2432.180 ; gain = 1047.344
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
VThe block RAM %s may be mapped as a cascade chain, because it is not timing critical.
4009*oasys2?
p"inst/grp_FrmbufRdHlsDataFlow_fu_186/bytePlanes_plane0_U/U_design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram/mem_reg"2default:defaultZ8-5556h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
362default:default2?
p"inst/grp_FrmbufRdHlsDataFlow_fu_186/bytePlanes_plane0_U/U_design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram/mem_reg"2default:defaultZ8-7030h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
282default:default2?
p"inst/grp_FrmbufRdHlsDataFlow_fu_186/bytePlanes_plane0_U/U_design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram/mem_reg"2default:defaultZ8-7030h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Timing Optimization : Time (s): cpu = 00:01:34 ; elapsed = 00:01:38 . Memory (MB): peak = 2907.070 ; gain = 1522.234
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!
Block RAM: Final Mapping Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------------------------------+----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name                         | RTL Object                                                                 | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | Cascade Heights | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------------------------------+----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|inst/grp_FrmbufRdHlsDataFlow_fu_186 | bytePlanes_plane0_U/U_design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram/mem_reg | 0 K x 64(READ_FIRST)   | W |   | 0 K x 64(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 1,1             | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|inst/mm_video_m_axi_U               | load_unit/buff_rdata/U_fifo_mem/mem_reg                                    | 63 x 66(READ_FIRST)    | W |   | 63 x 66(WRITE_FIRST)   |   | R | Port A and B     | 0      | 1      |                 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------------------------------+----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2?
uinst/grp_FrmbufRdHlsDataFlow_fu_186/bytePlanes_plane0_U/U_design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram/mem_reg_bram_02default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2?
uinst/grp_FrmbufRdHlsDataFlow_fu_186/bytePlanes_plane0_U/U_design_1_v_frmbuf_rd_0_0_fifo_w64_d960_B_ram/mem_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2Q
=inst/mm_video_m_axi_U/load_unit/buff_rdata/U_fifo_mem/mem_reg2default:default2
Block2default:defaultZ8-7052h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Technology Mapping : Time (s): cpu = 00:01:35 ; elapsed = 00:01:39 . Memory (MB): peak = 2910.660 ; gain = 1525.824
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
wFinished IO Insertion : Time (s): cpu = 00:01:41 ; elapsed = 00:01:45 . Memory (MB): peak = 2910.660 ; gain = 1525.824
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:41 ; elapsed = 00:01:45 . Memory (MB): peak = 2910.660 ; gain = 1525.824
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:41 ; elapsed = 00:01:45 . Memory (MB): peak = 2910.660 ; gain = 1525.824
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:01:41 ; elapsed = 00:01:45 . Memory (MB): peak = 2910.660 ; gain = 1525.824
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:01:41 ; elapsed = 00:01:45 . Memory (MB): peak = 2910.660 ; gain = 1525.824
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:01:41 ; elapsed = 00:01:45 . Memory (MB): peak = 2910.660 ; gain = 1525.824
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 
Dynamic Shift Register Report:
2default:defaulth p
x
? 
?
%s
*synth2x
d+------------+----------------+--------+------------+--------+---------+--------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2y
e|Module Name | RTL Name       | Length | Data Width | SRL16E | SRLC32E | Mux F7 | Mux F8 | Mux F9 | 
2default:defaulth p
x
? 
?
%s
*synth2x
d+------------+----------------+--------+------------+--------+---------+--------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl        | SRL_SIG_reg[2] | 12     | 12         | 12     | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__1     | SRL_SIG_reg[2] | 6      | 6          | 6      | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__2     | SRL_SIG_reg[3] | 2      | 2          | 2      | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__3     | SRL_SIG_reg[2] | 1      | 1          | 1      | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__4     | mem_reg[103]   | 64     | 64         | 0      | 256     | 128    | 64     | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__5     | mem_reg[14]    | 1      | 1          | 1      | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__6     | mem_reg[103]   | 1      | 1          | 0      | 4       | 2      | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__7     | mem_reg[14]    | 8      | 8          | 8      | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__8     | mem_reg[14]    | 40     | 40         | 40     | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__9     | mem_reg[14]    | 73     | 73         | 73     | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__10    | mem_reg[2]     | 1      | 1          | 1      | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e+------------+----------------+--------+------------+--------+---------+--------+--------+--------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
i
%s
*synth2Q
=
DSP Final Report (the ' indicates corresponding REG is set)
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------------------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name                          | DSP Mapping  | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------------------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|design_1_v_frmbuf_rd_0_0_v_frmbuf_rd | ((A''*B')')' | 14     | 15     | -      | -      | 29     | 2    | 1    | -    | -    | -     | 1    | 1    | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------------------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
M
%s*synth25
!|      |Cell            |Count |
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
M
%s*synth25
!|1     |CARRY8          |    53|
2default:defaulth px? 
M
%s*synth25
!|2     |DSP_ALU         |     1|
2default:defaulth px? 
M
%s*synth25
!|3     |DSP_A_B_DATA    |     1|
2default:defaulth px? 
M
%s*synth25
!|4     |DSP_C_DATA      |     1|
2default:defaulth px? 
M
%s*synth25
!|5     |DSP_MULTIPLIER  |     1|
2default:defaulth px? 
M
%s*synth25
!|6     |DSP_M_DATA      |     1|
2default:defaulth px? 
M
%s*synth25
!|7     |DSP_OUTPUT      |     1|
2default:defaulth px? 
M
%s*synth25
!|8     |DSP_PREADD      |     1|
2default:defaulth px? 
M
%s*synth25
!|9     |DSP_PREADD_DATA |     1|
2default:defaulth px? 
M
%s*synth25
!|10    |LUT1            |    65|
2default:defaulth px? 
M
%s*synth25
!|11    |LUT2            |   176|
2default:defaulth px? 
M
%s*synth25
!|12    |LUT3            |   452|
2default:defaulth px? 
M
%s*synth25
!|13    |LUT4            |   343|
2default:defaulth px? 
M
%s*synth25
!|14    |LUT5            |   232|
2default:defaulth px? 
M
%s*synth25
!|15    |LUT6            |   372|
2default:defaulth px? 
M
%s*synth25
!|16    |MUXF7           |    84|
2default:defaulth px? 
M
%s*synth25
!|17    |MUXF8           |    42|
2default:defaulth px? 
M
%s*synth25
!|18    |RAMB36E2        |     3|
2default:defaulth px? 
M
%s*synth25
!|20    |SRL16E          |    21|
2default:defaulth px? 
M
%s*synth25
!|21    |SRLC32E         |   168|
2default:defaulth px? 
M
%s*synth25
!|22    |FDRE            |  1998|
2default:defaulth px? 
M
%s*synth25
!|23    |FDSE            |    32|
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:01:41 ; elapsed = 00:01:45 . Memory (MB): peak = 2910.660 ; gain = 1525.824
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 155 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:01:13 ; elapsed = 00:01:34 . Memory (MB): peak = 2910.660 ; gain = 1449.539
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:01:41 ; elapsed = 00:01:45 . Memory (MB): peak = 2910.660 ; gain = 1525.824
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1082default:default2
2917.4692default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1802default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
2940.8672default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 1 instances were transformed.
  DSP48E2 => DSP48E2 (DSP_ALU, DSP_A_B_DATA, DSP_C_DATA, DSP_MULTIPLIER, DSP_M_DATA, DSP_OUTPUT, DSP_PREADD, DSP_PREADD_DATA): 1 instance 
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
bf1c5d462default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2012default:default2
1262default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:522default:default2
00:01:572default:default2
2940.8672default:default2
1639.6722default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
mD:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/design_1_v_frmbuf_rd_0_0.dcp2default:defaultZ17-1381h px? 
?
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2,
design_1_v_frmbuf_rd_0_02default:default2$
7c4031b2e5ec55862default:defaultZ2-1648h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
mD:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/design_1_v_frmbuf_rd_0_0.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_utilization -file design_1_v_frmbuf_rd_0_0_utilization_synth.rpt -pb design_1_v_frmbuf_rd_0_0_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Dec 17 00:29:35 20222default:defaultZ17-206h px? 


End Record