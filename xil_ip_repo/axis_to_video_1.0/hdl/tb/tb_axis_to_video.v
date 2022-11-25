`timescale 1ns / 1ps

module tb_axis_to_video();

	reg aclk = 1;
	reg aresetn = 0;
	always #5 aclk = ~aclk; //100M
	
	reg [7:0] s_axis_tdata = 0;
	reg       s_axis_tvalid = 0;
	reg       s_axis_tlast = 0;
	reg       s_axis_tuser = 0;
	wire      s_axis_tready;

	reg vid_clk = 1;
	reg vid_rstn = 0;
	always #18.52 vid_clk = ~vid_clk; //27M
	
	wire vid_hsync, vid_vsync, vid_active_video;
	wire [7:0] vid_data;
	
	wire locked, underflow;
	
	integer t, i, j;
	initial begin
		#100 aresetn  <= 1;
			 vid_rstn <= 1;
		#100 ;
		
		for (t = 0; t < 10; t = t + 1) begin
			s_axis_tvalid <= 1;
			for (i = 0; i < 3*10; i = i + 1) begin
				for (j = 0; j < 4*10;) begin
					s_axis_tdata  <= i * 40 + j;
					s_axis_tlast  <= j == 4*10 - 1;
					s_axis_tuser  <= i == 0 && j == 0;
					#10 ;
					j = j + s_axis_tready;
				end
			end
			s_axis_tvalid <= 0;
			#15000 ;
		end
	end

	axis_to_video # ( 
		.DATA_BITS         (8),
		.ADDR_BITS         (6),
		.H_FRONT           (5),
		.H_PULSE           (10),
		.H_BACK            (5),
		.H_DISP            (4*10),
		.V_FRONT           (2),
		.V_PULSE           (4),
		.V_BACK            (2),
		.V_DISP            (3*10),
		.H_POL             (0),
		.V_POL             (1)
	) axis_to_video_inst (
		.aclk              (aclk),
		.aresetn           (aresetn),
		.s_axis_tdata      (s_axis_tdata),
		.s_axis_tvalid     (s_axis_tvalid),
		.s_axis_tready     (s_axis_tready),
		.s_axis_tlast      (s_axis_tlast),
		.s_axis_tuser      (s_axis_tuser),

		.vid_clk           (vid_clk),
		.vid_rstn          (vid_rstn),
		.vid_hsync         (vid_hsync),
		.vid_vsync         (vid_vsync),
		.vid_active_video  (vid_active_video),
		.vid_data          (vid_data),

		.locked            (locked),
		.underflow         (underflow)
	);

endmodule
