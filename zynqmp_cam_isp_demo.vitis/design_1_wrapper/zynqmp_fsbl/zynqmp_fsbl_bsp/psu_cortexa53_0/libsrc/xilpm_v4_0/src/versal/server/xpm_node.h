/******************************************************************************
* Copyright (c) 2018 - 2022 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#ifndef XPM_NODE_H_
#define XPM_NODE_H_

#include <xil_types.h>
#include <xstatus.h>
#include "xpm_nodeid.h"

#ifdef __cplusplus
extern "C" {
#endif

#define NODE_IDLE_DONE			(0x4U)

typedef struct XPm_Node XPm_Node;

/**
 * The node class.  This is the base class for all the power, clock, pin and
 * reset node classes.
 */
struct XPm_Node {
	u32 Id;	/**< Node ID: For XilPM clock and pin APIs */
	u32 BaseAddress; /**< Base address: Specify to node type */
	u16 LatencyMarg; /**< lowest latency requirement - powerup latency */
	u8  State; /**< Node state: Specific to node type */
	u8  Flags;
};

/************************** Function Prototypes ******************************/
void XPmNode_Init(XPm_Node *Node, u32 Id, u8 State, u32 BaseAddress);


#define NODE_CLASS_SHIFT	26U
#define NODE_SUBCLASS_SHIFT	20U
#define NODE_TYPE_SHIFT		14U
#define NODE_INDEX_SHIFT	0U
#define NODE_CLASS_MASK_BITS    0x3FU
#define NODE_SUBCLASS_MASK_BITS 0x3FU
#define NODE_TYPE_MASK_BITS     0x3FU
#define NODE_INDEX_MASK_BITS    0x3FFFU
#define NODE_CLASS_MASK         ((u32)NODE_CLASS_MASK_BITS << NODE_CLASS_SHIFT)
#define NODE_SUBCLASS_MASK      ((u32)NODE_SUBCLASS_MASK_BITS << NODE_SUBCLASS_SHIFT)
#define NODE_TYPE_MASK          ((u32)NODE_TYPE_MASK_BITS << NODE_TYPE_SHIFT)
#define NODE_INDEX_MASK         ((u32)NODE_INDEX_MASK_BITS << NODE_INDEX_SHIFT)

#define NODEID(CLASS, SUBCLASS, TYPE, INDEX)	\
	((((CLASS) & NODE_CLASS_MASK_BITS) << NODE_CLASS_SHIFT) | \
	(((SUBCLASS) & NODE_SUBCLASS_MASK_BITS) << NODE_SUBCLASS_SHIFT) | \
	(((TYPE) & NODE_TYPE_MASK_BITS) << NODE_TYPE_SHIFT) | \
	(((INDEX) & NODE_INDEX_MASK_BITS) << NODE_INDEX_SHIFT))

#define NODECLASS(ID)		(((ID) & NODE_CLASS_MASK) >> NODE_CLASS_SHIFT)
#define NODESUBCLASS(ID)	(((ID) & NODE_SUBCLASS_MASK) >> NODE_SUBCLASS_SHIFT)
#define NODETYPE(ID)		(((ID) & NODE_TYPE_MASK) >> NODE_TYPE_SHIFT)
#define NODEINDEX(ID)		(((ID) & NODE_INDEX_MASK) >> NODE_INDEX_SHIFT)

#define LMIONODEID(PIN_NUM)	NODEID(XPM_NODECLASS_STMIC,\
	XPM_NODESUBCL_PIN, XPM_NODETYPE_LPD_MIO, (PIN_NUM) + XPM_NODEIDX_STMIC_LMIO_0)

#define PMIONODEID(PIN_NUM)	NODEID(XPM_NODECLASS_STMIC,\
	XPM_NODESUBCL_PIN, XPM_NODETYPE_PMC_MIO, (PIN_NUM) + XPM_NODEIDX_STMIC_PMIO_0)

/* Node class types */
typedef enum {
	XPM_NODECLASS_MIN,

	XPM_NODECLASS_POWER,
	XPM_NODECLASS_CLOCK,
	XPM_NODECLASS_RESET,
	XPM_NODECLASS_MEMIC,
	XPM_NODECLASS_STMIC,
	XPM_NODECLASS_DEVICE,
	XPM_NODECLASS_SUBSYSTEM,
	XPM_NODECLASS_ISOLATION,
	XPM_NODECLASS_PROTECTION,
	XPM_NODECLASS_EVENT,
	XPM_NODECLASS_MONITOR,
	XPM_NODECLASS_REGNODE,
	XPM_NODECLASS_MISC,

	XPM_NODECLASS_MAX
} XPm_NodeClass;

/* Node subclass types */
typedef enum {
	/* Power nodes */
	XPM_NODESUBCL_POWER_ISLAND=1,
	XPM_NODESUBCL_POWER_DOMAIN,
	XPM_NODESUBCL_POWER_RAIL,
	XPM_NODESUBCL_POWER_REGULATOR,
} XPm_PowerNodeSubclass;

typedef enum {
	/* Clock nodes */
	XPM_NODESUBCL_CLOCK_PLL=1,
	XPM_NODESUBCL_CLOCK_OUT,
	XPM_NODESUBCL_CLOCK_REF,
} XPm_ClockNodeSubclass;

typedef enum {
	/* Reset nodes */
	XPM_NODESUBCL_RESET_PERIPHERAL=1,
	XPM_NODESUBCL_RESET_DBG,
	XPM_NODESUBCL_RESET_POR,
	XPM_NODESUBCL_RESET_SRST,
} XPm_ResetNodeSubclass;

typedef enum {
	/* MEMIC subclasses */
	XPM_NODESUBCL_MEMIC_NOC,
} XPm_MemicNodeSubclass;

typedef enum {
	/* Pin nodes */
	XPM_NODESUBCL_PIN=1,
} XPm_PinNodeSubclass;

typedef enum {
	/* Device types */
	XPM_NODESUBCL_DEV_CORE=1,
	XPM_NODESUBCL_DEV_PERIPH,
	XPM_NODESUBCL_DEV_MEM,
	XPM_NODESUBCL_DEV_SOC,
	XPM_NODESUBCL_DEV_MEM_CTRLR,
	XPM_NODESUBCL_DEV_PHY,
	XPM_NODESUBCL_DEV_PL,
	XPM_NODESUBCL_DEV_AIE,
} XPm_DeviceNodeSubclass;

typedef enum {
	/* Subsystem classes */
	XPM_NODESUBCL_SUBSYSTEM=0,
} XPm_SubsystemSubclass;

typedef enum {
	/* isolation subclasses */
	XPM_NODESUBCL_ISOLATION=0,
} XPm_IsolationSubclass;

typedef enum {
	/* Protection subclasses */
	XPM_NODESUBCL_PROT_XPPU,
	XPM_NODESUBCL_PROT_XMPU,
} XPm_ProtNodeSubclass;

typedef enum {
	/* Monitor subclasses */
	XPM_NODESUBCL_MONITOR_SYSMON,
} XPm_MonitorSubclass;

typedef enum {
	/* Regnode subclass */
	XPM_NODESUBCL_REGNODE_PREDEF,
	XPM_NODESUBCL_REGNODE_USERDEF,
} XPm_RegnodeSubclass;

typedef enum {
	/* Miscellaneous subclasses */
	XPM_NODESUBCL_MISC=0,
} XPm_MiscSubclass;

/* Node types */
typedef enum {
	/* Power nodes */
	XPM_NODETYPE_POWER_ISLAND=1,
	XPM_NODETYPE_POWER_DOMAIN_PMC,
	XPM_NODETYPE_POWER_DOMAIN_PS_FULL,
	XPM_NODETYPE_POWER_DOMAIN_PS_LOW,
	XPM_NODETYPE_POWER_DOMAIN_NOC,
	XPM_NODETYPE_POWER_DOMAIN_CPM,
	XPM_NODETYPE_POWER_DOMAIN_ME,
	XPM_NODETYPE_POWER_DOMAIN_PL,
	XPM_NODETYPE_POWER_ISLAND_XRAM,
	XPM_NODETYPE_POWER_RAIL,
	XPM_NODETYPE_POWER_REGULATOR,
} XPm_PowerNodeType;

