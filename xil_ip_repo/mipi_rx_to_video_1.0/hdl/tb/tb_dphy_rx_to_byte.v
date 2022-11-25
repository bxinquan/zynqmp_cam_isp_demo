`timescale 1ns / 1ps


module tb_idelay3();

	reg clk_bit = 1;
	reg clk_byte = 1;
	
	always #5 clk_bit  <= ~clk_bit;   //500MHz
	always #20 clk_byte <= ~clk_byte;  //125MHz

	reg data_bit = 0;
	reg rst = 1;
	
	reg in_data = 0;
	always #40 in_data  <= ~in_data;

	
	wire in_delayed;



	IDELAYE3 #(
	  .CASCADE          ( "NONE"            ),
	  .DELAY_FORMAT     ( "COUNT"           ),
	  .DELAY_SRC        ( "IDATAIN"         ),
	  .DELAY_TYPE       ( "FIXED"           ),
	  .DELAY_VALUE      ( 0                 ),
	  .IS_CLK_INVERTED  ( 0                 ),
	  .IS_RST_INVERTED  ( 0                 ),
	  .LOOPBACK         ( "FALSE"           ),
	  .REFCLK_FREQUENCY ( 500.0             ),
	  .SIM_DEVICE       ( "ULTRASCALE_PLUS" ),
	  .SIM_VERSION      ( 2.0               ),
	  .UPDATE_MODE      ( "ASYNC"           )
	)
	u_IDELAYE3(
	  .CASC_OUT     (  ),
	  .CNTVALUEOUT  (),
	  .DATAOUT      ( in_delayed  ),

	  .CASC_IN      ( 1'b0 ),
	  .CASC_RETURN  ( 1'b0 ),
	  .CE           ( 1'b0 ),
	  .CLK          ( clk_byte    ),
	  .CNTVALUEIN   ( 9'd0 ),
	  .DATAIN       ( 1'b0 ),
	  .EN_VTC       ( 1'b0 ),
	  .IDATAIN      ( in_data     ),
	  .INC          ( 1'b0 ),
	  .LOAD         ( 1'b0 ),
	  .RST          ( rst         )
	);

endmodule


module tb_iserdes();

	reg clk_bit = 0;
	reg clk_byte = 0;
	
	always #5  clk_bit  <= ~clk_bit;   //100MHz
	always #20 clk_byte <= ~clk_byte;  //25MHz

	reg data_bit = 0;
	reg rst = 1;
	
	initial begin : _init_blk
		integer i;
		#10 rst <= 0;
		#15;
		for (i = 0; i < 6; i = i + 1) begin
			//0x5A
			#2 data_bit <= 0;
			#5 data_bit <= 1;
			#5 data_bit <= 0;
			#5 data_bit <= 1;
			#5 data_bit <= 1;
			#5 data_bit <= 0;
			#5 data_bit <= 1;
			#5 data_bit <= 0;
			#3 ;
		end
		for (i = 0; i < 100; i = i + 1) begin
			//0x69
			#2 data_bit <= 1;
			#5 data_bit <= 0;
			#5 data_bit <= 0;
			#5 data_bit <= 1;
			#5 data_bit <= 0;
			#5 data_bit <= 1;
			#5 data_bit <= 1;
			#5 data_bit <= 0;
			#3 ;
		end
	end
	
	wire [7:0] data_byte;


	ISERDESE3 #(
	  .DATA_WIDTH         ( 8                 ),
	  .DDR_CLK_EDGE       ( "OPPOSITE_EDGE"   ),
	  .FIFO_ENABLE        ( "FALSE"           ),
	  .FIFO_SYNC_MODE     ( "FALSE"           ),
	  .IDDR_MODE          ( "FALSE"           ),
	  .IS_CLK_B_INVERTED  ( 0                 ),
	  .IS_CLK_INVERTED    ( 0                 ),
	  .IS_RST_INVERTED    ( 0                 ),
	  .SIM_DEVICE         ( "ULTRASCALE_PLUS" ),
	  .SIM_VERSION        ( 2.0               )
	)
	u_ISERDESE3_data0 (
	  .FIFO_EMPTY         (           ),
	  .INTERNAL_DIVCLK    (           ),
	  .Q                  ( data_byte ),
	  .CLK                ( clk_bit   ),
	  .CLKDIV             ( clk_byte  ),
	  .CLK_B              ( ~clk_bit  ),
	  .D                  ( data_bit  ),
	  .FIFO_RD_CLK        ( 1'b0      ),
	  .FIFO_RD_EN         ( 1'b0      ),
	  .RST                ( rst       )
	);


endmodule
