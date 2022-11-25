#ifndef __ISP_PIPE_H__
#define __ISP_PIPE_H__

int isp_pipe_init(UINTPTR rawptr, UINTPTR rgbptr);
int isp_pipe_handler(void);
int isp_pipe_trigger(void);
int isp_pipe_get_int_num(unsigned *rd_int_num, unsigned *isp_int_num, unsigned *vip_int_num, unsigned *wr_int_num);


#endif
