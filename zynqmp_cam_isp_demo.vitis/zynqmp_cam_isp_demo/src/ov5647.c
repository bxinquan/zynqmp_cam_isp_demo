#include "stdio.h"
#include "sleep.h"
#include <xiic.h>
#include <xparameters.h>
#include <xil_exception.h>
#include "sys_intc.h"

#define OV5647_SENSOR_ADDR						(0x36)
#define OV5647_SENSOR_ID                        (0x5647)

static XIic iic;
static volatile u8 TransmitComplete;
static volatile u8 ReceiveComplete;

static void SendHandler(XIic *InstancePtr)
{
	TransmitComplete = 0;
}

static void ReceiveHandler(XIic *InstancePtr)
{
	ReceiveComplete = 0;
}

static void StatusHandler(XIic *InstancePtr, int Event)
{

}

static int iic_init(void)
{
	int rc;

	XIic_Config *cfg_ptr = XIic_LookupConfig(XPAR_AXI_IIC_DEVICE_ID);
	if (!cfg_ptr) {
		xil_printf("[iic] XIic_LookupConfig() failed\r\n");
		return XST_FAILURE;
	}

	rc = XIic_CfgInitialize(&iic, cfg_ptr, cfg_ptr->BaseAddress);
	if (rc != XST_SUCCESS) {
		xil_printf("[iic] XIic_CfgInitialize() failed\r\n");
		return rc;
	}

	XIic_SetSendHandler(&iic, &iic, (XIic_Handler) SendHandler);
	XIic_SetRecvHandler(&iic, &iic, (XIic_Handler) ReceiveHandler);
	XIic_SetStatusHandler(&iic, &iic, (XIic_StatusHandler) StatusHandler);

	XIntc_Connect(&AxiIntc, XPAR_INTC_0_IIC_0_VEC_ID, (XInterruptHandler) XIic_InterruptHandler, &iic);
	XIntc_Enable(&AxiIntc, XPAR_INTC_0_IIC_0_VEC_ID);

	return XST_SUCCESS;
}

static int iic_set_slave_addr(u8 addr)
{
	int rc;
	rc = XIic_SetAddress(&iic, XII_ADDR_TO_SEND_TYPE, addr);
	if (rc != XST_SUCCESS) {
		xil_printf("XIic_SetAddress FAILURE\n");
		return rc;
	}
	return XST_SUCCESS;
}

