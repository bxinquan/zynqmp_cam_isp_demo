#ifndef __CAMIF_H__
#define __CAMIF_H__

void camif_init(UINTPTR bufptr, int (*buffer_done_func)(void));
void camif_get_int_num(unsigned *mipirx_int_num, unsigned *vfrmwr_int_num);
void camif_get_mipi_info(unsigned *width, unsigned *height, unsigned *di);

#endif
