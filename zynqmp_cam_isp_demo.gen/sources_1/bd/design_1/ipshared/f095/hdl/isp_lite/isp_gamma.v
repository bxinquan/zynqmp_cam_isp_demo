/*************************************************************************
    > File Name: isp_gamma.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/
`timescale 1 ns / 1 ps

/*
 * ISP - Gamma (Look-up table)
 * 可以用np.uint8(np.power(np.double(range(64))/63, 1/2.2) * 63)生成g=1/2.2的gamma表
 * CFG_TABLE_BITS必须小于BITS, 映射值必须是升序
 */

module isp_gamma
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter CFG_TABLE_BITS = 6
)
(
	input pclk,
	input rst_n,

	input in_href,
	input in_vsync,
	input [BITS-1:0] in_data,

	output out_href,
	output out_vsync,
	output [BITS-1:0] out_data,

	//Gamma映射表RAM配置口
	input                       cfg_table_clk,
	input                       cfg_table_wen,
	input                       cfg_table_ren,
	input  [CFG_TABLE_BITS-1:0] cfg_table_addr,
	input  [CFG_TABLE_BITS-1:0] cfg_table_wdata,
	output [CFG_TABLE_BITS-1:0] cfg_table_rdata
);

	localparam OFF_BITS = BITS - CFG_TABLE_BITS;

	reg [OFF_BITS-1:0] in_data_off;
	reg [CFG_TABLE_BITS-1:0] gamma_in_lo, gamma_in_hi;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			in_data_off <= 0;
			gamma_in_lo <= 0;
			gamma_in_hi <= 0;
		end
		else begin
			in_data_off <= in_data[OFF_BITS-1:0];
			gamma_in_lo <= in_data[(BITS-1)-:CFG_TABLE_BITS];
			gamma_in_hi <= &in_data[(BITS-1)-:CFG_TABLE_BITS] ? {CFG_TABLE_BITS{1'b1}} : in_data[(BITS-1)-:CFG_TABLE_BITS] + 1'b1;
		end
	end

	reg in_href_r, in_vsync_r;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			in_href_r  <= 0;
			in_vsync_r <= 0;
		end
		else begin
			in_href_r  <= in_href;
			in_vsync_r <= in_vsync;
		end
	end

	wire [CFG_TABLE_BITS-1:0] gamma_out_lo, gamma_out_hi;
	full_dp_ram #(CFG_TABLE_BITS,CFG_TABLE_BITS) gamma_table (
			.clk_a(cfg_table_clk),
			.wen_a(cfg_table_wen),
			.ren_a(cfg_table_ren),
			.addr_a(cfg_table_addr),
			.wdata_a(cfg_table_wdata),
			.rdata_a(cfg_table_rdata),
			.clk_b(pclk),
			.wen_b(1'b0),
			.ren_b(in_href_r),
			.addr_b(gamma_in_lo),
			.wdata_b({CFG_TABLE_BITS{1'b0}}),
			.rdata_b(gamma_out_lo)
		);
	full_dp_ram #(CFG_TABLE_BITS,CFG_TABLE_BITS) gamma_table_backup (
			.clk_a(cfg_table_clk),
			.wen_a(cfg_table_wen),
			.ren_a(1'b0),
			.addr_a(cfg_table_addr),
			.wdata_a(cfg_table_wdata),
			.rdata_a(),
			.clk_b(pclk),
			.wen_b(1'b0),
			.ren_b(in_href_r),
			.addr_b(gamma_in_hi),
			.wdata_b({CFG_TABLE_BITS{1'b0}}),
			.rdata_b(gamma_out_hi)
		);
	
	reg [OFF_BITS-1:0] in_data_off_1;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			in_data_off_1 <= 0;
		end
		else begin
			in_data_off_1 <= in_data_off;
		end
	end

	reg [OFF_BITS-1:0]       in_data_off_2;
	reg [BITS-1:0]           out_data_lo_2;
	reg [CFG_TABLE_BITS-1:0] gamma_out_off_2;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			in_data_off_2   <= 0;
			out_data_lo_2   <= 0;
			gamma_out_off_2 <= 0;
		end
		else begin
			in_data_off_2   <= in_data_off_1;
			out_data_lo_2   <= {gamma_out_lo, {OFF_BITS{1'b0}}};
			gamma_out_off_2 <= gamma_out_hi - gamma_out_lo;
		end
	end

	reg [BITS-1:0] out_data_3;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			out_data_3 <= 0;
		end
		else begin
			out_data_3 <= out_data_lo_2 + gamma_out_off_2 * in_data_off_2;
		end
	end

	reg [2:0] out_href_dly;
	reg [2:0] out_vsync_dly;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			out_href_dly  <= 0;
			out_vsync_dly <= 0;
		end
		else begin
			out_href_dly  <= {out_href_dly[1:0], in_href_r};
			out_vsync_dly <= {out_vsync_dly[1:0], in_vsync_r};
		end
	end

	assign out_href  = out_href_dly[2];
	assign out_vsync = out_vsync_dly[2];
	assign out_data  = out_href ? out_data_3 : {BITS{1'b0}};
endmodule
