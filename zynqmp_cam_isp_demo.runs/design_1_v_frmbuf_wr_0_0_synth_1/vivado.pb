
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:062default:default2
00:00:072default:default2
1340.4532default:default2
83.6642default:defaultZ17-268h px? 
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
INFO: [HLS 200-10] In directory 'D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1'
Sourcing Tcl script 'D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/runhls.tcl'
INFO: [HLS 200-1510] Running: open_project -reset prj 
INFO: [HLS 200-10] Creating and opening project 'D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj'.
INFO: [HLS 200-1510] Running: set_top v_frmbuf*commonh px? 
?
?_wr 
INFO: [HLS 200-1510] Running: open_solution sol 
INFO: [HLS 200-10] Creating and opening solution 'D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol'.
INFO: [HLS 200-1505] Using default flow_target 'vivado'
Resolution: For help on HLS 200-1505 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-1505.html
INFO: [HLS 200-435] Setting 'open_solution -flow_target vivado' configuration: config_interface -m_axi_latency=0
INFO: [HLS 200-1510] Running: set_part xck26-sfvc784-2lv-c 
*commonh px? 
?
?INFO: [HLS 200-1611] Setting target device to 'xck26-sfvc784-2LV-c'
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/v_frmbuf_wr_config.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/v_frmbuf_wr_config.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/v_frmbuf_wr.cpp 
INFO: [HLS 200*commonh px? 
?
?-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/v_frmbuf_wr.cpp' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/v_frmbuf_wr.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/v_frmbuf_wr.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/*commonh px? 
?
?bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls_video.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls_video.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls_opencv.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls_opencv.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_*commonh px? 
?
?0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_axi_io.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_axi_io.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_arithm.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_arithm.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls *commonh px? 
?
?-I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_core.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_core.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_fast.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_fast.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zy*commonh px? 
?
?nqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_haar.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_haar.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_harris.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0*commonh px? 
?
?_0/src/hls/hls_video_harris.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_histogram.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_histogram.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_hough.h 
INFO: [HLS 200-10] A*commonh px? 
?
?dding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_hough.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_imgbase.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_imgbase.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp*commonh px? 
?
?_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_imgproc.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_imgproc.h' to the project
*commonh px? 
?
?INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_io.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_io.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_mem.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.g*commonh px? 
?
?en/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_mem.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_stereobm.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_stereobm.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src*commonh px? 
?
?/hls/hls_video_types.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_types.h' to the project
INFO: [HLS 200-1510] Running: add_files -cflags  -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls -I d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src  d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_undistort.h 
INFO: [HLS 200-10] Adding design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_video_undistort.h' to the project
INFO: [HLS 200-1510] Running: create_clock -period 3.333 -name ap_clk 
INFO: [SYN 201-201] Setting up clock 'ap_clk' with a period of 3.333ns.
INFO: [HLS 200-1510] Running: config_interface -m_axi_flush_mode 
INFO: [HLS 200-1510] Running: config_i*commonh px? 
?
?nterface -m_axi_conservative_mode 
INFO: [HLS 200-1510] Running: config_interface -m_axi_addr64=false 
INFO: [HLS 200-1510] Running: config_rtl -module_prefix design_1_v_frmbuf_wr_0_0_ 
INFO: [HLS 200-1510] Running: config_export -vendor xilinx.com -library ip -version 2.4 
INFO: [HLS 200-1510] Running: csynth_design 
INFO: [HLS 200-111] Finished File checks and directory preparation: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.012 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] Analyzing design file 'd:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/v_frmbuf_wr.cpp' ... 
*commonh px? 
?
?WARNING: [HLS 207-5292] unused parameter 'dstImg2' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:1068:30)
WARNING: [HLS 207-5292] unused parameter 'dstImg3' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:1069:15)
WARNING: [HLS 207-5292] unused parameter 'VideoFormat' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:1073:28)
INFO: [HLS 200-111] Finished Source Code Analysis and Preprocessing: CPU user time: 3 seconds. CPU system time: 0 seconds. Elapsed time: 58.151 seconds; current allocated memory: 1.102 GB.
*commonh px? 
]
HINFO: [HLS 200-777] Using interface defaults for 'Vivado' flow target.
*commonh px? 
?
?INFO: [HLS 214-131] Inlining function 'hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>::read(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:283:50)
INFO: [HLS 214-131] Inlining function 'hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>::read(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:286:25)
INFO: [HLS 214-131] Inlining function 'hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>::read(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:285:67)
INFO: [HLS 214-131] Inlining function 'hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>::get_user_ptr()' into 'hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>::read(hls::axis<ap_uin*commonh px? 
?
?t<120>, 1ul, 1ul, 1ul>&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:285:36)
INFO: [HLS 214-131] Inlining function 'hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>::get_dest_ptr()' into 'hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>::read(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:284:39)
INFO: [HLS 214-131] Inlining function 'hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>::get_id_ptr()' into 'hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>::read(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:284:23)
INFO: [HLS 214-131] Inlining function 'hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>::read(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>&)' into 'hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>::operator>>(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:260:80)
INFO: [HLS 214-131]*commonh px? 
?
? Inlining function 'ap_range_ref<120, false>::ap_range_ref(ap_int_base<120, false>*, int, int)' into 'ap_int_base<120, false>::range(int, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1094:12)
INFO: [HLS 214-131] Inlining function 'ap_int_base<120, false>::range(int, int)' into 'ap_int_base<120, false>::operator()(int, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1131:18)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<120, false>::get() const' into 'ap_int_base<10, false>::ap_int_base<120, false>(ap_range_ref<120, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:404:20)
INFO: [HLS 214-131] Inlining function 'ap_int_base<10, false>::ap_int_base<120, false>(ap_range_ref<120, false> const&)' into 'ap_uint<10>::ap_uint<120, false>(ap_range_ref<120, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_int.h:266:92)
INFO: [HLS 214-131] Inlining function 'ap_int_base<120, false>::operator()(in*commonh px? 
?
?t, int)' into 'void hls::AXIGetBitFields<120, ap_uint<10> >(ap_uint<120>, int, int, ap_uint<10>&)' (d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_axi_io.h:49:14)
INFO: [HLS 214-131] Inlining function 'void hls::AXIGetBitFields<120, ap_uint<10> >(ap_uint<120>, int, int, ap_uint<10>&)' into 'void hls::AXIGetBitFields<120, ap_uint<10> >(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, int, int, ap_uint<10>&)' (d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/src/hls/hls_axi_io.h:71:2)
INFO: [HLS 214-131] Inlining function 'hls::Scalar<12, ap_uint<10> >::Scalar()' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:182:18)
INFO: [HLS 214-131] Inlining function 'ap_*commonh px? 
?
?int_base<1, false>::to_int() const' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:254:19)
INFO: [HLS 214-131] Inlining function 'hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>::operator>>(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>&)' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:253:17)
INFO: [HLS 214-131] Inlining function 'void hls::AXIGetBitFields<120, ap_uint<10> >(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, int, int, ap_uint<10>&)' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>,*commonh px? 
?
? 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:233:6)
INFO: [HLS 214-131] Inlining function 'hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>::operator>>(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>&)' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:198:17)
INFO: [HLS 214-131] Inlining function 'void hls::AXIGetBitFields<120, ap_uint<10> >(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, int, int, ap_uint<10>&)' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&*commonh px? 
?
?, unsigned char&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:231:6)
INFO: [HLS 214-131] Inlining function 'ap_int_base<1, false>::to_int() const' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:199:18)
INFO: [HLS 214-131] Inlining function 'void hls::AXIGetBitFields<120, ap_uint<10> >(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, int, int, ap_uint<10>&)' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:229:2)
INFO: [HLS 214-131] Inlin*commonh px? 
?
?ing function 'ap_int_base<1, false>::to_int() const' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:212:20)
INFO: [HLS 214-131] Inlining function 'ap_int_base<1, false>::to_int() const' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:215:20)
INFO: [HLS 214-131] Inlining function 'hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>::operator>>(hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>&)' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_u*commonh px? 
?
?int<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:214:20)
INFO: [HLS 214-131] Inlining function 'ssdm_int<32, false>::ssdm_int(unsigned int)' into 'ap_int_base<32, false>::ap_int_base(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:260:67)
*commonh px? 
?
?INFO: [HLS 214-131] Inlining function 'ap_int_base<32, false>::ap_int_base(int)' into 'ap_uint<32>::ap_uint(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_int.h:333:58)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi10ELb0EEC2EDq10_j' into 'ap_int_base<10, false>::ap_int_base(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:260:67)
INFO: [HLS 214-131] Inlining function 'ap_int_base<10, false>::ap_int_base(int)' into 'ap_int_base<10, false>::RType<10, false>::arg1 operator>><10, false>(ap_int_base<10, false> const&, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1715:558)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<32, false>::ap_range_ref(ap_int_base<32, false>*, int, int)' into 'ap_int_base<32, false>::range(int, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1094:12)
INFO: [HLS 214-131] Inlining function 'ap_int_base<32, false>::range(int, int)' into 'ap_int_base<32, false>::operator()(int, *commonh px? 
?
?int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1131:18)
INFO: [HLS 214-131] Inlining function 'ssdm_int<32, false>::ssdm_int(unsigned int)' into 'ap_int_base<32, false>::ap_int_base<10, false>(ap_int_base<10, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:231:106)
INFO: [HLS 214-131] Inlining function 'ap_int_base<32, false>::ap_int_base<10, false>(ap_int_base<10, false> const&)' into 'ap_range_ref<32, false>& ap_range_ref<32, false>::operator=<10, false>(ap_int_base<10, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_ref.h:413:31)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<256, false>::ap_range_ref(ap_int_base<256, false>*, int, int)' into 'ap_int_base<256, false>::range(int, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1094:12)
INFO: [HLS 214-131] Inlining function 'ap_int_base<256, false>::range(int, int)' into 'ap_int_base<256, false>::operator()(int, int)' (D:/Xilinx/*commonh px? 
?
?Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1131:18)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi256ELb0EEC2EDq256_j' into 'ap_int_base<256, false>::ap_int_base<32, false>(ap_int_base<32, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:231:106)
INFO: [HLS 214-131] Inlining function 'ap_int_base<256, false>::ap_int_base<32, false>(ap_int_base<32, false> const&)' into 'ap_range_ref<256, false>& ap_range_ref<256, false>::operator=<32, false>(ap_int_base<32, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_ref.h:413:31)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi40ELb0EEC2EDq40_j' into 'ap_int_base<40, false>::ap_int_base(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:260:67)
INFO: [HLS 214-131] Inlining function 'ap_int_base<40, false>::ap_int_base(int)' into 'ap_uint<40>::ap_uint(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_int.h:333:58)
INFO: [HLS 214-131] In*commonh px? 
?
?lining function '_ZN8ssdm_intILi256ELb0EEC2EDq256_j' into 'ap_int_base<256, false>::ap_int_base(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:260:67)
INFO: [HLS 214-131] Inlining function 'ap_int_base<256, false>::ap_int_base(int)' into 'ap_uint<256>::ap_uint(int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/ap_int.h:333:58)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<40, false>::ap_range_ref(ap_int_base<40, false>*, int, int)' into 'ap_int_base<40, false>::range(int, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1094:12)
INFO: [HLS 214-131] Inlining function 'ap_int_base<40, false>::range(int, int)' into 'ap_int_base<40, false>::operator()(int, int)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:1131:18)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi40ELb0EEC2EDq40_j' into 'ap_int_base<40, false>::ap_int_base<10, false>(ap_int_base<10, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/a*commonh px? 
?
?utopilot\ap_int_base.h:231:106)
INFO: [HLS 214-131] Inlining function 'ap_int_base<40, false>::ap_int_base<10, false>(ap_int_base<10, false> const&)' into 'ap_range_ref<40, false>& ap_range_ref<40, false>::operator=<10, false>(ap_int_base<10, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_ref.h:413:31)
INFO: [HLS 214-131] Inlining function '_ZN8ssdm_intILi256ELb0EEC2EDq256_j' into 'ap_int_base<256, false>::ap_int_base<40, false>(ap_int_base<40, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:231:106)
INFO: [HLS 214-131] Inlining function 'ap_int_base<256, false>::ap_int_base<40, false>(ap_int_base<40, false> const&)' into 'ap_range_ref<256, false>& ap_range_ref<256, false>::operator=<40, false>(ap_int_base<40, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_ref.h:413:31)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<256, false>::get() const' into 'ap_int_base<256, false>::ap_int_base<256, false>(ap_range*commonh px? 
?
?_ref<256, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_base.h:404:20)
INFO: [HLS 214-131] Inlining function 'ap_int_base<256, false>::ap_int_base<256, false>(ap_range_ref<256, false> const&)' into 'ap_range_ref<256, false>::operator=(ap_range_ref<256, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_ref.h:422:22)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<256, false>& ap_range_ref<256, false>::operator=<256, false>(ap_int_base<256, false> const&)' into 'ap_range_ref<256, false>::operator=(ap_range_ref<256, false> const&)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_int_ref.h:422:12)
INFO: [HLS 214-131] Inlining function 'hls::Scalar<12, ap_uint<10> >::Scalar()' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_f*commonh px? 
?
?rmbuf_wr.cpp:273:18)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<256, false>::operator=(ap_range_ref<256, false> const&)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:981:37)
INFO: [HLS 214-131] Inlining function 'ap_int_base<256, false>::operator()(int, int)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:981:6)
INFO: [HLS 214-131] Inlining function 'ap_int_base<256, false>::operator()(int, int)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsign*commonh px? 
?
?ed short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:981:39)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<256, false>& ap_range_ref<256, false>::operator=<40, false>(ap_int_base<40, false> const&)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:978:22)
INFO: [HLS 214-131] Inlining function 'ap_int_base<256, false>::operator()(int, int)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:977:6)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<40, false>& ap_range_ref<40,*commonh px? 
?
? false>::operator=<10, false>(ap_int_base<10, false> const&)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:974:40)
*commonh px? 
?
?INFO: [HLS 214-131] Inlining function 'ap_int_base<40, false>::operator()(int, int)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:974:7)
INFO: [HLS 214-131] Inlining function 'ap_int_base<10, false>::RType<10, false>::arg1 operator>><10, false>(ap_int_base<10, false> const&, int)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:975:18)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<256, false>& ap_range_ref<256, false>::operator=<32, false>(ap_int_base<32, false> const&)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, ST*commonh px? 
?
?REAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:941:21)
INFO: [HLS 214-131] Inlining function 'ap_int_base<256, false>::operator()(int, int)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:940:6)
INFO: [HLS 214-131] Inlining function 'ap_range_ref<32, false>& ap_range_ref<32, false>::operator=<10, false>(ap_int_base<10, false> const&)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:937:38)
INFO: [HLS *commonh px? 
?
?214-131] Inlining function 'ap_int_base<32, false>::operator()(int, int)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:937:7)
INFO: [HLS 214-131] Inlining function 'ap_int_base<10, false>::RType<10, false>::arg1 operator>><10, false>(ap_int_base<10, false> const&, int)' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&)' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:938:18)
INFO: [HLS 214-210] Disaggregating variable 'pix' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:182:18)
INFO: [HLS 214-210] Disaggregating variable 'pix' (D:*commonh px? 
?
?/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:273:18)
INFO: [HLS 214-210] Disaggregating variable 'bytePlanes' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:35:16)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_932_2' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:932:20)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_936_3' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:936:24)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_968_5' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:968:20)
INFO: [HLS 214-291*commonh px? 
?
?] Loop 'VITIS_LOOP_973_6' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:973:24)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_980_7' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:980:23)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_224_1' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:224:22)
INFO: [HLS 214-291] Loop 'VITIS_LOOP_225_2' is marked as complete unroll implied by the pipeline pragma (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:225:23)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_932_2' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_*commonh px? 
?
?frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:932:20) in function 'MultiPixStream2Bytes' completely with a factor of 8 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:271:0)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_936_3' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:936:24) in function 'MultiPixStream2Bytes' completely with a factor of 4 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:271:0)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_968_5' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:968:20) in function 'MultiPixStream2Bytes' completely with a factor of 6 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:271:0)
INFO: [HLS 214-18*commonh px? 
?
?6] Unrolling loop 'VITIS_LOOP_973_6' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:973:24) in function 'MultiPixStream2Bytes' completely with a factor of 4 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:271:0)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_980_7' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:980:23) in function 'MultiPixStream2Bytes' completely with a factor of 8 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:271:0)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_224_1' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:224:22) in function 'AXIvideo2MultiPixStream' completely with a factor of 4 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.r*commonh px? 
?
?uns/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:176:0)
INFO: [HLS 214-186] Unrolling loop 'VITIS_LOOP_225_2' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:225:23) in function 'AXIvideo2MultiPixStream' completely with a factor of 3 (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:176:0)
INFO: [HLS 214-248] Applying array_partition to 'pix': Complete partitioning on dimension 1. (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:182:18)
INFO: [HLS 214-248] Applying array_partition to 'pix': Complete partitioning on dimension 1. (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:273:18)
INFO: [HLS 214-241] Aggregating fifo (hls::stream) variable 'img' with compact=bit mode in 120-bits (D:/zynqmp_cam_isp_demo*commonh px? 
?
?/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:34:18)
INFO: [HLS 214-241] Aggregating maxi variable 'frm_buffer' with compact=none mode in 256-bits
*commonh px? 
?
?INFO: [HLS 214-115] Multiple burst writes of variable length and bit width 256 in loop 'VITIS_LOOP_1086_1'(D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:1086:21) has been inferred on bundle 'mm_video'. These burst requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:1086:21)
INFO: [HLS 214-131] Inlining function '_llvm.fpga.unpack.none.s_struct.ap_uint<120>s.i120' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:283:5)
INFO: [HLS 214-131] Inlining function '_llvm.fpga.pack.bits.i120.s_class.hls::Scalar<12, ap_uint<10*commonh px? 
?
?> >s.1' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/hls_stream_39.h:174:9)
INFO: [HLS 214-131] Inlining function '_llvm.fpga.unpack.none.s_struct.ap_uint<15>s.i15' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:283:5)
INFO: [HLS 214-131] Inlining function '_llvm.fpga.unpack.none.s_struct.ap_uint<1>s.i1' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\ap_axi_sdata.h:283:5)
INFO: [HLS 214-131] Inlining func*commonh px? 
?
?tion '_llvm.fpga.pack.none.i192.s_class.hls::Scalar<12, ap_uint<10> >s' into 'AXIvideo2MultiPixStream(hls::stream<hls::axis<ap_uint<120>, 1ul, 1ul, 1ul>, 0>&, hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, unsigned short&, unsigned short&, unsigned char&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/hls_stream_39.h:174:9)
INFO: [HLS 214-131] Inlining function '_llvm.fpga.pack.none.i64.a4s_struct.ap_uint<10>s' into '_llvm.fpga.unpack.bits.s_class.hls::Scalar<12, ap_uint<10> >s.i120.1'
INFO: [HLS 214-131] Inlining function '_llvm.fpga.unpack.bits.s_class.hls::Scalar<12, ap_uint<10> >s.i120.1' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, STREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/hls_stream_39.h:145:9)
INFO: [HLS 214-131] Inlining function '_llvm.fpga.pack.none.i256.s_struct.ap_uint<256>s' into 'MultiPixStream2Bytes(hls::stream<hls::Scalar<12, ap_uint<10> >, 0>&, S*commonh px? 
?
?TREAM_PLANES&, unsigned short&, unsigned short&, unsigned short&, unsigned short&) (.1)' (D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot/hls_stream_39.h:174:9)
INFO: [HLS 200-111] Finished Compiling Optimization and Transform: CPU user time: 2 seconds. CPU system time: 0 seconds. Elapsed time: 12.193 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-111] Finished Checking Pragmas: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.001 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] Starting code transformations ...
INFO: [HLS 200-111] Finished Standard Transforms: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.164 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] Checking synthesizability ...
INFO: [HLS 200-111] Finished Checking Synthesizability: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.205 seconds; current allocated memory: 1.102 GB.
WARNING: [HLS 200-805] An internal stream 'img' with d*commonh px? 
?
?efault size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
INFO: [XFORM 203-712] Applying dataflow to function 'FrmbufWrHlsDataFlow' (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:35:1), detected/extracted 4 process function(s): 
	 'entry_proc'
	 'AXIvideo2MultiPixStream'
	 'MultiPixStream2Bytes'
	 'Bytes2AXIMMvideo'.
INFO: [XFORM 203-401] Performing if-conversion on hyperblock to (D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/prj/sol/.autopilot/db/v_frmbuf_wr.cpp:207:15) in function 'AXIvideo2MultiPixStream'... converting 31 basic blocks.
INFO: [HLS 200-111] Finished Loop, function and other optimizations: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.565 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-111] Finished Architecture Synthesis: CPU user time: 1 seconds. CPU system time*commonh px? 
?
?: 0 seconds. Elapsed time: 0.397 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] Starting hardware synthesis ...
INFO: [HLS 200-10] Synthesizing 'v_frmbuf_wr' ...
WARNING: [SYN 201-103] Legalizing function name 'reg<unsigned short>' to 'reg_unsigned_short_s'.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'entry_proc' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 1 seconds. Elapsed time: 0.12 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO:*commonh px? 
?
? [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.025 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'reg_unsigned_short_s' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining function 'reg<unsigned short>'.
INFO: [HLS 200-1470] Pipelining result : Target II = 1, Final II = 1, Depth = 2, function 'reg<unsigned short>'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.037 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 2*commonh px? 
?
?05-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.019 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'loop_wait_for_start'.
INFO: [HLS 200-1470] Pipelining result : Target II = 1, Final II = 1, Depth = 1, loop 'loop_wait_for_start'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.037 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-10*commonh px? 
?
?1] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.026 seconds; current allocated memory: 1.102 GB.
*commonh px? 
?
?INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'AXIvideo2MultiPixStream_Pipeline_loop_width' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'loop_width'.
INFO: [HLS 200-1470] Pipelining result : Target II = 1, Final II = 1, Depth = 2, loop 'loop_width'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.097 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0*commonh px? 
?
?.068 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'loop_wait_for_eol'.
INFO: [HLS 200-1470] Pipelining result : Target II = 1, Final II = 1, Depth = 1, loop 'loop_wait_for_eol'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.104 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding*commonh px? 
?
?: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.021 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'AXIvideo2MultiPixStream' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.06 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.109 seconds; current allocated memory: 1.102 GB.
*commonh px? 
?
?INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'VITIS_LOOP_966_4'.
INFO: [HLS 200-1470] Pipelining result : Target II = 6, Final II = 6, Depth = 8, loop 'VITIS_LOOP_966_4'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 1 seconds. CPU system time: 0 seconds. Elapsed time: 0.204 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. *commonh px? 
?
?Elapsed time: 0.101 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'VITIS_LOOP_930_1'.
INFO: [HLS 200-1470] Pipelining result : Target II = 8, Final II = 8, Depth = 10, loop 'VITIS_LOOP_930_1'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.222 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finish*commonh px? 
?
?ed Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.116 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'MultiPixStream2Bytes' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.2 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.232 seconds; current allocated memory: 1.10*commonh px? 
?
?2 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'VITIS_LOOP_1086_1'.
INFO: [HLS 200-1470] Pipelining result : Target II = 1, Final II = 1, Depth = 3, loop 'VITIS_LOOP_1086_1'
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 1 seconds. CPU system time: 0 seconds. Elapsed time: 0.264 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seco*commonh px? 
?
?nds. Elapsed time: 0.052 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'Bytes2AXIMMvideo' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
*commonh px? 
?
?INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.209 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.466 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'FrmbufWrHlsDataFlow' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 1 seconds. CPU system time*commonh px? 
?
?: 0 seconds. Elapsed time: 0.148 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.115 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'v_frmbuf_wr' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [HLS 200-486] Changing DSP latency (root=mul_ln138) to 3 in order to utilize available DSP registers.
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111] Finished Scheduling: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed tim*commonh px? 
?
?e: 0.309 seconds; current allocated memory: 1.102 GB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111] Finished Binding: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.164 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'entry_proc' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [RTGEN 206-100] Finished creating RTL model for 'entry_proc'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.313 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
*commonh px? 
?
?INFO: [HLS 200-10] -- Generating RTL for module 'reg_unsigned_short_s' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [RTGEN 206-100] Finished creating RTL model for 'reg_unsigned_short_s'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 1 seconds. CPU system time: 0 seconds. Elapsed time: 0.052 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [RTGEN 206-100] Finished creating RTL model for 'AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.038 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ---------------------------------------------------------*commonh px? 
?
?-------
INFO: [HLS 200-10] -- Generating RTL for module 'AXIvideo2MultiPixStream_Pipeline_loop_width' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-1030] Apply Unified Pipeline Control on module 'AXIvideo2MultiPixStream_Pipeline_loop_width' pipeline 'loop_width' pipeline type 'loop pipeline'
INFO: [RTGEN 206-100] Finished creating RTL model for 'AXIvideo2MultiPixStream_Pipeline_loop_width'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.072 seconds; current allocated memory: 1.102 GB.
*commonh px? 
?
?INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [RTGEN 206-100] Finished creating RTL model for 'AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.289 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'AXIvideo2MultiPixStream' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [RTGEN 206-100] Finished creating RTL model for 'AXIvideo2MultiPixStream'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.076 seconds; current allocated memory: *commonh px? 
?
?1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-1030] Apply Unified Pipeline Control on module 'MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4' pipeline 'VITIS_LOOP_966_4' pipeline type 'loop pipeline'
INFO: [RTGEN 206-100] Finished creating RTL model for 'MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.246 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-1030] Apply Unified Pipeline C*commonh px? 
?
?ontrol on module 'MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1' pipeline 'VITIS_LOOP_930_1' pipeline type 'loop pipeline'
INFO: [RTGEN 206-100] Finished creating RTL model for 'MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 1 seconds. CPU system time: 0 seconds. Elapsed time: 0.481 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'MultiPixStream2Bytes' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [RTGEN 206-100] Generating core module 'urem_13ns_6ns_13_17_seq_1': 1 instance(s).
INFO: [RTGEN 206-100] Finished creating RTL model for 'MultiPixStream2Bytes'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.482 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] --------------------------------------*commonh px? 
?
?--------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-1030] Apply Unified Pipeline Control on module 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1' pipeline 'VITIS_LOOP_1086_1' pipeline type 'loop pipeline'
WARNING: [RTGEN 206-101] Setting dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_AWVALID' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_AWADDR' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_AWID' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_AWLEN' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_AWSIZE' to 0.
WARNING: [RTGEN 206-101] Setting*commonh px? 
?
? dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_AWBURST' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_AWLOCK' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_AWCACHE' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_AWPROT' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_AWQOS' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_AWREGION' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_AWUSER' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1/m_axi_mm_video_BREADY' to 0.
INFO: [RTGEN 206-100] Finished creating RTL model for 'By*commonh px? 
?
?tes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.517 seconds; current allocated memory: 1.102 GB.
*commonh px? 
?
?INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'Bytes2AXIMMvideo' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [RTGEN 206-100] Finished creating RTL model for 'Bytes2AXIMMvideo'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 1 seconds. CPU system time: 0 seconds. Elapsed time: 0.124 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'FrmbufWrHlsDataFlow' 
INFO: [HLS 200-10] ----------------------------------------------------------------
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_ARVALID' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_ARADDR' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_ARID' to 0.
WARNING: *commonh px? 
?
?[RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_ARLEN' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_ARSIZE' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_ARBURST' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_ARLOCK' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_ARCACHE' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_ARPROT' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_ARQOS' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_ARREGION' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_ARUSER' to 0.
WARNING: [RTGEN 206-101] Setting dangling out port 'FrmbufWrHlsDataFlow/m_axi_mm_video_RREADY' to 0.
INFO: [RTGEN 206-100] Fin*commonh px? 
?
?ished creating RTL model for 'FrmbufWrHlsDataFlow'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.355 seconds; current allocated memory: 1.102 GB.
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-10] -- Generating RTL for module 'v_frmbuf_wr' 
INFO: [HLS 200-10] ----------------------------------------------------------------
WARNING: [RTGEN 206-101] Design contains AXI ports. Reset is fixed to synchronous and active low.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/mm_video' to 'm_axi'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/width' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/height' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/stride' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/video_format' to 's_axilit*commonh px? 
?
?e & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/frm_buffer' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/frm_buffer2' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/frm_buffer3' to 's_axilite & ap_none'.
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/s_axis_video_V_data_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/s_axis_video_V_keep_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/s_axis_video_V_strb_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/s_axis_video_V_user_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/s_axis_video_V_last_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/s_axis_video_V_id_V' to *commonh px? 
?
?'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on port 'v_frmbuf_wr/s_axis_video_V_dest_V' to 'axis' (register, both mode).
INFO: [RTGEN 206-500] Setting interface mode on function 'v_frmbuf_wr' to 's_axilite & ap_ctrl_hs'.
INFO: [RTGEN 206-100] Bundling port 'width', 'height', 'stride', 'video_format', 'frm_buffer', 'frm_buffer2', 'frm_buffer3' and 'return' to AXI-Lite port CTRL.
INFO: [RTGEN 206-100] Generating core module 'mul_15s_3ns_15_1_1': 1 instance(s).
INFO: [RTGEN 206-100] Generating core module 'mul_mul_15ns_16ns_31_4_1': 1 instance(s).
INFO: [RTGEN 206-100] Finished creating RTL model for 'v_frmbuf_wr'.
INFO: [HLS 200-111] Finished Creating RTL model: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.506 seconds; current allocated memory: 1.102 GB.
INFO: [RTMG 210-285] Implementing FIFO 'HwReg_frm_buffer_c_U(design_1_v_frmbuf_wr_0_0_fifo_w32_d4_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'WidthInBytes_c9_U(design_1_v_frmbuf_wr_0_0_f*commonh px? 
?
?ifo_w15_d3_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'stride_c_U(design_1_v_frmbuf_wr_0_0_fifo_w16_d4_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'video_format_c_U(design_1_v_frmbuf_wr_0_0_fifo_w6_d3_S)' using Shift Registers.
*commonh px? 
?
?INFO: [RTMG 210-285] Implementing FIFO 'img_U(design_1_v_frmbuf_wr_0_0_fifo_w120_d2_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'width_c_U(design_1_v_frmbuf_wr_0_0_fifo_w13_d2_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'height_c10_U(design_1_v_frmbuf_wr_0_0_fifo_w12_d2_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'bytePlanes_plane0_U(design_1_v_frmbuf_wr_0_0_fifo_w256_d264_B)' using Block RAMs.
INFO: [RTMG 210-285] Implementing FIFO 'WidthInBytes_c_U(design_1_v_frmbuf_wr_0_0_fifo_w15_d2_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'height_c_U(design_1_v_frmbuf_wr_0_0_fifo_w12_d2_S)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'start_for_MultiPixStream2Bytes_U0_U(design_1_v_frmbuf_wr_0_0_start_for_MultiPixStream2Bytes_U0)' using Shift Registers.
INFO: [RTMG 210-285] Implementing FIFO 'start_for_Bytes2AXIMMvideo_U0_U(design_1_v_frmbuf_wr_0_0_start_for_Bytes2AXIMMvideo_U0)' using Shift Registers.
INFO: [RTMG 210-*commonh px? 
?
?279] Implementing memory 'design_1_v_frmbuf_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R' using auto ROMs.
INFO: [RTMG 210-279] Implementing memory 'design_1_v_frmbuf_wr_0_0_MEMORY2LIVE_ROM_AUTO_1R' using auto ROMs.
INFO: [HLS 200-111] Finished Generating all RTL models: CPU user time: 2 seconds. CPU system time: 1 seconds. Elapsed time: 1.581 seconds; current allocated memory: 1.102 GB.
*commonh px? 
?
?INFO: [HLS 200-1603] Design has inferred MAXI bursts and missed bursts, see Vitis HLS GUI synthesis summary report for detailed information.
*commonh px? 
?
?INFO: [HLS 200-111] Finished Updating report files: CPU user time: 2 seconds. CPU system time: 0 seconds. Elapsed time: 3.504 seconds; current allocated memory: 1.102 GB.
INFO: [VHDL 208-304] Generating VHDL RTL for v_frmbuf_wr with prefix design_1_v_frmbuf_wr_0_0_.
INFO: [VLOG 209-307] Generating Verilog RTL for v_frmbuf_wr with prefix design_1_v_frmbuf_wr_0_0_.
INFO: [HLS 200-789] **** Estimated Fmax: 411.00 MHz
INFO: [HLS 200-111] Finished Command csynth_design CPU user time: 16 seconds. CPU system time: 2 seconds. Elapsed time: 84.448 seconds; current allocated memory: 0.000 MB.
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
INFO: [Common 17-206] Exiting Vivado at Sat Dec 17 00:27:37 2022...
INFO: [HLS 200-802] Generated output file prj/sol/impl/export.zip
INFO: [HLS 200-111] Finished Command export_design CPU user time: 6 seconds. CPU system time: 0 seconds. Elapsed time: 14.495 seconds; current allocated memory: 0.000 MB.
INFO: [HLS 200-112] Total CPU user time: 25 seconds. Total CPU system time: 3 seconds. Total elapsed time: 102.325 seconds; peak allocated memory: 1.102 GB.
INFO: [Common 17-206] Exiting vitis_hls at Sat Dec 17 00:27:37 2022...
*commonh px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
compile_c: 2default:default2
00:00:002default:default2
00:01:452default:default2
1340.4532default:default2
0.0002default:defaultZ17-268h px? 
?
Command: %s
53*	vivadotcl2?
osynth_design -top design_1_v_frmbuf_wr_0_0 -part xck26-sfvc784-2LV-c -incremental_mode off -mode out_of_context2default:defaultZ4-113h px? 
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
252402default:defaultZ8-7075h px? 
?
Ygenerate block is allowed only inside loop and conditional generate in SystemVerilog mode5759*oasys2R
<D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
40232default:default8@Z8-9501h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1705.074 ; gain = 319.961
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2,
design_1_v_frmbuf_wr_0_02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
532default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_v_frmbuf_wr.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2H
4design_1_v_frmbuf_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R.v2default:default2
72default:default8@Z8-6157h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2N
:./design_1_v_frmbuf_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R.dat2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R.v2default:default2
232default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2H
4design_1_v_frmbuf_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2D
0design_1_v_frmbuf_wr_0_0_MEMORY2LIVE_ROM_AUTO_1R2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_MEMORY2LIVE_ROM_AUTO_1R.v2default:default2
72default:default8@Z8-6157h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2J
6./design_1_v_frmbuf_wr_0_0_MEMORY2LIVE_ROM_AUTO_1R.dat2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_MEMORY2LIVE_ROM_AUTO_1R.v2default:default2
232default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2D
0design_1_v_frmbuf_wr_0_0_MEMORY2LIVE_ROM_AUTO_1R2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_MEMORY2LIVE_ROM_AUTO_1R.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2@
,design_1_v_frmbuf_wr_0_0_FrmbufWrHlsDataFlow2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_FrmbufWrHlsDataFlow.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys27
#design_1_v_frmbuf_wr_0_0_entry_proc2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_entry_proc.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys27
#design_1_v_frmbuf_wr_0_0_entry_proc2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_entry_proc.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2D
0design_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2a
Mdesign_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2S
?design_1_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2S
?design_1_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2a
Mdesign_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2X
Ddesign_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2X
Ddesign_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2_
Kdesign_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2_
Kdesign_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-design_1_v_frmbuf_wr_0_0_reg_unsigned_short_s2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_reg_unsigned_short_s.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-design_1_v_frmbuf_wr_0_0_reg_unsigned_short_s2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_reg_unsigned_short_s.v2default:default2
102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2D
0design_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-design_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2[
Gdesign_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_42default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2[
Gdesign_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_42default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_966_4.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2[
Gdesign_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2[
Gdesign_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_930_1.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2F
2design_1_v_frmbuf_wr_0_0_urem_13ns_6ns_13_17_seq_12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_urem_13ns_6ns_13_17_seq_1.v2default:default2
832default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2M
9design_1_v_frmbuf_wr_0_0_urem_13ns_6ns_13_17_seq_1_divseq2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_urem_13ns_6ns_13_17_seq_1.v2default:default2
82default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2M
9design_1_v_frmbuf_wr_0_0_urem_13ns_6ns_13_17_seq_1_divseq2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_urem_13ns_6ns_13_17_seq_1.v2default:default2
82default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2F
2design_1_v_frmbuf_wr_0_0_urem_13ns_6ns_13_17_seq_12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_urem_13ns_6ns_13_17_seq_1.v2default:default2
832default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-design_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2=
)design_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1.v2default:default2
102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2=
)design_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_wr_0_0_fifo_w32_d4_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w32_d4_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2C
/design_1_v_frmbuf_wr_0_0_fifo_w32_d4_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w32_d4_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2C
/design_1_v_frmbuf_wr_0_0_fifo_w32_d4_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w32_d4_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_wr_0_0_fifo_w32_d4_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w32_d4_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_wr_0_0_fifo_w15_d3_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w15_d3_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2C
/design_1_v_frmbuf_wr_0_0_fifo_w15_d3_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w15_d3_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2C
/design_1_v_frmbuf_wr_0_0_fifo_w15_d3_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w15_d3_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_wr_0_0_fifo_w15_d3_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w15_d3_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_wr_0_0_fifo_w16_d4_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w16_d4_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2C
/design_1_v_frmbuf_wr_0_0_fifo_w16_d4_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w16_d4_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2C
/design_1_v_frmbuf_wr_0_0_fifo_w16_d4_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w16_d4_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_wr_0_0_fifo_w16_d4_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w16_d4_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys29
%design_1_v_frmbuf_wr_0_0_fifo_w6_d3_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w6_d3_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2B
.design_1_v_frmbuf_wr_0_0_fifo_w6_d3_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w6_d3_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2B
.design_1_v_frmbuf_wr_0_0_fifo_w6_d3_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w6_d3_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys29
%design_1_v_frmbuf_wr_0_0_fifo_w6_d3_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w6_d3_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2;
'design_1_v_frmbuf_wr_0_0_fifo_w120_d2_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w120_d2_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2D
0design_1_v_frmbuf_wr_0_0_fifo_w120_d2_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w120_d2_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2D
0design_1_v_frmbuf_wr_0_0_fifo_w120_d2_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w120_d2_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2;
'design_1_v_frmbuf_wr_0_0_fifo_w120_d2_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w120_d2_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_wr_0_0_fifo_w13_d2_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w13_d2_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2C
/design_1_v_frmbuf_wr_0_0_fifo_w13_d2_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w13_d2_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2C
/design_1_v_frmbuf_wr_0_0_fifo_w13_d2_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w13_d2_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_wr_0_0_fifo_w13_d2_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w13_d2_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_wr_0_0_fifo_w12_d2_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w12_d2_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2C
/design_1_v_frmbuf_wr_0_0_fifo_w12_d2_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w12_d2_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2C
/design_1_v_frmbuf_wr_0_0_fifo_w12_d2_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w12_d2_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_wr_0_0_fifo_w12_d2_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w12_d2_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2=
)design_1_v_frmbuf_wr_0_0_fifo_w256_d264_B2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w256_d264_B.v2default:default2
522default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2A
-design_1_v_frmbuf_wr_0_0_fifo_w256_d264_B_ram2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w256_d264_B.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-design_1_v_frmbuf_wr_0_0_fifo_w256_d264_B_ram2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w256_d264_B.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2=
)design_1_v_frmbuf_wr_0_0_fifo_w256_d264_B2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w256_d264_B.v2default:default2
522default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_wr_0_0_fifo_w15_d2_S2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w15_d2_S.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2C
/design_1_v_frmbuf_wr_0_0_fifo_w15_d2_S_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w15_d2_S.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2C
/design_1_v_frmbuf_wr_0_0_fifo_w15_d2_S_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w15_d2_S.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_wr_0_0_fifo_w15_d2_S2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_fifo_w15_d2_S.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2N
:design_1_v_frmbuf_wr_0_0_start_for_MultiPixStream2Bytes_U02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_start_for_MultiPixStream2Bytes_U0.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2W
Cdesign_1_v_frmbuf_wr_0_0_start_for_MultiPixStream2Bytes_U0_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_start_for_MultiPixStream2Bytes_U0.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2W
Cdesign_1_v_frmbuf_wr_0_0_start_for_MultiPixStream2Bytes_U0_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_start_for_MultiPixStream2Bytes_U0.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2N
:design_1_v_frmbuf_wr_0_0_start_for_MultiPixStream2Bytes_U02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_start_for_MultiPixStream2Bytes_U0.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2J
6design_1_v_frmbuf_wr_0_0_start_for_Bytes2AXIMMvideo_U02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_start_for_Bytes2AXIMMvideo_U0.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2S
?design_1_v_frmbuf_wr_0_0_start_for_Bytes2AXIMMvideo_U0_shiftReg2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_start_for_Bytes2AXIMMvideo_U0.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2S
?design_1_v_frmbuf_wr_0_0_start_for_Bytes2AXIMMvideo_U0_shiftReg2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_start_for_Bytes2AXIMMvideo_U0.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2J
6design_1_v_frmbuf_wr_0_0_start_for_Bytes2AXIMMvideo_U02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_start_for_Bytes2AXIMMvideo_U0.v2default:default2
432default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,design_1_v_frmbuf_wr_0_0_FrmbufWrHlsDataFlow2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_FrmbufWrHlsDataFlow.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys27
#design_1_v_frmbuf_wr_0_0_CTRL_s_axi2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_CTRL_s_axi.v2default:default2
72default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_CTRL_s_axi.v2default:default2
2522default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys27
#design_1_v_frmbuf_wr_0_0_CTRL_s_axi2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_CTRL_s_axi.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2;
'design_1_v_frmbuf_wr_0_0_mm_video_m_axi2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
112default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2A
-design_1_v_frmbuf_wr_0_0_mm_video_m_axi_store2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
8142default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2@
,design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2?
+design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2?
+design_1_v_frmbuf_wr_0_0_mm_video_m_axi_mem2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
29522default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+design_1_v_frmbuf_wr_0_0_mm_video_m_axi_mem2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
29522default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl__parameterized02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized22default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl__parameterized12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized22default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-design_1_v_frmbuf_wr_0_0_mm_video_m_axi_store2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
8142default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2@
,design_1_v_frmbuf_wr_0_0_mm_video_m_axi_load2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
3582default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized32default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_mem__parameterized02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
29522default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_mem__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
29522default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized32default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,design_1_v_frmbuf_wr_0_0_mm_video_m_axi_load2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
3582default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-design_1_v_frmbuf_wr_0_0_mm_video_m_axi_write2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
18862default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2E
1design_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1design_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized42default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl__parameterized22default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl__parameterized22default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized42default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2D
0design_1_v_frmbuf_wr_0_0_mm_video_m_axi_throttle2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
23942default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2U
Adesign_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice__parameterized02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2U
Adesign_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized52default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl__parameterized32default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl__parameterized32default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized52default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized62default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl__parameterized42default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl__parameterized42default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized62default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2D
0design_1_v_frmbuf_wr_0_0_mm_video_m_axi_throttle2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
23942default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2U
Adesign_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice__parameterized12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2U
Adesign_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6155h px? 
?
Nreplacing case/wildcard equality operator %s with logical equality operator %s589*oasys2
===2default:default2
==2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
23862default:default8@Z8-589h px? 
?
Nreplacing case/wildcard equality operator %s with logical equality operator %s589*oasys2
===2default:default2
==2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
23892default:default8@Z8-589h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-design_1_v_frmbuf_wr_0_0_mm_video_m_axi_write2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
18862default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2@
,design_1_v_frmbuf_wr_0_0_mm_video_m_axi_read2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
15022default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2U
Adesign_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice__parameterized22default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2U
Adesign_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice__parameterized22default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
26182default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized72default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl__parameterized52default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;design_1_v_frmbuf_wr_0_0_mm_video_m_axi_srl__parameterized52default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
28982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2P
<design_1_v_frmbuf_wr_0_0_mm_video_m_axi_fifo__parameterized72default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
27202default:default8@Z8-6155h px? 
?
Nreplacing case/wildcard equality operator %s with logical equality operator %s589*oasys2
===2default:default2
==2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
18782default:default8@Z8-589h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,design_1_v_frmbuf_wr_0_0_mm_video_m_axi_read2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
15022default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2H
4design_1_v_frmbuf_wr_0_0_mm_video_m_axi_flushManager2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
13592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2H
4design_1_v_frmbuf_wr_0_0_mm_video_m_axi_flushManager2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
13592default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2;
'design_1_v_frmbuf_wr_0_0_mm_video_m_axi2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mm_video_m_axi.v2default:default2
112default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2?
+design_1_v_frmbuf_wr_0_0_mul_15s_3ns_15_1_12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mul_15s_3ns_15_1_1.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+design_1_v_frmbuf_wr_0_0_mul_15s_3ns_15_1_12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mul_15s_3ns_15_1_1.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2E
1design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1.v2default:default2
322default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2M
9design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2M
9design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1.v2default:default2
42default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1.v2default:default2
322default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&design_1_v_frmbuf_wr_0_0_regslice_both2default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_regslice_both.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&design_1_v_frmbuf_wr_0_0_regslice_both2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_regslice_both.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2J
6design_1_v_frmbuf_wr_0_0_regslice_both__parameterized02default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_regslice_both.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2J
6design_1_v_frmbuf_wr_0_0_regslice_both__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_regslice_both.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2J
6design_1_v_frmbuf_wr_0_0_regslice_both__parameterized12default:default2
 2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_regslice_both.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2J
6design_1_v_frmbuf_wr_0_0_regslice_both__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_regslice_both.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_v_frmbuf_wr.v2default:default2
102default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2'
m_axi_mm_video_AWID2default:default28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2)
m_axi_mm_video_AWUSER2default:default28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2&
m_axi_mm_video_WID2default:default28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
m_axi_mm_video_WUSER2default:default28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2'
m_axi_mm_video_ARID2default:default28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2)
m_axi_mm_video_ARUSER2default:default28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2&
m_axi_mm_video_RID2default:default28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
m_axi_mm_video_RUSER2default:default28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2&
m_axi_mm_video_BID2default:default28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
m_axi_mm_video_BUSER2default:default28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
inst2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
2692default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
inst2default:default28
$design_1_v_frmbuf_wr_0_0_v_frmbuf_wr2default:default2
742default:default2
642default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
2692default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
design_1_v_frmbuf_wr_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/synth/design_1_v_frmbuf_wr_0_0.v2default:default2
532default:default8@Z8-6155h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
quot_reg2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_urem_13ns_6ns_13_17_seq_1.v2default:default2
1492default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
int_ap_done_reg2default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_CTRL_s_axi.v2default:default2
3402default:default8@Z8-6014h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2default:default2M
9design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
in_BUS_RID[0]2default:default2@
,design_1_v_frmbuf_wr_0_0_mm_video_m_axi_read2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
in_BUS_RRESP[1]2default:default2@
,design_1_v_frmbuf_wr_0_0_mm_video_m_axi_read2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
in_BUS_RRESP[0]2default:default2@
,design_1_v_frmbuf_wr_0_0_mm_video_m_axi_read2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
in_BUS_RUSER[0]2default:default2@
,design_1_v_frmbuf_wr_0_0_mm_video_m_axi_read2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
in_BUS_BID[0]2default:default2A
-design_1_v_frmbuf_wr_0_0_mm_video_m_axi_write2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
in_BUS_BRESP[1]2default:default2A
-design_1_v_frmbuf_wr_0_0_mm_video_m_axi_write2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
in_BUS_BRESP[0]2default:default2A
-design_1_v_frmbuf_wr_0_0_mm_video_m_axi_write2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
in_BUS_BUSER[0]2default:default2A
-design_1_v_frmbuf_wr_0_0_mm_video_m_axi_write2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[9]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[8]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[7]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[6]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[5]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[4]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[3]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[2]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[1]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys21
bytePlanes1_num_data_valid[0]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[9]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[8]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[7]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[6]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[5]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[4]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[3]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[2]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[1]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2+
bytePlanes1_fifo_cap[0]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2*
m_axi_mm_video_AWREADY2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2*
m_axi_mm_video_ARREADY2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2)
m_axi_mm_video_RVALID2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[255]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[254]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[253]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[252]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[251]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[250]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[249]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[248]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[247]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[246]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[245]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[244]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[243]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[242]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[241]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[240]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[239]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[238]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[237]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[236]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[235]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[234]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[233]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[232]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[231]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[230]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[229]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[228]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[227]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[226]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[225]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[224]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[223]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[222]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[221]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[220]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[219]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[218]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[217]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[216]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[215]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[214]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[213]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[212]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[211]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[210]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[209]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[208]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[207]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[206]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[205]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[204]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[203]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[202]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[201]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[200]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[199]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[198]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[197]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[196]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[195]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[194]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[193]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[192]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[191]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[190]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[189]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2-
m_axi_mm_video_RDATA[188]2default:default2X
Ddesign_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_12default:defaultZ8-7129h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1919.855 ; gain = 534.742
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1919.855 ; gain = 534.742
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1919.855 ; gain = 534.742
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
00:00:012default:default2 
00:00:00.5372default:default2
1919.8552default:default2
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
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/design_1_v_frmbuf_wr_0_0_ooc.xdc2default:default2
inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/design_1_v_frmbuf_wr_0_0_ooc.xdc2default:default2
inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2u
_D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2u
_D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/dont_touch.xdc2default:default8Z20-178h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
}d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/design_1_v_frmbuf_wr_0_0.xdc2default:default2
inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
}d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/design_1_v_frmbuf_wr_0_0.xdc2default:default2
inst	2default:default8Z20-847h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1998.1172default:default2
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
00:00:00.5062default:default2
2010.7732default:default2
12.6562default:defaultZ17-268h px? 
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
Finished Constraint Validation : Time (s): cpu = 00:00:37 ; elapsed = 00:00:37 . Memory (MB): peak = 2010.773 ; gain = 625.660
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:37 ; elapsed = 00:00:37 . Memory (MB): peak = 2010.773 ; gain = 625.660
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:37 ; elapsed = 00:00:37 . Memory (MB): peak = 2010.773 ; gain = 625.660
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
?
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px? 
?
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2

wstate_reg2default:default27
#design_1_v_frmbuf_wr_0_0_CTRL_s_axi2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2

rstate_reg2default:default27
#design_1_v_frmbuf_wr_0_0_CTRL_s_axi2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2E
1design_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2U
Adesign_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice__parameterized02default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2U
Adesign_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice__parameterized12default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2U
Adesign_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice__parameterized22default:defaultZ8-802h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2*
zext_ln132_reg_343_reg2default:default2
162default:default2
62default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_v_frmbuf_wr.v2default:default2
7962default:default8@Z8-3936h px? 
?
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px? 
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
#design_1_v_frmbuf_wr_0_0_CTRL_s_axi2default:defaultZ8-3354h px? 
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
#design_1_v_frmbuf_wr_0_0_CTRL_s_axi2default:defaultZ8-3354h px? 
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
1design_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice2default:defaultZ8-3354h px? 
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
Adesign_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice__parameterized02default:defaultZ8-3354h px? 
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
Adesign_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice__parameterized12default:defaultZ8-3354h px? 
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
Adesign_1_v_frmbuf_wr_0_0_mm_video_m_axi_reg_slice__parameterized22default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:41 ; elapsed = 00:00:41 . Memory (MB): peak = 2010.773 ; gain = 625.660
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
,	   3 Input   14 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   10 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 11    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 21    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 21    
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
.	              289 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              288 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              258 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              257 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              256 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              120 Bit    Registers := 7     
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
.	               64 Bit    Registers := 6     
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
.	               27 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               26 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               21 Bit    Registers := 1     
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
.	               16 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               15 Bit    Registers := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
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
.	               12 Bit    Registers := 15    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 107   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 35    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 8     
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
.	                5 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 17    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 24    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 234   
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
k
%s
*synth2S
?	              65K Bit	(263 X 256 bit)          RAMs := 1     
2default:defaulth p
x
? 
k
%s
*synth2S
?	              64K Bit	(255 X 258 bit)          RAMs := 1     
2default:defaulth p
x
? 
j
%s
*synth2R
>	               4K Bit	(15 X 288 bit)          RAMs := 1     
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
,	   2 Input  257 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input  256 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input  120 Bit        Muxes := 6     
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
,	   2 Input   64 Bit        Muxes := 2     
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
,	   2 Input   32 Bit        Muxes := 12    
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
,	   2 Input   26 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  27 Input   26 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   25 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   23 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   22 Bit        Muxes := 1     
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
,	   2 Input   20 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   15 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   13 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 3     
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
,	   2 Input   10 Bit        Muxes := 84    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 15    
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
,	   9 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 19    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 13    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    4 Bit        Muxes := 2     
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
,	   2 Input    2 Bit        Muxes := 84    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 15    
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
,	   2 Input    1 Bit        Muxes := 256   
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
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2`
LAXIvideo2MultiPixStream_U0/grp_reg_unsigned_short_s_fu_321/d_read_reg_22_reg2default:default2
132default:default2
122default:default2?
?d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_v_frmbuf_wr_0_0/hdl/verilog/design_1_v_frmbuf_wr_0_0_reg_unsigned_short_s.v2default:default2
312default:default8@Z8-3936h px? 
?
%s
*synth2?
?DSP Report: Generating DSP mul_mul_15ns_16ns_31_4_1_U148/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0_U/p_reg_reg, operation Mode is: ((A:0xaaab)'*B2)'.
2default:defaulth p
x
? 
?
%s
*synth2?
?DSP Report: register mul_mul_15ns_16ns_31_4_1_U148/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0_U/p_reg_reg is absorbed into DSP mul_mul_15ns_16ns_31_4_1_U148/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0_U/p_reg_reg.
2default:defaulth p
x
? 
?
%s
*synth2?
?DSP Report: register mul_mul_15ns_16ns_31_4_1_U148/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0_U/p_reg_reg is absorbed into DSP mul_mul_15ns_16ns_31_4_1_U148/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0_U/p_reg_reg.
2default:defaulth p
x
? 
?
%s
*synth2?
?DSP Report: register mul_mul_15ns_16ns_31_4_1_U148/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0_U/p_reg_reg is absorbed into DSP mul_mul_15ns_16ns_31_4_1_U148/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0_U/p_reg_reg.
2default:defaulth p
x
? 
?
%s
*synth2?
?DSP Report: register mul_mul_15ns_16ns_31_4_1_U148/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0_U/p_reg_tmp_reg is absorbed into DSP mul_mul_15ns_16ns_31_4_1_U148/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0_U/p_reg_reg.
2default:defaulth p
x
? 
?
%s
*synth2?
?DSP Report: operator mul_mul_15ns_16ns_31_4_1_U148/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0_U/p_reg_tmp0 is absorbed into DSP mul_mul_15ns_16ns_31_4_1_U148/design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0_U/p_reg_reg.
2default:defaulth p
x
? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
FSM_onehot_wstate_reg[0]2default:default27
#design_1_v_frmbuf_wr_0_0_CTRL_s_axi2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
FSM_onehot_rstate_reg[0]2default:default27
#design_1_v_frmbuf_wr_0_0_CTRL_s_axi2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2@
,bus_read/rs_rreq/FSM_sequential_state_reg[1]2default:default2;
'design_1_v_frmbuf_wr_0_0_mm_video_m_axi2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2@
,bus_read/rs_rreq/FSM_sequential_state_reg[0]2default:default2;
'design_1_v_frmbuf_wr_0_0_mm_video_m_axi2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:01 ; elapsed = 00:01:03 . Memory (MB): peak = 2010.773 ; gain = 625.660
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
g|design_1_v_frmbuf_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R | ram        | 64x3          | LUT            | 
2default:defaulth px? 
?
%s*synth2{
g|design_1_v_frmbuf_wr_0_0_MEMORY2LIVE_ROM_AUTO_1R     | ram        | 64x3          | LUT            | 
2default:defaulth px? 
?
%s*synth2{
g|design_1_v_frmbuf_wr_0_0_v_frmbuf_wr                 | p_0_out    | 64x3          | LUT            | 
2default:defaulth px? 
?
%s*synth2{
g|design_1_v_frmbuf_wr_0_0_v_frmbuf_wr                 | p_0_out    | 64x3          | LUT            | 
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
?+------------------------------------+-----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name                         | RTL Object                                                                  | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | Cascade Heights | 
2default:defaulth px? 
?
%s*synth2?
?+------------------------------------+-----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth px? 
?
%s*synth2?
?|inst/grp_FrmbufWrHlsDataFlow_fu_186 | bytePlanes_plane0_U/U_design_1_v_frmbuf_wr_0_0_fifo_w256_d264_B_ram/mem_reg | 263 x 256(READ_FIRST)  | W |   | 263 x 256(WRITE_FIRST) |   | R | Port A and B     | 0      | 4      |                 | 
2default:defaulth px? 
?
%s*synth2?
?|inst/mm_video_m_axi_U               | store_unit/buff_wdata/U_fifo_mem/mem_reg                                    | 15 x 288(READ_FIRST)   | W |   | 15 x 288(WRITE_FIRST)  |   | R | Port A and B     | 0      | 4      |                 | 
2default:defaulth px? 
?
%s*synth2?
?+------------------------------------+-----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+

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
?+----------------------------------------------------------+-------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name                                               | DSP Mapping       | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
?+----------------------------------------------------------+-------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0 | ((A:0xaaab)'*B2)' | 16     | 17     | -      | -      | 33     | 1    | 1    | -    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?+----------------------------------------------------------+-------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:15 ; elapsed = 00:01:17 . Memory (MB): peak = 2438.691 ; gain = 1053.578
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Timing Optimization : Time (s): cpu = 00:01:25 ; elapsed = 00:01:28 . Memory (MB): peak = 2551.012 ; gain = 1165.898
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
?+------------------------------------+-----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name                         | RTL Object                                                                  | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | Cascade Heights | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------------------------------+-----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|inst/grp_FrmbufWrHlsDataFlow_fu_186 | bytePlanes_plane0_U/U_design_1_v_frmbuf_wr_0_0_fifo_w256_d264_B_ram/mem_reg | 263 x 256(READ_FIRST)  | W |   | 263 x 256(WRITE_FIRST) |   | R | Port A and B     | 0      | 4      |                 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|inst/mm_video_m_axi_U               | store_unit/buff_wdata/U_fifo_mem/mem_reg                                    | 15 x 288(READ_FIRST)   | W |   | 15 x 288(WRITE_FIRST)  |   | R | Port A and B     | 0      | 4      |                 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------------------------------+-----------------------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+

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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Technology Mapping : Time (s): cpu = 00:01:28 ; elapsed = 00:01:31 . Memory (MB): peak = 2551.035 ; gain = 1165.922
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
wFinished IO Insertion : Time (s): cpu = 00:01:34 ; elapsed = 00:01:37 . Memory (MB): peak = 2555.145 ; gain = 1170.031
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:34 ; elapsed = 00:01:37 . Memory (MB): peak = 2555.145 ; gain = 1170.031
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:35 ; elapsed = 00:01:38 . Memory (MB): peak = 2555.145 ; gain = 1170.031
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:01:35 ; elapsed = 00:01:38 . Memory (MB): peak = 2555.145 ; gain = 1170.031
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:01:35 ; elapsed = 00:01:38 . Memory (MB): peak = 2555.145 ; gain = 1170.031
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:01:35 ; elapsed = 00:01:38 . Memory (MB): peak = 2555.145 ; gain = 1170.031
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
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name                          | RTL Name                                                                                                                                                          | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|design_1_v_frmbuf_wr_0_0_v_frmbuf_wr | grp_FrmbufWrHlsDataFlow_fu_186/MultiPixStream2Bytes_U0/urem_13ns_6ns_13_17_seq_1_U100/design_1_v_frmbuf_wr_0_0_urem_13ns_6ns_13_17_seq_1_divseq_u/r_stage_reg[13] | 13     | 1     | YES          | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|design_1_v_frmbuf_wr_0_0_v_frmbuf_wr | grp_FrmbufWrHlsDataFlow_fu_186/Bytes2AXIMMvideo_U0/ap_CS_fsm_reg[108]                                                                                             | 103    | 1     | YES          | NO                 | YES               | 0      | 4       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

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
e|dsrl        | SRL_SIG_reg[3] | 32     | 32         | 32     | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__1     | SRL_SIG_reg[2] | 15     | 15         | 15     | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__2     | SRL_SIG_reg[3] | 16     | 16         | 16     | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__3     | SRL_SIG_reg[2] | 6      | 6          | 6      | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__4     | SRL_SIG_reg[2] | 1      | 1          | 1      | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__5     | mem_reg[103]   | 64     | 64         | 0      | 256     | 128    | 64     | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__6     | mem_reg[2]     | 1      | 1          | 1      | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__7     | mem_reg[103]   | 1      | 1          | 0      | 4       | 2      | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__8     | mem_reg[2]     | 8      | 8          | 8      | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__9     | mem_reg[2]     | 40     | 40         | 40     | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__10    | mem_reg[14]    | 289    | 289        | 289    | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__11    | mem_reg[14]    | 1      | 1          | 1      | 0       | 0      | 0      | 0      | 
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
?+----------------------------------------------------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name                                               | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+----------------------------------------------------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|design_1_v_frmbuf_wr_0_0_mul_mul_15ns_16ns_31_4_1_DSP48_0 | ((A'*B)')'  | 15     | 16     | -      | -      | 31     | 1    | 0    | -    | -    | -     | 1    | 1    | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+----------------------------------------------------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

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
!|1     |CARRY8          |    39|
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
!|10    |LUT1            |    57|
2default:defaulth px? 
M
%s*synth25
!|11    |LUT2            |   214|
2default:defaulth px? 
M
%s*synth25
!|12    |LUT3            |   569|
2default:defaulth px? 
M
%s*synth25
!|13    |LUT4            |   537|
2default:defaulth px? 
M
%s*synth25
!|14    |LUT5            |   508|
2default:defaulth px? 
M
%s*synth25
!|15    |LUT6            |   865|
2default:defaulth px? 
M
%s*synth25
!|16    |MUXF7           |    76|
2default:defaulth px? 
M
%s*synth25
!|17    |MUXF8           |    38|
2default:defaulth px? 
M
%s*synth25
!|18    |RAMB36E2        |     8|
2default:defaulth px? 
M
%s*synth25
!|20    |SRL16E          |   387|
2default:defaulth px? 
M
%s*synth25
!|21    |SRLC32E         |   156|
2default:defaulth px? 
M
%s*synth25
!|22    |FDRE            |  3729|
2default:defaulth px? 
M
%s*synth25
!|23    |FDSE            |    47|
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:01:35 ; elapsed = 00:01:38 . Memory (MB): peak = 2555.145 ; gain = 1170.031
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
HSynthesis finished with 0 errors, 0 critical warnings and 590 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:01:05 ; elapsed = 00:01:26 . Memory (MB): peak = 2555.145 ; gain = 1079.113
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:01:35 ; elapsed = 00:01:38 . Memory (MB): peak = 2555.145 ; gain = 1170.031
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
00:00:012default:default2 
00:00:00.2652default:default2
2567.1642default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1542default:defaultZ29-17h px? 
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
2585.0782default:default2
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
c13ee6182default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1952default:default2
1242default:default2
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
00:01:462default:default2
00:01:512default:default2
2585.0782default:default2
1244.6252default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
mD:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/design_1_v_frmbuf_wr_0_0.dcp2default:defaultZ17-1381h px? 
?
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2,
design_1_v_frmbuf_wr_0_02default:default2$
08b8332baa9c2f862default:defaultZ2-1648h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
mD:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_wr_0_0_synth_1/design_1_v_frmbuf_wr_0_0.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_utilization -file design_1_v_frmbuf_wr_0_0_utilization_synth.rpt -pb design_1_v_frmbuf_wr_0_0_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Dec 17 00:29:33 20222default:defaultZ17-206h px? 


End Record