typedef enum {
	/* Clock nodes */
	XPM_NODETYPE_CLOCK_PLL=1,
	XPM_NODETYPE_CLOCK_OUT,
	XPM_NODETYPE_CLOCK_REF,
	XPM_NODETYPE_CLOCK_SUBNODE,
} XPm_ClockNodeType;

typedef enum {
	/* Reset nodes */
	XPM_NODETYPE_RESET_PERIPHERAL=1,
	XPM_NODETYPE_RESET_DBG,
	XPM_NODETYPE_RESET_POR,
	XPM_NODETYPE_RESET_SRST,
} XPm_ResetNodeType;

typedef enum {
	/* MEMIC node types */
	XPM_NODETYPE_MEMIC_MASTER,
	XPM_NODETYPE_MEMIC_SLAVE,
} XPm_MemicNodeType;

typedef enum {
	/* Pin nodes */
	XPM_NODETYPE_LPD_MIO=1,
	XPM_NODETYPE_PMC_MIO,
} XPm_PinNodeType;

typedef enum {
	/* Device types */
	XPM_NODETYPE_DEV_CORE_PMC=1,
	XPM_NODETYPE_DEV_CORE_PSM,
	XPM_NODETYPE_DEV_CORE_APU,
	XPM_NODETYPE_DEV_CORE_RPU,
	XPM_NODETYPE_DEV_OCM,
	XPM_NODETYPE_DEV_TCM,
	XPM_NODETYPE_DEV_L2CACHE,
	XPM_NODETYPE_DEV_DDR,
	XPM_NODETYPE_DEV_PERIPH,
	XPM_NODETYPE_DEV_SOC,
	XPM_NODETYPE_DEV_GT,
	XPM_NODETYPE_DEV_EFUSE,
	XPM_NODETYPE_DEV_XRAM,
	XPM_NODETYPE_DEV_RESERVED_0,
	XPM_NODETYPE_DEV_RESERVED_1,
	XPM_NODETYPE_DEV_HBM,
	XPM_NODETYPE_DEV_VDU,
	XPM_NODETYPE_DEV_GGS,
	XPM_NODETYPE_DEV_PGGS,
	XPM_NODETYPE_DEV_HB_MON,
} XPm_DeviceNodeType;

typedef enum {
	/* Subsystem types */
	XPM_NODETYPE_SUBSYSTEM=0,
} XPm_SubsystemTypes;

typedef enum {
	/* isoaltion types */
	XPM_NODETYPE_ISOLATION=0,
} XPm_IsolationTypes;

typedef enum {
	/* Protection types */
	XPM_NODETYPE_PROTECTION=0,
} XPm_ProtTypes;

typedef enum {
	/* Monitor types */
	XPM_NODETYPE_MONITOR_SYSMON_PMC,
	XPM_NODETYPE_MONITOR_SYSMON_PS,
	XPM_NODETYPE_MONITOR_SYSMON_NPD,
} XPm_MonitorType;

typedef enum {
	/* Regnode types */
	XPM_NODETYPE_REGNODE_GENERIC,
} XPm_RegnodType;

typedef enum {
	/* Miscellaneous types */
	XPM_NODETYPE_MISC=0,
} XPm_MiscType;

/* All node IDs */
typedef enum {
	/* Power nodes */
	XPM_NODEIDX_POWER_MIN,

	/* Power domains */
	XPM_NODEIDX_POWER_PMC,
	XPM_NODEIDX_POWER_LPD,
	XPM_NODEIDX_POWER_FPD,
	XPM_NODEIDX_POWER_NOC,
	XPM_NODEIDX_POWER_ME,
	XPM_NODEIDX_POWER_PLD,
	XPM_NODEIDX_POWER_CPM,
	XPM_NODEIDX_POWER_PL_SYSMON,

	/* LPD power islands */
	XPM_NODEIDX_POWER_RPU0_0,
	XPM_NODEIDX_POWER_GEM0,
	XPM_NODEIDX_POWER_GEM1,
	XPM_NODEIDX_POWER_OCM_0,
	XPM_NODEIDX_POWER_OCM_1,
	XPM_NODEIDX_POWER_OCM_2,
	XPM_NODEIDX_POWER_OCM_3,
	XPM_NODEIDX_POWER_TCM_0_A,
	XPM_NODEIDX_POWER_TCM_0_B,
	XPM_NODEIDX_POWER_TCM_1_A,
	XPM_NODEIDX_POWER_TCM_1_B,

	/* FPD power islands */
	XPM_NODEIDX_POWER_ACPU_0,
	XPM_NODEIDX_POWER_ACPU_1,
	XPM_NODEIDX_POWER_L2_BANK_0,

	/* XRAM power islands */
	XPM_NODEIDX_POWER_XRAM_0,
	XPM_NODEIDX_POWER_XRAM_1,
	XPM_NODEIDX_POWER_XRAM_2,
	XPM_NODEIDX_POWER_XRAM_3,
	XPM_NODEIDX_POWER_XRAM_4,
	XPM_NODEIDX_POWER_XRAM_5,
	XPM_NODEIDX_POWER_XRAM_6,
	XPM_NODEIDX_POWER_XRAM_7,
	XPM_NODEIDX_POWER_XRAM_8,
	XPM_NODEIDX_POWER_XRAM_9,
	XPM_NODEIDX_POWER_XRAM_10,
	XPM_NODEIDX_POWER_XRAM_11,
	XPM_NODEIDX_POWER_XRAM_12,
	XPM_NODEIDX_POWER_XRAM_13,
	XPM_NODEIDX_POWER_XRAM_14,
	XPM_NODEIDX_POWER_XRAM_15,

	/* CPM 5 Power Domain */
	XPM_NODEIDX_POWER_CPM5,

	/* AIE 2 Power Domain */
	XPM_NODEIDX_POWER_ME2,

	/* Power Rails */
	XPM_NODEIDX_POWER_VCCINT_PMC,
	XPM_NODEIDX_POWER_VCCAUX_PMC,
	XPM_NODEIDX_POWER_VCCINT_PSLP,
	XPM_NODEIDX_POWER_VCCINT_PSFP,
	XPM_NODEIDX_POWER_VCCINT_SOC,
	XPM_NODEIDX_POWER_VCCINT_RAM,
	XPM_NODEIDX_POWER_VCCAUX,
	XPM_NODEIDX_POWER_VCCINT_PL,

	XPM_NODEIDX_POWER_MAX,
} XPm_PowerNodeIndex;

typedef enum {
	/* Regulator nodes */
	XPM_NODEIDX_POWER_REGULATOR_0,
	XPM_NODEIDX_POWER_REGULATOR_MAX = 8,
} XPm_RegulatorNodeIndex;

