#ifndef __SYS_INTC_H__
#define __SYS_INTC_H__

#include "xscugic.h"
#include "xintc.h"

int sys_intc_init(void);

extern XScuGic GicIntc;
extern XIntc   AxiIntc;

#endif
