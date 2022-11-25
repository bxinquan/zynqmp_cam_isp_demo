
#ifndef __AR1335_H__
#define __AR1335_H__

int ar1335_init(unsigned width, unsigned height, unsigned *p_max_exposure, unsigned *p_max_gain);
int ar1335_set_exposure(unsigned exposure);
int ar1335_set_gain(unsigned gain);


#endif
