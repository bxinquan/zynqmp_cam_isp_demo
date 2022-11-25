
#ifndef __OV5647_H__
#define __OV5647_H__

int ov5647_init(unsigned width, unsigned height, unsigned *p_max_exposure, unsigned *p_max_gain);
int ov5647_set_exposure(unsigned exposure);
int ov5647_set_gain(unsigned gain);


#endif
