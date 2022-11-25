`timescale 1ns / 1ps

module tb_csi2_rx_to_pixel();
	localparam LANES_NUM = 4;
	localparam DATA_BITS = 10;

	reg clk = 1;
	always #5 clk <= ~clk;

	reg rst_n = 0;

	reg  [LANES_NUM*8-1:0]         phy_byte;
	reg  [LANES_NUM-1:0]           phy_byte_valid;
	wire                           pix_valid;
	wire [7:0]                     pix_di;
	wire [LANES_NUM*DATA_BITS-1:0] pix_data;
	wire                           pix_data_enable;
	
	integer i;
	initial begin
		#10 rst_n <= 1;
		#1;
		//B8_B8_B8_B8
		//CC_00_20_00
		#10 phy_byte_valid <= {LANES_NUM{1'b1}};
		    phy_byte <= 32'hB8_B8_B8_B8;
		#10 phy_byte <= 32'hCC_00_20_00;  //frame start
		#10 phy_byte_valid <= 0;
			phy_byte <= 32'h00_00_00_00;
		#90 ;

		for (i = 0; i < 10; i = i + 1) begin
			#10 phy_byte_valid <= {LANES_NUM{1'b1}};
				phy_byte  <= 32'hB8_B8_B8_B8;
			#10 phy_byte  <= 32'hCC_00_2D_2B;  //RAW10
			#10 phy_byte  <= 32'h03_02_01_00;
			#10 phy_byte  <= 32'h06_05_04_E4;
			#10 phy_byte  <= 32'h09_08_E4_07;
			#10 phy_byte  <= 32'h0C_E4_0B_0A;
			#10 phy_byte  <= 32'hE4_0F_0E_0D;
			#10 phy_byte  <= 32'h13_12_11_10;
			#10 phy_byte  <= 32'h16_15_14_E4;
			#10 phy_byte  <= 32'h19_18_E4_17;
			#10 phy_byte  <= 32'h1C_E4_1B_1A;
			#10 phy_byte  <= 32'hE4_1F_1E_1D;
			#10 phy_byte  <= 32'h23_22_21_20;
			#10 phy_byte  <= 32'h26_25_24_E4;
			#10 phy_byte_valid <= 0;
				phy_byte <= 32'h00_00_00_00;
			#90 ;
		end

		//B8_B8_B8_B8
		//CC_00_20_01
		#10 phy_byte_valid <= {LANES_NUM{1'b1}};
		    phy_byte <= 32'hB8_B8_B8_B8;
		#10 phy_byte <= 32'hCC_00_20_01;  //frame end
		#10 phy_byte_valid <= 0;
			phy_byte <= 32'h00_00_00_00;
		#90 ;

	end

	csi2_rx_to_pixel #(
		.LANES_NUM(LANES_NUM),
		.DATA_BITS(DATA_BITS)
	)
	u_csi2_rx_to_pixel (
		.clk                ( clk             ),            
		.rst_n              ( rst_n           ),          
		.phy_byte           ( phy_byte        ),       
		.phy_byte_valid     ( phy_byte_valid  ), 
		.pix_valid          ( pix_valid       ),      
		.pix_di             ( pix_di          ),         
		.pix_data           ( pix_data        ),       
		.pix_data_enable    ( pix_data_enable )
	);

endmodule

module tb_csi2_lanes_aligner();
	localparam LANES_NUM = 4;
	
	reg clk = 1;
	always #5 clk <= ~clk;

	reg rst_n = 0;
	reg [LANES_NUM*8-1:0] lane_byte = 0;
	reg [LANES_NUM-1:0]   lane_byte_valid = 0;
	wire [LANES_NUM*8-1:0] lane_byte_aligned;
	wire                   lane_byte_aligned_valid;
	
	initial begin
		//2B 60 09 CC
		#10 rst_n <= 1;
		#11 lane_byte <= 32'h00_00_00_B8;
		    lane_byte_valid <= 4'b0_0_0_1;
		#10 lane_byte <= 32'hB8_B8_00_2B;
		    lane_byte_valid <= 4'b1_1_0_1;
		#10 lane_byte <= 32'hCC_09_B8_11;
		    lane_byte_valid <= 4'b1_1_1_1;
		#10 lane_byte <= 32'h41_31_60_12;
		    lane_byte_valid <= 4'b1_1_1_1;
		#10 lane_byte <= 32'h42_32_21_13;
		    lane_byte_valid <= 4'b1_1_1_1;
		#10 lane_byte <= 32'h00_00_00_00;
		    lane_byte_valid <= 4'b0_0_0_0;
		#90 ;
	end

	_csi2_lanes_aligner #(
		.LANES_NUM(LANES_NUM)
	)
	u_csi2_lanes_aligner (
		.clk                        ( clk                     ),
		.rst_n                      ( rst_n                   ),
		.lane_byte                  ( lane_byte               ),
		.lane_byte_valid            ( lane_byte_valid         ),
		.lane_byte_aligned          ( lane_byte_aligned       ),
		.lane_byte_aligned_valid    ( lane_byte_aligned_valid )
	);

endmodule



module tb_csi2_packet_decoder();
	localparam LANES_NUM = 4;

	reg clk = 1;
	always #5 clk <= ~clk;

	reg rst_n = 0;

	reg  [LANES_NUM*8-1:0] lane_byte_aligned = 0;
	reg                    lane_byte_aligned_valid = 0;
	wire                   pkt_valid;
	wire [7:0]             pkt_di;
	wire [15:0]            pkt_wc;
	wire [LANES_NUM*8-1:0] pkt_data;
	
	initial begin
		#10 rst_n <= 1;
		//B8_B8_B8_B8
		//CC_00_20_00
		#11 lane_byte_aligned_valid <= 1;
		    lane_byte_aligned <= 32'hB8_B8_B8_B8;
		#10 lane_byte_aligned <= 32'hCC_00_20_00;  //frame start
		#10 lane_byte_aligned_valid <= 0;
		    lane_byte_aligned <= 32'h00_00_00_00;
		#90 ;

		//B8_B8_B8_B8
		//CC_00_22_2B
		//03_02_01_00
		//07_06_05_04
		//0B_0A_09_08
		//0F_0E_0D_0C
		//13_12_11_10
		//17_16_15_14
		//1B_1A_19_18
		//1F_1E_1D_1C
		#10 lane_byte_aligned_valid <= 1;
		    lane_byte_aligned <= 32'hB8_B8_B8_B8;
		#10 lane_byte_aligned <= 32'hCC_00_22_2B;  //RAW10
		#10 lane_byte_aligned <= 32'h03_02_01_00;
		#10 lane_byte_aligned <= 32'h07_06_05_04;
		#10 lane_byte_aligned <= 32'h0B_0A_09_08;
		#10 lane_byte_aligned <= 32'h0F_0E_0D_0C;
		#10 lane_byte_aligned <= 32'h13_12_11_10;
		#10 lane_byte_aligned <= 32'h17_16_15_14;
		#10 lane_byte_aligned <= 32'h1B_1A_19_18;
		#10 lane_byte_aligned <= 32'h1F_1E_1D_1C;
		#10 lane_byte_aligned <= 32'h23_22_21_20;
		#10 lane_byte_aligned_valid <= 0;
		    lane_byte_aligned <= 32'h00_00_00_00;
		#90 ;

		//B8_B8_B8_B8
		//CC_00_20_01
		#10 lane_byte_aligned_valid <= 1;
		    lane_byte_aligned <= 32'hB8_B8_B8_B8;
		#10 lane_byte_aligned <= 32'hCC_00_20_01;  //frame end
		#10 lane_byte_aligned_valid <= 0;
		    lane_byte_aligned <= 32'h00_00_00_00;
		#90 ;

	end


	_csi2_packet_decoder # (
		.LANES_NUM(LANES_NUM)
	)
	u_csi2_packet_decoder (
		.clk                        ( clk                     ),
		.rst_n                      ( rst_n                   ),
		.lane_byte_aligned          ( lane_byte_aligned       ),
		.lane_byte_aligned_valid    ( lane_byte_aligned_valid ),
		.pkt_valid                  ( pkt_valid               ),
		.pkt_di                     ( pkt_di                  ),
		.pkt_wc                     ( pkt_wc                  ),
		.pkt_data                   ( pkt_data                )
	);

endmodule


module tb_csi2_packet_decoder_2lanes();
	localparam LANES_NUM = 2;

	reg clk = 1;
	always #5 clk <= ~clk;

	reg rst_n = 0;

	reg  [LANES_NUM*8-1:0] lane_byte_aligned = 0;
	reg                    lane_byte_aligned_valid = 0;
	wire                   pkt_valid;
	wire [7:0]             pkt_di;
	wire [15:0]            pkt_wc;
	wire [LANES_NUM*8-1:0] pkt_data;
	
	initial begin
		#10 rst_n <= 1;
		//B8_B8_B8_B8
		//CC_00_20_00
		#11 lane_byte_aligned_valid <= 1;
		    lane_byte_aligned <= 16'hB8_B8;
		#10 lane_byte_aligned <= 16'h20_00;  //frame start
		#10 lane_byte_aligned <= 16'hCC_00; 
		#10 lane_byte_aligned_valid <= 0;
		    lane_byte_aligned <= 16'h00_00;
		#90 ;

		//B8_B8_B8_B8
		//CC_00_22_2B
		//03_02_01_00
		//07_06_05_04
		//0B_0A_09_08
		//0F_0E_0D_0C
		//13_12_11_10
		//17_16_15_14
		//1B_1A_19_18
		//1F_1E_1D_1C
		#10 lane_byte_aligned_valid <= 1;
		    lane_byte_aligned <= 32'hB8_B8;
		#10 lane_byte_aligned <= 32'h22_2B;  //RAW10
		#10 lane_byte_aligned <= 32'hCC_00;
		#10 lane_byte_aligned <= 32'h01_00;
		#10 lane_byte_aligned <= 32'h03_02;
		#10 lane_byte_aligned <= 32'h05_04;
		#10 lane_byte_aligned <= 32'h07_06;
		#10 lane_byte_aligned <= 32'h09_08;
		#10 lane_byte_aligned <= 32'h0B_0A;
		#10 lane_byte_aligned <= 32'h0D_0C;
		#10 lane_byte_aligned <= 32'h0F_0E;
		#10 lane_byte_aligned <= 32'h11_10;
		#10 lane_byte_aligned <= 32'h13_12;
		#10 lane_byte_aligned <= 32'h15_14;
		#10 lane_byte_aligned <= 32'h17_16;
		#10 lane_byte_aligned <= 32'h19_18;
		#10 lane_byte_aligned <= 32'h1B_1A;
		#10 lane_byte_aligned <= 32'h1D_1C;
		#10 lane_byte_aligned <= 32'h1F_1E;
		#10 lane_byte_aligned <= 32'h21_20;
		#10 lane_byte_aligned <= 32'h23_22;
		#10 lane_byte_aligned_valid <= 0;
		    lane_byte_aligned <= 16'h00_00;
		#90 ;

		//B8_B8_B8_B8
		//CC_00_20_01
		#10 lane_byte_aligned_valid <= 1;
		    lane_byte_aligned <= 32'hB8_B8;
		#10 lane_byte_aligned <= 32'h20_01;  //frame end
		#10 lane_byte_aligned <= 32'hCC_00;
		#10 lane_byte_aligned_valid <= 0;
		    lane_byte_aligned <= 16'h00_00;
		#90 ;

	end


	_csi2_packet_decoder # (
		.LANES_NUM(LANES_NUM)
	)
	u_csi2_packet_decoder (
		.clk                        ( clk                     ),
		.rst_n                      ( rst_n                   ),
		.lane_byte_aligned          ( lane_byte_aligned       ),
		.lane_byte_aligned_valid    ( lane_byte_aligned_valid ),
		.pkt_valid                  ( pkt_valid               ),
		.pkt_di                     ( pkt_di                  ),
		.pkt_wc                     ( pkt_wc                  ),
		.pkt_data                   ( pkt_data                )
	);

endmodule

module tb_csi2_raw10_unpack_1lanes();
	localparam LANES_NUM = 1;

	reg clk = 1;
	always #5 clk <= ~clk;

	reg rst_n = 0;

	reg                     pkt_valid = 0;
	reg  [7:0]              pkt_di = 0;
	reg  [15:0]             pkt_wc = 0;
	reg  [LANES_NUM*8-1:0]  pkt_data = 0;

	wire                    pix_valid;
	wire [7:0]              pix_di;
	wire [LANES_NUM*10-1:0] pix_data;
	wire                    pix_data_enable;
	
	integer i;
	initial begin
		#10 rst_n <= 1;
		#1;
		for (i = 0; i < 10; i = i + 1) begin
			#10 pkt_valid <= 1;
				pkt_di    <= 8'h2B;
				pkt_wc    <= 45;
				pkt_data  <= 8'h00;
			#10 pkt_data  <= 8'h01;
			#10 pkt_data  <= 8'h02;
			#10 pkt_data  <= 8'h03;
			#10 pkt_data  <= 8'hE4;
			#10 pkt_data  <= 8'h04;
			#10 pkt_data  <= 8'h05;
			#10 pkt_data  <= 8'h06;
			#10 pkt_data  <= 8'h07;
			#10 pkt_data  <= 8'hE4;
			#10 pkt_data  <= 8'h08;
			#10 pkt_data  <= 8'h09;
			#10 pkt_data  <= 8'h0A;
			#10 pkt_data  <= 8'h0B;
			#10 pkt_data  <= 8'hE4;
			#10 pkt_data  <= 8'h0C;
			#10 pkt_data  <= 8'h0D;
			#10 pkt_data  <= 8'h0E;
			#10 pkt_data  <= 8'h0F;
			#10 pkt_data  <= 8'hE4;
			#10 pkt_data  <= 8'h10;
			#10 pkt_data  <= 8'h11;
			#10 pkt_data  <= 8'h12;
			#10 pkt_data  <= 8'h13;
			#10 pkt_data  <= 8'hE4;
			#10 pkt_data  <= 8'h14;
			#10 pkt_data  <= 8'h15;
			#10 pkt_data  <= 8'h16;
			#10 pkt_data  <= 8'h17;
			#10 pkt_data  <= 8'hE4;
			#10 pkt_data  <= 8'h18;
			#10 pkt_data  <= 8'h19;
			#10 pkt_data  <= 8'h1A;
			#10 pkt_data  <= 8'h1B;
			#10 pkt_data  <= 8'hE4;
			#10 pkt_data  <= 8'h1C;
			#10 pkt_data  <= 8'h1D;
			#10 pkt_data  <= 8'h1E;
			#10 pkt_data  <= 8'h1F;
			#10 pkt_data  <= 8'hE4;
			#10 pkt_data  <= 8'h20;
			#10 pkt_data  <= 8'h21;
			#10 pkt_data  <= 8'h22;
			#10 pkt_data  <= 8'h23;
			#10 pkt_data  <= 8'hE4;
			#10 pkt_valid <= 0;
				pkt_di    <= 0;
				pkt_wc    <= 0;
			#90 ;
		end
	end


	_csi2_raw10_unpack #(
		.LANES_NUM(LANES_NUM)
	)
	u_csi2_raw10_unpack
	(
		.clk                 ( clk             ),
		.rst_n               ( rst_n           ),
		.pkt_valid           ( pkt_valid       ),
		.pkt_di              ( pkt_di          ),
		.pkt_wc              ( pkt_wc          ),
		.pkt_data            ( pkt_data        ),
		.pix_valid           ( pix_valid       ),
		.pix_di              ( pix_di          ),
		.pix_data            ( pix_data        ),
		.pix_data_enable     ( pix_data_enable )
	);

endmodule

module tb_csi2_raw10_unpack_2lanes();
	localparam LANES_NUM = 2;

	reg clk = 1;
	always #5 clk <= ~clk;

	reg rst_n = 0;

	reg                     pkt_valid = 0;
	reg  [7:0]              pkt_di = 0;
	reg  [15:0]             pkt_wc = 0;
	reg  [LANES_NUM*8-1:0]  pkt_data = 0;

	wire                    pix_valid;
	wire [7:0]              pix_di;
	wire [LANES_NUM*10-1:0] pix_data;
	wire                    pix_data_enable;
	
	integer i;
	initial begin
		#10 rst_n <= 1;
		#1;
		for (i = 0; i < 10; i = i + 1) begin
			#10 pkt_valid <= 1;
				pkt_di    <= 8'h2B;
				pkt_wc    <= 45;
				pkt_data  <= 16'h01_00;
			#10 pkt_data  <= 16'h03_02;
			#10 pkt_data  <= 16'h04_E4;
			#10 pkt_data  <= 16'h06_05;
			#10 pkt_data  <= 16'hE4_07;
			#10 pkt_data  <= 16'h09_08;
			#10 pkt_data  <= 16'h0B_0A;
			#10 pkt_data  <= 16'h0C_E4;
			#10 pkt_data  <= 16'h0E_0D;
			#10 pkt_data  <= 16'hE4_0F;
			#10 pkt_data  <= 16'h11_10;
			#10 pkt_data  <= 16'h13_12;
			#10 pkt_data  <= 16'h14_E4;
			#10 pkt_data  <= 16'h16_15;
			#10 pkt_data  <= 16'hE4_17;
			#10 pkt_data  <= 16'h19_18;
			#10 pkt_data  <= 16'h1B_1A;
			#10 pkt_data  <= 16'h1C_E4;
			#10 pkt_data  <= 16'h1E_1D;
			#10 pkt_data  <= 16'hE4_1F;
			#10 pkt_data  <= 16'h21_20;
			#10 pkt_data  <= 16'h23_22;
			#10 pkt_data  <= 16'h24_E4;
			#10 pkt_valid <= 0;
				pkt_di    <= 0;
				pkt_wc    <= 0;
			#90 ;
		end
	end


	_csi2_raw10_unpack #(
		.LANES_NUM(LANES_NUM)
	)
	u_csi2_raw10_unpack
	(
		.clk                 ( clk             ),
		.rst_n               ( rst_n           ),
		.pkt_valid           ( pkt_valid       ),
		.pkt_di              ( pkt_di          ),
		.pkt_wc              ( pkt_wc          ),
		.pkt_data            ( pkt_data        ),
		.pix_valid           ( pix_valid       ),
		.pix_di              ( pix_di          ),
		.pix_data            ( pix_data        ),
		.pix_data_enable     ( pix_data_enable )
	);

endmodule


module tb_csi2_raw10_unpack_4lanes();
	localparam LANES_NUM = 4;

	reg clk = 1;
	always #5 clk <= ~clk;

	reg rst_n = 0;

	reg                     pkt_valid = 0;
	reg  [7:0]              pkt_di = 0;
	reg  [15:0]             pkt_wc = 0;
	reg  [LANES_NUM*8-1:0]  pkt_data = 0;

	wire                    pix_valid;
	wire [7:0]              pix_di;
	wire [LANES_NUM*10-1:0] pix_data;
	wire                    pix_data_enable;
	
	integer i;
	initial begin
		#10 rst_n <= 1;
		#1;
		for (i = 0; i < 10; i = i + 1) begin
			#10 pkt_valid <= 1;
				pkt_di    <= 8'h2B;
				pkt_wc    <= 45;
				pkt_data  <= 32'h03_02_01_00;
			#10 pkt_data  <= 32'h06_05_04_E4;
			#10 pkt_data  <= 32'h09_08_E4_07;
			#10 pkt_data  <= 32'h0C_E4_0B_0A;
			#10 pkt_data  <= 32'hE4_0F_0E_0D;
			#10 pkt_data  <= 32'h13_12_11_10;
			#10 pkt_data  <= 32'h16_15_14_E4;
			#10 pkt_data  <= 32'h19_18_E4_17;
			#10 pkt_data  <= 32'h1C_E4_1B_1A;
			#10 pkt_data  <= 32'hE4_1F_1E_1D;
			#10 pkt_data  <= 32'h23_22_21_20;
			#10 pkt_data  <= 32'h26_25_24_E4;
			#10 pkt_valid <= 0;
				pkt_di    <= 0;
				pkt_wc    <= 0;
			#90 ;
		end
	end


	_csi2_raw10_unpack #(
		.LANES_NUM(LANES_NUM)
	)
	u_csi2_raw10_unpack
	(
		.clk                 ( clk             ),
		.rst_n               ( rst_n           ),
		.pkt_valid           ( pkt_valid       ),
		.pkt_di              ( pkt_di          ),
		.pkt_wc              ( pkt_wc          ),
		.pkt_data            ( pkt_data        ),
		.pix_valid           ( pix_valid       ),
		.pix_di              ( pix_di          ),
		.pix_data            ( pix_data        ),
		.pix_data_enable     ( pix_data_enable )
	);

endmodule
