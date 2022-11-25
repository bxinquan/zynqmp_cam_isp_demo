
#include "xil_printf.h"
#include "xv_frmbufwr_l2.h"
#include "mipi_rx_to_video.h"
#include "sys_intc.h"
#include "camif.h"

#include "hw_config.h"

#if SNS_TYPE == SNS_TYPE_AR1335
#define MIPI_RX_BASE     	XPAR_CAMIF_IAS1_MIPI_RX_TO_VIDEO_IAS1_S00_AXI_BASEADDR
#define VFRM_WR_DEVID    	XPAR_CAMIF_IAS1_VFRM_WR_IAS1_DEVICE_ID
#define MIPI_RX_IRQ_INTR 	XPAR_AXI_INTC_CAMIF_IAS1_MIPI_RX_TO_VIDEO_IAS1_IRQ_INTR
#define VFRM_WR_IRQ_INTR 	XPAR_AXI_INTC_CAMIF_IAS1_VFRM_WR_IAS1_INTERRUPT_INTR
#endif
#if SNS_TYPE == SNS_TYPE_OV5647
#define MIPI_RX_BASE     	XPAR_CAMIF_RPI_MIPI_RX_TO_VIDEO_RPI_S00_AXI_BASEADDR
#define VFRM_WR_DEVID    	XPAR_CAMIF_RPI_VFRM_WR_RPI_DEVICE_ID
#define MIPI_RX_IRQ_INTR 	XPAR_AXI_INTC_CAMIF_RPI_MIPI_RX_TO_VIDEO_RPI_IRQ_INTR
#define VFRM_WR_IRQ_INTR 	XPAR_AXI_INTC_CAMIF_RPI_VFRM_WR_RPI_INTERRUPT_INTR
#endif

static volatile unsigned _mipirx_int_num = 0;

static void _mipi_rx_irq_callback (void *InstancePtr)
{
	MIPI_RX_TO_VIDEO_mWriteReg(MIPI_RX_BASE, MIPI_RX_REG_INT_STATUS, 0x0);
	_mipirx_int_num ++;
}

static int mipi_rx_to_video_init()
{
	MIPI_RX_TO_VIDEO_mWriteReg(MIPI_RX_BASE, MIPI_RX_REG_RESET, 1);
	MIPI_RX_TO_VIDEO_mWriteReg(MIPI_RX_BASE, MIPI_RX_REG_INT_MASK, ~MIPI_RX_REG_INT_MASK_BIT_FRAME_START);
	MIPI_RX_TO_VIDEO_mWriteReg(MIPI_RX_BASE, MIPI_RX_REG_RESET, 0);
	return 0;
}


static XV_FrmbufWr_l2     v_frmbuf_wr;

static volatile unsigned _vfrmwr_int_num = 0;

static int (*_buffer_done_func)(void) = NULL;

static void _v_frmbuf_wr_callback(void *data)
{
	//printf("_v_frmbuf_wr_callback\r\n");
	_vfrmwr_int_num ++;
	XVFrmbufWr_Start(&v_frmbuf_wr);
	if (_buffer_done_func) {
		_buffer_done_func();
	}
}

