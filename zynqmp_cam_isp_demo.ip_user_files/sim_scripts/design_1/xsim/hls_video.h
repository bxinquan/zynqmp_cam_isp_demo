/*****************************************************************************
 *
 *     Author: Xilinx, Inc.
 *
 *     This text contains proprietary, confidential information of
 *     Xilinx, Inc. , is distributed by under license from Xilinx,
 *     Inc., and may be used, copied and/or disclosed only pursuant to
 *     the terms of a valid license agreement with Xilinx, Inc.
 *
 *     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"
 *     AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND
 *     SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,
 *     OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,
 *     APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION
 *     THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,
 *     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE
 *     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY
 *     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE
 *     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR
 *     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF
 *     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *     FOR A PARTICULAR PURPOSE.
 *
 *     Xilinx products are not intended for use in life support appliances,
 *     devices, or systems. Use in such applications is expressly prohibited.
 *
 *     (c) Copyright 2011-2013 Xilinx Inc.
 *     All rights reserved.
 *
 *****************************************************************************/

/*
 * HLS Video Header File
 */

#ifndef ___HLS__VIDEO__
#define ___HLS__VIDEO__

#ifndef __cplusplus
#error C++ is required to include this header file
#endif

/* for safety*/
#if (defined(ROWS)|| defined(COLS) || defined(SRC_T) || defined(SRC1_T) || defined(SRC2_T) || defined(DST_T))
#error One or more of the following is defined: ROWS, COLS, SRC_T, SRC1_T, SRC2_T, DST_T. Definition conflicts with their usage as template parameters. 
#endif

#include "hls/hls_axi_io.h"
#include "hls_math.h"
#include "hls_stream.h"

#include "utils/x_hls_utils.h"
#include "utils/x_hls_traits.h"
#include "utils/x_hls_defines.h"
#include "hls/hls_video_types.h"
#include "hls/hls_video_mem.h"
#include "hls/hls_video_core.h"
#include "hls/hls_video_imgbase.h"
#include "hls/hls_video_io.h"

#include "hls/hls_video_arithm.h"
#include "hls/hls_video_imgproc.h"
#include "hls/hls_video_histogram.h"
#include "hls/hls_video_fast.h"
#include "hls/hls_video_undistort.h"
#include "hls/hls_video_hough.h"
#include "hls/hls_video_harris.h"
#include "hls/hls_video_haar.h"
#include "hls/hls_video_stereobm.h"

#endif


