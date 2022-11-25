`timescale 1ns / 1ps

module tb_csi2_rx_to_video_4planes();
	localparam LANES_NUM = 4;
	localparam DATA_BITS = 8;

	reg clk_byte = 1;
	always #5 clk_byte <= ~clk_byte;

	reg rst_n = 0;

	reg  [LANES_NUM*8-1:0]         phy_byte;
	reg  [LANES_NUM-1:0]           phy_byte_valid;
	wire                           pix_valid;
	wire [7:0]                     pix_di;
	wire [LANES_NUM*DATA_BITS-1:0] pix_data;
	wire                           pix_data_enable;
	
	integer i, j;
	initial begin
		#10 rst_n <= 1;
		#1;
		
		for (i = 0; i < 10; i = i + 1) begin
			//B8_B8_B8_B8
			//CC_00_20_00
			#10 phy_byte_valid <= {LANES_NUM{1'b1}};
				phy_byte <= 32'hB8_B8_B8_B8;
			#10 phy_byte <= 32'hCC_00_20_00;  //frame start
			#10 phy_byte_valid <= 0;
				phy_byte <= 32'h00_00_00_00;
			#90 ;

			for (j = 0; j < 10; j = j + 1) begin
				#10 phy_byte_valid <= {LANES_NUM{1'b1}};
					phy_byte  <= 32'hB8_B8_B8_B8;
				#10 phy_byte  <= 32'hCC_00_19_2B;  //RAW10
				#10 phy_byte  <= 32'h03_02_01_00;
				#10 phy_byte  <= 32'h06_05_04_E4;
				#10 phy_byte  <= 32'h09_08_E4_07;
				#10 phy_byte  <= 32'h0C_E4_0B_0A;
				#10 phy_byte  <= 32'hE4_0F_0E_0D;
				#10 phy_byte  <= 32'h13_12_11_10;
				#10 phy_byte  <= 32'h5A_5A_5A_E4;
				#10 phy_byte_valid <= 0;
					phy_byte  <= 32'h00_00_00_00;
				#90;
			end

			//B8_B8_B8_B8
			//CC_00_20_01
			#10 phy_byte_valid <= {LANES_NUM{1'b1}};
				phy_byte <= 32'hB8_B8_B8_B8;
			#10 phy_byte <= 32'hCC_00_20_01;  //frame end
			#10 phy_byte_valid <= 0;
				phy_byte  <= 32'h00_00_00_00;
			#500;
		
		end

	end

	csi2_rx_to_pixel #(
		.LANES_NUM(LANES_NUM),
		.DATA_BITS(DATA_BITS)
	)
	u_csi2_rx_to_pixel (
		.clk                ( clk_byte        ),            
		.rst_n              ( rst_n           ),          
		.phy_byte           ( phy_byte        ),       
		.phy_byte_valid     ( phy_byte_valid  ), 
		.pix_valid          ( pix_valid       ),      
		.pix_di             ( pix_di          ),         
		.pix_data           ( pix_data        ),       
		.pix_data_enable    ( pix_data_enable )
	);

	wire                             vid_ce;
	wire [7:0]                       vid_di;
	wire                             vid_locked;
	wire                             vid_vsync;
	wire                             vid_active_video;
	wire [DATA_BITS*LANES_NUM-1:0]   vid_data;

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

endmodule

module tb_csi2_rx_to_video_2planes();
	localparam LANES_NUM = 2;
	localparam DATA_BITS = 8;

	reg clk_byte = 1;
	always #5 clk_byte <= ~clk_byte;

	reg rst_n = 0;

	reg  [LANES_NUM*8-1:0]         phy_byte;
	reg  [LANES_NUM-1:0]           phy_byte_valid;
	wire                           pix_valid;
	wire [7:0]                     pix_di;
	wire [LANES_NUM*DATA_BITS-1:0] pix_data;
	wire                           pix_data_enable;
	
	integer i, j;
	initial begin
		#10 rst_n <= 1;
		#1;
		
		for (i = 0; i < 10; i = i + 1) begin
			//B8_B8_B8_B8
			//CC_00_20_00
			#10 phy_byte_valid <= {LANES_NUM{1'b1}};
				phy_byte <= 16'hB8_B8;
			#10 phy_byte <= 16'h20_00;  //frame start
			#10 phy_byte <= 16'hCC_00;
			#10 phy_byte_valid <= 0;
				phy_byte <= 16'h00_00;
			#90 ;

			for (j = 0; j < 10; j = j + 1) begin
				#10 phy_byte_valid <= {LANES_NUM{1'b1}};
					phy_byte  <= 16'hB8_B8;
				#10 phy_byte  <= 16'h19_2B;  //RAW10
				#10 phy_byte  <= 16'hCC_00;
				#10 phy_byte  <= 16'h01_00;
				#10 phy_byte  <= 16'h03_02;
				#10 phy_byte  <= 16'h04_E4;
				#10 phy_byte  <= 16'h06_05;
				#10 phy_byte  <= 16'hE4_07;
				#10 phy_byte  <= 16'h09_08;
				#10 phy_byte  <= 16'h0B_0A;
				#10 phy_byte  <= 16'h0C_E4;
				#10 phy_byte  <= 16'h0E_0D;
				#10 phy_byte  <= 16'hE4_0F;
				#10 phy_byte  <= 16'h11_10;
				#10 phy_byte  <= 16'h13_12;
				#10 phy_byte  <= 16'h5A_E4;
				#10 phy_byte_valid <= 0;
					phy_byte  <= 16'h00_00;
				#90;
			end

			//B8_B8_B8_B8
			//CC_00_20_01
			#10 phy_byte_valid <= {LANES_NUM{1'b1}};
				phy_byte <= 16'hB8_B8;
			#10 phy_byte <= 16'h20_01;  //frame end
			#10 phy_byte <= 16'hCC_00;
			#10 phy_byte_valid <= 0;
				phy_byte <= 16'h00_00;
			#500;
		
		end

	end

	csi2_rx_to_pixel #(
		.LANES_NUM(LANES_NUM),
		.DATA_BITS(DATA_BITS)
	)
	u_csi2_rx_to_pixel (
		.clk                ( clk_byte        ),            
		.rst_n              ( rst_n           ),          
		.phy_byte           ( phy_byte        ),       
		.phy_byte_valid     ( phy_byte_valid  ), 
		.pix_valid          ( pix_valid       ),      
		.pix_di             ( pix_di          ),         
		.pix_data           ( pix_data        ),       
		.pix_data_enable    ( pix_data_enable )
	);

	wire                             vid_ce;
	wire [7:0]                       vid_di;
	wire                             vid_locked;
	wire                             vid_vsync;
	wire                             vid_active_video;
	wire [DATA_BITS*LANES_NUM-1:0]   vid_data;

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

endmodule


module tb_csi2_rx_to_video_1planes();
	localparam LANES_NUM = 1;
	localparam DATA_BITS = 8;

	reg clk_byte = 1;
	always #5 clk_byte <= ~clk_byte;

	reg rst_n = 0;

	reg  [LANES_NUM*8-1:0]         phy_byte;
	reg  [LANES_NUM-1:0]           phy_byte_valid;
	wire                           pix_valid;
	wire [7:0]                     pix_di;
	wire [LANES_NUM*DATA_BITS-1:0] pix_data;
	wire                           pix_data_enable;
	
	integer i, j;
	initial begin
		#10 rst_n <= 1;
		#1;
		
		for (i = 0; i < 10; i = i + 1) begin
			//B8_B8_B8_B8
			//CC_00_20_00
			#10 phy_byte_valid <= {LANES_NUM{1'b1}};
				phy_byte <= 8'hB8;
			#10 phy_byte <= 8'h00;  //frame start
			#10 phy_byte <= 8'h20;
			#10 phy_byte <= 8'h00;
			#10 phy_byte <= 8'hCC;
			#10 phy_byte_valid <= 0;
				phy_byte <= 8'h00;
			#90 ;

			for (j = 0; j < 10; j = j + 1) begin
				#10 phy_byte_valid <= {LANES_NUM{1'b1}};
					phy_byte  <= 8'hB8;
				#10 phy_byte  <= 8'h2B;  //RAW10
				#10 phy_byte  <= 8'h19;
				#10 phy_byte  <= 8'h00;
				#10 phy_byte  <= 8'hCC;
				#10 phy_byte  <= 8'h00;
				#10 phy_byte  <= 8'h01;
				#10 phy_byte  <= 8'h02;
				#10 phy_byte  <= 8'h03;
				#10 phy_byte  <= 8'hE4;
				#10 phy_byte  <= 8'h04;
				#10 phy_byte  <= 8'h05;
				#10 phy_byte  <= 8'h06;
				#10 phy_byte  <= 8'h07;
				#10 phy_byte  <= 8'hE4;
				#10 phy_byte  <= 8'h08;
				#10 phy_byte  <= 8'h09;
				#10 phy_byte  <= 8'h0A;
				#10 phy_byte  <= 8'h0B;
				#10 phy_byte  <= 8'hE4;
				#10 phy_byte  <= 8'h0C;
				#10 phy_byte  <= 8'h0D;
				#10 phy_byte  <= 8'h0E;
				#10 phy_byte  <= 8'h0F;
				#10 phy_byte  <= 8'hE4;
				#10 phy_byte  <= 8'h10;
				#10 phy_byte  <= 8'h11;
				#10 phy_byte  <= 8'h12;
				#10 phy_byte  <= 8'h13;
				#10 phy_byte  <= 8'hE4;
				#10 phy_byte_valid <= 0;
					phy_byte  <= 8'h00;
				#90;
			end

			//B8_B8_B8_B8
			//CC_00_20_01
			#10 phy_byte_valid <= {LANES_NUM{1'b1}};
				phy_byte <= 8'hB8;
			#10 phy_byte <= 8'h01;  //frame end
			#10 phy_byte <= 8'h20;
			#10 phy_byte <= 8'h00;
			#10 phy_byte <= 8'hCC;
			#10 phy_byte_valid <= 0;
				phy_byte <= 8'h_00;
			#500;
		
		end

	end

	csi2_rx_to_pixel #(
		.LANES_NUM(LANES_NUM),
		.DATA_BITS(DATA_BITS)
	)
	u_csi2_rx_to_pixel (
		.clk                ( clk_byte        ),            
		.rst_n              ( rst_n           ),          
		.phy_byte           ( phy_byte        ),       
		.phy_byte_valid     ( phy_byte_valid  ), 
		.pix_valid          ( pix_valid       ),      
		.pix_di             ( pix_di          ),         
		.pix_data           ( pix_data        ),       
		.pix_data_enable    ( pix_data_enable )
	);

	wire                             vid_ce;
	wire [7:0]                       vid_di;
	wire                             vid_locked;
	wire                             vid_vsync;
	wire                             vid_active_video;
	wire [DATA_BITS*LANES_NUM-1:0]   vid_data;

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

endmodule