static int iic_write_data(const u8 *WriteBuffer, int len)
{
	int Status;
	unsigned timecnt = 1000000;

	TransmitComplete = 1;
	iic.Stats.TxErrors = 0;

	Status = XIic_Start(&iic);
	if (Status != XST_SUCCESS) {
		printf("iic_write_data XIic_Start fail %d\n", Status);
		return XST_FAILURE;
	}

	Status = XIic_MasterSend(&iic, (u8*)WriteBuffer, len);
	if (Status != XST_SUCCESS) {
		printf("iic_write_data XIic_MasterSend fail %d\n", Status);
		return XST_FAILURE;
	}

	while (((TransmitComplete) || (XIic_IsIicBusy(&iic) == TRUE)) && --timecnt) {
		usleep(1);
		//xil_printf(".");
	}
	if (TransmitComplete) {
		printf("iic_write_data timeout!!!\n");
	}

	Status = XIic_Stop(&iic);
	if (Status != XST_SUCCESS) {
		printf("iic_write_data XIic_Stop fail %d\n", Status);
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

static int iic_read_data(u8 *BufferPtr, int len)
{
	int Status;
	unsigned timecnt = 1000000;

	ReceiveComplete = 1;

	Status = XIic_Start(&iic);
	if (Status != XST_SUCCESS) {
		printf("iic_read_data XIic_Start fail %d\n", Status);
		return XST_FAILURE;
	}

	Status = XIic_MasterRecv(&iic, BufferPtr, len);
	if (Status != XST_SUCCESS) {
		printf("iic_read_data XIic_MasterRecv fail %d\n", Status);
		return XST_FAILURE;
	}

	while (((ReceiveComplete) || (XIic_IsIicBusy(&iic) == TRUE)) && --timecnt) {
		usleep(1);
		//xil_printf(".");
	}
	if (ReceiveComplete) {
		printf("iic_read_data timeout!!!\n");
	}

	Status = XIic_Stop(&iic);
	if (Status != XST_SUCCESS) {
		printf("iic_read_data XIic_Stop fail %d\n", Status);
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

static int ov5647_iic_init()
{
	iic_init();

	//TCA9546 switch channel to RPI(channel 2)
	u8 data[] = {0x04};
	iic_set_slave_addr(0x74);
	int ret = iic_write_data(data, sizeof(data));
	if (ret != XST_SUCCESS) {
		printf("set TCA9546 channel to IAS1 fail\n");
		return -1;
	}

	iic_set_slave_addr(OV5647_SENSOR_ADDR);
	printf("ov5647 iic initialized ok\n");

	return 0;
}

static void write_cmos_sensor(u16 addr, u8 data)
{
  	u8 TxBuffer[3] = {addr >> 8, addr & 0x0FF, data};
	iic_write_data(TxBuffer, sizeof(TxBuffer));
}

static u16 read_cmos_sensor(u16 addr)
{
  	u8 TxBuffer[2] = {addr >> 8, addr & 0x00FF};
  	u8 RxBuffer[1] = {0};
	int Status = iic_write_data(TxBuffer, sizeof(TxBuffer));
	if (Status == XST_SUCCESS) {
		Status = iic_read_data(RxBuffer, sizeof(RxBuffer));
	}
	if (Status != XST_SUCCESS) {
		return 0;
	}
	return (RxBuffer[0]);
}

static void write_cmos_sensor_2byte(u16 addr , u16 data)
{
  	u8 TxBuffer[4] = {addr >> 8, addr & 0x0FF, data >> 8, data & 0x0ff};
	iic_write_data(TxBuffer, sizeof(TxBuffer));
}

static u16 read_cmos_sensor_2(u16 addr)
{
  	u8 TxBuffer[2] = {addr >> 8, addr & 0x00FF};
  	u8 RxBuffer[2] = {0};
	int Status = iic_write_data(TxBuffer, sizeof(TxBuffer));
	if (Status == XST_SUCCESS) {
		Status = iic_read_data(RxBuffer, sizeof(RxBuffer));
	}
	if (Status != XST_SUCCESS) {
		return 0;
	}
	return (RxBuffer[0] << 8) | RxBuffer[1];
}

static u32 return_sensor_id(void)
{
    return ((read_cmos_sensor(0x300a) << 8) | read_cmos_sensor(0x300b));
}

static void sensor_oe_disable()
{
	write_cmos_sensor(0x3000, 0x00);
	write_cmos_sensor(0x3001, 0x00);
	write_cmos_sensor(0x3002, 0x00);
}

static void sensor_oe_enable()
{
	write_cmos_sensor(0x3000, 0x0f);
	write_cmos_sensor(0x3001, 0xff);
	write_cmos_sensor(0x3002, 0xe4);
}

static void ov5647_2592x1944_10bpp()
{
	write_cmos_sensor(0x0100, 0x00);
	write_cmos_sensor(0x0103, 0x01);
	usleep(10000);
	write_cmos_sensor(0x0103, 0x00);
	usleep(10000);
	write_cmos_sensor(0x3034, 0x1a);
	write_cmos_sensor(0x3035, 0x21);
	write_cmos_sensor(0x3036, 0x69);
	write_cmos_sensor(0x303c, 0x11);
	write_cmos_sensor(0x3106, 0xf5);
	write_cmos_sensor(0x3821, 0x00);
	write_cmos_sensor(0x3820, 0x00);
	write_cmos_sensor(0x3827, 0xec);
	write_cmos_sensor(0x370c, 0x03);
	write_cmos_sensor(0x3612, 0x5b);
	write_cmos_sensor(0x3618, 0x04);
	write_cmos_sensor(0x5000, 0x06);
	write_cmos_sensor(0x5002, 0x41);
	write_cmos_sensor(0x5003, 0x08);
	write_cmos_sensor(0x5a00, 0x08);
	write_cmos_sensor(0x3000, 0x00);
	write_cmos_sensor(0x3001, 0x00);
	write_cmos_sensor(0x3002, 0x00);
	write_cmos_sensor(0x3016, 0x08);
	write_cmos_sensor(0x3017, 0xe0);
	write_cmos_sensor(0x3018, 0x44);
	write_cmos_sensor(0x301c, 0xf8);
	write_cmos_sensor(0x301d, 0xf0);
	write_cmos_sensor(0x3a18, 0x00);
	write_cmos_sensor(0x3a19, 0xf8);
	write_cmos_sensor(0x3c01, 0x80);
	write_cmos_sensor(0x3b07, 0x0c);
	write_cmos_sensor(0x380c, 0x0b);
	write_cmos_sensor(0x380d, 0x1c);
	write_cmos_sensor(0x3814, 0x11);
	write_cmos_sensor(0x3815, 0x11);
	write_cmos_sensor(0x3708, 0x64);
	write_cmos_sensor(0x3709, 0x12);
	write_cmos_sensor(0x3808, 0x0a);
	write_cmos_sensor(0x3809, 0x20);
	write_cmos_sensor(0x380a, 0x07);
	write_cmos_sensor(0x380b, 0x98);
	write_cmos_sensor(0x3800, 0x00);
	write_cmos_sensor(0x3801, 0x00);
	write_cmos_sensor(0x3802, 0x00);
	write_cmos_sensor(0x3803, 0x00);
	write_cmos_sensor(0x3804, 0x0a);
	write_cmos_sensor(0x3805, 0x3f);
	write_cmos_sensor(0x3806, 0x07);
	write_cmos_sensor(0x3807, 0xa3);
	write_cmos_sensor(0x3811, 0x10);
	write_cmos_sensor(0x3813, 0x06);
	write_cmos_sensor(0x3630, 0x2e);
	write_cmos_sensor(0x3632, 0xe2);
	write_cmos_sensor(0x3633, 0x23);
	write_cmos_sensor(0x3634, 0x44);
	write_cmos_sensor(0x3636, 0x06);
	write_cmos_sensor(0x3620, 0x64);
	write_cmos_sensor(0x3621, 0xe0);
	write_cmos_sensor(0x3600, 0x37);
	write_cmos_sensor(0x3704, 0xa0);
	write_cmos_sensor(0x3703, 0x5a);
	write_cmos_sensor(0x3715, 0x78);
	write_cmos_sensor(0x3717, 0x01);
	write_cmos_sensor(0x3731, 0x02);
	write_cmos_sensor(0x370b, 0x60);
	write_cmos_sensor(0x3705, 0x1a);
	write_cmos_sensor(0x3f05, 0x02);
	write_cmos_sensor(0x3f06, 0x10);
	write_cmos_sensor(0x3f01, 0x0a);
	write_cmos_sensor(0x3a08, 0x01);
	write_cmos_sensor(0x3a09, 0x28);
	write_cmos_sensor(0x3a0a, 0x00);
	write_cmos_sensor(0x3a0b, 0xf6);
	write_cmos_sensor(0x3a0d, 0x08);
	write_cmos_sensor(0x3a0e, 0x06);
	write_cmos_sensor(0x3a0f, 0x58);
	write_cmos_sensor(0x3a10, 0x50);
	write_cmos_sensor(0x3a1b, 0x58);
	write_cmos_sensor(0x3a1e, 0x50);
	write_cmos_sensor(0x3a11, 0x60);
	write_cmos_sensor(0x3a1f, 0x28);
	write_cmos_sensor(0x4001, 0x02);
	write_cmos_sensor(0x4004, 0x04);
	write_cmos_sensor(0x4000, 0x09);
	write_cmos_sensor(0x4837, 0x19);
	write_cmos_sensor(0x4800, 0x04);
	write_cmos_sensor(0x3503, 0x03);
	write_cmos_sensor(0x0100, 0x01);
};

static void ov5647_set_virtual_channel(int channel)
{
	u8 channel_id = read_cmos_sensor(0x4814);
	channel_id &= ~(3 << 6);
	write_cmos_sensor(0x4814, channel_id | (channel << 6));
}

static void ov5647_stream_on()
{
	write_cmos_sensor(0x4800, 0x04);

	write_cmos_sensor(0x4202, 0x00);

	write_cmos_sensor(0x300D, 0x00);
}

static void ov5647_1080p30_10bpp_rpi() {
	write_cmos_sensor(0x0100, 0x00);
	write_cmos_sensor(0x0103, 0x01);
	write_cmos_sensor(0x3034, 0x1a);
	write_cmos_sensor(0x3035, 0x21);
	write_cmos_sensor(0x3036, 0x62);
	write_cmos_sensor(0x303c, 0x11);
	write_cmos_sensor(0x3106, 0xf5);
	write_cmos_sensor(0x3821, 0x00);
	write_cmos_sensor(0x3820, 0x00);
	write_cmos_sensor(0x3827, 0xec);
	write_cmos_sensor(0x370c, 0x03);
	write_cmos_sensor(0x3612, 0x5b);
	write_cmos_sensor(0x3618, 0x04);
	write_cmos_sensor(0x5000, 0x06);
	write_cmos_sensor(0x5002, 0x41);
	write_cmos_sensor(0x5003, 0x08);
	write_cmos_sensor(0x5a00, 0x08);
	write_cmos_sensor(0x3000, 0x00);
	write_cmos_sensor(0x3001, 0x00);
	write_cmos_sensor(0x3002, 0x00);
	write_cmos_sensor(0x3016, 0x08);
	write_cmos_sensor(0x3017, 0xe0);
	write_cmos_sensor(0x3018, 0x44);
	write_cmos_sensor(0x301c, 0xf8);
	write_cmos_sensor(0x301d, 0xf0);
	write_cmos_sensor(0x3a18, 0x00);
	write_cmos_sensor(0x3a19, 0xf8);
	write_cmos_sensor(0x3c01, 0x80);
	write_cmos_sensor(0x3b07, 0x0c);
	write_cmos_sensor(0x380c, 0x09);
	write_cmos_sensor(0x380d, 0x70);
	write_cmos_sensor(0x3814, 0x11);
	write_cmos_sensor(0x3815, 0x11);
	write_cmos_sensor(0x3708, 0x64);
	write_cmos_sensor(0x3709, 0x12);
	write_cmos_sensor(0x3808, 0x07);
	write_cmos_sensor(0x3809, 0x80);
	write_cmos_sensor(0x380a, 0x04);
	write_cmos_sensor(0x380b, 0x38);
	write_cmos_sensor(0x3800, 0x01);
	write_cmos_sensor(0x3801, 0x5c);
	write_cmos_sensor(0x3802, 0x01);
	write_cmos_sensor(0x3803, 0xb2);
	write_cmos_sensor(0x3804, 0x08);
	write_cmos_sensor(0x3805, 0xe3);
	write_cmos_sensor(0x3806, 0x05);
	write_cmos_sensor(0x3807, 0xf1);
	write_cmos_sensor(0x3811, 0x04);
	write_cmos_sensor(0x3813, 0x02);
	write_cmos_sensor(0x3630, 0x2e);
	write_cmos_sensor(0x3632, 0xe2);
	write_cmos_sensor(0x3633, 0x23);
	write_cmos_sensor(0x3634, 0x44);
	write_cmos_sensor(0x3636, 0x06);
	write_cmos_sensor(0x3620, 0x64);
	write_cmos_sensor(0x3621, 0xe0);
	write_cmos_sensor(0x3600, 0x37);
	write_cmos_sensor(0x3704, 0xa0);
	write_cmos_sensor(0x3703, 0x5a);
	write_cmos_sensor(0x3715, 0x78);
	write_cmos_sensor(0x3717, 0x01);
	write_cmos_sensor(0x3731, 0x02);
	write_cmos_sensor(0x370b, 0x60);
	write_cmos_sensor(0x3705, 0x1a);
	write_cmos_sensor(0x3f05, 0x02);
	write_cmos_sensor(0x3f06, 0x10);
	write_cmos_sensor(0x3f01, 0x0a);
	write_cmos_sensor(0x3a08, 0x01);
	write_cmos_sensor(0x3a09, 0x4b);
	write_cmos_sensor(0x3a0a, 0x01);
	write_cmos_sensor(0x3a0b, 0x13);
	write_cmos_sensor(0x3a0d, 0x04);
	write_cmos_sensor(0x3a0e, 0x03);
	write_cmos_sensor(0x3a0f, 0x58);
	write_cmos_sensor(0x3a10, 0x50);
	write_cmos_sensor(0x3a1b, 0x58);
	write_cmos_sensor(0x3a1e, 0x50);
	write_cmos_sensor(0x3a11, 0x60);
	write_cmos_sensor(0x3a1f, 0x28);
	write_cmos_sensor(0x4001, 0x02);
	write_cmos_sensor(0x4004, 0x04);
	write_cmos_sensor(0x4000, 0x09);
	write_cmos_sensor(0x4837, 0x19);
	write_cmos_sensor(0x4800, 0x04);
	write_cmos_sensor(0x3503, 0x03);
	write_cmos_sensor(0x0100, 0x01);


	write_cmos_sensor(0x3503, 0x03);		/* manual,0xAE */
	write_cmos_sensor(0x3500, 0x00);
	write_cmos_sensor(0x3501, 0x30);
	write_cmos_sensor(0x3502, 0x00);
	write_cmos_sensor(0x350a, 0x00);
	write_cmos_sensor(0x350b, 0x10);

};


int ov5647_set_exposure(unsigned exposure)
{
	//TODO
	return 0;
}

int ov5647_set_gain(unsigned gain)
{
	//TODO
	return 0;
}

int ov5647_init(unsigned width, unsigned height, unsigned *p_max_exposure, unsigned *p_max_gain)
{
	int ret = 0;
	ret = ov5647_iic_init();
	if (ret < 0) {
		return -1;
	}
	usleep(5000);

	u32 sns_id = return_sensor_id();
	printf("Sensor ID %04X (expect %04X)\n", sns_id, OV5647_SENSOR_ID);
	
	sensor_oe_enable();
#if 0
	ov5647_common_regs();
	ov5647_2592x1944_raw8();
	ov5647_2592x1944_10bpp();
#else
	//ov5647_640x480_raw8();
	//ov5647_1080p30_10bpp_rpi();
	ov5647_2592x1944_10bpp();

#endif
	if (width == 1920 && height == 1080) {
		ov5647_1080p30_10bpp_rpi();
	} else if (width == 2592 && height == 1944) {
		ov5647_2592x1944_10bpp();
	} else {
		printf("Not support mode\n");
		return -1;
	}
	ov5647_set_virtual_channel(0);

	//write_cmos_sensor(0x0100, 0x01);
	ov5647_stream_on();

    if (p_max_exposure) {
    	*p_max_exposure = 1080;
    }
    if (p_max_gain) {
    	*p_max_gain = 1<<4;
    }

	printf("ov5647_1080p30_10bpp_rpi initialize ok\n");
	return 0;
}
