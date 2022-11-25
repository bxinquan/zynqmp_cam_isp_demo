// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_CfgInitialize(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr, XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress = ConfigPtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Start(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_AP_CTRL) & 0x80;
    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_IsDone(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_IsIdle(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_IsReady(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_EnableAutoRestart(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_AP_CTRL, 0x80);
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_DisableAutoRestart(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_AP_CTRL, 0);
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Set_width(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Get_width(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Set_height(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Get_height(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Set_stride(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_STRIDE_DATA, Data);
}

u32 XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Get_stride(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_STRIDE_DATA);
    return Data;
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Set_video_format(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_VIDEO_FORMAT_DATA, Data);
}

u32 XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Get_video_format(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_VIDEO_FORMAT_DATA);
    return Data;
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Set_frm_buffer(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_FRM_BUFFER_DATA, Data);
}

u32 XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Get_frm_buffer(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_FRM_BUFFER_DATA);
    return Data;
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Set_frm_buffer2(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_FRM_BUFFER2_DATA, Data);
}

u32 XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Get_frm_buffer2(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_FRM_BUFFER2_DATA);
    return Data;
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Set_frm_buffer3(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_FRM_BUFFER3_DATA, Data);
}

u32 XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_Get_frm_buffer3(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_FRM_BUFFER3_DATA);
    return Data;
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_InterruptGlobalEnable(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_GIE, 1);
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_InterruptGlobalDisable(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_GIE, 0);
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_InterruptEnable(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_IER);
    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_IER, Register | Mask);
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_InterruptDisable(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_IER);
    XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_IER, Register & (~Mask));
}

void XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_InterruptClear(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_WriteReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_ISR, Mask);
}

u32 XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_InterruptGetEnabled(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_IER);
}

u32 XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_InterruptGetStatus(XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XDesign_1_v_frmbuf_wr_0_1_v_frmbuf_wr_ReadReg(InstancePtr->Design_1_v_frmbuf_wr_0_1_ctrl_BaseAddress, XDESIGN_1_V_FRMBUF_WR_0_1_V_FRMBUF_WR_DESIGN_1_V_FRMBUF_WR_0_1_CTRL_ADDR_ISR);
}

