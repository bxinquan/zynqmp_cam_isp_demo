#include "stdio.h"
#include "sleep.h"
#include <xiic.h>
#include <xparameters.h>
#include <xil_exception.h>
#include "sys_intc.h"

#define AR1335_SENSOR_ADDR						(0x6c>>1)
#define AR1335_SENSOR_ID                        (0x153)

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

static int ar1335_iic_init()
{
	iic_init();

	//TCA9546 switch channel to IAS1(channel 1)
	u8 data[] = {0x02};
	iic_set_slave_addr(0x74);
	int ret = iic_write_data(data, sizeof(data));
	if (ret != XST_SUCCESS) {
		printf("set TCA9546 channel to IAS1 fail\n");
		return -1;
	}

	iic_set_slave_addr(AR1335_SENSOR_ADDR);
	printf("ar1335 iic initialized ok\n");

	return 0;
}

static void write_cmos_sensor(u16 addr , u8 data)
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
    return ((read_cmos_sensor(0x0000) << 8) | read_cmos_sensor(0x0001));
}


static void ar1335_mode_1080p30_raw10()
{
    write_cmos_sensor_2byte(0x301A, 0x0219); // RESET_REGISTER
	usleep(100*1000);
    write_cmos_sensor_2byte(0x3042, 0x1004); // DARK_CONTROL2
    write_cmos_sensor_2byte(0x30D2, 0x0120); // CRM_CONTROL
    write_cmos_sensor_2byte(0x30D4, 0x0000); // COLUMN_CORRECTION
    write_cmos_sensor_2byte(0x3090, 0x0000); // RNF_CONTROL
    write_cmos_sensor_2byte(0x30FC, 0x0060); // MODULE_CLK_OFF
    write_cmos_sensor_2byte(0x30FE, 0x0060); // CTREE_OFF
    write_cmos_sensor_2byte(0x31E0, 0x0781); // PIX_DEF_ID
    write_cmos_sensor_2byte(0x3180, 0x9434); // FINE_DIG_CORRECTION_CONTROL
    write_cmos_sensor_2byte(0x317C, 0xEFF4); // ANALOG_CONTROL7
    write_cmos_sensor_2byte(0x30EE, 0x613E); // DARK_CONTROL3
    write_cmos_sensor_2byte(0x3F2C, 0x4428); // GTH_THRES_RTN
    write_cmos_sensor_2byte(0x3D00, 0x0446); // DYNAMIC_SEQRAM_00
    write_cmos_sensor_2byte(0x3D02, 0x4C66); // DYNAMIC_SEQRAM_02
    write_cmos_sensor_2byte(0x3D04, 0xFFFF); // DYNAMIC_SEQRAM_04
    write_cmos_sensor_2byte(0x3D06, 0xFFFF); // DYNAMIC_SEQRAM_06
    write_cmos_sensor_2byte(0x3D08, 0x5E40); // DYNAMIC_SEQRAM_08
    write_cmos_sensor_2byte(0x3D0A, 0x1146); // DYNAMIC_SEQRAM_0A
    write_cmos_sensor_2byte(0x3D0C, 0x5D41); // DYNAMIC_SEQRAM_0C
    write_cmos_sensor_2byte(0x3D0E, 0x1088); // DYNAMIC_SEQRAM_0E
    write_cmos_sensor_2byte(0x3D10, 0x8342); // DYNAMIC_SEQRAM_10
    write_cmos_sensor_2byte(0x3D12, 0x00C0); // DYNAMIC_SEQRAM_12
    write_cmos_sensor_2byte(0x3D14, 0x5580); // DYNAMIC_SEQRAM_14
    write_cmos_sensor_2byte(0x3D16, 0x5B83); // DYNAMIC_SEQRAM_16
    write_cmos_sensor_2byte(0x3D18, 0x6084); // DYNAMIC_SEQRAM_18
    write_cmos_sensor_2byte(0x3D1A, 0x5A8D); // DYNAMIC_SEQRAM_1A
    write_cmos_sensor_2byte(0x3D1C, 0x00C0); // DYNAMIC_SEQRAM_1C
    write_cmos_sensor_2byte(0x3D1E, 0x8342); // DYNAMIC_SEQRAM_1E
    write_cmos_sensor_2byte(0x3D20, 0x925A); // DYNAMIC_SEQRAM_20
    write_cmos_sensor_2byte(0x3D22, 0x8664); // DYNAMIC_SEQRAM_22
    write_cmos_sensor_2byte(0x3D24, 0x1030); // DYNAMIC_SEQRAM_24
    write_cmos_sensor_2byte(0x3D26, 0x801C); // DYNAMIC_SEQRAM_26
    write_cmos_sensor_2byte(0x3D28, 0x00A0); // DYNAMIC_SEQRAM_28
    write_cmos_sensor_2byte(0x3D2A, 0x56B0); // DYNAMIC_SEQRAM_2A
    write_cmos_sensor_2byte(0x3D2C, 0x5788); // DYNAMIC_SEQRAM_2C
    write_cmos_sensor_2byte(0x3D2E, 0x5150); // DYNAMIC_SEQRAM_2E
    write_cmos_sensor_2byte(0x3D30, 0x824D); // DYNAMIC_SEQRAM_30
    write_cmos_sensor_2byte(0x3D32, 0x8D58); // DYNAMIC_SEQRAM_32
    write_cmos_sensor_2byte(0x3D34, 0x58D2); // DYNAMIC_SEQRAM_34
    write_cmos_sensor_2byte(0x3D36, 0x438A); // DYNAMIC_SEQRAM_36
    write_cmos_sensor_2byte(0x3D38, 0x4592); // DYNAMIC_SEQRAM_38
    write_cmos_sensor_2byte(0x3D3A, 0x458A); // DYNAMIC_SEQRAM_3A
    write_cmos_sensor_2byte(0x3D3C, 0x4389); // DYNAMIC_SEQRAM_3C
    write_cmos_sensor_2byte(0x3D3E, 0x51FF); // DYNAMIC_SEQRAM_3E
    write_cmos_sensor_2byte(0x3D40, 0x8451); // DYNAMIC_SEQRAM_40
    write_cmos_sensor_2byte(0x3D42, 0x8410); // DYNAMIC_SEQRAM_42
    write_cmos_sensor_2byte(0x3D44, 0x0C88); // DYNAMIC_SEQRAM_44
    write_cmos_sensor_2byte(0x3D46, 0x5959); // DYNAMIC_SEQRAM_46
    write_cmos_sensor_2byte(0x3D48, 0x8A5F); // DYNAMIC_SEQRAM_48
    write_cmos_sensor_2byte(0x3D4A, 0xDA42); // DYNAMIC_SEQRAM_4A
    write_cmos_sensor_2byte(0x3D4C, 0x9361); // DYNAMIC_SEQRAM_4C
    write_cmos_sensor_2byte(0x3D4E, 0x8262); // DYNAMIC_SEQRAM_4E
    write_cmos_sensor_2byte(0x3D50, 0x8342); // DYNAMIC_SEQRAM_50
    write_cmos_sensor_2byte(0x3D52, 0x8010); // DYNAMIC_SEQRAM_52
    write_cmos_sensor_2byte(0x3D54, 0xC041); // DYNAMIC_SEQRAM_54
    write_cmos_sensor_2byte(0x3D56, 0x64FF); // DYNAMIC_SEQRAM_56
    write_cmos_sensor_2byte(0x3D58, 0xFFB7); // DYNAMIC_SEQRAM_58
    write_cmos_sensor_2byte(0x3D5A, 0x4081); // DYNAMIC_SEQRAM_5A
    write_cmos_sensor_2byte(0x3D5C, 0x4080); // DYNAMIC_SEQRAM_5C
    write_cmos_sensor_2byte(0x3D5E, 0x4180); // DYNAMIC_SEQRAM_5E
    write_cmos_sensor_2byte(0x3D60, 0x4280); // DYNAMIC_SEQRAM_60
    write_cmos_sensor_2byte(0x3D62, 0x438D); // DYNAMIC_SEQRAM_62
    write_cmos_sensor_2byte(0x3D64, 0x44BA); // DYNAMIC_SEQRAM_64
    write_cmos_sensor_2byte(0x3D66, 0x4488); // DYNAMIC_SEQRAM_66
    write_cmos_sensor_2byte(0x3D68, 0x4380); // DYNAMIC_SEQRAM_68
    write_cmos_sensor_2byte(0x3D6A, 0x4241); // DYNAMIC_SEQRAM_6A
    write_cmos_sensor_2byte(0x3D6C, 0x8140); // DYNAMIC_SEQRAM_6C
    write_cmos_sensor_2byte(0x3D6E, 0x8240); // DYNAMIC_SEQRAM_6E
    write_cmos_sensor_2byte(0x3D70, 0x8041); // DYNAMIC_SEQRAM_70
    write_cmos_sensor_2byte(0x3D72, 0x8042); // DYNAMIC_SEQRAM_72
    write_cmos_sensor_2byte(0x3D74, 0x8043); // DYNAMIC_SEQRAM_74
    write_cmos_sensor_2byte(0x3D76, 0x8D44); // DYNAMIC_SEQRAM_76
    write_cmos_sensor_2byte(0x3D78, 0xBA44); // DYNAMIC_SEQRAM_78
    write_cmos_sensor_2byte(0x3D7A, 0x875E); // DYNAMIC_SEQRAM_7A
    write_cmos_sensor_2byte(0x3D7C, 0x4354); // DYNAMIC_SEQRAM_7C
    write_cmos_sensor_2byte(0x3D7E, 0x4241); // DYNAMIC_SEQRAM_7E
    write_cmos_sensor_2byte(0x3D80, 0x8140); // DYNAMIC_SEQRAM_80
    write_cmos_sensor_2byte(0x3D82, 0x8120); // DYNAMIC_SEQRAM_82
    write_cmos_sensor_2byte(0x3D84, 0x2881); // DYNAMIC_SEQRAM_84
    write_cmos_sensor_2byte(0x3D86, 0x6026); // DYNAMIC_SEQRAM_86
    write_cmos_sensor_2byte(0x3D88, 0x8055); // DYNAMIC_SEQRAM_88
    write_cmos_sensor_2byte(0x3D8A, 0x8070); // DYNAMIC_SEQRAM_8A
    write_cmos_sensor_2byte(0x3D8C, 0x8040); // DYNAMIC_SEQRAM_8C
    write_cmos_sensor_2byte(0x3D8E, 0x4C81); // DYNAMIC_SEQRAM_8E
    write_cmos_sensor_2byte(0x3D90, 0x45C3); // DYNAMIC_SEQRAM_90
    write_cmos_sensor_2byte(0x3D92, 0x4581); // DYNAMIC_SEQRAM_92
    write_cmos_sensor_2byte(0x3D94, 0x4C40); // DYNAMIC_SEQRAM_94
    write_cmos_sensor_2byte(0x3D96, 0x8070); // DYNAMIC_SEQRAM_96
    write_cmos_sensor_2byte(0x3D98, 0x8040); // DYNAMIC_SEQRAM_98
    write_cmos_sensor_2byte(0x3D9A, 0x4C85); // DYNAMIC_SEQRAM_9A
    write_cmos_sensor_2byte(0x3D9C, 0x6CA8); // DYNAMIC_SEQRAM_9C
    write_cmos_sensor_2byte(0x3D9E, 0x6C8C); // DYNAMIC_SEQRAM_9E
    write_cmos_sensor_2byte(0x3DA0, 0x000E); // DYNAMIC_SEQRAM_A0
    write_cmos_sensor_2byte(0x3DA2, 0xBE44); // DYNAMIC_SEQRAM_A2
    write_cmos_sensor_2byte(0x3DA4, 0x8844); // DYNAMIC_SEQRAM_A4
    write_cmos_sensor_2byte(0x3DA6, 0xBC78); // DYNAMIC_SEQRAM_A6
    write_cmos_sensor_2byte(0x3DA8, 0x0900); // DYNAMIC_SEQRAM_A8
    write_cmos_sensor_2byte(0x3DAA, 0x8904); // DYNAMIC_SEQRAM_AA
    write_cmos_sensor_2byte(0x3DAC, 0x8080); // DYNAMIC_SEQRAM_AC
    write_cmos_sensor_2byte(0x3DAE, 0x0240); // DYNAMIC_SEQRAM_AE
    write_cmos_sensor_2byte(0x3DB0, 0x8609); // DYNAMIC_SEQRAM_B0
    write_cmos_sensor_2byte(0x3DB2, 0x008E); // DYNAMIC_SEQRAM_B2
    write_cmos_sensor_2byte(0x3DB4, 0x0900); // DYNAMIC_SEQRAM_B4
    write_cmos_sensor_2byte(0x3DB6, 0x8002); // DYNAMIC_SEQRAM_B6
    write_cmos_sensor_2byte(0x3DB8, 0x4080); // DYNAMIC_SEQRAM_B8
    write_cmos_sensor_2byte(0x3DBA, 0x0480); // DYNAMIC_SEQRAM_BA
    write_cmos_sensor_2byte(0x3DBC, 0x887C); // DYNAMIC_SEQRAM_BC
    write_cmos_sensor_2byte(0x3DBE, 0xAA86); // DYNAMIC_SEQRAM_BE
    write_cmos_sensor_2byte(0x3DC0, 0x0900); // DYNAMIC_SEQRAM_C0
    write_cmos_sensor_2byte(0x3DC2, 0x877A); // DYNAMIC_SEQRAM_C2
    write_cmos_sensor_2byte(0x3DC4, 0x000E); // DYNAMIC_SEQRAM_C4
    write_cmos_sensor_2byte(0x3DC6, 0xC379); // DYNAMIC_SEQRAM_C6
    write_cmos_sensor_2byte(0x3DC8, 0x4C40); // DYNAMIC_SEQRAM_C8
    write_cmos_sensor_2byte(0x3DCA, 0xBF70); // DYNAMIC_SEQRAM_CA
    write_cmos_sensor_2byte(0x3DCC, 0x5E40); // DYNAMIC_SEQRAM_CC
    write_cmos_sensor_2byte(0x3DCE, 0x114E); // DYNAMIC_SEQRAM_CE
    write_cmos_sensor_2byte(0x3DD0, 0x5D41); // DYNAMIC_SEQRAM_D0
    write_cmos_sensor_2byte(0x3DD2, 0x5383); // DYNAMIC_SEQRAM_D2
    write_cmos_sensor_2byte(0x3DD4, 0x4200); // DYNAMIC_SEQRAM_D4
    write_cmos_sensor_2byte(0x3DD6, 0xC055); // DYNAMIC_SEQRAM_D6
    write_cmos_sensor_2byte(0x3DD8, 0xA400); // DYNAMIC_SEQRAM_D8
    write_cmos_sensor_2byte(0x3DDA, 0xC083); // DYNAMIC_SEQRAM_DA
    write_cmos_sensor_2byte(0x3DDC, 0x4288); // DYNAMIC_SEQRAM_DC
    write_cmos_sensor_2byte(0x3DDE, 0x6083); // DYNAMIC_SEQRAM_DE
    write_cmos_sensor_2byte(0x3DE0, 0x5B80); // DYNAMIC_SEQRAM_E0
    write_cmos_sensor_2byte(0x3DE2, 0x5A64); // DYNAMIC_SEQRAM_E2
    write_cmos_sensor_2byte(0x3DE4, 0x1030); // DYNAMIC_SEQRAM_E4
    write_cmos_sensor_2byte(0x3DE6, 0x801C); // DYNAMIC_SEQRAM_E6
    write_cmos_sensor_2byte(0x3DE8, 0x00A5); // DYNAMIC_SEQRAM_E8
    write_cmos_sensor_2byte(0x3DEA, 0x5697); // DYNAMIC_SEQRAM_EA
    write_cmos_sensor_2byte(0x3DEC, 0x57A5); // DYNAMIC_SEQRAM_EC
    write_cmos_sensor_2byte(0x3DEE, 0x5180); // DYNAMIC_SEQRAM_EE
    write_cmos_sensor_2byte(0x3DF0, 0x505A); // DYNAMIC_SEQRAM_F0
    write_cmos_sensor_2byte(0x3DF2, 0x814D); // DYNAMIC_SEQRAM_F2
    write_cmos_sensor_2byte(0x3DF4, 0x8358); // DYNAMIC_SEQRAM_F4
    write_cmos_sensor_2byte(0x3DF6, 0x8058); // DYNAMIC_SEQRAM_F6
    write_cmos_sensor_2byte(0x3DF8, 0xA943); // DYNAMIC_SEQRAM_F8
    write_cmos_sensor_2byte(0x3DFA, 0x8345); // DYNAMIC_SEQRAM_FA
    write_cmos_sensor_2byte(0x3DFC, 0xB045); // DYNAMIC_SEQRAM_FC
    write_cmos_sensor_2byte(0x3DFE, 0x8343); // DYNAMIC_SEQRAM_FE
    write_cmos_sensor_2byte(0x3E00, 0xA351); // DYNAMIC_SEQRAM_100
    write_cmos_sensor_2byte(0x3E02, 0xE251); // DYNAMIC_SEQRAM_102
    write_cmos_sensor_2byte(0x3E04, 0x8C59); // DYNAMIC_SEQRAM_104
    write_cmos_sensor_2byte(0x3E06, 0x8059); // DYNAMIC_SEQRAM_106
    write_cmos_sensor_2byte(0x3E08, 0x8A5F); // DYNAMIC_SEQRAM_108
    write_cmos_sensor_2byte(0x3E0A, 0xEC7C); // DYNAMIC_SEQRAM_10A
    write_cmos_sensor_2byte(0x3E0C, 0xCC84); // DYNAMIC_SEQRAM_10C
    write_cmos_sensor_2byte(0x3E0E, 0x6182); // DYNAMIC_SEQRAM_10E
    write_cmos_sensor_2byte(0x3E10, 0x6283); // DYNAMIC_SEQRAM_110
    write_cmos_sensor_2byte(0x3E12, 0x4283); // DYNAMIC_SEQRAM_112
    write_cmos_sensor_2byte(0x3E14, 0x10CC); // DYNAMIC_SEQRAM_114
    write_cmos_sensor_2byte(0x3E16, 0x6496); // DYNAMIC_SEQRAM_116
    write_cmos_sensor_2byte(0x3E18, 0x4281); // DYNAMIC_SEQRAM_118
    write_cmos_sensor_2byte(0x3E1A, 0x41BB); // DYNAMIC_SEQRAM_11A
    write_cmos_sensor_2byte(0x3E1C, 0x4082); // DYNAMIC_SEQRAM_11C
    write_cmos_sensor_2byte(0x3E1E, 0x407E); // DYNAMIC_SEQRAM_11E
    write_cmos_sensor_2byte(0x3E20, 0xCC41); // DYNAMIC_SEQRAM_120
    write_cmos_sensor_2byte(0x3E22, 0x8042); // DYNAMIC_SEQRAM_122
    write_cmos_sensor_2byte(0x3E24, 0x8043); // DYNAMIC_SEQRAM_124
    write_cmos_sensor_2byte(0x3E26, 0x8300); // DYNAMIC_SEQRAM_126
    write_cmos_sensor_2byte(0x3E28, 0xC088); // DYNAMIC_SEQRAM_128
    write_cmos_sensor_2byte(0x3E2A, 0x44BA); // DYNAMIC_SEQRAM_12A
    write_cmos_sensor_2byte(0x3E2C, 0x4488); // DYNAMIC_SEQRAM_12C
    write_cmos_sensor_2byte(0x3E2E, 0x00C8); // DYNAMIC_SEQRAM_12E
    write_cmos_sensor_2byte(0x3E30, 0x8042); // DYNAMIC_SEQRAM_130
    write_cmos_sensor_2byte(0x3E32, 0x4181); // DYNAMIC_SEQRAM_132
    write_cmos_sensor_2byte(0x3E34, 0x4082); // DYNAMIC_SEQRAM_134
    write_cmos_sensor_2byte(0x3E36, 0x4080); // DYNAMIC_SEQRAM_136
    write_cmos_sensor_2byte(0x3E38, 0x4180); // DYNAMIC_SEQRAM_138
    write_cmos_sensor_2byte(0x3E3A, 0x4280); // DYNAMIC_SEQRAM_13A
    write_cmos_sensor_2byte(0x3E3C, 0x4383); // DYNAMIC_SEQRAM_13C
    write_cmos_sensor_2byte(0x3E3E, 0x00C0); // DYNAMIC_SEQRAM_13E
    write_cmos_sensor_2byte(0x3E40, 0x8844); // DYNAMIC_SEQRAM_140
    write_cmos_sensor_2byte(0x3E42, 0xBA44); // DYNAMIC_SEQRAM_142
    write_cmos_sensor_2byte(0x3E44, 0x8800); // DYNAMIC_SEQRAM_144
    write_cmos_sensor_2byte(0x3E46, 0xC880); // DYNAMIC_SEQRAM_146
    write_cmos_sensor_2byte(0x3E48, 0x4241); // DYNAMIC_SEQRAM_148
    write_cmos_sensor_2byte(0x3E4A, 0x8240); // DYNAMIC_SEQRAM_14A
    write_cmos_sensor_2byte(0x3E4C, 0x8140); // DYNAMIC_SEQRAM_14C
    write_cmos_sensor_2byte(0x3E4E, 0x8041); // DYNAMIC_SEQRAM_14E
    write_cmos_sensor_2byte(0x3E50, 0x8042); // DYNAMIC_SEQRAM_150
    write_cmos_sensor_2byte(0x3E52, 0x8043); // DYNAMIC_SEQRAM_152
    write_cmos_sensor_2byte(0x3E54, 0x8300); // DYNAMIC_SEQRAM_154
    write_cmos_sensor_2byte(0x3E56, 0xC088); // DYNAMIC_SEQRAM_156
    write_cmos_sensor_2byte(0x3E58, 0x44BA); // DYNAMIC_SEQRAM_158
    write_cmos_sensor_2byte(0x3E5A, 0x4488); // DYNAMIC_SEQRAM_15A
    write_cmos_sensor_2byte(0x3E5C, 0x00C8); // DYNAMIC_SEQRAM_15C
    write_cmos_sensor_2byte(0x3E5E, 0x8042); // DYNAMIC_SEQRAM_15E
    write_cmos_sensor_2byte(0x3E60, 0x4181); // DYNAMIC_SEQRAM_160
    write_cmos_sensor_2byte(0x3E62, 0x4082); // DYNAMIC_SEQRAM_162
    write_cmos_sensor_2byte(0x3E64, 0x4080); // DYNAMIC_SEQRAM_164
    write_cmos_sensor_2byte(0x3E66, 0x4180); // DYNAMIC_SEQRAM_166
    write_cmos_sensor_2byte(0x3E68, 0x4280); // DYNAMIC_SEQRAM_168
    write_cmos_sensor_2byte(0x3E6A, 0x4383); // DYNAMIC_SEQRAM_16A
    write_cmos_sensor_2byte(0x3E6C, 0x00C0); // DYNAMIC_SEQRAM_16C
    write_cmos_sensor_2byte(0x3E6E, 0x8844); // DYNAMIC_SEQRAM_16E
    write_cmos_sensor_2byte(0x3E70, 0xBA44); // DYNAMIC_SEQRAM_170
    write_cmos_sensor_2byte(0x3E72, 0x8800); // DYNAMIC_SEQRAM_172
    write_cmos_sensor_2byte(0x3E74, 0xC880); // DYNAMIC_SEQRAM_174
    write_cmos_sensor_2byte(0x3E76, 0x4241); // DYNAMIC_SEQRAM_176
    write_cmos_sensor_2byte(0x3E78, 0x8140); // DYNAMIC_SEQRAM_178
    write_cmos_sensor_2byte(0x3E7A, 0x9F5E); // DYNAMIC_SEQRAM_17A
    write_cmos_sensor_2byte(0x3E7C, 0x8A54); // DYNAMIC_SEQRAM_17C
    write_cmos_sensor_2byte(0x3E7E, 0x8620); // DYNAMIC_SEQRAM_17E
    write_cmos_sensor_2byte(0x3E80, 0x2881); // DYNAMIC_SEQRAM_180
    write_cmos_sensor_2byte(0x3E82, 0x6026); // DYNAMIC_SEQRAM_182
    write_cmos_sensor_2byte(0x3E84, 0x8055); // DYNAMIC_SEQRAM_184
    write_cmos_sensor_2byte(0x3E86, 0x8070); // DYNAMIC_SEQRAM_186
    write_cmos_sensor_2byte(0x3E88, 0x0000); // DYNAMIC_SEQRAM_188
    write_cmos_sensor_2byte(0x3E8A, 0x0000); // DYNAMIC_SEQRAM_18A
    write_cmos_sensor_2byte(0x3E8C, 0x0000); // DYNAMIC_SEQRAM_18C
    write_cmos_sensor_2byte(0x3E8E, 0x0000); // DYNAMIC_SEQRAM_18E
    write_cmos_sensor_2byte(0x3E90, 0x0000); // DYNAMIC_SEQRAM_190
    write_cmos_sensor_2byte(0x3E92, 0x0000); // DYNAMIC_SEQRAM_192
    write_cmos_sensor_2byte(0x3E94, 0x0000); // DYNAMIC_SEQRAM_194
    write_cmos_sensor_2byte(0x3E96, 0x0000); // DYNAMIC_SEQRAM_196
    write_cmos_sensor_2byte(0x3E98, 0x0000); // DYNAMIC_SEQRAM_198
    write_cmos_sensor_2byte(0x3E9A, 0x0000); // DYNAMIC_SEQRAM_19A
    write_cmos_sensor_2byte(0x3E9C, 0x0000); // DYNAMIC_SEQRAM_19C
    write_cmos_sensor_2byte(0x3E9E, 0x0000); // DYNAMIC_SEQRAM_19E
    write_cmos_sensor_2byte(0x3EA0, 0x0000); // DYNAMIC_SEQRAM_1A0
    write_cmos_sensor_2byte(0x3EA2, 0x0000); // DYNAMIC_SEQRAM_1A2
    write_cmos_sensor_2byte(0x3EA4, 0x0000); // DYNAMIC_SEQRAM_1A4
    write_cmos_sensor_2byte(0x3EA6, 0x0000); // DYNAMIC_SEQRAM_1A6
    write_cmos_sensor_2byte(0x3EA8, 0x0000); // DYNAMIC_SEQRAM_1A8
    write_cmos_sensor_2byte(0x3EAA, 0x0000); // DYNAMIC_SEQRAM_1AA
    write_cmos_sensor_2byte(0x3EAC, 0x0000); // DYNAMIC_SEQRAM_1AC
    write_cmos_sensor_2byte(0x3EAE, 0x0000); // DYNAMIC_SEQRAM_1AE
    write_cmos_sensor_2byte(0x3EB0, 0x0000); // DYNAMIC_SEQRAM_1B0
    write_cmos_sensor_2byte(0x3EB2, 0x0000); // DYNAMIC_SEQRAM_1B2
    write_cmos_sensor_2byte(0x3EB4, 0x0000); // DYNAMIC_SEQRAM_1B4
    write_cmos_sensor_2byte(0x3EB6, 0x004D); // DAC_LD_0_1
    write_cmos_sensor_2byte(0x3EBC, 0xAA06); // DAC_LD_6_7
    write_cmos_sensor_2byte(0x3EC0, 0x2E02); // DAC_LD_10_11
    write_cmos_sensor_2byte(0x3EC2, 0x7700); // DAC_LD_12_13
    write_cmos_sensor_2byte(0x3EC4, 0x1C08); // DAC_LD_14_15
    write_cmos_sensor_2byte(0x3EC6, 0xEA44); // DAC_LD_16_17
    write_cmos_sensor_2byte(0x3EC8, 0x0F0F); // DAC_LD_18_19
    write_cmos_sensor_2byte(0x3ECA, 0x0F4A); // DAC_LD_20_21
    write_cmos_sensor_2byte(0x3ECC, 0x0706); // DAC_LD_22_23
    write_cmos_sensor_2byte(0x3ECE, 0x443B); // DAC_LD_24_25
    write_cmos_sensor_2byte(0x3ED0, 0x12F0); // DAC_LD_26_27
    write_cmos_sensor_2byte(0x3ED2, 0x0039); // DAC_LD_28_29
    write_cmos_sensor_2byte(0x3ED4, 0x862F); // DAC_LD_30_31
    write_cmos_sensor_2byte(0x3ED6, 0x4080); // DAC_LD_32_33
    write_cmos_sensor_2byte(0x3ED8, 0x0523); // DAC_LD_34_35
    write_cmos_sensor_2byte(0x3EDA, 0xF8AA); // DAC_LD_36_37
    write_cmos_sensor_2byte(0x3EDC, 0x5078); // DAC_LD_38_39
    write_cmos_sensor_2byte(0x3EDE, 0x5005); // DAC_LD_40_41
    write_cmos_sensor_2byte(0x316A, 0x8200); // DAC_RSTLO
    write_cmos_sensor_2byte(0x316E, 0x8200); // DAC_ECL
    write_cmos_sensor_2byte(0x316C, 0x8200); // DAC_TXLO
    write_cmos_sensor_2byte(0x3EF0, 0x414D); // DAC_LD_ECL
    write_cmos_sensor_2byte(0x3EF2, 0x0101); // DAC_LD_FSC
    write_cmos_sensor_2byte(0x3EF6, 0x0307); // DAC_LD_RSTD
    write_cmos_sensor_2byte(0x3EFA, 0x0F0F); // DAC_LD_TXLO
    write_cmos_sensor_2byte(0x3EFC, 0x0F0F); // DAC_LD_TXLO1
    write_cmos_sensor_2byte(0x3EFE, 0x0F0F); // DAC_LD_TXLO2
    write_cmos_sensor_2byte(0x31B0, 0x004D); // FRAME_PREAMBLE
    write_cmos_sensor_2byte(0x31B2, 0x0028); // LINE_PREAMBLE
    write_cmos_sensor_2byte(0x31B4, 0x230E); // MIPI_TIMING_0
    write_cmos_sensor_2byte(0x31B6, 0x1348); // MIPI_TIMING_1
    write_cmos_sensor_2byte(0x31B8, 0x1C12); // MIPI_TIMING_2
    write_cmos_sensor_2byte(0x31BA, 0x185B); // MIPI_TIMING_3
    write_cmos_sensor_2byte(0x31BC, 0x8509); // MIPI_TIMING_4
    write_cmos_sensor_2byte(0x0300, 0x0004); // VT_PIX_CLK_DIV
    write_cmos_sensor_2byte(0x0302, 0x0001); // VT_SYS_CLK_DIV
    write_cmos_sensor_2byte(0x0304, 0x0A0A); // PRE_PLL_CLK_DIV
    write_cmos_sensor_2byte(0x0306, 0xB7B7); // PLL_MULTIPLIER	MCLK,48M
    write_cmos_sensor_2byte(0x0308, 0x000A); // OP_PIX_CLK_DIV
    write_cmos_sensor_2byte(0x030A, 0x0001); // OP_SYS_CLK_DIV
    write_cmos_sensor_2byte(0x0112, 0x0A0A); // CCP_DATA_FORMAT
    write_cmos_sensor_2byte(0x3016, 0x0101); // ROW_SPEED
    write_cmos_sensor_2byte(0x0344, 0x00C8); // X_ADDR_START
    write_cmos_sensor_2byte(0x0348, 0x0FC7); // X_ADDR_END
    write_cmos_sensor_2byte(0x0346, 0x01F0); // Y_ADDR_START
    write_cmos_sensor_2byte(0x034A, 0x0A5D); // Y_ADDR_END
    write_cmos_sensor_2byte(0x034C, 0x0780); // X_OUTPUT_SIZE
    write_cmos_sensor_2byte(0x034E, 0x0438); // Y_OUTPUT_SIZE
    write_cmos_sensor_2byte(0x3040, 0x0043); // READ_MODE
    write_cmos_sensor_2byte(0x3172, 0x0206); // ANALOG_CONTROL2
    write_cmos_sensor_2byte(0x317A, 0x516E); // ANALOG_CONTROL6
    write_cmos_sensor_2byte(0x3F3C, 0x0003); // ANALOG_CONTROL9
    write_cmos_sensor_2byte(0x0400, 0x0001); // SCALING_MODE
    write_cmos_sensor_2byte(0x0404, 0x0020); // SCALE_M
    write_cmos_sensor_2byte(0x0342, 0x1230); // LINE_LENGTH_PCK
    write_cmos_sensor_2byte(0x0340, 0x0C4E); // FRAME_LENGTH_LINES
    write_cmos_sensor_2byte(0x0202, 0x0C4E); // COARSE_INTEGRATION_TIME
    write_cmos_sensor_2byte(0x30FE, 0x0060); // CTREE_OFF
    write_cmos_sensor_2byte(0x31E0, 0x0781); // PIX_DEF_ID
    write_cmos_sensor_2byte(0x3F00, 0x004F); // BM_T0
    write_cmos_sensor_2byte(0x3F02, 0x0125); // BM_T1
    write_cmos_sensor_2byte(0x3F04, 0x0020); // NOISE_GAIN_THRESHOLD0
    write_cmos_sensor_2byte(0x3F06, 0x0040); // NOISE_GAIN_THRESHOLD1
    write_cmos_sensor_2byte(0x3F08, 0x0070); // NOISE_GAIN_THRESHOLD2
    write_cmos_sensor_2byte(0x3F0A, 0x0101); // NOISE_FLOOR10
    write_cmos_sensor_2byte(0x3F0C, 0x0302); // NOISE_FLOOR32
    write_cmos_sensor_2byte(0x3F1E, 0x0022); // NOISE_COEF
    write_cmos_sensor_2byte(0x3F1A, 0x01FF); // CROSSFACTOR2
    write_cmos_sensor_2byte(0x3F14, 0x0101); // SINGLE_K_FACTOR2
    write_cmos_sensor_2byte(0x3F44, 0x0707); // COUPLE_K_FACTOR2
    write_cmos_sensor_2byte(0x3F18, 0x011E); // CROSSFACTOR1
    write_cmos_sensor_2byte(0x3F12, 0x0303); // SINGLE_K_FACTOR1
    write_cmos_sensor_2byte(0x3F42, 0x1511); // COUPLE_K_FACTOR1
    write_cmos_sensor_2byte(0x3F16, 0x011E); // CROSSFACTOR0
    write_cmos_sensor_2byte(0x3F10, 0x0505); // SINGLE_K_FACTOR0
    write_cmos_sensor_2byte(0x3F40, 0x1511); // COUPLE_K_FACTOR0
    write_cmos_sensor_2byte(0x3F3C, 0x0003); // ANALOG_CONTROL9
    write_cmos_sensor_2byte(0x301A, 0x021C); // RESET_REGISTER
	printf("Initialize 1080P30 RAW10 \n");
}


