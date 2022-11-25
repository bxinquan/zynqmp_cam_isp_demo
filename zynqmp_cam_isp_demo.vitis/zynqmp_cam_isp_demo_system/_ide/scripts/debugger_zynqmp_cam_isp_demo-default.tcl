# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\zynqmp_cam_isp_demo\zynqmp_cam_isp_demo.vitis\zynqmp_cam_isp_demo_system\_ide\scripts\debugger_zynqmp_cam_isp_demo-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\zynqmp_cam_isp_demo\zynqmp_cam_isp_demo.vitis\zynqmp_cam_isp_demo_system\_ide\scripts\debugger_zynqmp_cam_isp_demo-default.tcl
# 
connect -url tcp:127.0.0.1:3121
source D:/Xilinx/Vitis/2022.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx X-MLCC-01 XFL14IR3AYK4A" && level==0 && jtag_device_ctx=="jsn-X-MLCC-01-XFL14IR3AYK4A-04724093-0"}
fpga -file D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis/zynqmp_cam_isp_demo/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis/zynqmp_cam_isp_demo/_ide/psinit/psu_init.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
catch {psu_protection}
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis/zynqmp_cam_isp_demo/Debug/zynqmp_cam_isp_demo.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