typedef enum {
	XPM_NODEIDX_CLK_MIN,
	XPM_NODEIDX_CLK_PMC_PLL,
	XPM_NODEIDX_CLK_APU_PLL,
	XPM_NODEIDX_CLK_RPU_PLL,
	XPM_NODEIDX_CLK_CPM_PLL,
	XPM_NODEIDX_CLK_NOC_PLL,
	XPM_NODEIDX_CLK_PLL_MAX,
	XPM_NODEIDX_CLK_PMC_PRESRC,
	XPM_NODEIDX_CLK_PMC_POSTCLK,
	XPM_NODEIDX_CLK_PMC_PLL_OUT,
	XPM_NODEIDX_CLK_PPLL,
	XPM_NODEIDX_CLK_NOC_PRESRC,
	XPM_NODEIDX_CLK_NOC_POSTCLK,
	XPM_NODEIDX_CLK_NOC_PLL_OUT,
	XPM_NODEIDX_CLK_NPLL,
	XPM_NODEIDX_CLK_APU_PRESRC,
	XPM_NODEIDX_CLK_APU_POSTCLK,
	XPM_NODEIDX_CLK_APU_PLL_OUT,
	XPM_NODEIDX_CLK_APLL,
	XPM_NODEIDX_CLK_RPU_PRESRC,
	XPM_NODEIDX_CLK_RPU_POSTCLK,
	XPM_NODEIDX_CLK_RPU_PLL_OUT,
	XPM_NODEIDX_CLK_RPLL,
	XPM_NODEIDX_CLK_CPM_PRESRC,
	XPM_NODEIDX_CLK_CPM_POSTCLK,
	XPM_NODEIDX_CLK_CPM_PLL_OUT,
	XPM_NODEIDX_CLK_CPLL,
	XPM_NODEIDX_CLK_PPLL_TO_XPD,
	XPM_NODEIDX_CLK_NPLL_TO_XPD,
	XPM_NODEIDX_CLK_APLL_TO_XPD,
	XPM_NODEIDX_CLK_RPLL_TO_XPD,
	XPM_NODEIDX_CLK_EFUSE_REF,
	XPM_NODEIDX_CLK_SYSMON_REF,
	XPM_NODEIDX_CLK_IRO_SUSPEND_REF,
	XPM_NODEIDX_CLK_USB_SUSPEND,
	XPM_NODEIDX_CLK_SWITCH_TIMEOUT,
	XPM_NODEIDX_CLK_RCLK_PMC,
	XPM_NODEIDX_CLK_RCLK_LPD,
	XPM_NODEIDX_CLK_WDT,
	XPM_NODEIDX_CLK_TTC0,
	XPM_NODEIDX_CLK_TTC1,
	XPM_NODEIDX_CLK_TTC2,
	XPM_NODEIDX_CLK_TTC3,
	XPM_NODEIDX_CLK_GEM_TSU,
	XPM_NODEIDX_CLK_GEM_TSU_LB,
	XPM_NODEIDX_CLK_MUXED_IRO_DIV2,
	XPM_NODEIDX_CLK_MUXED_IRO_DIV4,
	XPM_NODEIDX_CLK_PSM_REF,
	XPM_NODEIDX_CLK_GEM0_RX,
	XPM_NODEIDX_CLK_GEM0_TX,
	XPM_NODEIDX_CLK_GEM1_RX,
	XPM_NODEIDX_CLK_GEM1_TX,
	XPM_NODEIDX_CLK_CPM_CORE_REF,
	XPM_NODEIDX_CLK_CPM_LSBUS_REF,
	XPM_NODEIDX_CLK_CPM_DBG_REF,
	XPM_NODEIDX_CLK_CPM_AUX0_REF,
	XPM_NODEIDX_CLK_CPM_AUX1_REF,
	XPM_NODEIDX_CLK_QSPI_REF,
	XPM_NODEIDX_CLK_OSPI_REF,
	XPM_NODEIDX_CLK_SDIO0_REF,
	XPM_NODEIDX_CLK_SDIO1_REF,
	XPM_NODEIDX_CLK_PMC_LSBUS_REF,
	XPM_NODEIDX_CLK_I2C_REF,
	XPM_NODEIDX_CLK_TEST_PATTERN_REF,
	XPM_NODEIDX_CLK_DFT_OSC_REF,
	XPM_NODEIDX_CLK_PMC_PL0_REF,
	XPM_NODEIDX_CLK_PMC_PL1_REF,
	XPM_NODEIDX_CLK_PMC_PL2_REF,
	XPM_NODEIDX_CLK_PMC_PL3_REF,
	XPM_NODEIDX_CLK_CFU_REF,
	XPM_NODEIDX_CLK_SPARE_REF,
	XPM_NODEIDX_CLK_NPI_REF,
	XPM_NODEIDX_CLK_HSM0_REF,
	XPM_NODEIDX_CLK_HSM1_REF,
	XPM_NODEIDX_CLK_SD_DLL_REF,
	XPM_NODEIDX_CLK_FPD_TOP_SWITCH,
	XPM_NODEIDX_CLK_FPD_LSBUS,
	XPM_NODEIDX_CLK_ACPU,
	XPM_NODEIDX_CLK_DBG_TRACE,
	XPM_NODEIDX_CLK_DBG_FPD,
	XPM_NODEIDX_CLK_LPD_TOP_SWITCH,
	XPM_NODEIDX_CLK_ADMA,
	XPM_NODEIDX_CLK_LPD_LSBUS,
	XPM_NODEIDX_CLK_CPU_R5,
	XPM_NODEIDX_CLK_CPU_R5_CORE,
	XPM_NODEIDX_CLK_CPU_R5_OCM,
	XPM_NODEIDX_CLK_CPU_R5_OCM2,
	XPM_NODEIDX_CLK_IOU_SWITCH,
	XPM_NODEIDX_CLK_GEM0_REF,
	XPM_NODEIDX_CLK_GEM1_REF,
	XPM_NODEIDX_CLK_GEM_TSU_REF,
	XPM_NODEIDX_CLK_USB0_BUS_REF,
	XPM_NODEIDX_CLK_UART0_REF,
	XPM_NODEIDX_CLK_UART1_REF,
	XPM_NODEIDX_CLK_SPI0_REF,
	XPM_NODEIDX_CLK_SPI1_REF,
	XPM_NODEIDX_CLK_CAN0_REF,
	XPM_NODEIDX_CLK_CAN1_REF,
	XPM_NODEIDX_CLK_I2C0_REF,
	XPM_NODEIDX_CLK_I2C1_REF,
	XPM_NODEIDX_CLK_DBG_LPD,
	XPM_NODEIDX_CLK_TIMESTAMP_REF,
	XPM_NODEIDX_CLK_DBG_TSTMP,
	XPM_NODEIDX_CLK_CPM_TOPSW_REF,
	XPM_NODEIDX_CLK_USB3_DUAL_REF,
	XPM_NODEIDX_CLK_OUTCLK_MAX,
	XPM_NODEIDX_CLK_REF_CLK,
	XPM_NODEIDX_CLK_PL_ALT_REF_CLK,
	XPM_NODEIDX_CLK_MUXED_IRO,
	XPM_NODEIDX_CLK_PL_EXT,
	XPM_NODEIDX_CLK_PL_LB,
	XPM_NODEIDX_CLK_MIO_50_OR_51,
	XPM_NODEIDX_CLK_MIO_24_OR_25,
	XPM_NODEIDX_CLK_EMIO,
	XPM_NODEIDX_CLK_MIO,
	XPM_NODEIDX_CLK_REF_MAX,
	XPM_NODEIDX_CLK_XRAM_MAIN_CLK,
	XPM_NODEIDX_CLK_XRAM_APB,
	XPM_NODEIDX_CLK_PL_PMC_ALT_REF_CLK,
	XPM_NODEIDX_CLK_PL_LPD_ALT_REF_CLK,
	XPM_NODEIDX_CLK_PL_FPD_ALT_REF_CLK,
	XPM_NODEIDX_CLK_CPM_DMA_ALT_REF,
	XPM_NODEIDX_CLK_CPM_AUX2_REF,

	/* Keep it last */
	XPM_NODEIDX_CLK_MAX,
} XPm_ClockNodeIndex;

