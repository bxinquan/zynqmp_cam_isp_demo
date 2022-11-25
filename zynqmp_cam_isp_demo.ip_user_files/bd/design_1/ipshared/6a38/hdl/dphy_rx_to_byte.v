`timescale 1ns/1ns

/*
 * MIPI DPHY IO TO ALIGNED BYTE
 * Only Support Xilinx Zynq/Virtex UltraScale+ Device
 */

module dphy_rx_to_byte
#(
	parameter LANES_NUM         = 4,
	parameter DATA_DELAY_INSIDE = 0,
	parameter DATA_DELAY_NTAPS  = 0, // 0~511
	parameter HS_SETTLE_DELAY   = 0  // 0~63
)
(
	input                    mipi_clk_p_io,
	input                    mipi_clk_n_io,
	input  [LANES_NUM-1:0]   mipi_data_p_io,
	input  [LANES_NUM-1:0]   mipi_data_n_io,
	output                   clk_byte,
	output                   clk_byte_valid,
	output [LANES_NUM*8-1:0] data_byte,
	output [LANES_NUM-1:0]   data_byte_valid
);

	wire clk_hs_bit, clk_hs_byte;
	wire clk_lp_p, clk_lp_n;

	_dphy_rx_clk_io u_dphy_rx_clk_io (
		.mipi_clk_p_io  ( mipi_clk_p_io ),
		.mipi_clk_n_io  ( mipi_clk_n_io ),
		.clk_hs_bit     ( clk_hs_bit    ),
		.clk_hs_byte    ( clk_hs_byte   ),
		.clk_lp_p       ( clk_lp_p      ),
		.clk_lp_n       ( clk_lp_n      )
	);
	
	wire [LANES_NUM-1:0] data_hs_bit;
	wire [LANES_NUM-1:0] data_lp_p;
	wire [LANES_NUM-1:0] data_lp_n;

	genvar i;

	generate
		for (i = 0; i < LANES_NUM; i = i + 1) begin
			_dphy_rx_data_io u_dphy_rx_data_io (
				.mipi_data_p_io  ( mipi_data_p_io[i] ),
				.mipi_data_n_io  ( mipi_data_n_io[i] ),
				.data_hs_bit     ( data_hs_bit[i]    ),
				.data_lp_p       ( data_lp_p[i]      ),
				.data_lp_n       ( data_lp_n[i]      )
			);
		end
	endgenerate
	
	wire [LANES_NUM*8-1:0] data_hs_byte;
	
	generate
		for (i = 0; i < LANES_NUM; i = i + 1) begin
			_dphy_rx_to_byte #(
				.DATA_DELAY_INSIDE    ( DATA_DELAY_INSIDE ),
				.DATA_DELAY_NTAPS     ( DATA_DELAY_NTAPS  )
			)
			u_dphy_rx_to_byte (
				.clk          ( clk_hs_bit                 ),
				.rst          ( data_lp_p[i] | data_lp_n[i]),
				.clk_byte     ( clk_hs_byte                ),
				.data_bit     ( data_hs_bit[i]             ),
				.data_byte    ( data_hs_byte[i*8+:8]       )
			);
		end
	endgenerate

	wire [LANES_NUM*8-1:0] data_aligned;
	wire [LANES_NUM-1:0]   data_valid;
	
	generate
		for (i = 0; i < LANES_NUM; i = i + 1) begin
			_dphy_rx_data_byte_aligner #(
				.HS_SETTLE_DELAY    ( HS_SETTLE_DELAY )
			)
			u_dphy_rx_data_byte_aligner (
				.clk                ( clk_hs_byte                 ),
				.rst                ( data_lp_p[i] | data_lp_n[i] ),
				.data_byte          ( data_hs_byte[i*8+:8]        ),
				.data_byte_aligned  ( data_aligned[i*8+:8]        ),
				.data_byte_valid    ( data_valid[i]               )
			);
		end
	endgenerate

	assign clk_byte        = clk_hs_byte;
	assign clk_byte_valid  = ~(clk_lp_p | clk_lp_n);
	assign data_byte       = data_aligned;
	assign data_byte_valid = data_valid;

endmodule


module _dphy_rx_clk_io
(
	input          mipi_clk_p_io,
	input          mipi_clk_n_io,
	output         clk_hs_bit,
	output         clk_hs_byte,
	output         clk_lp_p,
	output         clk_lp_n
);

	wire clk_bit;

	IBUFDS_DPHY #(
		.DIFF_TERM    ( "TRUE"            ),
		.IOSTANDARD   ( "MIPI_DPHY_DCI"   ),
		.SIM_DEVICE   ( "ULTRASCALE_PLUS" )
	)
	u_IBUFDS_DPHY (
		.I            ( mipi_clk_p_io ),
		.IB           ( mipi_clk_n_io ),
		.HSRX_DISABLE ( 1'b0          ),
		.LPRX_DISABLE ( 1'b0          ),
		.HSRX_O       ( clk_bit       ),
		.LPRX_O_P     ( clk_lp_p      ),
		.LPRX_O_N     ( clk_lp_n      )
	);
	
	BUFGCE_DIV #(
		.BUFGCE_DIVIDE  ( 1       ),
		.CE_TYPE        ( "SYNC"  )
	)
	u_BUFGCE_DIV1 (
		.O              ( clk_hs_bit  ),
		.I              ( clk_bit     ),
		.CE             ( 1'b1        ),
		.CLR            ( 1'b0        )
	);

	BUFGCE_DIV #(
		.BUFGCE_DIVIDE  ( 4       ),
		.CE_TYPE        ( "SYNC"  )
	)
	u_BUFGCE_DIV4 (
		.O              ( clk_hs_byte ),
		.I              ( clk_bit     ),
		.CE             ( 1'b1        ),
		.CLR            ( 1'b0        )
	);

endmodule

module _dphy_rx_data_io
(
	input          mipi_data_p_io,
	input          mipi_data_n_io,
	output         data_hs_bit,
	output         data_lp_p,
	output         data_lp_n
);

	IBUFDS_DPHY #(
		.DIFF_TERM    ( "TRUE"            ),
		.IOSTANDARD   ( "MIPI_DPHY_DCI"   ),
		.SIM_DEVICE   ( "ULTRASCALE_PLUS" )
	)
	u_IBUFDS_DPHY (
		.I            ( mipi_data_p_io ),
		.IB           ( mipi_data_n_io ),
		.HSRX_DISABLE ( 1'b0           ),
		.LPRX_DISABLE ( 1'b0           ),
		.HSRX_O       ( data_hs_bit    ),
		.LPRX_O_P     ( data_lp_p      ),
		.LPRX_O_N     ( data_lp_n      )
	);

endmodule

module _dphy_rx_to_byte
#(
	parameter DATA_DELAY_INSIDE = 0,
	parameter DATA_DELAY_NTAPS  = 0 // 0~511
)
(
	input         clk,
	input         rst,
	input         clk_byte,
	input         data_bit,
	output [7:0]  data_byte
);

	wire data_bit_delayed;

	IDELAYE3 #(
		.CASCADE          ( "NONE"                ),
		.DELAY_FORMAT     ( "COUNT"               ),
		.DELAY_SRC        ( "IDATAIN"             ),
		.DELAY_TYPE       ( "FIXED"               ),
		.DELAY_VALUE      ( DATA_DELAY_NTAPS[8:0] ),
		.IS_CLK_INVERTED  ( 0                     ),
		.IS_RST_INVERTED  ( 0                     ),
		.LOOPBACK         ( "FALSE"               ),
		.REFCLK_FREQUENCY ( 300.0                 ),
		.SIM_DEVICE       ( "ULTRASCALE_PLUS"     ),
		.SIM_VERSION      ( 2.0                   ),
		.UPDATE_MODE      ( "ASYNC"               )
	)
	u_IDELAYE3 (
		.CASC_OUT     (                             ),
		.CNTVALUEOUT  (                             ),
		.DATAOUT      ( data_bit_delayed            ),
		.CASC_IN      ( 1'b0                        ),
		.CASC_RETURN  ( 1'b0                        ),
		.CE           ( 1'b0                        ),
		.CLK          ( clk_byte                    ),
		.CNTVALUEIN   ( 9'd0                        ),
		.DATAIN       ( 1'b0                        ),
		.EN_VTC       ( 1'b0                        ),
		.IDATAIN      ( data_bit                    ),
		.INC          ( 1'b0                        ),
		.LOAD         ( 1'b0                        ),
		.RST          ( rst || (!DATA_DELAY_INSIDE) )
	);

	wire fifo_empty;
	wire data_in = DATA_DELAY_INSIDE ? data_bit_delayed : data_bit;

	ISERDESE3 #(
		.DATA_WIDTH         ( 8                 ),
		.DDR_CLK_EDGE       ( "OPPOSITE_EDGE"   ),
		.FIFO_ENABLE        ( "TRUE"            ),
		.FIFO_SYNC_MODE     ( "FALSE"           ),
		.IDDR_MODE          ( "FALSE"           ),
		.IS_CLK_B_INVERTED  ( 1                 ),
		.IS_CLK_INVERTED    ( 0                 ),
		.IS_RST_INVERTED    ( 0                 ),
		.SIM_DEVICE         ( "ULTRASCALE_PLUS" ),
		.SIM_VERSION        ( 2.0               )
	)
	u_ISERDESE3 (
		.FIFO_EMPTY         ( fifo_empty  ),
		.INTERNAL_DIVCLK    (             ),
		.Q                  ( data_byte   ),
		.CLK                ( clk         ),
		.CLKDIV             ( clk_byte    ),
		.CLK_B              ( clk         ),
		.D                  ( data_in     ),
		.FIFO_RD_CLK        ( clk_byte    ),
		.FIFO_RD_EN         ( ~fifo_empty ),
		.RST                ( rst         )
	);

endmodule


module _dphy_rx_data_byte_aligner
#(
	parameter HS_SETTLE_DELAY = 0
)
(
	input             clk,
	input             rst,
	input      [7:0]  data_byte,
	output reg [7:0]  data_byte_aligned,
	output reg        data_byte_valid
);

	reg [7:0] last_byte;
	always @ (posedge clk or posedge rst) begin
		if (rst)
			last_byte <= 0;
		else
			last_byte <= data_byte;
	end
	
	reg [5:0] hs_settle_count;
	always @ (posedge clk or posedge rst) begin
		if (rst)
			hs_settle_count <= 0;
		else if (hs_settle_count == HS_SETTLE_DELAY[5:0])
			hs_settle_count <= hs_settle_count;
		else
			hs_settle_count <= hs_settle_count + 1'b1;
	end

	reg  [3:0]  align_offset;
	wire [15:0] word = {data_byte, last_byte};

	always @ (posedge clk or posedge rst) begin
		if (rst) begin
			data_byte_valid   <= 0;
			data_byte_aligned <= 0;
			align_offset      <= 0;
		end
		else if (1'b0 == data_byte_valid && hs_settle_count == HS_SETTLE_DELAY[5:0]) begin : _blk_align_for
			integer i;
			for (i = 15; i > 7; i = i - 1) begin
				if (word[i-:8] == 8'hB8) begin
					data_byte_valid   <= 1;
					data_byte_aligned <= word[i-:8];
					align_offset      <= i;
				end
			end
		end
		else begin
			data_byte_valid   <= data_byte_valid;
			data_byte_aligned <= word[align_offset-:8];
			align_offset      <= align_offset;
		end
	end

endmodule
