`timescale 1ns / 1ps


/*
 * MIPI CSI-2 Convert DPHY ALIGNED BYTE to Pixel
 * 1/2/4 Lane, RAW8/RAW10
 */

module csi2_rx_to_pixel
#(
	parameter LANES_NUM = 4,   // 1/2/4
	parameter DATA_BITS = 10   // 8/10
)
(
	input                            clk,            //dphy byte clk
	input                            rst_n,          //async reset

	input  [LANES_NUM*8-1:0]         phy_byte,       //dphy lane byte stream
	input  [LANES_NUM-1:0]           phy_byte_valid, //dphy lane byte valid

	output                           pix_valid,      //data valid flag
	output [7:0]                     pix_di,         //DI, valid if pix_valid
	output [LANES_NUM*DATA_BITS-1:0] pix_data,       //Data x LANES_NUM, valid if pix_data_enable
	output                           pix_data_enable //pix_data active flag, valid when pix_valid
);

	wire [LANES_NUM*8-1:0] lane_byte_aligned;
	wire                   lane_byte_aligned_valid;

	_csi2_lanes_aligner #(
		.LANES_NUM      ( LANES_NUM )
	)
	u_csi2_lanes_aligner
	(
		.clk                       ( clk                     ),
		.rst_n                     ( rst_n                   ),
		.lane_byte                 ( phy_byte                ),
		.lane_byte_valid           ( phy_byte_valid          ),
		.lane_byte_aligned         ( lane_byte_aligned       ),
		.lane_byte_aligned_valid   ( lane_byte_aligned_valid )
	);
	

	wire                   pkt_valid;
	wire [7:0]             pkt_di;
	wire [15:0]            pkt_wc;
	wire [LANES_NUM*8-1:0] pkt_data;

	_csi2_packet_decoder #(
		.LANES_NUM      ( LANES_NUM )
	)
	u_csi2_packet_decoder
	(
		.clk                      ( clk                     ),
		.rst_n                    ( rst_n                   ),
		.lane_byte_aligned        ( lane_byte_aligned       ),
		.lane_byte_aligned_valid  ( lane_byte_aligned_valid ),
		.pkt_valid                ( pkt_valid               ),
		.pkt_di                   ( pkt_di                  ),
		.pkt_wc                   ( pkt_wc                  ),
		.pkt_data                 ( pkt_data                )
	);

	wire                    raw10_pix_valid;
	wire [7:0]              raw10_pix_di;
	wire [LANES_NUM*10-1:0] raw10_pix_data;
	wire                    raw10_pix_data_enable;

	_csi2_raw10_unpack #(
		.LANES_NUM      ( LANES_NUM )
	)
	u_csi2_raw10_unpack
	(
		.clk                      ( clk                               ),
		.rst_n                    ( rst_n                             ),
		.pkt_valid                ( pkt_valid && pkt_di[5:0] == 6'h2B ),
		.pkt_di                   ( pkt_di                            ),
		.pkt_wc                   ( pkt_wc                            ),
		.pkt_data                 ( pkt_data                          ),
		.pix_valid                ( raw10_pix_valid                   ),
		.pix_di                   ( raw10_pix_di                      ),
		.pix_data                 ( raw10_pix_data                    ),
		.pix_data_enable          ( raw10_pix_data_enable             )
	);

	reg                           reg_pix_valid;
	reg [7:0]                     reg_pix_di;
	reg [LANES_NUM*DATA_BITS-1:0] reg_pix_data;
	reg                           reg_pix_data_enable;

	always @ (posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			reg_pix_valid       <= 0;
			reg_pix_di          <= 0;
			reg_pix_data        <= 0;
			reg_pix_data_enable <= 0;
		end
		else if (pkt_di[5:0] == 6'h2B || raw10_pix_valid) begin : _blk_pix_data_for
			integer i;
			reg_pix_valid       <= raw10_pix_valid;
			reg_pix_di          <= raw10_pix_di;
			reg_pix_data_enable <= raw10_pix_data_enable;
			for (i = 0; i < LANES_NUM; i = i + 1)
				if (DATA_BITS <= 10)
					reg_pix_data[(i*DATA_BITS)+:DATA_BITS] <= raw10_pix_data[(10*i+9)-:DATA_BITS];
				else
					reg_pix_data[(i*DATA_BITS)+:DATA_BITS] <= {{DATA_BITS-10{1'b0}}, raw10_pix_data[(i*10)+:10]};
		end
		else begin
			reg_pix_valid       <= pkt_valid;
			reg_pix_di          <= pkt_di;
			reg_pix_data        <= pkt_data;
			reg_pix_data_enable <= |pkt_wc;		
		end
	end
	
	assign pix_valid       = reg_pix_valid;
	assign pix_di          = reg_pix_di;
	assign pix_data        = reg_pix_data;
	assign pix_data_enable = reg_pix_data_enable;

endmodule


module _csi2_lanes_aligner
#(
	parameter LANES_NUM = 4
)
(
	input                        clk,
	input                        rst_n,

	input  [LANES_NUM*8-1:0]     lane_byte,
	input  [LANES_NUM-1:0]       lane_byte_valid,

	output reg [LANES_NUM*8-1:0] lane_byte_aligned,
	output                       lane_byte_aligned_valid
);

	localparam LANE_BUF_ADDR_BITS = 3;
	localparam LANE_BUF_ADDR_SIZE = 2**LANE_BUF_ADDR_BITS;

	reg                          align_flag;
	reg [LANE_BUF_ADDR_BITS-1:0] align_idx [LANES_NUM-1:0];
	reg [LANES_NUM*8-1:0]        lane_buf  [LANE_BUF_ADDR_SIZE-1:0];


	wire lane_valid = |lane_byte_valid;
	
	always @ (posedge clk or negedge rst_n) begin
		if (!rst_n || !lane_valid)
			align_flag <= 0;
		else if (&lane_byte_valid)
			align_flag <= 1;
		else
			align_flag <= align_flag;
	end

	always @ (posedge clk or negedge rst_n) begin : _blk_align_idx
		integer i;
		if (!rst_n || !lane_valid) begin
			for (i = 0; i < LANES_NUM; i = i + 1)
				align_idx[i] <= 0;
		end
		else if (1'b0 == align_flag) begin
			for (i = 0; i < LANES_NUM; i = i + 1)
				if (lane_byte_valid[i])
					align_idx[i] <= align_idx[i] + 1'b1;
		end
		else begin
			for (i = 0; i < LANES_NUM; i = i + 1)
				align_idx[i] <= align_idx[i];
		end
	end

	always @ (posedge clk or negedge rst_n) begin : _blk_lane_buf
		integer i;
		if (!rst_n || !lane_valid) begin
			for (i = 0; i < LANE_BUF_ADDR_SIZE; i = i + 1)
				lane_buf[i] <= 0;
		end
		else begin
			lane_buf[0] <= lane_byte;
			for (i = 1; i < LANE_BUF_ADDR_SIZE; i = i + 1)
				lane_buf[i] <= lane_buf[i-1];
		end
	end

	always @ (*) begin : _blk_lane_byte_aligned
		integer i;
		for (i = 0; i < LANES_NUM; i = i + 1)
			lane_byte_aligned[i*8+:8] = lane_buf[align_idx[i] - 1'b1][i*8+:8];
	end
	
	assign lane_byte_aligned_valid = align_flag;

endmodule

module _csi2_packet_decoder
#(
	parameter LANES_NUM = 4  //1/2/4
)
(
	input                    clk,
	input                    rst_n,

	input  [LANES_NUM*8-1:0] lane_byte_aligned,
	input                    lane_byte_aligned_valid,

	output                   pkt_valid,
	output [7:0]             pkt_di,
	output [15:0]            pkt_wc,
	output [LANES_NUM*8-1:0] pkt_data
);

	localparam HEAD_CLK_NUM = 4 / LANES_NUM + 1;

	reg [2:0]             head_clk_idx;
	reg [31:0]            head_word;
	reg                   data_flag;
	reg [LANES_NUM*8-1:0] data_byte;
	always @ (posedge clk or negedge rst_n) begin
		if (!rst_n || !lane_byte_aligned_valid) begin
			head_clk_idx <= 0;
			head_word    <= 0;
			data_flag    <= 0;
			data_byte    <= 0;
		end
		else if (HEAD_CLK_NUM[2:0] == head_clk_idx) begin
			head_clk_idx <= head_clk_idx;
			head_word    <= head_word;
			data_flag    <= 1;
			data_byte    <= lane_byte_aligned;
		end
		else if (3'd0 != head_clk_idx || {LANES_NUM{8'hB8}} == lane_byte_aligned) begin
			head_clk_idx <= head_clk_idx + 1'b1;
			data_byte    <= 0;
			if (LANES_NUM == 4) begin
				head_word <= lane_byte_aligned;
				data_flag <= (head_clk_idx + 1'b1 == HEAD_CLK_NUM[2:0]) && (lane_byte_aligned[5:4] == 2'b00); //sync short packet
			end
			else begin
				head_word <= {lane_byte_aligned, head_word[31-:(4-LANES_NUM)*8]};
				data_flag <= (head_clk_idx + 1'b1 == HEAD_CLK_NUM[2:0]) && (head_word[LANES_NUM*8+4+:2] == 2'b00); //sync short packet
			end
		end
		else begin
			head_clk_idx <= 0;
			head_word    <= 0;
			data_flag    <= 0;
			data_byte    <= 0;
		end
	end

	reg                   data_flag_2;
	reg [7:0]             data_id_2;   //DI
	reg [LANES_NUM*8-1:0] data_byte_2;
	reg [15:0]            data_count_2;
	reg [15:0]            data_index_2;

	wire word_count_valid = (head_word[5:3] >= 3'b010 && head_word[5:3] < 3'b111); // Generic Long Packet /YUV / RGB / RAW / User Defined Byte-based Data

	always @ (posedge clk or negedge rst_n) begin
		if (!rst_n || !data_flag) begin
			data_flag_2  <= 0;
			data_id_2    <= 0;
			data_byte_2  <= 0;
			data_count_2 <= 0;
			data_index_2 <= 0;
		end
		else if (data_index_2 == 16'd0) begin
			data_flag_2  <= 1'b1;
			data_id_2    <= head_word[7:0];
			data_index_2 <= LANES_NUM;
			if (word_count_valid) begin
				data_byte_2  <= data_byte;
				data_count_2 <= head_word[23:8];
			end
			else begin
				data_byte_2  <= 0;
				data_count_2 <= 0;			
			end
		end
		else if (data_index_2 < data_count_2) begin
			data_flag_2  <= 1'b1;
			data_id_2    <= data_id_2;
			data_byte_2  <= data_byte;
			data_count_2 <= data_count_2;
			data_index_2 <= data_index_2 + LANES_NUM;
		end
		else begin
			data_flag_2  <= 0;
			data_id_2    <= 0;
			data_byte_2  <= 0;
			data_count_2 <= data_count_2;
			data_index_2 <= data_index_2;
		end
	end

	assign pkt_valid = data_flag_2;
	assign pkt_di    = data_id_2;
	assign pkt_wc    = data_flag_2 ? data_count_2 : 0;
	assign pkt_data  = data_byte_2;
endmodule

module _csi2_raw10_unpack
#(
	parameter LANES_NUM = 4  //1/2/4
)
(
	input                     clk,
	input                     rst_n,

	input                     pkt_valid,
	input  [7:0]              pkt_di,
	input  [15:0]             pkt_wc,
	input  [LANES_NUM*8-1:0]  pkt_data,

	output                    pix_valid,
	output [7:0]              pix_di,
	output [LANES_NUM*10-1:0] pix_data,
	output                    pix_data_enable
);

	localparam READY_DELAY = 4 / LANES_NUM;
	reg [READY_DELAY:0] ready_delay;
	always @ (posedge clk or negedge rst_n) begin
		if (!rst_n)
			ready_delay <= 0;
		else
			ready_delay <= {ready_delay[READY_DELAY-1:0], pkt_valid};
	end
	
	wire flag_ready = ready_delay[READY_DELAY-1];

	reg [2:0] last_size;
	reg [1:0] last_pix_idx;
	always @ (posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			last_size    <= 0;
			last_pix_idx <= 0;
		end
		else if (!(pkt_valid | flag_ready)) begin
			last_size    <= 0;
			last_pix_idx <= 0;
		end
		else if (last_size + LANES_NUM < 5) begin
			last_size    <= last_size + LANES_NUM;
			last_pix_idx <= 0;
		end
		else if (last_pix_idx + LANES_NUM < 4) begin
			last_size    <= last_size;
			last_pix_idx <= last_pix_idx + LANES_NUM;
		end
		else begin
			last_size    <= last_size - 1'b1;
			last_pix_idx <= 0;
		end
	end

	reg [31:0] last_data;
	always @ (posedge clk or negedge rst_n) begin
		if (!rst_n)
			last_data <= 0;
		else if (!(pkt_valid | flag_ready))
			last_data <= 0;
		else
			if (LANES_NUM == 4)
				last_data <= pkt_data;
			else
				last_data <= {pkt_data, last_data[31-:(4-LANES_NUM)*8]};
	end

	wire [LANES_NUM*8+31:0] word = {pkt_data, last_data};
	reg  [LANES_NUM*10-1:0] pixel_data;
	reg                     pixel_enable;
	always @ (posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			pixel_data   <= 0;
			pixel_enable <= 0;
		end
		else if (!(pkt_valid | flag_ready)) begin
			pixel_data   <= 0;
			pixel_enable <= 0;
		end
		else if (last_size + LANES_NUM < 3'd5) begin
			pixel_data   <= 0;
			pixel_enable <= 0;
		end
		else begin : _blk_pixel_data_for
			integer i;
			pixel_enable <= 1;
			for (i = 0; i < LANES_NUM; i = i + 1)
				pixel_data[i*10+:10] <= {word[((4 - last_size + i)*8) +: 8], word[((4 - last_size + 4 - last_pix_idx)*8 + (i+last_pix_idx)*2) +: 2]};//XXX
		end
	end

	reg [7:0] di_reg;
	always @ (posedge clk or negedge rst_n) begin
		if (!rst_n)
			di_reg <= 0;
		else if (pkt_valid)
			di_reg <= pkt_di;
		else if (flag_ready)
			di_reg <= di_reg;
		else
			di_reg <= 0;
	end

	reg                    reg_pix_valid;
	reg [7:0]              reg_pix_di;
	reg [LANES_NUM*10-1:0] reg_pix_data;
	reg                    reg_pix_data_enable;

	always @ (posedge clk or negedge rst_n) begin
		if (!rst_n || !flag_ready) begin
			reg_pix_valid       <= 0;
			reg_pix_di          <= 0;
			reg_pix_data        <= 0;
			reg_pix_data_enable <= 0;
		end
		else begin
			reg_pix_valid       <= ready_delay[READY_DELAY];
			reg_pix_di          <= ready_delay[READY_DELAY] ? di_reg : 0;
			reg_pix_data        <= ready_delay[READY_DELAY] ? pixel_data : 0;
			reg_pix_data_enable <= ready_delay[READY_DELAY] ? pixel_enable : 0;
		end
	end
	
	assign pix_valid       = reg_pix_valid;
	assign pix_di          = reg_pix_di;
	assign pix_data        = reg_pix_data;
	assign pix_data_enable = reg_pix_data_enable;

endmodule