typedef enum {
	/* Reset nodes */
	XPM_NODEIDX_RST_MIN,
	XPM_NODEIDX_RST_PMC_POR,
	XPM_NODEIDX_RST_PMC,
	XPM_NODEIDX_RST_PS_POR,
	XPM_NODEIDX_RST_PL_POR,
	XPM_NODEIDX_RST_NOC_POR,
	XPM_NODEIDX_RST_FPD_POR,
	XPM_NODEIDX_RST_ACPU_0_POR,
	XPM_NODEIDX_RST_ACPU_1_POR,
	XPM_NODEIDX_RST_OCM2_POR,
	XPM_NODEIDX_RST_PS_SRST,
	XPM_NODEIDX_RST_PL_SRST,
	XPM_NODEIDX_RST_NOC,
	XPM_NODEIDX_RST_NPI,
	XPM_NODEIDX_RST_SYS_RST_1,
	XPM_NODEIDX_RST_SYS_RST_2,
	XPM_NODEIDX_RST_SYS_RST_3,
	XPM_NODEIDX_RST_FPD,
	XPM_NODEIDX_RST_PL0,
	XPM_NODEIDX_RST_PL1,
	XPM_NODEIDX_RST_PL2,
	XPM_NODEIDX_RST_PL3,
	XPM_NODEIDX_RST_APU,
	XPM_NODEIDX_RST_ACPU_0,
	XPM_NODEIDX_RST_ACPU_1,
	XPM_NODEIDX_RST_ACPU_L2,
	XPM_NODEIDX_RST_ACPU_GIC,
	XPM_NODEIDX_RST_RPU_ISLAND,
	XPM_NODEIDX_RST_RPU_AMBA,
	XPM_NODEIDX_RST_R5_0,
	XPM_NODEIDX_RST_R5_1,
	XPM_NODEIDX_RST_SYSMON_PMC_SEQ_RST,
	XPM_NODEIDX_RST_SYSMON_PMC_CFG_RST,
	XPM_NODEIDX_RST_SYSMON_FPD_CFG_RST,
	XPM_NODEIDX_RST_SYSMON_FPD_SEQ_RST,
	XPM_NODEIDX_RST_SYSMON_LPD,
	XPM_NODEIDX_RST_PDMA_RST1,
	XPM_NODEIDX_RST_PDMA_RST0,
	XPM_NODEIDX_RST_ADMA,
	XPM_NODEIDX_RST_TIMESTAMP,
	XPM_NODEIDX_RST_OCM,
	XPM_NODEIDX_RST_OCM2_RST,
	XPM_NODEIDX_RST_IPI,
	XPM_NODEIDX_RST_SBI,
	XPM_NODEIDX_RST_LPD,
	XPM_NODEIDX_RST_QSPI,
	XPM_NODEIDX_RST_OSPI,
	XPM_NODEIDX_RST_SDIO_0,
	XPM_NODEIDX_RST_SDIO_1,
	XPM_NODEIDX_RST_I2C_PMC,
	XPM_NODEIDX_RST_GPIO_PMC,
	XPM_NODEIDX_RST_GEM_0,
	XPM_NODEIDX_RST_GEM_1,
	XPM_NODEIDX_RST_SPARE,
	XPM_NODEIDX_RST_USB_0,
	XPM_NODEIDX_RST_UART_0,
	XPM_NODEIDX_RST_UART_1,
	XPM_NODEIDX_RST_SPI_0,
	XPM_NODEIDX_RST_SPI_1,
	XPM_NODEIDX_RST_CAN_FD_0,
	XPM_NODEIDX_RST_CAN_FD_1,
	XPM_NODEIDX_RST_I2C_0,
	XPM_NODEIDX_RST_I2C_1,
	XPM_NODEIDX_RST_GPIO_LPD,
	XPM_NODEIDX_RST_TTC_0,
	XPM_NODEIDX_RST_TTC_1,
	XPM_NODEIDX_RST_TTC_2,
	XPM_NODEIDX_RST_TTC_3,
	XPM_NODEIDX_RST_SWDT_FPD,
	XPM_NODEIDX_RST_SWDT_LPD,
	XPM_NODEIDX_RST_USB,
	XPM_NODEIDX_RST_DPC,
	XPM_NODEIDX_RST_PMCDBG,
	XPM_NODEIDX_RST_DBG_TRACE,
	XPM_NODEIDX_RST_DBG_FPD,
	XPM_NODEIDX_RST_DBG_TSTMP,
	XPM_NODEIDX_RST_RPU0_DBG,
	XPM_NODEIDX_RST_RPU1_DBG,
	XPM_NODEIDX_RST_HSDP,
	XPM_NODEIDX_RST_DBG_LPD,
	XPM_NODEIDX_RST_CPM_POR,
	XPM_NODEIDX_RST_CPM,
	XPM_NODEIDX_RST_CPMDBG,
	XPM_NODEIDX_RST_PCIE_CFG,
	XPM_NODEIDX_RST_PCIE_CORE0,
	XPM_NODEIDX_RST_PCIE_CORE1,
	XPM_NODEIDX_RST_PCIE_DMA,
	XPM_NODEIDX_RST_CMN,
	XPM_NODEIDX_RST_L2_0,
	XPM_NODEIDX_RST_L2_1,
	XPM_NODEIDX_RST_ADDR_REMAP,
	XPM_NODEIDX_RST_CPI0,
	XPM_NODEIDX_RST_CPI1,
	XPM_NODEIDX_RST_XRAM,
	XPM_NODEIDX_RST_AIE_ARRAY,
	XPM_NODEIDX_RST_AIE_SHIM,
	XPM_NODEIDX_RST_PCIE_DMA1,

	XPM_NODEIDX_RST_MAX,
} XPm_ResetNodeIndex;

