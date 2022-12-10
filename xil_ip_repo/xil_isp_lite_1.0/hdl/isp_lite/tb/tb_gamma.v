`timescale 1ns/1ns

module tb_gamma();

	reg xclk = 0;
	always #5 xclk <= ~xclk;
	
	reg rst_n = 0;
	initial begin
		rst_n <= 0;
		#100 rst_n <= 1;
		#20_000_000 $stop;
	end
	
	localparam BITS     = 8;
	localparam WIDTH    = 1280;
	localparam HEIGHT   = 720;
	localparam BAYER    = 3;
	localparam IN_FILE  = "isp_nonr_1280x720_gray.bin";
	localparam OUT_FILE = "out_gray.bin";

	wire in_pclk, in_href, in_vsync;
	wire [BITS-1:0] in_data;
	tb_file_to_dvp
		#(
			.FILE(IN_FILE),
			.BITS(BITS),
			.H_DISP(WIDTH),
			.V_DISP(HEIGHT)
		)
		dvp_gen
		(
			.xclk(xclk),
			.rst_n(rst_n),
			.pclk(in_pclk),
			.href(in_href),
			.hsync(),
			.vsync(in_vsync),
			.data(in_data)
		);

	wire out_pclk = in_pclk;
	wire out_href;
	wire out_vsync;
	wire [BITS-1:0] out_data;

	//Gamma映射表RAM配置口
	localparam CFG_TABLE_BITS = 6;
	reg                       cfg_table_clk = 0;
	reg                       cfg_table_wen = 0;
	reg  [CFG_TABLE_BITS-1:0] cfg_table_addr = 0;
	wire [CFG_TABLE_BITS-1:0] cfg_table_wdata;
	
	always #2 cfg_table_clk <= ~cfg_table_clk;
	always #4 cfg_table_addr <= cfg_table_wen ? cfg_table_addr + 1'b1 : cfg_table_addr;
	initial begin
		#200                     cfg_table_wen <= 1;
		#(4*(2**CFG_TABLE_BITS)) cfg_table_wen <= 0;
	end

	gamma_lut_y #(CFG_TABLE_BITS) lut0(cfg_table_addr, cfg_table_wdata);
	isp_gamma #(BITS, WIDTH, HEIGHT, CFG_TABLE_BITS) gamma_i0 (in_pclk, rst_n, in_href, in_vsync, in_data, out_href, out_vsync, out_data,
													cfg_table_clk, cfg_table_wen, 1'b0, cfg_table_addr, cfg_table_wdata, );

	tb_dvp_to_file
		#(
			.FILE(OUT_FILE),
			.BITS(BITS)
		)
		dvp_recv
		(
			.pclk(out_pclk),
			.rst_n(rst_n),
			.href(out_href),
			.vsync(out_vsync),
			.data(out_data)
		);
endmodule


module gamma_lut_y
#(
	parameter BITS = 6
)
(
	input [BITS-1:0] index,
	output [BITS-1:0] value
);
	reg [5:0] v;
	assign value = BITS > 6 ? {v, {BITS-6{1'b0}}} : v[5-:BITS];
	wire [5:0] in = BITS >= 6 ? index[(BITS-1)-:6] : {index, {6-BITS{1'b0}}};

	//np.uint8(np.power(np.double(range(64))/63, 1/2.2) * 63)
	always @ (*) begin
		case (in)
			6'd0   : v = 6'd0;
			6'd1   : v = 6'd9;
			6'd2   : v = 6'd13;
			6'd3   : v = 6'd15;
			6'd4   : v = 6'd17;
			6'd5   : v = 6'd19;
			6'd6   : v = 6'd21;
			6'd7   : v = 6'd23;
			6'd8   : v = 6'd24;
			6'd9   : v = 6'd26;
			6'd10  : v = 6'd27;
			6'd11  : v = 6'd28;
			6'd12  : v = 6'd29;
			6'd13  : v = 6'd30;
			6'd14  : v = 6'd31;
			6'd15  : v = 6'd32;
			6'd16  : v = 6'd33;
			6'd17  : v = 6'd34;
			6'd18  : v = 6'd35;
			6'd19  : v = 6'd36;
			6'd20  : v = 6'd37;
			6'd21  : v = 6'd38;
			6'd22  : v = 6'd39;
			6'd23  : v = 6'd39;
			6'd24  : v = 6'd40;
			6'd25  : v = 6'd41;
			6'd26  : v = 6'd42;
			6'd27  : v = 6'd42;
			6'd28  : v = 6'd43;
			6'd29  : v = 6'd44;
			6'd30  : v = 6'd44;
			6'd31  : v = 6'd45;
			6'd32  : v = 6'd46;
			6'd33  : v = 6'd46;
			6'd34  : v = 6'd47;
			6'd35  : v = 6'd48;
			6'd36  : v = 6'd48;
			6'd37  : v = 6'd49;
			6'd38  : v = 6'd50;
			6'd39  : v = 6'd50;
			6'd40  : v = 6'd51;
			6'd41  : v = 6'd51;
			6'd42  : v = 6'd52;
			6'd43  : v = 6'd52;
			6'd44  : v = 6'd53;
			6'd45  : v = 6'd54;
			6'd46  : v = 6'd54;
			6'd47  : v = 6'd55;
			6'd48  : v = 6'd55;
			6'd49  : v = 6'd56;
			6'd50  : v = 6'd56;
			6'd51  : v = 6'd57;
			6'd52  : v = 6'd57;
			6'd53  : v = 6'd58;
			6'd54  : v = 6'd58;
			6'd55  : v = 6'd59;
			6'd56  : v = 6'd59;
			6'd57  : v = 6'd60;
			6'd58  : v = 6'd60;
			6'd59  : v = 6'd61;
			6'd60  : v = 6'd61;
			6'd61  : v = 6'd62;
			6'd62  : v = 6'd62;
			6'd63  : v = 6'd63;
		endcase
	end
endmodule
