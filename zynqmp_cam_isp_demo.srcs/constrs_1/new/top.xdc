create_clock -period 2 -name mipi_ias1_clk_bit [get_ports mipi_rx_ias1_clk_p]
create_clock -period 2 -name mipi_rpi_clk_bit [get_ports mipi_rx_rpi_clk_p]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/camif_ias1/mipi_rx_to_video_ias1/inst/mipi_rx_to_video_v1_0_S00_AXI_inst/mipi_rx_to_video_inst/u_dphy_rx_to_byte/u_dphy_rx_clk_io/u_IBUFDS_DPHY/HSRX_O]

set_clock_groups -async \
        -group [get_clocks clk_sys_design_1_clk_wiz_0_0] \
        -group [get_clocks clk_isp_design_1_clk_wiz_0_0] \
        -group [get_clocks mipi_ias1_clk_bit] \
        -group [get_clocks mipi_rpi_clk_bit] \
        -group [get_clocks mipi_rx_to_video_ias1_vid_clk] \
        -group [get_clocks mipi_rx_to_video_rpi_vid_clk_1]

set_property -dict {PACKAGE_PIN G11 IOSTANDARD LVCMOS33 DRIVE 4 PULLUP true} [get_ports iic_scl_io]
set_property -dict {PACKAGE_PIN F10 IOSTANDARD LVCMOS33 DRIVE 4 PULLUP true} [get_ports iic_sda_io]

#IAS1 RST
set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS33 DRIVE 4} [get_ports gpio[0]]
#RPI PWR
set_property -dict {PACKAGE_PIN F11 IOSTANDARD LVCMOS33 DRIVE 4} [get_ports gpio[1]]
#RPI LED
set_property -dict {PACKAGE_PIN J12 IOSTANDARD LVCMOS33 DRIVE 4} [get_ports gpio[2]]


#MIPI - IAS1 (AR1335)
set_property -dict {PACKAGE_PIN C1} [get_ports mipi_rx_ias1_clk_p]
set_property -dict {PACKAGE_PIN B1} [get_ports mipi_rx_ias1_clk_n]
set_property -dict {PACKAGE_PIN A2} [get_ports mipi_rx_ias1_data_p[0]]
set_property -dict {PACKAGE_PIN A1} [get_ports mipi_rx_ias1_data_n[0]]
set_property -dict {PACKAGE_PIN B3} [get_ports mipi_rx_ias1_data_p[1]]
set_property -dict {PACKAGE_PIN A3} [get_ports mipi_rx_ias1_data_n[1]]
set_property -dict {PACKAGE_PIN B4} [get_ports mipi_rx_ias1_data_p[2]]
set_property -dict {PACKAGE_PIN A4} [get_ports mipi_rx_ias1_data_n[2]]
set_property -dict {PACKAGE_PIN D4} [get_ports mipi_rx_ias1_data_p[3]]
set_property -dict {PACKAGE_PIN C4} [get_ports mipi_rx_ias1_data_n[3]]

#MIPI - RPI (OV5647)
set_property -dict {PACKAGE_PIN D7} [get_ports mipi_rx_rpi_clk_p]
set_property -dict {PACKAGE_PIN D6} [get_ports mipi_rx_rpi_clk_n]
set_property -dict {PACKAGE_PIN E5} [get_ports mipi_rx_rpi_data_p[0]]
set_property -dict {PACKAGE_PIN D5} [get_ports mipi_rx_rpi_data_n[0]]
set_property -dict {PACKAGE_PIN G6} [get_ports mipi_rx_rpi_data_p[1]]
set_property -dict {PACKAGE_PIN F6} [get_ports mipi_rx_rpi_data_n[1]]