static int ar1335_init_setting_4kp_48Mxclk()
{
	//[static struct vvsensor_ar1335_reg_value_t ar1335_init_setting_4kp_48Mxclk]
	write_cmos_sensor_2byte(0x301A, 0x0219);// RESET_REGISTER
	write_cmos_sensor_2byte(0x3042, 0x1004);// DARK_CONTROL2
	write_cmos_sensor_2byte(0x30D2, 0x0120);// CRM_CONTROL
	write_cmos_sensor_2byte(0x30D4, 0x0000);// COLUMN_CORRECTION
	write_cmos_sensor_2byte(0x3090, 0x0000);// RNF_CONTROL
	write_cmos_sensor_2byte(0x30FC, 0x0060);// MODULE_CLK_OFF
	write_cmos_sensor_2byte(0x30FE, 0x0060);// CTREE_OFF
	write_cmos_sensor_2byte(0x31E0, 0x0781);// PIX_DEF_ID
	write_cmos_sensor_2byte(0x3180, 0x9434);// FINE_DIG_CORRECTION_CONTROL
	write_cmos_sensor_2byte(0x317C, 0xEFF4);// ANALOG_CONTROL7
	write_cmos_sensor_2byte(0x30EE, 0x613E);// DARK_CONTROL3
	write_cmos_sensor_2byte(0x3F2C, 0x4428);// GTH_THRES_RTN
	write_cmos_sensor_2byte(0x3D00, 0x0446);// DYNAMIC_SEQRAM_00
	write_cmos_sensor_2byte(0x3D02, 0x4C66);// DYNAMIC_SEQRAM_02
	write_cmos_sensor_2byte(0x3D04, 0xFFFF);// DYNAMIC_SEQRAM_04
	write_cmos_sensor_2byte(0x3D06, 0xFFFF);// DYNAMIC_SEQRAM_06
	write_cmos_sensor_2byte(0x3D08, 0x5E40);// DYNAMIC_SEQRAM_08
	write_cmos_sensor_2byte(0x3D0A, 0x1146);// DYNAMIC_SEQRAM_0A
	write_cmos_sensor_2byte(0x3D0C, 0x5D41);// DYNAMIC_SEQRAM_0C
	write_cmos_sensor_2byte(0x3D0E, 0x1088);// DYNAMIC_SEQRAM_0E
	write_cmos_sensor_2byte(0x3D10, 0x8342);// DYNAMIC_SEQRAM_10
	write_cmos_sensor_2byte(0x3D12, 0x00C0);// DYNAMIC_SEQRAM_12
	write_cmos_sensor_2byte(0x3D14, 0x5580);// DYNAMIC_SEQRAM_14
	write_cmos_sensor_2byte(0x3D16, 0x5B83);// DYNAMIC_SEQRAM_16
	write_cmos_sensor_2byte(0x3D18, 0x6084);// DYNAMIC_SEQRAM_18
	write_cmos_sensor_2byte(0x3D1A, 0x5A8D);// DYNAMIC_SEQRAM_1A
	write_cmos_sensor_2byte(0x3D1C, 0x00C0);// DYNAMIC_SEQRAM_1C
	write_cmos_sensor_2byte(0x3D1E, 0x8342);// DYNAMIC_SEQRAM_1E
	write_cmos_sensor_2byte(0x3D20, 0x925A);// DYNAMIC_SEQRAM_20
	write_cmos_sensor_2byte(0x3D22, 0x8664);// DYNAMIC_SEQRAM_22
	write_cmos_sensor_2byte(0x3D24, 0x1030);// DYNAMIC_SEQRAM_24
	write_cmos_sensor_2byte(0x3D26, 0x801C);// DYNAMIC_SEQRAM_26
	write_cmos_sensor_2byte(0x3D28, 0x00A0);// DYNAMIC_SEQRAM_28
	write_cmos_sensor_2byte(0x3D2A, 0x56B0);// DYNAMIC_SEQRAM_2A
	write_cmos_sensor_2byte(0x3D2C, 0x5788);// DYNAMIC_SEQRAM_2C
	write_cmos_sensor_2byte(0x3D2E, 0x5150);// DYNAMIC_SEQRAM_2E
	write_cmos_sensor_2byte(0x3D30, 0x824D);// DYNAMIC_SEQRAM_30
	write_cmos_sensor_2byte(0x3D32, 0x8D58);// DYNAMIC_SEQRAM_32
	write_cmos_sensor_2byte(0x3D34, 0x58D2);// DYNAMIC_SEQRAM_34
	write_cmos_sensor_2byte(0x3D36, 0x438A);// DYNAMIC_SEQRAM_36
	write_cmos_sensor_2byte(0x3D38, 0x4592);// DYNAMIC_SEQRAM_38
	write_cmos_sensor_2byte(0x3D3A, 0x458A);// DYNAMIC_SEQRAM_3A
	write_cmos_sensor_2byte(0x3D3C, 0x4389);// DYNAMIC_SEQRAM_3C
	write_cmos_sensor_2byte(0x3D3E, 0x51FF);// DYNAMIC_SEQRAM_3E
	write_cmos_sensor_2byte(0x3D40, 0x8451);// DYNAMIC_SEQRAM_40
	write_cmos_sensor_2byte(0x3D42, 0x8410);// DYNAMIC_SEQRAM_42
	write_cmos_sensor_2byte(0x3D44, 0x0C88);// DYNAMIC_SEQRAM_44
	write_cmos_sensor_2byte(0x3D46, 0x5959);// DYNAMIC_SEQRAM_46
	write_cmos_sensor_2byte(0x3D48, 0x8A5F);// DYNAMIC_SEQRAM_48
	write_cmos_sensor_2byte(0x3D4A, 0xDA42);// DYNAMIC_SEQRAM_4A
	write_cmos_sensor_2byte(0x3D4C, 0x9361);// DYNAMIC_SEQRAM_4C
	write_cmos_sensor_2byte(0x3D4E, 0x8262);// DYNAMIC_SEQRAM_4E
	write_cmos_sensor_2byte(0x3D50, 0x8342);// DYNAMIC_SEQRAM_50
	write_cmos_sensor_2byte(0x3D52, 0x8010);// DYNAMIC_SEQRAM_52
	write_cmos_sensor_2byte(0x3D54, 0xC041);// DYNAMIC_SEQRAM_54
	write_cmos_sensor_2byte(0x3D56, 0x64FF);// DYNAMIC_SEQRAM_56
	write_cmos_sensor_2byte(0x3D58, 0xFFB7);// DYNAMIC_SEQRAM_58
	write_cmos_sensor_2byte(0x3D5A, 0x4081);// DYNAMIC_SEQRAM_5A
	write_cmos_sensor_2byte(0x3D5C, 0x4080);// DYNAMIC_SEQRAM_5C
	write_cmos_sensor_2byte(0x3D5E, 0x4180);// DYNAMIC_SEQRAM_5E
	write_cmos_sensor_2byte(0x3D60, 0x4280);// DYNAMIC_SEQRAM_60
	write_cmos_sensor_2byte(0x3D62, 0x438D);// DYNAMIC_SEQRAM_62
	write_cmos_sensor_2byte(0x3D64, 0x44BA);// DYNAMIC_SEQRAM_64
	write_cmos_sensor_2byte(0x3D66, 0x4488);// DYNAMIC_SEQRAM_66
	write_cmos_sensor_2byte(0x3D68, 0x4380);// DYNAMIC_SEQRAM_68
	write_cmos_sensor_2byte(0x3D6A, 0x4241);// DYNAMIC_SEQRAM_6A
	write_cmos_sensor_2byte(0x3D6C, 0x8140);// DYNAMIC_SEQRAM_6C
	write_cmos_sensor_2byte(0x3D6E, 0x8240);// DYNAMIC_SEQRAM_6E
	write_cmos_sensor_2byte(0x3D70, 0x8041);// DYNAMIC_SEQRAM_70
	write_cmos_sensor_2byte(0x3D72, 0x8042);// DYNAMIC_SEQRAM_72
	write_cmos_sensor_2byte(0x3D74, 0x8043);// DYNAMIC_SEQRAM_74
	write_cmos_sensor_2byte(0x3D76, 0x8D44);// DYNAMIC_SEQRAM_76
	write_cmos_sensor_2byte(0x3D78, 0xBA44);// DYNAMIC_SEQRAM_78
	write_cmos_sensor_2byte(0x3D7A, 0x875E);// DYNAMIC_SEQRAM_7A
	write_cmos_sensor_2byte(0x3D7C, 0x4354);// DYNAMIC_SEQRAM_7C
	write_cmos_sensor_2byte(0x3D7E, 0x4241);// DYNAMIC_SEQRAM_7E
	write_cmos_sensor_2byte(0x3D80, 0x8140);// DYNAMIC_SEQRAM_80
	write_cmos_sensor_2byte(0x3D82, 0x8120);// DYNAMIC_SEQRAM_82
	write_cmos_sensor_2byte(0x3D84, 0x2881);// DYNAMIC_SEQRAM_84
	write_cmos_sensor_2byte(0x3D86, 0x6026);// DYNAMIC_SEQRAM_86
	write_cmos_sensor_2byte(0x3D88, 0x8055);// DYNAMIC_SEQRAM_88
	write_cmos_sensor_2byte(0x3D8A, 0x8070);// DYNAMIC_SEQRAM_8A
	write_cmos_sensor_2byte(0x3D8C, 0x8040);// DYNAMIC_SEQRAM_8C
	write_cmos_sensor_2byte(0x3D8E, 0x4C81);// DYNAMIC_SEQRAM_8E
	write_cmos_sensor_2byte(0x3D90, 0x45C3);// DYNAMIC_SEQRAM_90
	write_cmos_sensor_2byte(0x3D92, 0x4581);// DYNAMIC_SEQRAM_92
	write_cmos_sensor_2byte(0x3D94, 0x4C40);// DYNAMIC_SEQRAM_94
	write_cmos_sensor_2byte(0x3D96, 0x8070);// DYNAMIC_SEQRAM_96
	write_cmos_sensor_2byte(0x3D98, 0x8040);// DYNAMIC_SEQRAM_98
	write_cmos_sensor_2byte(0x3D9A, 0x4C85);// DYNAMIC_SEQRAM_9A
	write_cmos_sensor_2byte(0x3D9C, 0x6CA8);// DYNAMIC_SEQRAM_9C
	write_cmos_sensor_2byte(0x3D9E, 0x6C8C);// DYNAMIC_SEQRAM_9E
	write_cmos_sensor_2byte(0x3DA0, 0x000E);// DYNAMIC_SEQRAM_A0
	write_cmos_sensor_2byte(0x3DA2, 0xBE44);// DYNAMIC_SEQRAM_A2
	write_cmos_sensor_2byte(0x3DA4, 0x8844);// DYNAMIC_SEQRAM_A4
	write_cmos_sensor_2byte(0x3DA6, 0xBC78);// DYNAMIC_SEQRAM_A6
	write_cmos_sensor_2byte(0x3DA8, 0x0900);// DYNAMIC_SEQRAM_A8
	write_cmos_sensor_2byte(0x3DAA, 0x8904);// DYNAMIC_SEQRAM_AA
	write_cmos_sensor_2byte(0x3DAC, 0x8080);// DYNAMIC_SEQRAM_AC
	write_cmos_sensor_2byte(0x3DAE, 0x0240);// DYNAMIC_SEQRAM_AE
	write_cmos_sensor_2byte(0x3DB0, 0x8609);// DYNAMIC_SEQRAM_B0
	write_cmos_sensor_2byte(0x3DB2, 0x008E);// DYNAMIC_SEQRAM_B2
	write_cmos_sensor_2byte(0x3DB4, 0x0900);// DYNAMIC_SEQRAM_B4
	write_cmos_sensor_2byte(0x3DB6, 0x8002);// DYNAMIC_SEQRAM_B6
	write_cmos_sensor_2byte(0x3DB8, 0x4080);// DYNAMIC_SEQRAM_B8
	write_cmos_sensor_2byte(0x3DBA, 0x0480);// DYNAMIC_SEQRAM_BA
	write_cmos_sensor_2byte(0x3DBC, 0x887C);// DYNAMIC_SEQRAM_BC
	write_cmos_sensor_2byte(0x3DBE, 0xAA86);// DYNAMIC_SEQRAM_BE
	write_cmos_sensor_2byte(0x3DC0, 0x0900);// DYNAMIC_SEQRAM_C0
	write_cmos_sensor_2byte(0x3DC2, 0x877A);// DYNAMIC_SEQRAM_C2
	write_cmos_sensor_2byte(0x3DC4, 0x000E);// DYNAMIC_SEQRAM_C4
	write_cmos_sensor_2byte(0x3DC6, 0xC379);// DYNAMIC_SEQRAM_C6
	write_cmos_sensor_2byte(0x3DC8, 0x4C40);// DYNAMIC_SEQRAM_C8
	write_cmos_sensor_2byte(0x3DCA, 0xBF70);// DYNAMIC_SEQRAM_CA
	write_cmos_sensor_2byte(0x3DCC, 0x5E40);// DYNAMIC_SEQRAM_CC
	write_cmos_sensor_2byte(0x3DCE, 0x114E);// DYNAMIC_SEQRAM_CE
	write_cmos_sensor_2byte(0x3DD0, 0x5D41);// DYNAMIC_SEQRAM_D0
	write_cmos_sensor_2byte(0x3DD2, 0x5383);// DYNAMIC_SEQRAM_D2
	write_cmos_sensor_2byte(0x3DD4, 0x4200);// DYNAMIC_SEQRAM_D4
	write_cmos_sensor_2byte(0x3DD6, 0xC055);// DYNAMIC_SEQRAM_D6
	write_cmos_sensor_2byte(0x3DD8, 0xA400);// DYNAMIC_SEQRAM_D8
	write_cmos_sensor_2byte(0x3DDA, 0xC083);// DYNAMIC_SEQRAM_DA
	write_cmos_sensor_2byte(0x3DDC, 0x4288);// DYNAMIC_SEQRAM_DC
	write_cmos_sensor_2byte(0x3DDE, 0x6083);// DYNAMIC_SEQRAM_DE
	write_cmos_sensor_2byte(0x3DE0, 0x5B80);// DYNAMIC_SEQRAM_E0
	write_cmos_sensor_2byte(0x3DE2, 0x5A64);// DYNAMIC_SEQRAM_E2
	write_cmos_sensor_2byte(0x3DE4, 0x1030);// DYNAMIC_SEQRAM_E4
	write_cmos_sensor_2byte(0x3DE6, 0x801C);// DYNAMIC_SEQRAM_E6
	write_cmos_sensor_2byte(0x3DE8, 0x00A5);// DYNAMIC_SEQRAM_E8
	write_cmos_sensor_2byte(0x3DEA, 0x5697);// DYNAMIC_SEQRAM_EA
	write_cmos_sensor_2byte(0x3DEC, 0x57A5);// DYNAMIC_SEQRAM_EC
	write_cmos_sensor_2byte(0x3DEE, 0x5180);// DYNAMIC_SEQRAM_EE
	write_cmos_sensor_2byte(0x3DF0, 0x505A);// DYNAMIC_SEQRAM_F0
	write_cmos_sensor_2byte(0x3DF2, 0x814D);// DYNAMIC_SEQRAM_F2
	write_cmos_sensor_2byte(0x3DF4, 0x8358);// DYNAMIC_SEQRAM_F4
	write_cmos_sensor_2byte(0x3DF6, 0x8058);// DYNAMIC_SEQRAM_F6
	write_cmos_sensor_2byte(0x3DF8, 0xA943);// DYNAMIC_SEQRAM_F8
	write_cmos_sensor_2byte(0x3DFA, 0x8345);// DYNAMIC_SEQRAM_FA
	write_cmos_sensor_2byte(0x3DFC, 0xB045);// DYNAMIC_SEQRAM_FC
	write_cmos_sensor_2byte(0x3DFE, 0x8343);// DYNAMIC_SEQRAM_FE
	write_cmos_sensor_2byte(0x3E00, 0xA351);// DYNAMIC_SEQRAM_100
	write_cmos_sensor_2byte(0x3E02, 0xE251);// DYNAMIC_SEQRAM_102
	write_cmos_sensor_2byte(0x3E04, 0x8C59);// DYNAMIC_SEQRAM_104
	write_cmos_sensor_2byte(0x3E06, 0x8059);// DYNAMIC_SEQRAM_106
	write_cmos_sensor_2byte(0x3E08, 0x8A5F);// DYNAMIC_SEQRAM_108
	write_cmos_sensor_2byte(0x3E0A, 0xEC7C);// DYNAMIC_SEQRAM_10A
	write_cmos_sensor_2byte(0x3E0C, 0xCC84);// DYNAMIC_SEQRAM_10C
	write_cmos_sensor_2byte(0x3E0E, 0x6182);// DYNAMIC_SEQRAM_10E
	write_cmos_sensor_2byte(0x3E10, 0x6283);// DYNAMIC_SEQRAM_110
	write_cmos_sensor_2byte(0x3E12, 0x4283);// DYNAMIC_SEQRAM_112
	write_cmos_sensor_2byte(0x3E14, 0x10CC);// DYNAMIC_SEQRAM_114
	write_cmos_sensor_2byte(0x3E16, 0x6496);// DYNAMIC_SEQRAM_116
	write_cmos_sensor_2byte(0x3E18, 0x4281);// DYNAMIC_SEQRAM_118
	write_cmos_sensor_2byte(0x3E1A, 0x41BB);// DYNAMIC_SEQRAM_11A
	write_cmos_sensor_2byte(0x3E1C, 0x4082);// DYNAMIC_SEQRAM_11C
	write_cmos_sensor_2byte(0x3E1E, 0x407E);// DYNAMIC_SEQRAM_11E
	write_cmos_sensor_2byte(0x3E20, 0xCC41);// DYNAMIC_SEQRAM_120
	write_cmos_sensor_2byte(0x3E22, 0x8042);// DYNAMIC_SEQRAM_122
	write_cmos_sensor_2byte(0x3E24, 0x8043);// DYNAMIC_SEQRAM_124
	write_cmos_sensor_2byte(0x3E26, 0x8300);// DYNAMIC_SEQRAM_126
	write_cmos_sensor_2byte(0x3E28, 0xC088);// DYNAMIC_SEQRAM_128
	write_cmos_sensor_2byte(0x3E2A, 0x44BA);// DYNAMIC_SEQRAM_12A
	write_cmos_sensor_2byte(0x3E2C, 0x4488);// DYNAMIC_SEQRAM_12C
	write_cmos_sensor_2byte(0x3E2E, 0x00C8);// DYNAMIC_SEQRAM_12E
	write_cmos_sensor_2byte(0x3E30, 0x8042);// DYNAMIC_SEQRAM_130
	write_cmos_sensor_2byte(0x3E32, 0x4181);// DYNAMIC_SEQRAM_132
	write_cmos_sensor_2byte(0x3E34, 0x4082);// DYNAMIC_SEQRAM_134
	write_cmos_sensor_2byte(0x3E36, 0x4080);// DYNAMIC_SEQRAM_136
	write_cmos_sensor_2byte(0x3E38, 0x4180);// DYNAMIC_SEQRAM_138
	write_cmos_sensor_2byte(0x3E3A, 0x4280);// DYNAMIC_SEQRAM_13A
	write_cmos_sensor_2byte(0x3E3C, 0x4383);// DYNAMIC_SEQRAM_13C
	write_cmos_sensor_2byte(0x3E3E, 0x00C0);// DYNAMIC_SEQRAM_13E
	write_cmos_sensor_2byte(0x3E40, 0x8844);// DYNAMIC_SEQRAM_140
	write_cmos_sensor_2byte(0x3E42, 0xBA44);// DYNAMIC_SEQRAM_142
	write_cmos_sensor_2byte(0x3E44, 0x8800);// DYNAMIC_SEQRAM_144
	write_cmos_sensor_2byte(0x3E46, 0xC880);// DYNAMIC_SEQRAM_146
	write_cmos_sensor_2byte(0x3E48, 0x4241);// DYNAMIC_SEQRAM_148
	write_cmos_sensor_2byte(0x3E4A, 0x8240);// DYNAMIC_SEQRAM_14A
	write_cmos_sensor_2byte(0x3E4C, 0x8140);// DYNAMIC_SEQRAM_14C
	write_cmos_sensor_2byte(0x3E4E, 0x8041);// DYNAMIC_SEQRAM_14E
	write_cmos_sensor_2byte(0x3E50, 0x8042);// DYNAMIC_SEQRAM_150
	write_cmos_sensor_2byte(0x3E52, 0x8043);// DYNAMIC_SEQRAM_152
	write_cmos_sensor_2byte(0x3E54, 0x8300);// DYNAMIC_SEQRAM_154
	write_cmos_sensor_2byte(0x3E56, 0xC088);// DYNAMIC_SEQRAM_156
	write_cmos_sensor_2byte(0x3E58, 0x44BA);// DYNAMIC_SEQRAM_158
	write_cmos_sensor_2byte(0x3E5A, 0x4488);// DYNAMIC_SEQRAM_15A
	write_cmos_sensor_2byte(0x3E5C, 0x00C8);// DYNAMIC_SEQRAM_15C
	write_cmos_sensor_2byte(0x3E5E, 0x8042);// DYNAMIC_SEQRAM_15E
	write_cmos_sensor_2byte(0x3E60, 0x4181);// DYNAMIC_SEQRAM_160
	write_cmos_sensor_2byte(0x3E62, 0x4082);// DYNAMIC_SEQRAM_162
	write_cmos_sensor_2byte(0x3E64, 0x4080);// DYNAMIC_SEQRAM_164
	write_cmos_sensor_2byte(0x3E66, 0x4180);// DYNAMIC_SEQRAM_166
	write_cmos_sensor_2byte(0x3E68, 0x4280);// DYNAMIC_SEQRAM_168
	write_cmos_sensor_2byte(0x3E6A, 0x4383);// DYNAMIC_SEQRAM_16A
	write_cmos_sensor_2byte(0x3E6C, 0x00C0);// DYNAMIC_SEQRAM_16C
	write_cmos_sensor_2byte(0x3E6E, 0x8844);// DYNAMIC_SEQRAM_16E
	write_cmos_sensor_2byte(0x3E70, 0xBA44);// DYNAMIC_SEQRAM_170
	write_cmos_sensor_2byte(0x3E72, 0x8800);// DYNAMIC_SEQRAM_172
	write_cmos_sensor_2byte(0x3E74, 0xC880);// DYNAMIC_SEQRAM_174
	write_cmos_sensor_2byte(0x3E76, 0x4241);// DYNAMIC_SEQRAM_176
	write_cmos_sensor_2byte(0x3E78, 0x8140);// DYNAMIC_SEQRAM_178
	write_cmos_sensor_2byte(0x3E7A, 0x9F5E);// DYNAMIC_SEQRAM_17A
	write_cmos_sensor_2byte(0x3E7C, 0x8A54);// DYNAMIC_SEQRAM_17C
	write_cmos_sensor_2byte(0x3E7E, 0x8620);// DYNAMIC_SEQRAM_17E
	write_cmos_sensor_2byte(0x3E80, 0x2881);// DYNAMIC_SEQRAM_180
	write_cmos_sensor_2byte(0x3E82, 0x6026);// DYNAMIC_SEQRAM_182
	write_cmos_sensor_2byte(0x3E84, 0x8055);// DYNAMIC_SEQRAM_184
	write_cmos_sensor_2byte(0x3E86, 0x8070);// DYNAMIC_SEQRAM_186
	write_cmos_sensor_2byte(0x3E88, 0x0000);// DYNAMIC_SEQRAM_188
	write_cmos_sensor_2byte(0x3E8A, 0x0000);// DYNAMIC_SEQRAM_18A
	write_cmos_sensor_2byte(0x3E8C, 0x0000);// DYNAMIC_SEQRAM_18C
	write_cmos_sensor_2byte(0x3E8E, 0x0000);// DYNAMIC_SEQRAM_18E
	write_cmos_sensor_2byte(0x3E90, 0x0000);// DYNAMIC_SEQRAM_190
	write_cmos_sensor_2byte(0x3E92, 0x0000);// DYNAMIC_SEQRAM_192
	write_cmos_sensor_2byte(0x3E94, 0x0000);// DYNAMIC_SEQRAM_194
	write_cmos_sensor_2byte(0x3E96, 0x0000);// DYNAMIC_SEQRAM_196
	write_cmos_sensor_2byte(0x3E98, 0x0000);// DYNAMIC_SEQRAM_198
	write_cmos_sensor_2byte(0x3E9A, 0x0000);// DYNAMIC_SEQRAM_19A
	write_cmos_sensor_2byte(0x3E9C, 0x0000);// DYNAMIC_SEQRAM_19C
	write_cmos_sensor_2byte(0x3E9E, 0x0000);// DYNAMIC_SEQRAM_19E
	write_cmos_sensor_2byte(0x3EA0, 0x0000);// DYNAMIC_SEQRAM_1A0
	write_cmos_sensor_2byte(0x3EA2, 0x0000);// DYNAMIC_SEQRAM_1A2
	write_cmos_sensor_2byte(0x3EA4, 0x0000);// DYNAMIC_SEQRAM_1A4
	write_cmos_sensor_2byte(0x3EA6, 0x0000);// DYNAMIC_SEQRAM_1A6
	write_cmos_sensor_2byte(0x3EA8, 0x0000);// DYNAMIC_SEQRAM_1A8
	write_cmos_sensor_2byte(0x3EAA, 0x0000);// DYNAMIC_SEQRAM_1AA
	write_cmos_sensor_2byte(0x3EAC, 0x0000);// DYNAMIC_SEQRAM_1AC
	write_cmos_sensor_2byte(0x3EAE, 0x0000);// DYNAMIC_SEQRAM_1AE
	write_cmos_sensor_2byte(0x3EB0, 0x0000);// DYNAMIC_SEQRAM_1B0
	write_cmos_sensor_2byte(0x3EB2, 0x0000);// DYNAMIC_SEQRAM_1B2
	write_cmos_sensor_2byte(0x3EB4, 0x0000);// DYNAMIC_SEQRAM_1B4
	write_cmos_sensor_2byte(0x3EB6, 0x004D);// DAC_LD_0_1
	write_cmos_sensor_2byte(0x3EBC, 0xAA06);// DAC_LD_6_7
	write_cmos_sensor_2byte(0x3EC0, 0x2E02);// DAC_LD_10_11
	write_cmos_sensor_2byte(0x3EC2, 0x7700);// DAC_LD_12_13
	write_cmos_sensor_2byte(0x3EC4, 0x1C08);// DAC_LD_14_15
	write_cmos_sensor_2byte(0x3EC6, 0xEA44);// DAC_LD_16_17
	write_cmos_sensor_2byte(0x3EC8, 0x0F0F);// DAC_LD_18_19
	write_cmos_sensor_2byte(0x3ECA, 0x0F4A);// DAC_LD_20_21
	write_cmos_sensor_2byte(0x3ECC, 0x0706);// DAC_LD_22_23
	write_cmos_sensor_2byte(0x3ECE, 0x443B);// DAC_LD_24_25
	write_cmos_sensor_2byte(0x3ED0, 0x12F0);// DAC_LD_26_27
	write_cmos_sensor_2byte(0x3ED2, 0x0039);// DAC_LD_28_29
	write_cmos_sensor_2byte(0x3ED4, 0x862F);// DAC_LD_30_31
	write_cmos_sensor_2byte(0x3ED6, 0x4080);// DAC_LD_32_33
	write_cmos_sensor_2byte(0x3ED8, 0x0523);// DAC_LD_34_35
	write_cmos_sensor_2byte(0x3EDA, 0xF8AA);// DAC_LD_36_37
	write_cmos_sensor_2byte(0x3EDC, 0x5078);// DAC_LD_38_39
	write_cmos_sensor_2byte(0x3EDE, 0x5005);// DAC_LD_40_41
	write_cmos_sensor_2byte(0x316A, 0x8200);// DAC_RSTLO
	write_cmos_sensor_2byte(0x316E, 0x8200);// DAC_ECL
	write_cmos_sensor_2byte(0x316C, 0x8200);// DAC_TXLO
	write_cmos_sensor_2byte(0x3EF0, 0x414D);// DAC_LD_ECL
	write_cmos_sensor_2byte(0x3EF2, 0x0101);// DAC_LD_FSC
	write_cmos_sensor_2byte(0x3EF6, 0x0307);// DAC_LD_RSTD
	write_cmos_sensor_2byte(0x3EFA, 0x0F0F);// DAC_LD_TXLO
	write_cmos_sensor_2byte(0x3EFC, 0x0F0F);// DAC_LD_TXLO1
	write_cmos_sensor_2byte(0x3EFE, 0x0F0F);// DAC_LD_TXLO2
	write_cmos_sensor_2byte(0x31B0, 0x005C); // FRAME_PREAMBLE
	write_cmos_sensor_2byte(0x31B2, 0x002D); // LINE_PREAMBLE
	write_cmos_sensor_2byte(0x31B4, 0x4392); // MIPI_TIMING_0
	write_cmos_sensor_2byte(0x31B6, 0x43CA); // MIPI_TIMING_1
	write_cmos_sensor_2byte(0x31B8, 0x2413); // MIPI_TIMING_2
	write_cmos_sensor_2byte(0x31BA, 0x1C70); // MIPI_TIMING_3
	write_cmos_sensor_2byte(0x31BC, 0x868B); // MIPI_TIMING_4
	write_cmos_sensor_2byte(0x0300, 0x0005); // VT_PIX_CLK_DIV
	write_cmos_sensor_2byte(0x0302, 0x0001); // VT_SYS_CLK_DIV
	write_cmos_sensor_2byte(0x0304, 0x0303); // PRE_PLL_CLK_DIV
	write_cmos_sensor_2byte(0x0306, 0x2C2C); // PLL_MULTIPLIER
	write_cmos_sensor_2byte(0x0308, 0x000A); // OP_PIX_CLK_DIV
	write_cmos_sensor_2byte(0x030A, 0x0001); // OP_SYS_CLK_DIV
	write_cmos_sensor_2byte(0x3016, 0x0111); // ROW_SPEED
	write_cmos_sensor_2byte(0x31AE, 0x0204); // SERIAL_FORMAT
	write_cmos_sensor_2byte(0x0112, 0x0A0A); // CCP_DATA_FORMAT
	write_cmos_sensor_2byte(0x0344, 0x00C8);// X_ADDR_START
	write_cmos_sensor_2byte(0x0348, 0x0FC7);// X_ADDR_END
	write_cmos_sensor_2byte(0x0346, 0x01F0);// Y_ADDR_START
	write_cmos_sensor_2byte(0x034A, 0x0A5F);// Y_ADDR_END
	write_cmos_sensor_2byte(0x034C, 0x0F00);// X_OUTPUT_SIZE
	write_cmos_sensor_2byte(0x034E, 0x0870);// Y_OUTPUT_SIZE
	write_cmos_sensor_2byte(0x3040, 0x0041);// READ_MODE
	write_cmos_sensor_2byte(0x0112, 0x0A0A);// CCP_DATA_FORMAT
	write_cmos_sensor_2byte(0x0112, 0x0A0A);// CCP_DATA_FORMAT
	write_cmos_sensor_2byte(0x3172, 0x0206);// ANALOG_CONTROL2
	write_cmos_sensor_2byte(0x317A, 0x416E);// ANALOG_CONTROL6
	write_cmos_sensor_2byte(0x3F3C, 0x0003);// ANALOG_CONTROL9
	write_cmos_sensor_2byte(0x0342, 0x1230);// LINE_LENGTH_PCK
	write_cmos_sensor_2byte(0x0340, 0x0BCC);// FRAME_LENGTH_LINES
	write_cmos_sensor_2byte(0x0202, 0x0AA0);// COARSE_INTEGRATION_TIME
	write_cmos_sensor_2byte(0x30FE, 0x0060);// CTREE_OFF
	write_cmos_sensor_2byte(0x31E0, 0x0781);// PIX_DEF_ID
	write_cmos_sensor_2byte(0x3F00, 0x004F);// BM_T0
	write_cmos_sensor_2byte(0x3F02, 0x0125);// BM_T1
	write_cmos_sensor_2byte(0x3F04, 0x0020);// NOISE_GAIN_THRESHOLD0
	write_cmos_sensor_2byte(0x3F06, 0x0040);// NOISE_GAIN_THRESHOLD1
	write_cmos_sensor_2byte(0x3F08, 0x0070);// NOISE_GAIN_THRESHOLD2
	write_cmos_sensor_2byte(0x3F0A, 0x0101);// NOISE_FLOOR10
	write_cmos_sensor_2byte(0x3F0C, 0x0302);// NOISE_FLOOR32
	write_cmos_sensor_2byte(0x3F1E, 0x0022);// NOISE_COEF
	write_cmos_sensor_2byte(0x3F1A, 0x01FF);// CROSSFACTOR2
	write_cmos_sensor_2byte(0x3F14, 0x0101);// SINGLE_K_FACTOR2
	write_cmos_sensor_2byte(0x3F44, 0x0707);// COUPLE_K_FACTOR2
	write_cmos_sensor_2byte(0x3F18, 0x011E);// CROSSFACTOR1
	write_cmos_sensor_2byte(0x3F12, 0x0303);// SINGLE_K_FACTOR1
	write_cmos_sensor_2byte(0x3F42, 0x1511);// COUPLE_K_FACTOR1
	write_cmos_sensor_2byte(0x3F16, 0x011E);// CROSSFACTOR0
	write_cmos_sensor_2byte(0x3F10, 0x0505);// SINGLE_K_FACTOR0
	write_cmos_sensor_2byte(0x3F40, 0x1511);// COUPLE_K_FACTOR0
	write_cmos_sensor_2byte(0x3F3C, 0x0003);// ANALOG_CONTROL9
	write_cmos_sensor_2byte(0x301A, 0x021C);// RESET_REGISTER
	printf("Initialize 3840x2160P20 RAW10 \n");
}

