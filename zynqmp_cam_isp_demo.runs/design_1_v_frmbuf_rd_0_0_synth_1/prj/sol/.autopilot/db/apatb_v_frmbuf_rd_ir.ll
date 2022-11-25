; ModuleID = 'D:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.runs/design_1_v_frmbuf_rd_0_0_synth_1/prj/sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>" = type { %"struct.hls::axis<ap_uint<30>, 1, 1, 1>" }
%"struct.hls::axis<ap_uint<30>, 1, 1, 1>" = type { %"struct.ap_uint<30>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<30>" = type { %"struct.ap_int_base<30, false>" }
%"struct.ap_int_base<30, false>" = type { %"struct.ssdm_int<30, false>" }
%"struct.ssdm_int<30, false>" = type { i30 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_v_frmbuf_rd_ir(i16 zeroext %width, i16 zeroext %height, i16 zeroext %stride, i16 zeroext %video_format, %"struct.ap_uint<64>"* noalias nonnull %frm_buffer, %"struct.ap_uint<64>"* noalias nonnull %frm_buffer2, %"struct.ap_uint<64>"* noalias nonnull %frm_buffer3, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* noalias nonnull dereferenceable(12) %m_axis_video) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 16588800)
  %frm_buffer_copy = bitcast i8* %malloccall to [2073600 x i64]*
  %malloccall1 = tail call i8* @malloc(i64 16588800)
  %frm_buffer2_copy = bitcast i8* %malloccall1 to [2073600 x %"struct.ap_uint<64>"]*
  %malloccall2 = tail call i8* @malloc(i64 16588800)
  %frm_buffer3_copy = bitcast i8* %malloccall2 to [2073600 x %"struct.ap_uint<64>"]*
  %m_axis_video_copy.data = alloca i30
  %m_axis_video_copy.keep = alloca i4
  %m_axis_video_copy.strb = alloca i4
  %m_axis_video_copy.user = alloca i1
  %m_axis_video_copy.last = alloca i1
  %m_axis_video_copy.id = alloca i1
  %m_axis_video_copy.dest = alloca i1
  %0 = bitcast %"struct.ap_uint<64>"* %frm_buffer to [2073600 x %"struct.ap_uint<64>"]*
  %1 = bitcast %"struct.ap_uint<64>"* %frm_buffer2 to [2073600 x %"struct.ap_uint<64>"]*
  %2 = bitcast %"struct.ap_uint<64>"* %frm_buffer3 to [2073600 x %"struct.ap_uint<64>"]*
  call fastcc void @copy_in([2073600 x %"struct.ap_uint<64>"]* nonnull %0, [2073600 x i64]* %frm_buffer_copy, [2073600 x %"struct.ap_uint<64>"]* nonnull %1, [2073600 x %"struct.ap_uint<64>"]* %frm_buffer2_copy, [2073600 x %"struct.ap_uint<64>"]* nonnull %2, [2073600 x %"struct.ap_uint<64>"]* %frm_buffer3_copy, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* nonnull %m_axis_video, i30* %m_axis_video_copy.data, i4* %m_axis_video_copy.keep, i4* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  %3 = getelementptr [2073600 x i64], [2073600 x i64]* %frm_buffer_copy, i32 0, i32 0
  %4 = getelementptr inbounds [2073600 x %"struct.ap_uint<64>"], [2073600 x %"struct.ap_uint<64>"]* %frm_buffer2_copy, i32 0, i32 0
  %5 = getelementptr inbounds [2073600 x %"struct.ap_uint<64>"], [2073600 x %"struct.ap_uint<64>"]* %frm_buffer3_copy, i32 0, i32 0
  call void @apatb_v_frmbuf_rd_hw(i16 %width, i16 %height, i16 %stride, i16 %video_format, i64* %3, %"struct.ap_uint<64>"* %4, %"struct.ap_uint<64>"* %5, i30* %m_axis_video_copy.data, i4* %m_axis_video_copy.keep, i4* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  call void @copy_back([2073600 x %"struct.ap_uint<64>"]* %0, [2073600 x i64]* %frm_buffer_copy, [2073600 x %"struct.ap_uint<64>"]* %1, [2073600 x %"struct.ap_uint<64>"]* %frm_buffer2_copy, [2073600 x %"struct.ap_uint<64>"]* %2, [2073600 x %"struct.ap_uint<64>"]* %frm_buffer3_copy, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %m_axis_video, i30* %m_axis_video_copy.data, i4* %m_axis_video_copy.keep, i4* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([2073600 x %"struct.ap_uint<64>"]* noalias readonly, [2073600 x i64]* noalias, [2073600 x %"struct.ap_uint<64>"]* noalias readonly, [2073600 x %"struct.ap_uint<64>"]* noalias, [2073600 x %"struct.ap_uint<64>"]* noalias readonly, [2073600 x %"struct.ap_uint<64>"]* noalias, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* noalias, i30* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.6" %_V_dest_V) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<64>.20"([2073600 x i64]* %1, [2073600 x %"struct.ap_uint<64>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<64>"([2073600 x %"struct.ap_uint<64>"]* %3, [2073600 x %"struct.ap_uint<64>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<64>"([2073600 x %"struct.ap_uint<64>"]* %5, [2073600 x %"struct.ap_uint<64>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>.24"(i30* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<64>"([2073600 x %"struct.ap_uint<64>"]* noalias, [2073600 x %"struct.ap_uint<64>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2073600 x %"struct.ap_uint<64>"]* %0, null
  %3 = icmp eq [2073600 x %"struct.ap_uint<64>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2073600 x %"struct.ap_uint<64>"], [2073600 x %"struct.ap_uint<64>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [2073600 x %"struct.ap_uint<64>"], [2073600 x %"struct.ap_uint<64>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %5, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2073600
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i30* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* nonnull align 512 %0, i30* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i30* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"
  %2 = alloca i30
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i30* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_4(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i30* %2 to i8*
  %12 = bitcast i30* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %11, i8* %12)
  %13 = bitcast i30* %2 to i32*
  %14 = load i32, i32* %13
  %15 = trunc i32 %14 to i30
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %17 = bitcast %"struct.ap_uint<30>"* %16 to i30*
  store i30 %15, i30* %17
  %18 = bitcast i4* %4 to i8*
  %19 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %18, i8* %19)
  %20 = bitcast i4* %4 to i8*
  %21 = load i8, i8* %20
  %22 = trunc i8 %21 to i4
  %23 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %24 = bitcast %"struct.ap_uint<4>"* %23 to i4*
  store i4 %22, i4* %24
  %25 = bitcast i4* %3 to i8*
  %26 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %25, i8* %26)
  %27 = bitcast i4* %3 to i8*
  %28 = load i8, i8* %27
  %29 = trunc i8 %28 to i4
  %30 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %31 = bitcast %"struct.ap_uint<4>"* %30 to i4*
  store i4 %29, i4* %31
  %32 = bitcast i1* %8 to i8*
  %33 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %32, i8* %33)
  %34 = bitcast i1* %8 to i8*
  %35 = load i8, i8* %34
  %36 = trunc i8 %35 to i1
  %37 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %38 = bitcast %"struct.ap_uint<1>"* %37 to i1*
  store i1 %36, i1* %38
  %39 = bitcast i1* %7 to i8*
  %40 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %39, i8* %40)
  %41 = bitcast i1* %7 to i8*
  %42 = load i8, i8* %41
  %43 = trunc i8 %42 to i1
  %44 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %45 = bitcast %"struct.ap_uint<1>"* %44 to i1*
  store i1 %43, i1* %45
  %46 = bitcast i1* %6 to i8*
  %47 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %46, i8* %47)
  %48 = bitcast i1* %6 to i8*
  %49 = load i8, i8* %48
  %50 = trunc i8 %49 to i1
  %51 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %52 = bitcast %"struct.ap_uint<1>"* %51 to i1*
  store i1 %50, i1* %52
  %53 = bitcast i1* %5 to i8*
  %54 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %53, i8* %54)
  %55 = bitcast i1* %5 to i8*
  %56 = load i8, i8* %55
  %57 = trunc i8 %56 to i1
  %58 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %59 = bitcast %"struct.ap_uint<1>"* %58 to i1*
  store i1 %57, i1* %59
  %60 = bitcast %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1 to i8*
  %61 = bitcast %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %60, i8* %61)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([2073600 x %"struct.ap_uint<64>"]* noalias, [2073600 x i64]* noalias readonly, [2073600 x %"struct.ap_uint<64>"]* noalias, [2073600 x %"struct.ap_uint<64>"]* noalias readonly, [2073600 x %"struct.ap_uint<64>"]* noalias, [2073600 x %"struct.ap_uint<64>"]* noalias readonly, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* noalias, i30* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.6" %_V_dest_V) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<64>.16"([2073600 x %"struct.ap_uint<64>"]* %0, [2073600 x i64]* %1)
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<64>"([2073600 x %"struct.ap_uint<64>"]* %2, [2073600 x %"struct.ap_uint<64>"]* %3)
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<64>"([2073600 x %"struct.ap_uint<64>"]* %4, [2073600 x %"struct.ap_uint<64>"]* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %6, i30* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<64>.16"([2073600 x %"struct.ap_uint<64>"]* noalias, [2073600 x i64]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2073600 x %"struct.ap_uint<64>"]* %0, null
  %3 = icmp eq [2073600 x i64]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [2073600 x i64], [2073600 x i64]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [2073600 x %"struct.ap_uint<64>"], [2073600 x %"struct.ap_uint<64>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2073600
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<64>.20"([2073600 x i64]* noalias, [2073600 x %"struct.ap_uint<64>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2073600 x i64]* %0, null
  %3 = icmp eq [2073600 x %"struct.ap_uint<64>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2073600 x %"struct.ap_uint<64>"], [2073600 x %"struct.ap_uint<64>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [2073600 x i64], [2073600 x i64]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %6, i64* %5, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2073600
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>.24"(i30* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>.27"(i30* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>.27"(i30* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<30>"* %8 to i30*
  %10 = bitcast i30* %9 to i8*
  %11 = bitcast i30* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<4>"* %12 to i4*
  %14 = bitcast i4* %13 to i8*
  %15 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<4>"* %16 to i4*
  %18 = bitcast i4* %17 to i8*
  %19 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %25 = bitcast %"struct.ap_uint<1>"* %24 to i1*
  %26 = bitcast i1* %25 to i8*
  %27 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  %30 = bitcast i1* %29 to i8*
  %31 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %30, i8* %31)
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %33 = bitcast %"struct.ap_uint<1>"* %32 to i1*
  %34 = bitcast i1* %33 to i8*
  %35 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %34, i8* %35)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_v_frmbuf_rd_hw(i16, i16, i16, i16, i64*, %"struct.ap_uint<64>"*, %"struct.ap_uint<64>"*, i30*, i4*, i4*, i1*, i1*, i1*, i1*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back([2073600 x %"struct.ap_uint<64>"]* noalias, [2073600 x i64]* noalias readonly, [2073600 x %"struct.ap_uint<64>"]* noalias, [2073600 x %"struct.ap_uint<64>"]* noalias readonly, [2073600 x %"struct.ap_uint<64>"]* noalias, [2073600 x %"struct.ap_uint<64>"]* noalias readonly, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* noalias, i30* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.6" %_V_dest_V) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<64>.16"([2073600 x %"struct.ap_uint<64>"]* %0, [2073600 x i64]* %1)
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<64>"([2073600 x %"struct.ap_uint<64>"]* %2, [2073600 x %"struct.ap_uint<64>"]* %3)
  call fastcc void @"onebyonecpy_hls.p0a2073600struct.ap_uint<64>"([2073600 x %"struct.ap_uint<64>"]* %4, [2073600 x %"struct.ap_uint<64>"]* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %6, i30* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  ret void
}

define void @v_frmbuf_rd_hw_stub_wrapper(i16, i16, i16, i16, i64*, %"struct.ap_uint<64>"*, %"struct.ap_uint<64>"*, i30*, i4*, i4*, i1*, i1*, i1*, i1*) #6 {
entry:
  %malloccall = tail call i8* @malloc(i64 16588800)
  %14 = bitcast i8* %malloccall to [2073600 x %"struct.ap_uint<64>"]*
  %15 = alloca %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"
  %16 = bitcast i64* %4 to [2073600 x i64]*
  %17 = bitcast %"struct.ap_uint<64>"* %5 to [2073600 x %"struct.ap_uint<64>"]*
  %18 = bitcast %"struct.ap_uint<64>"* %6 to [2073600 x %"struct.ap_uint<64>"]*
  call void @copy_out([2073600 x %"struct.ap_uint<64>"]* %14, [2073600 x i64]* %16, [2073600 x %"struct.ap_uint<64>"]* null, [2073600 x %"struct.ap_uint<64>"]* %17, [2073600 x %"struct.ap_uint<64>"]* null, [2073600 x %"struct.ap_uint<64>"]* %18, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %15, i30* %7, i4* %8, i4* %9, i1* %10, i1* %11, i1* %12, i1* %13)
  %19 = bitcast [2073600 x %"struct.ap_uint<64>"]* %14 to %"struct.ap_uint<64>"*
  %20 = bitcast [2073600 x %"struct.ap_uint<64>"]* %17 to %"struct.ap_uint<64>"*
  %21 = bitcast [2073600 x %"struct.ap_uint<64>"]* %18 to %"struct.ap_uint<64>"*
  call void @v_frmbuf_rd_hw_stub(i16 %0, i16 %1, i16 %2, i16 %3, %"struct.ap_uint<64>"* %19, %"struct.ap_uint<64>"* %20, %"struct.ap_uint<64>"* %21, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %15)
  call void @copy_in([2073600 x %"struct.ap_uint<64>"]* %14, [2073600 x i64]* %16, [2073600 x %"struct.ap_uint<64>"]* null, [2073600 x %"struct.ap_uint<64>"]* %17, [2073600 x %"struct.ap_uint<64>"]* null, [2073600 x %"struct.ap_uint<64>"]* %18, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"* %15, i30* %7, i4* %8, i4* %9, i1* %10, i1* %11, i1* %12, i1* %13)
  ret void
}

declare void @v_frmbuf_rd_hw_stub(i16, i16, i16, i16, %"struct.ap_uint<64>"*, %"struct.ap_uint<64>"*, %"struct.ap_uint<64>"*, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1>, 0>"*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
