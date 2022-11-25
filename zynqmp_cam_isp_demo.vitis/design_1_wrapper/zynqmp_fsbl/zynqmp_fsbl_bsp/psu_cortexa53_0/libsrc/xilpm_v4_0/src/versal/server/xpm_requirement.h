/******************************************************************************
* Copyright (c) 2018 - 2022 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/


#ifndef XPM_REQUIREMENT_H_
#define XPM_REQUIREMENT_H_

#include "xpm_device.h"
#include "xpm_subsystem.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct XPm_ReqmInfo XPm_ReqmInfo;
typedef struct XPm_Reqm XPm_Requirement;

/* Size of bit fields for XPm_ReqmInfo structure */
#define REQ_INFO_CAPS_BIT_FIELD_SIZE		4
#define REQ_INFO_LATENCY_BIT_FIELD_SIZE		21
#define REQ_INFO_RESERVED_BIT_FIELD_SIZE	7

/**
 * Specific requirement information.
 */
struct XPm_ReqmInfo {
	u32 Capabilities:REQ_INFO_CAPS_BIT_FIELD_SIZE; /**< Device capabilities (1-hot) */
	u32 Latency:REQ_INFO_LATENCY_BIT_FIELD_SIZE; /**< Maximum device latency */
	u32 Reserved:REQ_INFO_RESERVED_BIT_FIELD_SIZE; /**< Reserved for future use */
	u32 QoS; /**< QoS requirement */
};

typedef enum {
        RELEASE_ONE,
        RELEASE_ALL,
        RELEASE_UNREQUESTED,
        RELEASE_DEVICE,
} XPm_ReleaseScope;

/**
 * Device usage policies.
 */
enum XPm_ReqUsageFlags {
	REQ_NO_RESTRICTION,	/**< device accessible from all subsystems */
	REQ_SHARED,		/**< device simultaneously shared between two or more subsystems */
	REQ_NONSHARED,		/**< device exclusively reserved by one subsystem, always */
	REQ_TIME_SHARED,	/**< device is time shared between two or more subsystems */
};

/**
 * Device/Memory region security status requirement per TrustZone.
 */
enum XPm_ReqSecurityFlags {
	REQ_ACCESS_SECURE,	/**< Device/Memory region only allows access from secure masters */
	REQ_ACCESS_SECURE_NONSECURE, /**< Device/Memory region allow both secure or non-secure masters */
};

#define REG_FLAGS_USAGE_MASK		(0x3U)
#define REG_FLAGS_SECURITY_MASK		(0x4U)
#define REG_FLAGS_SECURITY_OFFSET	(2U)
/* NOTE: Some bits are reserved in between */
#define REG_FLAGS_PREALLOC_MASK		(0x40U)
#define REG_FLAGS_PREALLOC_OFFSET	(6U)

/**
 * Combined mask for requirement flags
 */
#define REG_FLAGS_MASK		(REG_FLAGS_USAGE_MASK | REG_FLAGS_SECURITY_MASK | REG_FLAGS_PREALLOC_MASK)

/**
 * Make Requirement Flags from individual attributes
 */
#define REQUIREMENT_FLAGS(Prealloc, Security, Usage) \
				(((u32)(Prealloc) << (REG_FLAGS_PREALLOC_OFFSET)) | \
				 ((u32)(Security) << (REG_FLAGS_SECURITY_OFFSET)) | \
				 ((u32)(Usage) & (REG_FLAGS_USAGE_MASK)))

/**
 * Macros for extracting attributes from Flags
 */
#define USAGE_POLICY(Flags)	((Flags) & REG_FLAGS_USAGE_MASK)
#define SECURITY_POLICY(Flags)	(((Flags) & REG_FLAGS_SECURITY_MASK) >> REG_FLAGS_SECURITY_OFFSET)
#define PREALLOC(Flags)		(((Flags) & REG_FLAGS_PREALLOC_MASK) >> REG_FLAGS_PREALLOC_OFFSET)

/**
 * The requirement class.
 */
struct XPm_Reqm {
	struct XPm_Subsystem *Subsystem; /**< Subsystem imposing this requirement on the device */
	XPm_Device *Device; /**< Device used by the subsystem */
	XPm_Requirement *NextDevice; /**< Requirement on the next device from this subsystem */
	XPm_Requirement *NextSubsystem; /**< Requirement from the next subsystem on this device */
	XPm_ReqmInfo Curr; /**< Current requirements */
	XPm_ReqmInfo Next; /**< Pending requirements */
	u32 PreallocQoS;  /**< Preallocated QoS value */
	u16 Flags;	  /** Flags */
	u8 Allocated; /**< Device has been allocated to the subsystem */
	u8 SetLatReq; /**< Latency has been set from the subsystem */
	u8 PreallocCaps;  /**< Preallocated capabilities */
	u8 AttrCaps;	/**
			 * Other capabilities like security, coherency and virtualization.
			 * This does not play any role for device state transition so
			 * it is keep as a separate variable.
			 */
};

/************************** Function Prototypes ******************************/

XStatus XPmRequirement_Add(XPm_Subsystem *Subsystem, XPm_Device *Device,
			   u32 Flags, u32 PreallocCaps, u32 PreallocQoS);
void XPm_RequiremntUpdate(XPm_Requirement *Reqm);
XStatus XPmRequirement_Release(XPm_Requirement *Reqm, XPm_ReleaseScope Scope);
void XPmRequirement_Clear(XPm_Requirement* Reqm);
XStatus XPmRequirement_UpdateScheduled(const XPm_Subsystem *Subsystem, u32 Swap);
XStatus XPmRequirement_IsExclusive(const XPm_Requirement *Reqm);

#ifdef __cplusplus
}
#endif

/** @} */
#endif /* XPM_REQUIREMENT_H_ */