/*TODO: Remove hard-coding of NMU_MIN, NMU_MAX, NSU_MIN, NSU_MAX macros*/
typedef enum {
	/* MEMIC nodes */
	XPM_NODEIDX_MEMIC_NMU_0,
	XPM_NODEIDX_MEMIC_NMU_MIN1 = XPM_NODEIDX_MEMIC_NMU_0,

	XPM_NODEIDX_MEMIC_NMU_1,
	XPM_NODEIDX_MEMIC_NMU_2,
	XPM_NODEIDX_MEMIC_NMU_3,
	XPM_NODEIDX_MEMIC_NMU_4,
	XPM_NODEIDX_MEMIC_NMU_5,
	XPM_NODEIDX_MEMIC_NMU_6,
	XPM_NODEIDX_MEMIC_NMU_7,
	XPM_NODEIDX_MEMIC_NMU_8,
	XPM_NODEIDX_MEMIC_NMU_9,
	XPM_NODEIDX_MEMIC_NMU_10,
	XPM_NODEIDX_MEMIC_NMU_11,
	XPM_NODEIDX_MEMIC_NMU_12,
	XPM_NODEIDX_MEMIC_NMU_13,
	XPM_NODEIDX_MEMIC_NMU_14,
	XPM_NODEIDX_MEMIC_NMU_15,
	XPM_NODEIDX_MEMIC_NMU_16,
	XPM_NODEIDX_MEMIC_NMU_17,
	XPM_NODEIDX_MEMIC_NMU_18,
	XPM_NODEIDX_MEMIC_NMU_19,
	XPM_NODEIDX_MEMIC_NMU_20,
	XPM_NODEIDX_MEMIC_NMU_21,
	XPM_NODEIDX_MEMIC_NMU_22,
	XPM_NODEIDX_MEMIC_NMU_23,
	XPM_NODEIDX_MEMIC_NMU_24,
	XPM_NODEIDX_MEMIC_NMU_25,
	XPM_NODEIDX_MEMIC_NMU_26,
	XPM_NODEIDX_MEMIC_NMU_27,
	XPM_NODEIDX_MEMIC_NMU_28,
	XPM_NODEIDX_MEMIC_NMU_29,
	XPM_NODEIDX_MEMIC_NMU_30,
	XPM_NODEIDX_MEMIC_NMU_31,
	XPM_NODEIDX_MEMIC_NMU_32,
	XPM_NODEIDX_MEMIC_NMU_33,
	XPM_NODEIDX_MEMIC_NMU_34,
	XPM_NODEIDX_MEMIC_NMU_35,
	XPM_NODEIDX_MEMIC_NMU_36,
	XPM_NODEIDX_MEMIC_NMU_37,
	XPM_NODEIDX_MEMIC_NMU_38,
	XPM_NODEIDX_MEMIC_NMU_39,
	XPM_NODEIDX_MEMIC_NMU_40,
	XPM_NODEIDX_MEMIC_NMU_41,
	XPM_NODEIDX_MEMIC_NMU_42,
	XPM_NODEIDX_MEMIC_NMU_43,
	XPM_NODEIDX_MEMIC_NMU_44,
	XPM_NODEIDX_MEMIC_NMU_45,
	XPM_NODEIDX_MEMIC_NMU_46,
	XPM_NODEIDX_MEMIC_NMU_47,
	XPM_NODEIDX_MEMIC_NMU_48,
	XPM_NODEIDX_MEMIC_NMU_49,
	XPM_NODEIDX_MEMIC_NMU_50,
	XPM_NODEIDX_MEMIC_NMU_51,
	XPM_NODEIDX_MEMIC_NMU_52,
	XPM_NODEIDX_MEMIC_NMU_53,
	XPM_NODEIDX_MEMIC_NMU_MAX1 = XPM_NODEIDX_MEMIC_NMU_53,

	XPM_NODEIDX_MEMIC_NSU_0,
	XPM_NODEIDX_MEMIC_NSU_MIN1 = XPM_NODEIDX_MEMIC_NSU_0,

	XPM_NODEIDX_MEMIC_NSU_1,
	XPM_NODEIDX_MEMIC_NSU_2,
	XPM_NODEIDX_MEMIC_NSU_3,
	XPM_NODEIDX_MEMIC_NSU_4,
	XPM_NODEIDX_MEMIC_NSU_5,
	XPM_NODEIDX_MEMIC_NSU_6,
	XPM_NODEIDX_MEMIC_NSU_7,
	XPM_NODEIDX_MEMIC_NSU_8,
	XPM_NODEIDX_MEMIC_NSU_9,
	XPM_NODEIDX_MEMIC_NSU_10,
	XPM_NODEIDX_MEMIC_NSU_11,
	XPM_NODEIDX_MEMIC_NSU_12,
	XPM_NODEIDX_MEMIC_NSU_13,
	XPM_NODEIDX_MEMIC_NSU_14,
	XPM_NODEIDX_MEMIC_NSU_15,
	XPM_NODEIDX_MEMIC_NSU_16,
	XPM_NODEIDX_MEMIC_NSU_17,
	XPM_NODEIDX_MEMIC_NSU_18,
	XPM_NODEIDX_MEMIC_NSU_19,
	XPM_NODEIDX_MEMIC_NSU_20,
	XPM_NODEIDX_MEMIC_NSU_21,
	XPM_NODEIDX_MEMIC_NSU_22,
	XPM_NODEIDX_MEMIC_NSU_23,
	XPM_NODEIDX_MEMIC_NSU_24,
	XPM_NODEIDX_MEMIC_NSU_25,
	XPM_NODEIDX_MEMIC_NSU_26,
	XPM_NODEIDX_MEMIC_NSU_27,
	XPM_NODEIDX_MEMIC_NSU_28,
	XPM_NODEIDX_MEMIC_NSU_29,
	XPM_NODEIDX_MEMIC_NSU_30,
	XPM_NODEIDX_MEMIC_NSU_31,
	XPM_NODEIDX_MEMIC_NSU_32,
	XPM_NODEIDX_MEMIC_NSU_33,
	XPM_NODEIDX_MEMIC_NSU_34,
	XPM_NODEIDX_MEMIC_NSU_35,
	XPM_NODEIDX_MEMIC_NSU_36,
	XPM_NODEIDX_MEMIC_NSU_37,
	XPM_NODEIDX_MEMIC_NSU_38,
	XPM_NODEIDX_MEMIC_NSU_39,
	XPM_NODEIDX_MEMIC_NSU_40,
	XPM_NODEIDX_MEMIC_NSU_41,
	XPM_NODEIDX_MEMIC_NSU_42,
	XPM_NODEIDX_MEMIC_NSU_43,
	XPM_NODEIDX_MEMIC_NSU_44,
	XPM_NODEIDX_MEMIC_NSU_45,
	XPM_NODEIDX_MEMIC_NSU_46,
	XPM_NODEIDX_MEMIC_NSU_47,
	XPM_NODEIDX_MEMIC_NSU_48,
	XPM_NODEIDX_MEMIC_NSU_49,
	XPM_NODEIDX_MEMIC_NSU_MAX1 = XPM_NODEIDX_MEMIC_NSU_49,

	XPM_NODEIDX_MEMIC_NMU_54,
	XPM_NODEIDX_MEMIC_NMU_MIN2 = XPM_NODEIDX_MEMIC_NMU_54,

	XPM_NODEIDX_MEMIC_NMU_55,
	XPM_NODEIDX_MEMIC_NMU_56,
	XPM_NODEIDX_MEMIC_NMU_57,
	XPM_NODEIDX_MEMIC_NMU_58,
	XPM_NODEIDX_MEMIC_NMU_59,
	XPM_NODEIDX_MEMIC_NMU_60,
	XPM_NODEIDX_MEMIC_NMU_61,
	XPM_NODEIDX_MEMIC_NMU_62,
	XPM_NODEIDX_MEMIC_NMU_63,
	XPM_NODEIDX_MEMIC_NMU_64,
	XPM_NODEIDX_MEMIC_NMU_65,
	XPM_NODEIDX_MEMIC_NMU_66,
	XPM_NODEIDX_MEMIC_NMU_67,
	XPM_NODEIDX_MEMIC_NMU_68,
	XPM_NODEIDX_MEMIC_NMU_69,
	XPM_NODEIDX_MEMIC_NMU_70,
	XPM_NODEIDX_MEMIC_NMU_71,
	XPM_NODEIDX_MEMIC_NMU_72,
	XPM_NODEIDX_MEMIC_NMU_73,
	XPM_NODEIDX_MEMIC_NMU_74,
	XPM_NODEIDX_MEMIC_NMU_75,
	XPM_NODEIDX_MEMIC_NMU_76,
	XPM_NODEIDX_MEMIC_NMU_77,
	XPM_NODEIDX_MEMIC_NMU_78,
	XPM_NODEIDX_MEMIC_NMU_79,
	XPM_NODEIDX_MEMIC_NMU_80,
	XPM_NODEIDX_MEMIC_NMU_81,
	XPM_NODEIDX_MEMIC_NMU_82,
	XPM_NODEIDX_MEMIC_NMU_83,
	XPM_NODEIDX_MEMIC_NMU_84,
	XPM_NODEIDX_MEMIC_NMU_85,
	XPM_NODEIDX_MEMIC_NMU_86,
	XPM_NODEIDX_MEMIC_NMU_87,
	XPM_NODEIDX_MEMIC_NMU_88,
	XPM_NODEIDX_MEMIC_NMU_89,
	XPM_NODEIDX_MEMIC_NMU_90,
	XPM_NODEIDX_MEMIC_NMU_91,
	XPM_NODEIDX_MEMIC_NMU_92,
	XPM_NODEIDX_MEMIC_NMU_93,
	XPM_NODEIDX_MEMIC_NMU_94,
	XPM_NODEIDX_MEMIC_NMU_95,
	XPM_NODEIDX_MEMIC_NMU_96,
	XPM_NODEIDX_MEMIC_NMU_97,
	XPM_NODEIDX_MEMIC_NMU_MAX2 = XPM_NODEIDX_MEMIC_NMU_97,

	XPM_NODEIDX_MEMIC_NSU_50,
	XPM_NODEIDX_MEMIC_NSU_MIN2 = XPM_NODEIDX_MEMIC_NSU_50,

	XPM_NODEIDX_MEMIC_NSU_51,
	XPM_NODEIDX_MEMIC_NSU_52,
	XPM_NODEIDX_MEMIC_NSU_53,
	XPM_NODEIDX_MEMIC_NSU_54,
	XPM_NODEIDX_MEMIC_NSU_55,
	XPM_NODEIDX_MEMIC_NSU_56,
	XPM_NODEIDX_MEMIC_NSU_57,
	XPM_NODEIDX_MEMIC_NSU_MAX2 = XPM_NODEIDX_MEMIC_NSU_57,

	XPM_NODEIDX_MEMIC_MAX,
} XPm_MemicNodeIndex;

