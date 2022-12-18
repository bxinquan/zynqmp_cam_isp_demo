// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdesign_1_v_frm_wr_0_0_v_frmbuf_wr.h"

extern XDesign_1_v_frm_wr_0_0_v_frmbuf_wr_Config XDesign_1_v_frm_wr_0_0_v_frmbuf_wr_ConfigTable[];

XDesign_1_v_frm_wr_0_0_v_frmbuf_wr_Config *XDesign_1_v_frm_wr_0_0_v_frmbuf_wr_LookupConfig(u16 DeviceId) {
	XDesign_1_v_frm_wr_0_0_v_frmbuf_wr_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDESIGN_1_V_FRM_WR_0_0_V_FRMBUF_WR_NUM_INSTANCES; Index++) {
		if (XDesign_1_v_frm_wr_0_0_v_frmbuf_wr_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDesign_1_v_frm_wr_0_0_v_frmbuf_wr_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDesign_1_v_frm_wr_0_0_v_frmbuf_wr_Initialize(XDesign_1_v_frm_wr_0_0_v_frmbuf_wr *InstancePtr, u16 DeviceId) {
	XDesign_1_v_frm_wr_0_0_v_frmbuf_wr_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDesign_1_v_frm_wr_0_0_v_frmbuf_wr_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDesign_1_v_frm_wr_0_0_v_frmbuf_wr_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

