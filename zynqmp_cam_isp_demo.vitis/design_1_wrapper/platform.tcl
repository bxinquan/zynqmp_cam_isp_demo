# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\zynqmp_cam_isp_demo\zynqmp_cam_isp_demo.vitis\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\zynqmp_cam_isp_demo\zynqmp_cam_isp_demo.vitis\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {D:\zynqmp_cam_isp_demo\zynqmp_cam_isp_demo.vitis\design_1_wrapper.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {empty_application}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
bsp reload
bsp setlib -name xilffs -ver 4.7
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {design_1_wrapper}
platform config -updatehw {D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform generate -domains standalone_psu_cortexa53_0 
platform clean
platform generate
platform config -updatehw {D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_psu_cortexa53_0 
platform active {design_1_wrapper}
platform config -updatehw {D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_psu_cortexa53_0 
platform config -updatehw {D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_psu_cortexa53_0 
platform active {design_1_wrapper}
platform config -updatehw {D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_psu_cortexa53_0 
platform active {design_1_wrapper}
platform config -updatehw {D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_psu_cortexa53_0 
platform active {design_1_wrapper}
platform config -updatehw {D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_psu_cortexa53_0 
platform active {design_1_wrapper}
platform config -updatehw {D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_psu_cortexa53_0 