typedef enum {
	/* MIO nodes */
	XPM_NODEIDX_STMIC_MIN,

	XPM_NODEIDX_STMIC_LMIO_0,
	XPM_NODEIDX_STMIC_LMIO_1,
	XPM_NODEIDX_STMIC_LMIO_2,
	XPM_NODEIDX_STMIC_LMIO_3,
	XPM_NODEIDX_STMIC_LMIO_4,
	XPM_NODEIDX_STMIC_LMIO_5,
	XPM_NODEIDX_STMIC_LMIO_6,
	XPM_NODEIDX_STMIC_LMIO_7,
	XPM_NODEIDX_STMIC_LMIO_8,
	XPM_NODEIDX_STMIC_LMIO_9,
	XPM_NODEIDX_STMIC_LMIO_10,
	XPM_NODEIDX_STMIC_LMIO_11,
	XPM_NODEIDX_STMIC_LMIO_12,
	XPM_NODEIDX_STMIC_LMIO_13,
	XPM_NODEIDX_STMIC_LMIO_14,
	XPM_NODEIDX_STMIC_LMIO_15,
	XPM_NODEIDX_STMIC_LMIO_16,
	XPM_NODEIDX_STMIC_LMIO_17,
	XPM_NODEIDX_STMIC_LMIO_18,
	XPM_NODEIDX_STMIC_LMIO_19,
	XPM_NODEIDX_STMIC_LMIO_20,
	XPM_NODEIDX_STMIC_LMIO_21,
	XPM_NODEIDX_STMIC_LMIO_22,
	XPM_NODEIDX_STMIC_LMIO_23,
	XPM_NODEIDX_STMIC_LMIO_24,
	XPM_NODEIDX_STMIC_LMIO_25,
	XPM_NODEIDX_STMIC_PMIO_0,
	XPM_NODEIDX_STMIC_PMIO_1,
	XPM_NODEIDX_STMIC_PMIO_2,
	XPM_NODEIDX_STMIC_PMIO_3,
	XPM_NODEIDX_STMIC_PMIO_4,
	XPM_NODEIDX_STMIC_PMIO_5,
	XPM_NODEIDX_STMIC_PMIO_6,
	XPM_NODEIDX_STMIC_PMIO_7,
	XPM_NODEIDX_STMIC_PMIO_8,
	XPM_NODEIDX_STMIC_PMIO_9,
	XPM_NODEIDX_STMIC_PMIO_10,
	XPM_NODEIDX_STMIC_PMIO_11,
	XPM_NODEIDX_STMIC_PMIO_12,
	XPM_NODEIDX_STMIC_PMIO_13,
	XPM_NODEIDX_STMIC_PMIO_14,
	XPM_NODEIDX_STMIC_PMIO_15,
	XPM_NODEIDX_STMIC_PMIO_16,
	XPM_NODEIDX_STMIC_PMIO_17,
	XPM_NODEIDX_STMIC_PMIO_18,
	XPM_NODEIDX_STMIC_PMIO_19,
	XPM_NODEIDX_STMIC_PMIO_20,
	XPM_NODEIDX_STMIC_PMIO_21,
	XPM_NODEIDX_STMIC_PMIO_22,
	XPM_NODEIDX_STMIC_PMIO_23,
	XPM_NODEIDX_STMIC_PMIO_24,
	XPM_NODEIDX_STMIC_PMIO_25,
	XPM_NODEIDX_STMIC_PMIO_26,
	XPM_NODEIDX_STMIC_PMIO_27,
	XPM_NODEIDX_STMIC_PMIO_28,
	XPM_NODEIDX_STMIC_PMIO_29,
	XPM_NODEIDX_STMIC_PMIO_30,
	XPM_NODEIDX_STMIC_PMIO_31,
	XPM_NODEIDX_STMIC_PMIO_32,
	XPM_NODEIDX_STMIC_PMIO_33,
	XPM_NODEIDX_STMIC_PMIO_34,
	XPM_NODEIDX_STMIC_PMIO_35,
	XPM_NODEIDX_STMIC_PMIO_36,
	XPM_NODEIDX_STMIC_PMIO_37,
	XPM_NODEIDX_STMIC_PMIO_38,
	XPM_NODEIDX_STMIC_PMIO_39,
	XPM_NODEIDX_STMIC_PMIO_40,
	XPM_NODEIDX_STMIC_PMIO_41,
	XPM_NODEIDX_STMIC_PMIO_42,
	XPM_NODEIDX_STMIC_PMIO_43,
	XPM_NODEIDX_STMIC_PMIO_44,
	XPM_NODEIDX_STMIC_PMIO_45,
	XPM_NODEIDX_STMIC_PMIO_46,
	XPM_NODEIDX_STMIC_PMIO_47,
	XPM_NODEIDX_STMIC_PMIO_48,
	XPM_NODEIDX_STMIC_PMIO_49,
	XPM_NODEIDX_STMIC_PMIO_50,
	XPM_NODEIDX_STMIC_PMIO_51,

	XPM_NODEIDX_STMIC_MAX,
} XPm_StmicNodeIndex;