static void ar1335_mode_2048x1536_30fps_raw10_48Mxclk()
{
    write_cmos_sensor_2byte(0x301A, 0x0219); // RESET_REGISTER
	usleep(100*1000);
    write_cmos_sensor_2byte(0x3042, 0x1004); // DARK_CONTROL2
    write_cmos_sensor_2byte(0x30D2, 0x0120); // CRM_CONTROL
    write_cmos_sensor_2byte(0x30D4, 0x0000); // COLUMN_CORRECTION
    write_cmos_sensor_2byte(0x3090, 0x0000); // RNF_CONTROL
    write_cmos_sensor_2byte(0x30FC, 0x0060); // MODULE_CLK_OFF
    write_cmos_sensor_2byte(0x30FE, 0x0060); // CTREE_OFF
    write_cmos_sensor_2byte(0x31E0, 0x0781); // PIX_DEF_ID
    write_cmos_sensor_2byte(0x3180, 0x9434); // FINE_DIG_CORRECTION_CONTROL
    write_cmos_sensor_2byte(0x317C, 0xEFF4); // ANALOG_CONTROL7
    write_cmos_sensor_2byte(0x30EE, 0x613E); // DARK_CONTROL3
    write_cmos_sensor_2byte(0x3F2C, 0x4428); // GTH_THRES_RTN
    write_cmos_sensor_2byte(0x3D00, 0x0446); // DYNAMIC_SEQRAM_00
    write_cmos_sensor_2byte(0x3D02, 0x4C66); // DYNAMIC_SEQRAM_02
    write_cmos_sensor_2byte(0x3D04, 0xFFFF); // DYNAMIC_SEQRAM_04
    write_cmos_sensor_2byte(0x3D06, 0xFFFF); // DYNAMIC_SEQRAM_06
    write_cmos_sensor_2byte(0x3D08, 0x5E40); // DYNAMIC_SEQRAM_08
    write_cmos_sensor_2byte(0x3D0A, 0x1146); // DYNAMIC_SEQRAM_0A
    write_cmos_sensor_2byte(0x3D0C, 0x5D41); // DYNAMIC_SEQRAM_0C
    write_cmos_sensor_2byte(0x3D0E, 0x1088); // DYNAMIC_SEQRAM_0E
    write_cmos_sensor_2byte(0x3D10, 0x8342); // DYNAMIC_SEQRAM_10
    write_cmos_sensor_2byte(0x3D12, 0x00C0); // DYNAMIC_SEQRAM_12
    write_cmos_sensor_2byte(0x3D14, 0x5580); // DYNAMIC_SEQRAM_14
    write_cmos_sensor_2byte(0x3D16, 0x5B83); // DYNAMIC_SEQRAM_16
    write_cmos_sensor_2byte(0x3D18, 0x6084); // DYNAMIC_SEQRAM_18
    write_cmos_sensor_2byte(0x3D1A, 0x5A8D); // DYNAMIC_SEQRAM_1A
    write_cmos_sensor_2byte(0x3D1C, 0x00C0); // DYNAMIC_SEQRAM_1C
    write_cmos_sensor_2byte(0x3D1E, 0x8342); // DYNAMIC_SEQRAM_1E
    write_cmos_sensor_2byte(0x3D20, 0x925A); // DYNAMIC_SEQRAM_20
    write_cmos_sensor_2byte(0x3D22, 0x8664); // DYNAMIC_SEQRAM_22
    write_cmos_sensor_2byte(0x3D24, 0x1030); // DYNAMIC_SEQRAM_24
    write_cmos_sensor_2byte(0x3D26, 0x801C); // DYNAMIC_SEQRAM_26
    write_cmos_sensor_2byte(0x3D28, 0x00A0); // DYNAMIC_SEQRAM_28
    write_cmos_sensor_2byte(0x3D2A, 0x56B0); // DYNAMIC_SEQRAM_2A
    write_cmos_sensor_2byte(0x3D2C, 0x5788); // DYNAMIC_SEQRAM_2C
    write_cmos_sensor_2byte(0x3D2E, 0x5150); // DYNAMIC_SEQRAM_2E
    write_cmos_sensor_2byte(0x3D30, 0x824D); // DYNAMIC_SEQRAM_30
    write_cmos_sensor_2byte(0x3D32, 0x8D58); // DYNAMIC_SEQRAM_32
    write_cmos_sensor_2byte(0x3D34, 0x58D2); // DYNAMIC_SEQRAM_34
    write_cmos_sensor_2byte(0x3D36, 0x438A); // DYNAMIC_SEQRAM_36
    write_cmos_sensor_2byte(0x3D38, 0x4592); // DYNAMIC_SEQRAM_38
    write_cmos_sensor_2byte(0x3D3A, 0x458A); // DYNAMIC_SEQRAM_3A
    write_cmos_sensor_2byte(0x3D3C, 0x4389); // DYNAMIC_SEQRAM_3C
    write_cmos_sensor_2byte(0x3D3E, 0x51FF); // DYNAMIC_SEQRAM_3E
    write_cmos_sensor_2byte(0x3D40, 0x8451); // DYNAMIC_SEQRAM_40
    write_cmos_sensor_2byte(0x3D42, 0x8410); // DYNAMIC_SEQRAM_42
    write_cmos_sensor_2byte(0x3D44, 0x0C88); // DYNAMIC_SEQRAM_44
    write_cmos_sensor_2byte(0x3D46, 0x5959); // DYNAMIC_SEQRAM_46
    write_cmos_sensor_2byte(0x3D48, 0x8A5F); // DYNAMIC_SEQRAM_48
    write_cmos_sensor_2byte(0x3D4A, 0xDA42); // DYNAMIC_SEQRAM_4A
    write_cmos_sensor_2byte(0x3D4C, 0x9361); // DYNAMIC_SEQRAM_4C
    write_cmos_sensor_2byte(0x3D4E, 0x8262); // DYNAMIC_SEQRAM_4E
    write_cmos_sensor_2byte(0x3D50, 0x8342); // DYNAMIC_SEQRAM_50
    write_cmos_sensor_2byte(0x3D52, 0x8010); // DYNAMIC_SEQRAM_52
    write_cmos_sensor_2byte(0x3D54, 0xC041); // DYNAMIC_SEQRAM_54
    write_cmos_sensor_2byte(0x3D56, 0x64FF); // DYNAMIC_SEQRAM_56
    write_cmos_sensor_2byte(0x3D58, 0xFFB7); // DYNAMIC_SEQRAM_58
    write_cmos_sensor_2byte(0x3D5A, 0x4081); // DYNAMIC_SEQRAM_5A
    write_cmos_sensor_2byte(0x3D5C, 0x4080); // DYNAMIC_SEQRAM_5C
    write_cmos_sensor_2byte(0x3D5E, 0x4180); // DYNAMIC_SEQRAM_5E
    write_cmos_sensor_2byte(0x3D60, 0x4280); // DYNAMIC_SEQRAM_60
    write_cmos_sensor_2byte(0x3D62, 0x438D); // DYNAMIC_SEQRAM_62
    write_cmos_sensor_2byte(0x3D64, 0x44BA); // DYNAMIC_SEQRAM_64
    write_cmos_sensor_2byte(0x3D66, 0x4488); // DYNAMIC_SEQRAM_66
    write_cmos_sensor_2byte(0x3D68, 0x4380); // DYNAMIC_SEQRAM_68
    write_cmos_sensor_2byte(0x3D6A, 0x4241); // DYNAMIC_SEQRAM_6A
    write_cmos_sensor_2byte(0x3D6C, 0x8140); // DYNAMIC_SEQRAM_6C
    write_cmos_sensor_2byte(0x3D6E, 0x8240); // DYNAMIC_SEQRAM_6E
    write_cmos_sensor_2byte(0x3D70, 0x8041); // DYNAMIC_SEQRAM_70
    write_cmos_sensor_2byte(0x3D72, 0x8042); // DYNAMIC_SEQRAM_72
    write_cmos_sensor_2byte(0x3D74, 0x8043); // DYNAMIC_SEQRAM_74
    write_cmos_sensor_2byte(0x3D76, 0x8D44); // DYNAMIC_SEQRAM_76
    write_cmos_sensor_2byte(0x3D78, 0xBA44); // DYNAMIC_SEQRAM_78
    write_cmos_sensor_2byte(0x3D7A, 0x875E); // DYNAMIC_SEQRAM_7A
    write_cmos_sensor_2byte(0x3D7C, 0x4354); // DYNAMIC_SEQRAM_7C
    write_cmos_sensor_2byte(0x3D7E, 0x4241); // DYNAMIC_SEQRAM_7E
    write_cmos_sensor_2byte(0x3D80, 0x8140); // DYNAMIC_SEQRAM_80
    write_cmos_sensor_2byte(0x3D82, 0x8120); // DYNAMIC_SEQRAM_82
    write_cmos_sensor_2byte(0x3D84, 0x2881); // DYNAMIC_SEQRAM_84
    write_cmos_sensor_2byte(0x3D86, 0x6026); // DYNAMIC_SEQRAM_86
    write_cmos_sensor_2byte(0x3D88, 0x8055); // DYNAMIC_SEQRAM_88
    write_cmos_sensor_2byte(0x3D8A, 0x8070); // DYNAMIC_SEQRAM_8A
    write_cmos_sensor_2byte(0x3D8C, 0x8040); // DYNAMIC_SEQRAM_8C
    write_cmos_sensor_2byte(0x3D8E, 0x4C81); // DYNAMIC_SEQRAM_8E
    write_cmos_sensor_2byte(0x3D90, 0x45C3); // DYNAMIC_SEQRAM_90
    write_cmos_sensor_2byte(0x3D92, 0x4581); // DYNAMIC_SEQRAM_92
    write_cmos_sensor_2byte(0x3D94, 0x4C40); // DYNAMIC_SEQRAM_94
    write_cmos_sensor_2byte(0x3D96, 0x8070); // DYNAMIC_SEQRAM_96
    write_cmos_sensor_2byte(0x3D98, 0x8040); // DYNAMIC_SEQRAM_98
    write_cmos_sensor_2byte(0x3D9A, 0x4C85); // DYNAMIC_SEQRAM_9A
    write_cmos_sensor_2byte(0x3D9C, 0x6CA8); // DYNAMIC_SEQRAM_9C
    write_cmos_sensor_2byte(0x3D9E, 0x6C8C); // DYNAMIC_SEQRAM_9E
    write_cmos_sensor_2byte(0x3DA0, 0x000E); // DYNAMIC_SEQRAM_A0
    write_cmos_sensor_2byte(0x3DA2, 0xBE44); // DYNAMIC_SEQRAM_A2
    write_cmos_sensor_2byte(0x3DA4, 0x8844); // DYNAMIC_SEQRAM_A4
    write_cmos_sensor_2byte(0x3DA6, 0xBC78); // DYNAMIC_SEQRAM_A6
    write_cmos_sensor_2byte(0x3DA8, 0x0900); // DYNAMIC_SEQRAM_A8
    write_cmos_sensor_2byte(0x3DAA, 0x8904); // DYNAMIC_SEQRAM_AA
    write_cmos_sensor_2byte(0x3DAC, 0x8080); // DYNAMIC_SEQRAM_AC
    write_cmos_sensor_2byte(0x3DAE, 0x0240); // DYNAMIC_SEQRAM_AE
    write_cmos_sensor_2byte(0x3DB0, 0x8609); // DYNAMIC_SEQRAM_B0
    write_cmos_sensor_2byte(0x3DB2, 0x008E); // DYNAMIC_SEQRAM_B2
    write_cmos_sensor_2byte(0x3DB4, 0x0900); // DYNAMIC_SEQRAM_B4
    write_cmos_sensor_2byte(0x3DB6, 0x8002); // DYNAMIC_SEQRAM_B6
    write_cmos_sensor_2byte(0x3DB8, 0x4080); // DYNAMIC_SEQRAM_B8
    write_cmos_sensor_2byte(0x3DBA, 0x0480); // DYNAMIC_SEQRAM_BA
    write_cmos_sensor_2byte(0x3DBC, 0x887C); // DYNAMIC_SEQRAM_BC
    write_cmos_sensor_2byte(0x3DBE, 0xAA86); // DYNAMIC_SEQRAM_BE
    write_cmos_sensor_2byte(0x3DC0, 0x0900); // DYNAMIC_SEQRAM_C0
    write_cmos_sensor_2byte(0x3DC2, 0x877A); // DYNAMIC_SEQRAM_C2
    write_cmos_sensor_2byte(0x3DC4, 0x000E); // DYNAMIC_SEQRAM_C4
    write_cmos_sensor_2byte(0x3DC6, 0xC379); // DYNAMIC_SEQRAM_C6
    write_cmos_sensor_2byte(0x3DC8, 0x4C40); // DYNAMIC_SEQRAM_C8
    write_cmos_sensor_2byte(0x3DCA, 0xBF70); // DYNAMIC_SEQRAM_CA
    write_cmos_sensor_2byte(0x3DCC, 0x5E40); // DYNAMIC_SEQRAM_CC
    write_cmos_sensor_2byte(0x3DCE, 0x114E); // DYNAMIC_SEQRAM_CE
    write_cmos_sensor_2byte(0x3DD0, 0x5D41); // DYNAMIC_SEQRAM_D0
    write_cmos_sensor_2byte(0x3DD2, 0x5383); // DYNAMIC_SEQRAM_D2
    write_cmos_sensor_2byte(0x3DD4, 0x4200); // DYNAMIC_SEQRAM_D4
    write_cmos_sensor_2byte(0x3DD6, 0xC055); // DYNAMIC_SEQRAM_D6
    write_cmos_sensor_2byte(0x3DD8, 0xA400); // DYNAMIC_SEQRAM_D8
    write_cmos_sensor_2byte(0x3DDA, 0xC083); // DYNAMIC_SEQRAM_DA
    write_cmos_sensor_2byte(0x3DDC, 0x4288); // DYNAMIC_SEQRAM_DC
    write_cmos_sensor_2byte(0x3DDE, 0x6083); // DYNAMIC_SEQRAM_DE
    write_cmos_sensor_2byte(0x3DE0, 0x5B80); // DYNAMIC_SEQRAM_E0
    write_cmos_sensor_2byte(0x3DE2, 0x5A64); // DYNAMIC_SEQRAM_E2
    write_cmos_sensor_2byte(0x3DE4, 0x1030); // DYNAMIC_SEQRAM_E4
    write_cmos_sensor_2byte(0x3DE6, 0x801C); // DYNAMIC_SEQRAM_E6
    write_cmos_sensor_2byte(0x3DE8, 0x00A5); // DYNAMIC_SEQRAM_E8
    write_cmos_sensor_2byte(0x3DEA, 0x5697); // DYNAMIC_SEQRAM_EA
    write_cmos_sensor_2byte(0x3DEC, 0x57A5); // DYNAMIC_SEQRAM_EC
    write_cmos_sensor_2byte(0x3DEE, 0x5180); // DYNAMIC_SEQRAM_EE
    write_cmos_sensor_2byte(0x3DF0, 0x505A); // DYNAMIC_SEQRAM_F0
    write_cmos_sensor_2byte(0x3DF2, 0x814D); // DYNAMIC_SEQRAM_F2
    write_cmos_sensor_2byte(0x3DF4, 0x8358); // DYNAMIC_SEQRAM_F4
    write_cmos_sensor_2byte(0x3DF6, 0x8058); // DYNAMIC_SEQRAM_F6
    write_cmos_sensor_2byte(0x3DF8, 0xA943); // DYNAMIC_SEQRAM_F8
    write_cmos_sensor_2byte(0x3DFA, 0x8345); // DYNAMIC_SEQRAM_FA
    write_cmos_sensor_2byte(0x3DFC, 0xB045); // DYNAMIC_SEQRAM_FC
    write_cmos_sensor_2byte(0x3DFE, 0x8343); // DYNAMIC_SEQRAM_FE
    write_cmos_sensor_2byte(0x3E00, 0xA351); // DYNAMIC_SEQRAM_100
    write_cmos_sensor_2byte(0x3E02, 0xE251); // DYNAMIC_SEQRAM_102
    write_cmos_sensor_2byte(0x3E04, 0x8C59); // DYNAMIC_SEQRAM_104
    write_cmos_sensor_2byte(0x3E06, 0x8059); // DYNAMIC_SEQRAM_106
    write_cmos_sensor_2byte(0x3E08, 0x8A5F); // DYNAMIC_SEQRAM_108
    write_cmos_sensor_2byte(0x3E0A, 0xEC7C); // DYNAMIC_SEQRAM_10A
    write_cmos_sensor_2byte(0x3E0C, 0xCC84); // DYNAMIC_SEQRAM_10C
    write_cmos_sensor_2byte(0x3E0E, 0x6182); // DYNAMIC_SEQRAM_10E
    write_cmos_sensor_2byte(0x3E10, 0x6283); // DYNAMIC_SEQRAM_110
    write_cmos_sensor_2byte(0x3E12, 0x4283); // DYNAMIC_SEQRAM_112
    write_cmos_sensor_2byte(0x3E14, 0x10CC); // DYNAMIC_SEQRAM_114
    write_cmos_sensor_2byte(0x3E16, 0x6496); // DYNAMIC_SEQRAM_116
    write_cmos_sensor_2byte(0x3E18, 0x4281); // DYNAMIC_SEQRAM_118
    write_cmos_sensor_2byte(0x3E1A, 0x41BB); // DYNAMIC_SEQRAM_11A
    write_cmos_sensor_2byte(0x3E1C, 0x4082); // DYNAMIC_SEQRAM_11C
    write_cmos_sensor_2byte(0x3E1E, 0x407E); // DYNAMIC_SEQRAM_11E
    write_cmos_sensor_2byte(0x3E20, 0xCC41); // DYNAMIC_SEQRAM_120
    write_cmos_sensor_2byte(0x3E22, 0x8042); // DYNAMIC_SEQRAM_122
    write_cmos_sensor_2byte(0x3E24, 0x8043); // DYNAMIC_SEQRAM_124
    write_cmos_sensor_2byte(0x3E26, 0x8300); // DYNAMIC_SEQRAM_126
    write_cmos_sensor_2byte(0x3E28, 0xC088); // DYNAMIC_SEQRAM_128
    write_cmos_sensor_2byte(0x3E2A, 0x44BA); // DYNAMIC_SEQRAM_12A
    write_cmos_sensor_2byte(0x3E2C, 0x4488); // DYNAMIC_SEQRAM_12C
    write_cmos_sensor_2byte(0x3E2E, 0x00C8); // DYNAMIC_SEQRAM_12E
    write_cmos_sensor_2byte(0x3E30, 0x8042); // DYNAMIC_SEQRAM_130
    write_cmos_sensor_2byte(0x3E32, 0x4181); // DYNAMIC_SEQRAM_132
    write_cmos_sensor_2byte(0x3E34, 0x4082); // DYNAMIC_SEQRAM_134
    write_cmos_sensor_2byte(0x3E36, 0x4080); // DYNAMIC_SEQRAM_136
    write_cmos_sensor_2byte(0x3E38, 0x4180); // DYNAMIC_SEQRAM_138
    write_cmos_sensor_2byte(0x3E3A, 0x4280); // DYNAMIC_SEQRAM_13A
    write_cmos_sensor_2byte(0x3E3C, 0x4383); // DYNAMIC_SEQRAM_13C
    write_cmos_sensor_2byte(0x3E3E, 0x00C0); // DYNAMIC_SEQRAM_13E
    write_cmos_sensor_2byte(0x3E40, 0x8844); // DYNAMIC_SEQRAM_140
    write_cmos_sensor_2byte(0x3E42, 0xBA44); // DYNAMIC_SEQRAM_142
    write_cmos_sensor_2byte(0x3E44, 0x8800); // DYNAMIC_SEQRAM_144
    write_cmos_sensor_2byte(0x3E46, 0xC880); // DYNAMIC_SEQRAM_146
    write_cmos_sensor_2byte(0x3E48, 0x4241); // DYNAMIC_SEQRAM_148
    write_cmos_sensor_2byte(0x3E4A, 0x8240); // DYNAMIC_SEQRAM_14A
    write_cmos_sensor_2byte(0x3E4C, 0x8140); // DYNAMIC_SEQRAM_14C
    write_cmos_sensor_2byte(0x3E4E, 0x8041); // DYNAMIC_SEQRAM_14E
    write_cmos_sensor_2byte(0x3E50, 0x8042); // DYNAMIC_SEQRAM_150
    write_cmos_sensor_2byte(0x3E52, 0x8043); // DYNAMIC_SEQRAM_152
    write_cmos_sensor_2byte(0x3E54, 0x8300); // DYNAMIC_SEQRAM_154
    write_cmos_sensor_2byte(0x3E56, 0xC088); // DYNAMIC_SEQRAM_156
    write_cmos_sensor_2byte(0x3E58, 0x44BA); // DYNAMIC_SEQRAM_158
    write_cmos_sensor_2byte(0x3E5A, 0x4488); // DYNAMIC_SEQRAM_15A
    write_cmos_sensor_2byte(0x3E5C, 0x00C8); // DYNAMIC_SEQRAM_15C
    write_cmos_sensor_2byte(0x3E5E, 0x8042); // DYNAMIC_SEQRAM_15E
    write_cmos_sensor_2byte(0x3E60, 0x4181); // DYNAMIC_SEQRAM_160
    write_cmos_sensor_2byte(0x3E62, 0x4082); // DYNAMIC_SEQRAM_162
    write_cmos_sensor_2byte(0x3E64, 0x4080); // DYNAMIC_SEQRAM_164
    write_cmos_sensor_2byte(0x3E66, 0x4180); // DYNAMIC_SEQRAM_166
    write_cmos_sensor_2byte(0x3E68, 0x4280); // DYNAMIC_SEQRAM_168
    write_cmos_sensor_2byte(0x3E6A, 0x4383); // DYNAMIC_SEQRAM_16A
    write_cmos_sensor_2byte(0x3E6C, 0x00C0); // DYNAMIC_SEQRAM_16C
    write_cmos_sensor_2byte(0x3E6E, 0x8844); // DYNAMIC_SEQRAM_16E
    write_cmos_sensor_2byte(0x3E70, 0xBA44); // DYNAMIC_SEQRAM_170
    write_cmos_sensor_2byte(0x3E72, 0x8800); // DYNAMIC_SEQRAM_172
    write_cmos_sensor_2byte(0x3E74, 0xC880); // DYNAMIC_SEQRAM_174
    write_cmos_sensor_2byte(0x3E76, 0x4241); // DYNAMIC_SEQRAM_176
    write_cmos_sensor_2byte(0x3E78, 0x8140); // DYNAMIC_SEQRAM_178
    write_cmos_sensor_2byte(0x3E7A, 0x9F5E); // DYNAMIC_SEQRAM_17A
    write_cmos_sensor_2byte(0x3E7C, 0x8A54); // DYNAMIC_SEQRAM_17C
    write_cmos_sensor_2byte(0x3E7E, 0x8620); // DYNAMIC_SEQRAM_17E
    write_cmos_sensor_2byte(0x3E80, 0x2881); // DYNAMIC_SEQRAM_180
    write_cmos_sensor_2byte(0x3E82, 0x6026); // DYNAMIC_SEQRAM_182
    write_cmos_sensor_2byte(0x3E84, 0x8055); // DYNAMIC_SEQRAM_184
    write_cmos_sensor_2byte(0x3E86, 0x8070); // DYNAMIC_SEQRAM_186
    write_cmos_sensor_2byte(0x3E88, 0x0000); // DYNAMIC_SEQRAM_188
    write_cmos_sensor_2byte(0x3E8A, 0x0000); // DYNAMIC_SEQRAM_18A
    write_cmos_sensor_2byte(0x3E8C, 0x0000); // DYNAMIC_SEQRAM_18C
    write_cmos_sensor_2byte(0x3E8E, 0x0000); // DYNAMIC_SEQRAM_18E
    write_cmos_sensor_2byte(0x3E90, 0x0000); // DYNAMIC_SEQRAM_190
    write_cmos_sensor_2byte(0x3E92, 0x0000); // DYNAMIC_SEQRAM_192
    write_cmos_sensor_2byte(0x3E94, 0x0000); // DYNAMIC_SEQRAM_194
    write_cmos_sensor_2byte(0x3E96, 0x0000); // DYNAMIC_SEQRAM_196
    write_cmos_sensor_2byte(0x3E98, 0x0000); // DYNAMIC_SEQRAM_198
    write_cmos_sensor_2byte(0x3E9A, 0x0000); // DYNAMIC_SEQRAM_19A
    write_cmos_sensor_2byte(0x3E9C, 0x0000); // DYNAMIC_SEQRAM_19C
    write_cmos_sensor_2byte(0x3E9E, 0x0000); // DYNAMIC_SEQRAM_19E
    write_cmos_sensor_2byte(0x3EA0, 0x0000); // DYNAMIC_SEQRAM_1A0
    write_cmos_sensor_2byte(0x3EA2, 0x0000); // DYNAMIC_SEQRAM_1A2
    write_cmos_sensor_2byte(0x3EA4, 0x0000); // DYNAMIC_SEQRAM_1A4
    write_cmos_sensor_2byte(0x3EA6, 0x0000); // DYNAMIC_SEQRAM_1A6
    write_cmos_sensor_2byte(0x3EA8, 0x0000); // DYNAMIC_SEQRAM_1A8
    write_cmos_sensor_2byte(0x3EAA, 0x0000); // DYNAMIC_SEQRAM_1AA
    write_cmos_sensor_2byte(0x3EAC, 0x0000); // DYNAMIC_SEQRAM_1AC
    write_cmos_sensor_2byte(0x3EAE, 0x0000); // DYNAMIC_SEQRAM_1AE
    write_cmos_sensor_2byte(0x3EB0, 0x0000); // DYNAMIC_SEQRAM_1B0
    write_cmos_sensor_2byte(0x3EB2, 0x0000); // DYNAMIC_SEQRAM_1B2
    write_cmos_sensor_2byte(0x3EB4, 0x0000); // DYNAMIC_SEQRAM_1B4
    write_cmos_sensor_2byte(0x3EB6, 0x004D); // DAC_LD_0_1
    write_cmos_sensor_2byte(0x3EBC, 0xAA06); // DAC_LD_6_7
    write_cmos_sensor_2byte(0x3EC0, 0x2E02); // DAC_LD_10_11
    write_cmos_sensor_2byte(0x3EC2, 0x7700); // DAC_LD_12_13
    write_cmos_sensor_2byte(0x3EC4, 0x1C08); // DAC_LD_14_15
    write_cmos_sensor_2byte(0x3EC6, 0xEA44); // DAC_LD_16_17
    write_cmos_sensor_2byte(0x3EC8, 0x0F0F); // DAC_LD_18_19
    write_cmos_sensor_2byte(0x3ECA, 0x0F4A); // DAC_LD_20_21
    write_cmos_sensor_2byte(0x3ECC, 0x0706); // DAC_LD_22_23
    write_cmos_sensor_2byte(0x3ECE, 0x443B); // DAC_LD_24_25
    write_cmos_sensor_2byte(0x3ED0, 0x12F0); // DAC_LD_26_27
    write_cmos_sensor_2byte(0x3ED2, 0x0039); // DAC_LD_28_29
    write_cmos_sensor_2byte(0x3ED4, 0x862F); // DAC_LD_30_31
    write_cmos_sensor_2byte(0x3ED6, 0x4080); // DAC_LD_32_33
    write_cmos_sensor_2byte(0x3ED8, 0x0523); // DAC_LD_34_35
    write_cmos_sensor_2byte(0x3EDA, 0xF8AA); // DAC_LD_36_37
    write_cmos_sensor_2byte(0x3EDC, 0x5078); // DAC_LD_38_39
    write_cmos_sensor_2byte(0x3EDE, 0x5005); // DAC_LD_40_41
    write_cmos_sensor_2byte(0x316A, 0x8200); // DAC_RSTLO
    write_cmos_sensor_2byte(0x316E, 0x8200); // DAC_ECL
    write_cmos_sensor_2byte(0x316C, 0x8200); // DAC_TXLO
    write_cmos_sensor_2byte(0x3EF0, 0x414D); // DAC_LD_ECL
    write_cmos_sensor_2byte(0x3EF2, 0x0101); // DAC_LD_FSC
    write_cmos_sensor_2byte(0x3EF6, 0x0307); // DAC_LD_RSTD
    write_cmos_sensor_2byte(0x3EFA, 0x0F0F); // DAC_LD_TXLO
    write_cmos_sensor_2byte(0x3EFC, 0x0F0F); // DAC_LD_TXLO1
    write_cmos_sensor_2byte(0x3EFE, 0x0F0F); // DAC_LD_TXLO2
    write_cmos_sensor_2byte(0x31B0, 0x004D); // FRAME_PREAMBLE
    write_cmos_sensor_2byte(0x31B2, 0x0028); // LINE_PREAMBLE
    write_cmos_sensor_2byte(0x31B4, 0x230E); // MIPI_TIMING_0
    write_cmos_sensor_2byte(0x31B6, 0x1348); // MIPI_TIMING_1
    write_cmos_sensor_2byte(0x31B8, 0x1C12); // MIPI_TIMING_2
    write_cmos_sensor_2byte(0x31BA, 0x185B); // MIPI_TIMING_3
    write_cmos_sensor_2byte(0x31BC, 0x8509); // MIPI_TIMING_4
    write_cmos_sensor_2byte(0x0300, 0x0004); // VT_PIX_CLK_DIV
    write_cmos_sensor_2byte(0x0302, 0x0001); // VT_SYS_CLK_DIV
    write_cmos_sensor_2byte(0x0304, 0x0A0A); // PRE_PLL_CLK_DIV
    write_cmos_sensor_2byte(0x0306, 0xB7B7); // PLL_MULTIPLIER	MCLK,48M
    write_cmos_sensor_2byte(0x0308, 0x000A); // OP_PIX_CLK_DIV
    write_cmos_sensor_2byte(0x030A, 0x0001); // OP_SYS_CLK_DIV
    write_cmos_sensor_2byte(0x0112, 0x0A0A); // CCP_DATA_FORMAT
    write_cmos_sensor_2byte(0x3016, 0x0101); // ROW_SPEED
    write_cmos_sensor_2byte(0x0344, 0x0028); // X_ADDR_START
    write_cmos_sensor_2byte(0x0348, 0x1027); // X_ADDR_END
    write_cmos_sensor_2byte(0x0346, 0x0020); // Y_ADDR_START
    write_cmos_sensor_2byte(0x034A, 0x0C1D); // Y_ADDR_END
    write_cmos_sensor_2byte(0x034C, 0x0800); // X_OUTPUT_SIZE
    write_cmos_sensor_2byte(0x034E, 0x0600); // Y_OUTPUT_SIZE
    write_cmos_sensor_2byte(0x3040, 0x0043); // READ_MODE
    write_cmos_sensor_2byte(0x3172, 0x0206); // ANALOG_CONTROL2
    write_cmos_sensor_2byte(0x317A, 0x516E); // ANALOG_CONTROL6
    write_cmos_sensor_2byte(0x3F3C, 0x0003); // ANALOG_CONTROL9
    write_cmos_sensor_2byte(0x0400, 0x0001); // SCALING_MODE
    write_cmos_sensor_2byte(0x0404, 0x0020); // SCALE_M
    write_cmos_sensor_2byte(0x0342, 0x1230); // LINE_LENGTH_PCK
    write_cmos_sensor_2byte(0x0340, 0x0C4E); // FRAME_LENGTH_LINES
    write_cmos_sensor_2byte(0x0202, 0x0C4E); // COARSE_INTEGRATION_TIME
    write_cmos_sensor_2byte(0x30FE, 0x0060); // CTREE_OFF
    write_cmos_sensor_2byte(0x31E0, 0x0781); // PIX_DEF_ID
    write_cmos_sensor_2byte(0x3F00, 0x004F); // BM_T0
    write_cmos_sensor_2byte(0x3F02, 0x0125); // BM_T1
    write_cmos_sensor_2byte(0x3F04, 0x0020); // NOISE_GAIN_THRESHOLD0
    write_cmos_sensor_2byte(0x3F06, 0x0040); // NOISE_GAIN_THRESHOLD1
    write_cmos_sensor_2byte(0x3F08, 0x0070); // NOISE_GAIN_THRESHOLD2
    write_cmos_sensor_2byte(0x3F0A, 0x0101); // NOISE_FLOOR10
    write_cmos_sensor_2byte(0x3F0C, 0x0302); // NOISE_FLOOR32
    write_cmos_sensor_2byte(0x3F1E, 0x0022); // NOISE_COEF
    write_cmos_sensor_2byte(0x3F1A, 0x01FF); // CROSSFACTOR2
    write_cmos_sensor_2byte(0x3F14, 0x0101); // SINGLE_K_FACTOR2
    write_cmos_sensor_2byte(0x3F44, 0x0707); // COUPLE_K_FACTOR2
    write_cmos_sensor_2byte(0x3F18, 0x011E); // CROSSFACTOR1
    write_cmos_sensor_2byte(0x3F12, 0x0303); // SINGLE_K_FACTOR1
    write_cmos_sensor_2byte(0x3F42, 0x1511); // COUPLE_K_FACTOR1
    write_cmos_sensor_2byte(0x3F16, 0x011E); // CROSSFACTOR0
    write_cmos_sensor_2byte(0x3F10, 0x0505); // SINGLE_K_FACTOR0
    write_cmos_sensor_2byte(0x3F40, 0x1511); // COUPLE_K_FACTOR0
    write_cmos_sensor_2byte(0x3F3C, 0x0003); // ANALOG_CONTROL9
    write_cmos_sensor_2byte(0x301A, 0x021C); // RESET_REGISTER
	printf("Initialize 2104x1560 30FPS RAW10 \n");
}