static int v_frmbuf_wr_init(UINTPTR yptr, UINTPTR cptr)
{
	int Status;
	XVidC_ColorFormat Cfmt;
	XVidC_VideoStream VidStream = {0};
	u32 StrideInBytes = 0;

	Cfmt = (SNS_BITS == 10) ? XVIDC_CSF_MEM_Y10 : XVIDC_CSF_MEM_Y8;
	StrideInBytes = ALIGN((SNS_WIDTH+2) / 3 * 4, 256); //xYYY

	VidStream.ColorFormatId = XVIDC_CSF_YONLY;
	VidStream.ColorDepth = (SNS_BITS == 10) ? XVIDC_BPC_10 : XVIDC_BPC_8;
	VidStream.PixPerClk = (SNS_LANES == 4) ? XVIDC_PPC_4 : XVIDC_PPC_2;
	VidStream.VmId = XVIDC_VM_CUSTOM;
	VidStream.FrameRate = XVidC_GetFrameRate(XVIDC_VM_1920x1080_30_P);
	VidStream.Timing = *(XVidC_GetTimingInfo(XVIDC_VM_1920x1080_30_P));
	VidStream.AspectRatio = XVIDC_AR_4_3;
	VidStream.IsInterlaced = 0;
	VidStream.Is3D = 0;
	VidStream.Timing.HActive = SNS_WIDTH;
	VidStream.Timing.VActive = SNS_HEIGHT;

	Status = XVFrmbufWr_Initialize(&v_frmbuf_wr, VFRM_WR_DEVID);
	if(Status != XST_SUCCESS) {
	  xil_printf("ERROR:: Frame Buffer Write initialization failed %d(%04X)\r\n", Status, Status);
	  return(XST_FAILURE);
	}

	Status = XVFrmbufWr_SetMemFormat(&v_frmbuf_wr, StrideInBytes, Cfmt, &VidStream);
	if(Status != XST_SUCCESS) {
	  xil_printf("ERROR:: Unable to configure Frame Buffer Write %d(%04X)\r\n", Status, Status);
	  return(XST_FAILURE);
	}

	Status = XVFrmbufWr_SetBufferAddr(&v_frmbuf_wr, yptr);
	if(Status != XST_SUCCESS) {
	  xil_printf("ERROR:: Unable to configure Frame Buffer Write buffer address %d(%04X)\r\n", Status, Status);
	  return(XST_FAILURE);
	}

	/* Set Chroma Buffer Address for semi-planar color formats */
	if ((Cfmt == XVIDC_CSF_MEM_Y_UV8) || (Cfmt == XVIDC_CSF_MEM_Y_UV8_420) ||
	    (Cfmt == XVIDC_CSF_MEM_Y_UV10) || (Cfmt == XVIDC_CSF_MEM_Y_UV10_420)) {
	  Status = XVFrmbufWr_SetChromaBufferAddr(&v_frmbuf_wr, cptr);
	  if(Status != XST_SUCCESS) {
	    xil_printf("ERROR:: Unable to configure Frame Buffer Write chroma buffer address %d(%04X)\r\n", Status, Status);
	    return(XST_FAILURE);
	  }
	}

	XVFrmbufWr_SetCallback(&v_frmbuf_wr, XVFRMBUFWR_HANDLER_DONE, _v_frmbuf_wr_callback, &v_frmbuf_wr);

	/* Enable Interrupt */
	XVFrmbufWr_InterruptEnable(&v_frmbuf_wr, XVFRMBUFWR_IRQ_DONE_MASK);

	/* Start Frame Buffers */
	XVFrmbufWr_Start(&v_frmbuf_wr);

	xil_printf("INFO: FRMBUF configured\r\n");
	return(Status);
}

void camif_init(UINTPTR bufptr, int (*buffer_done_func)(void))
{
	_buffer_done_func = buffer_done_func;

	v_frmbuf_wr_init(bufptr, 0);

	mipi_rx_to_video_init();

	XIntc_Connect(&AxiIntc, MIPI_RX_IRQ_INTR, (XInterruptHandler)_mipi_rx_irq_callback, NULL);
	XIntc_Connect(&AxiIntc, VFRM_WR_IRQ_INTR, (XInterruptHandler)XVFrmbufWr_InterruptHandler, &v_frmbuf_wr);
	XIntc_Enable(&AxiIntc, MIPI_RX_IRQ_INTR);
	XIntc_Enable(&AxiIntc, VFRM_WR_IRQ_INTR);

}

void camif_get_int_num(unsigned *mipirx_int_num, unsigned *vfrmwr_int_num)
{
	if (mipirx_int_num) {
		*mipirx_int_num = _mipirx_int_num;
	}
	if (vfrmwr_int_num) {
		*vfrmwr_int_num = _vfrmwr_int_num;
	}
}

void camif_get_mipi_info(unsigned *width, unsigned *height, unsigned *di)
{
	if (width) {
		*width = MIPI_RX_TO_VIDEO_mReadReg(MIPI_RX_BASE, MIPI_RX_REG_WIDTH);
	}
	if (height) {
		*height = MIPI_RX_TO_VIDEO_mReadReg(MIPI_RX_BASE, MIPI_RX_REG_HEIGHT);
	}
	if (di) {
		*di = MIPI_RX_TO_VIDEO_mReadReg(MIPI_RX_BASE, MIPI_RX_REG_DI);
	}
}