typedef enum {
	/* Device nodes */
	XPM_NODEIDX_DEV_MIN,

	/* Processor devices */
	XPM_NODEIDX_DEV_PMC_PROC,
	XPM_NODEIDX_DEV_PSM_PROC,
	XPM_NODEIDX_DEV_ACPU_0,
	XPM_NODEIDX_DEV_ACPU_1,
	XPM_NODEIDX_DEV_RPU0_0,
	XPM_NODEIDX_DEV_RPU0_1,

	/* Memory devices */
	XPM_NODEIDX_DEV_OCM_0,
	XPM_NODEIDX_DEV_OCM_1,
	XPM_NODEIDX_DEV_OCM_2,
	XPM_NODEIDX_DEV_OCM_3,
	XPM_NODEIDX_DEV_TCM_0_A,
	XPM_NODEIDX_DEV_TCM_0_B,
	XPM_NODEIDX_DEV_TCM_1_A,
	XPM_NODEIDX_DEV_TCM_1_B,
	XPM_NODEIDX_DEV_L2_BANK_0,
	XPM_NODEIDX_DEV_DDR_0,
	XPM_NODEIDX_DEV_DDR_1,
	XPM_NODEIDX_DEV_DDR_2,
	XPM_NODEIDX_DEV_DDR_3,
	XPM_NODEIDX_DEV_DDR_4,
	XPM_NODEIDX_DEV_DDR_5,
	XPM_NODEIDX_DEV_DDR_6,
	XPM_NODEIDX_DEV_DDR_7,

	/* LPD Peripheral devices */
	XPM_NODEIDX_DEV_USB_0,
	XPM_NODEIDX_DEV_GEM_0,
	XPM_NODEIDX_DEV_GEM_1,
	XPM_NODEIDX_DEV_SPI_0,
	XPM_NODEIDX_DEV_SPI_1,
	XPM_NODEIDX_DEV_I2C_0,
	XPM_NODEIDX_DEV_I2C_1,
	XPM_NODEIDX_DEV_CAN_FD_0,
	XPM_NODEIDX_DEV_CAN_FD_1,
	XPM_NODEIDX_DEV_UART_0,
	XPM_NODEIDX_DEV_UART_1,
	XPM_NODEIDX_DEV_GPIO,
	XPM_NODEIDX_DEV_TTC_0,
	XPM_NODEIDX_DEV_TTC_1,
	XPM_NODEIDX_DEV_TTC_2,
	XPM_NODEIDX_DEV_TTC_3,
	XPM_NODEIDX_DEV_SWDT_LPD,

	/* FPD Peripheral devices */
	XPM_NODEIDX_DEV_SWDT_FPD,

	/* PMC Peripheral devices */
	XPM_NODEIDX_DEV_OSPI,
	XPM_NODEIDX_DEV_QSPI,
	XPM_NODEIDX_DEV_GPIO_PMC,
	XPM_NODEIDX_DEV_I2C_PMC,
	XPM_NODEIDX_DEV_SDIO_0,
	XPM_NODEIDX_DEV_SDIO_1,
	XPM_NODEIDX_DEV_PL_0,
	XPM_NODEIDX_DEV_PL_1,
	XPM_NODEIDX_DEV_PL_2,
	XPM_NODEIDX_DEV_PL_3,
	XPM_NODEIDX_DEV_RTC,
	XPM_NODEIDX_DEV_ADMA_0,
	XPM_NODEIDX_DEV_ADMA_1,
	XPM_NODEIDX_DEV_ADMA_2,
	XPM_NODEIDX_DEV_ADMA_3,
	XPM_NODEIDX_DEV_ADMA_4,
	XPM_NODEIDX_DEV_ADMA_5,
	XPM_NODEIDX_DEV_ADMA_6,
	XPM_NODEIDX_DEV_ADMA_7,
	XPM_NODEIDX_DEV_IPI_0,
	XPM_NODEIDX_DEV_IPI_1,
	XPM_NODEIDX_DEV_IPI_2,
	XPM_NODEIDX_DEV_IPI_3,
	XPM_NODEIDX_DEV_IPI_4,
	XPM_NODEIDX_DEV_IPI_5,
	XPM_NODEIDX_DEV_IPI_6,

	/* Entire SoC */
	XPM_NODEIDX_DEV_SOC,

	/* DDR memory controllers */
	XPM_NODEIDX_DEV_DDRMC_0,
	XPM_NODEIDX_DEV_DDRMC_1,
	XPM_NODEIDX_DEV_DDRMC_2,
	XPM_NODEIDX_DEV_DDRMC_3,

	/* GT devices */
	XPM_NODEIDX_DEV_GT_0,
	XPM_NODEIDX_DEV_GT_1,
	XPM_NODEIDX_DEV_GT_2,
	XPM_NODEIDX_DEV_GT_3,
	XPM_NODEIDX_DEV_GT_4,
	XPM_NODEIDX_DEV_GT_5,
	XPM_NODEIDX_DEV_GT_6,
	XPM_NODEIDX_DEV_GT_7,
	XPM_NODEIDX_DEV_GT_8,
	XPM_NODEIDX_DEV_GT_9,
	XPM_NODEIDX_DEV_GT_10,

	XPM_NODEIDX_DEV_EFUSE_CACHE,
	XPM_NODEIDX_DEV_AMS_ROOT,

	/* XRAM devices */
	XPM_NODEIDX_DEV_XRAM_0,
	XPM_NODEIDX_DEV_XRAM_1,
	XPM_NODEIDX_DEV_XRAM_2,
	XPM_NODEIDX_DEV_XRAM_3,
	XPM_NODEIDX_DEV_XRAM_4,
	XPM_NODEIDX_DEV_XRAM_5,
	XPM_NODEIDX_DEV_XRAM_6,
	XPM_NODEIDX_DEV_XRAM_7,
	XPM_NODEIDX_DEV_XRAM_8,
	XPM_NODEIDX_DEV_XRAM_9,
	XPM_NODEIDX_DEV_XRAM_10,
	XPM_NODEIDX_DEV_XRAM_11,
	XPM_NODEIDX_DEV_XRAM_12,
	XPM_NODEIDX_DEV_XRAM_13,
	XPM_NODEIDX_DEV_XRAM_14,
	XPM_NODEIDX_DEV_XRAM_15,

	/* GTM devices */
	XPM_NODEIDX_DEV_GTM_0,
	XPM_NODEIDX_DEV_GTM_1,
	XPM_NODEIDX_DEV_GTM_2,
	XPM_NODEIDX_DEV_GTM_3,
	XPM_NODEIDX_DEV_GTM_4,

	/* GTYP devices */
	XPM_NODEIDX_DEV_GTYP_0,
	XPM_NODEIDX_DEV_GTYP_1,
	XPM_NODEIDX_DEV_GTYP_2,
	XPM_NODEIDX_DEV_GTYP_CPM5_0,
	XPM_NODEIDX_DEV_GTYP_CPM5_1,
	XPM_NODEIDX_DEV_GTYP_CPM5_2,
	XPM_NODEIDX_DEV_GTYP_CPM5_3,

	XPM_NODEIDX_DEV_AIE,

	XPM_NODEIDX_DEV_IPI_PMC,

	/* More GTM devices */
	XPM_NODEIDX_DEV_GTM_5,
	XPM_NODEIDX_DEV_GTM_6,
	XPM_NODEIDX_DEV_GTM_7,
	XPM_NODEIDX_DEV_GTM_8,
	XPM_NODEIDX_DEV_GTM_9,

	/* HBMMC devices */
	XPM_NODEIDX_DEV_HBMMC_0,
	XPM_NODEIDX_DEV_HBMMC_1,
	XPM_NODEIDX_DEV_HBMMC_2,
	XPM_NODEIDX_DEV_HBMMC_3,
	XPM_NODEIDX_DEV_HBMMC_4,
	XPM_NODEIDX_DEV_HBMMC_5,
	XPM_NODEIDX_DEV_HBMMC_6,
	XPM_NODEIDX_DEV_HBMMC_7,
	XPM_NODEIDX_DEV_HBMMC_8,
	XPM_NODEIDX_DEV_HBMMC_9,
	XPM_NODEIDX_DEV_HBMMC_10,
	XPM_NODEIDX_DEV_HBMMC_11,
	XPM_NODEIDX_DEV_HBMMC_12,
	XPM_NODEIDX_DEV_HBMMC_13,
	XPM_NODEIDX_DEV_HBMMC_14,
	XPM_NODEIDX_DEV_HBMMC_15,

	/* More GTYP devices */
	XPM_NODEIDX_DEV_GTYP_3,
	XPM_NODEIDX_DEV_GTYP_4,
	XPM_NODEIDX_DEV_GTYP_5,
	XPM_NODEIDX_DEV_GTYP_6,
	XPM_NODEIDX_DEV_GTYP_7,
	XPM_NODEIDX_DEV_GTYP_8,
	XPM_NODEIDX_DEV_GTYP_9,

	/* HBM Memory */
	XPM_NODEIDX_DEV_HBM_0,

	/* VDU devices */
	XPM_NODEIDX_DEV_VDU_0,
	XPM_NODEIDX_DEV_VDU_1,
	XPM_NODEIDX_DEV_VDU_2,
	XPM_NODEIDX_DEV_VDU_3,

	/* More GTM devices */
	XPM_NODEIDX_DEV_GTM_10,
	XPM_NODEIDX_DEV_GTM_11,
	XPM_NODEIDX_DEV_GTM_12,
	XPM_NODEIDX_DEV_GTM_13,
	XPM_NODEIDX_DEV_GTM_14,
	XPM_NODEIDX_DEV_GTM_15,
	XPM_NODEIDX_DEV_GTM_16,
	XPM_NODEIDX_DEV_GTM_17,
	XPM_NODEIDX_DEV_GTM_18,
	XPM_NODEIDX_DEV_GTM_19,
	XPM_NODEIDX_DEV_GTM_20,
	XPM_NODEIDX_DEV_GTM_21,
	XPM_NODEIDX_DEV_GTM_22,
	XPM_NODEIDX_DEV_GTM_23,

	XPM_NODEIDX_DEV_MAX
} XPm_DeviceNodeIndex;