int ar1335_set_exposure(unsigned exposure)
{
	write_cmos_sensor_2byte(0x0202, exposure & 0x0ffff); // COARSE_INTEGRATION_TIME
	return 0;
}

static const unsigned _gainTable[][2] = {
	{0x0010, 0x2010},
	{0x0014, 0x2014},
	{0x0018, 0x2018},
	{0x001C, 0x201C},
	{0x0020, 0x2020},
	{0x0024, 0x2022},
	{0x0028, 0x2024},
	{0x002C, 0x2026},
	{0x0030, 0x2028},
	{0x0034, 0x202A},
	{0x0038, 0x202C},
	{0x003C, 0x202E},
	{0x0040, 0x2030},
	{0x0044, 0x2031},
	{0x0048, 0x2032},
	{0x004C, 0x2033},
	{0x0050, 0x2034},
	{0x0054, 0x2035},
	{0x0058, 0x2036},
	{0x005C, 0x2037},
	{0x0060, 0x2038},
	{0x0064, 0x2039},
	{0x0068, 0x203A},
	{0x006C, 0x203B},
	{0x0070, 0x203C},
	{0x0074, 0x203D},
	{0x0075, 0x203E},
	{0x007C, 0x203F},
	{0x0080, 0x213F},
	{0x0084, 0x223F},
	{0x0088, 0x233F},
	{0x008C, 0x243F},
	{0x0090, 0x253F},
	{0x0094, 0x263F},
	{0x0098, 0x273F},
	{0x009C, 0x28BF},
	{0x00A0, 0x29BF},
	{0x00A4, 0x2ABF},
	{0x00A8, 0x2BBF},
	{0x00AC, 0x2CBF},
	{0x00B0, 0x2DBF},
	{0x00B4, 0x2EBF},
	{0x00B8, 0x2FBF},
	{0x00BC, 0x30BF},
	{0x00C0, 0x31BF},
	{0x00C4, 0x32BF},
	{0x00C8, 0x33BF},
	{0x00CC, 0x34BF},
	{0x00D0, 0x35BF},
	{0x00D4, 0x36BF},
	{0x00D8, 0x37BF},
	{0x00DC, 0x393F},
	{0x00E0, 0x3A3F},
	{0x00E4, 0x3B3F},
	{0x00E8, 0x3C3F},
	{0x00EC, 0x3D3F},
	{0x00F0, 0x3E3F},
	{0x00F4, 0x3F3F},
	{0x00F8, 0x403F},
	{0x00FC, 0x413F},
	{0x0100, 0x423F},
	{0x0104, 0x433F},
	{0x0108, 0x443F},
	{0x010C, 0x453F},
	{0x0110, 0x463F},
	{0x0114, 0x473F},
	{0x0118, 0x48BF},
	{0x011C, 0x49BF},
	{0x0120, 0x4ABF},
	{0x0124, 0x4BBF},
	{0x0128, 0x4CBF},
	{0x012C, 0x4DBF},
	{0x0130, 0x4EBF},
	{0x0134, 0x4FBF},
	{0x0138, 0x50BF},
	{0x013C, 0x51BF},
	{0x0140, 0x52BF},
	{0x0144, 0x53BF},
	{0x0148, 0x54BF},
	{0x014C, 0x55BF},
	{0x0150, 0x56BF},
	{0x0154, 0x57BF},
	{0x0158, 0x593F},
	{0x015C, 0x5A3F},
	{0x0160, 0x5B3F},
	{0x0164, 0x5C3F},
	{0x0168, 0x5D3F},
	{0x016C, 0x5E3F},
	{0x0170, 0x5F3F},
	{0x0174, 0x603F},
	{0x0178, 0x613F},
	{0x017C, 0x623F},
	{0x0180, 0x633F}
};

