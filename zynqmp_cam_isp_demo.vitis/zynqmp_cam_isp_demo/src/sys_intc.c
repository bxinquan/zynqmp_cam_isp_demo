#include "xparameters.h"
#include "xil_exception.h"
#include "sys_intc.h"

XScuGic GicIntc;
XIntc   AxiIntc;


int sys_intc_init(void)
{
    int status;

    XIntc_Initialize(&AxiIntc, XPAR_AXI_INTC_DEVICE_ID);
    XIntc_Start(&AxiIntc, XIN_REAL_MODE);

    XScuGic_Config *intc_cfg;
    intc_cfg = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
    if (NULL == intc_cfg) {
        return XST_FAILURE;
	}
    status = XScuGic_CfgInitialize(&GicIntc, intc_cfg, intc_cfg->CpuBaseAddress);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
	}

    XScuGic_Connect(&GicIntc, XPS_FPGA0_INT_ID, (Xil_ExceptionHandler) XIntc_InterruptHandler, (void*)&AxiIntc);
    XScuGic_Enable(&GicIntc, XPS_FPGA0_INT_ID);

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, (void*)&GicIntc);
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}
