# ZynqMP-ISP
#### Demo基于KV260平台，设计实现了CIS(AR1335接在IAS1口)配置，MIPI接收，ISP处理，DP显示。3MP-RAW10@30FPS。Demo软件基于Vitis裸机环境开发，实现简单的2A控制。Linux软件请见zynqmp_cam_isp_demo_linux
ISP Lite IP 基于verilog实现了ISP常规处理模块，用于处理CIS(CMOS Image Sensor)的RAW数据，并支持图像统计。其主要代码保持着跨平台特性(altera/xilinx)
VIP IP      实现了一些图像辅助处理，如CROP，DSCALE等。其主要代码同样保持着跨平台特性
MIPI Rx IP  实现了MIPI-CSI2协议，用于把MIPI信号转为内部video信号。此模块仅适用于xilinx-zynqmp平台
Vitis/Vivado 2022.1

![image](https://github.com/bxinquan/zynqmp_cam_isp_demo/blob/main/Doc/HW_Diagram.png)

![image](https://github.com/bxinquan/zynqmp_cam_isp_demo/blob/main/Doc/IPCore_Flow.png)


## ISP Lite IP
### 位置: xil_ip_repo/xil_isp_lite_1.0
### 处理模块:
    isp_dpc      - 坏点校正 (5x5领域内的8个临近像素同时大于或同时小于中心像素，且差值大于门限，则认为坏点，使用中值替换)
    isp_blc      - 黑电平校正 (RGGB四通道分别减去配置好的黑电平值)
    isp_bnr      - 拜耳降噪 (可选择的高斯滤波器)
    isp_dgain    - 数字增益 (直接乘以配置好增益值)
    isp_demosaic - 去马赛克 (基于边缘、色度和色差自适应插值)
    isp_wb       - 白平衡增益 (RGB三通道乘以配置的增益值)
    isp_ccm      - 色彩校正矩阵 (RGB三通道乘以配置的3x3矩阵)
    isp_csc      - 色彩空间转换 (基于整数优化的RGB2YUV转换公式)
    isp_gamma    - Gamma校正 (对亮度基于查表的Gamma校正)
    isp_2dnr     - 2d降噪(7x7双边滤波降噪)
    isp_ee       - 边缘增强 (基于特定的3x3滤波器)
### 统计模块:
    isp_stat_ae  - 自动曝光统计 (支持统计选取区域内亮度总和与像素个数，支持RGGB四通道直方图统计)
    isp_stat_awb - 自动白平衡统计 (支持符合白点限定条件的RGB三通道数值总和与白像素个数，支持RGB三通道直方图统计)

## VIP IP
### 位置: xil_ip_repo/xil_vip_1.0
### 处理模块:
    vip_hist_equ    - 直方图均衡 (可配置上下限的均衡器)
    vip_sobel       - sobel边缘检测 (固定的sobel 3x3卷积核)
    vip_yuv2rgb     - YUV2RGB色彩空间转换 (基于整数优化的转换公式)
    vip_crop        - 图像裁剪 (可配置裁剪区域)
    vip_dscale      - 图像缩小 (宽高分别支持1/N倍缩小)
    vip_osd         - 单色位图叠加 (用于叠加文字或logo图标例128x128)
	vip_yuv444to422 - YUV444转422（做为v_frmbuf_wr源写到内存NV12,axis_422与axis_420时序相同）

## MIPI-RX IP
### 位置: xil_ip_repo/mipi_rx_to_video_1.0
### 处理模块:
    dphy_rx_to_byte  - MIPI DPHY协议解析成字节流
    csi2_rx_to_pixel - 字节流解析为内部时序
    mipi_rx_to_video - 内部时序转为video时序


![image](https://github.com/bxinquan/zynqmp_cam_isp_demo/blob/main/Doc/snapshot.jpg)
