
`timescale 1 ns / 1 ps

	module mipi_rx_to_video_v1_0 #
	(
		// Users to add parameters here
		parameter LANES_NUM         = 4,
		parameter DATA_BITS         = 10,   // 8/10
		parameter DATA_DELAY_INSIDE = 0,
		parameter DATA_DELAY_NTAPS  = 0,    // 0~511
		parameter HS_SETTLE_DELAY   = 0,    // 0~63

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 7
	)
	(
		// Users to add ports here
		input                            dphy_clk_p,
		input                            dphy_clk_n,
		input  [LANES_NUM-1:0]           dphy_data_p,
		input  [LANES_NUM-1:0]           dphy_data_n,

		output                           vid_clk,
		output                           vid_ce,

		output                           vid_vsync,
		output                           vid_active_video,
		output [LANES_NUM*DATA_BITS-1:0] vid_data,

		output                           vid_locked,
		output                           irq,

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	mipi_rx_to_video_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH   (C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH   (C_S00_AXI_ADDR_WIDTH),
		.LANES_NUM            ( LANES_NUM ),
		.DATA_BITS            ( DATA_BITS ),
		.DATA_DELAY_INSIDE    ( DATA_DELAY_INSIDE ),
		.DATA_DELAY_NTAPS     ( DATA_DELAY_NTAPS  ),
		.HS_SETTLE_DELAY      ( HS_SETTLE_DELAY   )
	) mipi_rx_to_video_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		.dphy_clk_p         ( dphy_clk_p       ),
		.dphy_clk_n         ( dphy_clk_n       ),
		.dphy_data_p        ( dphy_data_p      ),
		.dphy_data_n        ( dphy_data_n      ),
		.vid_clk            ( vid_clk          ),
		.vid_ce             ( vid_ce           ),
		.vid_vsync          ( vid_vsync        ),
		.vid_active_video   ( vid_active_video ),
		.vid_data           ( vid_data         ),
		.vid_locked         ( vid_locked       ),
		.irq                ( irq              )
	);

	// Add user logic here

	// User logic ends

	endmodule