typedef enum {
	/* PL Device nodes */
	XPM_NODEIDX_DEV_PLD_0,
	XPM_NODEIDX_DEV_PLD_MAX = 32,
} XPm_PlDeviceNodeIndex;

typedef enum {
	/* Virtual device nodes */
	XPM_NODEIDX_DEV_GGS_0 = 0U,
	XPM_NODEIDX_DEV_GGS_1,
	XPM_NODEIDX_DEV_GGS_2,
	XPM_NODEIDX_DEV_GGS_3,

	XPM_NODEIDX_DEV_PGGS_0,
	XPM_NODEIDX_DEV_PGGS_1,
	XPM_NODEIDX_DEV_PGGS_2,
	XPM_NODEIDX_DEV_PGGS_3,

	XPM_NODEIDX_DEV_VIRT_MAX,
} XPm_VirtualDeviceNodeIndex;

typedef enum {
	/* Healthy Boot Monitor nodes */
	XPM_NODEIDX_DEV_HB_MON_0,
	XPM_NODEIDX_DEV_HB_MON_1,
	XPM_NODEIDX_DEV_HB_MON_2,
	XPM_NODEIDX_DEV_HB_MON_3,

	XPM_NODEIDX_DEV_HB_MON_MAX,
} XPm_HBMonDeviceNodeIndex;

typedef enum {
	/* AIE Device nodes */
	XPM_NODEIDX_DEV_AIE_0,
	XPM_NODEIDX_DEV_AIE_MAX = 32U,
} XPm_AieDeviceNodeIndex;

/**
 * Subsystem IDs
 */
typedef enum {
	XPM_NODEIDX_SUBSYS_DEFAULT,
	XPM_NODEIDX_SUBSYS_PMC,
} XPm_SubsystemId;

/**
 * Isolation IDs
 */
typedef enum {
	XPM_NODEIDX_ISO_FPD_PL_TEST,
	XPM_NODEIDX_ISO_FPD_PL,
	XPM_NODEIDX_ISO_FPD_SOC,
	XPM_NODEIDX_ISO_LPD_CPM_DFX,
	XPM_NODEIDX_ISO_LPD_CPM,
	XPM_NODEIDX_ISO_LPD_PL_TEST,
	XPM_NODEIDX_ISO_LPD_PL,
	XPM_NODEIDX_ISO_LPD_SOC,
	XPM_NODEIDX_ISO_PMC_LPD_DFX,
	XPM_NODEIDX_ISO_PMC_LPD,
	XPM_NODEIDX_ISO_PMC_PL_CFRAME,
	XPM_NODEIDX_ISO_PMC_PL_TEST,
	XPM_NODEIDX_ISO_PMC_PL,
	XPM_NODEIDX_ISO_PMC_SOC_NPI,
	XPM_NODEIDX_ISO_PMC_SOC,
	XPM_NODEIDX_ISO_PL_SOC,
	XPM_NODEIDX_ISO_VCCAUX_SOC,
	XPM_NODEIDX_ISO_VCCRAM_SOC,
	XPM_NODEIDX_ISO_VCCAUX_VCCRAM,
	XPM_NODEIDX_ISO_PL_CPM_PCIEA0_ATTR,
	XPM_NODEIDX_ISO_PL_CPM_PCIEA1_ATTR,
	XPM_NODEIDX_ISO_PL_CPM_RST_CPI0,
	XPM_NODEIDX_ISO_PL_CPM_RST_CPI1,
	XPM_NODEIDX_ISO_GEM_TSU_CLK,
	XPM_NODEIDX_ISO_GEM0_TXRX_CLK,
	XPM_NODEIDX_ISO_GEM1_TXRX_CLK,
	XPM_NODEIDX_ISO_CPM5_PL,
	XPM_NODEIDX_ISO_CPM5_PL_AXIMM,
	XPM_NODEIDX_ISO_CPM5_PL_CHI0,
	XPM_NODEIDX_ISO_CPM5_PL_CHI1,
	XPM_NODEIDX_ISO_CPM5_PL_TST,
	XPM_NODEIDX_ISO_CPM5_PL_PCIEA0_MPIO,
	XPM_NODEIDX_ISO_CPM5_PL_PCIEA1_MPIO,
	XPM_NODEIDX_ISO_CPM5_RAM,
	/* Remove below ones later if they don't need special handling and
	same as LPD_CPM and LPD_CPM_DFX */
	XPM_NODEIDX_ISO_LPD_CPM5,
	XPM_NODEIDX_ISO_LPD_CPM5_DFX,
	XPM_NODEIDX_ISO_XRAM_PL_AXI0,
	XPM_NODEIDX_ISO_XRAM_PL_AXI1,
	XPM_NODEIDX_ISO_XRAM_PL_AXI2,
	XPM_NODEIDX_ISO_XRAM_PL_AXILITE,
	XPM_NODEIDX_ISO_XRAM_PL_FABRIC,
	XPM_NODEIDX_ISO_CPM5_PL_DFX,
	XPM_NODEIDX_ISO_CPM5_GT,
	XPM_NODEIDX_ISO_CPM5_GT_DFX,

	XPM_NODEIDX_ISO_MAX,
} XPm_IsolationId;

/**
 * Protection IDs
 */
typedef enum {
	XPM_NODEIDX_PROT_MIN,

	XPM_NODEIDX_PROT_XPPU_LPD,
	XPM_NODEIDX_PROT_XPPU_PMC,
	XPM_NODEIDX_PROT_XPPU_PMC_NPI,

	XPM_NODEIDX_PROT_XMPU_FPD_SLAVES,
	XPM_NODEIDX_PROT_XMPU_OCM,
	XPM_NODEIDX_PROT_XMPU_PMC,
	XPM_NODEIDX_PROT_XMPU_XRAM_0,
	XPM_NODEIDX_PROT_XMPU_XRAM_1,
	XPM_NODEIDX_PROT_XMPU_XRAM_2,
	XPM_NODEIDX_PROT_XMPU_XRAM_3,

	XPM_NODEIDX_PROT_MAX,
} XPm_ProtectionId;

/**
 * Monitor node Ids
 */
typedef enum {
	XPM_NODEIDX_MONITOR_MIN,

	XPM_NODEIDX_MONITOR_SYSMON_PMC_0,
	XPM_NODEIDX_MONITOR_SYSMON_PMC_1,
	XPM_NODEIDX_MONITOR_SYSMON_PS_LPD,
	XPM_NODEIDX_MONITOR_SYSMON_PS_FPD,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_MIN,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_0 = 	XPM_NODEIDX_MONITOR_SYSMON_NPD_MIN,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_1,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_2,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_3,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_4,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_5,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_6,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_7,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_8,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_9,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_10,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_11,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_12,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_13,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_14,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_15,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_16,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_17,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_18,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_19,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_20,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_21,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_22,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_23,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_24,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_25,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_26,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_27,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_28,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_29,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_30,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_31,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_32,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_33,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_34,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_35,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_36,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_37,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_38,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_39,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_40,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_41,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_42,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_43,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_44,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_45,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_46,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_47,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_48,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_49,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_50,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_51,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_52,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_53,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_54,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_55,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_56,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_57,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_58,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_59,
	XPM_NODEIDX_MONITOR_SYSMON_NPD_MAX,


	XPM_NODEIDX_MONITOR_MAX,
} XPm_MonitorId;

typedef enum {
	/* Miscellaneous indexes */
	XPM_NODEIDX_MISC_MJTAG_WA_IMG=0,
} XPm_MiscId;

#ifdef __cplusplus
}
#endif

/** @} */
#endif /* XPM_NODE_H_ */
