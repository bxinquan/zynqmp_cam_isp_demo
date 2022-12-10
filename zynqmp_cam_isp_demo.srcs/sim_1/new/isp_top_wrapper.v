/*************************************************************************
    > File Name: isp_top_wrapper.v
    > Author: bxq
    > Mail: 544177215@qq.com
    > Created Time: Thu 21 Jan 2021 21:50:04 GMT
 ************************************************************************/


module isp_top_wrapper
#(
	parameter BITS = 8,
	parameter WIDTH = 1280,
	parameter HEIGHT = 960,
	parameter BAYER = 0 //0:BGGR 1:GBRG 2:GRBG 3:RGGB
)
(
	input pclk,
	input rst_n,
	
	input in_href,
	input in_vsync,
	input [BITS-1:0] in_raw,
	
	output out_href,
	output out_vsync,
	output [BITS-1:0] out_y,
	output [BITS-1:0] out_u,
	output [BITS-1:0] out_v,
	
	output       cmos_change_start,
	input        cmos_change_done,
	output [9:0] cmos_exposure,
	output [9:0] cmos_gain
);

//`define USE_ALGO_AE 1
//`define USE_ALGO_AWB 1

	localparam EN_DPC = 1'b0;
	localparam EN_BLC = 1'b0;
	localparam EN_BNR = 1'b0;
	localparam EN_DGAIN = 1'b0;
	localparam EN_DEMOSIC = 1'b1;
	localparam EN_WB = 1'b0;
	localparam EN_CCM = 1'b0;
	localparam EN_CSC = 1'b1;
	localparam EN_GAMMA = 1'b1;
	localparam EN_2DNR = 1'b0;
	localparam EN_EE = 1'b0;
	localparam EN_STAT_AE = 1'b0;
	localparam EN_STAT_AWB = 1'b0;

	localparam DPC_THRESHOLD = 8'd20;

	localparam BLC_B        = 8'd40;
	localparam BLC_Gb       = 8'd40;
	localparam BLC_Gr       = 8'd40;
	localparam BLC_R        = 8'd40;

	localparam NR_LEVEL     = 4'd1;

	localparam AE_RECT_X = 0;
	localparam AE_RECT_Y = 0;
	localparam AE_RECT_W = WIDTH;
	localparam AE_RECT_H = HEIGHT;

	localparam AWB_MIN = 8'd10;
	localparam AWB_MAX = 8'd220;
	
	localparam CCM_RR =  8'sh1a, CCM_RG = -8'sh05, CCM_RB = -8'sh05;
	localparam CCM_GR = -8'sh05, CCM_GG =  8'sh1a, CCM_GB = -8'sh05;
	localparam CCM_BR = -8'sh05, CCM_BG = -8'sh05, CCM_BB =  8'sh1a;
	
	localparam STAT_OUT_BITS = 28;
	localparam STAT_HIST_BITS = 8;
	localparam DGAIN_OFFSET = 0;

	wire [7:0] dgain_gain;
	wire [7:0] wb_rgain;
	wire [7:0] wb_ggain;
	wire [7:0] wb_bgain;
	
	wire stat_ae_done;
	wire [STAT_OUT_BITS-1:0] stat_ae_pix_cnt, stat_ae_sum;

	wire stat_awb_done;
	wire [STAT_OUT_BITS-1:0] stat_awb_pix_cnt, stat_awb_sum_r, stat_awb_sum_g, stat_awb_sum_b;
	
	reg [STAT_HIST_BITS+1:0] stat_hist_addr;
	wire [STAT_OUT_BITS-1:0] stat_ae_hist_data, stat_awb_hist_data;
	reg prev_vsync;
	always @ (posedge pclk) prev_vsync <= in_vsync;
	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n)
			stat_hist_addr <= 0;
		else if (in_vsync & ~prev_vsync)
			stat_hist_addr <= 0;
		else
			stat_hist_addr <= stat_hist_addr + 1'b1;
	end

	reg [4:0] sw00, sw01, sw02, sw03, sw04, sw05, sw06;
	reg [4:0] sw10, sw11, sw12, sw13, sw14, sw15, sw16;
	reg [4:0] sw20, sw21, sw22, sw23, sw24, sw25, sw26;
	reg [4:0] sw30, sw31, sw32, sw33, sw34, sw35, sw36;
	reg [4:0] sw40, sw41, sw42, sw43, sw44, sw45, sw46;
	reg [4:0] sw50, sw51, sw52, sw53, sw54, sw55, sw56;
	reg [4:0] sw60, sw61, sw62, sw63, sw64, sw65, sw66;
	reg [BITS-1:0] cx0, cx1, cx2, cx3, cx4, cx5, cx6, cx7, cx8;
	reg [4:0]      cy0, cy1, cy2, cy3, cy4, cy5, cy6, cy7, cy8;
	always @(posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			sw00<=5'd28; sw01<=5'd29; sw02<=5'd29; sw03<=5'd30; sw04<=5'd29; sw05<=5'd29; sw06<=5'd28;
			sw10<=5'd29; sw11<=5'd30; sw12<=5'd30; sw13<=5'd30; sw14<=5'd30; sw15<=5'd30; sw16<=5'd29;
			sw20<=5'd29; sw21<=5'd30; sw22<=5'd31; sw23<=5'd31; sw24<=5'd31; sw25<=5'd30; sw26<=5'd29;
			sw30<=5'd30; sw31<=5'd30; sw32<=5'd31; sw33<=5'd31; sw34<=5'd31; sw35<=5'd30; sw36<=5'd30;
			sw40<=5'd29; sw41<=5'd30; sw42<=5'd31; sw43<=5'd31; sw44<=5'd31; sw45<=5'd30; sw46<=5'd29;
			sw50<=5'd29; sw51<=5'd30; sw52<=5'd30; sw53<=5'd30; sw54<=5'd30; sw55<=5'd30; sw56<=5'd29;
			sw60<=5'd28; sw61<=5'd29; sw62<=5'd29; sw63<=5'd30; sw64<=5'd29; sw65<=5'd29; sw66<=5'd28;
			cx0<=8'd3;  cy0<=5'd30;
			cx1<=8'd6;  cy1<=5'd26;
			cx2<=8'd10; cy2<=5'd19;
			cx3<=8'd13; cy3<=5'd13;
			cx4<=8'd17; cy4<=5'd7;
			cx5<=8'd20; cy5<=5'd4;
			cx6<=8'd23; cy6<=5'd2;
			cx7<=8'd27; cy7<=5'd1;
			cx8<=8'd30; cy8<=5'd0;
		end
		else begin
			sw00<=sw00; sw01<=sw01; sw02<=sw02; sw03<=sw03; sw04<=sw04; sw05<=sw05; sw06<=sw06;
			sw10<=sw10; sw11<=sw11; sw12<=sw12; sw13<=sw13; sw14<=sw14; sw15<=sw15; sw16<=sw16;
			sw20<=sw20; sw21<=sw21; sw22<=sw22; sw23<=sw23; sw24<=sw24; sw25<=sw25; sw26<=sw26;
			sw30<=sw30; sw31<=sw31; sw32<=sw32; sw33<=sw33; sw34<=sw34; sw35<=sw35; sw36<=sw36;
			sw40<=sw40; sw41<=sw41; sw42<=sw42; sw43<=sw43; sw44<=sw44; sw45<=sw45; sw46<=sw46;
			sw50<=sw50; sw51<=sw51; sw52<=sw52; sw53<=sw53; sw54<=sw54; sw55<=sw55; sw56<=sw56;
			sw60<=sw60; sw61<=sw61; sw62<=sw62; sw63<=sw63; sw64<=sw64; sw65<=sw65; sw66<=sw66;
			cx0<=cx0; cy0<=cy0;
			cx1<=cx1; cy1<=cy1;
			cx2<=cx2; cy2<=cy2;
			cx3<=cx3; cy3<=cy3;
			cx4<=cx4; cy4<=cy4;
			cx5<=cx5; cy5<=cy5;
			cx6<=cx6; cy6<=cy6;
			cx7<=cx7; cy7<=cy7;
			cx8<=cx8; cy8<=cy8;
		end
	end

	//Gamma映射表RAM配置口
	localparam CFG_TABLE_BITS = 6;
	wire                      gamma_table_clk = pclk;
	reg                       gamma_table_wen;
	reg  [CFG_TABLE_BITS-1:0] gamma_table_addr;
	wire [CFG_TABLE_BITS-1:0] gamma_table_wdata;

	always @ (posedge pclk or negedge rst_n) begin
		if (!rst_n) begin
			gamma_table_wen  <= 0;
			gamma_table_addr <= 0;
		end
		else if (gamma_table_addr != {CFG_TABLE_BITS{1'b1}}) begin
			if (gamma_table_wen) begin
				gamma_table_wen  <= 1;
				gamma_table_addr <= gamma_table_addr + 1'b1;
			end
			else begin
				gamma_table_wen  <= 1;
				gamma_table_addr <= 0;
			end
		end
		else begin
			gamma_table_wen  <= 0;
			gamma_table_addr <= gamma_table_addr;
		end
	end
	gamma_lut_y #(CFG_TABLE_BITS) lut0(gamma_table_addr, gamma_table_wdata);

	isp_top #(.BITS(BITS), .WIDTH(WIDTH), .HEIGHT(HEIGHT), .BAYER(BAYER),
			.GAMMA_TABLE_BITS(CFG_TABLE_BITS),
			.NR2D_WEIGHT_BITS(5),
			.STAT_OUT_BITS(STAT_OUT_BITS),
			.STAT_HIST_BITS(STAT_HIST_BITS))
		isp_top_i0 (
			.pclk(pclk),
			.rst_n(rst_n),
		
			.in_href(in_href),
			.in_vsync(in_vsync),
			.in_raw(in_raw),
		
			.out_href(out_href),
			.out_vsync(out_vsync),
			.out_y(out_y),
			.out_u(out_u),
			.out_v(out_v),
		
			.dpc_en(EN_DPC), 
			.blc_en(EN_BLC), 
			.bnr_en(EN_BNR),
			.dgain_en(EN_DGAIN),
			.demosic_en(EN_DEMOSIC),
			.wb_en(EN_WB),
			.ccm_en(EN_CCM),
			.csc_en(EN_CSC),
			.gamma_en(EN_GAMMA),
			.nr2d_en(EN_2DNR),
			.ee_en(EN_EE),
			.stat_ae_en(EN_STAT_AE),
			.stat_awb_en(EN_STAT_AWB),

			.dpc_threshold(DPC_THRESHOLD),
			.blc_b(BLC_B), .blc_gb(BLC_Gb), .blc_gr(BLC_Gr), .blc_r(BLC_R),
			.nr_level(NR_LEVEL),
			.dgain_gain(dgain_gain), .dgain_offset(DGAIN_OFFSET),
			.wb_rgain(wb_rgain), .wb_ggain(wb_ggain), .wb_bgain(wb_bgain),
			.ccm_rr(CCM_RR), .ccm_rg(CCM_RG), .ccm_rb(CCM_RB),
			.ccm_gr(CCM_GR), .ccm_gg(CCM_GG), .ccm_gb(CCM_GB),
			.ccm_br(CCM_BR), .ccm_bg(CCM_BG), .ccm_bb(CCM_BB),

			.gamma_table_clk(gamma_table_clk),
			.gamma_table_wen(gamma_table_wen),
			.gamma_table_ren(1'b0),
			.gamma_table_addr(gamma_table_addr),
			.gamma_table_wdata(gamma_table_wdata),
			.gamma_table_rdata(),

			.nr2d_space_kernel({
					sw66,sw65,sw64,sw63,sw62,sw61,sw60,
					sw56,sw55,sw54,sw53,sw52,sw51,sw50,
					sw46,sw45,sw44,sw43,sw42,sw41,sw40,
					sw36,sw35,sw34,sw33,sw32,sw31,sw30,
					sw26,sw25,sw24,sw23,sw22,sw21,sw20,
					sw16,sw15,sw14,sw13,sw12,sw11,sw10,
					sw06,sw05,sw04,sw03,sw02,sw01,sw00}),
			.nr2d_color_curve_x({
					cx8,cx7,cx6,cx5,cx4,cx3,cx2,cx1,cx0}),
			.nr2d_color_curve_y({
					cy8,cy7,cy6,cy5,cy4,cy3,cy2,cy1,cy0}),

			.stat_ae_rect_x(AE_RECT_X), .stat_ae_rect_y(AE_RECT_Y), .stat_ae_rect_w(AE_RECT_W), .stat_ae_rect_h(AE_RECT_H),
			.stat_ae_done(stat_ae_done),
			.stat_ae_pix_cnt(stat_ae_pix_cnt), .stat_ae_sum(stat_ae_sum),
			.stat_ae_hist_clk(pclk),
			.stat_ae_hist_out(in_vsync),
			.stat_ae_hist_addr(stat_hist_addr),
			.stat_ae_hist_data(/*stat_ae_hist_data*/),

			.stat_awb_min(AWB_MIN), .stat_awb_max(AWB_MAX),
			.stat_awb_done(stat_awb_done),
			.stat_awb_pix_cnt(stat_awb_pix_cnt), .stat_awb_sum_r(stat_awb_sum_r), .stat_awb_sum_g(stat_awb_sum_g), .stat_awb_sum_b(stat_awb_sum_b),
			.stat_awb_hist_clk(pclk),
			.stat_awb_hist_out(in_vsync),
			.stat_awb_hist_addr(stat_hist_addr),
			.stat_awb_hist_data(/*stat_awb_hist_data*/)
		);

`ifdef USE_ALGO_AE
	alg_ae #(BITS) alg_ae_i0(pclk, rst_n, in_vsync, stat_ae_done, 8'd65, stat_ae_pix_cnt, stat_ae_sum+(^stat_ae_hist_data)/*XXX DEBUG*/, dgain_gain, cmos_change_start, cmos_change_done, cmos_exposure, cmos_gain);
`else
	assign cmos_exposure = 10'h200;
	assign cmos_gain = 10'h20;
	assign dgain_gain = 8'h10;
`endif

`ifdef USE_ALGO_AWB
	alg_awb #(BITS) alg_awb_i0(pclk, rst_n, stat_awb_done, stat_awb_pix_cnt, stat_awb_sum_r, stat_awb_sum_g+(^stat_awb_hist_data)/*XXX DEBUG*/, stat_awb_sum_b, wb_rgain, wb_ggain, wb_bgain);
`else
	assign wb_rgain = 8'h10;
	assign wb_ggain = 8'h10;
	assign wb_bgain = 8'h10;
`endif
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
