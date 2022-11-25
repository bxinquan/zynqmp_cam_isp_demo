`timescale 1ns/1ns

module mipi_rx_to_video
#(
	parameter LANES_NUM         = 4,
	parameter DATA_BITS         = 10,    // 8/10
	parameter DATA_DELAY_INSIDE = 0,
	parameter DATA_DELAY_NTAPS  = 0,     // 0~511
	parameter HS_SETTLE_DELAY   = 0      // 0~63
)
(
	input                            dphy_clk_p,
	input                            dphy_clk_n,
	input  [LANES_NUM-1:0]           dphy_data_p,
	input  [LANES_NUM-1:0]           dphy_data_n,

	input                            rst_n,

	output                           vid_clk,
	output                           vid_ce,
	output [7:0]                     vid_di,
	output                           vid_locked,

	output                           vid_vsync,
	output                           vid_active_video,
	output [LANES_NUM*DATA_BITS-1:0] vid_data
);

	wire                   clk_byte;
	wire [LANES_NUM*8-1:0] byte_data;
	wire [LANES_NUM-1:0]   byte_data_valid;

	dphy_rx_to_byte #(
		.LANES_NUM            ( LANES_NUM         ),
		.DATA_DELAY_INSIDE    ( DATA_DELAY_INSIDE ),
		.DATA_DELAY_NTAPS     ( DATA_DELAY_NTAPS  ),
		.HS_SETTLE_DELAY      ( HS_SETTLE_DELAY   )
	)
	u_dphy_rx_to_byte (
		.mipi_clk_p_io    ( dphy_clk_p      ),
		.mipi_clk_n_io    ( dphy_clk_n      ),
		.mipi_data_p_io   ( dphy_data_p     ),
		.mipi_data_n_io   ( dphy_data_n     ),
		.clk_byte         ( clk_byte        ),
		.clk_byte_valid   (                 ),
		.data_byte        ( byte_data       ),
		.data_byte_valid  ( byte_data_valid )
	);

	wire                           pix_valid;
	wire [7:0]                     pix_di;
	wire [LANES_NUM*DATA_BITS-1:0] pix_data;
	wire                           pix_data_enable;

	csi2_rx_to_pixel #(
		.LANES_NUM  (LANES_NUM),
		.DATA_BITS  (DATA_BITS)
	)
	u_csi2_rx_to_pixel
	(
		.clk                 ( clk_byte        ),
		.rst_n               ( rst_n           ),
		.phy_byte            ( byte_data       ),
		.phy_byte_valid      ( byte_data_valid ),
		.pix_valid           ( pix_valid       ),
		.pix_di              ( pix_di          ),
		.pix_data            ( pix_data        ),
		.pix_data_enable     ( pix_data_enable ) 
	);

	_csi2_pixel_to_video #(
		.LANES_NUM  (LANES_NUM),
		.DATA_BITS  (DATA_BITS)
	)
	u_csi2_pixel_to_video (
		.clk_byte            ( clk_byte         ),
		.rst_n               ( rst_n            ),
		.pix_valid           ( pix_valid        ),
		.pix_di              ( pix_di           ),
		.pix_data            ( pix_data         ),
		.pix_data_enable     ( pix_data_enable  ),
		.vid_ce              ( vid_ce           ),
		.vid_di              ( vid_di           ),
		.vid_locked          ( vid_locked       ),
		.vid_vsync           ( vid_vsync        ),
		.vid_active_video    ( vid_active_video ),
		.vid_data            ( vid_data         )
	);
	
	assign vid_clk = clk_byte;

endmodule

module _csi2_pixel_to_video
#(
	parameter LANES_NUM = 4,
	parameter DATA_BITS = 10    // 8/10
)
(
	input                            clk_byte,
	input                            rst_n,

	input                            pix_valid,
	input [7:0]                      pix_di,
	input [LANES_NUM*DATA_BITS-1:0]  pix_data,
	input                            pix_data_enable,

	output                           vid_ce,
	output [7:0]                     vid_di,
	output                           vid_locked,

	output                           vid_vsync,
	output                           vid_active_video,
	output [LANES_NUM*DATA_BITS-1:0] vid_data
);

	reg       locked;
	reg [1:0] locked_vc;
	always @ (posedge clk_byte or negedge rst_n) begin
		if (!rst_n) begin
			locked    <= 0;
			locked_vc <= 0;
		end
		else if (!locked && pix_valid) begin
			locked    <= 1;
			locked_vc <= pix_di[7:6];
		end
		else begin
			locked    <= locked;
			locked_vc <= locked_vc;
		end
	end

	reg                           reg_pix_valid;
	reg [7:0]                     reg_pix_di;
	reg [LANES_NUM*DATA_BITS-1:0] reg_pix_data;
	reg                           reg_pix_data_enable;
	always @ (posedge clk_byte or negedge rst_n) begin
		if (!rst_n) begin
			reg_pix_valid       <= 0;
			reg_pix_di          <= 0;
			reg_pix_data        <= 0;
			reg_pix_data_enable <= 0;
		end
		else begin
			reg_pix_valid       <= pix_valid;
			reg_pix_di          <= pix_di;
			reg_pix_data        <= pix_data;
			reg_pix_data_enable <= pix_data_enable;
		end
	end

	reg                           reg_vsync;
	reg                           reg_active_video;
	reg [7:0]                     reg_di;
	reg [LANES_NUM*DATA_BITS-1:0] reg_data;
	reg                           reg_ce;

	always @ (posedge clk_byte or negedge rst_n) begin
		if (!rst_n || !locked) begin
			reg_vsync        <= 1;
			reg_active_video <= 0;
			reg_di           <= 0;
			reg_data         <= 0;
			reg_ce           <= 1;
		end
		else if (reg_pix_valid && locked_vc == reg_pix_di[7:6]) begin
			reg_vsync        <= reg_pix_di[5:0] == 6'd0 ? 1'b0 : (reg_pix_di[5:0] == 6'd1 ? 1'b1 : reg_vsync);
			reg_active_video <= (reg_pix_di[5:3] >= 3'b010 && reg_pix_di[5:3] < 3'b111);
			reg_di           <= reg_pix_di;
			reg_data         <= reg_pix_data;
			reg_ce           <= (reg_pix_di[5:3] >= 3'b010 && reg_pix_di[5:3] < 3'b111) ? reg_pix_data_enable : 1'b1;
		end
		else begin
			reg_vsync        <= reg_vsync;
			reg_active_video <= 0;
			reg_di           <= 0;
			reg_data         <= 0;
			reg_ce           <= 1;
		end
	end

	assign vid_ce           = reg_ce;
	assign vid_di           = reg_di;
	assign vid_locked       = locked;
	assign vid_vsync        = reg_vsync;
	assign vid_active_video = reg_active_video;
	assign vid_data         = reg_data;

endmodule
