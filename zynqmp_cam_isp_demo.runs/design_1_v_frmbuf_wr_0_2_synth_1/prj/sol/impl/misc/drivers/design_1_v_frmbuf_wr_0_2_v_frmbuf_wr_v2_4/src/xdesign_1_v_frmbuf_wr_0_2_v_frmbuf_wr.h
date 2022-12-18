// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDESIGN_1_V_FRMBUF_WR_0_2_V_FRMBUF_WR_H
#define XDESIGN_1_V_FRMBUF_WR_0_2_V_FRMBUF_WR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xdesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Design_1_v_frmbuf_wr_0_2_ctrl_BaseAddress;
} XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Config;
#endif

typedef struct {
    u32 Design_1_v_frmbuf_wr_0_2_ctrl_BaseAddress;
    u32 IsReady;
} XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Initialize(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, u16 DeviceId);
XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Config* XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_LookupConfig(u16 DeviceId);
int XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_CfgInitialize(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Config *ConfigPtr);
#else
int XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Initialize(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, const char* InstanceName);
int XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Release(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
#endif

void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Start(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
u32 XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_IsDone(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
u32 XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_IsIdle(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
u32 XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_IsReady(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_EnableAutoRestart(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_DisableAutoRestart(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);

void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Set_width(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Get_width(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Set_height(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Get_height(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Set_stride(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Get_stride(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Set_video_format(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Get_video_format(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Set_frm_buffer(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Get_frm_buffer(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Set_frm_buffer2(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Get_frm_buffer2(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Set_frm_buffer3(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_Get_frm_buffer3(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);

void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_InterruptGlobalEnable(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_InterruptGlobalDisable(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_InterruptEnable(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, u32 Mask);
void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_InterruptDisable(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, u32 Mask);
void XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_InterruptClear(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr, u32 Mask);
u32 XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_InterruptGetEnabled(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);
u32 XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr_InterruptGetStatus(XDesign_1_v_frmbuf_wr_0_2_v_frmbuf_wr *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
