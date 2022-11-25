
#ifndef MIPI_RX_TO_VIDEO_H
#define MIPI_RX_TO_VIDEO_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

#define MIPI_RX_REG_RESET                (0 * 4)    
#define MIPI_RX_REG_WIDTH                (1 * 4)    
#define MIPI_RX_REG_HEIGHT               (2 * 4)    
#define MIPI_RX_REG_FRAME_CNT            (3 * 4)    
#define MIPI_RX_REG_DI                   (4 * 4)    
#define MIPI_RX_REG_STATUS               (5 * 4)    
#define MIPI_RX_REG_INT_STATUS           (6 * 4)    
#define MIPI_RX_REG_INT_MASK             (7 * 4)    

#define MIPI_RX_REG_STATUS_BIT_LOCKED            (1<<0)

#define MIPI_RX_REG_INT_STATUS_BIT_FRAME_START   (1<<0)
#define MIPI_RX_REG_INT_STATUS_BIT_FRAME_DONE    (1<<1)

#define MIPI_RX_REG_INT_MASK_BIT_FRAME_START     (1<<0)
#define MIPI_RX_REG_INT_MASK_BIT_FRAME_DONE      (1<<1)


/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a MIPI_RX_TO_VIDEO register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the MIPI_RX_TO_VIDEOdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void MIPI_RX_TO_VIDEO_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define MIPI_RX_TO_VIDEO_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a MIPI_RX_TO_VIDEO register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the MIPI_RX_TO_VIDEO device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 MIPI_RX_TO_VIDEO_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define MIPI_RX_TO_VIDEO_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the MIPI_RX_TO_VIDEO instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus MIPI_RX_TO_VIDEO_Reg_SelfTest(void * baseaddr_p);

#endif // MIPI_RX_TO_VIDEO_H