int ar1335_set_gain(unsigned gain)
{
	unsigned index = 0;
	for (index = 0; index < sizeof(_gainTable)/sizeof(_gainTable[0]); index ++) {
		if (_gainTable[index][0] > gain) {
			break;
		}
	}
	index = index > 0 ? index - 1 : 0;
    write_cmos_sensor_2byte(0x305E, _gainTable[index][1]); // GLOBAL_GAIN
    return 0;
}


int ar1335_init(unsigned width, unsigned height, unsigned *p_max_exposure, unsigned *p_max_gain)
{
	int ret = 0;
	ret = ar1335_iic_init();
	if (ret < 0) {
		return -1;
	}
	usleep(5000);

	u32 sns_id = return_sensor_id();
	printf("Sensor ID %04X (expect %04X)\n", sns_id, AR1335_SENSOR_ID);
	
	//sensor_init();
	//normal_video_setting();
	if (width == 1920 && height == 1080) {
		ar1335_mode_1080p30_raw10();
	} else if (width == 3840 && height == 2160) {
		ar1335_init_setting_4kp_48Mxclk();
	} else if (width == 2048 && height == 1536) {
		ar1335_mode_2048x1536_30fps_raw10_48Mxclk();
	} else {
		printf("Not support mode\n");
		return -1;
	}
	
    //write_cmos_sensor_2byte(0x305E, 0x833F); // GLOBAL_GAIN
    //write_cmos_sensor_2byte(0x0202, 0x0C4E); // COARSE_INTEGRATION_TIME

    ar1335_set_exposure(2160);
    ar1335_set_gain(1<<4);

    if (p_max_exposure) {
    	*p_max_exposure = 3120;
    }
    if (p_max_gain) {
    	*p_max_gain = 24<<4;
    }

	 //printf("ar1335_mode_1080p30_raw10 initialize ok\n");
	return 0;
}


