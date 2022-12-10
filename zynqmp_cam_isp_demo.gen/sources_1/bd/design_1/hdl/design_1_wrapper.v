//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Sat Dec 10 20:25:24 2022
//Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (gpio,
    iic_scl_io,
    iic_sda_io,
    mipi_rx_ias1_clk_n,
    mipi_rx_ias1_clk_p,
    mipi_rx_ias1_data_n,
    mipi_rx_ias1_data_p,
    mipi_rx_rpi_clk_n,
    mipi_rx_rpi_clk_p,
    mipi_rx_rpi_data_n,
    mipi_rx_rpi_data_p);
  output [2:0]gpio;
  inout iic_scl_io;
  inout iic_sda_io;
  input mipi_rx_ias1_clk_n;
  input mipi_rx_ias1_clk_p;
  input [3:0]mipi_rx_ias1_data_n;
  input [3:0]mipi_rx_ias1_data_p;
  input mipi_rx_rpi_clk_n;
  input mipi_rx_rpi_clk_p;
  input [1:0]mipi_rx_rpi_data_n;
  input [1:0]mipi_rx_rpi_data_p;

  wire [2:0]gpio;
  wire iic_scl_i;
  wire iic_scl_io;
  wire iic_scl_o;
  wire iic_scl_t;
  wire iic_sda_i;
  wire iic_sda_io;
  wire iic_sda_o;
  wire iic_sda_t;
  wire mipi_rx_ias1_clk_n;
  wire mipi_rx_ias1_clk_p;
  wire [3:0]mipi_rx_ias1_data_n;
  wire [3:0]mipi_rx_ias1_data_p;
  wire mipi_rx_rpi_clk_n;
  wire mipi_rx_rpi_clk_p;
  wire [1:0]mipi_rx_rpi_data_n;
  wire [1:0]mipi_rx_rpi_data_p;

  design_1 design_1_i
       (.gpio(gpio),
        .iic_scl_i(iic_scl_i),
        .iic_scl_o(iic_scl_o),
        .iic_scl_t(iic_scl_t),
        .iic_sda_i(iic_sda_i),
        .iic_sda_o(iic_sda_o),
        .iic_sda_t(iic_sda_t),
        .mipi_rx_ias1_clk_n(mipi_rx_ias1_clk_n),
        .mipi_rx_ias1_clk_p(mipi_rx_ias1_clk_p),
        .mipi_rx_ias1_data_n(mipi_rx_ias1_data_n),
        .mipi_rx_ias1_data_p(mipi_rx_ias1_data_p),
        .mipi_rx_rpi_clk_n(mipi_rx_rpi_clk_n),
        .mipi_rx_rpi_clk_p(mipi_rx_rpi_clk_p),
        .mipi_rx_rpi_data_n(mipi_rx_rpi_data_n),
        .mipi_rx_rpi_data_p(mipi_rx_rpi_data_p));
  IOBUF iic_scl_iobuf
       (.I(iic_scl_o),
        .IO(iic_scl_io),
        .O(iic_scl_i),
        .T(iic_scl_t));
  IOBUF iic_sda_iobuf
       (.I(iic_sda_o),
        .IO(iic_sda_io),
        .O(iic_sda_i),
        .T(iic_sda_t));
endmodule
