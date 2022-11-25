`timescale 1ns / 1ps


module axis_to_video
#(
	parameter DATA_BITS = 8,
	parameter ADDR_BITS = 10,
	parameter H_FRONT   = 50,
	parameter H_PULSE   = 100,
	parameter H_BACK    = 50,
	parameter H_DISP    = 1280,
	parameter V_FRONT   = 5,
	parameter V_PULSE   = 10,
	parameter V_BACK    = 5,
	parameter V_DISP    = 960,
	parameter H_POL     = 1'b0,
	parameter V_POL     = 1'b1
)
(
	
	input                  aclk,
	input                  aresetn,
	input  [DATA_BITS-1:0] s_axis_tdata,
	input                  s_axis_tvalid,
	output                 s_axis_tready,
	input                  s_axis_tlast,
	input                  s_axis_tuser,

	input                  vid_clk,
	input                  vid_rstn,
	output                 vid_hsync,
	output                 vid_vsync,
	output                 vid_active_video,
	output [DATA_BITS-1:0] vid_data,

	output                 locked,
	output                 underflow
);

	wire wfull;
	reg  w2r_wfull1, w2r_wfull2;
	always @ (posedge vid_clk or negedge vid_rstn) begin
		if (!vid_rstn) begin
			w2r_wfull1 <= 0;
			w2r_wfull2 <= 0;
		end
		else begin
			w2r_wfull1 <= wfull;
			w2r_wfull2 <= w2r_wfull1;
		end
	end

	reg locked_r;
	always @ (posedge vid_clk or negedge vid_rstn) begin
		if (!vid_rstn)
			locked_r   <= 0;
		else
			locked_r   <= w2r_wfull2 ? 1'b1 : locked_r;
	end

	wire [DATA_BITS-1:0] rd_tdata;
	wire rd_tuser;

	wire hsync_w, vsync_w, active_video_w;
	video_timing_gen
		#(
			.H_FRONT     (H_FRONT),
			.H_PULSE     (H_PULSE),
			.H_BACK      (H_BACK),
			.H_DISP      (H_DISP),
			.V_FRONT     (V_FRONT),
			.V_PULSE     (V_PULSE),
			.V_BACK      (V_BACK),
			.V_DISP      (V_DISP),
			.H_POL       (H_POL),
			.V_POL       (V_POL)
		)
		timing
		(
			.vid_clk           (vid_clk),
			.vid_rstn          (vid_rstn & locked_r),
			.vid_frame_ready   (rd_tuser),
			.vid_active_video  (active_video_w),
			.vid_hsync         (hsync_w),
			.vid_vsync         (vsync_w)
		);

	reg hsync_r, vsync_r, active_video_r;
	always @ (posedge vid_clk) begin
		hsync_r <= hsync_w;
		vsync_r <= vsync_w;
		active_video_r <= active_video_w;
	end

	reg frmsync_wait;
	always @ (posedge vid_clk or negedge vid_rstn) begin
		if (!vid_rstn)
			frmsync_wait <= 1;
		else if (frmsync_wait & active_video_w & rd_tuser)
			frmsync_wait <= 0;
		else if (vsync_w ^ vsync_r)
			frmsync_wait <= 1;
		else
			frmsync_wait <= frmsync_wait;
	end
	
	reg  rd_valid;
	wire rd_empty;
	wire rd_flag = frmsync_wait ? ~(rd_tuser & rd_valid) : active_video_w;

	always @ (posedge vid_clk or negedge vid_rstn) begin
		if (!vid_rstn)
			rd_valid <= 0;
		else
			rd_valid <= rd_valid ? 1'b1 : rd_flag & (~rd_empty);
	end

	wire wr_flag = s_axis_tvalid;

	async_fifo
		#(
			.DW         (DATA_BITS+1),
			.AW         (ADDR_BITS)
		)
		fifo
		(
			.wclk       (aclk),
			.rclk       (vid_clk),
			.wrstn      (aresetn),
			.rrstn      (vid_rstn),
			.wen        (wr_flag),
			.wdata      ({s_axis_tuser, s_axis_tdata}),
			.wfull      (wfull),
			.ren        (rd_flag),
			.rdata      ({rd_tuser, rd_tdata}),
			.rempty     (rd_empty)
		);
	
	assign vid_hsync = hsync_r;
	assign vid_vsync = vsync_r;
	assign vid_active_video = active_video_r;
	assign vid_data  = rd_tdata;
	assign s_axis_tready = ~wfull;
	assign locked    = locked_r;
	assign underflow = rd_empty;

endmodule
