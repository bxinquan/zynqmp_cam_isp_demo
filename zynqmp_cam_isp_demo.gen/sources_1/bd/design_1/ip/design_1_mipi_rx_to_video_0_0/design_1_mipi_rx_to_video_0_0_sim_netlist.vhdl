-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sat Dec 17 00:27:20 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_mipi_rx_to_video_0_0/design_1_mipi_rx_to_video_0_0_sim_netlist.vhdl
-- Design      : design_1_mipi_rx_to_video_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__csi2_lanes_aligner\ is
  port (
    align_flag_reg_0 : out STD_LOGIC;
    module_reset_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[2][0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[1][0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[0][0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_flag0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    align_flag_reg_1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    lane_byte_aligned : out STD_LOGIC_VECTOR ( 31 downto 0 );
    align_flag_reg_2 : in STD_LOGIC;
    clk_hs_byte : in STD_LOGIC;
    module_reset : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \lane_buf_reg[7][0]_0\ : in STD_LOGIC;
    \lane_buf_reg[7][8]_0\ : in STD_LOGIC;
    \lane_buf_reg[7][16]_0\ : in STD_LOGIC;
    \lane_valid__2\ : in STD_LOGIC;
    data_flag_reg : in STD_LOGIC;
    \head_clk_idx_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_flag_reg_0 : in STD_LOGIC;
    \head_word_reg[0]\ : in STD_LOGIC;
    \align_idx_reg[0][0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[0][0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lane_buf_reg[0][31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \align_idx_reg[1][0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[1][0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[2][0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[2][0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[3][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[3][0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__csi2_lanes_aligner\ : entity is "_csi2_lanes_aligner";
end \design_1_mipi_rx_to_video_0_0__csi2_lanes_aligner\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__csi2_lanes_aligner\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^align_flag_reg_0\ : STD_LOGIC;
  signal \align_idx[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \align_idx[0][2]_i_2_n_0\ : STD_LOGIC;
  signal \align_idx[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \align_idx[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \align_idx[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \align_idx[2][2]_i_2_n_0\ : STD_LOGIC;
  signal \align_idx[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \align_idx[3][2]_i_2_n_0\ : STD_LOGIC;
  signal \^align_idx_reg[0][0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \align_idx_reg[0]_0\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^align_idx_reg[1][0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \align_idx_reg[1]_9\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^align_idx_reg[2][0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \align_idx_reg[2]_10\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \align_idx_reg[3]_11\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \data_byte[24]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte[24]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte[25]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte[25]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte[26]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte[26]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte[27]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte[27]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte[28]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte[28]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte[29]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte[29]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte[30]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte[30]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte[31]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte[31]_i_4_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_10_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_11_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_2_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_3_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_4_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_5_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_6_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_7_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_8_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_9_n_0\ : STD_LOGIC;
  signal \head_word[0]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[0]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[10]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[10]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[11]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[11]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[12]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[12]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[13]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[13]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[14]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[14]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[15]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[15]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[16]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[16]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[17]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[17]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[18]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[18]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[19]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[19]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[1]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[1]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[20]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[20]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[21]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[21]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[22]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[22]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[23]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[23]_i_5_n_0\ : STD_LOGIC;
  signal \head_word[23]_i_7_n_0\ : STD_LOGIC;
  signal \head_word[23]_i_8_n_0\ : STD_LOGIC;
  signal \head_word[2]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[2]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[3]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[3]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[4]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[4]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[5]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[5]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[6]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[6]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[7]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[7]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[8]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[8]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[9]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[9]_i_4_n_0\ : STD_LOGIC;
  signal \lane_buf[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][10]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][11]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][12]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][13]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][14]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][15]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][16]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][17]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][18]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][19]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][20]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][21]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][22]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][23]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][24]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][25]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][26]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][27]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][28]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][29]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][30]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[1][9]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][10]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][11]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][12]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][13]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][14]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][15]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][16]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][17]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][18]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][19]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][20]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][21]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][22]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][23]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][24]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][25]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][26]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][27]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][28]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][29]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][30]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][5]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][6]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][8]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[2][9]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][10]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][11]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][12]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][13]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][14]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][15]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][16]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][17]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][18]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][19]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][20]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][21]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][22]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][23]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][24]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][25]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][26]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][27]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][28]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][29]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][30]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][4]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][5]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][6]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][8]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[3][9]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][10]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][11]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][12]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][13]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][14]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][15]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][16]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][17]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][18]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][19]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][20]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][21]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][22]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][23]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][24]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][25]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][26]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][27]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][28]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][29]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][2]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][30]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][31]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][3]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][4]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][5]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][6]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][8]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[4][9]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][10]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][11]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][12]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][13]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][14]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][15]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][16]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][17]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][18]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][19]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][1]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][20]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][21]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][22]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][23]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][24]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][25]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][26]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][27]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][28]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][29]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][2]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][30]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][31]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][3]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][4]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][5]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][6]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][8]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[5][9]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][0]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][10]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][11]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][12]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][13]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][14]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][15]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][16]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][17]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][18]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][19]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][1]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][20]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][21]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][22]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][23]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][24]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][25]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][26]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][27]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][28]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][29]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][2]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][30]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][31]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][3]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][4]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][5]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][6]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][7]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][8]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[6][9]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][0]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][10]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][11]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][12]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][13]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][14]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][15]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][16]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][17]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][18]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][19]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][1]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][20]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][21]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][22]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][23]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][24]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][25]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][26]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][27]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][28]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][29]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][2]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][30]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][31]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][3]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][4]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][5]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][6]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][8]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf[7][9]_i_1_n_0\ : STD_LOGIC;
  signal \lane_buf_reg[0]_1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \lane_buf_reg[1]_2\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \lane_buf_reg[2]_3\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \lane_buf_reg[3]_4\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \lane_buf_reg[4]_5\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \lane_buf_reg[5]_6\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \lane_buf_reg[6]_7\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \lane_buf_reg[7]_8\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^lane_byte_aligned\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^module_reset_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_idx[0][1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \align_idx[0][2]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \align_idx[1][1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \align_idx[1][2]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \align_idx[2][1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \align_idx[2][2]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \align_idx[3][1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \align_idx[3][2]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \head_clk_idx[0]_i_11\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \head_clk_idx[0]_i_9\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \head_word[23]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \head_word[23]_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \lane_buf[1][0]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \lane_buf[1][10]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \lane_buf[1][11]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \lane_buf[1][12]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \lane_buf[1][13]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \lane_buf[1][14]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \lane_buf[1][15]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \lane_buf[1][16]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \lane_buf[1][17]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \lane_buf[1][18]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \lane_buf[1][19]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \lane_buf[1][1]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \lane_buf[1][20]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \lane_buf[1][21]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \lane_buf[1][22]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \lane_buf[1][23]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \lane_buf[1][24]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \lane_buf[1][25]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \lane_buf[1][26]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \lane_buf[1][27]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \lane_buf[1][28]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \lane_buf[1][29]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \lane_buf[1][2]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \lane_buf[1][30]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \lane_buf[1][31]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \lane_buf[1][3]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \lane_buf[1][4]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \lane_buf[1][5]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \lane_buf[1][6]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \lane_buf[1][7]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \lane_buf[1][8]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \lane_buf[1][9]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \lane_buf[2][0]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \lane_buf[2][10]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \lane_buf[2][11]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \lane_buf[2][12]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \lane_buf[2][13]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \lane_buf[2][14]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \lane_buf[2][15]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \lane_buf[2][16]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \lane_buf[2][17]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \lane_buf[2][18]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \lane_buf[2][19]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \lane_buf[2][1]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \lane_buf[2][20]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \lane_buf[2][21]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \lane_buf[2][22]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \lane_buf[2][23]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \lane_buf[2][24]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \lane_buf[2][25]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \lane_buf[2][26]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \lane_buf[2][27]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \lane_buf[2][28]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \lane_buf[2][29]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \lane_buf[2][2]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \lane_buf[2][30]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \lane_buf[2][31]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \lane_buf[2][3]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \lane_buf[2][4]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \lane_buf[2][5]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \lane_buf[2][6]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \lane_buf[2][7]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \lane_buf[2][8]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \lane_buf[2][9]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \lane_buf[3][0]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \lane_buf[3][10]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \lane_buf[3][11]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \lane_buf[3][12]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \lane_buf[3][13]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \lane_buf[3][14]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \lane_buf[3][15]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \lane_buf[3][16]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \lane_buf[3][17]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \lane_buf[3][18]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \lane_buf[3][19]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \lane_buf[3][1]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \lane_buf[3][20]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \lane_buf[3][21]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \lane_buf[3][22]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \lane_buf[3][23]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \lane_buf[3][24]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \lane_buf[3][25]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \lane_buf[3][26]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \lane_buf[3][27]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \lane_buf[3][28]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \lane_buf[3][29]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \lane_buf[3][2]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \lane_buf[3][30]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \lane_buf[3][31]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \lane_buf[3][3]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \lane_buf[3][4]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \lane_buf[3][5]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \lane_buf[3][6]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \lane_buf[3][7]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \lane_buf[3][8]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \lane_buf[3][9]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \lane_buf[4][0]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \lane_buf[4][10]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \lane_buf[4][11]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \lane_buf[4][12]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \lane_buf[4][13]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \lane_buf[4][14]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \lane_buf[4][15]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \lane_buf[4][16]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \lane_buf[4][17]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \lane_buf[4][18]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \lane_buf[4][19]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \lane_buf[4][1]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \lane_buf[4][20]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \lane_buf[4][21]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \lane_buf[4][22]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \lane_buf[4][23]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \lane_buf[4][24]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \lane_buf[4][25]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \lane_buf[4][26]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \lane_buf[4][27]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \lane_buf[4][28]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \lane_buf[4][29]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \lane_buf[4][2]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \lane_buf[4][30]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \lane_buf[4][31]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \lane_buf[4][3]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \lane_buf[4][4]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \lane_buf[4][5]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \lane_buf[4][6]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \lane_buf[4][7]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \lane_buf[4][8]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \lane_buf[4][9]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \lane_buf[5][0]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \lane_buf[5][10]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \lane_buf[5][11]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \lane_buf[5][12]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \lane_buf[5][13]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \lane_buf[5][14]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \lane_buf[5][15]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \lane_buf[5][16]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \lane_buf[5][17]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \lane_buf[5][18]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \lane_buf[5][19]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \lane_buf[5][1]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \lane_buf[5][20]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \lane_buf[5][21]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \lane_buf[5][22]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \lane_buf[5][23]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \lane_buf[5][24]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \lane_buf[5][25]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \lane_buf[5][26]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \lane_buf[5][27]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \lane_buf[5][28]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \lane_buf[5][29]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \lane_buf[5][2]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \lane_buf[5][30]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \lane_buf[5][31]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \lane_buf[5][3]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \lane_buf[5][4]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \lane_buf[5][5]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \lane_buf[5][6]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \lane_buf[5][7]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \lane_buf[5][8]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \lane_buf[5][9]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \lane_buf[6][0]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \lane_buf[6][10]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \lane_buf[6][11]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \lane_buf[6][12]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \lane_buf[6][13]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \lane_buf[6][14]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \lane_buf[6][15]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \lane_buf[6][16]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \lane_buf[6][17]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \lane_buf[6][18]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \lane_buf[6][19]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \lane_buf[6][1]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \lane_buf[6][20]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \lane_buf[6][21]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \lane_buf[6][22]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \lane_buf[6][23]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \lane_buf[6][24]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \lane_buf[6][25]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \lane_buf[6][26]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \lane_buf[6][27]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \lane_buf[6][28]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \lane_buf[6][29]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \lane_buf[6][2]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \lane_buf[6][30]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \lane_buf[6][31]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \lane_buf[6][3]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \lane_buf[6][4]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \lane_buf[6][5]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \lane_buf[6][6]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \lane_buf[6][7]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \lane_buf[6][8]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \lane_buf[6][9]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \lane_buf[7][0]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \lane_buf[7][10]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \lane_buf[7][11]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \lane_buf[7][12]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \lane_buf[7][13]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \lane_buf[7][14]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \lane_buf[7][15]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \lane_buf[7][16]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \lane_buf[7][17]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \lane_buf[7][18]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \lane_buf[7][19]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \lane_buf[7][1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \lane_buf[7][20]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \lane_buf[7][21]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \lane_buf[7][22]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \lane_buf[7][23]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \lane_buf[7][24]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \lane_buf[7][25]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \lane_buf[7][26]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \lane_buf[7][27]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \lane_buf[7][28]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \lane_buf[7][29]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \lane_buf[7][2]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \lane_buf[7][30]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \lane_buf[7][31]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \lane_buf[7][3]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \lane_buf[7][4]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \lane_buf[7][5]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \lane_buf[7][6]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \lane_buf[7][7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \lane_buf[7][8]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \lane_buf[7][9]_i_1\ : label is "soft_lutpair69";
begin
  Q(0) <= \^q\(0);
  align_flag_reg_0 <= \^align_flag_reg_0\;
  \align_idx_reg[0][0]_0\(0) <= \^align_idx_reg[0][0]_0\(0);
  \align_idx_reg[1][0]_0\(0) <= \^align_idx_reg[1][0]_0\(0);
  \align_idx_reg[2][0]_0\(0) <= \^align_idx_reg[2][0]_0\(0);
  lane_byte_aligned(31 downto 0) <= \^lane_byte_aligned\(31 downto 0);
  module_reset_reg <= \^module_reset_reg\;
align_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => align_flag_reg_2,
      Q => \^align_flag_reg_0\
    );
\align_idx[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \lane_buf_reg[7][0]_0\,
      I1 => \^align_idx_reg[0][0]_0\(0),
      I2 => \align_idx_reg[0]_0\(1),
      O => \align_idx[0][1]_i_1_n_0\
    );
\align_idx[0][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \align_idx_reg[0]_0\(1),
      I1 => \^align_idx_reg[0][0]_0\(0),
      I2 => \lane_buf_reg[7][0]_0\,
      I3 => \align_idx_reg[0]_0\(2),
      O => \align_idx[0][2]_i_2_n_0\
    );
\align_idx[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \lane_buf_reg[7][8]_0\,
      I1 => \^align_idx_reg[1][0]_0\(0),
      I2 => \align_idx_reg[1]_9\(1),
      O => \align_idx[1][1]_i_1_n_0\
    );
\align_idx[1][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \align_idx_reg[1]_9\(1),
      I1 => \^align_idx_reg[1][0]_0\(0),
      I2 => \lane_buf_reg[7][8]_0\,
      I3 => \align_idx_reg[1]_9\(2),
      O => \align_idx[1][2]_i_2_n_0\
    );
\align_idx[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \lane_buf_reg[7][16]_0\,
      I1 => \^align_idx_reg[2][0]_0\(0),
      I2 => \align_idx_reg[2]_10\(1),
      O => \align_idx[2][1]_i_1_n_0\
    );
\align_idx[2][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \align_idx_reg[2]_10\(1),
      I1 => \^align_idx_reg[2][0]_0\(0),
      I2 => \lane_buf_reg[7][16]_0\,
      I3 => \align_idx_reg[2]_10\(2),
      O => \align_idx[2][2]_i_2_n_0\
    );
\align_idx[3][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \lane_valid__2\,
      I1 => \^q\(0),
      I2 => \align_idx_reg[3]_11\(1),
      O => \align_idx[3][1]_i_1_n_0\
    );
\align_idx[3][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \align_idx_reg[3]_11\(1),
      I1 => \^q\(0),
      I2 => \lane_valid__2\,
      I3 => \align_idx_reg[3]_11\(2),
      O => \align_idx[3][2]_i_2_n_0\
    );
\align_idx_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[0][0]_1\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx_reg[0][0]_2\(0),
      Q => \^align_idx_reg[0][0]_0\(0)
    );
\align_idx_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[0][0]_1\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx[0][1]_i_1_n_0\,
      Q => \align_idx_reg[0]_0\(1)
    );
\align_idx_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[0][0]_1\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx[0][2]_i_2_n_0\,
      Q => \align_idx_reg[0]_0\(2)
    );
\align_idx_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[1][0]_1\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx_reg[1][0]_2\(0),
      Q => \^align_idx_reg[1][0]_0\(0)
    );
\align_idx_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[1][0]_1\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx[1][1]_i_1_n_0\,
      Q => \align_idx_reg[1]_9\(1)
    );
\align_idx_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[1][0]_1\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx[1][2]_i_2_n_0\,
      Q => \align_idx_reg[1]_9\(2)
    );
\align_idx_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[2][0]_1\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx_reg[2][0]_2\(0),
      Q => \^align_idx_reg[2][0]_0\(0)
    );
\align_idx_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[2][0]_1\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx[2][1]_i_1_n_0\,
      Q => \align_idx_reg[2]_10\(1)
    );
\align_idx_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[2][0]_1\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx[2][2]_i_2_n_0\,
      Q => \align_idx_reg[2]_10\(2)
    );
\align_idx_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[3][0]_0\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx_reg[3][0]_1\(0),
      Q => \^q\(0)
    );
\align_idx_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[3][0]_0\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx[3][1]_i_1_n_0\,
      Q => \align_idx_reg[3]_11\(1)
    );
\align_idx_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[3][0]_0\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx[3][2]_i_2_n_0\,
      Q => \align_idx_reg[3]_11\(2)
    );
\data_byte[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(24),
      I1 => \lane_buf_reg[2]_3\(24),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[7]_8\(24),
      I5 => \lane_buf_reg[1]_2\(24),
      O => \data_byte[24]_i_3_n_0\
    );
\data_byte[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(24),
      I1 => \lane_buf_reg[6]_7\(24),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[3]_4\(24),
      I5 => \lane_buf_reg[5]_6\(24),
      O => \data_byte[24]_i_4_n_0\
    );
\data_byte[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(25),
      I1 => \lane_buf_reg[2]_3\(25),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[7]_8\(25),
      I5 => \lane_buf_reg[1]_2\(25),
      O => \data_byte[25]_i_3_n_0\
    );
\data_byte[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(25),
      I1 => \lane_buf_reg[6]_7\(25),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[3]_4\(25),
      I5 => \lane_buf_reg[5]_6\(25),
      O => \data_byte[25]_i_4_n_0\
    );
\data_byte[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(26),
      I1 => \lane_buf_reg[2]_3\(26),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[7]_8\(26),
      I5 => \lane_buf_reg[1]_2\(26),
      O => \data_byte[26]_i_3_n_0\
    );
\data_byte[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(26),
      I1 => \lane_buf_reg[6]_7\(26),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[3]_4\(26),
      I5 => \lane_buf_reg[5]_6\(26),
      O => \data_byte[26]_i_4_n_0\
    );
\data_byte[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(27),
      I1 => \lane_buf_reg[2]_3\(27),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[7]_8\(27),
      I5 => \lane_buf_reg[1]_2\(27),
      O => \data_byte[27]_i_3_n_0\
    );
\data_byte[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(27),
      I1 => \lane_buf_reg[6]_7\(27),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[3]_4\(27),
      I5 => \lane_buf_reg[5]_6\(27),
      O => \data_byte[27]_i_4_n_0\
    );
\data_byte[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(28),
      I1 => \lane_buf_reg[2]_3\(28),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[7]_8\(28),
      I5 => \lane_buf_reg[1]_2\(28),
      O => \data_byte[28]_i_3_n_0\
    );
\data_byte[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(28),
      I1 => \lane_buf_reg[6]_7\(28),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[3]_4\(28),
      I5 => \lane_buf_reg[5]_6\(28),
      O => \data_byte[28]_i_4_n_0\
    );
\data_byte[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(29),
      I1 => \lane_buf_reg[2]_3\(29),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[7]_8\(29),
      I5 => \lane_buf_reg[1]_2\(29),
      O => \data_byte[29]_i_3_n_0\
    );
\data_byte[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(29),
      I1 => \lane_buf_reg[6]_7\(29),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[3]_4\(29),
      I5 => \lane_buf_reg[5]_6\(29),
      O => \data_byte[29]_i_4_n_0\
    );
\data_byte[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(30),
      I1 => \lane_buf_reg[2]_3\(30),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[7]_8\(30),
      I5 => \lane_buf_reg[1]_2\(30),
      O => \data_byte[30]_i_3_n_0\
    );
\data_byte[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(30),
      I1 => \lane_buf_reg[6]_7\(30),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[3]_4\(30),
      I5 => \lane_buf_reg[5]_6\(30),
      O => \data_byte[30]_i_4_n_0\
    );
\data_byte[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(31),
      I1 => \lane_buf_reg[2]_3\(31),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[7]_8\(31),
      I5 => \lane_buf_reg[1]_2\(31),
      O => \data_byte[31]_i_3_n_0\
    );
\data_byte[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(31),
      I1 => \lane_buf_reg[6]_7\(31),
      I2 => \^q\(0),
      I3 => \align_idx_reg[3]_11\(1),
      I4 => \lane_buf_reg[3]_4\(31),
      I5 => \lane_buf_reg[5]_6\(31),
      O => \data_byte[31]_i_4_n_0\
    );
\data_byte_reg[24]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_byte[24]_i_3_n_0\,
      I1 => \data_byte[24]_i_4_n_0\,
      O => \^lane_byte_aligned\(24),
      S => \align_idx_reg[3]_11\(2)
    );
\data_byte_reg[25]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_byte[25]_i_3_n_0\,
      I1 => \data_byte[25]_i_4_n_0\,
      O => \^lane_byte_aligned\(25),
      S => \align_idx_reg[3]_11\(2)
    );
\data_byte_reg[26]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_byte[26]_i_3_n_0\,
      I1 => \data_byte[26]_i_4_n_0\,
      O => \^lane_byte_aligned\(26),
      S => \align_idx_reg[3]_11\(2)
    );
\data_byte_reg[27]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_byte[27]_i_3_n_0\,
      I1 => \data_byte[27]_i_4_n_0\,
      O => \^lane_byte_aligned\(27),
      S => \align_idx_reg[3]_11\(2)
    );
\data_byte_reg[28]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_byte[28]_i_3_n_0\,
      I1 => \data_byte[28]_i_4_n_0\,
      O => \^lane_byte_aligned\(28),
      S => \align_idx_reg[3]_11\(2)
    );
\data_byte_reg[29]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_byte[29]_i_3_n_0\,
      I1 => \data_byte[29]_i_4_n_0\,
      O => \^lane_byte_aligned\(29),
      S => \align_idx_reg[3]_11\(2)
    );
\data_byte_reg[30]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_byte[30]_i_3_n_0\,
      I1 => \data_byte[30]_i_4_n_0\,
      O => \^lane_byte_aligned\(30),
      S => \align_idx_reg[3]_11\(2)
    );
\data_byte_reg[31]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_byte[31]_i_3_n_0\,
      I1 => \data_byte[31]_i_4_n_0\,
      O => \^lane_byte_aligned\(31),
      S => \align_idx_reg[3]_11\(2)
    );
data_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F00000FF200000"
    )
        port map (
      I0 => \head_clk_idx[0]_i_3_n_0\,
      I1 => \head_clk_idx[0]_i_2_n_0\,
      I2 => data_flag_reg,
      I3 => \head_clk_idx_reg[0]\(1),
      I4 => \^align_flag_reg_0\,
      I5 => data_flag_reg_0,
      O => data_flag0
    );
\head_clk_idx[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080A08080808"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_clk_idx_reg[0]\(2),
      I2 => \head_clk_idx_reg[0]\(0),
      I3 => \head_clk_idx_reg[0]\(1),
      I4 => \head_clk_idx[0]_i_2_n_0\,
      I5 => \head_clk_idx[0]_i_3_n_0\,
      O => D(0)
    );
\head_clk_idx[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^lane_byte_aligned\(12),
      I1 => \^lane_byte_aligned\(13),
      I2 => \^lane_byte_aligned\(19),
      I3 => \^lane_byte_aligned\(11),
      O => \head_clk_idx[0]_i_10_n_0\
    );
\head_clk_idx[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^lane_byte_aligned\(4),
      I1 => \^lane_byte_aligned\(5),
      I2 => \^lane_byte_aligned\(15),
      I3 => \^lane_byte_aligned\(31),
      O => \head_clk_idx[0]_i_11_n_0\
    );
\head_clk_idx[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \head_clk_idx[0]_i_4_n_0\,
      I1 => \head_clk_idx[0]_i_5_n_0\,
      I2 => \head_clk_idx[0]_i_6_n_0\,
      I3 => \head_clk_idx[0]_i_7_n_0\,
      O => \head_clk_idx[0]_i_2_n_0\
    );
\head_clk_idx[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \head_clk_idx[0]_i_8_n_0\,
      I1 => \head_clk_idx[0]_i_9_n_0\,
      I2 => \head_clk_idx[0]_i_10_n_0\,
      I3 => \head_clk_idx[0]_i_11_n_0\,
      O => \head_clk_idx[0]_i_3_n_0\
    );
\head_clk_idx[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^lane_byte_aligned\(9),
      I1 => \^lane_byte_aligned\(8),
      I2 => \^lane_byte_aligned\(22),
      I3 => \^lane_byte_aligned\(6),
      O => \head_clk_idx[0]_i_4_n_0\
    );
\head_clk_idx[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^lane_byte_aligned\(16),
      I1 => \^lane_byte_aligned\(17),
      I2 => \^lane_byte_aligned\(18),
      I3 => \^lane_byte_aligned\(10),
      O => \head_clk_idx[0]_i_5_n_0\
    );
\head_clk_idx[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^lane_byte_aligned\(1),
      I1 => \^lane_byte_aligned\(0),
      I2 => \^lane_byte_aligned\(14),
      I3 => \^lane_byte_aligned\(30),
      O => \head_clk_idx[0]_i_6_n_0\
    );
\head_clk_idx[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^lane_byte_aligned\(24),
      I1 => \^lane_byte_aligned\(25),
      I2 => \^lane_byte_aligned\(26),
      I3 => \^lane_byte_aligned\(2),
      O => \head_clk_idx[0]_i_7_n_0\
    );
\head_clk_idx[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^lane_byte_aligned\(21),
      I1 => \^lane_byte_aligned\(20),
      I2 => \^lane_byte_aligned\(23),
      I3 => \^lane_byte_aligned\(7),
      O => \head_clk_idx[0]_i_8_n_0\
    );
\head_clk_idx[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^lane_byte_aligned\(29),
      I1 => \^lane_byte_aligned\(28),
      I2 => \^lane_byte_aligned\(27),
      I3 => \^lane_byte_aligned\(3),
      O => \head_clk_idx[0]_i_9_n_0\
    );
\head_word[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(0),
      O => align_flag_reg_1(0)
    );
\head_word[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(0),
      I1 => \lane_buf_reg[2]_3\(0),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[7]_8\(0),
      I5 => \lane_buf_reg[1]_2\(0),
      O => \head_word[0]_i_3_n_0\
    );
\head_word[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(0),
      I1 => \lane_buf_reg[6]_7\(0),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[3]_4\(0),
      I5 => \lane_buf_reg[5]_6\(0),
      O => \head_word[0]_i_4_n_0\
    );
\head_word[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(10),
      O => align_flag_reg_1(10)
    );
\head_word[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(10),
      I1 => \lane_buf_reg[2]_3\(10),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[7]_8\(10),
      I5 => \lane_buf_reg[1]_2\(10),
      O => \head_word[10]_i_3_n_0\
    );
\head_word[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(10),
      I1 => \lane_buf_reg[6]_7\(10),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[3]_4\(10),
      I5 => \lane_buf_reg[5]_6\(10),
      O => \head_word[10]_i_4_n_0\
    );
\head_word[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(11),
      O => align_flag_reg_1(11)
    );
\head_word[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(11),
      I1 => \lane_buf_reg[2]_3\(11),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[7]_8\(11),
      I5 => \lane_buf_reg[1]_2\(11),
      O => \head_word[11]_i_3_n_0\
    );
\head_word[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(11),
      I1 => \lane_buf_reg[6]_7\(11),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[3]_4\(11),
      I5 => \lane_buf_reg[5]_6\(11),
      O => \head_word[11]_i_4_n_0\
    );
\head_word[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(12),
      O => align_flag_reg_1(12)
    );
\head_word[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(12),
      I1 => \lane_buf_reg[2]_3\(12),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[7]_8\(12),
      I5 => \lane_buf_reg[1]_2\(12),
      O => \head_word[12]_i_3_n_0\
    );
\head_word[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(12),
      I1 => \lane_buf_reg[6]_7\(12),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[3]_4\(12),
      I5 => \lane_buf_reg[5]_6\(12),
      O => \head_word[12]_i_4_n_0\
    );
\head_word[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(13),
      O => align_flag_reg_1(13)
    );
\head_word[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(13),
      I1 => \lane_buf_reg[2]_3\(13),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[7]_8\(13),
      I5 => \lane_buf_reg[1]_2\(13),
      O => \head_word[13]_i_3_n_0\
    );
\head_word[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(13),
      I1 => \lane_buf_reg[6]_7\(13),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[3]_4\(13),
      I5 => \lane_buf_reg[5]_6\(13),
      O => \head_word[13]_i_4_n_0\
    );
\head_word[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(14),
      O => align_flag_reg_1(14)
    );
\head_word[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(14),
      I1 => \lane_buf_reg[2]_3\(14),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[7]_8\(14),
      I5 => \lane_buf_reg[1]_2\(14),
      O => \head_word[14]_i_3_n_0\
    );
\head_word[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(14),
      I1 => \lane_buf_reg[6]_7\(14),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[3]_4\(14),
      I5 => \lane_buf_reg[5]_6\(14),
      O => \head_word[14]_i_4_n_0\
    );
\head_word[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(15),
      O => align_flag_reg_1(15)
    );
\head_word[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(15),
      I1 => \lane_buf_reg[2]_3\(15),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[7]_8\(15),
      I5 => \lane_buf_reg[1]_2\(15),
      O => \head_word[15]_i_3_n_0\
    );
\head_word[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(15),
      I1 => \lane_buf_reg[6]_7\(15),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[3]_4\(15),
      I5 => \lane_buf_reg[5]_6\(15),
      O => \head_word[15]_i_4_n_0\
    );
\head_word[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(16),
      O => align_flag_reg_1(16)
    );
\head_word[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(16),
      I1 => \lane_buf_reg[2]_3\(16),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[7]_8\(16),
      I5 => \lane_buf_reg[1]_2\(16),
      O => \head_word[16]_i_3_n_0\
    );
\head_word[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(16),
      I1 => \lane_buf_reg[6]_7\(16),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[3]_4\(16),
      I5 => \lane_buf_reg[5]_6\(16),
      O => \head_word[16]_i_4_n_0\
    );
\head_word[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(17),
      O => align_flag_reg_1(17)
    );
\head_word[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(17),
      I1 => \lane_buf_reg[2]_3\(17),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[7]_8\(17),
      I5 => \lane_buf_reg[1]_2\(17),
      O => \head_word[17]_i_3_n_0\
    );
\head_word[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(17),
      I1 => \lane_buf_reg[6]_7\(17),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[3]_4\(17),
      I5 => \lane_buf_reg[5]_6\(17),
      O => \head_word[17]_i_4_n_0\
    );
\head_word[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(18),
      O => align_flag_reg_1(18)
    );
\head_word[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(18),
      I1 => \lane_buf_reg[2]_3\(18),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[7]_8\(18),
      I5 => \lane_buf_reg[1]_2\(18),
      O => \head_word[18]_i_3_n_0\
    );
\head_word[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(18),
      I1 => \lane_buf_reg[6]_7\(18),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[3]_4\(18),
      I5 => \lane_buf_reg[5]_6\(18),
      O => \head_word[18]_i_4_n_0\
    );
\head_word[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(19),
      O => align_flag_reg_1(19)
    );
\head_word[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(19),
      I1 => \lane_buf_reg[2]_3\(19),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[7]_8\(19),
      I5 => \lane_buf_reg[1]_2\(19),
      O => \head_word[19]_i_3_n_0\
    );
\head_word[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(19),
      I1 => \lane_buf_reg[6]_7\(19),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[3]_4\(19),
      I5 => \lane_buf_reg[5]_6\(19),
      O => \head_word[19]_i_4_n_0\
    );
\head_word[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(1),
      O => align_flag_reg_1(1)
    );
\head_word[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(1),
      I1 => \lane_buf_reg[2]_3\(1),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[7]_8\(1),
      I5 => \lane_buf_reg[1]_2\(1),
      O => \head_word[1]_i_3_n_0\
    );
\head_word[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(1),
      I1 => \lane_buf_reg[6]_7\(1),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[3]_4\(1),
      I5 => \lane_buf_reg[5]_6\(1),
      O => \head_word[1]_i_4_n_0\
    );
\head_word[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(20),
      O => align_flag_reg_1(20)
    );
\head_word[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(20),
      I1 => \lane_buf_reg[2]_3\(20),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[7]_8\(20),
      I5 => \lane_buf_reg[1]_2\(20),
      O => \head_word[20]_i_3_n_0\
    );
\head_word[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(20),
      I1 => \lane_buf_reg[6]_7\(20),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[3]_4\(20),
      I5 => \lane_buf_reg[5]_6\(20),
      O => \head_word[20]_i_4_n_0\
    );
\head_word[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(21),
      O => align_flag_reg_1(21)
    );
\head_word[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(21),
      I1 => \lane_buf_reg[2]_3\(21),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[7]_8\(21),
      I5 => \lane_buf_reg[1]_2\(21),
      O => \head_word[21]_i_3_n_0\
    );
\head_word[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(21),
      I1 => \lane_buf_reg[6]_7\(21),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[3]_4\(21),
      I5 => \lane_buf_reg[5]_6\(21),
      O => \head_word[21]_i_4_n_0\
    );
\head_word[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(22),
      O => align_flag_reg_1(22)
    );
\head_word[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(22),
      I1 => \lane_buf_reg[2]_3\(22),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[7]_8\(22),
      I5 => \lane_buf_reg[1]_2\(22),
      O => \head_word[22]_i_3_n_0\
    );
\head_word[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(22),
      I1 => \lane_buf_reg[6]_7\(22),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[3]_4\(22),
      I5 => \lane_buf_reg[5]_6\(22),
      O => \head_word[22]_i_4_n_0\
    );
\head_word[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(23),
      O => align_flag_reg_1(23)
    );
\head_word[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^lane_byte_aligned\(3),
      I1 => \^lane_byte_aligned\(27),
      I2 => \^lane_byte_aligned\(28),
      I3 => \^lane_byte_aligned\(29),
      I4 => \head_clk_idx[0]_i_8_n_0\,
      O => \head_word[23]_i_4_n_0\
    );
\head_word[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^lane_byte_aligned\(31),
      I1 => \^lane_byte_aligned\(15),
      I2 => \^lane_byte_aligned\(5),
      I3 => \^lane_byte_aligned\(4),
      I4 => \head_clk_idx[0]_i_10_n_0\,
      O => \head_word[23]_i_5_n_0\
    );
\head_word[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(23),
      I1 => \lane_buf_reg[2]_3\(23),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[7]_8\(23),
      I5 => \lane_buf_reg[1]_2\(23),
      O => \head_word[23]_i_7_n_0\
    );
\head_word[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(23),
      I1 => \lane_buf_reg[6]_7\(23),
      I2 => \^align_idx_reg[2][0]_0\(0),
      I3 => \align_idx_reg[2]_10\(1),
      I4 => \lane_buf_reg[3]_4\(23),
      I5 => \lane_buf_reg[5]_6\(23),
      O => \head_word[23]_i_8_n_0\
    );
\head_word[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(2),
      O => align_flag_reg_1(2)
    );
\head_word[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(2),
      I1 => \lane_buf_reg[2]_3\(2),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[7]_8\(2),
      I5 => \lane_buf_reg[1]_2\(2),
      O => \head_word[2]_i_3_n_0\
    );
\head_word[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(2),
      I1 => \lane_buf_reg[6]_7\(2),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[3]_4\(2),
      I5 => \lane_buf_reg[5]_6\(2),
      O => \head_word[2]_i_4_n_0\
    );
\head_word[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(3),
      O => align_flag_reg_1(3)
    );
\head_word[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(3),
      I1 => \lane_buf_reg[2]_3\(3),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[7]_8\(3),
      I5 => \lane_buf_reg[1]_2\(3),
      O => \head_word[3]_i_3_n_0\
    );
\head_word[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(3),
      I1 => \lane_buf_reg[6]_7\(3),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[3]_4\(3),
      I5 => \lane_buf_reg[5]_6\(3),
      O => \head_word[3]_i_4_n_0\
    );
\head_word[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(4),
      O => align_flag_reg_1(4)
    );
\head_word[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(4),
      I1 => \lane_buf_reg[2]_3\(4),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[7]_8\(4),
      I5 => \lane_buf_reg[1]_2\(4),
      O => \head_word[4]_i_3_n_0\
    );
\head_word[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(4),
      I1 => \lane_buf_reg[6]_7\(4),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[3]_4\(4),
      I5 => \lane_buf_reg[5]_6\(4),
      O => \head_word[4]_i_4_n_0\
    );
\head_word[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(5),
      O => align_flag_reg_1(5)
    );
\head_word[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(5),
      I1 => \lane_buf_reg[2]_3\(5),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[7]_8\(5),
      I5 => \lane_buf_reg[1]_2\(5),
      O => \head_word[5]_i_3_n_0\
    );
\head_word[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(5),
      I1 => \lane_buf_reg[6]_7\(5),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[3]_4\(5),
      I5 => \lane_buf_reg[5]_6\(5),
      O => \head_word[5]_i_4_n_0\
    );
\head_word[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(6),
      O => align_flag_reg_1(6)
    );
\head_word[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(6),
      I1 => \lane_buf_reg[2]_3\(6),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[7]_8\(6),
      I5 => \lane_buf_reg[1]_2\(6),
      O => \head_word[6]_i_3_n_0\
    );
\head_word[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(6),
      I1 => \lane_buf_reg[6]_7\(6),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[3]_4\(6),
      I5 => \lane_buf_reg[5]_6\(6),
      O => \head_word[6]_i_4_n_0\
    );
\head_word[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(7),
      O => align_flag_reg_1(7)
    );
\head_word[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(7),
      I1 => \lane_buf_reg[2]_3\(7),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[7]_8\(7),
      I5 => \lane_buf_reg[1]_2\(7),
      O => \head_word[7]_i_3_n_0\
    );
\head_word[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(7),
      I1 => \lane_buf_reg[6]_7\(7),
      I2 => \^align_idx_reg[0][0]_0\(0),
      I3 => \align_idx_reg[0]_0\(1),
      I4 => \lane_buf_reg[3]_4\(7),
      I5 => \lane_buf_reg[5]_6\(7),
      O => \head_word[7]_i_4_n_0\
    );
\head_word[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(8),
      O => align_flag_reg_1(8)
    );
\head_word[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(8),
      I1 => \lane_buf_reg[2]_3\(8),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[7]_8\(8),
      I5 => \lane_buf_reg[1]_2\(8),
      O => \head_word[8]_i_3_n_0\
    );
\head_word[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(8),
      I1 => \lane_buf_reg[6]_7\(8),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[3]_4\(8),
      I5 => \lane_buf_reg[5]_6\(8),
      O => \head_word[8]_i_4_n_0\
    );
\head_word[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => \head_word_reg[0]\,
      I2 => \head_clk_idx[0]_i_2_n_0\,
      I3 => \head_word[23]_i_4_n_0\,
      I4 => \head_word[23]_i_5_n_0\,
      I5 => \^lane_byte_aligned\(9),
      O => align_flag_reg_1(9)
    );
\head_word[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(9),
      I1 => \lane_buf_reg[2]_3\(9),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[7]_8\(9),
      I5 => \lane_buf_reg[1]_2\(9),
      O => \head_word[9]_i_3_n_0\
    );
\head_word[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(9),
      I1 => \lane_buf_reg[6]_7\(9),
      I2 => \^align_idx_reg[1][0]_0\(0),
      I3 => \align_idx_reg[1]_9\(1),
      I4 => \lane_buf_reg[3]_4\(9),
      I5 => \lane_buf_reg[5]_6\(9),
      O => \head_word[9]_i_4_n_0\
    );
\head_word_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[0]_i_3_n_0\,
      I1 => \head_word[0]_i_4_n_0\,
      O => \^lane_byte_aligned\(0),
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[10]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[10]_i_3_n_0\,
      I1 => \head_word[10]_i_4_n_0\,
      O => \^lane_byte_aligned\(10),
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[11]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[11]_i_3_n_0\,
      I1 => \head_word[11]_i_4_n_0\,
      O => \^lane_byte_aligned\(11),
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[12]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[12]_i_3_n_0\,
      I1 => \head_word[12]_i_4_n_0\,
      O => \^lane_byte_aligned\(12),
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[13]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[13]_i_3_n_0\,
      I1 => \head_word[13]_i_4_n_0\,
      O => \^lane_byte_aligned\(13),
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[14]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[14]_i_3_n_0\,
      I1 => \head_word[14]_i_4_n_0\,
      O => \^lane_byte_aligned\(14),
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[15]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[15]_i_3_n_0\,
      I1 => \head_word[15]_i_4_n_0\,
      O => \^lane_byte_aligned\(15),
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[16]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[16]_i_3_n_0\,
      I1 => \head_word[16]_i_4_n_0\,
      O => \^lane_byte_aligned\(16),
      S => \align_idx_reg[2]_10\(2)
    );
\head_word_reg[17]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[17]_i_3_n_0\,
      I1 => \head_word[17]_i_4_n_0\,
      O => \^lane_byte_aligned\(17),
      S => \align_idx_reg[2]_10\(2)
    );
\head_word_reg[18]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[18]_i_3_n_0\,
      I1 => \head_word[18]_i_4_n_0\,
      O => \^lane_byte_aligned\(18),
      S => \align_idx_reg[2]_10\(2)
    );
\head_word_reg[19]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[19]_i_3_n_0\,
      I1 => \head_word[19]_i_4_n_0\,
      O => \^lane_byte_aligned\(19),
      S => \align_idx_reg[2]_10\(2)
    );
\head_word_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[1]_i_3_n_0\,
      I1 => \head_word[1]_i_4_n_0\,
      O => \^lane_byte_aligned\(1),
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[20]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[20]_i_3_n_0\,
      I1 => \head_word[20]_i_4_n_0\,
      O => \^lane_byte_aligned\(20),
      S => \align_idx_reg[2]_10\(2)
    );
\head_word_reg[21]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[21]_i_3_n_0\,
      I1 => \head_word[21]_i_4_n_0\,
      O => \^lane_byte_aligned\(21),
      S => \align_idx_reg[2]_10\(2)
    );
\head_word_reg[22]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[22]_i_3_n_0\,
      I1 => \head_word[22]_i_4_n_0\,
      O => \^lane_byte_aligned\(22),
      S => \align_idx_reg[2]_10\(2)
    );
\head_word_reg[23]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[23]_i_7_n_0\,
      I1 => \head_word[23]_i_8_n_0\,
      O => \^lane_byte_aligned\(23),
      S => \align_idx_reg[2]_10\(2)
    );
\head_word_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[2]_i_3_n_0\,
      I1 => \head_word[2]_i_4_n_0\,
      O => \^lane_byte_aligned\(2),
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[3]_i_3_n_0\,
      I1 => \head_word[3]_i_4_n_0\,
      O => \^lane_byte_aligned\(3),
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[4]_i_3_n_0\,
      I1 => \head_word[4]_i_4_n_0\,
      O => \^lane_byte_aligned\(4),
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[5]_i_3_n_0\,
      I1 => \head_word[5]_i_4_n_0\,
      O => \^lane_byte_aligned\(5),
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[6]_i_3_n_0\,
      I1 => \head_word[6]_i_4_n_0\,
      O => \^lane_byte_aligned\(6),
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[7]_i_3_n_0\,
      I1 => \head_word[7]_i_4_n_0\,
      O => \^lane_byte_aligned\(7),
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[8]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[8]_i_3_n_0\,
      I1 => \head_word[8]_i_4_n_0\,
      O => \^lane_byte_aligned\(8),
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[9]_i_3_n_0\,
      I1 => \head_word[9]_i_4_n_0\,
      O => \^lane_byte_aligned\(9),
      S => \align_idx_reg[1]_9\(2)
    );
\lane_buf[1][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(0),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[1][0]_i_1_n_0\
    );
\lane_buf[1][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(10),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[1][10]_i_1_n_0\
    );
\lane_buf[1][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(11),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[1][11]_i_1_n_0\
    );
\lane_buf[1][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(12),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[1][12]_i_1_n_0\
    );
\lane_buf[1][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(13),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[1][13]_i_1_n_0\
    );
\lane_buf[1][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(14),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[1][14]_i_1_n_0\
    );
\lane_buf[1][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(15),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[1][15]_i_1_n_0\
    );
\lane_buf[1][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(16),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[1][16]_i_1_n_0\
    );
\lane_buf[1][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(17),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[1][17]_i_1_n_0\
    );
\lane_buf[1][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(18),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[1][18]_i_1_n_0\
    );
\lane_buf[1][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(19),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[1][19]_i_1_n_0\
    );
\lane_buf[1][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(1),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[1][1]_i_1_n_0\
    );
\lane_buf[1][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(20),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[1][20]_i_1_n_0\
    );
\lane_buf[1][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(21),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[1][21]_i_1_n_0\
    );
\lane_buf[1][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(22),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[1][22]_i_1_n_0\
    );
\lane_buf[1][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(23),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[1][23]_i_1_n_0\
    );
\lane_buf[1][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(24),
      I1 => \lane_valid__2\,
      O => \lane_buf[1][24]_i_1_n_0\
    );
\lane_buf[1][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(25),
      I1 => \lane_valid__2\,
      O => \lane_buf[1][25]_i_1_n_0\
    );
\lane_buf[1][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(26),
      I1 => \lane_valid__2\,
      O => \lane_buf[1][26]_i_1_n_0\
    );
\lane_buf[1][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(27),
      I1 => \lane_valid__2\,
      O => \lane_buf[1][27]_i_1_n_0\
    );
\lane_buf[1][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(28),
      I1 => \lane_valid__2\,
      O => \lane_buf[1][28]_i_1_n_0\
    );
\lane_buf[1][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(29),
      I1 => \lane_valid__2\,
      O => \lane_buf[1][29]_i_1_n_0\
    );
\lane_buf[1][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(2),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[1][2]_i_1_n_0\
    );
\lane_buf[1][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(30),
      I1 => \lane_valid__2\,
      O => \lane_buf[1][30]_i_1_n_0\
    );
\lane_buf[1][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(31),
      I1 => \lane_valid__2\,
      O => \lane_buf[1][31]_i_1_n_0\
    );
\lane_buf[1][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(3),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[1][3]_i_1_n_0\
    );
\lane_buf[1][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(4),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[1][4]_i_1_n_0\
    );
\lane_buf[1][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(5),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[1][5]_i_1_n_0\
    );
\lane_buf[1][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(6),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[1][6]_i_1_n_0\
    );
\lane_buf[1][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(7),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[1][7]_i_1_n_0\
    );
\lane_buf[1][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(8),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[1][8]_i_1_n_0\
    );
\lane_buf[1][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[0]_1\(9),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[1][9]_i_1_n_0\
    );
\lane_buf[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(0),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[2][0]_i_1_n_0\
    );
\lane_buf[2][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(10),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[2][10]_i_1_n_0\
    );
\lane_buf[2][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(11),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[2][11]_i_1_n_0\
    );
\lane_buf[2][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(12),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[2][12]_i_1_n_0\
    );
\lane_buf[2][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(13),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[2][13]_i_1_n_0\
    );
\lane_buf[2][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(14),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[2][14]_i_1_n_0\
    );
\lane_buf[2][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(15),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[2][15]_i_1_n_0\
    );
\lane_buf[2][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(16),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[2][16]_i_1_n_0\
    );
\lane_buf[2][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(17),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[2][17]_i_1_n_0\
    );
\lane_buf[2][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(18),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[2][18]_i_1_n_0\
    );
\lane_buf[2][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(19),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[2][19]_i_1_n_0\
    );
\lane_buf[2][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(1),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[2][1]_i_1_n_0\
    );
\lane_buf[2][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(20),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[2][20]_i_1_n_0\
    );
\lane_buf[2][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(21),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[2][21]_i_1_n_0\
    );
\lane_buf[2][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(22),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[2][22]_i_1_n_0\
    );
\lane_buf[2][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(23),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[2][23]_i_1_n_0\
    );
\lane_buf[2][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(24),
      I1 => \lane_valid__2\,
      O => \lane_buf[2][24]_i_1_n_0\
    );
\lane_buf[2][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(25),
      I1 => \lane_valid__2\,
      O => \lane_buf[2][25]_i_1_n_0\
    );
\lane_buf[2][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(26),
      I1 => \lane_valid__2\,
      O => \lane_buf[2][26]_i_1_n_0\
    );
\lane_buf[2][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(27),
      I1 => \lane_valid__2\,
      O => \lane_buf[2][27]_i_1_n_0\
    );
\lane_buf[2][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(28),
      I1 => \lane_valid__2\,
      O => \lane_buf[2][28]_i_1_n_0\
    );
\lane_buf[2][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(29),
      I1 => \lane_valid__2\,
      O => \lane_buf[2][29]_i_1_n_0\
    );
\lane_buf[2][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(2),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[2][2]_i_1_n_0\
    );
\lane_buf[2][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(30),
      I1 => \lane_valid__2\,
      O => \lane_buf[2][30]_i_1_n_0\
    );
\lane_buf[2][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(31),
      I1 => \lane_valid__2\,
      O => \lane_buf[2][31]_i_1_n_0\
    );
\lane_buf[2][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(3),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[2][3]_i_1_n_0\
    );
\lane_buf[2][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(4),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[2][4]_i_1_n_0\
    );
\lane_buf[2][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(5),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[2][5]_i_1_n_0\
    );
\lane_buf[2][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(6),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[2][6]_i_1_n_0\
    );
\lane_buf[2][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(7),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[2][7]_i_1_n_0\
    );
\lane_buf[2][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(8),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[2][8]_i_1_n_0\
    );
\lane_buf[2][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[1]_2\(9),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[2][9]_i_1_n_0\
    );
\lane_buf[3][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(0),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[3][0]_i_1_n_0\
    );
\lane_buf[3][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(10),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[3][10]_i_1_n_0\
    );
\lane_buf[3][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(11),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[3][11]_i_1_n_0\
    );
\lane_buf[3][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(12),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[3][12]_i_1_n_0\
    );
\lane_buf[3][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(13),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[3][13]_i_1_n_0\
    );
\lane_buf[3][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(14),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[3][14]_i_1_n_0\
    );
\lane_buf[3][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(15),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[3][15]_i_1_n_0\
    );
\lane_buf[3][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(16),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[3][16]_i_1_n_0\
    );
\lane_buf[3][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(17),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[3][17]_i_1_n_0\
    );
\lane_buf[3][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(18),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[3][18]_i_1_n_0\
    );
\lane_buf[3][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(19),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[3][19]_i_1_n_0\
    );
\lane_buf[3][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(1),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[3][1]_i_1_n_0\
    );
\lane_buf[3][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(20),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[3][20]_i_1_n_0\
    );
\lane_buf[3][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(21),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[3][21]_i_1_n_0\
    );
\lane_buf[3][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(22),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[3][22]_i_1_n_0\
    );
\lane_buf[3][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(23),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[3][23]_i_1_n_0\
    );
\lane_buf[3][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(24),
      I1 => \lane_valid__2\,
      O => \lane_buf[3][24]_i_1_n_0\
    );
\lane_buf[3][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(25),
      I1 => \lane_valid__2\,
      O => \lane_buf[3][25]_i_1_n_0\
    );
\lane_buf[3][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(26),
      I1 => \lane_valid__2\,
      O => \lane_buf[3][26]_i_1_n_0\
    );
\lane_buf[3][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(27),
      I1 => \lane_valid__2\,
      O => \lane_buf[3][27]_i_1_n_0\
    );
\lane_buf[3][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(28),
      I1 => \lane_valid__2\,
      O => \lane_buf[3][28]_i_1_n_0\
    );
\lane_buf[3][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(29),
      I1 => \lane_valid__2\,
      O => \lane_buf[3][29]_i_1_n_0\
    );
\lane_buf[3][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(2),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[3][2]_i_1_n_0\
    );
\lane_buf[3][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(30),
      I1 => \lane_valid__2\,
      O => \lane_buf[3][30]_i_1_n_0\
    );
\lane_buf[3][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(31),
      I1 => \lane_valid__2\,
      O => \lane_buf[3][31]_i_1_n_0\
    );
\lane_buf[3][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(3),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[3][3]_i_1_n_0\
    );
\lane_buf[3][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(4),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[3][4]_i_1_n_0\
    );
\lane_buf[3][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(5),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[3][5]_i_1_n_0\
    );
\lane_buf[3][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(6),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[3][6]_i_1_n_0\
    );
\lane_buf[3][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(7),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[3][7]_i_1_n_0\
    );
\lane_buf[3][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(8),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[3][8]_i_1_n_0\
    );
\lane_buf[3][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[2]_3\(9),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[3][9]_i_1_n_0\
    );
\lane_buf[4][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(0),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[4][0]_i_1_n_0\
    );
\lane_buf[4][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(10),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[4][10]_i_1_n_0\
    );
\lane_buf[4][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(11),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[4][11]_i_1_n_0\
    );
\lane_buf[4][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(12),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[4][12]_i_1_n_0\
    );
\lane_buf[4][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(13),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[4][13]_i_1_n_0\
    );
\lane_buf[4][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(14),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[4][14]_i_1_n_0\
    );
\lane_buf[4][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(15),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[4][15]_i_1_n_0\
    );
\lane_buf[4][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(16),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[4][16]_i_1_n_0\
    );
\lane_buf[4][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(17),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[4][17]_i_1_n_0\
    );
\lane_buf[4][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(18),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[4][18]_i_1_n_0\
    );
\lane_buf[4][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(19),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[4][19]_i_1_n_0\
    );
\lane_buf[4][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(1),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[4][1]_i_1_n_0\
    );
\lane_buf[4][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(20),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[4][20]_i_1_n_0\
    );
\lane_buf[4][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(21),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[4][21]_i_1_n_0\
    );
\lane_buf[4][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(22),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[4][22]_i_1_n_0\
    );
\lane_buf[4][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(23),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[4][23]_i_1_n_0\
    );
\lane_buf[4][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(24),
      I1 => \lane_valid__2\,
      O => \lane_buf[4][24]_i_1_n_0\
    );
\lane_buf[4][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(25),
      I1 => \lane_valid__2\,
      O => \lane_buf[4][25]_i_1_n_0\
    );
\lane_buf[4][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(26),
      I1 => \lane_valid__2\,
      O => \lane_buf[4][26]_i_1_n_0\
    );
\lane_buf[4][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(27),
      I1 => \lane_valid__2\,
      O => \lane_buf[4][27]_i_1_n_0\
    );
\lane_buf[4][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(28),
      I1 => \lane_valid__2\,
      O => \lane_buf[4][28]_i_1_n_0\
    );
\lane_buf[4][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(29),
      I1 => \lane_valid__2\,
      O => \lane_buf[4][29]_i_1_n_0\
    );
\lane_buf[4][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(2),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[4][2]_i_1_n_0\
    );
\lane_buf[4][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(30),
      I1 => \lane_valid__2\,
      O => \lane_buf[4][30]_i_1_n_0\
    );
\lane_buf[4][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(31),
      I1 => \lane_valid__2\,
      O => \lane_buf[4][31]_i_1_n_0\
    );
\lane_buf[4][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(3),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[4][3]_i_1_n_0\
    );
\lane_buf[4][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(4),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[4][4]_i_1_n_0\
    );
\lane_buf[4][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(5),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[4][5]_i_1_n_0\
    );
\lane_buf[4][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(6),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[4][6]_i_1_n_0\
    );
\lane_buf[4][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(7),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[4][7]_i_1_n_0\
    );
\lane_buf[4][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(8),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[4][8]_i_1_n_0\
    );
\lane_buf[4][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[3]_4\(9),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[4][9]_i_1_n_0\
    );
\lane_buf[5][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(0),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[5][0]_i_1_n_0\
    );
\lane_buf[5][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(10),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[5][10]_i_1_n_0\
    );
\lane_buf[5][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(11),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[5][11]_i_1_n_0\
    );
\lane_buf[5][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(12),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[5][12]_i_1_n_0\
    );
\lane_buf[5][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(13),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[5][13]_i_1_n_0\
    );
\lane_buf[5][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(14),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[5][14]_i_1_n_0\
    );
\lane_buf[5][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(15),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[5][15]_i_1_n_0\
    );
\lane_buf[5][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(16),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[5][16]_i_1_n_0\
    );
\lane_buf[5][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(17),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[5][17]_i_1_n_0\
    );
\lane_buf[5][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(18),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[5][18]_i_1_n_0\
    );
\lane_buf[5][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(19),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[5][19]_i_1_n_0\
    );
\lane_buf[5][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(1),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[5][1]_i_1_n_0\
    );
\lane_buf[5][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(20),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[5][20]_i_1_n_0\
    );
\lane_buf[5][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(21),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[5][21]_i_1_n_0\
    );
\lane_buf[5][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(22),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[5][22]_i_1_n_0\
    );
\lane_buf[5][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(23),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[5][23]_i_1_n_0\
    );
\lane_buf[5][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(24),
      I1 => \lane_valid__2\,
      O => \lane_buf[5][24]_i_1_n_0\
    );
\lane_buf[5][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(25),
      I1 => \lane_valid__2\,
      O => \lane_buf[5][25]_i_1_n_0\
    );
\lane_buf[5][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(26),
      I1 => \lane_valid__2\,
      O => \lane_buf[5][26]_i_1_n_0\
    );
\lane_buf[5][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(27),
      I1 => \lane_valid__2\,
      O => \lane_buf[5][27]_i_1_n_0\
    );
\lane_buf[5][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(28),
      I1 => \lane_valid__2\,
      O => \lane_buf[5][28]_i_1_n_0\
    );
\lane_buf[5][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(29),
      I1 => \lane_valid__2\,
      O => \lane_buf[5][29]_i_1_n_0\
    );
\lane_buf[5][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(2),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[5][2]_i_1_n_0\
    );
\lane_buf[5][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(30),
      I1 => \lane_valid__2\,
      O => \lane_buf[5][30]_i_1_n_0\
    );
\lane_buf[5][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(31),
      I1 => \lane_valid__2\,
      O => \lane_buf[5][31]_i_1_n_0\
    );
\lane_buf[5][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(3),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[5][3]_i_1_n_0\
    );
\lane_buf[5][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(4),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[5][4]_i_1_n_0\
    );
\lane_buf[5][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(5),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[5][5]_i_1_n_0\
    );
\lane_buf[5][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(6),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[5][6]_i_1_n_0\
    );
\lane_buf[5][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(7),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[5][7]_i_1_n_0\
    );
\lane_buf[5][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(8),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[5][8]_i_1_n_0\
    );
\lane_buf[5][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[4]_5\(9),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[5][9]_i_1_n_0\
    );
\lane_buf[6][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(0),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[6][0]_i_1_n_0\
    );
\lane_buf[6][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(10),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[6][10]_i_1_n_0\
    );
\lane_buf[6][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(11),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[6][11]_i_1_n_0\
    );
\lane_buf[6][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(12),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[6][12]_i_1_n_0\
    );
\lane_buf[6][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(13),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[6][13]_i_1_n_0\
    );
\lane_buf[6][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(14),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[6][14]_i_1_n_0\
    );
\lane_buf[6][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(15),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[6][15]_i_1_n_0\
    );
\lane_buf[6][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(16),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[6][16]_i_1_n_0\
    );
\lane_buf[6][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(17),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[6][17]_i_1_n_0\
    );
\lane_buf[6][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(18),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[6][18]_i_1_n_0\
    );
\lane_buf[6][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(19),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[6][19]_i_1_n_0\
    );
\lane_buf[6][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(1),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[6][1]_i_1_n_0\
    );
\lane_buf[6][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(20),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[6][20]_i_1_n_0\
    );
\lane_buf[6][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(21),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[6][21]_i_1_n_0\
    );
\lane_buf[6][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(22),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[6][22]_i_1_n_0\
    );
\lane_buf[6][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(23),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[6][23]_i_1_n_0\
    );
\lane_buf[6][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(24),
      I1 => \lane_valid__2\,
      O => \lane_buf[6][24]_i_1_n_0\
    );
\lane_buf[6][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(25),
      I1 => \lane_valid__2\,
      O => \lane_buf[6][25]_i_1_n_0\
    );
\lane_buf[6][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(26),
      I1 => \lane_valid__2\,
      O => \lane_buf[6][26]_i_1_n_0\
    );
\lane_buf[6][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(27),
      I1 => \lane_valid__2\,
      O => \lane_buf[6][27]_i_1_n_0\
    );
\lane_buf[6][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(28),
      I1 => \lane_valid__2\,
      O => \lane_buf[6][28]_i_1_n_0\
    );
\lane_buf[6][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(29),
      I1 => \lane_valid__2\,
      O => \lane_buf[6][29]_i_1_n_0\
    );
\lane_buf[6][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(2),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[6][2]_i_1_n_0\
    );
\lane_buf[6][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(30),
      I1 => \lane_valid__2\,
      O => \lane_buf[6][30]_i_1_n_0\
    );
\lane_buf[6][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(31),
      I1 => \lane_valid__2\,
      O => \lane_buf[6][31]_i_1_n_0\
    );
\lane_buf[6][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(3),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[6][3]_i_1_n_0\
    );
\lane_buf[6][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(4),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[6][4]_i_1_n_0\
    );
\lane_buf[6][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(5),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[6][5]_i_1_n_0\
    );
\lane_buf[6][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(6),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[6][6]_i_1_n_0\
    );
\lane_buf[6][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(7),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[6][7]_i_1_n_0\
    );
\lane_buf[6][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(8),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[6][8]_i_1_n_0\
    );
\lane_buf[6][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[5]_6\(9),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[6][9]_i_1_n_0\
    );
\lane_buf[7][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(0),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[7][0]_i_1_n_0\
    );
\lane_buf[7][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(10),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[7][10]_i_1_n_0\
    );
\lane_buf[7][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(11),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[7][11]_i_1_n_0\
    );
\lane_buf[7][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(12),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[7][12]_i_1_n_0\
    );
\lane_buf[7][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(13),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[7][13]_i_1_n_0\
    );
\lane_buf[7][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(14),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[7][14]_i_1_n_0\
    );
\lane_buf[7][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(15),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[7][15]_i_1_n_0\
    );
\lane_buf[7][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(16),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[7][16]_i_1_n_0\
    );
\lane_buf[7][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(17),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[7][17]_i_1_n_0\
    );
\lane_buf[7][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(18),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[7][18]_i_1_n_0\
    );
\lane_buf[7][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(19),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[7][19]_i_1_n_0\
    );
\lane_buf[7][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(1),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[7][1]_i_1_n_0\
    );
\lane_buf[7][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(20),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[7][20]_i_1_n_0\
    );
\lane_buf[7][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(21),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[7][21]_i_1_n_0\
    );
\lane_buf[7][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(22),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[7][22]_i_1_n_0\
    );
\lane_buf[7][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(23),
      I1 => \lane_buf_reg[7][16]_0\,
      O => \lane_buf[7][23]_i_1_n_0\
    );
\lane_buf[7][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(24),
      I1 => \lane_valid__2\,
      O => \lane_buf[7][24]_i_1_n_0\
    );
\lane_buf[7][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(25),
      I1 => \lane_valid__2\,
      O => \lane_buf[7][25]_i_1_n_0\
    );
\lane_buf[7][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(26),
      I1 => \lane_valid__2\,
      O => \lane_buf[7][26]_i_1_n_0\
    );
\lane_buf[7][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(27),
      I1 => \lane_valid__2\,
      O => \lane_buf[7][27]_i_1_n_0\
    );
\lane_buf[7][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(28),
      I1 => \lane_valid__2\,
      O => \lane_buf[7][28]_i_1_n_0\
    );
\lane_buf[7][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(29),
      I1 => \lane_valid__2\,
      O => \lane_buf[7][29]_i_1_n_0\
    );
\lane_buf[7][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(2),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[7][2]_i_1_n_0\
    );
\lane_buf[7][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(30),
      I1 => \lane_valid__2\,
      O => \lane_buf[7][30]_i_1_n_0\
    );
\lane_buf[7][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(31),
      I1 => \lane_valid__2\,
      O => \lane_buf[7][31]_i_1_n_0\
    );
\lane_buf[7][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(3),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[7][3]_i_1_n_0\
    );
\lane_buf[7][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(4),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[7][4]_i_1_n_0\
    );
\lane_buf[7][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(5),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[7][5]_i_1_n_0\
    );
\lane_buf[7][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(6),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[7][6]_i_1_n_0\
    );
\lane_buf[7][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(7),
      I1 => \lane_buf_reg[7][0]_0\,
      O => \lane_buf[7][7]_i_1_n_0\
    );
\lane_buf[7][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(8),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[7][8]_i_1_n_0\
    );
\lane_buf[7][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_buf_reg[6]_7\(9),
      I1 => \lane_buf_reg[7][8]_0\,
      O => \lane_buf[7][9]_i_1_n_0\
    );
\lane_buf_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(0),
      Q => \lane_buf_reg[0]_1\(0)
    );
\lane_buf_reg[0][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(10),
      Q => \lane_buf_reg[0]_1\(10)
    );
\lane_buf_reg[0][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(11),
      Q => \lane_buf_reg[0]_1\(11)
    );
\lane_buf_reg[0][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(12),
      Q => \lane_buf_reg[0]_1\(12)
    );
\lane_buf_reg[0][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(13),
      Q => \lane_buf_reg[0]_1\(13)
    );
\lane_buf_reg[0][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(14),
      Q => \lane_buf_reg[0]_1\(14)
    );
\lane_buf_reg[0][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(15),
      Q => \lane_buf_reg[0]_1\(15)
    );
\lane_buf_reg[0][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(16),
      Q => \lane_buf_reg[0]_1\(16)
    );
\lane_buf_reg[0][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(17),
      Q => \lane_buf_reg[0]_1\(17)
    );
\lane_buf_reg[0][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(18),
      Q => \lane_buf_reg[0]_1\(18)
    );
\lane_buf_reg[0][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(19),
      Q => \lane_buf_reg[0]_1\(19)
    );
\lane_buf_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(1),
      Q => \lane_buf_reg[0]_1\(1)
    );
\lane_buf_reg[0][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(20),
      Q => \lane_buf_reg[0]_1\(20)
    );
\lane_buf_reg[0][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(21),
      Q => \lane_buf_reg[0]_1\(21)
    );
\lane_buf_reg[0][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(22),
      Q => \lane_buf_reg[0]_1\(22)
    );
\lane_buf_reg[0][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(23),
      Q => \lane_buf_reg[0]_1\(23)
    );
\lane_buf_reg[0][24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(24),
      Q => \lane_buf_reg[0]_1\(24)
    );
\lane_buf_reg[0][25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(25),
      Q => \lane_buf_reg[0]_1\(25)
    );
\lane_buf_reg[0][26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(26),
      Q => \lane_buf_reg[0]_1\(26)
    );
\lane_buf_reg[0][27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(27),
      Q => \lane_buf_reg[0]_1\(27)
    );
\lane_buf_reg[0][28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(28),
      Q => \lane_buf_reg[0]_1\(28)
    );
\lane_buf_reg[0][29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(29),
      Q => \lane_buf_reg[0]_1\(29)
    );
\lane_buf_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(2),
      Q => \lane_buf_reg[0]_1\(2)
    );
\lane_buf_reg[0][30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(30),
      Q => \lane_buf_reg[0]_1\(30)
    );
\lane_buf_reg[0][31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(31),
      Q => \lane_buf_reg[0]_1\(31)
    );
\lane_buf_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(3),
      Q => \lane_buf_reg[0]_1\(3)
    );
\lane_buf_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(4),
      Q => \lane_buf_reg[0]_1\(4)
    );
\lane_buf_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(5),
      Q => \lane_buf_reg[0]_1\(5)
    );
\lane_buf_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(6),
      Q => \lane_buf_reg[0]_1\(6)
    );
\lane_buf_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(7),
      Q => \lane_buf_reg[0]_1\(7)
    );
\lane_buf_reg[0][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(8),
      Q => \lane_buf_reg[0]_1\(8)
    );
\lane_buf_reg[0][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][31]_0\(9),
      Q => \lane_buf_reg[0]_1\(9)
    );
\lane_buf_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][0]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(0)
    );
\lane_buf_reg[1][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][10]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(10)
    );
\lane_buf_reg[1][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][11]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(11)
    );
\lane_buf_reg[1][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][12]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(12)
    );
\lane_buf_reg[1][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][13]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(13)
    );
\lane_buf_reg[1][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][14]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(14)
    );
\lane_buf_reg[1][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][15]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(15)
    );
\lane_buf_reg[1][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][16]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(16)
    );
\lane_buf_reg[1][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][17]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(17)
    );
\lane_buf_reg[1][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][18]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(18)
    );
\lane_buf_reg[1][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][19]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(19)
    );
\lane_buf_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][1]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(1)
    );
\lane_buf_reg[1][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][20]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(20)
    );
\lane_buf_reg[1][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][21]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(21)
    );
\lane_buf_reg[1][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][22]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(22)
    );
\lane_buf_reg[1][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][23]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(23)
    );
\lane_buf_reg[1][24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][24]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(24)
    );
\lane_buf_reg[1][25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][25]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(25)
    );
\lane_buf_reg[1][26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][26]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(26)
    );
\lane_buf_reg[1][27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][27]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(27)
    );
\lane_buf_reg[1][28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][28]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(28)
    );
\lane_buf_reg[1][29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][29]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(29)
    );
\lane_buf_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][2]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(2)
    );
\lane_buf_reg[1][30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][30]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(30)
    );
\lane_buf_reg[1][31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][31]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(31)
    );
\lane_buf_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][3]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(3)
    );
\lane_buf_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][4]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(4)
    );
\lane_buf_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][5]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(5)
    );
\lane_buf_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][6]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(6)
    );
\lane_buf_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][7]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(7)
    );
\lane_buf_reg[1][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][8]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(8)
    );
\lane_buf_reg[1][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[1][9]_i_1_n_0\,
      Q => \lane_buf_reg[1]_2\(9)
    );
\lane_buf_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][0]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(0)
    );
\lane_buf_reg[2][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][10]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(10)
    );
\lane_buf_reg[2][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][11]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(11)
    );
\lane_buf_reg[2][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][12]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(12)
    );
\lane_buf_reg[2][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][13]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(13)
    );
\lane_buf_reg[2][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][14]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(14)
    );
\lane_buf_reg[2][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][15]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(15)
    );
\lane_buf_reg[2][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][16]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(16)
    );
\lane_buf_reg[2][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][17]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(17)
    );
\lane_buf_reg[2][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][18]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(18)
    );
\lane_buf_reg[2][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][19]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(19)
    );
\lane_buf_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][1]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(1)
    );
\lane_buf_reg[2][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][20]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(20)
    );
\lane_buf_reg[2][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][21]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(21)
    );
\lane_buf_reg[2][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][22]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(22)
    );
\lane_buf_reg[2][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][23]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(23)
    );
\lane_buf_reg[2][24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][24]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(24)
    );
\lane_buf_reg[2][25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][25]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(25)
    );
\lane_buf_reg[2][26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][26]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(26)
    );
\lane_buf_reg[2][27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][27]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(27)
    );
\lane_buf_reg[2][28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][28]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(28)
    );
\lane_buf_reg[2][29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][29]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(29)
    );
\lane_buf_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][2]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(2)
    );
\lane_buf_reg[2][30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][30]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(30)
    );
\lane_buf_reg[2][31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][31]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(31)
    );
\lane_buf_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][3]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(3)
    );
\lane_buf_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][4]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(4)
    );
\lane_buf_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][5]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(5)
    );
\lane_buf_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][6]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(6)
    );
\lane_buf_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][7]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(7)
    );
\lane_buf_reg[2][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][8]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(8)
    );
\lane_buf_reg[2][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[2][9]_i_1_n_0\,
      Q => \lane_buf_reg[2]_3\(9)
    );
\lane_buf_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][0]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(0)
    );
\lane_buf_reg[3][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][10]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(10)
    );
\lane_buf_reg[3][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][11]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(11)
    );
\lane_buf_reg[3][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][12]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(12)
    );
\lane_buf_reg[3][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][13]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(13)
    );
\lane_buf_reg[3][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][14]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(14)
    );
\lane_buf_reg[3][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][15]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(15)
    );
\lane_buf_reg[3][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][16]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(16)
    );
\lane_buf_reg[3][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][17]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(17)
    );
\lane_buf_reg[3][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][18]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(18)
    );
\lane_buf_reg[3][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][19]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(19)
    );
\lane_buf_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][1]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(1)
    );
\lane_buf_reg[3][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][20]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(20)
    );
\lane_buf_reg[3][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][21]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(21)
    );
\lane_buf_reg[3][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][22]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(22)
    );
\lane_buf_reg[3][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][23]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(23)
    );
\lane_buf_reg[3][24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][24]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(24)
    );
\lane_buf_reg[3][25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][25]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(25)
    );
\lane_buf_reg[3][26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][26]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(26)
    );
\lane_buf_reg[3][27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][27]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(27)
    );
\lane_buf_reg[3][28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][28]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(28)
    );
\lane_buf_reg[3][29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][29]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(29)
    );
\lane_buf_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][2]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(2)
    );
\lane_buf_reg[3][30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][30]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(30)
    );
\lane_buf_reg[3][31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][31]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(31)
    );
\lane_buf_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][3]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(3)
    );
\lane_buf_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][4]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(4)
    );
\lane_buf_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][5]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(5)
    );
\lane_buf_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][6]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(6)
    );
\lane_buf_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][7]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(7)
    );
\lane_buf_reg[3][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][8]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(8)
    );
\lane_buf_reg[3][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[3][9]_i_1_n_0\,
      Q => \lane_buf_reg[3]_4\(9)
    );
\lane_buf_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][0]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(0)
    );
\lane_buf_reg[4][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][10]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(10)
    );
\lane_buf_reg[4][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][11]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(11)
    );
\lane_buf_reg[4][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][12]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(12)
    );
\lane_buf_reg[4][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][13]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(13)
    );
\lane_buf_reg[4][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][14]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(14)
    );
\lane_buf_reg[4][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][15]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(15)
    );
\lane_buf_reg[4][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][16]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(16)
    );
\lane_buf_reg[4][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][17]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(17)
    );
\lane_buf_reg[4][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][18]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(18)
    );
\lane_buf_reg[4][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][19]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(19)
    );
\lane_buf_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][1]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(1)
    );
\lane_buf_reg[4][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][20]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(20)
    );
\lane_buf_reg[4][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][21]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(21)
    );
\lane_buf_reg[4][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][22]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(22)
    );
\lane_buf_reg[4][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][23]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(23)
    );
\lane_buf_reg[4][24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][24]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(24)
    );
\lane_buf_reg[4][25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][25]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(25)
    );
\lane_buf_reg[4][26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][26]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(26)
    );
\lane_buf_reg[4][27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][27]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(27)
    );
\lane_buf_reg[4][28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][28]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(28)
    );
\lane_buf_reg[4][29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][29]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(29)
    );
\lane_buf_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][2]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(2)
    );
\lane_buf_reg[4][30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][30]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(30)
    );
\lane_buf_reg[4][31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][31]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(31)
    );
\lane_buf_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][3]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(3)
    );
\lane_buf_reg[4][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][4]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(4)
    );
\lane_buf_reg[4][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][5]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(5)
    );
\lane_buf_reg[4][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][6]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(6)
    );
\lane_buf_reg[4][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][7]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(7)
    );
\lane_buf_reg[4][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][8]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(8)
    );
\lane_buf_reg[4][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[4][9]_i_1_n_0\,
      Q => \lane_buf_reg[4]_5\(9)
    );
\lane_buf_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][0]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(0)
    );
\lane_buf_reg[5][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][10]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(10)
    );
\lane_buf_reg[5][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][11]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(11)
    );
\lane_buf_reg[5][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][12]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(12)
    );
\lane_buf_reg[5][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][13]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(13)
    );
\lane_buf_reg[5][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][14]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(14)
    );
\lane_buf_reg[5][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][15]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(15)
    );
\lane_buf_reg[5][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][16]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(16)
    );
\lane_buf_reg[5][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][17]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(17)
    );
\lane_buf_reg[5][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][18]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(18)
    );
\lane_buf_reg[5][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][19]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(19)
    );
\lane_buf_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][1]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(1)
    );
\lane_buf_reg[5][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][20]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(20)
    );
\lane_buf_reg[5][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][21]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(21)
    );
\lane_buf_reg[5][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][22]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(22)
    );
\lane_buf_reg[5][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][23]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(23)
    );
\lane_buf_reg[5][24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][24]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(24)
    );
\lane_buf_reg[5][25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][25]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(25)
    );
\lane_buf_reg[5][26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][26]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(26)
    );
\lane_buf_reg[5][27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][27]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(27)
    );
\lane_buf_reg[5][28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][28]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(28)
    );
\lane_buf_reg[5][29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][29]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(29)
    );
\lane_buf_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][2]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(2)
    );
\lane_buf_reg[5][30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][30]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(30)
    );
\lane_buf_reg[5][31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][31]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(31)
    );
\lane_buf_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][3]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(3)
    );
\lane_buf_reg[5][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][4]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(4)
    );
\lane_buf_reg[5][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][5]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(5)
    );
\lane_buf_reg[5][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][6]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(6)
    );
\lane_buf_reg[5][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][7]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(7)
    );
\lane_buf_reg[5][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][8]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(8)
    );
\lane_buf_reg[5][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[5][9]_i_1_n_0\,
      Q => \lane_buf_reg[5]_6\(9)
    );
\lane_buf_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][0]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(0)
    );
\lane_buf_reg[6][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][10]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(10)
    );
\lane_buf_reg[6][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][11]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(11)
    );
\lane_buf_reg[6][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][12]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(12)
    );
\lane_buf_reg[6][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][13]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(13)
    );
\lane_buf_reg[6][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][14]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(14)
    );
\lane_buf_reg[6][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][15]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(15)
    );
\lane_buf_reg[6][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][16]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(16)
    );
\lane_buf_reg[6][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][17]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(17)
    );
\lane_buf_reg[6][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][18]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(18)
    );
\lane_buf_reg[6][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][19]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(19)
    );
\lane_buf_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][1]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(1)
    );
\lane_buf_reg[6][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][20]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(20)
    );
\lane_buf_reg[6][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][21]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(21)
    );
\lane_buf_reg[6][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][22]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(22)
    );
\lane_buf_reg[6][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][23]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(23)
    );
\lane_buf_reg[6][24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][24]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(24)
    );
\lane_buf_reg[6][25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][25]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(25)
    );
\lane_buf_reg[6][26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][26]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(26)
    );
\lane_buf_reg[6][27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][27]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(27)
    );
\lane_buf_reg[6][28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][28]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(28)
    );
\lane_buf_reg[6][29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][29]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(29)
    );
\lane_buf_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][2]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(2)
    );
\lane_buf_reg[6][30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][30]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(30)
    );
\lane_buf_reg[6][31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][31]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(31)
    );
\lane_buf_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][3]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(3)
    );
\lane_buf_reg[6][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][4]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(4)
    );
\lane_buf_reg[6][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][5]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(5)
    );
\lane_buf_reg[6][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][6]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(6)
    );
\lane_buf_reg[6][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][7]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(7)
    );
\lane_buf_reg[6][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][8]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(8)
    );
\lane_buf_reg[6][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[6][9]_i_1_n_0\,
      Q => \lane_buf_reg[6]_7\(9)
    );
\lane_buf_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][0]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(0)
    );
\lane_buf_reg[7][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][10]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(10)
    );
\lane_buf_reg[7][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][11]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(11)
    );
\lane_buf_reg[7][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][12]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(12)
    );
\lane_buf_reg[7][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][13]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(13)
    );
\lane_buf_reg[7][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][14]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(14)
    );
\lane_buf_reg[7][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][15]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(15)
    );
\lane_buf_reg[7][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][16]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(16)
    );
\lane_buf_reg[7][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][17]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(17)
    );
\lane_buf_reg[7][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][18]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(18)
    );
\lane_buf_reg[7][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][19]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(19)
    );
\lane_buf_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][1]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(1)
    );
\lane_buf_reg[7][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][20]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(20)
    );
\lane_buf_reg[7][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][21]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(21)
    );
\lane_buf_reg[7][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][22]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(22)
    );
\lane_buf_reg[7][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][23]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(23)
    );
\lane_buf_reg[7][24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][24]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(24)
    );
\lane_buf_reg[7][25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][25]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(25)
    );
\lane_buf_reg[7][26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][26]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(26)
    );
\lane_buf_reg[7][27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][27]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(27)
    );
\lane_buf_reg[7][28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][28]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(28)
    );
\lane_buf_reg[7][29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][29]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(29)
    );
\lane_buf_reg[7][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][2]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(2)
    );
\lane_buf_reg[7][30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][30]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(30)
    );
\lane_buf_reg[7][31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][31]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(31)
    );
\lane_buf_reg[7][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][3]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(3)
    );
\lane_buf_reg[7][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][4]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(4)
    );
\lane_buf_reg[7][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][5]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(5)
    );
\lane_buf_reg[7][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][6]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(6)
    );
\lane_buf_reg[7][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][7]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(7)
    );
\lane_buf_reg[7][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][8]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(8)
    );
\lane_buf_reg[7][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf[7][9]_i_1_n_0\,
      Q => \lane_buf_reg[7]_8\(9)
    );
reg_ce_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => module_reset,
      I1 => s00_axi_aresetn,
      O => \^module_reset_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__csi2_packet_decoder\ is
  port (
    pkt_valid : out STD_LOGIC;
    reg_pix_valid_reg : out STD_LOGIC;
    \data_id_2_reg[4]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reg_pix_valid_reg_0 : out STD_LOGIC;
    data_flag_2_reg_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    data_flag_2_reg_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_byte_2_reg[6]_0\ : out STD_LOGIC;
    \data_byte_2_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_byte_2_reg[4]_0\ : out STD_LOGIC;
    \head_clk_idx_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \head_clk_idx_reg[1]_0\ : out STD_LOGIC;
    \head_clk_idx_reg[2]_1\ : out STD_LOGIC;
    \head_clk_idx_reg[2]_2\ : out STD_LOGIC;
    data_flag_2_reg_2 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \data_byte_2_reg[31]_1\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_byte_2_reg[7]_0\ : out STD_LOGIC;
    \data_byte_2_reg[5]_0\ : out STD_LOGIC;
    \data_byte_2_reg[5]_1\ : out STD_LOGIC;
    \data_byte_2_reg[3]_0\ : out STD_LOGIC;
    \data_byte_2_reg[2]_0\ : out STD_LOGIC;
    \data_byte_2_reg[1]_0\ : out STD_LOGIC;
    \data_byte_2_reg[0]_0\ : out STD_LOGIC;
    data_flag0 : in STD_LOGIC;
    clk_hs_byte : in STD_LOGIC;
    \data_byte_reg[0]_0\ : in STD_LOGIC;
    raw10_pix_valid : in STD_LOGIC;
    raw10_pix_data_enable : in STD_LOGIC;
    \di_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    last_size_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \head_clk_idx_reg[1]_1\ : in STD_LOGIC;
    lane_byte_aligned : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \head_clk_idx_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    pixel_enable3_out : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \pixel_data_reg[21]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \pixel_data_reg[11]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \pixel_data_reg[31]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \head_word_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__csi2_packet_decoder\ : entity is "_csi2_packet_decoder";
end \design_1_mipi_rx_to_video_0_0__csi2_packet_decoder\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__csi2_packet_decoder\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal data0 : STD_LOGIC;
  signal data_byte : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[31]_i_2_n_0\ : STD_LOGIC;
  signal \data_byte_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[9]_i_1_n_0\ : STD_LOGIC;
  signal \^data_byte_2_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_count_2[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_count_2[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_count_2[15]_i_4_n_0\ : STD_LOGIC;
  signal \data_count_2[15]_i_5_n_0\ : STD_LOGIC;
  signal \data_count_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_count_2_reg_n_0_[9]\ : STD_LOGIC;
  signal data_flag_20 : STD_LOGIC;
  signal data_flag_20_carry_i_10_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_11_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_12_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_13_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_14_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_15_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_16_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_1_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_2_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_3_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_4_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_5_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_6_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_7_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_8_n_0 : STD_LOGIC;
  signal data_flag_20_carry_i_9_n_0 : STD_LOGIC;
  signal data_flag_20_carry_n_1 : STD_LOGIC;
  signal data_flag_20_carry_n_2 : STD_LOGIC;
  signal data_flag_20_carry_n_3 : STD_LOGIC;
  signal data_flag_20_carry_n_4 : STD_LOGIC;
  signal data_flag_20_carry_n_5 : STD_LOGIC;
  signal data_flag_20_carry_n_6 : STD_LOGIC;
  signal data_flag_20_carry_n_7 : STD_LOGIC;
  signal \^data_flag_2_reg_1\ : STD_LOGIC;
  signal data_flag_reg_n_0 : STD_LOGIC;
  signal \data_id_2[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_id_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_id_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_id_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_id_2[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_id_2[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_id_2[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_id_2[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_id_2[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_id_2[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_id_2[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_id_2[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_id_2[7]_i_6_n_0\ : STD_LOGIC;
  signal \^data_id_2_reg[4]_0\ : STD_LOGIC;
  signal \data_id_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_id_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_index_2[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_index_2[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_index_2[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_index_2[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_index_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_index_2_reg_n_0_[9]\ : STD_LOGIC;
  signal \^head_clk_idx_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal head_word0 : STD_LOGIC;
  signal \head_word_reg_n_0_[0]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[10]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[11]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[12]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[13]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[14]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[15]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[16]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[17]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[18]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[19]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[1]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[20]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[21]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[22]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[23]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[2]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[6]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[7]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[8]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal p_2_in : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \pixel_data[10]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[10]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[11]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_data[20]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[20]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[21]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[21]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_data[30]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[30]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[31]_i_4_n_0\ : STD_LOGIC;
  signal \^pkt_valid\ : STD_LOGIC;
  signal reg_pix_data_enable_i_2_n_0 : STD_LOGIC;
  signal reg_pix_data_enable_i_3_n_0 : STD_LOGIC;
  signal reg_pix_data_enable_i_4_n_0 : STD_LOGIC;
  signal reg_pix_data_enable_i_5_n_0 : STD_LOGIC;
  signal NLW_data_flag_20_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_byte[3]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \data_byte[4]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \data_byte[5]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \data_byte_2[0]_i_1\ : label is "soft_lutpair149";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of data_flag_20_carry : label is 11;
  attribute SOFT_HLUTNM of data_flag_2_i_1 : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of data_flag_i_2 : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of data_flag_i_3 : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \data_id_2[0]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \data_id_2[1]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \data_id_2[2]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \data_id_2[3]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \data_id_2[4]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \data_id_2[5]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \data_id_2[6]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \data_id_2[7]_i_2\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \data_id_2[7]_i_4\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \data_index_2[10]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \data_index_2[12]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \data_index_2[13]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \data_index_2[14]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \data_index_2[15]_i_2\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \data_index_2[3]_i_1\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \data_index_2[4]_i_1\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \data_index_2[5]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \data_index_2[7]_i_1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \data_index_2[8]_i_1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \data_index_2[9]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \di_reg[7]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \di_reg[7]_i_2\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \head_clk_idx[1]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \head_clk_idx[2]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \head_word[23]_i_3\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \last_data[10]_i_1\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \last_data[11]_i_1\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \last_data[12]_i_1\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \last_data[13]_i_1\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \last_data[14]_i_1\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \last_data[15]_i_1\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \last_data[16]_i_1\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \last_data[17]_i_1\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \last_data[18]_i_1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \last_data[19]_i_1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \last_data[1]_i_1\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \last_data[20]_i_1\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \last_data[21]_i_1\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \last_data[22]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \last_data[23]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \last_data[24]_i_1\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \last_data[25]_i_1\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \last_data[26]_i_1\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \last_data[27]_i_1\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \last_data[28]_i_1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \last_data[29]_i_1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \last_data[2]_i_1\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \last_data[30]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \last_data[31]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \last_data[3]_i_1\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \last_data[4]_i_1\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \last_data[5]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \last_data[6]_i_1\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \last_data[7]_i_1\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \last_data[8]_i_1\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \last_data[9]_i_1\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \pixel_data[17]_i_4\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \ready_delay[0]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \reg_pix_di[2]_i_1\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \reg_pix_di[4]_i_1\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \reg_pix_valid_i_1__0\ : label is "soft_lutpair165";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  \data_byte_2_reg[31]_0\(31 downto 0) <= \^data_byte_2_reg[31]_0\(31 downto 0);
  data_flag_2_reg_1 <= \^data_flag_2_reg_1\;
  \data_id_2_reg[4]_0\ <= \^data_id_2_reg[4]_0\;
  \head_clk_idx_reg[2]_0\(2 downto 0) <= \^head_clk_idx_reg[2]_0\(2 downto 0);
  pkt_valid <= \^pkt_valid\;
\data_byte[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(0),
      O => \data_byte[0]_i_1_n_0\
    );
\data_byte[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(10),
      O => \data_byte[10]_i_1_n_0\
    );
\data_byte[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(11),
      O => \data_byte[11]_i_1_n_0\
    );
\data_byte[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(12),
      O => \data_byte[12]_i_1_n_0\
    );
\data_byte[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(13),
      O => \data_byte[13]_i_1_n_0\
    );
\data_byte[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(14),
      O => \data_byte[14]_i_1_n_0\
    );
\data_byte[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(15),
      O => \data_byte[15]_i_1_n_0\
    );
\data_byte[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(16),
      O => \data_byte[16]_i_1_n_0\
    );
\data_byte[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(17),
      O => \data_byte[17]_i_1_n_0\
    );
\data_byte[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(18),
      O => \data_byte[18]_i_1_n_0\
    );
\data_byte[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(19),
      O => \data_byte[19]_i_1_n_0\
    );
\data_byte[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(1),
      O => \data_byte[1]_i_1_n_0\
    );
\data_byte[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(20),
      O => \data_byte[20]_i_1_n_0\
    );
\data_byte[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(21),
      O => \data_byte[21]_i_1_n_0\
    );
\data_byte[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(22),
      O => \data_byte[22]_i_1_n_0\
    );
\data_byte[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(23),
      O => \data_byte[23]_i_1_n_0\
    );
\data_byte[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(24),
      O => \data_byte[24]_i_1_n_0\
    );
\data_byte[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(25),
      O => \data_byte[25]_i_1_n_0\
    );
\data_byte[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(26),
      O => \data_byte[26]_i_1_n_0\
    );
\data_byte[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(27),
      O => \data_byte[27]_i_1_n_0\
    );
\data_byte[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(28),
      O => \data_byte[28]_i_1_n_0\
    );
\data_byte[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(29),
      O => \data_byte[29]_i_1_n_0\
    );
\data_byte[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(2),
      O => \data_byte[2]_i_1_n_0\
    );
\data_byte[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(30),
      O => \data_byte[30]_i_1_n_0\
    );
\data_byte[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(31),
      O => \data_byte[31]_i_1_n_0\
    );
\data_byte[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(3),
      O => \data_byte[3]_i_1_n_0\
    );
\data_byte[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(4),
      O => \data_byte[4]_i_1_n_0\
    );
\data_byte[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(5),
      O => \data_byte[5]_i_1_n_0\
    );
\data_byte[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(6),
      O => \data_byte[6]_i_1_n_0\
    );
\data_byte[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(7),
      O => \data_byte[7]_i_1_n_0\
    );
\data_byte[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(8),
      O => \data_byte[8]_i_1_n_0\
    );
\data_byte[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \head_clk_idx_reg[1]_1\,
      I4 => lane_byte_aligned(9),
      O => \data_byte[9]_i_1_n_0\
    );
\data_byte_2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(0),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[0]_i_1_n_0\
    );
\data_byte_2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(10),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[10]_i_1_n_0\
    );
\data_byte_2[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(11),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[11]_i_1_n_0\
    );
\data_byte_2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(12),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[12]_i_1_n_0\
    );
\data_byte_2[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(13),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[13]_i_1_n_0\
    );
\data_byte_2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(14),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[14]_i_1_n_0\
    );
\data_byte_2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(15),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[15]_i_1_n_0\
    );
\data_byte_2[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(16),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[16]_i_1_n_0\
    );
\data_byte_2[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(17),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[17]_i_1_n_0\
    );
\data_byte_2[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(18),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[18]_i_1_n_0\
    );
\data_byte_2[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(19),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[19]_i_1_n_0\
    );
\data_byte_2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(1),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[1]_i_1_n_0\
    );
\data_byte_2[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(20),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[20]_i_1_n_0\
    );
\data_byte_2[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(21),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[21]_i_1_n_0\
    );
\data_byte_2[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(22),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[22]_i_1_n_0\
    );
\data_byte_2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(23),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[23]_i_1_n_0\
    );
\data_byte_2[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(24),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[24]_i_1_n_0\
    );
\data_byte_2[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(25),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[25]_i_1_n_0\
    );
\data_byte_2[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(26),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[26]_i_1_n_0\
    );
\data_byte_2[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(27),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[27]_i_1_n_0\
    );
\data_byte_2[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(28),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[28]_i_1_n_0\
    );
\data_byte_2[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(29),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[29]_i_1_n_0\
    );
\data_byte_2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(2),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[2]_i_1_n_0\
    );
\data_byte_2[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(30),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[30]_i_1_n_0\
    );
\data_byte_2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(31),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[31]_i_1_n_0\
    );
\data_byte_2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8202"
    )
        port map (
      I0 => \data_count_2[15]_i_3_n_0\,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      O => \data_byte_2[31]_i_2_n_0\
    );
\data_byte_2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(3),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[3]_i_1_n_0\
    );
\data_byte_2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(4),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[4]_i_1_n_0\
    );
\data_byte_2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(5),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[5]_i_1_n_0\
    );
\data_byte_2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(6),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[6]_i_1_n_0\
    );
\data_byte_2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(7),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[7]_i_1_n_0\
    );
\data_byte_2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(8),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[8]_i_1_n_0\
    );
\data_byte_2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      I3 => data_byte(9),
      I4 => \data_byte_2[31]_i_2_n_0\,
      O => \data_byte_2[9]_i_1_n_0\
    );
\data_byte_2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[0]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(0)
    );
\data_byte_2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[10]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(10)
    );
\data_byte_2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[11]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(11)
    );
\data_byte_2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[12]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(12)
    );
\data_byte_2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[13]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(13)
    );
\data_byte_2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[14]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(14)
    );
\data_byte_2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[15]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(15)
    );
\data_byte_2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[16]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(16)
    );
\data_byte_2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[17]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(17)
    );
\data_byte_2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[18]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(18)
    );
\data_byte_2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[19]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(19)
    );
\data_byte_2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[1]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(1)
    );
\data_byte_2_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[20]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(20)
    );
\data_byte_2_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[21]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(21)
    );
\data_byte_2_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[22]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(22)
    );
\data_byte_2_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[23]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(23)
    );
\data_byte_2_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[24]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(24)
    );
\data_byte_2_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[25]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(25)
    );
\data_byte_2_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[26]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(26)
    );
\data_byte_2_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[27]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(27)
    );
\data_byte_2_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[28]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(28)
    );
\data_byte_2_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[29]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(29)
    );
\data_byte_2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[2]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(2)
    );
\data_byte_2_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[30]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(30)
    );
\data_byte_2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[31]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(31)
    );
\data_byte_2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[3]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(3)
    );
\data_byte_2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[4]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(4)
    );
\data_byte_2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[5]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(5)
    );
\data_byte_2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[6]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(6)
    );
\data_byte_2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[7]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(7)
    );
\data_byte_2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[8]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(8)
    );
\data_byte_2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte_2[9]_i_1_n_0\,
      Q => \^data_byte_2_reg[31]_0\(9)
    );
\data_byte_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[0]_i_1_n_0\,
      Q => data_byte(0)
    );
\data_byte_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[10]_i_1_n_0\,
      Q => data_byte(10)
    );
\data_byte_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[11]_i_1_n_0\,
      Q => data_byte(11)
    );
\data_byte_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[12]_i_1_n_0\,
      Q => data_byte(12)
    );
\data_byte_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[13]_i_1_n_0\,
      Q => data_byte(13)
    );
\data_byte_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[14]_i_1_n_0\,
      Q => data_byte(14)
    );
\data_byte_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[15]_i_1_n_0\,
      Q => data_byte(15)
    );
\data_byte_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[16]_i_1_n_0\,
      Q => data_byte(16)
    );
\data_byte_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[17]_i_1_n_0\,
      Q => data_byte(17)
    );
\data_byte_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[18]_i_1_n_0\,
      Q => data_byte(18)
    );
\data_byte_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[19]_i_1_n_0\,
      Q => data_byte(19)
    );
\data_byte_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[1]_i_1_n_0\,
      Q => data_byte(1)
    );
\data_byte_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[20]_i_1_n_0\,
      Q => data_byte(20)
    );
\data_byte_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[21]_i_1_n_0\,
      Q => data_byte(21)
    );
\data_byte_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[22]_i_1_n_0\,
      Q => data_byte(22)
    );
\data_byte_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[23]_i_1_n_0\,
      Q => data_byte(23)
    );
\data_byte_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[24]_i_1_n_0\,
      Q => data_byte(24)
    );
\data_byte_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[25]_i_1_n_0\,
      Q => data_byte(25)
    );
\data_byte_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[26]_i_1_n_0\,
      Q => data_byte(26)
    );
\data_byte_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[27]_i_1_n_0\,
      Q => data_byte(27)
    );
\data_byte_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[28]_i_1_n_0\,
      Q => data_byte(28)
    );
\data_byte_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[29]_i_1_n_0\,
      Q => data_byte(29)
    );
\data_byte_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[2]_i_1_n_0\,
      Q => data_byte(2)
    );
\data_byte_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[30]_i_1_n_0\,
      Q => data_byte(30)
    );
\data_byte_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[31]_i_1_n_0\,
      Q => data_byte(31)
    );
\data_byte_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[3]_i_1_n_0\,
      Q => data_byte(3)
    );
\data_byte_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[4]_i_1_n_0\,
      Q => data_byte(4)
    );
\data_byte_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[5]_i_1_n_0\,
      Q => data_byte(5)
    );
\data_byte_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[6]_i_1_n_0\,
      Q => data_byte(6)
    );
\data_byte_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[7]_i_1_n_0\,
      Q => data_byte(7)
    );
\data_byte_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[8]_i_1_n_0\,
      Q => data_byte(8)
    );
\data_byte_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \data_byte[9]_i_1_n_0\,
      Q => data_byte(9)
    );
\data_count_2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[8]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[0]_i_1_n_0\
    );
\data_count_2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[18]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[10]_i_1_n_0\
    );
\data_count_2[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[19]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[11]_i_1_n_0\
    );
\data_count_2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[20]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[12]_i_1_n_0\
    );
\data_count_2[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[21]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[13]_i_1_n_0\
    );
\data_count_2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[22]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[14]_i_1_n_0\
    );
\data_count_2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \data_count_2[15]_i_3_n_0\,
      I1 => data_flag_reg_n_0,
      O => \data_count_2[15]_i_1_n_0\
    );
\data_count_2[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[23]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[15]_i_2_n_0\
    );
\data_count_2[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \data_count_2[15]_i_4_n_0\,
      I1 => \data_index_2_reg_n_0_[11]\,
      I2 => \data_index_2_reg_n_0_[14]\,
      I3 => \data_index_2_reg_n_0_[4]\,
      I4 => \data_index_2_reg_n_0_[13]\,
      I5 => \data_count_2[15]_i_5_n_0\,
      O => \data_count_2[15]_i_3_n_0\
    );
\data_count_2[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[7]\,
      I1 => \data_index_2_reg_n_0_[10]\,
      I2 => \data_index_2_reg_n_0_[5]\,
      I3 => \data_index_2_reg_n_0_[8]\,
      O => \data_count_2[15]_i_4_n_0\
    );
\data_count_2[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[2]\,
      I1 => \data_index_2_reg_n_0_[3]\,
      I2 => \data_index_2_reg_n_0_[6]\,
      I3 => \data_index_2_reg_n_0_[15]\,
      I4 => \data_index_2_reg_n_0_[12]\,
      I5 => \data_index_2_reg_n_0_[9]\,
      O => \data_count_2[15]_i_5_n_0\
    );
\data_count_2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[9]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[1]_i_1_n_0\
    );
\data_count_2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[10]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[2]_i_1_n_0\
    );
\data_count_2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[11]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[3]_i_1_n_0\
    );
\data_count_2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[12]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[4]_i_1_n_0\
    );
\data_count_2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[13]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[5]_i_1_n_0\
    );
\data_count_2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[14]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[6]_i_1_n_0\
    );
\data_count_2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[15]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[7]_i_1_n_0\
    );
\data_count_2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[16]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[8]_i_1_n_0\
    );
\data_count_2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[17]\,
      I1 => data_flag_reg_n_0,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[9]_i_1_n_0\
    );
\data_count_2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[0]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[0]\
    );
\data_count_2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[10]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[10]\
    );
\data_count_2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[11]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[11]\
    );
\data_count_2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[12]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[12]\
    );
\data_count_2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[13]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[13]\
    );
\data_count_2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[14]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[14]\
    );
\data_count_2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[15]_i_2_n_0\,
      Q => \data_count_2_reg_n_0_[15]\
    );
\data_count_2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[1]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[1]\
    );
\data_count_2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[2]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[2]\
    );
\data_count_2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[3]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[3]\
    );
\data_count_2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[4]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[4]\
    );
\data_count_2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[5]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[5]\
    );
\data_count_2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[6]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[6]\
    );
\data_count_2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[7]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[7]\
    );
\data_count_2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[8]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[8]\
    );
\data_count_2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_count_2[9]_i_1_n_0\,
      Q => \data_count_2_reg_n_0_[9]\
    );
data_flag_20_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => data0,
      CO(6) => data_flag_20_carry_n_1,
      CO(5) => data_flag_20_carry_n_2,
      CO(4) => data_flag_20_carry_n_3,
      CO(3) => data_flag_20_carry_n_4,
      CO(2) => data_flag_20_carry_n_5,
      CO(1) => data_flag_20_carry_n_6,
      CO(0) => data_flag_20_carry_n_7,
      DI(7) => data_flag_20_carry_i_1_n_0,
      DI(6) => data_flag_20_carry_i_2_n_0,
      DI(5) => data_flag_20_carry_i_3_n_0,
      DI(4) => data_flag_20_carry_i_4_n_0,
      DI(3) => data_flag_20_carry_i_5_n_0,
      DI(2) => data_flag_20_carry_i_6_n_0,
      DI(1) => data_flag_20_carry_i_7_n_0,
      DI(0) => data_flag_20_carry_i_8_n_0,
      O(7 downto 0) => NLW_data_flag_20_carry_O_UNCONNECTED(7 downto 0),
      S(7) => data_flag_20_carry_i_9_n_0,
      S(6) => data_flag_20_carry_i_10_n_0,
      S(5) => data_flag_20_carry_i_11_n_0,
      S(4) => data_flag_20_carry_i_12_n_0,
      S(3) => data_flag_20_carry_i_13_n_0,
      S(2) => data_flag_20_carry_i_14_n_0,
      S(1) => data_flag_20_carry_i_15_n_0,
      S(0) => data_flag_20_carry_i_16_n_0
    );
data_flag_20_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[15]\,
      I1 => \data_count_2_reg_n_0_[15]\,
      I2 => \data_count_2_reg_n_0_[14]\,
      I3 => \data_index_2_reg_n_0_[14]\,
      O => data_flag_20_carry_i_1_n_0
    );
data_flag_20_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[13]\,
      I1 => \data_index_2_reg_n_0_[13]\,
      I2 => \data_count_2_reg_n_0_[12]\,
      I3 => \data_index_2_reg_n_0_[12]\,
      O => data_flag_20_carry_i_10_n_0
    );
data_flag_20_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[11]\,
      I1 => \data_index_2_reg_n_0_[11]\,
      I2 => \data_count_2_reg_n_0_[10]\,
      I3 => \data_index_2_reg_n_0_[10]\,
      O => data_flag_20_carry_i_11_n_0
    );
data_flag_20_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[9]\,
      I1 => \data_index_2_reg_n_0_[9]\,
      I2 => \data_count_2_reg_n_0_[8]\,
      I3 => \data_index_2_reg_n_0_[8]\,
      O => data_flag_20_carry_i_12_n_0
    );
data_flag_20_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[7]\,
      I1 => \data_index_2_reg_n_0_[7]\,
      I2 => \data_count_2_reg_n_0_[6]\,
      I3 => \data_index_2_reg_n_0_[6]\,
      O => data_flag_20_carry_i_13_n_0
    );
data_flag_20_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[5]\,
      I1 => \data_index_2_reg_n_0_[5]\,
      I2 => \data_count_2_reg_n_0_[4]\,
      I3 => \data_index_2_reg_n_0_[4]\,
      O => data_flag_20_carry_i_14_n_0
    );
data_flag_20_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[3]\,
      I1 => \data_index_2_reg_n_0_[3]\,
      I2 => \data_count_2_reg_n_0_[2]\,
      I3 => \data_index_2_reg_n_0_[2]\,
      O => data_flag_20_carry_i_15_n_0
    );
data_flag_20_carry_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[1]\,
      I1 => \data_count_2_reg_n_0_[0]\,
      O => data_flag_20_carry_i_16_n_0
    );
data_flag_20_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[13]\,
      I1 => \data_count_2_reg_n_0_[13]\,
      I2 => \data_count_2_reg_n_0_[12]\,
      I3 => \data_index_2_reg_n_0_[12]\,
      O => data_flag_20_carry_i_2_n_0
    );
data_flag_20_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[11]\,
      I1 => \data_count_2_reg_n_0_[11]\,
      I2 => \data_count_2_reg_n_0_[10]\,
      I3 => \data_index_2_reg_n_0_[10]\,
      O => data_flag_20_carry_i_3_n_0
    );
data_flag_20_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[9]\,
      I1 => \data_count_2_reg_n_0_[9]\,
      I2 => \data_count_2_reg_n_0_[8]\,
      I3 => \data_index_2_reg_n_0_[8]\,
      O => data_flag_20_carry_i_4_n_0
    );
data_flag_20_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[7]\,
      I1 => \data_count_2_reg_n_0_[7]\,
      I2 => \data_count_2_reg_n_0_[6]\,
      I3 => \data_index_2_reg_n_0_[6]\,
      O => data_flag_20_carry_i_5_n_0
    );
data_flag_20_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[5]\,
      I1 => \data_count_2_reg_n_0_[5]\,
      I2 => \data_count_2_reg_n_0_[4]\,
      I3 => \data_index_2_reg_n_0_[4]\,
      O => data_flag_20_carry_i_6_n_0
    );
data_flag_20_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[3]\,
      I1 => \data_count_2_reg_n_0_[3]\,
      I2 => \data_count_2_reg_n_0_[2]\,
      I3 => \data_index_2_reg_n_0_[2]\,
      O => data_flag_20_carry_i_7_n_0
    );
data_flag_20_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[0]\,
      I1 => \data_count_2_reg_n_0_[1]\,
      O => data_flag_20_carry_i_8_n_0
    );
data_flag_20_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[15]\,
      I1 => \data_index_2_reg_n_0_[15]\,
      I2 => \data_count_2_reg_n_0_[14]\,
      I3 => \data_index_2_reg_n_0_[14]\,
      O => data_flag_20_carry_i_9_n_0
    );
data_flag_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_count_2[15]_i_3_n_0\,
      I2 => data0,
      O => data_flag_20
    );
data_flag_2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => data_flag_20,
      Q => \^pkt_valid\
    );
data_flag_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => lane_byte_aligned(4),
      I1 => \^head_clk_idx_reg[2]_0\(2),
      I2 => \^head_clk_idx_reg[2]_0\(1),
      I3 => \^head_clk_idx_reg[2]_0\(0),
      I4 => lane_byte_aligned(5),
      O => \head_clk_idx_reg[2]_2\
    );
data_flag_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(2),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      O => \head_clk_idx_reg[2]_1\
    );
data_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => data_flag0,
      Q => data_flag_reg_n_0
    );
\data_id_2[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \data_id_2[7]_i_3_n_0\,
      I1 => \head_word_reg_n_0_[0]\,
      I2 => \data_id_2[7]_i_4_n_0\,
      O => \data_id_2[0]_i_1_n_0\
    );
\data_id_2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \data_id_2[7]_i_3_n_0\,
      I1 => \head_word_reg_n_0_[1]\,
      I2 => \data_id_2[7]_i_4_n_0\,
      O => \data_id_2[1]_i_1_n_0\
    );
\data_id_2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \data_id_2[7]_i_3_n_0\,
      I1 => \head_word_reg_n_0_[2]\,
      I2 => \data_id_2[7]_i_4_n_0\,
      O => \data_id_2[2]_i_1_n_0\
    );
\data_id_2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \data_id_2[7]_i_3_n_0\,
      I1 => p_0_in(0),
      I2 => \data_id_2[7]_i_4_n_0\,
      O => \data_id_2[3]_i_1_n_0\
    );
\data_id_2[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \data_id_2[7]_i_3_n_0\,
      I1 => p_0_in(1),
      I2 => \data_id_2[7]_i_4_n_0\,
      O => \data_id_2[4]_i_1_n_0\
    );
\data_id_2[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \data_id_2[7]_i_3_n_0\,
      I1 => p_0_in(2),
      I2 => \data_id_2[7]_i_4_n_0\,
      O => \data_id_2[5]_i_1_n_0\
    );
\data_id_2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \data_id_2[7]_i_3_n_0\,
      I1 => \head_word_reg_n_0_[6]\,
      I2 => \data_id_2[7]_i_4_n_0\,
      O => \data_id_2[6]_i_1_n_0\
    );
\data_id_2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \data_count_2[15]_i_3_n_0\,
      I1 => data_flag_reg_n_0,
      I2 => data0,
      O => \data_id_2[7]_i_1_n_0\
    );
\data_id_2[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \data_id_2[7]_i_3_n_0\,
      I1 => \head_word_reg_n_0_[7]\,
      I2 => \data_id_2[7]_i_4_n_0\,
      O => \data_id_2[7]_i_2_n_0\
    );
\data_id_2[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002022"
    )
        port map (
      I0 => \data_id_2[7]_i_5_n_0\,
      I1 => \data_id_2[7]_i_6_n_0\,
      I2 => \data_index_2_reg_n_0_[10]\,
      I3 => \data_index_2_reg_n_0_[9]\,
      I4 => \data_index_2_reg_n_0_[8]\,
      I5 => \data_index_2_reg_n_0_[15]\,
      O => \data_id_2[7]_i_3_n_0\
    );
\data_id_2[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBBFB"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[2]\,
      I1 => data_flag_reg_n_0,
      I2 => \data_index_2_reg_n_0_[3]\,
      I3 => \data_index_2_reg_n_0_[4]\,
      I4 => \data_index_2_reg_n_0_[5]\,
      O => \data_id_2[7]_i_4_n_0\
    );
\data_id_2[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[13]\,
      I1 => \data_index_2_reg_n_0_[4]\,
      I2 => \data_index_2_reg_n_0_[14]\,
      I3 => \data_index_2_reg_n_0_[11]\,
      I4 => \data_count_2[15]_i_4_n_0\,
      O => \data_id_2[7]_i_5_n_0\
    );
\data_id_2[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[13]\,
      I1 => \data_index_2_reg_n_0_[12]\,
      I2 => \data_index_2_reg_n_0_[7]\,
      I3 => \data_index_2_reg_n_0_[6]\,
      O => \data_id_2[7]_i_6_n_0\
    );
\data_id_2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_id_2[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\data_id_2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_id_2[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\data_id_2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_id_2[2]_i_1_n_0\,
      Q => \data_id_2_reg_n_0_[2]\
    );
\data_id_2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_id_2[3]_i_1_n_0\,
      Q => \^q\(2)
    );
\data_id_2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_id_2[4]_i_1_n_0\,
      Q => \data_id_2_reg_n_0_[4]\
    );
\data_id_2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_id_2[5]_i_1_n_0\,
      Q => \^q\(3)
    );
\data_id_2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_id_2[6]_i_1_n_0\,
      Q => \^q\(4)
    );
\data_id_2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_id_2[7]_i_2_n_0\,
      Q => \^q\(5)
    );
\data_index_2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_index_2_reg_n_0_[8]\,
      I2 => \data_index_2[11]_i_2_n_0\,
      I3 => \data_index_2_reg_n_0_[9]\,
      I4 => \data_index_2_reg_n_0_[10]\,
      O => p_2_in(10)
    );
\data_index_2[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_index_2_reg_n_0_[9]\,
      I2 => \data_index_2[11]_i_2_n_0\,
      I3 => \data_index_2_reg_n_0_[8]\,
      I4 => \data_index_2_reg_n_0_[10]\,
      I5 => \data_index_2_reg_n_0_[11]\,
      O => p_2_in(11)
    );
\data_index_2[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[6]\,
      I1 => \data_index_2_reg_n_0_[4]\,
      I2 => \data_index_2_reg_n_0_[3]\,
      I3 => \data_index_2_reg_n_0_[2]\,
      I4 => \data_index_2_reg_n_0_[5]\,
      I5 => \data_index_2_reg_n_0_[7]\,
      O => \data_index_2[11]_i_2_n_0\
    );
\data_index_2[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_index_2[12]_i_2_n_0\,
      I2 => \data_index_2_reg_n_0_[12]\,
      O => p_2_in(12)
    );
\data_index_2[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[10]\,
      I1 => \data_index_2_reg_n_0_[8]\,
      I2 => \data_index_2[11]_i_2_n_0\,
      I3 => \data_index_2_reg_n_0_[9]\,
      I4 => \data_index_2_reg_n_0_[11]\,
      O => \data_index_2[12]_i_2_n_0\
    );
\data_index_2[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_index_2[15]_i_3_n_0\,
      I2 => \data_index_2_reg_n_0_[13]\,
      O => p_2_in(13)
    );
\data_index_2[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_index_2_reg_n_0_[13]\,
      I2 => \data_index_2[15]_i_3_n_0\,
      I3 => \data_index_2_reg_n_0_[14]\,
      O => p_2_in(14)
    );
\data_index_2[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \data_count_2[15]_i_3_n_0\,
      I1 => data_flag_reg_n_0,
      I2 => data0,
      O => \data_index_2[15]_i_1_n_0\
    );
\data_index_2[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF400000"
    )
        port map (
      I0 => \data_index_2[15]_i_3_n_0\,
      I1 => \data_index_2_reg_n_0_[13]\,
      I2 => \data_index_2_reg_n_0_[14]\,
      I3 => \data_index_2_reg_n_0_[15]\,
      I4 => data_flag_reg_n_0,
      O => \data_index_2[15]_i_2_n_0\
    );
\data_index_2[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[11]\,
      I1 => \data_index_2_reg_n_0_[9]\,
      I2 => \data_index_2[11]_i_2_n_0\,
      I3 => \data_index_2_reg_n_0_[8]\,
      I4 => \data_index_2_reg_n_0_[10]\,
      I5 => \data_index_2_reg_n_0_[12]\,
      O => \data_index_2[15]_i_3_n_0\
    );
\data_index_2[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_index_2_reg_n_0_[2]\,
      O => p_2_in(2)
    );
\data_index_2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[2]\,
      I1 => \data_index_2_reg_n_0_[3]\,
      I2 => data_flag_reg_n_0,
      O => \data_index_2[3]_i_1_n_0\
    );
\data_index_2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_index_2_reg_n_0_[3]\,
      I2 => \data_index_2_reg_n_0_[2]\,
      I3 => \data_index_2_reg_n_0_[4]\,
      O => p_2_in(4)
    );
\data_index_2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_index_2_reg_n_0_[2]\,
      I2 => \data_index_2_reg_n_0_[3]\,
      I3 => \data_index_2_reg_n_0_[4]\,
      I4 => \data_index_2_reg_n_0_[5]\,
      O => p_2_in(5)
    );
\data_index_2[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_index_2_reg_n_0_[4]\,
      I2 => \data_index_2_reg_n_0_[3]\,
      I3 => \data_index_2_reg_n_0_[2]\,
      I4 => \data_index_2_reg_n_0_[5]\,
      I5 => \data_index_2_reg_n_0_[6]\,
      O => p_2_in(6)
    );
\data_index_2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_index_2[7]_i_2_n_0\,
      I2 => \data_index_2_reg_n_0_[7]\,
      O => p_2_in(7)
    );
\data_index_2[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \data_index_2_reg_n_0_[5]\,
      I1 => \data_index_2_reg_n_0_[2]\,
      I2 => \data_index_2_reg_n_0_[3]\,
      I3 => \data_index_2_reg_n_0_[4]\,
      I4 => \data_index_2_reg_n_0_[6]\,
      O => \data_index_2[7]_i_2_n_0\
    );
\data_index_2[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_index_2[11]_i_2_n_0\,
      I2 => \data_index_2_reg_n_0_[8]\,
      O => p_2_in(8)
    );
\data_index_2[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \data_index_2[11]_i_2_n_0\,
      I2 => \data_index_2_reg_n_0_[8]\,
      I3 => \data_index_2_reg_n_0_[9]\,
      O => p_2_in(9)
    );
\data_index_2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => p_2_in(10),
      Q => \data_index_2_reg_n_0_[10]\
    );
\data_index_2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => p_2_in(11),
      Q => \data_index_2_reg_n_0_[11]\
    );
\data_index_2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => p_2_in(12),
      Q => \data_index_2_reg_n_0_[12]\
    );
\data_index_2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => p_2_in(13),
      Q => \data_index_2_reg_n_0_[13]\
    );
\data_index_2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => p_2_in(14),
      Q => \data_index_2_reg_n_0_[14]\
    );
\data_index_2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_index_2[15]_i_2_n_0\,
      Q => \data_index_2_reg_n_0_[15]\
    );
\data_index_2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => p_2_in(2),
      Q => \data_index_2_reg_n_0_[2]\
    );
\data_index_2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => \data_index_2[3]_i_1_n_0\,
      Q => \data_index_2_reg_n_0_[3]\
    );
\data_index_2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => p_2_in(4),
      Q => \data_index_2_reg_n_0_[4]\
    );
\data_index_2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => p_2_in(5),
      Q => \data_index_2_reg_n_0_[5]\
    );
\data_index_2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => p_2_in(6),
      Q => \data_index_2_reg_n_0_[6]\
    );
\data_index_2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => p_2_in(7),
      Q => \data_index_2_reg_n_0_[7]\
    );
\data_index_2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => p_2_in(8),
      Q => \data_index_2_reg_n_0_[8]\
    );
\data_index_2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_reg[0]_0\,
      D => p_2_in(9),
      Q => \data_index_2_reg_n_0_[9]\
    );
\di_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^pkt_valid\,
      I1 => \^data_id_2_reg[4]_0\,
      I2 => \^q\(4),
      O => data_flag_2_reg_0(1)
    );
\di_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^pkt_valid\,
      I1 => \^data_id_2_reg[4]_0\,
      I2 => \di_reg_reg[3]\(0),
      O => E(0)
    );
\di_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^pkt_valid\,
      I1 => \^data_id_2_reg[4]_0\,
      I2 => \^q\(5),
      O => data_flag_2_reg_0(2)
    );
\head_clk_idx[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(0),
      I1 => \^head_clk_idx_reg[2]_0\(1),
      I2 => \head_clk_idx_reg[1]_1\,
      O => p_1_in(1)
    );
\head_clk_idx[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \head_clk_idx_reg[1]_1\,
      I1 => \^head_clk_idx_reg[2]_0\(2),
      I2 => \^head_clk_idx_reg[2]_0\(0),
      I3 => \^head_clk_idx_reg[2]_0\(1),
      O => p_1_in(2)
    );
\head_clk_idx_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => \head_clk_idx_reg[0]_0\(0),
      Q => \^head_clk_idx_reg[2]_0\(0)
    );
\head_clk_idx_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => p_1_in(1),
      Q => \^head_clk_idx_reg[2]_0\(1)
    );
\head_clk_idx_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_reg[0]_0\,
      D => p_1_in(2),
      Q => \^head_clk_idx_reg[2]_0\(2)
    );
\head_word[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(1),
      I1 => \head_clk_idx_reg[1]_1\,
      I2 => \^head_clk_idx_reg[2]_0\(2),
      I3 => \^head_clk_idx_reg[2]_0\(0),
      O => head_word0
    );
\head_word[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^head_clk_idx_reg[2]_0\(1),
      I1 => \^head_clk_idx_reg[2]_0\(0),
      I2 => \^head_clk_idx_reg[2]_0\(2),
      O => \head_clk_idx_reg[1]_0\
    );
\head_word_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(0),
      Q => \head_word_reg_n_0_[0]\
    );
\head_word_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(10),
      Q => \head_word_reg_n_0_[10]\
    );
\head_word_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(11),
      Q => \head_word_reg_n_0_[11]\
    );
\head_word_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(12),
      Q => \head_word_reg_n_0_[12]\
    );
\head_word_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(13),
      Q => \head_word_reg_n_0_[13]\
    );
\head_word_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(14),
      Q => \head_word_reg_n_0_[14]\
    );
\head_word_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(15),
      Q => \head_word_reg_n_0_[15]\
    );
\head_word_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(16),
      Q => \head_word_reg_n_0_[16]\
    );
\head_word_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(17),
      Q => \head_word_reg_n_0_[17]\
    );
\head_word_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(18),
      Q => \head_word_reg_n_0_[18]\
    );
\head_word_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(19),
      Q => \head_word_reg_n_0_[19]\
    );
\head_word_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(1),
      Q => \head_word_reg_n_0_[1]\
    );
\head_word_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(20),
      Q => \head_word_reg_n_0_[20]\
    );
\head_word_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(21),
      Q => \head_word_reg_n_0_[21]\
    );
\head_word_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(22),
      Q => \head_word_reg_n_0_[22]\
    );
\head_word_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(23),
      Q => \head_word_reg_n_0_[23]\
    );
\head_word_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(2),
      Q => \head_word_reg_n_0_[2]\
    );
\head_word_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(3),
      Q => p_0_in(0)
    );
\head_word_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(4),
      Q => p_0_in(1)
    );
\head_word_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(5),
      Q => p_0_in(2)
    );
\head_word_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(6),
      Q => \head_word_reg_n_0_[6]\
    );
\head_word_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(7),
      Q => \head_word_reg_n_0_[7]\
    );
\head_word_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(8),
      Q => \head_word_reg_n_0_[8]\
    );
\head_word_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_reg[0]_0\,
      D => \head_word_reg[23]_0\(9),
      Q => \head_word_reg_n_0_[9]\
    );
\last_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(0),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(0)
    );
\last_data[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(10),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(10)
    );
\last_data[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(11),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(11)
    );
\last_data[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(12),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(12)
    );
\last_data[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(13),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(13)
    );
\last_data[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(14),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(14)
    );
\last_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(15),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(15)
    );
\last_data[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(16),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(16)
    );
\last_data[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(17),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(17)
    );
\last_data[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(18),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(18)
    );
\last_data[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(19),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(19)
    );
\last_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(1),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(1)
    );
\last_data[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(20),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(20)
    );
\last_data[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(21),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(21)
    );
\last_data[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(22),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(22)
    );
\last_data[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(23),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(23)
    );
\last_data[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(24),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(24)
    );
\last_data[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(25),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(25)
    );
\last_data[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(26),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(26)
    );
\last_data[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(27),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(27)
    );
\last_data[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(28),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(28)
    );
\last_data[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(29),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(29)
    );
\last_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(2),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(2)
    );
\last_data[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(30),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(30)
    );
\last_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(31),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(31)
    );
\last_data[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \^pkt_valid\,
      I1 => \^data_id_2_reg[4]_0\,
      I2 => \di_reg_reg[3]\(0),
      O => \^data_flag_2_reg_1\
    );
\last_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(3),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(3)
    );
\last_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(4),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(4)
    );
\last_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(5),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(5)
    );
\last_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(6),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(6)
    );
\last_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(7),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(7)
    );
\last_data[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(8),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(8)
    );
\last_data[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(9),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[31]_1\(9)
    );
\pixel_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => pixel_enable3_out,
      I1 => \pixel_data[10]_i_2_n_0\,
      I2 => \pixel_data_reg[11]\(0),
      I3 => \pixel_data[10]_i_3_n_0\,
      O => data_flag_2_reg_2(0)
    );
\pixel_data[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(18),
      I1 => \pixel_data_reg[31]\(12),
      I2 => \pixel_data_reg[11]\(1),
      I3 => \^data_byte_2_reg[31]_0\(2),
      I4 => \pixel_data_reg[11]\(2),
      I5 => \pixel_data_reg[31]\(0),
      O => \pixel_data[10]_i_2_n_0\
    );
\pixel_data[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(26),
      I1 => \pixel_data_reg[31]\(18),
      I2 => \pixel_data_reg[11]\(1),
      I3 => \^data_byte_2_reg[31]_0\(10),
      I4 => \pixel_data_reg[11]\(2),
      I5 => \pixel_data_reg[31]\(6),
      O => \pixel_data[10]_i_3_n_0\
    );
\pixel_data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => pixel_enable3_out,
      I1 => \pixel_data[11]_i_2_n_0\,
      I2 => \pixel_data_reg[11]\(0),
      I3 => \pixel_data[11]_i_4_n_0\,
      O => data_flag_2_reg_2(1)
    );
\pixel_data[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(19),
      I1 => \pixel_data_reg[31]\(13),
      I2 => \pixel_data_reg[11]\(1),
      I3 => \^data_byte_2_reg[31]_0\(3),
      I4 => \pixel_data_reg[11]\(2),
      I5 => \pixel_data_reg[31]\(1),
      O => \pixel_data[11]_i_2_n_0\
    );
\pixel_data[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(27),
      I1 => \pixel_data_reg[31]\(19),
      I2 => \pixel_data_reg[11]\(1),
      I3 => \^data_byte_2_reg[31]_0\(11),
      I4 => \pixel_data_reg[11]\(2),
      I5 => \pixel_data_reg[31]\(7),
      O => \pixel_data[11]_i_4_n_0\
    );
\pixel_data[17]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(5),
      I1 => last_size_reg(0),
      I2 => \^data_byte_2_reg[31]_0\(13),
      O => \data_byte_2_reg[5]_1\
    );
\pixel_data[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => pixel_enable3_out,
      I1 => \pixel_data[20]_i_2_n_0\,
      I2 => \pixel_data_reg[21]\(0),
      I3 => \pixel_data[20]_i_3_n_0\,
      O => data_flag_2_reg_2(2)
    );
\pixel_data[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(20),
      I1 => \pixel_data_reg[31]\(14),
      I2 => \pixel_data_reg[21]\(1),
      I3 => \^data_byte_2_reg[31]_0\(4),
      I4 => \pixel_data_reg[21]\(2),
      I5 => \pixel_data_reg[31]\(2),
      O => \pixel_data[20]_i_2_n_0\
    );
\pixel_data[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(28),
      I1 => \pixel_data_reg[31]\(20),
      I2 => \pixel_data_reg[21]\(1),
      I3 => \^data_byte_2_reg[31]_0\(12),
      I4 => \pixel_data_reg[21]\(2),
      I5 => \pixel_data_reg[31]\(8),
      O => \pixel_data[20]_i_3_n_0\
    );
\pixel_data[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => pixel_enable3_out,
      I1 => \pixel_data[21]_i_2_n_0\,
      I2 => \pixel_data_reg[21]\(0),
      I3 => \pixel_data[21]_i_4_n_0\,
      O => data_flag_2_reg_2(3)
    );
\pixel_data[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(21),
      I1 => \pixel_data_reg[31]\(15),
      I2 => \pixel_data_reg[21]\(1),
      I3 => \^data_byte_2_reg[31]_0\(5),
      I4 => \pixel_data_reg[21]\(2),
      I5 => \pixel_data_reg[31]\(3),
      O => \pixel_data[21]_i_2_n_0\
    );
\pixel_data[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(29),
      I1 => \pixel_data_reg[31]\(21),
      I2 => \pixel_data_reg[21]\(1),
      I3 => \^data_byte_2_reg[31]_0\(13),
      I4 => \pixel_data_reg[21]\(2),
      I5 => \pixel_data_reg[31]\(9),
      O => \pixel_data[21]_i_4_n_0\
    );
\pixel_data[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => pixel_enable3_out,
      I1 => \pixel_data[30]_i_2_n_0\,
      I2 => O(0),
      I3 => \pixel_data[30]_i_3_n_0\,
      O => data_flag_2_reg_2(4)
    );
\pixel_data[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(22),
      I1 => \pixel_data_reg[31]\(16),
      I2 => O(1),
      I3 => \^data_byte_2_reg[31]_0\(6),
      I4 => O(2),
      I5 => \pixel_data_reg[31]\(4),
      O => \pixel_data[30]_i_2_n_0\
    );
\pixel_data[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(30),
      I1 => \pixel_data_reg[31]\(22),
      I2 => O(1),
      I3 => \^data_byte_2_reg[31]_0\(14),
      I4 => O(2),
      I5 => \pixel_data_reg[31]\(10),
      O => \pixel_data[30]_i_3_n_0\
    );
\pixel_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => pixel_enable3_out,
      I1 => \pixel_data[31]_i_2_n_0\,
      I2 => O(0),
      I3 => \pixel_data[31]_i_4_n_0\,
      O => data_flag_2_reg_2(5)
    );
\pixel_data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(23),
      I1 => \pixel_data_reg[31]\(17),
      I2 => O(1),
      I3 => \^data_byte_2_reg[31]_0\(7),
      I4 => O(2),
      I5 => \pixel_data_reg[31]\(5),
      O => \pixel_data[31]_i_2_n_0\
    );
\pixel_data[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(31),
      I1 => \pixel_data_reg[31]\(23),
      I2 => O(1),
      I3 => \^data_byte_2_reg[31]_0\(15),
      I4 => O(2),
      I5 => \pixel_data_reg[31]\(11),
      O => \pixel_data[31]_i_4_n_0\
    );
\pixel_data[32]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(0),
      I1 => \^data_byte_2_reg[31]_0\(8),
      I2 => last_size_reg(1),
      I3 => \^data_byte_2_reg[31]_0\(16),
      I4 => last_size_reg(0),
      I5 => \^data_byte_2_reg[31]_0\(24),
      O => \data_byte_2_reg[0]_0\
    );
\pixel_data[33]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(1),
      I1 => \^data_byte_2_reg[31]_0\(9),
      I2 => last_size_reg(1),
      I3 => \^data_byte_2_reg[31]_0\(17),
      I4 => last_size_reg(0),
      I5 => \^data_byte_2_reg[31]_0\(25),
      O => \data_byte_2_reg[1]_0\
    );
\pixel_data[34]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(2),
      I1 => \^data_byte_2_reg[31]_0\(10),
      I2 => last_size_reg(1),
      I3 => \^data_byte_2_reg[31]_0\(18),
      I4 => last_size_reg(0),
      I5 => \^data_byte_2_reg[31]_0\(26),
      O => \data_byte_2_reg[2]_0\
    );
\pixel_data[35]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(3),
      I1 => \^data_byte_2_reg[31]_0\(11),
      I2 => last_size_reg(1),
      I3 => \^data_byte_2_reg[31]_0\(19),
      I4 => last_size_reg(0),
      I5 => \^data_byte_2_reg[31]_0\(27),
      O => \data_byte_2_reg[3]_0\
    );
\pixel_data[36]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF47FF47FF33FFFF"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(4),
      I1 => last_size_reg(0),
      I2 => \^data_byte_2_reg[31]_0\(12),
      I3 => last_size_reg(2),
      I4 => \^data_byte_2_reg[31]_0\(20),
      I5 => last_size_reg(1),
      O => \data_byte_2_reg[4]_0\
    );
\pixel_data[37]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(5),
      I1 => \^data_byte_2_reg[31]_0\(13),
      I2 => last_size_reg(1),
      I3 => \^data_byte_2_reg[31]_0\(21),
      I4 => last_size_reg(0),
      I5 => \^data_byte_2_reg[31]_0\(29),
      O => \data_byte_2_reg[5]_0\
    );
\pixel_data[38]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF47FF47FF33FFFF"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(6),
      I1 => last_size_reg(0),
      I2 => \^data_byte_2_reg[31]_0\(14),
      I3 => last_size_reg(2),
      I4 => \^data_byte_2_reg[31]_0\(22),
      I5 => last_size_reg(1),
      O => \data_byte_2_reg[6]_0\
    );
\pixel_data[39]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^data_byte_2_reg[31]_0\(7),
      I1 => \^data_byte_2_reg[31]_0\(15),
      I2 => last_size_reg(1),
      I3 => \^data_byte_2_reg[31]_0\(23),
      I4 => last_size_reg(0),
      I5 => \^data_byte_2_reg[31]_0\(31),
      O => \data_byte_2_reg[7]_0\
    );
\ready_delay[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^pkt_valid\,
      I1 => \^data_id_2_reg[4]_0\,
      O => data_flag_2_reg_0(0)
    );
\ready_delay[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \data_id_2_reg_n_0_[4]\,
      I1 => \^q\(2),
      I2 => \data_id_2_reg_n_0_[2]\,
      I3 => \^q\(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \^data_id_2_reg[4]_0\
    );
\reg_pix_data_enable_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F1E0F1E0E0E0E0"
    )
        port map (
      I0 => raw10_pix_valid,
      I1 => \^data_id_2_reg[4]_0\,
      I2 => raw10_pix_data_enable,
      I3 => reg_pix_data_enable_i_2_n_0,
      I4 => reg_pix_data_enable_i_3_n_0,
      I5 => \^pkt_valid\,
      O => reg_pix_valid_reg_0
    );
reg_pix_data_enable_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[7]\,
      I1 => \data_count_2_reg_n_0_[9]\,
      I2 => \data_count_2_reg_n_0_[11]\,
      I3 => \data_count_2_reg_n_0_[10]\,
      I4 => reg_pix_data_enable_i_4_n_0,
      O => reg_pix_data_enable_i_2_n_0
    );
reg_pix_data_enable_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[4]\,
      I1 => \data_count_2_reg_n_0_[14]\,
      I2 => \data_count_2_reg_n_0_[5]\,
      I3 => \data_count_2_reg_n_0_[6]\,
      I4 => reg_pix_data_enable_i_5_n_0,
      O => reg_pix_data_enable_i_3_n_0
    );
reg_pix_data_enable_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[0]\,
      I1 => \data_count_2_reg_n_0_[1]\,
      I2 => \data_count_2_reg_n_0_[13]\,
      I3 => \data_count_2_reg_n_0_[2]\,
      O => reg_pix_data_enable_i_4_n_0
    );
reg_pix_data_enable_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \data_count_2_reg_n_0_[15]\,
      I1 => \data_count_2_reg_n_0_[3]\,
      I2 => \data_count_2_reg_n_0_[12]\,
      I3 => \data_count_2_reg_n_0_[8]\,
      O => reg_pix_data_enable_i_5_n_0
    );
\reg_pix_di[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => raw10_pix_valid,
      I1 => \^data_id_2_reg[4]_0\,
      I2 => \data_id_2_reg_n_0_[2]\,
      O => D(0)
    );
\reg_pix_di[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => raw10_pix_valid,
      I1 => \^data_id_2_reg[4]_0\,
      I2 => \data_id_2_reg_n_0_[4]\,
      O => D(1)
    );
\reg_pix_valid_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => raw10_pix_valid,
      I1 => \^data_id_2_reg[4]_0\,
      I2 => \^pkt_valid\,
      O => reg_pix_valid_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__csi2_pixel_to_video\ is
  port (
    locked_reg_0 : out STD_LOGIC;
    reg_ce_reg_0 : out STD_LOGIC;
    reg_active_video_reg_0 : out STD_LOGIC;
    reg_vsync_reg_0 : out STD_LOGIC;
    \pix_cnt_reg[12]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    reg_active_video_reg_1 : out STD_LOGIC;
    \line_cnt_reg[14]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pre_active_video_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mipi_width0__0\ : out STD_LOGIC;
    \axi_araddr_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    reg_ce_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    vid_data : out STD_LOGIC_VECTOR ( 39 downto 0 );
    \reg_di_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_byte : in STD_LOGIC;
    \reg_pix_data_reg[39]_0\ : in STD_LOGIC;
    pix_data_enable : in STD_LOGIC;
    pix_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \pix_cnt_reg[13]\ : in STD_LOGIC;
    \pix_cnt_reg[8]\ : in STD_LOGIC;
    pre_active_video : in STD_LOGIC;
    \line_cnt_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \line_cnt_reg[6]\ : in STD_LOGIC;
    \line_cnt_reg[11]\ : in STD_LOGIC;
    pre_vsync : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    p_1_in_13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \line_cnt_reg[15]_0\ : in STD_LOGIC;
    \line_cnt_reg[10]\ : in STD_LOGIC;
    \line_cnt_reg[5]\ : in STD_LOGIC;
    \reg_pix_di_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_pix_data_reg[39]_1\ : in STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__csi2_pixel_to_video\ : entity is "_csi2_pixel_to_video";
end \design_1_mipi_rx_to_video_0_0__csi2_pixel_to_video\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__csi2_pixel_to_video\ is
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt1__1\ : STD_LOGIC;
  signal \^locked_reg_0\ : STD_LOGIC;
  signal locked_vc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_active_video0 : STD_LOGIC;
  signal \^reg_active_video_reg_0\ : STD_LOGIC;
  signal \^reg_active_video_reg_1\ : STD_LOGIC;
  signal reg_ce_i_1_n_0 : STD_LOGIC;
  signal reg_ce_i_3_n_0 : STD_LOGIC;
  signal \^reg_ce_reg_0\ : STD_LOGIC;
  signal \reg_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[32]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[33]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[34]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[35]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[36]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[37]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[38]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[39]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[9]_i_1_n_0\ : STD_LOGIC;
  signal reg_pix_data : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal reg_pix_data_enable : STD_LOGIC;
  signal reg_pix_di : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \reg_pix_di_reg_n_0_[0]\ : STD_LOGIC;
  signal reg_pix_valid : STD_LOGIC;
  signal reg_vsync0 : STD_LOGIC;
  signal \reg_vsync1__0\ : STD_LOGIC;
  signal reg_vsync_i_1_n_0 : STD_LOGIC;
  signal reg_vsync_i_3_n_0 : STD_LOGIC;
  signal reg_vsync_i_4_n_0 : STD_LOGIC;
  signal \^reg_vsync_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \line_cnt[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \line_cnt[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \line_cnt[11]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \line_cnt[12]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \line_cnt[14]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \line_cnt[15]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \line_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \line_cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \line_cnt[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \line_cnt[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \line_cnt[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mipi_di[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mipi_width[15]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pix_cnt[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of reg_active_video_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of reg_ce_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg_data[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg_data[10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg_data[11]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reg_data[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reg_data[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg_data[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg_data[15]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reg_data[16]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reg_data[17]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg_data[18]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg_data[19]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg_data[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg_data[20]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg_data[21]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reg_data[22]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reg_data[23]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reg_data[24]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reg_data[25]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg_data[26]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg_data[27]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reg_data[28]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reg_data[29]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reg_data[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg_data[30]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reg_data[31]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reg_data[32]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reg_data[33]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg_data[34]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg_data[35]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reg_data[36]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reg_data[37]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \reg_data[38]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \reg_data[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_data[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_data[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg_data[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg_data[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_data[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_data[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg_di[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_di[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_di[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg_di[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg_di[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg_di[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of reg_vsync_i_4 : label is "soft_lutpair3";
begin
  locked_reg_0 <= \^locked_reg_0\;
  reg_active_video_reg_0 <= \^reg_active_video_reg_0\;
  reg_active_video_reg_1 <= \^reg_active_video_reg_1\;
  reg_ce_reg_0 <= \^reg_ce_reg_0\;
  reg_vsync_reg_0 <= \^reg_vsync_reg_0\;
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata_reg[0]\,
      I2 => \axi_rdata_reg[0]_0\(3),
      I3 => \axi_rdata_reg[0]_0\(4),
      I4 => \axi_rdata_reg[0]_0\(2),
      O => \axi_araddr_reg[5]\(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \^locked_reg_0\,
      I1 => p_1_in_13(0),
      I2 => \axi_rdata_reg[0]_0\(0),
      I3 => \axi_rdata_reg[0]_0\(1),
      I4 => \axi_rdata_reg[0]_1\(0),
      I5 => p_2_in(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \^reg_vsync_reg_0\,
      I1 => pre_vsync,
      I2 => \line_cnt_reg[15]\(0),
      O => \line_cnt_reg[14]\(0)
    );
\line_cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"458A"
    )
        port map (
      I0 => \line_cnt_reg[10]\,
      I1 => \^reg_vsync_reg_0\,
      I2 => pre_vsync,
      I3 => \line_cnt_reg[15]\(10),
      O => \line_cnt_reg[14]\(10)
    );
\line_cnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"458A"
    )
        port map (
      I0 => \line_cnt_reg[11]\,
      I1 => \^reg_vsync_reg_0\,
      I2 => pre_vsync,
      I3 => \line_cnt_reg[15]\(11),
      O => \line_cnt_reg[14]\(11)
    );
\line_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70778088"
    )
        port map (
      I0 => \line_cnt_reg[15]\(11),
      I1 => \line_cnt_reg[11]\,
      I2 => \^reg_vsync_reg_0\,
      I3 => pre_vsync,
      I4 => \line_cnt_reg[15]\(12),
      O => \line_cnt_reg[14]\(12)
    );
\line_cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \line_cnt_reg[15]\(12),
      I1 => \line_cnt_reg[11]\,
      I2 => \line_cnt_reg[15]\(11),
      I3 => \line_cnt1__1\,
      I4 => \line_cnt_reg[15]\(13),
      O => \line_cnt_reg[14]\(13)
    );
\line_cnt[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \line_cnt_reg[15]\(13),
      I1 => \line_cnt_reg[15]\(11),
      I2 => \line_cnt_reg[11]\,
      I3 => \line_cnt_reg[15]\(12),
      I4 => \line_cnt1__1\,
      I5 => \line_cnt_reg[15]\(14),
      O => \line_cnt_reg[14]\(14)
    );
\line_cnt[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^reg_ce_reg_0\,
      I1 => pre_vsync,
      I2 => \^reg_vsync_reg_0\,
      O => \line_cnt1__1\
    );
\line_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F220000"
    )
        port map (
      I0 => pre_active_video,
      I1 => \^reg_active_video_reg_0\,
      I2 => \^reg_vsync_reg_0\,
      I3 => pre_vsync,
      I4 => \^reg_ce_reg_0\,
      O => pre_active_video_reg(0)
    );
\line_cnt[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70778088"
    )
        port map (
      I0 => \line_cnt_reg[15]\(14),
      I1 => \line_cnt_reg[15]_0\,
      I2 => \^reg_vsync_reg_0\,
      I3 => pre_vsync,
      I4 => \line_cnt_reg[15]\(15),
      O => \line_cnt_reg[14]\(15)
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DD0"
    )
        port map (
      I0 => pre_vsync,
      I1 => \^reg_vsync_reg_0\,
      I2 => \line_cnt_reg[15]\(0),
      I3 => \line_cnt_reg[15]\(1),
      O => \line_cnt_reg[14]\(1)
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0DDDD000"
    )
        port map (
      I0 => pre_vsync,
      I1 => \^reg_vsync_reg_0\,
      I2 => \line_cnt_reg[15]\(0),
      I3 => \line_cnt_reg[15]\(1),
      I4 => \line_cnt_reg[15]\(2),
      O => \line_cnt_reg[14]\(2)
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \line_cnt_reg[15]\(2),
      I1 => \line_cnt_reg[15]\(0),
      I2 => \line_cnt_reg[15]\(1),
      I3 => \line_cnt1__1\,
      I4 => \line_cnt_reg[15]\(3),
      O => \line_cnt_reg[14]\(3)
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \line_cnt_reg[15]\(3),
      I1 => \line_cnt_reg[15]\(1),
      I2 => \line_cnt_reg[15]\(0),
      I3 => \line_cnt_reg[15]\(2),
      I4 => \line_cnt1__1\,
      I5 => \line_cnt_reg[15]\(4),
      O => \line_cnt_reg[14]\(4)
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"458A"
    )
        port map (
      I0 => \line_cnt_reg[5]\,
      I1 => \^reg_vsync_reg_0\,
      I2 => pre_vsync,
      I3 => \line_cnt_reg[15]\(5),
      O => \line_cnt_reg[14]\(5)
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"458A"
    )
        port map (
      I0 => \line_cnt_reg[6]\,
      I1 => \^reg_vsync_reg_0\,
      I2 => pre_vsync,
      I3 => \line_cnt_reg[15]\(6),
      O => \line_cnt_reg[14]\(6)
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70778088"
    )
        port map (
      I0 => \line_cnt_reg[15]\(6),
      I1 => \line_cnt_reg[6]\,
      I2 => \^reg_vsync_reg_0\,
      I3 => pre_vsync,
      I4 => \line_cnt_reg[15]\(7),
      O => \line_cnt_reg[14]\(7)
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \line_cnt_reg[15]\(7),
      I1 => \line_cnt_reg[6]\,
      I2 => \line_cnt_reg[15]\(6),
      I3 => \line_cnt1__1\,
      I4 => \line_cnt_reg[15]\(8),
      O => \line_cnt_reg[14]\(8)
    );
\line_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \line_cnt_reg[15]\(8),
      I1 => \line_cnt_reg[15]\(6),
      I2 => \line_cnt_reg[6]\,
      I3 => \line_cnt_reg[15]\(7),
      I4 => \line_cnt1__1\,
      I5 => \line_cnt_reg[15]\(9),
      O => \line_cnt_reg[14]\(9)
    );
locked_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => \reg_pix_data_reg[39]_0\,
      D => '1',
      Q => \^locked_reg_0\
    );
\locked_vc_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_di_reg[7]_0\(6),
      Q => locked_vc(0)
    );
\locked_vc_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_di_reg[7]_0\(7),
      Q => locked_vc(1)
    );
\mipi_di[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^reg_active_video_reg_0\,
      I1 => \^reg_ce_reg_0\,
      I2 => pre_active_video,
      O => \^reg_active_video_reg_1\
    );
\mipi_width[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => pre_vsync,
      I1 => \^reg_ce_reg_0\,
      I2 => \^reg_vsync_reg_0\,
      O => \mipi_width0__0\
    );
\pix_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_ce_reg_0\,
      I1 => \^reg_active_video_reg_0\,
      O => reg_ce_reg_1(0)
    );
\pix_cnt[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(10),
      I1 => \pix_cnt_reg[13]\,
      I2 => Q(9),
      I3 => \^reg_active_video_reg_1\,
      I4 => Q(11),
      O => \pix_cnt_reg[12]\(4)
    );
\pix_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^reg_active_video_reg_1\,
      I4 => Q(3),
      O => \pix_cnt_reg[12]\(0)
    );
\pix_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^reg_active_video_reg_1\,
      I5 => Q(4),
      O => \pix_cnt_reg[12]\(1)
    );
\pix_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(6),
      I1 => \pix_cnt_reg[8]\,
      I2 => Q(5),
      I3 => \^reg_active_video_reg_1\,
      I4 => Q(7),
      O => \pix_cnt_reg[12]\(2)
    );
\pix_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => Q(7),
      I1 => Q(5),
      I2 => \pix_cnt_reg[8]\,
      I3 => Q(6),
      I4 => \^reg_active_video_reg_1\,
      I5 => Q(8),
      O => \pix_cnt_reg[12]\(3)
    );
reg_active_video_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006E"
    )
        port map (
      I0 => reg_pix_di(5),
      I1 => reg_pix_di(4),
      I2 => reg_pix_di(3),
      I3 => reg_ce_i_3_n_0,
      O => reg_active_video0
    );
reg_active_video_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => reg_active_video0,
      Q => \^reg_active_video_reg_0\
    );
reg_ce_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF83"
    )
        port map (
      I0 => reg_pix_di(3),
      I1 => reg_pix_di(4),
      I2 => reg_pix_di(5),
      I3 => reg_pix_data_enable,
      I4 => reg_ce_i_3_n_0,
      O => reg_ce_i_1_n_0
    );
reg_ce_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFFFFFF"
    )
        port map (
      I0 => reg_pix_di(7),
      I1 => locked_vc(1),
      I2 => locked_vc(0),
      I3 => reg_pix_di(6),
      I4 => reg_pix_valid,
      I5 => \^locked_reg_0\,
      O => reg_ce_i_3_n_0
    );
reg_ce_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_hs_byte,
      CE => '1',
      D => reg_ce_i_1_n_0,
      PRE => \reg_pix_data_reg[39]_0\,
      Q => \^reg_ce_reg_0\
    );
\reg_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(0),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[0]_i_1_n_0\
    );
\reg_data[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(10),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[10]_i_1_n_0\
    );
\reg_data[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(11),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[11]_i_1_n_0\
    );
\reg_data[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(12),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[12]_i_1_n_0\
    );
\reg_data[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(13),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[13]_i_1_n_0\
    );
\reg_data[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(14),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[14]_i_1_n_0\
    );
\reg_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(15),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[15]_i_1_n_0\
    );
\reg_data[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(16),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[16]_i_1_n_0\
    );
\reg_data[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(17),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[17]_i_1_n_0\
    );
\reg_data[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(18),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[18]_i_1_n_0\
    );
\reg_data[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(19),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[19]_i_1_n_0\
    );
\reg_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(1),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[1]_i_1_n_0\
    );
\reg_data[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(20),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[20]_i_1_n_0\
    );
\reg_data[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(21),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[21]_i_1_n_0\
    );
\reg_data[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(22),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[22]_i_1_n_0\
    );
\reg_data[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(23),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[23]_i_1_n_0\
    );
\reg_data[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(24),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[24]_i_1_n_0\
    );
\reg_data[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(25),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[25]_i_1_n_0\
    );
\reg_data[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(26),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[26]_i_1_n_0\
    );
\reg_data[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(27),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[27]_i_1_n_0\
    );
\reg_data[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(28),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[28]_i_1_n_0\
    );
\reg_data[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(29),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[29]_i_1_n_0\
    );
\reg_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(2),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[2]_i_1_n_0\
    );
\reg_data[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(30),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[30]_i_1_n_0\
    );
\reg_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(31),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[31]_i_1_n_0\
    );
\reg_data[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(32),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[32]_i_1_n_0\
    );
\reg_data[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(33),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[33]_i_1_n_0\
    );
\reg_data[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(34),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[34]_i_1_n_0\
    );
\reg_data[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(35),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[35]_i_1_n_0\
    );
\reg_data[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(36),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[36]_i_1_n_0\
    );
\reg_data[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(37),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[37]_i_1_n_0\
    );
\reg_data[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(38),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[38]_i_1_n_0\
    );
\reg_data[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(39),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[39]_i_1_n_0\
    );
\reg_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(3),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[3]_i_1_n_0\
    );
\reg_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(4),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[4]_i_1_n_0\
    );
\reg_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(5),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[5]_i_1_n_0\
    );
\reg_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(6),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[6]_i_1_n_0\
    );
\reg_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(7),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[7]_i_1_n_0\
    );
\reg_data[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(8),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[8]_i_1_n_0\
    );
\reg_data[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(9),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[9]_i_1_n_0\
    );
\reg_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[0]_i_1_n_0\,
      Q => vid_data(0)
    );
\reg_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[10]_i_1_n_0\,
      Q => vid_data(10)
    );
\reg_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[11]_i_1_n_0\,
      Q => vid_data(11)
    );
\reg_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[12]_i_1_n_0\,
      Q => vid_data(12)
    );
\reg_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[13]_i_1_n_0\,
      Q => vid_data(13)
    );
\reg_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[14]_i_1_n_0\,
      Q => vid_data(14)
    );
\reg_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[15]_i_1_n_0\,
      Q => vid_data(15)
    );
\reg_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[16]_i_1_n_0\,
      Q => vid_data(16)
    );
\reg_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[17]_i_1_n_0\,
      Q => vid_data(17)
    );
\reg_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[18]_i_1_n_0\,
      Q => vid_data(18)
    );
\reg_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[19]_i_1_n_0\,
      Q => vid_data(19)
    );
\reg_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[1]_i_1_n_0\,
      Q => vid_data(1)
    );
\reg_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[20]_i_1_n_0\,
      Q => vid_data(20)
    );
\reg_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[21]_i_1_n_0\,
      Q => vid_data(21)
    );
\reg_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[22]_i_1_n_0\,
      Q => vid_data(22)
    );
\reg_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[23]_i_1_n_0\,
      Q => vid_data(23)
    );
\reg_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[24]_i_1_n_0\,
      Q => vid_data(24)
    );
\reg_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[25]_i_1_n_0\,
      Q => vid_data(25)
    );
\reg_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[26]_i_1_n_0\,
      Q => vid_data(26)
    );
\reg_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[27]_i_1_n_0\,
      Q => vid_data(27)
    );
\reg_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[28]_i_1_n_0\,
      Q => vid_data(28)
    );
\reg_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[29]_i_1_n_0\,
      Q => vid_data(29)
    );
\reg_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[2]_i_1_n_0\,
      Q => vid_data(2)
    );
\reg_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[30]_i_1_n_0\,
      Q => vid_data(30)
    );
\reg_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[31]_i_1_n_0\,
      Q => vid_data(31)
    );
\reg_data_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[32]_i_1_n_0\,
      Q => vid_data(32)
    );
\reg_data_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[33]_i_1_n_0\,
      Q => vid_data(33)
    );
\reg_data_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[34]_i_1_n_0\,
      Q => vid_data(34)
    );
\reg_data_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[35]_i_1_n_0\,
      Q => vid_data(35)
    );
\reg_data_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[36]_i_1_n_0\,
      Q => vid_data(36)
    );
\reg_data_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[37]_i_1_n_0\,
      Q => vid_data(37)
    );
\reg_data_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[38]_i_1_n_0\,
      Q => vid_data(38)
    );
\reg_data_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[39]_i_1_n_0\,
      Q => vid_data(39)
    );
\reg_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[3]_i_1_n_0\,
      Q => vid_data(3)
    );
\reg_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[4]_i_1_n_0\,
      Q => vid_data(4)
    );
\reg_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[5]_i_1_n_0\,
      Q => vid_data(5)
    );
\reg_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[6]_i_1_n_0\,
      Q => vid_data(6)
    );
\reg_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[7]_i_1_n_0\,
      Q => vid_data(7)
    );
\reg_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[8]_i_1_n_0\,
      Q => vid_data(8)
    );
\reg_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_data[9]_i_1_n_0\,
      Q => vid_data(9)
    );
\reg_di[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \reg_pix_di_reg_n_0_[0]\,
      I1 => reg_ce_i_3_n_0,
      O => p_1_in(0)
    );
\reg_di[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_di(1),
      I1 => reg_ce_i_3_n_0,
      O => p_1_in(1)
    );
\reg_di[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_di(2),
      I1 => reg_ce_i_3_n_0,
      O => p_1_in(2)
    );
\reg_di[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_di(3),
      I1 => reg_ce_i_3_n_0,
      O => p_1_in(3)
    );
\reg_di[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_di(4),
      I1 => reg_ce_i_3_n_0,
      O => p_1_in(4)
    );
\reg_di[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_di(5),
      I1 => reg_ce_i_3_n_0,
      O => p_1_in(5)
    );
\reg_di[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000008000"
    )
        port map (
      I0 => \^locked_reg_0\,
      I1 => reg_pix_valid,
      I2 => reg_pix_di(6),
      I3 => locked_vc(0),
      I4 => locked_vc(1),
      I5 => reg_pix_di(7),
      O => p_1_in(6)
    );
\reg_di[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008000000000000"
    )
        port map (
      I0 => \^locked_reg_0\,
      I1 => reg_pix_valid,
      I2 => reg_pix_di(6),
      I3 => locked_vc(0),
      I4 => locked_vc(1),
      I5 => reg_pix_di(7),
      O => p_1_in(7)
    );
\reg_di_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => p_1_in(0),
      Q => \reg_di_reg[7]_0\(0)
    );
\reg_di_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => p_1_in(1),
      Q => \reg_di_reg[7]_0\(1)
    );
\reg_di_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => p_1_in(2),
      Q => \reg_di_reg[7]_0\(2)
    );
\reg_di_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => p_1_in(3),
      Q => \reg_di_reg[7]_0\(3)
    );
\reg_di_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => p_1_in(4),
      Q => \reg_di_reg[7]_0\(4)
    );
\reg_di_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => p_1_in(5),
      Q => \reg_di_reg[7]_0\(5)
    );
\reg_di_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => p_1_in(6),
      Q => \reg_di_reg[7]_0\(6)
    );
\reg_di_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => p_1_in(7),
      Q => \reg_di_reg[7]_0\(7)
    );
reg_pix_data_enable_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => pix_data_enable,
      Q => reg_pix_data_enable
    );
\reg_pix_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(0),
      Q => reg_pix_data(0)
    );
\reg_pix_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(10),
      Q => reg_pix_data(10)
    );
\reg_pix_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(11),
      Q => reg_pix_data(11)
    );
\reg_pix_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(12),
      Q => reg_pix_data(12)
    );
\reg_pix_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(13),
      Q => reg_pix_data(13)
    );
\reg_pix_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(14),
      Q => reg_pix_data(14)
    );
\reg_pix_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(15),
      Q => reg_pix_data(15)
    );
\reg_pix_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(16),
      Q => reg_pix_data(16)
    );
\reg_pix_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(17),
      Q => reg_pix_data(17)
    );
\reg_pix_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(18),
      Q => reg_pix_data(18)
    );
\reg_pix_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(19),
      Q => reg_pix_data(19)
    );
\reg_pix_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(1),
      Q => reg_pix_data(1)
    );
\reg_pix_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(20),
      Q => reg_pix_data(20)
    );
\reg_pix_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(21),
      Q => reg_pix_data(21)
    );
\reg_pix_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(22),
      Q => reg_pix_data(22)
    );
\reg_pix_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(23),
      Q => reg_pix_data(23)
    );
\reg_pix_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(24),
      Q => reg_pix_data(24)
    );
\reg_pix_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(25),
      Q => reg_pix_data(25)
    );
\reg_pix_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(26),
      Q => reg_pix_data(26)
    );
\reg_pix_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(27),
      Q => reg_pix_data(27)
    );
\reg_pix_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(28),
      Q => reg_pix_data(28)
    );
\reg_pix_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(29),
      Q => reg_pix_data(29)
    );
\reg_pix_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(2),
      Q => reg_pix_data(2)
    );
\reg_pix_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(30),
      Q => reg_pix_data(30)
    );
\reg_pix_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(31),
      Q => reg_pix_data(31)
    );
\reg_pix_data_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(32),
      Q => reg_pix_data(32)
    );
\reg_pix_data_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(33),
      Q => reg_pix_data(33)
    );
\reg_pix_data_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(34),
      Q => reg_pix_data(34)
    );
\reg_pix_data_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(35),
      Q => reg_pix_data(35)
    );
\reg_pix_data_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(36),
      Q => reg_pix_data(36)
    );
\reg_pix_data_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(37),
      Q => reg_pix_data(37)
    );
\reg_pix_data_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(38),
      Q => reg_pix_data(38)
    );
\reg_pix_data_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(39),
      Q => reg_pix_data(39)
    );
\reg_pix_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(3),
      Q => reg_pix_data(3)
    );
\reg_pix_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(4),
      Q => reg_pix_data(4)
    );
\reg_pix_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(5),
      Q => reg_pix_data(5)
    );
\reg_pix_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(6),
      Q => reg_pix_data(6)
    );
\reg_pix_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(7),
      Q => reg_pix_data(7)
    );
\reg_pix_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(8),
      Q => reg_pix_data(8)
    );
\reg_pix_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_data_reg[39]_1\(9),
      Q => reg_pix_data(9)
    );
\reg_pix_di_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_di_reg[7]_0\(0),
      Q => \reg_pix_di_reg_n_0_[0]\
    );
\reg_pix_di_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_di_reg[7]_0\(1),
      Q => reg_pix_di(1)
    );
\reg_pix_di_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_di_reg[7]_0\(2),
      Q => reg_pix_di(2)
    );
\reg_pix_di_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_di_reg[7]_0\(3),
      Q => reg_pix_di(3)
    );
\reg_pix_di_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_di_reg[7]_0\(4),
      Q => reg_pix_di(4)
    );
\reg_pix_di_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_di_reg[7]_0\(5),
      Q => reg_pix_di(5)
    );
\reg_pix_di_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_di_reg[7]_0\(6),
      Q => reg_pix_di(6)
    );
\reg_pix_di_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => \reg_pix_di_reg[7]_0\(7),
      Q => reg_pix_di(7)
    );
reg_pix_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_data_reg[39]_0\,
      D => pix_valid,
      Q => reg_pix_valid
    );
reg_vsync_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => reg_vsync0,
      I1 => reg_vsync_i_3_n_0,
      I2 => \^locked_reg_0\,
      I3 => \^reg_vsync_reg_0\,
      O => reg_vsync_i_1_n_0
    );
reg_vsync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => reg_pix_di(2),
      I1 => \^locked_reg_0\,
      I2 => reg_pix_di(1),
      I3 => \reg_pix_di_reg_n_0_[0]\,
      I4 => reg_vsync_i_4_n_0,
      I5 => reg_pix_di(3),
      O => reg_vsync0
    );
reg_vsync_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => reg_pix_di(5),
      I1 => reg_pix_di(4),
      I2 => reg_pix_di(3),
      I3 => reg_pix_di(2),
      I4 => reg_pix_di(1),
      I5 => \reg_vsync1__0\,
      O => reg_vsync_i_3_n_0
    );
reg_vsync_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reg_pix_di(5),
      I1 => reg_pix_di(4),
      O => reg_vsync_i_4_n_0
    );
reg_vsync_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => reg_pix_valid,
      I1 => reg_pix_di(6),
      I2 => locked_vc(0),
      I3 => locked_vc(1),
      I4 => reg_pix_di(7),
      O => \reg_vsync1__0\
    );
reg_vsync_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_hs_byte,
      CE => '1',
      D => reg_vsync_i_1_n_0,
      PRE => \reg_pix_data_reg[39]_0\,
      Q => \^reg_vsync_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__csi2_raw10_unpack\ is
  port (
    raw10_pix_valid : out STD_LOGIC;
    pixel_enable3_out : out STD_LOGIC;
    raw10_pix_data_enable : out STD_LOGIC;
    last_size_reg : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    reg_pix_valid_reg_0 : out STD_LOGIC_VECTOR ( 39 downto 0 );
    \ready_delay_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_data_reg[31]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \last_size_reg[0]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \last_size_reg[0]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_hs_byte : in STD_LOGIC;
    \pixel_data_reg[0]_0\ : in STD_LOGIC;
    \pixel_data_reg[1]_0\ : in STD_LOGIC;
    \reg_pix_di_reg[7]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \reg_pix_data_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pkt_valid : in STD_LOGIC;
    \pixel_data_reg[39]_0\ : in STD_LOGIC;
    \pixel_data_reg[37]_0\ : in STD_LOGIC;
    \pixel_data_reg[35]_0\ : in STD_LOGIC;
    \pixel_data_reg[34]_0\ : in STD_LOGIC;
    \pixel_data_reg[33]_0\ : in STD_LOGIC;
    \pixel_data_reg[32]_0\ : in STD_LOGIC;
    \pixel_data_reg[38]_0\ : in STD_LOGIC;
    \pixel_data_reg[36]_0\ : in STD_LOGIC;
    \pixel_data_reg[17]_0\ : in STD_LOGIC;
    \di_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_data_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \pixel_data_reg[31]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__csi2_raw10_unpack\ : entity is "_csi2_raw10_unpack";
end \design_1_mipi_rx_to_video_0_0__csi2_raw10_unpack\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__csi2_raw10_unpack\ is
  signal di_reg : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal last_data : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \^last_data_reg[31]_0\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^last_size_reg\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pixel_data : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \pixel_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[11]_i_5_n_0\ : STD_LOGIC;
  signal \pixel_data[11]_i_6_n_0\ : STD_LOGIC;
  signal \pixel_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[13]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[14]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[16]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[17]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[17]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[18]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[19]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \pixel_data[21]_i_5_n_0\ : STD_LOGIC;
  signal \pixel_data[21]_i_6_n_0\ : STD_LOGIC;
  signal \pixel_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[22]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[22]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[23]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[23]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[24]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[24]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[25]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[25]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[26]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[26]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[27]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[27]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[28]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[28]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[29]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[29]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[31]_i_5_n_0\ : STD_LOGIC;
  signal \pixel_data[31]_i_6_n_0\ : STD_LOGIC;
  signal \pixel_data[32]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[32]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[32]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[33]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[33]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[33]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[34]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[34]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[34]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[35]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[35]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[35]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[36]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[36]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[36]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_data[37]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[37]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[37]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[38]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[38]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[38]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_data[39]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[39]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[39]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[8]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[9]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data_reg[11]_i_3_n_5\ : STD_LOGIC;
  signal \pixel_data_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \pixel_data_reg[11]_i_3_n_7\ : STD_LOGIC;
  signal \pixel_data_reg[21]_i_3_n_5\ : STD_LOGIC;
  signal \pixel_data_reg[21]_i_3_n_6\ : STD_LOGIC;
  signal \pixel_data_reg[21]_i_3_n_7\ : STD_LOGIC;
  signal \pixel_data_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \pixel_data_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \pixel_data_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal pixel_enable : STD_LOGIC;
  signal \^pixel_enable3_out\ : STD_LOGIC;
  signal raw10_pix_data : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal raw10_pix_di : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \^raw10_pix_valid\ : STD_LOGIC;
  signal \^ready_delay_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \reg_pix_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[32]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[33]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[34]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[35]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[36]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[37]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[38]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[39]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[9]_i_1_n_0\ : STD_LOGIC;
  signal reg_pix_data_enable0 : STD_LOGIC;
  signal \reg_pix_di[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_di[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_di[7]_i_1_n_0\ : STD_LOGIC;
  signal reg_pix_valid0 : STD_LOGIC;
  signal \NLW_pixel_data_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_pixel_data_reg[11]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_pixel_data_reg[21]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_pixel_data_reg[21]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_pixel_data_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_pixel_data_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \last_size[0]_i_1\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \last_size[1]_i_1\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \last_size[2]_i_1\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \pixel_data[13]_i_2\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \pixel_data[16]_i_2\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \pixel_data[17]_i_2\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \pixel_data[1]_i_4\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \pixel_data[1]_i_5\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \pixel_data[2]_i_3\ : label is "soft_lutpair199";
  attribute SOFT_HLUTNM of \pixel_data[32]_i_2\ : label is "soft_lutpair202";
  attribute SOFT_HLUTNM of \pixel_data[32]_i_3\ : label is "soft_lutpair199";
  attribute SOFT_HLUTNM of \pixel_data[33]_i_2\ : label is "soft_lutpair203";
  attribute SOFT_HLUTNM of \pixel_data[33]_i_3\ : label is "soft_lutpair197";
  attribute SOFT_HLUTNM of \pixel_data[34]_i_2\ : label is "soft_lutpair201";
  attribute SOFT_HLUTNM of \pixel_data[34]_i_3\ : label is "soft_lutpair198";
  attribute SOFT_HLUTNM of \pixel_data[35]_i_2\ : label is "soft_lutpair201";
  attribute SOFT_HLUTNM of \pixel_data[35]_i_3\ : label is "soft_lutpair205";
  attribute SOFT_HLUTNM of \pixel_data[36]_i_3\ : label is "soft_lutpair197";
  attribute SOFT_HLUTNM of \pixel_data[36]_i_4\ : label is "soft_lutpair205";
  attribute SOFT_HLUTNM of \pixel_data[37]_i_2\ : label is "soft_lutpair202";
  attribute SOFT_HLUTNM of \pixel_data[37]_i_3\ : label is "soft_lutpair204";
  attribute SOFT_HLUTNM of \pixel_data[38]_i_3\ : label is "soft_lutpair200";
  attribute SOFT_HLUTNM of \pixel_data[38]_i_4\ : label is "soft_lutpair204";
  attribute SOFT_HLUTNM of \pixel_data[39]_i_2\ : label is "soft_lutpair200";
  attribute SOFT_HLUTNM of \pixel_data[39]_i_3\ : label is "soft_lutpair203";
  attribute SOFT_HLUTNM of \pixel_data[4]_i_3\ : label is "soft_lutpair198";
  attribute SOFT_HLUTNM of \reg_pix_data[10]_i_1\ : label is "soft_lutpair223";
  attribute SOFT_HLUTNM of \reg_pix_data[11]_i_1\ : label is "soft_lutpair222";
  attribute SOFT_HLUTNM of \reg_pix_data[12]_i_1\ : label is "soft_lutpair222";
  attribute SOFT_HLUTNM of \reg_pix_data[13]_i_1\ : label is "soft_lutpair221";
  attribute SOFT_HLUTNM of \reg_pix_data[14]_i_1\ : label is "soft_lutpair221";
  attribute SOFT_HLUTNM of \reg_pix_data[15]_i_1\ : label is "soft_lutpair220";
  attribute SOFT_HLUTNM of \reg_pix_data[16]_i_1\ : label is "soft_lutpair220";
  attribute SOFT_HLUTNM of \reg_pix_data[17]_i_1\ : label is "soft_lutpair219";
  attribute SOFT_HLUTNM of \reg_pix_data[18]_i_1\ : label is "soft_lutpair219";
  attribute SOFT_HLUTNM of \reg_pix_data[19]_i_1\ : label is "soft_lutpair218";
  attribute SOFT_HLUTNM of \reg_pix_data[1]_i_1\ : label is "soft_lutpair227";
  attribute SOFT_HLUTNM of \reg_pix_data[20]_i_1\ : label is "soft_lutpair218";
  attribute SOFT_HLUTNM of \reg_pix_data[21]_i_1\ : label is "soft_lutpair217";
  attribute SOFT_HLUTNM of \reg_pix_data[22]_i_1\ : label is "soft_lutpair217";
  attribute SOFT_HLUTNM of \reg_pix_data[23]_i_1\ : label is "soft_lutpair216";
  attribute SOFT_HLUTNM of \reg_pix_data[24]_i_1\ : label is "soft_lutpair216";
  attribute SOFT_HLUTNM of \reg_pix_data[25]_i_1\ : label is "soft_lutpair215";
  attribute SOFT_HLUTNM of \reg_pix_data[26]_i_1\ : label is "soft_lutpair215";
  attribute SOFT_HLUTNM of \reg_pix_data[26]_i_1__0\ : label is "soft_lutpair196";
  attribute SOFT_HLUTNM of \reg_pix_data[27]_i_1\ : label is "soft_lutpair214";
  attribute SOFT_HLUTNM of \reg_pix_data[27]_i_1__0\ : label is "soft_lutpair195";
  attribute SOFT_HLUTNM of \reg_pix_data[28]_i_1\ : label is "soft_lutpair214";
  attribute SOFT_HLUTNM of \reg_pix_data[28]_i_1__0\ : label is "soft_lutpair194";
  attribute SOFT_HLUTNM of \reg_pix_data[29]_i_1\ : label is "soft_lutpair213";
  attribute SOFT_HLUTNM of \reg_pix_data[29]_i_1__0\ : label is "soft_lutpair193";
  attribute SOFT_HLUTNM of \reg_pix_data[2]_i_1\ : label is "soft_lutpair227";
  attribute SOFT_HLUTNM of \reg_pix_data[30]_i_1\ : label is "soft_lutpair213";
  attribute SOFT_HLUTNM of \reg_pix_data[30]_i_1__0\ : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of \reg_pix_data[31]_i_1\ : label is "soft_lutpair212";
  attribute SOFT_HLUTNM of \reg_pix_data[31]_i_1__0\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \reg_pix_data[32]_i_1\ : label is "soft_lutpair212";
  attribute SOFT_HLUTNM of \reg_pix_data[32]_i_1__0\ : label is "soft_lutpair196";
  attribute SOFT_HLUTNM of \reg_pix_data[33]_i_1\ : label is "soft_lutpair211";
  attribute SOFT_HLUTNM of \reg_pix_data[33]_i_1__0\ : label is "soft_lutpair195";
  attribute SOFT_HLUTNM of \reg_pix_data[34]_i_1\ : label is "soft_lutpair211";
  attribute SOFT_HLUTNM of \reg_pix_data[34]_i_1__0\ : label is "soft_lutpair194";
  attribute SOFT_HLUTNM of \reg_pix_data[35]_i_1\ : label is "soft_lutpair210";
  attribute SOFT_HLUTNM of \reg_pix_data[35]_i_1__0\ : label is "soft_lutpair193";
  attribute SOFT_HLUTNM of \reg_pix_data[36]_i_1\ : label is "soft_lutpair210";
  attribute SOFT_HLUTNM of \reg_pix_data[36]_i_1__0\ : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of \reg_pix_data[37]_i_1\ : label is "soft_lutpair209";
  attribute SOFT_HLUTNM of \reg_pix_data[37]_i_1__0\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \reg_pix_data[38]_i_1\ : label is "soft_lutpair209";
  attribute SOFT_HLUTNM of \reg_pix_data[38]_i_1__0\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \reg_pix_data[39]_i_1\ : label is "soft_lutpair208";
  attribute SOFT_HLUTNM of \reg_pix_data[39]_i_1__0\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \reg_pix_data[3]_i_1\ : label is "soft_lutpair226";
  attribute SOFT_HLUTNM of \reg_pix_data[4]_i_1\ : label is "soft_lutpair226";
  attribute SOFT_HLUTNM of \reg_pix_data[5]_i_1\ : label is "soft_lutpair225";
  attribute SOFT_HLUTNM of \reg_pix_data[6]_i_1\ : label is "soft_lutpair225";
  attribute SOFT_HLUTNM of \reg_pix_data[7]_i_1\ : label is "soft_lutpair224";
  attribute SOFT_HLUTNM of \reg_pix_data[8]_i_1\ : label is "soft_lutpair224";
  attribute SOFT_HLUTNM of \reg_pix_data[9]_i_1\ : label is "soft_lutpair223";
  attribute SOFT_HLUTNM of reg_pix_data_enable_i_1 : label is "soft_lutpair206";
  attribute SOFT_HLUTNM of \reg_pix_di[0]_i_1\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \reg_pix_di[1]_i_1\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \reg_pix_di[3]_i_1\ : label is "soft_lutpair208";
  attribute SOFT_HLUTNM of \reg_pix_di[3]_i_1__0\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \reg_pix_di[5]_i_1\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \reg_pix_di[6]_i_1\ : label is "soft_lutpair207";
  attribute SOFT_HLUTNM of \reg_pix_di[6]_i_1__0\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \reg_pix_di[7]_i_1\ : label is "soft_lutpair207";
  attribute SOFT_HLUTNM of \reg_pix_di[7]_i_1__0\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of reg_pix_valid_i_1 : label is "soft_lutpair206";
begin
  \last_data_reg[31]_0\(23 downto 0) <= \^last_data_reg[31]_0\(23 downto 0);
  last_size_reg(2 downto 0) <= \^last_size_reg\(2 downto 0);
  pixel_enable3_out <= \^pixel_enable3_out\;
  raw10_pix_valid <= \^raw10_pix_valid\;
  \ready_delay_reg[0]_0\(0) <= \^ready_delay_reg[0]_0\(0);
\di_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => \pixel_data_reg[0]_0\,
      D => \di_reg_reg[7]_0\(0),
      Q => di_reg(3)
    );
\di_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => \pixel_data_reg[0]_0\,
      D => \di_reg_reg[7]_0\(1),
      Q => di_reg(6)
    );
\di_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => \pixel_data_reg[0]_0\,
      D => \di_reg_reg[7]_0\(2),
      Q => di_reg(7)
    );
\last_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(0),
      Q => last_data(0)
    );
\last_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(10),
      Q => \^last_data_reg[31]_0\(6)
    );
\last_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(11),
      Q => \^last_data_reg[31]_0\(7)
    );
\last_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(12),
      Q => \^last_data_reg[31]_0\(8)
    );
\last_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(13),
      Q => \^last_data_reg[31]_0\(9)
    );
\last_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(14),
      Q => \^last_data_reg[31]_0\(10)
    );
\last_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(15),
      Q => \^last_data_reg[31]_0\(11)
    );
\last_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(16),
      Q => last_data(16)
    );
\last_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(17),
      Q => last_data(17)
    );
\last_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(18),
      Q => \^last_data_reg[31]_0\(12)
    );
\last_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(19),
      Q => \^last_data_reg[31]_0\(13)
    );
\last_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(1),
      Q => last_data(1)
    );
\last_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(20),
      Q => \^last_data_reg[31]_0\(14)
    );
\last_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(21),
      Q => \^last_data_reg[31]_0\(15)
    );
\last_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(22),
      Q => \^last_data_reg[31]_0\(16)
    );
\last_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(23),
      Q => \^last_data_reg[31]_0\(17)
    );
\last_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(24),
      Q => last_data(24)
    );
\last_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(25),
      Q => last_data(25)
    );
\last_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(26),
      Q => \^last_data_reg[31]_0\(18)
    );
\last_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(27),
      Q => \^last_data_reg[31]_0\(19)
    );
\last_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(28),
      Q => \^last_data_reg[31]_0\(20)
    );
\last_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(29),
      Q => \^last_data_reg[31]_0\(21)
    );
\last_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(2),
      Q => \^last_data_reg[31]_0\(0)
    );
\last_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(30),
      Q => \^last_data_reg[31]_0\(22)
    );
\last_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(31),
      Q => \^last_data_reg[31]_0\(23)
    );
\last_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(3),
      Q => \^last_data_reg[31]_0\(1)
    );
\last_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(4),
      Q => \^last_data_reg[31]_0\(2)
    );
\last_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(5),
      Q => \^last_data_reg[31]_0\(3)
    );
\last_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(6),
      Q => \^last_data_reg[31]_0\(4)
    );
\last_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(7),
      Q => \^last_data_reg[31]_0\(5)
    );
\last_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(8),
      Q => last_data(8)
    );
\last_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \last_data_reg[31]_1\(9),
      Q => last_data(9)
    );
\last_size[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^last_size_reg\(1),
      I1 => \^last_size_reg\(2),
      I2 => \pixel_data_reg[1]_0\,
      I3 => \^last_size_reg\(0),
      O => \p_0_in__0\(0)
    );
\last_size[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A4"
    )
        port map (
      I0 => \^last_size_reg\(1),
      I1 => \^last_size_reg\(2),
      I2 => \^last_size_reg\(0),
      I3 => \pixel_data_reg[1]_0\,
      O => \p_0_in__0\(1)
    );
\last_size[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5401"
    )
        port map (
      I0 => \pixel_data_reg[1]_0\,
      I1 => \^last_size_reg\(1),
      I2 => \^last_size_reg\(0),
      I3 => \^last_size_reg\(2),
      O => \p_0_in__0\(2)
    );
\last_size_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \p_0_in__0\(0),
      Q => \^last_size_reg\(0)
    );
\last_size_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \p_0_in__0\(1),
      Q => \^last_size_reg\(1)
    );
\last_size_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \p_0_in__0\(2),
      Q => \^last_size_reg\(2)
    );
\pixel_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1015101510151010"
    )
        port map (
      I0 => \pixel_data_reg[1]_0\,
      I1 => \pixel_data[0]_i_2_n_0\,
      I2 => \^last_size_reg\(0),
      I3 => \pixel_data[0]_i_3_n_0\,
      I4 => \^last_size_reg\(1),
      I5 => \^last_size_reg\(2),
      O => \pixel_data[0]_i_1_n_0\
    );
\pixel_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_pix_data_reg[31]_0\(24),
      I1 => last_data(24),
      I2 => \pixel_data[1]_i_4_n_0\,
      I3 => \reg_pix_data_reg[31]_0\(8),
      I4 => \pixel_data[1]_i_5_n_0\,
      I5 => last_data(8),
      O => \pixel_data[0]_i_2_n_0\
    );
\pixel_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_pix_data_reg[31]_0\(16),
      I1 => last_data(16),
      I2 => \pixel_data[1]_i_4_n_0\,
      I3 => \reg_pix_data_reg[31]_0\(0),
      I4 => \pixel_data[1]_i_5_n_0\,
      I5 => last_data(0),
      O => \pixel_data[0]_i_3_n_0\
    );
\pixel_data[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \^last_size_reg\(2),
      I1 => \^last_size_reg\(0),
      I2 => \^last_size_reg\(1),
      O => \pixel_data[11]_i_5_n_0\
    );
\pixel_data[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \^last_size_reg\(1),
      O => \pixel_data[11]_i_6_n_0\
    );
\pixel_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000333020002"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \pixel_data_reg[1]_0\,
      I2 => \pixel_data[12]_i_2_n_0\,
      I3 => \^last_size_reg\(2),
      I4 => \pixel_data[32]_i_2_n_0\,
      I5 => \^last_size_reg\(1),
      O => \pixel_data[12]_i_1_n_0\
    );
\pixel_data[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => last_data(16),
      I1 => last_data(24),
      I2 => \reg_pix_data_reg[31]_0\(0),
      I3 => \^last_size_reg\(0),
      I4 => \reg_pix_data_reg[31]_0\(8),
      I5 => \^last_size_reg\(1),
      O => \pixel_data[12]_i_2_n_0\
    );
\pixel_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFA808"
    )
        port map (
      I0 => \pixel_data[17]_i_2_n_0\,
      I1 => last_data(9),
      I2 => \^last_size_reg\(0),
      I3 => last_data(1),
      I4 => \pixel_data[13]_i_2_n_0\,
      I5 => \pixel_data_reg[1]_0\,
      O => \pixel_data[13]_i_1_n_0\
    );
\pixel_data[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CA00C0"
    )
        port map (
      I0 => \reg_pix_data_reg[31]_0\(1),
      I1 => \pixel_data[33]_i_3_n_0\,
      I2 => \^last_size_reg\(1),
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(0),
      O => \pixel_data[13]_i_2_n_0\
    );
\pixel_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000333020002"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \pixel_data_reg[1]_0\,
      I2 => \pixel_data[14]_i_2_n_0\,
      I3 => \^last_size_reg\(2),
      I4 => \pixel_data[34]_i_2_n_0\,
      I5 => \^last_size_reg\(1),
      O => \pixel_data[14]_i_1_n_0\
    );
\pixel_data[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(12),
      I1 => \^last_data_reg[31]_0\(18),
      I2 => \reg_pix_data_reg[31]_0\(2),
      I3 => \^last_size_reg\(0),
      I4 => \reg_pix_data_reg[31]_0\(10),
      I5 => \^last_size_reg\(1),
      O => \pixel_data[14]_i_2_n_0\
    );
\pixel_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030332000300020"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \pixel_data_reg[1]_0\,
      I2 => \pixel_data[15]_i_2_n_0\,
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \pixel_data[35]_i_2_n_0\,
      O => \pixel_data[15]_i_1_n_0\
    );
\pixel_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(13),
      I1 => \^last_data_reg[31]_0\(19),
      I2 => \^last_size_reg\(1),
      I3 => \reg_pix_data_reg[31]_0\(3),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(11),
      O => \pixel_data[15]_i_2_n_0\
    );
\pixel_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFA808"
    )
        port map (
      I0 => \pixel_data[17]_i_2_n_0\,
      I1 => \^last_data_reg[31]_0\(8),
      I2 => \^last_size_reg\(0),
      I3 => \^last_data_reg[31]_0\(2),
      I4 => \pixel_data[16]_i_2_n_0\,
      I5 => \pixel_data_reg[1]_0\,
      O => \pixel_data[16]_i_1_n_0\
    );
\pixel_data[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CA00C0"
    )
        port map (
      I0 => \reg_pix_data_reg[31]_0\(4),
      I1 => \pixel_data[36]_i_3_n_0\,
      I2 => \^last_size_reg\(1),
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(0),
      O => \pixel_data[16]_i_2_n_0\
    );
\pixel_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFA808"
    )
        port map (
      I0 => \pixel_data[17]_i_2_n_0\,
      I1 => \^last_data_reg[31]_0\(9),
      I2 => \^last_size_reg\(0),
      I3 => \^last_data_reg[31]_0\(3),
      I4 => \pixel_data[17]_i_3_n_0\,
      I5 => \pixel_data_reg[1]_0\,
      O => \pixel_data[17]_i_1_n_0\
    );
\pixel_data[17]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^last_size_reg\(2),
      I1 => \^last_size_reg\(1),
      O => \pixel_data[17]_i_2_n_0\
    );
\pixel_data[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AFA00000C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(15),
      I1 => \^last_data_reg[31]_0\(21),
      I2 => \^last_size_reg\(1),
      I3 => \pixel_data_reg[17]_0\,
      I4 => \^last_size_reg\(2),
      I5 => \^last_size_reg\(0),
      O => \pixel_data[17]_i_3_n_0\
    );
\pixel_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000333020002"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \pixel_data_reg[1]_0\,
      I2 => \pixel_data[18]_i_2_n_0\,
      I3 => \^last_size_reg\(2),
      I4 => \pixel_data[38]_i_3_n_0\,
      I5 => \^last_size_reg\(1),
      O => \pixel_data[18]_i_1_n_0\
    );
\pixel_data[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(16),
      I1 => \^last_data_reg[31]_0\(22),
      I2 => \reg_pix_data_reg[31]_0\(6),
      I3 => \^last_size_reg\(0),
      I4 => \reg_pix_data_reg[31]_0\(14),
      I5 => \^last_size_reg\(1),
      O => \pixel_data[18]_i_2_n_0\
    );
\pixel_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030332000300020"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \pixel_data_reg[1]_0\,
      I2 => \pixel_data[19]_i_2_n_0\,
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \pixel_data[39]_i_2_n_0\,
      O => \pixel_data[19]_i_1_n_0\
    );
\pixel_data[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(17),
      I1 => \^last_data_reg[31]_0\(23),
      I2 => \^last_size_reg\(1),
      I3 => \reg_pix_data_reg[31]_0\(7),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(15),
      O => \pixel_data[19]_i_2_n_0\
    );
\pixel_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1015101510151010"
    )
        port map (
      I0 => \pixel_data_reg[1]_0\,
      I1 => \pixel_data[1]_i_2_n_0\,
      I2 => \^last_size_reg\(0),
      I3 => \pixel_data[1]_i_3_n_0\,
      I4 => \^last_size_reg\(1),
      I5 => \^last_size_reg\(2),
      O => \pixel_data[1]_i_1_n_0\
    );
\pixel_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_pix_data_reg[31]_0\(25),
      I1 => last_data(25),
      I2 => \pixel_data[1]_i_4_n_0\,
      I3 => \reg_pix_data_reg[31]_0\(9),
      I4 => \pixel_data[1]_i_5_n_0\,
      I5 => last_data(9),
      O => \pixel_data[1]_i_2_n_0\
    );
\pixel_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_pix_data_reg[31]_0\(17),
      I1 => last_data(17),
      I2 => \pixel_data[1]_i_4_n_0\,
      I3 => \reg_pix_data_reg[31]_0\(1),
      I4 => \pixel_data[1]_i_5_n_0\,
      I5 => last_data(1),
      O => \pixel_data[1]_i_3_n_0\
    );
\pixel_data[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \^last_size_reg\(1),
      O => \pixel_data[1]_i_4_n_0\
    );
\pixel_data[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \^last_size_reg\(2),
      I1 => \^last_size_reg\(0),
      I2 => \^last_size_reg\(1),
      O => \pixel_data[1]_i_5_n_0\
    );
\pixel_data[21]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \^last_size_reg\(2),
      I1 => \^last_size_reg\(0),
      I2 => \^last_size_reg\(1),
      O => \pixel_data[21]_i_5_n_0\
    );
\pixel_data[21]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \^last_size_reg\(1),
      O => \pixel_data[21]_i_6_n_0\
    );
\pixel_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000E0E0F000E00"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \^last_size_reg\(1),
      I2 => \pixel_data_reg[1]_0\,
      I3 => \pixel_data[22]_i_2_n_0\,
      I4 => \^last_size_reg\(2),
      I5 => \pixel_data[22]_i_3_n_0\,
      O => \pixel_data[22]_i_1_n_0\
    );
\pixel_data[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00AC000000AC00"
    )
        port map (
      I0 => last_data(8),
      I1 => last_data(16),
      I2 => \^last_size_reg\(0),
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => last_data(0),
      O => \pixel_data[22]_i_2_n_0\
    );
\pixel_data[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => last_data(24),
      I1 => \reg_pix_data_reg[31]_0\(0),
      I2 => \^last_size_reg\(1),
      I3 => \reg_pix_data_reg[31]_0\(8),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(16),
      O => \pixel_data[22]_i_3_n_0\
    );
\pixel_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000E0E0F000E00"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \^last_size_reg\(1),
      I2 => \pixel_data_reg[1]_0\,
      I3 => \pixel_data[23]_i_2_n_0\,
      I4 => \^last_size_reg\(2),
      I5 => \pixel_data[23]_i_3_n_0\,
      O => \pixel_data[23]_i_1_n_0\
    );
\pixel_data[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00ACAC00000000"
    )
        port map (
      I0 => last_data(9),
      I1 => last_data(17),
      I2 => \^last_size_reg\(0),
      I3 => last_data(1),
      I4 => \^last_size_reg\(1),
      I5 => \^last_size_reg\(2),
      O => \pixel_data[23]_i_2_n_0\
    );
\pixel_data[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => last_data(25),
      I1 => \reg_pix_data_reg[31]_0\(1),
      I2 => \^last_size_reg\(1),
      I3 => \reg_pix_data_reg[31]_0\(9),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(17),
      O => \pixel_data[23]_i_3_n_0\
    );
\pixel_data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000E0E0F000E00"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \^last_size_reg\(1),
      I2 => \pixel_data_reg[1]_0\,
      I3 => \pixel_data[24]_i_2_n_0\,
      I4 => \^last_size_reg\(2),
      I5 => \pixel_data[24]_i_3_n_0\,
      O => \pixel_data[24]_i_1_n_0\
    );
\pixel_data[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0000CFC00000"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(0),
      I1 => \^last_data_reg[31]_0\(6),
      I2 => \^last_size_reg\(0),
      I3 => \^last_data_reg[31]_0\(12),
      I4 => \^last_size_reg\(2),
      I5 => \^last_size_reg\(1),
      O => \pixel_data[24]_i_2_n_0\
    );
\pixel_data[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(18),
      I1 => \reg_pix_data_reg[31]_0\(2),
      I2 => \^last_size_reg\(1),
      I3 => \reg_pix_data_reg[31]_0\(10),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(18),
      O => \pixel_data[24]_i_3_n_0\
    );
\pixel_data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000E0E0F000E00"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \^last_size_reg\(1),
      I2 => \pixel_data_reg[1]_0\,
      I3 => \pixel_data[25]_i_2_n_0\,
      I4 => \^last_size_reg\(2),
      I5 => \pixel_data[25]_i_3_n_0\,
      O => \pixel_data[25]_i_1_n_0\
    );
\pixel_data[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0000CFC00000"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(1),
      I1 => \^last_data_reg[31]_0\(7),
      I2 => \^last_size_reg\(0),
      I3 => \^last_data_reg[31]_0\(13),
      I4 => \^last_size_reg\(2),
      I5 => \^last_size_reg\(1),
      O => \pixel_data[25]_i_2_n_0\
    );
\pixel_data[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(19),
      I1 => \reg_pix_data_reg[31]_0\(3),
      I2 => \^last_size_reg\(1),
      I3 => \reg_pix_data_reg[31]_0\(11),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(19),
      O => \pixel_data[25]_i_3_n_0\
    );
\pixel_data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444555444444444"
    )
        port map (
      I0 => \pixel_data_reg[1]_0\,
      I1 => \pixel_data[26]_i_2_n_0\,
      I2 => \^last_size_reg\(1),
      I3 => \^last_size_reg\(0),
      I4 => \^last_size_reg\(2),
      I5 => \pixel_data[26]_i_3_n_0\,
      O => \pixel_data[26]_i_1_n_0\
    );
\pixel_data[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00AC000000AC00"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(8),
      I1 => \^last_data_reg[31]_0\(14),
      I2 => \^last_size_reg\(0),
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \^last_data_reg[31]_0\(2),
      O => \pixel_data[26]_i_2_n_0\
    );
\pixel_data[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(20),
      I1 => \reg_pix_data_reg[31]_0\(4),
      I2 => \^last_size_reg\(1),
      I3 => \reg_pix_data_reg[31]_0\(12),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(20),
      O => \pixel_data[26]_i_3_n_0\
    );
\pixel_data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000E0E0F000E00"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \^last_size_reg\(1),
      I2 => \pixel_data_reg[1]_0\,
      I3 => \pixel_data[27]_i_2_n_0\,
      I4 => \^last_size_reg\(2),
      I5 => \pixel_data[27]_i_3_n_0\,
      O => \pixel_data[27]_i_1_n_0\
    );
\pixel_data[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00ACAC00000000"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(9),
      I1 => \^last_data_reg[31]_0\(15),
      I2 => \^last_size_reg\(0),
      I3 => \^last_data_reg[31]_0\(3),
      I4 => \^last_size_reg\(1),
      I5 => \^last_size_reg\(2),
      O => \pixel_data[27]_i_2_n_0\
    );
\pixel_data[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(21),
      I1 => \reg_pix_data_reg[31]_0\(5),
      I2 => \^last_size_reg\(1),
      I3 => \reg_pix_data_reg[31]_0\(13),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(21),
      O => \pixel_data[27]_i_3_n_0\
    );
\pixel_data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000E0E0F000E00"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \^last_size_reg\(1),
      I2 => \pixel_data_reg[1]_0\,
      I3 => \pixel_data[28]_i_2_n_0\,
      I4 => \^last_size_reg\(2),
      I5 => \pixel_data[28]_i_3_n_0\,
      O => \pixel_data[28]_i_1_n_0\
    );
\pixel_data[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00AC000000AC00"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(10),
      I1 => \^last_data_reg[31]_0\(16),
      I2 => \^last_size_reg\(0),
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \^last_data_reg[31]_0\(4),
      O => \pixel_data[28]_i_2_n_0\
    );
\pixel_data[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(22),
      I1 => \reg_pix_data_reg[31]_0\(6),
      I2 => \^last_size_reg\(1),
      I3 => \reg_pix_data_reg[31]_0\(14),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(22),
      O => \pixel_data[28]_i_3_n_0\
    );
\pixel_data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000E0E0F000E00"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \^last_size_reg\(1),
      I2 => \pixel_data_reg[1]_0\,
      I3 => \pixel_data[29]_i_2_n_0\,
      I4 => \^last_size_reg\(2),
      I5 => \pixel_data[29]_i_3_n_0\,
      O => \pixel_data[29]_i_1_n_0\
    );
\pixel_data[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00AC000000AC00"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(11),
      I1 => \^last_data_reg[31]_0\(17),
      I2 => \^last_size_reg\(0),
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \^last_data_reg[31]_0\(5),
      O => \pixel_data[29]_i_2_n_0\
    );
\pixel_data[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(23),
      I1 => \reg_pix_data_reg[31]_0\(7),
      I2 => \^last_size_reg\(1),
      I3 => \reg_pix_data_reg[31]_0\(15),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(23),
      O => \pixel_data[29]_i_3_n_0\
    );
\pixel_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF1000"
    )
        port map (
      I0 => \^last_size_reg\(1),
      I1 => \^last_size_reg\(0),
      I2 => \^last_size_reg\(2),
      I3 => last_data(0),
      I4 => \pixel_data[2]_i_2_n_0\,
      I5 => \pixel_data_reg[1]_0\,
      O => \pixel_data[2]_i_1_n_0\
    );
\pixel_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AFA00000C0C0"
    )
        port map (
      I0 => last_data(8),
      I1 => last_data(16),
      I2 => \^last_size_reg\(1),
      I3 => \pixel_data[2]_i_3_n_0\,
      I4 => \^last_size_reg\(2),
      I5 => \^last_size_reg\(0),
      O => \pixel_data[2]_i_2_n_0\
    );
\pixel_data[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => last_data(24),
      I1 => \^last_size_reg\(0),
      I2 => \reg_pix_data_reg[31]_0\(0),
      O => \pixel_data[2]_i_3_n_0\
    );
\pixel_data[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \^last_size_reg\(2),
      I1 => \^last_size_reg\(0),
      I2 => \^last_size_reg\(1),
      O => \pixel_data[31]_i_5_n_0\
    );
\pixel_data[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^last_size_reg\(0),
      I1 => \^last_size_reg\(1),
      O => \pixel_data[31]_i_6_n_0\
    );
\pixel_data[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AAA0AA8800A000"
    )
        port map (
      I0 => \^pixel_enable3_out\,
      I1 => \pixel_data[32]_i_2_n_0\,
      I2 => \pixel_data[32]_i_3_n_0\,
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \pixel_data_reg[32]_0\,
      O => \pixel_data[32]_i_1_n_0\
    );
\pixel_data[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => last_data(0),
      I1 => \^last_size_reg\(0),
      I2 => last_data(8),
      O => \pixel_data[32]_i_2_n_0\
    );
\pixel_data[32]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => last_data(16),
      I1 => \^last_size_reg\(0),
      I2 => last_data(24),
      O => \pixel_data[32]_i_3_n_0\
    );
\pixel_data[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AAA0AA8800A000"
    )
        port map (
      I0 => \^pixel_enable3_out\,
      I1 => \pixel_data[33]_i_2_n_0\,
      I2 => \pixel_data[33]_i_3_n_0\,
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \pixel_data_reg[33]_0\,
      O => \pixel_data[33]_i_1_n_0\
    );
\pixel_data[33]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => last_data(1),
      I1 => \^last_size_reg\(0),
      I2 => last_data(9),
      O => \pixel_data[33]_i_2_n_0\
    );
\pixel_data[33]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => last_data(17),
      I1 => \^last_size_reg\(0),
      I2 => last_data(25),
      O => \pixel_data[33]_i_3_n_0\
    );
\pixel_data[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AAA0AA8800A000"
    )
        port map (
      I0 => \^pixel_enable3_out\,
      I1 => \pixel_data[34]_i_2_n_0\,
      I2 => \pixel_data[34]_i_3_n_0\,
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \pixel_data_reg[34]_0\,
      O => \pixel_data[34]_i_1_n_0\
    );
\pixel_data[34]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(0),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(6),
      O => \pixel_data[34]_i_2_n_0\
    );
\pixel_data[34]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(12),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(18),
      O => \pixel_data[34]_i_3_n_0\
    );
\pixel_data[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AAA0AA8800A000"
    )
        port map (
      I0 => \^pixel_enable3_out\,
      I1 => \pixel_data[35]_i_2_n_0\,
      I2 => \pixel_data[35]_i_3_n_0\,
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \pixel_data_reg[35]_0\,
      O => \pixel_data[35]_i_1_n_0\
    );
\pixel_data[35]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(1),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(7),
      O => \pixel_data[35]_i_2_n_0\
    );
\pixel_data[35]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(13),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(19),
      O => \pixel_data[35]_i_3_n_0\
    );
\pixel_data[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FD555D55"
    )
        port map (
      I0 => \pixel_data_reg[36]_0\,
      I1 => \pixel_data[36]_i_3_n_0\,
      I2 => \^last_size_reg\(1),
      I3 => \^last_size_reg\(2),
      I4 => \pixel_data[36]_i_4_n_0\,
      I5 => \pixel_data_reg[1]_0\,
      O => \pixel_data[36]_i_1_n_0\
    );
\pixel_data[36]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(14),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(20),
      O => \pixel_data[36]_i_3_n_0\
    );
\pixel_data[36]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(2),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(8),
      O => \pixel_data[36]_i_4_n_0\
    );
\pixel_data[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AAA0AA8800A000"
    )
        port map (
      I0 => \^pixel_enable3_out\,
      I1 => \pixel_data[37]_i_2_n_0\,
      I2 => \pixel_data[37]_i_3_n_0\,
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \pixel_data_reg[37]_0\,
      O => \pixel_data[37]_i_1_n_0\
    );
\pixel_data[37]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(3),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(9),
      O => \pixel_data[37]_i_2_n_0\
    );
\pixel_data[37]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(15),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(21),
      O => \pixel_data[37]_i_3_n_0\
    );
\pixel_data[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DD55F555"
    )
        port map (
      I0 => \pixel_data_reg[38]_0\,
      I1 => \pixel_data[38]_i_3_n_0\,
      I2 => \pixel_data[38]_i_4_n_0\,
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \pixel_data_reg[1]_0\,
      O => \pixel_data[38]_i_1_n_0\
    );
\pixel_data[38]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(4),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(10),
      O => \pixel_data[38]_i_3_n_0\
    );
\pixel_data[38]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(16),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(22),
      O => \pixel_data[38]_i_4_n_0\
    );
\pixel_data[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AAA0AA8800A000"
    )
        port map (
      I0 => \^pixel_enable3_out\,
      I1 => \pixel_data[39]_i_2_n_0\,
      I2 => \pixel_data[39]_i_3_n_0\,
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \pixel_data_reg[39]_0\,
      O => \pixel_data[39]_i_1_n_0\
    );
\pixel_data[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(5),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(11),
      O => \pixel_data[39]_i_2_n_0\
    );
\pixel_data[39]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(17),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(23),
      O => \pixel_data[39]_i_3_n_0\
    );
\pixel_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010101500100"
    )
        port map (
      I0 => \pixel_data_reg[1]_0\,
      I1 => \pixel_data[3]_i_2_n_0\,
      I2 => \^last_size_reg\(2),
      I3 => \^last_size_reg\(0),
      I4 => last_data(1),
      I5 => \^last_size_reg\(1),
      O => \pixel_data[3]_i_1_n_0\
    );
\pixel_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => last_data(9),
      I1 => last_data(17),
      I2 => last_data(25),
      I3 => \^last_size_reg\(0),
      I4 => \reg_pix_data_reg[31]_0\(1),
      I5 => \^last_size_reg\(1),
      O => \pixel_data[3]_i_2_n_0\
    );
\pixel_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF1000"
    )
        port map (
      I0 => \^last_size_reg\(1),
      I1 => \^last_size_reg\(0),
      I2 => \^last_size_reg\(2),
      I3 => \^last_data_reg[31]_0\(0),
      I4 => \pixel_data[4]_i_2_n_0\,
      I5 => \pixel_data_reg[1]_0\,
      O => \pixel_data[4]_i_1_n_0\
    );
\pixel_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AFA00000C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(6),
      I1 => \^last_data_reg[31]_0\(12),
      I2 => \^last_size_reg\(1),
      I3 => \pixel_data[4]_i_3_n_0\,
      I4 => \^last_size_reg\(2),
      I5 => \^last_size_reg\(0),
      O => \pixel_data[4]_i_2_n_0\
    );
\pixel_data[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(18),
      I1 => \^last_size_reg\(0),
      I2 => \reg_pix_data_reg[31]_0\(2),
      O => \pixel_data[4]_i_3_n_0\
    );
\pixel_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404045004040400"
    )
        port map (
      I0 => \pixel_data_reg[1]_0\,
      I1 => \pixel_data[5]_i_2_n_0\,
      I2 => \^last_size_reg\(2),
      I3 => \^last_size_reg\(1),
      I4 => \^last_size_reg\(0),
      I5 => \^last_data_reg[31]_0\(1),
      O => \pixel_data[5]_i_1_n_0\
    );
\pixel_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(7),
      I1 => \^last_data_reg[31]_0\(13),
      I2 => \^last_size_reg\(1),
      I3 => \^last_data_reg[31]_0\(19),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(3),
      O => \pixel_data[5]_i_2_n_0\
    );
\pixel_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404045004040400"
    )
        port map (
      I0 => \pixel_data_reg[1]_0\,
      I1 => \pixel_data[6]_i_2_n_0\,
      I2 => \^last_size_reg\(2),
      I3 => \^last_size_reg\(1),
      I4 => \^last_size_reg\(0),
      I5 => \^last_data_reg[31]_0\(2),
      O => \pixel_data[6]_i_1_n_0\
    );
\pixel_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(8),
      I1 => \^last_data_reg[31]_0\(14),
      I2 => \^last_size_reg\(1),
      I3 => \^last_data_reg[31]_0\(20),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(4),
      O => \pixel_data[6]_i_2_n_0\
    );
\pixel_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010101500100"
    )
        port map (
      I0 => \pixel_data_reg[1]_0\,
      I1 => \pixel_data[7]_i_2_n_0\,
      I2 => \^last_size_reg\(2),
      I3 => \^last_size_reg\(0),
      I4 => \^last_data_reg[31]_0\(3),
      I5 => \^last_size_reg\(1),
      O => \pixel_data[7]_i_1_n_0\
    );
\pixel_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFF55335533"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(21),
      I1 => \reg_pix_data_reg[31]_0\(5),
      I2 => \^last_data_reg[31]_0\(9),
      I3 => \^last_size_reg\(0),
      I4 => \^last_data_reg[31]_0\(15),
      I5 => \^last_size_reg\(1),
      O => \pixel_data[7]_i_2_n_0\
    );
\pixel_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404045004040400"
    )
        port map (
      I0 => \pixel_data_reg[1]_0\,
      I1 => \pixel_data[8]_i_2_n_0\,
      I2 => \^last_size_reg\(2),
      I3 => \^last_size_reg\(1),
      I4 => \^last_size_reg\(0),
      I5 => \^last_data_reg[31]_0\(4),
      O => \pixel_data[8]_i_1_n_0\
    );
\pixel_data[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(10),
      I1 => \^last_data_reg[31]_0\(16),
      I2 => \^last_size_reg\(1),
      I3 => \^last_data_reg[31]_0\(22),
      I4 => \^last_size_reg\(0),
      I5 => \reg_pix_data_reg[31]_0\(6),
      O => \pixel_data[8]_i_2_n_0\
    );
\pixel_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF1000"
    )
        port map (
      I0 => \^last_size_reg\(1),
      I1 => \^last_size_reg\(0),
      I2 => \^last_size_reg\(2),
      I3 => \^last_data_reg[31]_0\(5),
      I4 => \pixel_data[9]_i_2_n_0\,
      I5 => \pixel_data_reg[1]_0\,
      O => \pixel_data[9]_i_1_n_0\
    );
\pixel_data[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8B8CC00"
    )
        port map (
      I0 => \^last_data_reg[31]_0\(11),
      I1 => \^last_size_reg\(0),
      I2 => \^last_data_reg[31]_0\(17),
      I3 => \^last_data_reg[31]_0\(23),
      I4 => \^last_size_reg\(1),
      I5 => \^last_size_reg\(2),
      O => \pixel_data[9]_i_2_n_0\
    );
\pixel_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[0]_i_1_n_0\,
      Q => pixel_data(0)
    );
\pixel_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data_reg[31]_0\(0),
      Q => pixel_data(10)
    );
\pixel_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data_reg[31]_0\(1),
      Q => pixel_data(11)
    );
\pixel_data_reg[11]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_pixel_data_reg[11]_i_3_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \pixel_data_reg[11]_i_3_n_5\,
      CO(1) => \pixel_data_reg[11]_i_3_n_6\,
      CO(0) => \pixel_data_reg[11]_i_3_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \^last_size_reg\(0),
      DI(0) => '0',
      O(7 downto 4) => \NLW_pixel_data_reg[11]_i_3_O_UNCONNECTED\(7 downto 4),
      O(3 downto 1) => \last_size_reg[0]_0\(2 downto 0),
      O(0) => \NLW_pixel_data_reg[11]_i_3_O_UNCONNECTED\(0),
      S(7 downto 4) => B"0000",
      S(3) => \pixel_data[11]_i_5_n_0\,
      S(2) => \pixel_data[11]_i_6_n_0\,
      S(1) => \^last_size_reg\(0),
      S(0) => '0'
    );
\pixel_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[12]_i_1_n_0\,
      Q => pixel_data(12)
    );
\pixel_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[13]_i_1_n_0\,
      Q => pixel_data(13)
    );
\pixel_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[14]_i_1_n_0\,
      Q => pixel_data(14)
    );
\pixel_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[15]_i_1_n_0\,
      Q => pixel_data(15)
    );
\pixel_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[16]_i_1_n_0\,
      Q => pixel_data(16)
    );
\pixel_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[17]_i_1_n_0\,
      Q => pixel_data(17)
    );
\pixel_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[18]_i_1_n_0\,
      Q => pixel_data(18)
    );
\pixel_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[19]_i_1_n_0\,
      Q => pixel_data(19)
    );
\pixel_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[1]_i_1_n_0\,
      Q => pixel_data(1)
    );
\pixel_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data_reg[31]_0\(2),
      Q => pixel_data(20)
    );
\pixel_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data_reg[31]_0\(3),
      Q => pixel_data(21)
    );
\pixel_data_reg[21]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_pixel_data_reg[21]_i_3_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \pixel_data_reg[21]_i_3_n_5\,
      CO(1) => \pixel_data_reg[21]_i_3_n_6\,
      CO(0) => \pixel_data_reg[21]_i_3_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \^last_size_reg\(0),
      DI(0) => '0',
      O(7 downto 4) => \NLW_pixel_data_reg[21]_i_3_O_UNCONNECTED\(7 downto 4),
      O(3 downto 1) => \last_size_reg[0]_1\(2 downto 0),
      O(0) => \NLW_pixel_data_reg[21]_i_3_O_UNCONNECTED\(0),
      S(7 downto 4) => B"0000",
      S(3) => \pixel_data[21]_i_5_n_0\,
      S(2) => \pixel_data[21]_i_6_n_0\,
      S(1) => \^last_size_reg\(0),
      S(0) => '1'
    );
\pixel_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[22]_i_1_n_0\,
      Q => pixel_data(22)
    );
\pixel_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[23]_i_1_n_0\,
      Q => pixel_data(23)
    );
\pixel_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[24]_i_1_n_0\,
      Q => pixel_data(24)
    );
\pixel_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[25]_i_1_n_0\,
      Q => pixel_data(25)
    );
\pixel_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[26]_i_1_n_0\,
      Q => pixel_data(26)
    );
\pixel_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[27]_i_1_n_0\,
      Q => pixel_data(27)
    );
\pixel_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[28]_i_1_n_0\,
      Q => pixel_data(28)
    );
\pixel_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[29]_i_1_n_0\,
      Q => pixel_data(29)
    );
\pixel_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[2]_i_1_n_0\,
      Q => pixel_data(2)
    );
\pixel_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data_reg[31]_0\(4),
      Q => pixel_data(30)
    );
\pixel_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data_reg[31]_0\(5),
      Q => pixel_data(31)
    );
\pixel_data_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_pixel_data_reg[31]_i_3_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \pixel_data_reg[31]_i_3_n_5\,
      CO(1) => \pixel_data_reg[31]_i_3_n_6\,
      CO(0) => \pixel_data_reg[31]_i_3_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \^last_size_reg\(0),
      DI(0) => '0',
      O(7 downto 4) => \NLW_pixel_data_reg[31]_i_3_O_UNCONNECTED\(7 downto 4),
      O(3 downto 1) => O(2 downto 0),
      O(0) => \NLW_pixel_data_reg[31]_i_3_O_UNCONNECTED\(0),
      S(7 downto 4) => B"0000",
      S(3) => \pixel_data[31]_i_5_n_0\,
      S(2) => \pixel_data[31]_i_6_n_0\,
      S(1) => \^last_size_reg\(0),
      S(0) => '1'
    );
\pixel_data_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[32]_i_1_n_0\,
      Q => pixel_data(32)
    );
\pixel_data_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[33]_i_1_n_0\,
      Q => pixel_data(33)
    );
\pixel_data_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[34]_i_1_n_0\,
      Q => pixel_data(34)
    );
\pixel_data_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[35]_i_1_n_0\,
      Q => pixel_data(35)
    );
\pixel_data_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[36]_i_1_n_0\,
      Q => pixel_data(36)
    );
\pixel_data_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[37]_i_1_n_0\,
      Q => pixel_data(37)
    );
\pixel_data_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[38]_i_1_n_0\,
      Q => pixel_data(38)
    );
\pixel_data_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[39]_i_1_n_0\,
      Q => pixel_data(39)
    );
\pixel_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[3]_i_1_n_0\,
      Q => pixel_data(3)
    );
\pixel_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[4]_i_1_n_0\,
      Q => pixel_data(4)
    );
\pixel_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[5]_i_1_n_0\,
      Q => pixel_data(5)
    );
\pixel_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[6]_i_1_n_0\,
      Q => pixel_data(6)
    );
\pixel_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[7]_i_1_n_0\,
      Q => pixel_data(7)
    );
\pixel_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[8]_i_1_n_0\,
      Q => pixel_data(8)
    );
\pixel_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \pixel_data[9]_i_1_n_0\,
      Q => pixel_data(9)
    );
pixel_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8F8F800"
    )
        port map (
      I0 => pkt_valid,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \^ready_delay_reg[0]_0\(0),
      I3 => \^last_size_reg\(2),
      I4 => \^last_size_reg\(1),
      I5 => \^last_size_reg\(0),
      O => \^pixel_enable3_out\
    );
pixel_enable_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \^pixel_enable3_out\,
      Q => pixel_enable
    );
\ready_delay_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \di_reg_reg[7]_0\(0),
      Q => \^ready_delay_reg[0]_0\(0)
    );
\ready_delay_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \^ready_delay_reg[0]_0\(0),
      Q => p_0_in
    );
\reg_pix_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(0),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[0]_i_1_n_0\
    );
\reg_pix_data[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(0),
      I3 => raw10_pix_data(0),
      O => reg_pix_valid_reg_0(0)
    );
\reg_pix_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(10),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[10]_i_1_n_0\
    );
\reg_pix_data[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(10),
      I3 => raw10_pix_data(10),
      O => reg_pix_valid_reg_0(10)
    );
\reg_pix_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(11),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[11]_i_1_n_0\
    );
\reg_pix_data[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(11),
      I3 => raw10_pix_data(11),
      O => reg_pix_valid_reg_0(11)
    );
\reg_pix_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(12),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[12]_i_1_n_0\
    );
\reg_pix_data[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(12),
      I3 => raw10_pix_data(12),
      O => reg_pix_valid_reg_0(12)
    );
\reg_pix_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(13),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[13]_i_1_n_0\
    );
\reg_pix_data[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(13),
      I3 => raw10_pix_data(13),
      O => reg_pix_valid_reg_0(13)
    );
\reg_pix_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(14),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[14]_i_1_n_0\
    );
\reg_pix_data[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(14),
      I3 => raw10_pix_data(14),
      O => reg_pix_valid_reg_0(14)
    );
\reg_pix_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(15),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[15]_i_1_n_0\
    );
\reg_pix_data[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(15),
      I3 => raw10_pix_data(15),
      O => reg_pix_valid_reg_0(15)
    );
\reg_pix_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(16),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[16]_i_1_n_0\
    );
\reg_pix_data[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(16),
      I3 => raw10_pix_data(16),
      O => reg_pix_valid_reg_0(16)
    );
\reg_pix_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(17),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[17]_i_1_n_0\
    );
\reg_pix_data[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(17),
      I3 => raw10_pix_data(17),
      O => reg_pix_valid_reg_0(17)
    );
\reg_pix_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(18),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[18]_i_1_n_0\
    );
\reg_pix_data[18]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(18),
      I3 => raw10_pix_data(18),
      O => reg_pix_valid_reg_0(18)
    );
\reg_pix_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(19),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[19]_i_1_n_0\
    );
\reg_pix_data[19]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(19),
      I3 => raw10_pix_data(19),
      O => reg_pix_valid_reg_0(19)
    );
\reg_pix_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(1),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[1]_i_1_n_0\
    );
\reg_pix_data[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(1),
      I3 => raw10_pix_data(1),
      O => reg_pix_valid_reg_0(1)
    );
\reg_pix_data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(20),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[20]_i_1_n_0\
    );
\reg_pix_data[20]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(20),
      I3 => raw10_pix_data(20),
      O => reg_pix_valid_reg_0(20)
    );
\reg_pix_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(21),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[21]_i_1_n_0\
    );
\reg_pix_data[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(21),
      I3 => raw10_pix_data(21),
      O => reg_pix_valid_reg_0(21)
    );
\reg_pix_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(22),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[22]_i_1_n_0\
    );
\reg_pix_data[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(22),
      I3 => raw10_pix_data(22),
      O => reg_pix_valid_reg_0(22)
    );
\reg_pix_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(23),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[23]_i_1_n_0\
    );
\reg_pix_data[23]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(23),
      I3 => raw10_pix_data(23),
      O => reg_pix_valid_reg_0(23)
    );
\reg_pix_data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(24),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[24]_i_1_n_0\
    );
\reg_pix_data[24]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(24),
      I3 => raw10_pix_data(24),
      O => reg_pix_valid_reg_0(24)
    );
\reg_pix_data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(25),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[25]_i_1_n_0\
    );
\reg_pix_data[25]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(25),
      I3 => raw10_pix_data(25),
      O => reg_pix_valid_reg_0(25)
    );
\reg_pix_data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(26),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[26]_i_1_n_0\
    );
\reg_pix_data[26]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(26),
      I3 => raw10_pix_data(26),
      O => reg_pix_valid_reg_0(26)
    );
\reg_pix_data[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(27),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[27]_i_1_n_0\
    );
\reg_pix_data[27]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(27),
      I3 => raw10_pix_data(27),
      O => reg_pix_valid_reg_0(27)
    );
\reg_pix_data[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(28),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[28]_i_1_n_0\
    );
\reg_pix_data[28]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(28),
      I3 => raw10_pix_data(28),
      O => reg_pix_valid_reg_0(28)
    );
\reg_pix_data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(29),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[29]_i_1_n_0\
    );
\reg_pix_data[29]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(29),
      I3 => raw10_pix_data(29),
      O => reg_pix_valid_reg_0(29)
    );
\reg_pix_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(2),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[2]_i_1_n_0\
    );
\reg_pix_data[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(2),
      I3 => raw10_pix_data(2),
      O => reg_pix_valid_reg_0(2)
    );
\reg_pix_data[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(30),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[30]_i_1_n_0\
    );
\reg_pix_data[30]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(30),
      I3 => raw10_pix_data(30),
      O => reg_pix_valid_reg_0(30)
    );
\reg_pix_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(31),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[31]_i_1_n_0\
    );
\reg_pix_data[31]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(31),
      I3 => raw10_pix_data(31),
      O => reg_pix_valid_reg_0(31)
    );
\reg_pix_data[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(32),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[32]_i_1_n_0\
    );
\reg_pix_data[32]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => raw10_pix_data(32),
      O => reg_pix_valid_reg_0(32)
    );
\reg_pix_data[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(33),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[33]_i_1_n_0\
    );
\reg_pix_data[33]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => raw10_pix_data(33),
      O => reg_pix_valid_reg_0(33)
    );
\reg_pix_data[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(34),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[34]_i_1_n_0\
    );
\reg_pix_data[34]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => raw10_pix_data(34),
      O => reg_pix_valid_reg_0(34)
    );
\reg_pix_data[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(35),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[35]_i_1_n_0\
    );
\reg_pix_data[35]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => raw10_pix_data(35),
      O => reg_pix_valid_reg_0(35)
    );
\reg_pix_data[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(36),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[36]_i_1_n_0\
    );
\reg_pix_data[36]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => raw10_pix_data(36),
      O => reg_pix_valid_reg_0(36)
    );
\reg_pix_data[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(37),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[37]_i_1_n_0\
    );
\reg_pix_data[37]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => raw10_pix_data(37),
      O => reg_pix_valid_reg_0(37)
    );
\reg_pix_data[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(38),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[38]_i_1_n_0\
    );
\reg_pix_data[38]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => raw10_pix_data(38),
      O => reg_pix_valid_reg_0(38)
    );
\reg_pix_data[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(39),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[39]_i_1_n_0\
    );
\reg_pix_data[39]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => raw10_pix_data(39),
      O => reg_pix_valid_reg_0(39)
    );
\reg_pix_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(3),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[3]_i_1_n_0\
    );
\reg_pix_data[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(3),
      I3 => raw10_pix_data(3),
      O => reg_pix_valid_reg_0(3)
    );
\reg_pix_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(4),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[4]_i_1_n_0\
    );
\reg_pix_data[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(4),
      I3 => raw10_pix_data(4),
      O => reg_pix_valid_reg_0(4)
    );
\reg_pix_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(5),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[5]_i_1_n_0\
    );
\reg_pix_data[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(5),
      I3 => raw10_pix_data(5),
      O => reg_pix_valid_reg_0(5)
    );
\reg_pix_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(6),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[6]_i_1_n_0\
    );
\reg_pix_data[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(6),
      I3 => raw10_pix_data(6),
      O => reg_pix_valid_reg_0(6)
    );
\reg_pix_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(7),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[7]_i_1_n_0\
    );
\reg_pix_data[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(7),
      I3 => raw10_pix_data(7),
      O => reg_pix_valid_reg_0(7)
    );
\reg_pix_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(8),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[8]_i_1_n_0\
    );
\reg_pix_data[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(8),
      I3 => raw10_pix_data(8),
      O => reg_pix_valid_reg_0(8)
    );
\reg_pix_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(9),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_data[9]_i_1_n_0\
    );
\reg_pix_data[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[31]_0\(9),
      I3 => raw10_pix_data(9),
      O => reg_pix_valid_reg_0(9)
    );
reg_pix_data_enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_enable,
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => reg_pix_data_enable0
    );
reg_pix_data_enable_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => reg_pix_data_enable0,
      Q => raw10_pix_data_enable
    );
\reg_pix_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[0]_i_1_n_0\,
      Q => raw10_pix_data(0)
    );
\reg_pix_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[10]_i_1_n_0\,
      Q => raw10_pix_data(10)
    );
\reg_pix_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[11]_i_1_n_0\,
      Q => raw10_pix_data(11)
    );
\reg_pix_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[12]_i_1_n_0\,
      Q => raw10_pix_data(12)
    );
\reg_pix_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[13]_i_1_n_0\,
      Q => raw10_pix_data(13)
    );
\reg_pix_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[14]_i_1_n_0\,
      Q => raw10_pix_data(14)
    );
\reg_pix_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[15]_i_1_n_0\,
      Q => raw10_pix_data(15)
    );
\reg_pix_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[16]_i_1_n_0\,
      Q => raw10_pix_data(16)
    );
\reg_pix_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[17]_i_1_n_0\,
      Q => raw10_pix_data(17)
    );
\reg_pix_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[18]_i_1_n_0\,
      Q => raw10_pix_data(18)
    );
\reg_pix_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[19]_i_1_n_0\,
      Q => raw10_pix_data(19)
    );
\reg_pix_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[1]_i_1_n_0\,
      Q => raw10_pix_data(1)
    );
\reg_pix_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[20]_i_1_n_0\,
      Q => raw10_pix_data(20)
    );
\reg_pix_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[21]_i_1_n_0\,
      Q => raw10_pix_data(21)
    );
\reg_pix_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[22]_i_1_n_0\,
      Q => raw10_pix_data(22)
    );
\reg_pix_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[23]_i_1_n_0\,
      Q => raw10_pix_data(23)
    );
\reg_pix_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[24]_i_1_n_0\,
      Q => raw10_pix_data(24)
    );
\reg_pix_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[25]_i_1_n_0\,
      Q => raw10_pix_data(25)
    );
\reg_pix_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[26]_i_1_n_0\,
      Q => raw10_pix_data(26)
    );
\reg_pix_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[27]_i_1_n_0\,
      Q => raw10_pix_data(27)
    );
\reg_pix_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[28]_i_1_n_0\,
      Q => raw10_pix_data(28)
    );
\reg_pix_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[29]_i_1_n_0\,
      Q => raw10_pix_data(29)
    );
\reg_pix_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[2]_i_1_n_0\,
      Q => raw10_pix_data(2)
    );
\reg_pix_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[30]_i_1_n_0\,
      Q => raw10_pix_data(30)
    );
\reg_pix_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[31]_i_1_n_0\,
      Q => raw10_pix_data(31)
    );
\reg_pix_data_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[32]_i_1_n_0\,
      Q => raw10_pix_data(32)
    );
\reg_pix_data_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[33]_i_1_n_0\,
      Q => raw10_pix_data(33)
    );
\reg_pix_data_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[34]_i_1_n_0\,
      Q => raw10_pix_data(34)
    );
\reg_pix_data_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[35]_i_1_n_0\,
      Q => raw10_pix_data(35)
    );
\reg_pix_data_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[36]_i_1_n_0\,
      Q => raw10_pix_data(36)
    );
\reg_pix_data_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[37]_i_1_n_0\,
      Q => raw10_pix_data(37)
    );
\reg_pix_data_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[38]_i_1_n_0\,
      Q => raw10_pix_data(38)
    );
\reg_pix_data_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[39]_i_1_n_0\,
      Q => raw10_pix_data(39)
    );
\reg_pix_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[3]_i_1_n_0\,
      Q => raw10_pix_data(3)
    );
\reg_pix_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[4]_i_1_n_0\,
      Q => raw10_pix_data(4)
    );
\reg_pix_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[5]_i_1_n_0\,
      Q => raw10_pix_data(5)
    );
\reg_pix_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[6]_i_1_n_0\,
      Q => raw10_pix_data(6)
    );
\reg_pix_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[7]_i_1_n_0\,
      Q => raw10_pix_data(7)
    );
\reg_pix_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[8]_i_1_n_0\,
      Q => raw10_pix_data(8)
    );
\reg_pix_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_data[9]_i_1_n_0\,
      Q => raw10_pix_data(9)
    );
\reg_pix_di[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => Q(0),
      I3 => raw10_pix_di(3),
      O => D(0)
    );
\reg_pix_di[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => Q(1),
      I3 => raw10_pix_di(3),
      O => D(1)
    );
\reg_pix_di[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => di_reg(3),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_di[3]_i_1_n_0\
    );
\reg_pix_di[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => Q(2),
      I3 => raw10_pix_di(3),
      O => D(2)
    );
\reg_pix_di[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => Q(3),
      I3 => raw10_pix_di(3),
      O => D(3)
    );
\reg_pix_di[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => di_reg(6),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_di[6]_i_1_n_0\
    );
\reg_pix_di[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => Q(4),
      I3 => raw10_pix_di(6),
      O => D(4)
    );
\reg_pix_di[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => di_reg(7),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[0]_0\(0),
      O => \reg_pix_di[7]_i_1_n_0\
    );
\reg_pix_di[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => Q(5),
      I3 => raw10_pix_di(7),
      O => D(5)
    );
\reg_pix_di_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_di[3]_i_1_n_0\,
      Q => raw10_pix_di(3)
    );
\reg_pix_di_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_di[6]_i_1_n_0\,
      Q => raw10_pix_di(6)
    );
\reg_pix_di_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => \reg_pix_di[7]_i_1_n_0\,
      Q => raw10_pix_di(7)
    );
reg_pix_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ready_delay_reg[0]_0\(0),
      I1 => p_0_in,
      O => reg_pix_valid0
    );
reg_pix_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \pixel_data_reg[0]_0\,
      D => reg_pix_valid0,
      Q => \^raw10_pix_valid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_clk_io\ is
  port (
    clk_hs_bit : out STD_LOGIC;
    clk_hs_byte : out STD_LOGIC;
    dphy_clk_p : in STD_LOGIC;
    dphy_clk_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_clk_io\ : entity is "_dphy_rx_clk_io";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_clk_io\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_clk_io\ is
  signal clk_bit : STD_LOGIC;
  signal clk_lp_n : STD_LOGIC;
  signal clk_lp_p : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_BUFGCE_DIV1 : label is "PRIMITIVE";
  attribute BOX_TYPE of u_BUFGCE_DIV4 : label is "PRIMITIVE";
  attribute BOX_TYPE of u_IBUFDS_DPHY : label is "PRIMITIVE";
begin
u_BUFGCE_DIV1: unisim.vcomponents.BUFGCE_DIV
    generic map(
      BUFGCE_DIVIDE => 1,
      CE_TYPE => "SYNC",
      HARDSYNC_CLR => "FALSE",
      IS_CE_INVERTED => '0',
      IS_CLR_INVERTED => '0',
      IS_I_INVERTED => '0',
      SIM_DEVICE => "ULTRASCALE",
      STARTUP_SYNC => "FALSE"
    )
        port map (
      CE => '1',
      CLR => '0',
      I => clk_bit,
      O => clk_hs_bit
    );
u_BUFGCE_DIV4: unisim.vcomponents.BUFGCE_DIV
    generic map(
      BUFGCE_DIVIDE => 4,
      CE_TYPE => "SYNC",
      HARDSYNC_CLR => "FALSE",
      IS_CE_INVERTED => '0',
      IS_CLR_INVERTED => '0',
      IS_I_INVERTED => '0',
      SIM_DEVICE => "ULTRASCALE",
      STARTUP_SYNC => "FALSE"
    )
        port map (
      CE => '1',
      CLR => '0',
      I => clk_bit,
      O => clk_hs_byte
    );
u_IBUFDS_DPHY: unisim.vcomponents.IBUFDS_DPHY
    generic map(
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      HSRX_DISABLE => '0',
      HSRX_O => clk_bit,
      I => dphy_clk_p,
      IB => dphy_clk_n,
      LPRX_DISABLE => '0',
      LPRX_O_N => clk_lp_n,
      LPRX_O_P => clk_lp_p
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner\ is
  port (
    data_byte_valid_reg_0 : out STD_LOGIC;
    data_byte_valid0 : out STD_LOGIC;
    \last_byte_reg[6]_0\ : out STD_LOGIC;
    \last_byte_reg[4]_0\ : out STD_LOGIC;
    \data_byte_aligned_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    align_flag_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_byte_reg[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_byte_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    u_ISERDESE3 : out STD_LOGIC;
    \last_byte_reg[1]_0\ : out STD_LOGIC;
    \align_offset_reg[3]_0\ : out STD_LOGIC;
    \align_offset_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \align_offset_reg[3]_1\ : out STD_LOGIC;
    \align_offset_reg[2]_0\ : out STD_LOGIC;
    \align_offset_reg[3]_2\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_byte : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_byte_aligned_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \align_idx_reg[0][0]\ : in STD_LOGIC;
    lane_byte_aligned_valid : in STD_LOGIC;
    \data_byte_aligned_reg[6]_0\ : in STD_LOGIC;
    \align_offset_reg[2]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[5]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[6]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[6]_2\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[0]_1\ : in STD_LOGIC;
    \align_offset_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_byte_aligned_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner\ : entity is "_dphy_rx_data_byte_aligner";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner\ is
  signal \align_offset[0]_i_6_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_7_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_10_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_4_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_5_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_6_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_7_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_8_n_0\ : STD_LOGIC;
  signal \^align_offset_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \align_offset_reg_n_0_[2]\ : STD_LOGIC;
  signal \align_offset_reg_n_0_[3]\ : STD_LOGIC;
  signal byte_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_byte_aligned[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[6]_i_5_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[7]_i_6_n_0\ : STD_LOGIC;
  signal \^data_byte_valid0\ : STD_LOGIC;
  signal data_byte_valid_i_2_n_0 : STD_LOGIC;
  signal \^data_byte_valid_reg_0\ : STD_LOGIC;
  signal hs_settle_count : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \hs_settle_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \^last_byte_reg[4]_0\ : STD_LOGIC;
  signal \^last_byte_reg[4]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^last_byte_reg[6]_0\ : STD_LOGIC;
  signal \^last_byte_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \last_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[3]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[4]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_idx[0][2]_i_1\ : label is "soft_lutpair247";
  attribute SOFT_HLUTNM of \align_offset[0]_i_3\ : label is "soft_lutpair240";
  attribute SOFT_HLUTNM of \align_offset[0]_i_4\ : label is "soft_lutpair241";
  attribute SOFT_HLUTNM of \align_offset[0]_i_7\ : label is "soft_lutpair245";
  attribute SOFT_HLUTNM of \align_offset[2]_i_4\ : label is "soft_lutpair243";
  attribute SOFT_HLUTNM of \align_offset[2]_i_5\ : label is "soft_lutpair245";
  attribute SOFT_HLUTNM of \align_offset[2]_i_6\ : label is "soft_lutpair241";
  attribute SOFT_HLUTNM of \align_offset[2]_i_7\ : label is "soft_lutpair240";
  attribute SOFT_HLUTNM of \align_offset[2]_i_8\ : label is "soft_lutpair243";
  attribute SOFT_HLUTNM of \data_byte_aligned[2]_i_4\ : label is "soft_lutpair244";
  attribute SOFT_HLUTNM of \data_byte_aligned[3]_i_4\ : label is "soft_lutpair246";
  attribute SOFT_HLUTNM of \data_byte_aligned[4]_i_5\ : label is "soft_lutpair244";
  attribute SOFT_HLUTNM of \data_byte_aligned[7]_i_6\ : label is "soft_lutpair246";
  attribute SOFT_HLUTNM of data_byte_valid_i_1 : label is "soft_lutpair247";
  attribute SOFT_HLUTNM of \hs_settle_count[1]_i_1\ : label is "soft_lutpair248";
  attribute SOFT_HLUTNM of \hs_settle_count[2]_i_1\ : label is "soft_lutpair248";
  attribute SOFT_HLUTNM of \hs_settle_count[3]_i_1\ : label is "soft_lutpair242";
  attribute SOFT_HLUTNM of \hs_settle_count[4]_i_1\ : label is "soft_lutpair242";
  attribute SOFT_HLUTNM of \lane_buf[0][0]_i_1\ : label is "soft_lutpair249";
  attribute SOFT_HLUTNM of \lane_buf[0][1]_i_1\ : label is "soft_lutpair249";
  attribute SOFT_HLUTNM of \lane_buf[0][2]_i_1\ : label is "soft_lutpair250";
  attribute SOFT_HLUTNM of \lane_buf[0][3]_i_1\ : label is "soft_lutpair250";
  attribute SOFT_HLUTNM of \lane_buf[0][4]_i_1\ : label is "soft_lutpair251";
  attribute SOFT_HLUTNM of \lane_buf[0][5]_i_1\ : label is "soft_lutpair251";
  attribute SOFT_HLUTNM of \lane_buf[0][6]_i_1\ : label is "soft_lutpair252";
  attribute SOFT_HLUTNM of \lane_buf[0][7]_i_1\ : label is "soft_lutpair252";
begin
  \align_offset_reg[1]_0\(1 downto 0) <= \^align_offset_reg[1]_0\(1 downto 0);
  data_byte_valid0 <= \^data_byte_valid0\;
  data_byte_valid_reg_0 <= \^data_byte_valid_reg_0\;
  \last_byte_reg[4]_0\ <= \^last_byte_reg[4]_0\;
  \last_byte_reg[4]_1\(0) <= \^last_byte_reg[4]_1\(0);
  \last_byte_reg[6]_0\ <= \^last_byte_reg[6]_0\;
  \last_byte_reg[7]_0\(3 downto 0) <= \^last_byte_reg[7]_0\(3 downto 0);
\align_idx[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => lane_byte_aligned_valid,
      I1 => \^data_byte_valid_reg_0\,
      I2 => \align_idx_reg[0][0]\,
      O => align_flag_reg(0)
    );
\align_offset[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => Q(1),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => Q(2),
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \align_offset[0]_i_6_n_0\,
      O => u_ISERDESE3
    );
\align_offset[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \last_byte_reg_n_0_[1]\,
      I1 => \last_byte_reg_n_0_[4]\,
      I2 => \^last_byte_reg[7]_0\(1),
      I3 => \^last_byte_reg[7]_0\(3),
      I4 => \align_offset[0]_i_7_n_0\,
      O => \last_byte_reg[1]_0\
    );
\align_offset[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => Q(0),
      I2 => \last_byte_reg_n_0_[4]\,
      I3 => \^last_byte_reg[7]_0\(1),
      O => \align_offset[0]_i_6_n_0\
    );
\align_offset[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \last_byte_reg_n_0_[3]\,
      I2 => \^last_byte_reg[7]_0\(2),
      I3 => Q(0),
      O => \align_offset[0]_i_7_n_0\
    );
\align_offset[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^last_byte_reg[4]_0\,
      I1 => \^last_byte_reg[6]_0\,
      O => \^last_byte_reg[4]_1\(0)
    );
\align_offset[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => Q(0),
      I2 => \^last_byte_reg[7]_0\(2),
      I3 => Q(2),
      O => \align_offset[2]_i_10_n_0\
    );
\align_offset[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFBFBFFFFFBFB"
    )
        port map (
      I0 => \last_byte_reg_n_0_[4]\,
      I1 => \align_offset[2]_i_4_n_0\,
      I2 => \align_offset[2]_i_5_n_0\,
      I3 => \^last_byte_reg[7]_0\(2),
      I4 => Q(0),
      I5 => \align_offset[2]_i_6_n_0\,
      O => \^last_byte_reg[4]_0\
    );
\align_offset[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008000FF00800080"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => Q(0),
      I2 => \align_offset[2]_i_7_n_0\,
      I3 => \align_offset[2]_i_8_n_0\,
      I4 => \align_offset_reg[2]_1\,
      I5 => \align_offset[2]_i_10_n_0\,
      O => \^last_byte_reg[6]_0\
    );
\align_offset[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^last_byte_reg[7]_0\(1),
      I3 => Q(1),
      O => \align_offset[2]_i_4_n_0\
    );
\align_offset[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \last_byte_reg_n_0_[3]\,
      I1 => \last_byte_reg_n_0_[2]\,
      O => \align_offset[2]_i_5_n_0\
    );
\align_offset[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => \^last_byte_reg[7]_0\(1),
      I2 => \last_byte_reg_n_0_[4]\,
      I3 => \last_byte_reg_n_0_[1]\,
      O => \align_offset[2]_i_6_n_0\
    );
\align_offset[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \last_byte_reg_n_0_[3]\,
      I1 => Q(2),
      I2 => \^last_byte_reg[7]_0\(3),
      I3 => Q(1),
      O => \align_offset[2]_i_7_n_0\
    );
\align_offset[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \last_byte_reg_n_0_[4]\,
      O => \align_offset[2]_i_8_n_0\
    );
\align_offset_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => \align_offset_reg[1]_1\(0),
      Q => \^align_offset_reg[1]_0\(0)
    );
\align_offset_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => \align_offset_reg[1]_1\(1),
      Q => \^align_offset_reg[1]_0\(1)
    );
\align_offset_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => \^last_byte_reg[4]_1\(0),
      Q => \align_offset_reg_n_0_[2]\
    );
\align_offset_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => '1',
      Q => \align_offset_reg_n_0_[3]\
    );
\data_byte_aligned[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10000000"
    )
        port map (
      I0 => \^last_byte_reg[6]_0\,
      I1 => \data_byte_aligned_reg[0]_0\,
      I2 => \^last_byte_reg[4]_0\,
      I3 => Q(0),
      I4 => \^data_byte_valid0\,
      I5 => \data_byte_aligned[0]_i_2_n_0\,
      O => p_1_in(0)
    );
\data_byte_aligned[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned[4]_i_4_n_0\,
      I1 => \data_byte_aligned[0]_i_3_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned_reg[0]_1\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[4]_0\,
      O => \data_byte_aligned[0]_i_2_n_0\
    );
\data_byte_aligned[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_byte_reg_n_0_[4]\,
      I1 => \last_byte_reg_n_0_[3]\,
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[2]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[1]\,
      O => \data_byte_aligned[0]_i_3_n_0\
    );
\data_byte_aligned[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned[5]_i_4_n_0\,
      I1 => \data_byte_aligned[1]_i_3_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[1]_i_4_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[5]_0\,
      O => \align_offset_reg[3]_0\
    );
\data_byte_aligned[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \last_byte_reg_n_0_[4]\,
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[2]\,
      O => \data_byte_aligned[1]_i_3_n_0\
    );
\data_byte_aligned[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA0C0A0C"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^align_offset_reg[1]_0\(0),
      I4 => \last_byte_reg_n_0_[1]\,
      O => \data_byte_aligned[1]_i_4_n_0\
    );
\data_byte_aligned[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3A0A"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_2_n_0\,
      I1 => \data_byte_aligned_reg[6]_0\,
      I2 => \^data_byte_valid0\,
      I3 => Q(2),
      O => p_1_in(2)
    );
\data_byte_aligned[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned_reg[6]_2\,
      I1 => \data_byte_aligned[2]_i_3_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[2]_i_4_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[6]_1\,
      O => \data_byte_aligned[2]_i_2_n_0\
    );
\data_byte_aligned[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => \^last_byte_reg[7]_0\(1),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[4]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[3]\,
      O => \data_byte_aligned[2]_i_3_n_0\
    );
\data_byte_aligned[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8830"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \^align_offset_reg[1]_0\(1),
      I2 => Q(7),
      I3 => \^align_offset_reg[1]_0\(0),
      O => \data_byte_aligned[2]_i_4_n_0\
    );
\data_byte_aligned[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned_reg[3]_0\,
      I1 => \data_byte_aligned[3]_i_3_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[3]_i_4_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[3]_1\,
      O => \align_offset_reg[3]_1\
    );
\data_byte_aligned[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => \^last_byte_reg[7]_0\(2),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_0\(1),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[4]\,
      O => \data_byte_aligned[3]_i_3_n_0\
    );
\data_byte_aligned[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(1),
      I1 => \^align_offset_reg[1]_0\(0),
      I2 => \last_byte_reg_n_0_[3]\,
      O => \data_byte_aligned[3]_i_4_n_0\
    );
\data_byte_aligned[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \data_byte_aligned_reg[4]_0\,
      I1 => \data_byte_aligned[4]_i_4_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[4]_i_5_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[4]_1\,
      O => \align_offset_reg[3]_2\
    );
\data_byte_aligned[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(0),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_0\(2),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \^last_byte_reg[7]_0\(1),
      O => \data_byte_aligned[4]_i_4_n_0\
    );
\data_byte_aligned[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(1),
      I1 => \^align_offset_reg[1]_0\(0),
      I2 => \last_byte_reg_n_0_[4]\,
      O => \data_byte_aligned[4]_i_5_n_0\
    );
\data_byte_aligned[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EFE0E0EFEFEFEF"
    )
        port map (
      I0 => \data_byte_aligned_reg[6]_0\,
      I1 => Q(5),
      I2 => \^data_byte_valid0\,
      I3 => \align_offset_reg_n_0_[3]\,
      I4 => \data_byte_aligned[5]_i_2_n_0\,
      I5 => \data_byte_aligned[5]_i_3_n_0\,
      O => p_1_in(5)
    );
\data_byte_aligned[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800880033300030"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => Q(6),
      I3 => \^align_offset_reg[1]_0\(0),
      I4 => Q(7),
      I5 => \^align_offset_reg[1]_0\(1),
      O => \data_byte_aligned[5]_i_2_n_0\
    );
\data_byte_aligned[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \align_offset_reg_n_0_[3]\,
      I1 => \data_byte_aligned[5]_i_4_n_0\,
      I2 => \align_offset_reg_n_0_[2]\,
      I3 => \data_byte_aligned_reg[5]_0\,
      O => \data_byte_aligned[5]_i_3_n_0\
    );
\data_byte_aligned[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_0\(3),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \^last_byte_reg[7]_0\(2),
      O => \data_byte_aligned[5]_i_4_n_0\
    );
\data_byte_aligned[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3A0A"
    )
        port map (
      I0 => \data_byte_aligned[6]_i_2_n_0\,
      I1 => \data_byte_aligned_reg[6]_0\,
      I2 => \^data_byte_valid0\,
      I3 => Q(6),
      O => p_1_in(6)
    );
\data_byte_aligned[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_byte_aligned_reg[6]_1\,
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \data_byte_aligned_reg[6]_2\,
      I3 => \align_offset_reg_n_0_[3]\,
      I4 => \data_byte_aligned[6]_i_5_n_0\,
      O => \data_byte_aligned[6]_i_2_n_0\
    );
\data_byte_aligned[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800300"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \^align_offset_reg[1]_0\(0),
      I3 => Q(7),
      I4 => \^align_offset_reg[1]_0\(1),
      O => \data_byte_aligned[6]_i_5_n_0\
    );
\data_byte_aligned[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_byte_aligned_reg[3]_1\,
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \data_byte_aligned_reg[3]_0\,
      I3 => \align_offset_reg_n_0_[3]\,
      I4 => \data_byte_aligned[7]_i_6_n_0\,
      O => \align_offset_reg[2]_0\
    );
\data_byte_aligned[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(0),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \align_offset_reg_n_0_[2]\,
      O => \data_byte_aligned[7]_i_6_n_0\
    );
\data_byte_aligned_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => AR(0),
      D => p_1_in(0),
      Q => byte_data(0)
    );
\data_byte_aligned_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => AR(0),
      D => D(0),
      Q => byte_data(1)
    );
\data_byte_aligned_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => AR(0),
      D => p_1_in(2),
      Q => byte_data(2)
    );
\data_byte_aligned_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => AR(0),
      D => D(1),
      Q => byte_data(3)
    );
\data_byte_aligned_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => AR(0),
      D => D(2),
      Q => byte_data(4)
    );
\data_byte_aligned_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => AR(0),
      D => p_1_in(5),
      Q => byte_data(5)
    );
\data_byte_aligned_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => AR(0),
      D => p_1_in(6),
      Q => byte_data(6)
    );
\data_byte_aligned_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => AR(0),
      D => D(3),
      Q => byte_data(7)
    );
data_byte_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => data_byte_valid_i_2_n_0,
      O => \^data_byte_valid0\
    );
data_byte_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[1]\,
      I1 => \hs_settle_count_reg_n_0_[0]\,
      I2 => \hs_settle_count_reg_n_0_[5]\,
      I3 => \hs_settle_count_reg_n_0_[4]\,
      I4 => \hs_settle_count_reg_n_0_[3]\,
      I5 => \hs_settle_count_reg_n_0_[2]\,
      O => data_byte_valid_i_2_n_0
    );
data_byte_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => \^data_byte_valid0\,
      Q => \^data_byte_valid_reg_0\
    );
\hs_settle_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFDF"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[2]\,
      I1 => \hs_settle_count_reg_n_0_[3]\,
      I2 => \hs_settle_count_reg_n_0_[4]\,
      I3 => \hs_settle_count_reg_n_0_[5]\,
      I4 => \hs_settle_count_reg_n_0_[1]\,
      I5 => \hs_settle_count_reg_n_0_[0]\,
      O => hs_settle_count(0)
    );
\hs_settle_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[0]\,
      I1 => \hs_settle_count_reg_n_0_[1]\,
      O => hs_settle_count(1)
    );
\hs_settle_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[2]\,
      I1 => \hs_settle_count_reg_n_0_[0]\,
      I2 => \hs_settle_count_reg_n_0_[1]\,
      O => hs_settle_count(2)
    );
\hs_settle_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[3]\,
      I1 => \hs_settle_count_reg_n_0_[1]\,
      I2 => \hs_settle_count_reg_n_0_[0]\,
      I3 => \hs_settle_count_reg_n_0_[2]\,
      O => hs_settle_count(3)
    );
\hs_settle_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[2]\,
      I1 => \hs_settle_count_reg_n_0_[0]\,
      I2 => \hs_settle_count_reg_n_0_[1]\,
      I3 => \hs_settle_count_reg_n_0_[3]\,
      I4 => \hs_settle_count_reg_n_0_[4]\,
      O => hs_settle_count(4)
    );
\hs_settle_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[5]\,
      I1 => \hs_settle_count_reg_n_0_[2]\,
      I2 => \hs_settle_count_reg_n_0_[0]\,
      I3 => \hs_settle_count_reg_n_0_[1]\,
      I4 => \hs_settle_count_reg_n_0_[3]\,
      I5 => \hs_settle_count_reg_n_0_[4]\,
      O => hs_settle_count(5)
    );
\hs_settle_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => hs_settle_count(0),
      Q => \hs_settle_count_reg_n_0_[0]\
    );
\hs_settle_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => hs_settle_count(1),
      Q => \hs_settle_count_reg_n_0_[1]\
    );
\hs_settle_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => hs_settle_count(2),
      Q => \hs_settle_count_reg_n_0_[2]\
    );
\hs_settle_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => hs_settle_count(3),
      Q => \hs_settle_count_reg_n_0_[3]\
    );
\hs_settle_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => hs_settle_count(4),
      Q => \hs_settle_count_reg_n_0_[4]\
    );
\hs_settle_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => hs_settle_count(5),
      Q => \hs_settle_count_reg_n_0_[5]\
    );
\lane_buf[0][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(0),
      I1 => \align_idx_reg[0][0]\,
      O => \data_byte_aligned_reg[7]_0\(0)
    );
\lane_buf[0][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(1),
      I1 => \align_idx_reg[0][0]\,
      O => \data_byte_aligned_reg[7]_0\(1)
    );
\lane_buf[0][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(2),
      I1 => \align_idx_reg[0][0]\,
      O => \data_byte_aligned_reg[7]_0\(2)
    );
\lane_buf[0][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(3),
      I1 => \align_idx_reg[0][0]\,
      O => \data_byte_aligned_reg[7]_0\(3)
    );
\lane_buf[0][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(4),
      I1 => \align_idx_reg[0][0]\,
      O => \data_byte_aligned_reg[7]_0\(4)
    );
\lane_buf[0][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(5),
      I1 => \align_idx_reg[0][0]\,
      O => \data_byte_aligned_reg[7]_0\(5)
    );
\lane_buf[0][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(6),
      I1 => \align_idx_reg[0][0]\,
      O => \data_byte_aligned_reg[7]_0\(6)
    );
\lane_buf[0][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(7),
      I1 => \align_idx_reg[0][0]\,
      O => \data_byte_aligned_reg[7]_0\(7)
    );
\last_byte_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => \^last_byte_reg[7]_0\(0)
    );
\last_byte_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => Q(1),
      Q => \last_byte_reg_n_0_[1]\
    );
\last_byte_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => Q(2),
      Q => \last_byte_reg_n_0_[2]\
    );
\last_byte_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => Q(3),
      Q => \last_byte_reg_n_0_[3]\
    );
\last_byte_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => Q(4),
      Q => \last_byte_reg_n_0_[4]\
    );
\last_byte_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => Q(5),
      Q => \^last_byte_reg[7]_0\(1)
    );
\last_byte_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => Q(6),
      Q => \^last_byte_reg[7]_0\(2)
    );
\last_byte_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => Q(7),
      Q => \^last_byte_reg[7]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_6\ is
  port (
    data_byte_valid_reg_0 : out STD_LOGIC;
    data_byte_valid0 : out STD_LOGIC;
    \last_byte_reg[6]_0\ : out STD_LOGIC;
    \last_byte_reg[4]_0\ : out STD_LOGIC;
    \data_byte_aligned_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    align_flag_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_byte_reg[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_byte_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    u_ISERDESE3 : out STD_LOGIC;
    \last_byte_reg[1]_0\ : out STD_LOGIC;
    \align_offset_reg[3]_0\ : out STD_LOGIC;
    \align_offset_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \align_offset_reg[3]_1\ : out STD_LOGIC;
    \align_offset_reg[2]_0\ : out STD_LOGIC;
    \align_offset_reg[3]_2\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_byte : in STD_LOGIC;
    data_byte_valid_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_byte_aligned_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \align_idx_reg[1][0]\ : in STD_LOGIC;
    lane_byte_aligned_valid : in STD_LOGIC;
    \data_byte_aligned_reg[6]_0\ : in STD_LOGIC;
    \align_offset_reg[2]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[5]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[6]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[6]_2\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[0]_1\ : in STD_LOGIC;
    \align_offset_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_byte_aligned_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_6\ : entity is "_dphy_rx_data_byte_aligner";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_6\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_6\ is
  signal \align_offset[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_10__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_7__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_8__0_n_0\ : STD_LOGIC;
  signal \^align_offset_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \align_offset_reg_n_0_[2]\ : STD_LOGIC;
  signal \align_offset_reg_n_0_[3]\ : STD_LOGIC;
  signal byte_data : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \data_byte_aligned[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_4__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[6]_i_5__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[7]_i_6__0_n_0\ : STD_LOGIC;
  signal \^data_byte_valid0\ : STD_LOGIC;
  signal \data_byte_valid_i_2__0_n_0\ : STD_LOGIC;
  signal \^data_byte_valid_reg_0\ : STD_LOGIC;
  signal hs_settle_count : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \hs_settle_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \^last_byte_reg[4]_0\ : STD_LOGIC;
  signal \^last_byte_reg[4]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^last_byte_reg[6]_0\ : STD_LOGIC;
  signal \^last_byte_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \last_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[3]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[4]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_idx[1][2]_i_1\ : label is "soft_lutpair260";
  attribute SOFT_HLUTNM of \align_offset[0]_i_3__0\ : label is "soft_lutpair253";
  attribute SOFT_HLUTNM of \align_offset[0]_i_4__0\ : label is "soft_lutpair254";
  attribute SOFT_HLUTNM of \align_offset[0]_i_7__0\ : label is "soft_lutpair258";
  attribute SOFT_HLUTNM of \align_offset[2]_i_4__0\ : label is "soft_lutpair256";
  attribute SOFT_HLUTNM of \align_offset[2]_i_5__0\ : label is "soft_lutpair258";
  attribute SOFT_HLUTNM of \align_offset[2]_i_6__0\ : label is "soft_lutpair254";
  attribute SOFT_HLUTNM of \align_offset[2]_i_7__0\ : label is "soft_lutpair253";
  attribute SOFT_HLUTNM of \align_offset[2]_i_8__0\ : label is "soft_lutpair256";
  attribute SOFT_HLUTNM of \data_byte_aligned[2]_i_4__0\ : label is "soft_lutpair257";
  attribute SOFT_HLUTNM of \data_byte_aligned[3]_i_4__0\ : label is "soft_lutpair259";
  attribute SOFT_HLUTNM of \data_byte_aligned[4]_i_5__0\ : label is "soft_lutpair257";
  attribute SOFT_HLUTNM of \data_byte_aligned[7]_i_6__0\ : label is "soft_lutpair259";
  attribute SOFT_HLUTNM of \data_byte_valid_i_1__0\ : label is "soft_lutpair260";
  attribute SOFT_HLUTNM of \hs_settle_count[1]_i_1__0\ : label is "soft_lutpair261";
  attribute SOFT_HLUTNM of \hs_settle_count[2]_i_1__0\ : label is "soft_lutpair261";
  attribute SOFT_HLUTNM of \hs_settle_count[3]_i_1__0\ : label is "soft_lutpair255";
  attribute SOFT_HLUTNM of \hs_settle_count[4]_i_1__0\ : label is "soft_lutpair255";
  attribute SOFT_HLUTNM of \lane_buf[0][10]_i_1\ : label is "soft_lutpair263";
  attribute SOFT_HLUTNM of \lane_buf[0][11]_i_1\ : label is "soft_lutpair263";
  attribute SOFT_HLUTNM of \lane_buf[0][12]_i_1\ : label is "soft_lutpair264";
  attribute SOFT_HLUTNM of \lane_buf[0][13]_i_1\ : label is "soft_lutpair264";
  attribute SOFT_HLUTNM of \lane_buf[0][14]_i_1\ : label is "soft_lutpair265";
  attribute SOFT_HLUTNM of \lane_buf[0][15]_i_1\ : label is "soft_lutpair265";
  attribute SOFT_HLUTNM of \lane_buf[0][8]_i_1\ : label is "soft_lutpair262";
  attribute SOFT_HLUTNM of \lane_buf[0][9]_i_1\ : label is "soft_lutpair262";
begin
  \align_offset_reg[1]_0\(1 downto 0) <= \^align_offset_reg[1]_0\(1 downto 0);
  data_byte_valid0 <= \^data_byte_valid0\;
  data_byte_valid_reg_0 <= \^data_byte_valid_reg_0\;
  \last_byte_reg[4]_0\ <= \^last_byte_reg[4]_0\;
  \last_byte_reg[4]_1\(0) <= \^last_byte_reg[4]_1\(0);
  \last_byte_reg[6]_0\ <= \^last_byte_reg[6]_0\;
  \last_byte_reg[7]_0\(3 downto 0) <= \^last_byte_reg[7]_0\(3 downto 0);
\align_idx[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => lane_byte_aligned_valid,
      I1 => \^data_byte_valid_reg_0\,
      I2 => \align_idx_reg[1][0]\,
      O => align_flag_reg(0)
    );
\align_offset[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => Q(1),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => Q(2),
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \align_offset[0]_i_6__0_n_0\,
      O => u_ISERDESE3
    );
\align_offset[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \last_byte_reg_n_0_[1]\,
      I1 => \last_byte_reg_n_0_[4]\,
      I2 => \^last_byte_reg[7]_0\(1),
      I3 => \^last_byte_reg[7]_0\(3),
      I4 => \align_offset[0]_i_7__0_n_0\,
      O => \last_byte_reg[1]_0\
    );
\align_offset[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => Q(0),
      I2 => \last_byte_reg_n_0_[4]\,
      I3 => \^last_byte_reg[7]_0\(1),
      O => \align_offset[0]_i_6__0_n_0\
    );
\align_offset[0]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \last_byte_reg_n_0_[3]\,
      I2 => \^last_byte_reg[7]_0\(2),
      I3 => Q(0),
      O => \align_offset[0]_i_7__0_n_0\
    );
\align_offset[2]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => Q(0),
      I2 => \^last_byte_reg[7]_0\(2),
      I3 => Q(2),
      O => \align_offset[2]_i_10__0_n_0\
    );
\align_offset[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^last_byte_reg[4]_0\,
      I1 => \^last_byte_reg[6]_0\,
      O => \^last_byte_reg[4]_1\(0)
    );
\align_offset[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFBFBFFFFFBFB"
    )
        port map (
      I0 => \last_byte_reg_n_0_[4]\,
      I1 => \align_offset[2]_i_4__0_n_0\,
      I2 => \align_offset[2]_i_5__0_n_0\,
      I3 => \^last_byte_reg[7]_0\(2),
      I4 => Q(0),
      I5 => \align_offset[2]_i_6__0_n_0\,
      O => \^last_byte_reg[4]_0\
    );
\align_offset[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008000FF00800080"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => Q(0),
      I2 => \align_offset[2]_i_7__0_n_0\,
      I3 => \align_offset[2]_i_8__0_n_0\,
      I4 => \align_offset_reg[2]_1\,
      I5 => \align_offset[2]_i_10__0_n_0\,
      O => \^last_byte_reg[6]_0\
    );
\align_offset[2]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^last_byte_reg[7]_0\(1),
      I3 => Q(1),
      O => \align_offset[2]_i_4__0_n_0\
    );
\align_offset[2]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \last_byte_reg_n_0_[3]\,
      I1 => \last_byte_reg_n_0_[2]\,
      O => \align_offset[2]_i_5__0_n_0\
    );
\align_offset[2]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => \^last_byte_reg[7]_0\(1),
      I2 => \last_byte_reg_n_0_[4]\,
      I3 => \last_byte_reg_n_0_[1]\,
      O => \align_offset[2]_i_6__0_n_0\
    );
\align_offset[2]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \last_byte_reg_n_0_[3]\,
      I1 => Q(2),
      I2 => \^last_byte_reg[7]_0\(3),
      I3 => Q(1),
      O => \align_offset[2]_i_7__0_n_0\
    );
\align_offset[2]_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \last_byte_reg_n_0_[4]\,
      O => \align_offset[2]_i_8__0_n_0\
    );
\align_offset_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_1(0),
      D => \align_offset_reg[1]_1\(0),
      Q => \^align_offset_reg[1]_0\(0)
    );
\align_offset_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_1(0),
      D => \align_offset_reg[1]_1\(1),
      Q => \^align_offset_reg[1]_0\(1)
    );
\align_offset_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_1(0),
      D => \^last_byte_reg[4]_1\(0),
      Q => \align_offset_reg_n_0_[2]\
    );
\align_offset_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_1(0),
      D => '1',
      Q => \align_offset_reg_n_0_[3]\
    );
\data_byte_aligned[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10000000"
    )
        port map (
      I0 => \^last_byte_reg[6]_0\,
      I1 => \data_byte_aligned_reg[0]_0\,
      I2 => \^last_byte_reg[4]_0\,
      I3 => Q(0),
      I4 => \^data_byte_valid0\,
      I5 => \data_byte_aligned[0]_i_2__0_n_0\,
      O => p_1_in(0)
    );
\data_byte_aligned[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned[4]_i_4__0_n_0\,
      I1 => \data_byte_aligned[0]_i_3__0_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned_reg[0]_1\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[4]_0\,
      O => \data_byte_aligned[0]_i_2__0_n_0\
    );
\data_byte_aligned[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_byte_reg_n_0_[4]\,
      I1 => \last_byte_reg_n_0_[3]\,
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[2]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[1]\,
      O => \data_byte_aligned[0]_i_3__0_n_0\
    );
\data_byte_aligned[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned[5]_i_4__0_n_0\,
      I1 => \data_byte_aligned[1]_i_3__0_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[1]_i_4__0_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[5]_0\,
      O => \align_offset_reg[3]_0\
    );
\data_byte_aligned[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \last_byte_reg_n_0_[4]\,
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[2]\,
      O => \data_byte_aligned[1]_i_3__0_n_0\
    );
\data_byte_aligned[1]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA0C0A0C"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^align_offset_reg[1]_0\(0),
      I4 => \last_byte_reg_n_0_[1]\,
      O => \data_byte_aligned[1]_i_4__0_n_0\
    );
\data_byte_aligned[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3A0A"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_2__0_n_0\,
      I1 => \data_byte_aligned_reg[6]_0\,
      I2 => \^data_byte_valid0\,
      I3 => Q(2),
      O => p_1_in(2)
    );
\data_byte_aligned[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned_reg[6]_2\,
      I1 => \data_byte_aligned[2]_i_3__0_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[2]_i_4__0_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[6]_1\,
      O => \data_byte_aligned[2]_i_2__0_n_0\
    );
\data_byte_aligned[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => \^last_byte_reg[7]_0\(1),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[4]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[3]\,
      O => \data_byte_aligned[2]_i_3__0_n_0\
    );
\data_byte_aligned[2]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8830"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \^align_offset_reg[1]_0\(1),
      I2 => Q(7),
      I3 => \^align_offset_reg[1]_0\(0),
      O => \data_byte_aligned[2]_i_4__0_n_0\
    );
\data_byte_aligned[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned_reg[3]_0\,
      I1 => \data_byte_aligned[3]_i_3__0_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[3]_i_4__0_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[3]_1\,
      O => \align_offset_reg[3]_1\
    );
\data_byte_aligned[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => \^last_byte_reg[7]_0\(2),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_0\(1),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[4]\,
      O => \data_byte_aligned[3]_i_3__0_n_0\
    );
\data_byte_aligned[3]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(1),
      I1 => \^align_offset_reg[1]_0\(0),
      I2 => \last_byte_reg_n_0_[3]\,
      O => \data_byte_aligned[3]_i_4__0_n_0\
    );
\data_byte_aligned[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \data_byte_aligned_reg[4]_0\,
      I1 => \data_byte_aligned[4]_i_4__0_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[4]_i_5__0_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[4]_1\,
      O => \align_offset_reg[3]_2\
    );
\data_byte_aligned[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(0),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_0\(2),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \^last_byte_reg[7]_0\(1),
      O => \data_byte_aligned[4]_i_4__0_n_0\
    );
\data_byte_aligned[4]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(1),
      I1 => \^align_offset_reg[1]_0\(0),
      I2 => \last_byte_reg_n_0_[4]\,
      O => \data_byte_aligned[4]_i_5__0_n_0\
    );
\data_byte_aligned[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EFE0E0EFEFEFEF"
    )
        port map (
      I0 => \data_byte_aligned_reg[6]_0\,
      I1 => Q(5),
      I2 => \^data_byte_valid0\,
      I3 => \align_offset_reg_n_0_[3]\,
      I4 => \data_byte_aligned[5]_i_2__0_n_0\,
      I5 => \data_byte_aligned[5]_i_3__0_n_0\,
      O => p_1_in(5)
    );
\data_byte_aligned[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800880033300030"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => Q(6),
      I3 => \^align_offset_reg[1]_0\(0),
      I4 => Q(7),
      I5 => \^align_offset_reg[1]_0\(1),
      O => \data_byte_aligned[5]_i_2__0_n_0\
    );
\data_byte_aligned[5]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \align_offset_reg_n_0_[3]\,
      I1 => \data_byte_aligned[5]_i_4__0_n_0\,
      I2 => \align_offset_reg_n_0_[2]\,
      I3 => \data_byte_aligned_reg[5]_0\,
      O => \data_byte_aligned[5]_i_3__0_n_0\
    );
\data_byte_aligned[5]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_0\(3),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \^last_byte_reg[7]_0\(2),
      O => \data_byte_aligned[5]_i_4__0_n_0\
    );
\data_byte_aligned[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3A0A"
    )
        port map (
      I0 => \data_byte_aligned[6]_i_2__0_n_0\,
      I1 => \data_byte_aligned_reg[6]_0\,
      I2 => \^data_byte_valid0\,
      I3 => Q(6),
      O => p_1_in(6)
    );
\data_byte_aligned[6]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_byte_aligned_reg[6]_1\,
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \data_byte_aligned_reg[6]_2\,
      I3 => \align_offset_reg_n_0_[3]\,
      I4 => \data_byte_aligned[6]_i_5__0_n_0\,
      O => \data_byte_aligned[6]_i_2__0_n_0\
    );
\data_byte_aligned[6]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800300"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \^align_offset_reg[1]_0\(0),
      I3 => Q(7),
      I4 => \^align_offset_reg[1]_0\(1),
      O => \data_byte_aligned[6]_i_5__0_n_0\
    );
\data_byte_aligned[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_byte_aligned_reg[3]_1\,
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \data_byte_aligned_reg[3]_0\,
      I3 => \align_offset_reg_n_0_[3]\,
      I4 => \data_byte_aligned[7]_i_6__0_n_0\,
      O => \align_offset_reg[2]_0\
    );
\data_byte_aligned[7]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(0),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \align_offset_reg_n_0_[2]\,
      O => \data_byte_aligned[7]_i_6__0_n_0\
    );
\data_byte_aligned_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => p_1_in(0),
      Q => byte_data(8)
    );
\data_byte_aligned_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => D(0),
      Q => byte_data(9)
    );
\data_byte_aligned_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => p_1_in(2),
      Q => byte_data(10)
    );
\data_byte_aligned_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => D(1),
      Q => byte_data(11)
    );
\data_byte_aligned_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => D(2),
      Q => byte_data(12)
    );
\data_byte_aligned_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => p_1_in(5),
      Q => byte_data(13)
    );
\data_byte_aligned_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => p_1_in(6),
      Q => byte_data(14)
    );
\data_byte_aligned_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => D(3),
      Q => byte_data(15)
    );
\data_byte_valid_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \data_byte_valid_i_2__0_n_0\,
      O => \^data_byte_valid0\
    );
\data_byte_valid_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[1]\,
      I1 => \hs_settle_count_reg_n_0_[0]\,
      I2 => \hs_settle_count_reg_n_0_[5]\,
      I3 => \hs_settle_count_reg_n_0_[4]\,
      I4 => \hs_settle_count_reg_n_0_[3]\,
      I5 => \hs_settle_count_reg_n_0_[2]\,
      O => \data_byte_valid_i_2__0_n_0\
    );
data_byte_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_1(0),
      D => \^data_byte_valid0\,
      Q => \^data_byte_valid_reg_0\
    );
\hs_settle_count[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFDF"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[2]\,
      I1 => \hs_settle_count_reg_n_0_[3]\,
      I2 => \hs_settle_count_reg_n_0_[4]\,
      I3 => \hs_settle_count_reg_n_0_[5]\,
      I4 => \hs_settle_count_reg_n_0_[1]\,
      I5 => \hs_settle_count_reg_n_0_[0]\,
      O => hs_settle_count(0)
    );
\hs_settle_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[0]\,
      I1 => \hs_settle_count_reg_n_0_[1]\,
      O => hs_settle_count(1)
    );
\hs_settle_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[2]\,
      I1 => \hs_settle_count_reg_n_0_[0]\,
      I2 => \hs_settle_count_reg_n_0_[1]\,
      O => hs_settle_count(2)
    );
\hs_settle_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[3]\,
      I1 => \hs_settle_count_reg_n_0_[1]\,
      I2 => \hs_settle_count_reg_n_0_[0]\,
      I3 => \hs_settle_count_reg_n_0_[2]\,
      O => hs_settle_count(3)
    );
\hs_settle_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[2]\,
      I1 => \hs_settle_count_reg_n_0_[0]\,
      I2 => \hs_settle_count_reg_n_0_[1]\,
      I3 => \hs_settle_count_reg_n_0_[3]\,
      I4 => \hs_settle_count_reg_n_0_[4]\,
      O => hs_settle_count(4)
    );
\hs_settle_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[5]\,
      I1 => \hs_settle_count_reg_n_0_[2]\,
      I2 => \hs_settle_count_reg_n_0_[0]\,
      I3 => \hs_settle_count_reg_n_0_[1]\,
      I4 => \hs_settle_count_reg_n_0_[3]\,
      I5 => \hs_settle_count_reg_n_0_[4]\,
      O => hs_settle_count(5)
    );
\hs_settle_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => hs_settle_count(0),
      Q => \hs_settle_count_reg_n_0_[0]\
    );
\hs_settle_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => hs_settle_count(1),
      Q => \hs_settle_count_reg_n_0_[1]\
    );
\hs_settle_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => hs_settle_count(2),
      Q => \hs_settle_count_reg_n_0_[2]\
    );
\hs_settle_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => hs_settle_count(3),
      Q => \hs_settle_count_reg_n_0_[3]\
    );
\hs_settle_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => hs_settle_count(4),
      Q => \hs_settle_count_reg_n_0_[4]\
    );
\hs_settle_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => hs_settle_count(5),
      Q => \hs_settle_count_reg_n_0_[5]\
    );
\lane_buf[0][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(10),
      I1 => \align_idx_reg[1][0]\,
      O => \data_byte_aligned_reg[7]_0\(2)
    );
\lane_buf[0][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(11),
      I1 => \align_idx_reg[1][0]\,
      O => \data_byte_aligned_reg[7]_0\(3)
    );
\lane_buf[0][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(12),
      I1 => \align_idx_reg[1][0]\,
      O => \data_byte_aligned_reg[7]_0\(4)
    );
\lane_buf[0][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(13),
      I1 => \align_idx_reg[1][0]\,
      O => \data_byte_aligned_reg[7]_0\(5)
    );
\lane_buf[0][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(14),
      I1 => \align_idx_reg[1][0]\,
      O => \data_byte_aligned_reg[7]_0\(6)
    );
\lane_buf[0][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(15),
      I1 => \align_idx_reg[1][0]\,
      O => \data_byte_aligned_reg[7]_0\(7)
    );
\lane_buf[0][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(8),
      I1 => \align_idx_reg[1][0]\,
      O => \data_byte_aligned_reg[7]_0\(0)
    );
\lane_buf[0][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(9),
      I1 => \align_idx_reg[1][0]\,
      O => \data_byte_aligned_reg[7]_0\(1)
    );
\last_byte_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(0),
      Q => \^last_byte_reg[7]_0\(0)
    );
\last_byte_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(1),
      Q => \last_byte_reg_n_0_[1]\
    );
\last_byte_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(2),
      Q => \last_byte_reg_n_0_[2]\
    );
\last_byte_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(3),
      Q => \last_byte_reg_n_0_[3]\
    );
\last_byte_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(4),
      Q => \last_byte_reg_n_0_[4]\
    );
\last_byte_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(5),
      Q => \^last_byte_reg[7]_0\(1)
    );
\last_byte_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(6),
      Q => \^last_byte_reg[7]_0\(2)
    );
\last_byte_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(7),
      Q => \^last_byte_reg[7]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_7\ is
  port (
    data_byte_valid_reg_0 : out STD_LOGIC;
    data_byte_valid0 : out STD_LOGIC;
    \last_byte_reg[6]_0\ : out STD_LOGIC;
    \last_byte_reg[4]_0\ : out STD_LOGIC;
    \data_byte_aligned_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    align_flag_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_byte_reg[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_byte_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    u_ISERDESE3 : out STD_LOGIC;
    \last_byte_reg[1]_0\ : out STD_LOGIC;
    \align_offset_reg[3]_0\ : out STD_LOGIC;
    \align_offset_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \align_offset_reg[3]_1\ : out STD_LOGIC;
    \align_offset_reg[2]_0\ : out STD_LOGIC;
    \align_offset_reg[3]_2\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_byte : in STD_LOGIC;
    data_byte_valid_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_byte_aligned_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \align_idx_reg[2][0]\ : in STD_LOGIC;
    lane_byte_aligned_valid : in STD_LOGIC;
    \data_byte_aligned_reg[6]_0\ : in STD_LOGIC;
    \align_offset_reg[2]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[5]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[6]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[6]_2\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[0]_1\ : in STD_LOGIC;
    \align_offset_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_byte_aligned_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_7\ : entity is "_dphy_rx_data_byte_aligner";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_7\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_7\ is
  signal \align_offset[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_7__1_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_10__1_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_5__1_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_6__1_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_7__1_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_8__1_n_0\ : STD_LOGIC;
  signal \^align_offset_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \align_offset_reg_n_0_[2]\ : STD_LOGIC;
  signal \align_offset_reg_n_0_[3]\ : STD_LOGIC;
  signal byte_data : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal \data_byte_aligned[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_3__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_4__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[6]_i_5__1_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[7]_i_6__1_n_0\ : STD_LOGIC;
  signal \^data_byte_valid0\ : STD_LOGIC;
  signal \data_byte_valid_i_2__1_n_0\ : STD_LOGIC;
  signal \^data_byte_valid_reg_0\ : STD_LOGIC;
  signal hs_settle_count : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \hs_settle_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \^last_byte_reg[4]_0\ : STD_LOGIC;
  signal \^last_byte_reg[4]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^last_byte_reg[6]_0\ : STD_LOGIC;
  signal \^last_byte_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \last_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[3]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[4]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_idx[2][2]_i_1\ : label is "soft_lutpair273";
  attribute SOFT_HLUTNM of \align_offset[0]_i_3__1\ : label is "soft_lutpair266";
  attribute SOFT_HLUTNM of \align_offset[0]_i_4__1\ : label is "soft_lutpair267";
  attribute SOFT_HLUTNM of \align_offset[0]_i_7__1\ : label is "soft_lutpair271";
  attribute SOFT_HLUTNM of \align_offset[2]_i_4__1\ : label is "soft_lutpair269";
  attribute SOFT_HLUTNM of \align_offset[2]_i_5__1\ : label is "soft_lutpair271";
  attribute SOFT_HLUTNM of \align_offset[2]_i_6__1\ : label is "soft_lutpair267";
  attribute SOFT_HLUTNM of \align_offset[2]_i_7__1\ : label is "soft_lutpair266";
  attribute SOFT_HLUTNM of \align_offset[2]_i_8__1\ : label is "soft_lutpair269";
  attribute SOFT_HLUTNM of \data_byte_aligned[2]_i_4__1\ : label is "soft_lutpair270";
  attribute SOFT_HLUTNM of \data_byte_aligned[3]_i_4__1\ : label is "soft_lutpair272";
  attribute SOFT_HLUTNM of \data_byte_aligned[4]_i_5__1\ : label is "soft_lutpair270";
  attribute SOFT_HLUTNM of \data_byte_aligned[7]_i_6__1\ : label is "soft_lutpair272";
  attribute SOFT_HLUTNM of \data_byte_valid_i_1__1\ : label is "soft_lutpair273";
  attribute SOFT_HLUTNM of \hs_settle_count[1]_i_1__1\ : label is "soft_lutpair274";
  attribute SOFT_HLUTNM of \hs_settle_count[2]_i_1__1\ : label is "soft_lutpair274";
  attribute SOFT_HLUTNM of \hs_settle_count[3]_i_1__1\ : label is "soft_lutpair268";
  attribute SOFT_HLUTNM of \hs_settle_count[4]_i_1__1\ : label is "soft_lutpair268";
  attribute SOFT_HLUTNM of \lane_buf[0][16]_i_1\ : label is "soft_lutpair275";
  attribute SOFT_HLUTNM of \lane_buf[0][17]_i_1\ : label is "soft_lutpair275";
  attribute SOFT_HLUTNM of \lane_buf[0][18]_i_1\ : label is "soft_lutpair276";
  attribute SOFT_HLUTNM of \lane_buf[0][19]_i_1\ : label is "soft_lutpair276";
  attribute SOFT_HLUTNM of \lane_buf[0][20]_i_1\ : label is "soft_lutpair277";
  attribute SOFT_HLUTNM of \lane_buf[0][21]_i_1\ : label is "soft_lutpair277";
  attribute SOFT_HLUTNM of \lane_buf[0][22]_i_1\ : label is "soft_lutpair278";
  attribute SOFT_HLUTNM of \lane_buf[0][23]_i_1\ : label is "soft_lutpair278";
begin
  \align_offset_reg[1]_0\(1 downto 0) <= \^align_offset_reg[1]_0\(1 downto 0);
  data_byte_valid0 <= \^data_byte_valid0\;
  data_byte_valid_reg_0 <= \^data_byte_valid_reg_0\;
  \last_byte_reg[4]_0\ <= \^last_byte_reg[4]_0\;
  \last_byte_reg[4]_1\(0) <= \^last_byte_reg[4]_1\(0);
  \last_byte_reg[6]_0\ <= \^last_byte_reg[6]_0\;
  \last_byte_reg[7]_0\(3 downto 0) <= \^last_byte_reg[7]_0\(3 downto 0);
\align_idx[2][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => lane_byte_aligned_valid,
      I1 => \^data_byte_valid_reg_0\,
      I2 => \align_idx_reg[2][0]\,
      O => align_flag_reg(0)
    );
\align_offset[0]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => Q(1),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => Q(2),
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \align_offset[0]_i_6__1_n_0\,
      O => u_ISERDESE3
    );
\align_offset[0]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \last_byte_reg_n_0_[1]\,
      I1 => \last_byte_reg_n_0_[4]\,
      I2 => \^last_byte_reg[7]_0\(1),
      I3 => \^last_byte_reg[7]_0\(3),
      I4 => \align_offset[0]_i_7__1_n_0\,
      O => \last_byte_reg[1]_0\
    );
\align_offset[0]_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => Q(0),
      I2 => \last_byte_reg_n_0_[4]\,
      I3 => \^last_byte_reg[7]_0\(1),
      O => \align_offset[0]_i_6__1_n_0\
    );
\align_offset[0]_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \last_byte_reg_n_0_[3]\,
      I2 => \^last_byte_reg[7]_0\(2),
      I3 => Q(0),
      O => \align_offset[0]_i_7__1_n_0\
    );
\align_offset[2]_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => Q(0),
      I2 => \^last_byte_reg[7]_0\(2),
      I3 => Q(2),
      O => \align_offset[2]_i_10__1_n_0\
    );
\align_offset[2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^last_byte_reg[4]_0\,
      I1 => \^last_byte_reg[6]_0\,
      O => \^last_byte_reg[4]_1\(0)
    );
\align_offset[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFBFBFFFFFBFB"
    )
        port map (
      I0 => \last_byte_reg_n_0_[4]\,
      I1 => \align_offset[2]_i_4__1_n_0\,
      I2 => \align_offset[2]_i_5__1_n_0\,
      I3 => \^last_byte_reg[7]_0\(2),
      I4 => Q(0),
      I5 => \align_offset[2]_i_6__1_n_0\,
      O => \^last_byte_reg[4]_0\
    );
\align_offset[2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008000FF00800080"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => Q(0),
      I2 => \align_offset[2]_i_7__1_n_0\,
      I3 => \align_offset[2]_i_8__1_n_0\,
      I4 => \align_offset_reg[2]_1\,
      I5 => \align_offset[2]_i_10__1_n_0\,
      O => \^last_byte_reg[6]_0\
    );
\align_offset[2]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^last_byte_reg[7]_0\(1),
      I3 => Q(1),
      O => \align_offset[2]_i_4__1_n_0\
    );
\align_offset[2]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \last_byte_reg_n_0_[3]\,
      I1 => \last_byte_reg_n_0_[2]\,
      O => \align_offset[2]_i_5__1_n_0\
    );
\align_offset[2]_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => \^last_byte_reg[7]_0\(1),
      I2 => \last_byte_reg_n_0_[4]\,
      I3 => \last_byte_reg_n_0_[1]\,
      O => \align_offset[2]_i_6__1_n_0\
    );
\align_offset[2]_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \last_byte_reg_n_0_[3]\,
      I1 => Q(2),
      I2 => \^last_byte_reg[7]_0\(3),
      I3 => Q(1),
      O => \align_offset[2]_i_7__1_n_0\
    );
\align_offset[2]_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \last_byte_reg_n_0_[4]\,
      O => \align_offset[2]_i_8__1_n_0\
    );
\align_offset_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_1(0),
      D => \align_offset_reg[1]_1\(0),
      Q => \^align_offset_reg[1]_0\(0)
    );
\align_offset_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_1(0),
      D => \align_offset_reg[1]_1\(1),
      Q => \^align_offset_reg[1]_0\(1)
    );
\align_offset_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_1(0),
      D => \^last_byte_reg[4]_1\(0),
      Q => \align_offset_reg_n_0_[2]\
    );
\align_offset_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_1(0),
      D => '1',
      Q => \align_offset_reg_n_0_[3]\
    );
\data_byte_aligned[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10000000"
    )
        port map (
      I0 => \^last_byte_reg[6]_0\,
      I1 => \data_byte_aligned_reg[0]_0\,
      I2 => \^last_byte_reg[4]_0\,
      I3 => Q(0),
      I4 => \^data_byte_valid0\,
      I5 => \data_byte_aligned[0]_i_2__1_n_0\,
      O => p_1_in(0)
    );
\data_byte_aligned[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned[4]_i_4__1_n_0\,
      I1 => \data_byte_aligned[0]_i_3__1_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned_reg[0]_1\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[4]_0\,
      O => \data_byte_aligned[0]_i_2__1_n_0\
    );
\data_byte_aligned[0]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_byte_reg_n_0_[4]\,
      I1 => \last_byte_reg_n_0_[3]\,
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[2]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[1]\,
      O => \data_byte_aligned[0]_i_3__1_n_0\
    );
\data_byte_aligned[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned[5]_i_4__1_n_0\,
      I1 => \data_byte_aligned[1]_i_3__1_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[1]_i_4__1_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[5]_0\,
      O => \align_offset_reg[3]_0\
    );
\data_byte_aligned[1]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \last_byte_reg_n_0_[4]\,
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[2]\,
      O => \data_byte_aligned[1]_i_3__1_n_0\
    );
\data_byte_aligned[1]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA0C0A0C"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^align_offset_reg[1]_0\(0),
      I4 => \last_byte_reg_n_0_[1]\,
      O => \data_byte_aligned[1]_i_4__1_n_0\
    );
\data_byte_aligned[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3A0A"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_2__1_n_0\,
      I1 => \data_byte_aligned_reg[6]_0\,
      I2 => \^data_byte_valid0\,
      I3 => Q(2),
      O => p_1_in(2)
    );
\data_byte_aligned[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned_reg[6]_2\,
      I1 => \data_byte_aligned[2]_i_3__1_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[2]_i_4__1_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[6]_1\,
      O => \data_byte_aligned[2]_i_2__1_n_0\
    );
\data_byte_aligned[2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => \^last_byte_reg[7]_0\(1),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[4]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[3]\,
      O => \data_byte_aligned[2]_i_3__1_n_0\
    );
\data_byte_aligned[2]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8830"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \^align_offset_reg[1]_0\(1),
      I2 => Q(7),
      I3 => \^align_offset_reg[1]_0\(0),
      O => \data_byte_aligned[2]_i_4__1_n_0\
    );
\data_byte_aligned[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned_reg[3]_0\,
      I1 => \data_byte_aligned[3]_i_3__1_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[3]_i_4__1_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[3]_1\,
      O => \align_offset_reg[3]_1\
    );
\data_byte_aligned[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => \^last_byte_reg[7]_0\(2),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_0\(1),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[4]\,
      O => \data_byte_aligned[3]_i_3__1_n_0\
    );
\data_byte_aligned[3]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(1),
      I1 => \^align_offset_reg[1]_0\(0),
      I2 => \last_byte_reg_n_0_[3]\,
      O => \data_byte_aligned[3]_i_4__1_n_0\
    );
\data_byte_aligned[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \data_byte_aligned_reg[4]_0\,
      I1 => \data_byte_aligned[4]_i_4__1_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[4]_i_5__1_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[4]_1\,
      O => \align_offset_reg[3]_2\
    );
\data_byte_aligned[4]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(0),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_0\(2),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \^last_byte_reg[7]_0\(1),
      O => \data_byte_aligned[4]_i_4__1_n_0\
    );
\data_byte_aligned[4]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(1),
      I1 => \^align_offset_reg[1]_0\(0),
      I2 => \last_byte_reg_n_0_[4]\,
      O => \data_byte_aligned[4]_i_5__1_n_0\
    );
\data_byte_aligned[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EFE0E0EFEFEFEF"
    )
        port map (
      I0 => \data_byte_aligned_reg[6]_0\,
      I1 => Q(5),
      I2 => \^data_byte_valid0\,
      I3 => \align_offset_reg_n_0_[3]\,
      I4 => \data_byte_aligned[5]_i_2__1_n_0\,
      I5 => \data_byte_aligned[5]_i_3__1_n_0\,
      O => p_1_in(5)
    );
\data_byte_aligned[5]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800880033300030"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => Q(6),
      I3 => \^align_offset_reg[1]_0\(0),
      I4 => Q(7),
      I5 => \^align_offset_reg[1]_0\(1),
      O => \data_byte_aligned[5]_i_2__1_n_0\
    );
\data_byte_aligned[5]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \align_offset_reg_n_0_[3]\,
      I1 => \data_byte_aligned[5]_i_4__1_n_0\,
      I2 => \align_offset_reg_n_0_[2]\,
      I3 => \data_byte_aligned_reg[5]_0\,
      O => \data_byte_aligned[5]_i_3__1_n_0\
    );
\data_byte_aligned[5]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_0\(3),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \^last_byte_reg[7]_0\(2),
      O => \data_byte_aligned[5]_i_4__1_n_0\
    );
\data_byte_aligned[6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3A0A"
    )
        port map (
      I0 => \data_byte_aligned[6]_i_2__1_n_0\,
      I1 => \data_byte_aligned_reg[6]_0\,
      I2 => \^data_byte_valid0\,
      I3 => Q(6),
      O => p_1_in(6)
    );
\data_byte_aligned[6]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_byte_aligned_reg[6]_1\,
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \data_byte_aligned_reg[6]_2\,
      I3 => \align_offset_reg_n_0_[3]\,
      I4 => \data_byte_aligned[6]_i_5__1_n_0\,
      O => \data_byte_aligned[6]_i_2__1_n_0\
    );
\data_byte_aligned[6]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800300"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \^align_offset_reg[1]_0\(0),
      I3 => Q(7),
      I4 => \^align_offset_reg[1]_0\(1),
      O => \data_byte_aligned[6]_i_5__1_n_0\
    );
\data_byte_aligned[7]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_byte_aligned_reg[3]_1\,
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \data_byte_aligned_reg[3]_0\,
      I3 => \align_offset_reg_n_0_[3]\,
      I4 => \data_byte_aligned[7]_i_6__1_n_0\,
      O => \align_offset_reg[2]_0\
    );
\data_byte_aligned[7]_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(0),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \align_offset_reg_n_0_[2]\,
      O => \data_byte_aligned[7]_i_6__1_n_0\
    );
\data_byte_aligned_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => p_1_in(0),
      Q => byte_data(16)
    );
\data_byte_aligned_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => D(0),
      Q => byte_data(17)
    );
\data_byte_aligned_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => p_1_in(2),
      Q => byte_data(18)
    );
\data_byte_aligned_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => D(1),
      Q => byte_data(19)
    );
\data_byte_aligned_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => D(2),
      Q => byte_data(20)
    );
\data_byte_aligned_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => p_1_in(5),
      Q => byte_data(21)
    );
\data_byte_aligned_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => p_1_in(6),
      Q => byte_data(22)
    );
\data_byte_aligned_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_1(0),
      D => D(3),
      Q => byte_data(23)
    );
\data_byte_valid_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \data_byte_valid_i_2__1_n_0\,
      O => \^data_byte_valid0\
    );
\data_byte_valid_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[1]\,
      I1 => \hs_settle_count_reg_n_0_[0]\,
      I2 => \hs_settle_count_reg_n_0_[5]\,
      I3 => \hs_settle_count_reg_n_0_[4]\,
      I4 => \hs_settle_count_reg_n_0_[3]\,
      I5 => \hs_settle_count_reg_n_0_[2]\,
      O => \data_byte_valid_i_2__1_n_0\
    );
data_byte_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_1(0),
      D => \^data_byte_valid0\,
      Q => \^data_byte_valid_reg_0\
    );
\hs_settle_count[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFDF"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[2]\,
      I1 => \hs_settle_count_reg_n_0_[3]\,
      I2 => \hs_settle_count_reg_n_0_[4]\,
      I3 => \hs_settle_count_reg_n_0_[5]\,
      I4 => \hs_settle_count_reg_n_0_[1]\,
      I5 => \hs_settle_count_reg_n_0_[0]\,
      O => hs_settle_count(0)
    );
\hs_settle_count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[0]\,
      I1 => \hs_settle_count_reg_n_0_[1]\,
      O => hs_settle_count(1)
    );
\hs_settle_count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[2]\,
      I1 => \hs_settle_count_reg_n_0_[0]\,
      I2 => \hs_settle_count_reg_n_0_[1]\,
      O => hs_settle_count(2)
    );
\hs_settle_count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[3]\,
      I1 => \hs_settle_count_reg_n_0_[1]\,
      I2 => \hs_settle_count_reg_n_0_[0]\,
      I3 => \hs_settle_count_reg_n_0_[2]\,
      O => hs_settle_count(3)
    );
\hs_settle_count[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[2]\,
      I1 => \hs_settle_count_reg_n_0_[0]\,
      I2 => \hs_settle_count_reg_n_0_[1]\,
      I3 => \hs_settle_count_reg_n_0_[3]\,
      I4 => \hs_settle_count_reg_n_0_[4]\,
      O => hs_settle_count(4)
    );
\hs_settle_count[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[5]\,
      I1 => \hs_settle_count_reg_n_0_[2]\,
      I2 => \hs_settle_count_reg_n_0_[0]\,
      I3 => \hs_settle_count_reg_n_0_[1]\,
      I4 => \hs_settle_count_reg_n_0_[3]\,
      I5 => \hs_settle_count_reg_n_0_[4]\,
      O => hs_settle_count(5)
    );
\hs_settle_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => hs_settle_count(0),
      Q => \hs_settle_count_reg_n_0_[0]\
    );
\hs_settle_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => hs_settle_count(1),
      Q => \hs_settle_count_reg_n_0_[1]\
    );
\hs_settle_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => hs_settle_count(2),
      Q => \hs_settle_count_reg_n_0_[2]\
    );
\hs_settle_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => hs_settle_count(3),
      Q => \hs_settle_count_reg_n_0_[3]\
    );
\hs_settle_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => hs_settle_count(4),
      Q => \hs_settle_count_reg_n_0_[4]\
    );
\hs_settle_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => hs_settle_count(5),
      Q => \hs_settle_count_reg_n_0_[5]\
    );
\lane_buf[0][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(16),
      I1 => \align_idx_reg[2][0]\,
      O => \data_byte_aligned_reg[7]_0\(0)
    );
\lane_buf[0][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(17),
      I1 => \align_idx_reg[2][0]\,
      O => \data_byte_aligned_reg[7]_0\(1)
    );
\lane_buf[0][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(18),
      I1 => \align_idx_reg[2][0]\,
      O => \data_byte_aligned_reg[7]_0\(2)
    );
\lane_buf[0][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(19),
      I1 => \align_idx_reg[2][0]\,
      O => \data_byte_aligned_reg[7]_0\(3)
    );
\lane_buf[0][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(20),
      I1 => \align_idx_reg[2][0]\,
      O => \data_byte_aligned_reg[7]_0\(4)
    );
\lane_buf[0][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(21),
      I1 => \align_idx_reg[2][0]\,
      O => \data_byte_aligned_reg[7]_0\(5)
    );
\lane_buf[0][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(22),
      I1 => \align_idx_reg[2][0]\,
      O => \data_byte_aligned_reg[7]_0\(6)
    );
\lane_buf[0][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(23),
      I1 => \align_idx_reg[2][0]\,
      O => \data_byte_aligned_reg[7]_0\(7)
    );
\last_byte_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(0),
      Q => \^last_byte_reg[7]_0\(0)
    );
\last_byte_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(1),
      Q => \last_byte_reg_n_0_[1]\
    );
\last_byte_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(2),
      Q => \last_byte_reg_n_0_[2]\
    );
\last_byte_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(3),
      Q => \last_byte_reg_n_0_[3]\
    );
\last_byte_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(4),
      Q => \last_byte_reg_n_0_[4]\
    );
\last_byte_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(5),
      Q => \^last_byte_reg[7]_0\(1)
    );
\last_byte_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(6),
      Q => \^last_byte_reg[7]_0\(2)
    );
\last_byte_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_1(0),
      D => Q(7),
      Q => \^last_byte_reg[7]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_8\ is
  port (
    data_byte_valid_reg_0 : out STD_LOGIC;
    data_byte_valid0 : out STD_LOGIC;
    \last_byte_reg[6]_0\ : out STD_LOGIC;
    \last_byte_reg[4]_0\ : out STD_LOGIC;
    \data_byte_aligned_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_byte_valid_reg_1 : out STD_LOGIC;
    \align_idx_reg[3][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[2][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_byte_valid_reg_2 : out STD_LOGIC;
    \align_idx_reg[1][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_byte_valid_reg_3 : out STD_LOGIC;
    \align_idx_reg[0][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_byte_valid_reg_4 : out STD_LOGIC;
    align_flag_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_byte_reg[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_byte_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    u_ISERDESE3 : out STD_LOGIC;
    \last_byte_reg[1]_0\ : out STD_LOGIC;
    \align_offset_reg[3]_0\ : out STD_LOGIC;
    \align_offset_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \align_offset_reg[3]_1\ : out STD_LOGIC;
    \align_offset_reg[2]_0\ : out STD_LOGIC;
    \align_offset_reg[3]_2\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_byte : in STD_LOGIC;
    data_byte_valid_reg_5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_byte_aligned_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \align_idx_reg[3][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[2][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[1][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[0][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    lane_byte_aligned_valid : in STD_LOGIC;
    \align_idx_reg[0][0]_1\ : in STD_LOGIC;
    \align_idx_reg[0][0]_2\ : in STD_LOGIC;
    \align_idx_reg[0][0]_3\ : in STD_LOGIC;
    \data_byte_aligned_reg[6]_0\ : in STD_LOGIC;
    \align_offset_reg[2]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[5]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[6]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[6]_2\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[0]_1\ : in STD_LOGIC;
    \align_offset_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_byte_aligned_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_8\ : entity is "_dphy_rx_data_byte_aligner";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_8\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_8\ is
  signal \align_offset[0]_i_6__2_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_7__2_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_10__2_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_4__2_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_5__2_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_6__2_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_7__2_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_8__2_n_0\ : STD_LOGIC;
  signal \^align_offset_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \align_offset_reg_n_0_[2]\ : STD_LOGIC;
  signal \align_offset_reg_n_0_[3]\ : STD_LOGIC;
  signal byte_data : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal \data_byte_aligned[0]_i_2__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[0]_i_3__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_3__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_4__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_2__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_3__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_4__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_3__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_4__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_4__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_5__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_2__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_3__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_4__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[6]_i_5__2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[7]_i_6__2_n_0\ : STD_LOGIC;
  signal \^data_byte_valid0\ : STD_LOGIC;
  signal \data_byte_valid_i_2__2_n_0\ : STD_LOGIC;
  signal \^data_byte_valid_reg_0\ : STD_LOGIC;
  signal \^data_byte_valid_reg_1\ : STD_LOGIC;
  signal \^data_byte_valid_reg_2\ : STD_LOGIC;
  signal \^data_byte_valid_reg_3\ : STD_LOGIC;
  signal \^data_byte_valid_reg_4\ : STD_LOGIC;
  signal hs_settle_count : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \hs_settle_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \hs_settle_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \^last_byte_reg[4]_0\ : STD_LOGIC;
  signal \^last_byte_reg[4]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^last_byte_reg[6]_0\ : STD_LOGIC;
  signal \^last_byte_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \last_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[3]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[4]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_idx[3][0]_i_1\ : label is "soft_lutpair287";
  attribute SOFT_HLUTNM of \align_idx[3][2]_i_1\ : label is "soft_lutpair287";
  attribute SOFT_HLUTNM of \align_offset[0]_i_3__2\ : label is "soft_lutpair279";
  attribute SOFT_HLUTNM of \align_offset[0]_i_4__2\ : label is "soft_lutpair280";
  attribute SOFT_HLUTNM of \align_offset[0]_i_7__2\ : label is "soft_lutpair284";
  attribute SOFT_HLUTNM of \align_offset[2]_i_4__2\ : label is "soft_lutpair282";
  attribute SOFT_HLUTNM of \align_offset[2]_i_5__2\ : label is "soft_lutpair284";
  attribute SOFT_HLUTNM of \align_offset[2]_i_6__2\ : label is "soft_lutpair280";
  attribute SOFT_HLUTNM of \align_offset[2]_i_7__2\ : label is "soft_lutpair279";
  attribute SOFT_HLUTNM of \align_offset[2]_i_8__2\ : label is "soft_lutpair282";
  attribute SOFT_HLUTNM of \data_byte_aligned[2]_i_4__2\ : label is "soft_lutpair283";
  attribute SOFT_HLUTNM of \data_byte_aligned[3]_i_4__2\ : label is "soft_lutpair286";
  attribute SOFT_HLUTNM of \data_byte_aligned[4]_i_5__2\ : label is "soft_lutpair283";
  attribute SOFT_HLUTNM of \data_byte_aligned[7]_i_6__2\ : label is "soft_lutpair286";
  attribute SOFT_HLUTNM of \data_byte_valid_i_1__2\ : label is "soft_lutpair285";
  attribute SOFT_HLUTNM of \hs_settle_count[1]_i_1__2\ : label is "soft_lutpair288";
  attribute SOFT_HLUTNM of \hs_settle_count[2]_i_1__2\ : label is "soft_lutpair288";
  attribute SOFT_HLUTNM of \hs_settle_count[3]_i_1__2\ : label is "soft_lutpair281";
  attribute SOFT_HLUTNM of \hs_settle_count[4]_i_1__2\ : label is "soft_lutpair281";
  attribute SOFT_HLUTNM of \lane_buf[0][24]_i_1\ : label is "soft_lutpair289";
  attribute SOFT_HLUTNM of \lane_buf[0][25]_i_1\ : label is "soft_lutpair289";
  attribute SOFT_HLUTNM of \lane_buf[0][26]_i_1\ : label is "soft_lutpair290";
  attribute SOFT_HLUTNM of \lane_buf[0][27]_i_1\ : label is "soft_lutpair290";
  attribute SOFT_HLUTNM of \lane_buf[0][28]_i_1\ : label is "soft_lutpair291";
  attribute SOFT_HLUTNM of \lane_buf[0][29]_i_1\ : label is "soft_lutpair291";
  attribute SOFT_HLUTNM of \lane_buf[0][30]_i_1\ : label is "soft_lutpair292";
  attribute SOFT_HLUTNM of \lane_buf[0][31]_i_1\ : label is "soft_lutpair292";
  attribute SOFT_HLUTNM of \lane_buf[0][31]_i_2\ : label is "soft_lutpair285";
begin
  \align_offset_reg[1]_0\(1 downto 0) <= \^align_offset_reg[1]_0\(1 downto 0);
  data_byte_valid0 <= \^data_byte_valid0\;
  data_byte_valid_reg_0 <= \^data_byte_valid_reg_0\;
  data_byte_valid_reg_1 <= \^data_byte_valid_reg_1\;
  data_byte_valid_reg_2 <= \^data_byte_valid_reg_2\;
  data_byte_valid_reg_3 <= \^data_byte_valid_reg_3\;
  data_byte_valid_reg_4 <= \^data_byte_valid_reg_4\;
  \last_byte_reg[4]_0\ <= \^last_byte_reg[4]_0\;
  \last_byte_reg[4]_1\(0) <= \^last_byte_reg[4]_1\(0);
  \last_byte_reg[6]_0\ <= \^last_byte_reg[6]_0\;
  \last_byte_reg[7]_0\(3 downto 0) <= \^last_byte_reg[7]_0\(3 downto 0);
\align_idx[0][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_valid_reg_4\,
      I1 => \align_idx_reg[0][0]_0\(0),
      O => \align_idx_reg[0][0]\(0)
    );
\align_idx[0][2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]_1\,
      I2 => \align_idx_reg[0][0]_2\,
      I3 => \align_idx_reg[0][0]_3\,
      O => \^data_byte_valid_reg_4\
    );
\align_idx[1][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_valid_reg_3\,
      I1 => \align_idx_reg[1][0]_0\(0),
      O => \align_idx_reg[1][0]\(0)
    );
\align_idx[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_valid_reg_2\,
      I1 => \align_idx_reg[2][0]_0\(0),
      O => \align_idx_reg[2][0]\(0)
    );
\align_idx[3][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_valid_reg_1\,
      I1 => \align_idx_reg[3][0]_0\(0),
      O => \align_idx_reg[3][0]\(0)
    );
\align_idx[3][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => lane_byte_aligned_valid,
      I1 => \^data_byte_valid_reg_0\,
      I2 => \^data_byte_valid_reg_1\,
      O => align_flag_reg(0)
    );
\align_offset[0]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => Q(1),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => Q(2),
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \align_offset[0]_i_6__2_n_0\,
      O => u_ISERDESE3
    );
\align_offset[0]_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \last_byte_reg_n_0_[1]\,
      I1 => \last_byte_reg_n_0_[4]\,
      I2 => \^last_byte_reg[7]_0\(1),
      I3 => \^last_byte_reg[7]_0\(3),
      I4 => \align_offset[0]_i_7__2_n_0\,
      O => \last_byte_reg[1]_0\
    );
\align_offset[0]_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => Q(0),
      I2 => \last_byte_reg_n_0_[4]\,
      I3 => \^last_byte_reg[7]_0\(1),
      O => \align_offset[0]_i_6__2_n_0\
    );
\align_offset[0]_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \last_byte_reg_n_0_[3]\,
      I2 => \^last_byte_reg[7]_0\(2),
      I3 => Q(0),
      O => \align_offset[0]_i_7__2_n_0\
    );
\align_offset[2]_i_10__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => Q(0),
      I2 => \^last_byte_reg[7]_0\(2),
      I3 => Q(2),
      O => \align_offset[2]_i_10__2_n_0\
    );
\align_offset[2]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^last_byte_reg[4]_0\,
      I1 => \^last_byte_reg[6]_0\,
      O => \^last_byte_reg[4]_1\(0)
    );
\align_offset[2]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFBFBFFFFFBFB"
    )
        port map (
      I0 => \last_byte_reg_n_0_[4]\,
      I1 => \align_offset[2]_i_4__2_n_0\,
      I2 => \align_offset[2]_i_5__2_n_0\,
      I3 => \^last_byte_reg[7]_0\(2),
      I4 => Q(0),
      I5 => \align_offset[2]_i_6__2_n_0\,
      O => \^last_byte_reg[4]_0\
    );
\align_offset[2]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008000FF00800080"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => Q(0),
      I2 => \align_offset[2]_i_7__2_n_0\,
      I3 => \align_offset[2]_i_8__2_n_0\,
      I4 => \align_offset_reg[2]_1\,
      I5 => \align_offset[2]_i_10__2_n_0\,
      O => \^last_byte_reg[6]_0\
    );
\align_offset[2]_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^last_byte_reg[7]_0\(1),
      I3 => Q(1),
      O => \align_offset[2]_i_4__2_n_0\
    );
\align_offset[2]_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \last_byte_reg_n_0_[3]\,
      I1 => \last_byte_reg_n_0_[2]\,
      O => \align_offset[2]_i_5__2_n_0\
    );
\align_offset[2]_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => \^last_byte_reg[7]_0\(1),
      I2 => \last_byte_reg_n_0_[4]\,
      I3 => \last_byte_reg_n_0_[1]\,
      O => \align_offset[2]_i_6__2_n_0\
    );
\align_offset[2]_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \last_byte_reg_n_0_[3]\,
      I1 => Q(2),
      I2 => \^last_byte_reg[7]_0\(3),
      I3 => Q(1),
      O => \align_offset[2]_i_7__2_n_0\
    );
\align_offset[2]_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \last_byte_reg_n_0_[4]\,
      O => \align_offset[2]_i_8__2_n_0\
    );
\align_offset_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_5(0),
      D => \align_offset_reg[1]_1\(0),
      Q => \^align_offset_reg[1]_0\(0)
    );
\align_offset_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_5(0),
      D => \align_offset_reg[1]_1\(1),
      Q => \^align_offset_reg[1]_0\(1)
    );
\align_offset_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_5(0),
      D => \^last_byte_reg[4]_1\(0),
      Q => \align_offset_reg_n_0_[2]\
    );
\align_offset_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_5(0),
      D => '1',
      Q => \align_offset_reg_n_0_[3]\
    );
\data_byte_aligned[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10000000"
    )
        port map (
      I0 => \^last_byte_reg[6]_0\,
      I1 => \data_byte_aligned_reg[0]_0\,
      I2 => \^last_byte_reg[4]_0\,
      I3 => Q(0),
      I4 => \^data_byte_valid0\,
      I5 => \data_byte_aligned[0]_i_2__2_n_0\,
      O => p_1_in(0)
    );
\data_byte_aligned[0]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned[4]_i_4__2_n_0\,
      I1 => \data_byte_aligned[0]_i_3__2_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned_reg[0]_1\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[4]_0\,
      O => \data_byte_aligned[0]_i_2__2_n_0\
    );
\data_byte_aligned[0]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_byte_reg_n_0_[4]\,
      I1 => \last_byte_reg_n_0_[3]\,
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[2]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[1]\,
      O => \data_byte_aligned[0]_i_3__2_n_0\
    );
\data_byte_aligned[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned[5]_i_4__2_n_0\,
      I1 => \data_byte_aligned[1]_i_3__2_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[1]_i_4__2_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[5]_0\,
      O => \align_offset_reg[3]_0\
    );
\data_byte_aligned[1]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \last_byte_reg_n_0_[4]\,
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[2]\,
      O => \data_byte_aligned[1]_i_3__2_n_0\
    );
\data_byte_aligned[1]_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA0C0A0C"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^align_offset_reg[1]_0\(0),
      I4 => \last_byte_reg_n_0_[1]\,
      O => \data_byte_aligned[1]_i_4__2_n_0\
    );
\data_byte_aligned[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3A0A"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_2__2_n_0\,
      I1 => \data_byte_aligned_reg[6]_0\,
      I2 => \^data_byte_valid0\,
      I3 => Q(2),
      O => p_1_in(2)
    );
\data_byte_aligned[2]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned_reg[6]_2\,
      I1 => \data_byte_aligned[2]_i_3__2_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[2]_i_4__2_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[6]_1\,
      O => \data_byte_aligned[2]_i_2__2_n_0\
    );
\data_byte_aligned[2]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => \^last_byte_reg[7]_0\(1),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[4]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[3]\,
      O => \data_byte_aligned[2]_i_3__2_n_0\
    );
\data_byte_aligned[2]_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8830"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \^align_offset_reg[1]_0\(1),
      I2 => Q(7),
      I3 => \^align_offset_reg[1]_0\(0),
      O => \data_byte_aligned[2]_i_4__2_n_0\
    );
\data_byte_aligned[3]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned_reg[3]_0\,
      I1 => \data_byte_aligned[3]_i_3__2_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[3]_i_4__2_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[3]_1\,
      O => \align_offset_reg[3]_1\
    );
\data_byte_aligned[3]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => \^last_byte_reg[7]_0\(2),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_0\(1),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[4]\,
      O => \data_byte_aligned[3]_i_3__2_n_0\
    );
\data_byte_aligned[3]_i_4__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(1),
      I1 => \^align_offset_reg[1]_0\(0),
      I2 => \last_byte_reg_n_0_[3]\,
      O => \data_byte_aligned[3]_i_4__2_n_0\
    );
\data_byte_aligned[4]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \data_byte_aligned_reg[4]_0\,
      I1 => \data_byte_aligned[4]_i_4__2_n_0\,
      I2 => \align_offset_reg_n_0_[3]\,
      I3 => \data_byte_aligned[4]_i_5__2_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[4]_1\,
      O => \align_offset_reg[3]_2\
    );
\data_byte_aligned[4]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(0),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_0\(2),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \^last_byte_reg[7]_0\(1),
      O => \data_byte_aligned[4]_i_4__2_n_0\
    );
\data_byte_aligned[4]_i_5__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(1),
      I1 => \^align_offset_reg[1]_0\(0),
      I2 => \last_byte_reg_n_0_[4]\,
      O => \data_byte_aligned[4]_i_5__2_n_0\
    );
\data_byte_aligned[5]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EFE0E0EFEFEFEF"
    )
        port map (
      I0 => \data_byte_aligned_reg[6]_0\,
      I1 => Q(5),
      I2 => \^data_byte_valid0\,
      I3 => \align_offset_reg_n_0_[3]\,
      I4 => \data_byte_aligned[5]_i_2__2_n_0\,
      I5 => \data_byte_aligned[5]_i_3__2_n_0\,
      O => p_1_in(5)
    );
\data_byte_aligned[5]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800880033300030"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => Q(6),
      I3 => \^align_offset_reg[1]_0\(0),
      I4 => Q(7),
      I5 => \^align_offset_reg[1]_0\(1),
      O => \data_byte_aligned[5]_i_2__2_n_0\
    );
\data_byte_aligned[5]_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \align_offset_reg_n_0_[3]\,
      I1 => \data_byte_aligned[5]_i_4__2_n_0\,
      I2 => \align_offset_reg_n_0_[2]\,
      I3 => \data_byte_aligned_reg[5]_0\,
      O => \data_byte_aligned[5]_i_3__2_n_0\
    );
\data_byte_aligned[5]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_0\(3),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \^last_byte_reg[7]_0\(2),
      O => \data_byte_aligned[5]_i_4__2_n_0\
    );
\data_byte_aligned[6]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3A0A"
    )
        port map (
      I0 => \data_byte_aligned[6]_i_2__2_n_0\,
      I1 => \data_byte_aligned_reg[6]_0\,
      I2 => \^data_byte_valid0\,
      I3 => Q(6),
      O => p_1_in(6)
    );
\data_byte_aligned[6]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_byte_aligned_reg[6]_1\,
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \data_byte_aligned_reg[6]_2\,
      I3 => \align_offset_reg_n_0_[3]\,
      I4 => \data_byte_aligned[6]_i_5__2_n_0\,
      O => \data_byte_aligned[6]_i_2__2_n_0\
    );
\data_byte_aligned[6]_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800300"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \^align_offset_reg[1]_0\(0),
      I3 => Q(7),
      I4 => \^align_offset_reg[1]_0\(1),
      O => \data_byte_aligned[6]_i_5__2_n_0\
    );
\data_byte_aligned[7]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_byte_aligned_reg[3]_1\,
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \data_byte_aligned_reg[3]_0\,
      I3 => \align_offset_reg_n_0_[3]\,
      I4 => \data_byte_aligned[7]_i_6__2_n_0\,
      O => \align_offset_reg[2]_0\
    );
\data_byte_aligned[7]_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(0),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \align_offset_reg_n_0_[2]\,
      O => \data_byte_aligned[7]_i_6__2_n_0\
    );
\data_byte_aligned_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_5(0),
      D => p_1_in(0),
      Q => byte_data(24)
    );
\data_byte_aligned_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_5(0),
      D => D(0),
      Q => byte_data(25)
    );
\data_byte_aligned_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_5(0),
      D => p_1_in(2),
      Q => byte_data(26)
    );
\data_byte_aligned_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_5(0),
      D => D(1),
      Q => byte_data(27)
    );
\data_byte_aligned_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_5(0),
      D => D(2),
      Q => byte_data(28)
    );
\data_byte_aligned_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_5(0),
      D => p_1_in(5),
      Q => byte_data(29)
    );
\data_byte_aligned_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_5(0),
      D => p_1_in(6),
      Q => byte_data(30)
    );
\data_byte_aligned_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_2\(0),
      CLR => data_byte_valid_reg_5(0),
      D => D(3),
      Q => byte_data(31)
    );
\data_byte_valid_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \data_byte_valid_i_2__2_n_0\,
      O => \^data_byte_valid0\
    );
\data_byte_valid_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[1]\,
      I1 => \hs_settle_count_reg_n_0_[0]\,
      I2 => \hs_settle_count_reg_n_0_[5]\,
      I3 => \hs_settle_count_reg_n_0_[4]\,
      I4 => \hs_settle_count_reg_n_0_[3]\,
      I5 => \hs_settle_count_reg_n_0_[2]\,
      O => \data_byte_valid_i_2__2_n_0\
    );
data_byte_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => data_byte_valid_reg_5(0),
      D => \^data_byte_valid0\,
      Q => \^data_byte_valid_reg_0\
    );
\hs_settle_count[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFDF"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[2]\,
      I1 => \hs_settle_count_reg_n_0_[3]\,
      I2 => \hs_settle_count_reg_n_0_[4]\,
      I3 => \hs_settle_count_reg_n_0_[5]\,
      I4 => \hs_settle_count_reg_n_0_[1]\,
      I5 => \hs_settle_count_reg_n_0_[0]\,
      O => hs_settle_count(0)
    );
\hs_settle_count[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[0]\,
      I1 => \hs_settle_count_reg_n_0_[1]\,
      O => hs_settle_count(1)
    );
\hs_settle_count[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[2]\,
      I1 => \hs_settle_count_reg_n_0_[0]\,
      I2 => \hs_settle_count_reg_n_0_[1]\,
      O => hs_settle_count(2)
    );
\hs_settle_count[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[3]\,
      I1 => \hs_settle_count_reg_n_0_[1]\,
      I2 => \hs_settle_count_reg_n_0_[0]\,
      I3 => \hs_settle_count_reg_n_0_[2]\,
      O => hs_settle_count(3)
    );
\hs_settle_count[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[2]\,
      I1 => \hs_settle_count_reg_n_0_[0]\,
      I2 => \hs_settle_count_reg_n_0_[1]\,
      I3 => \hs_settle_count_reg_n_0_[3]\,
      I4 => \hs_settle_count_reg_n_0_[4]\,
      O => hs_settle_count(4)
    );
\hs_settle_count[5]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \hs_settle_count_reg_n_0_[5]\,
      I1 => \hs_settle_count_reg_n_0_[2]\,
      I2 => \hs_settle_count_reg_n_0_[0]\,
      I3 => \hs_settle_count_reg_n_0_[1]\,
      I4 => \hs_settle_count_reg_n_0_[3]\,
      I5 => \hs_settle_count_reg_n_0_[4]\,
      O => hs_settle_count(5)
    );
\hs_settle_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => hs_settle_count(0),
      Q => \hs_settle_count_reg_n_0_[0]\
    );
\hs_settle_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => hs_settle_count(1),
      Q => \hs_settle_count_reg_n_0_[1]\
    );
\hs_settle_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => hs_settle_count(2),
      Q => \hs_settle_count_reg_n_0_[2]\
    );
\hs_settle_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => hs_settle_count(3),
      Q => \hs_settle_count_reg_n_0_[3]\
    );
\hs_settle_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => hs_settle_count(4),
      Q => \hs_settle_count_reg_n_0_[4]\
    );
\hs_settle_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => hs_settle_count(5),
      Q => \hs_settle_count_reg_n_0_[5]\
    );
\lane_buf[0][15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]_1\,
      I2 => \align_idx_reg[0][0]_2\,
      I3 => \align_idx_reg[0][0]_3\,
      O => \^data_byte_valid_reg_3\
    );
\lane_buf[0][23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]_1\,
      I2 => \align_idx_reg[0][0]_2\,
      I3 => \align_idx_reg[0][0]_3\,
      O => \^data_byte_valid_reg_2\
    );
\lane_buf[0][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(24),
      I1 => \^data_byte_valid_reg_1\,
      O => \data_byte_aligned_reg[7]_0\(0)
    );
\lane_buf[0][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(25),
      I1 => \^data_byte_valid_reg_1\,
      O => \data_byte_aligned_reg[7]_0\(1)
    );
\lane_buf[0][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(26),
      I1 => \^data_byte_valid_reg_1\,
      O => \data_byte_aligned_reg[7]_0\(2)
    );
\lane_buf[0][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(27),
      I1 => \^data_byte_valid_reg_1\,
      O => \data_byte_aligned_reg[7]_0\(3)
    );
\lane_buf[0][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(28),
      I1 => \^data_byte_valid_reg_1\,
      O => \data_byte_aligned_reg[7]_0\(4)
    );
\lane_buf[0][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(29),
      I1 => \^data_byte_valid_reg_1\,
      O => \data_byte_aligned_reg[7]_0\(5)
    );
\lane_buf[0][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(30),
      I1 => \^data_byte_valid_reg_1\,
      O => \data_byte_aligned_reg[7]_0\(6)
    );
\lane_buf[0][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => byte_data(31),
      I1 => \^data_byte_valid_reg_1\,
      O => \data_byte_aligned_reg[7]_0\(7)
    );
\lane_buf[0][31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]_1\,
      I2 => \align_idx_reg[0][0]_2\,
      I3 => \align_idx_reg[0][0]_3\,
      O => \^data_byte_valid_reg_1\
    );
\last_byte_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => Q(0),
      Q => \^last_byte_reg[7]_0\(0)
    );
\last_byte_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => Q(1),
      Q => \last_byte_reg_n_0_[1]\
    );
\last_byte_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => Q(2),
      Q => \last_byte_reg_n_0_[2]\
    );
\last_byte_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => Q(3),
      Q => \last_byte_reg_n_0_[3]\
    );
\last_byte_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => Q(4),
      Q => \last_byte_reg_n_0_[4]\
    );
\last_byte_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => Q(5),
      Q => \^last_byte_reg[7]_0\(1)
    );
\last_byte_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => Q(6),
      Q => \^last_byte_reg[7]_0\(2)
    );
\last_byte_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => data_byte_valid_reg_5(0),
      D => Q(7),
      Q => \^last_byte_reg[7]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io\ is
  port (
    data_hs_bit_0 : out STD_LOGIC;
    data_lp_n_0 : out STD_LOGIC;
    data_lp_p_0 : out STD_LOGIC;
    dphy_data_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io\ : entity is "_dphy_rx_data_io";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io\ is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_IBUFDS_DPHY : label is "PRIMITIVE";
begin
u_IBUFDS_DPHY: unisim.vcomponents.IBUFDS_DPHY
    generic map(
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      HSRX_DISABLE => '0',
      HSRX_O => data_hs_bit_0,
      I => dphy_data_p(0),
      IB => dphy_data_n(0),
      LPRX_DISABLE => '0',
      LPRX_O_N => data_lp_n_0,
      LPRX_O_P => data_lp_p_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_0\ is
  port (
    data_hs_bit_1 : out STD_LOGIC;
    data_lp_n_1 : out STD_LOGIC;
    data_lp_p_1 : out STD_LOGIC;
    dphy_data_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_0\ : entity is "_dphy_rx_data_io";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_0\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_0\ is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_IBUFDS_DPHY : label is "PRIMITIVE";
begin
u_IBUFDS_DPHY: unisim.vcomponents.IBUFDS_DPHY
    generic map(
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      HSRX_DISABLE => '0',
      HSRX_O => data_hs_bit_1,
      I => dphy_data_p(0),
      IB => dphy_data_n(0),
      LPRX_DISABLE => '0',
      LPRX_O_N => data_lp_n_1,
      LPRX_O_P => data_lp_p_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_1\ is
  port (
    data_hs_bit_2 : out STD_LOGIC;
    data_lp_n_2 : out STD_LOGIC;
    data_lp_p_2 : out STD_LOGIC;
    dphy_data_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_1\ : entity is "_dphy_rx_data_io";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_1\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_1\ is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_IBUFDS_DPHY : label is "PRIMITIVE";
begin
u_IBUFDS_DPHY: unisim.vcomponents.IBUFDS_DPHY
    generic map(
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      HSRX_DISABLE => '0',
      HSRX_O => data_hs_bit_2,
      I => dphy_data_p(0),
      IB => dphy_data_n(0),
      LPRX_DISABLE => '0',
      LPRX_O_N => data_lp_n_2,
      LPRX_O_P => data_lp_p_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_2\ is
  port (
    data_hs_bit_3 : out STD_LOGIC;
    data_lp_n_3 : out STD_LOGIC;
    data_lp_p_3 : out STD_LOGIC;
    dphy_data_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_2\ : entity is "_dphy_rx_data_io";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_2\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_2\ is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_IBUFDS_DPHY : label is "PRIMITIVE";
begin
u_IBUFDS_DPHY: unisim.vcomponents.IBUFDS_DPHY
    generic map(
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      HSRX_DISABLE => '0',
      HSRX_O => data_hs_bit_3,
      I => dphy_data_p(0),
      IB => dphy_data_n(0),
      LPRX_DISABLE => '0',
      LPRX_O_N => data_lp_n_3,
      LPRX_O_P => data_lp_p_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_byte_reg[5]\ : out STD_LOGIC;
    u_ISERDESE3_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \last_byte_reg[5]_0\ : out STD_LOGIC;
    u_ISERDESE3_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    u_ISERDESE3_2 : out STD_LOGIC;
    u_ISERDESE3_3 : out STD_LOGIC;
    u_ISERDESE3_4 : out STD_LOGIC;
    u_ISERDESE3_5 : out STD_LOGIC;
    u_ISERDESE3_6 : out STD_LOGIC;
    u_ISERDESE3_7 : out STD_LOGIC;
    u_ISERDESE3_8 : out STD_LOGIC;
    u_ISERDESE3_9 : out STD_LOGIC;
    u_ISERDESE3_10 : out STD_LOGIC;
    clk_hs_byte : in STD_LOGIC;
    data_hs_bit_0 : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_bit : in STD_LOGIC;
    data_byte_valid0 : in STD_LOGIC;
    \align_offset_reg[1]\ : in STD_LOGIC;
    \data_byte_aligned_reg[1]\ : in STD_LOGIC;
    \data_byte_aligned_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_byte_aligned_reg[7]\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]\ : in STD_LOGIC;
    \align_offset_reg[0]\ : in STD_LOGIC;
    \align_offset_reg[0]_0\ : in STD_LOGIC;
    data_byte_valid_reg : in STD_LOGIC;
    \data_byte_aligned[2]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_byte_aligned[2]_i_2_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte\ : entity is "_dphy_rx_to_byte";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte\ is
  signal FIFO_RD_EN0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \align_offset[0]_i_2_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_5_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_2_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_4_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_5_n_0\ : STD_LOGIC;
  signal \align_offset[3]_i_3_n_0\ : STD_LOGIC;
  signal \align_offset[3]_i_4_n_0\ : STD_LOGIC;
  signal data_bit_delayed : STD_LOGIC;
  signal fifo_empty : STD_LOGIC;
  signal \^last_byte_reg[5]\ : STD_LOGIC;
  signal \^last_byte_reg[5]_0\ : STD_LOGIC;
  signal NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED : STD_LOGIC;
  signal NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_offset[1]_i_1\ : label is "soft_lutpair228";
  attribute SOFT_HLUTNM of \align_offset[1]_i_3\ : label is "soft_lutpair229";
  attribute SOFT_HLUTNM of \align_offset[1]_i_4\ : label is "soft_lutpair230";
  attribute SOFT_HLUTNM of \align_offset[2]_i_9\ : label is "soft_lutpair230";
  attribute SOFT_HLUTNM of \align_offset[3]_i_2\ : label is "soft_lutpair228";
  attribute SOFT_HLUTNM of \align_offset[3]_i_4\ : label is "soft_lutpair229";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_IDELAYE3 : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of u_IDELAYE3 : label is "MLO";
  attribute BOX_TYPE of u_ISERDESE3 : label is "PRIMITIVE";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \last_byte_reg[5]\ <= \^last_byte_reg[5]\;
  \last_byte_reg[5]_0\ <= \^last_byte_reg[5]_0\;
\align_offset[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^last_byte_reg[5]_0\,
      I1 => \align_offset[0]_i_2_n_0\,
      I2 => \align_offset_reg[0]\,
      I3 => \align_offset_reg[0]_0\,
      O => D(0)
    );
\align_offset[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \align_offset[0]_i_5_n_0\,
      O => \align_offset[0]_i_2_n_0\
    );
\align_offset[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_2\(3),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(6),
      O => \align_offset[0]_i_5_n_0\
    );
\align_offset[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \align_offset[1]_i_2_n_0\,
      I1 => \^last_byte_reg[5]_0\,
      I2 => \align_offset_reg[1]\,
      O => D(1)
    );
\align_offset[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \align_offset[1]_i_4_n_0\,
      O => \align_offset[1]_i_2_n_0\
    );
\align_offset[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_2\(1),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \align_offset[1]_i_5_n_0\,
      O => \^last_byte_reg[5]_0\
    );
\align_offset[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \data_byte_aligned[2]_i_2\(2),
      I3 => \data_byte_aligned[2]_i_2\(3),
      O => \align_offset[1]_i_4_n_0\
    );
\align_offset[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \data_byte_aligned[2]_i_2\(2),
      I3 => \data_byte_aligned[2]_i_2\(3),
      O => \align_offset[1]_i_5_n_0\
    );
\align_offset[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      O => u_ISERDESE3_2
    );
\align_offset[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAE00000000"
    )
        port map (
      I0 => \^last_byte_reg[5]\,
      I1 => \align_offset[3]_i_3_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \align_offset[3]_i_4_n_0\,
      I5 => data_byte_valid0,
      O => E(0)
    );
\align_offset[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => \^last_byte_reg[5]_0\,
      I1 => data_byte_valid_reg,
      I2 => \align_offset[0]_i_2_n_0\,
      I3 => \align_offset[1]_i_2_n_0\,
      I4 => \align_offset_reg[1]\,
      O => \^last_byte_reg[5]\
    );
\align_offset[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(4),
      O => \align_offset[3]_i_3_n_0\
    );
\align_offset[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \align_offset[3]_i_4_n_0\
    );
\data_byte_aligned[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \data_byte_aligned[2]_i_2_0\(1),
      I4 => \data_byte_aligned[2]_i_2_0\(0),
      I5 => \data_byte_aligned[2]_i_2\(0),
      O => u_ISERDESE3_6
    );
\data_byte_aligned[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11F000F000F000F0"
    )
        port map (
      I0 => \align_offset[1]_i_2_n_0\,
      I1 => \^last_byte_reg[5]_0\,
      I2 => \data_byte_aligned_reg[1]\,
      I3 => data_byte_valid0,
      I4 => \^q\(1),
      I5 => \data_byte_aligned_reg[1]_0\(0),
      O => u_ISERDESE3_1(0)
    );
\data_byte_aligned[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^last_byte_reg[5]\,
      I2 => data_byte_valid0,
      I3 => \data_byte_aligned_reg[3]\,
      O => u_ISERDESE3_1(1)
    );
\data_byte_aligned[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EF"
    )
        port map (
      I0 => \^last_byte_reg[5]\,
      I1 => \^q\(4),
      I2 => data_byte_valid0,
      I3 => \data_byte_aligned_reg[4]\,
      O => u_ISERDESE3_1(2)
    );
\data_byte_aligned[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \data_byte_aligned[2]_i_2_0\(1),
      I3 => \^q\(2),
      I4 => \data_byte_aligned[2]_i_2_0\(0),
      I5 => \^q\(1),
      O => u_ISERDESE3_9
    );
\data_byte_aligned[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(7),
      I1 => \data_byte_aligned[2]_i_2_0\(1),
      I2 => \^q\(6),
      I3 => \data_byte_aligned[2]_i_2_0\(0),
      I4 => \^q\(5),
      O => u_ISERDESE3_7
    );
\data_byte_aligned[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \data_byte_aligned[2]_i_2_0\(1),
      I3 => \^q\(3),
      I4 => \data_byte_aligned[2]_i_2_0\(0),
      I5 => \^q\(2),
      O => u_ISERDESE3_4
    );
\data_byte_aligned[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \data_byte_aligned[2]_i_2_0\(1),
      I3 => \^q\(4),
      I4 => \data_byte_aligned[2]_i_2_0\(0),
      I5 => \^q\(3),
      O => u_ISERDESE3_10
    );
\data_byte_aligned[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \data_byte_aligned[2]_i_2_0\(1),
      I3 => \^q\(0),
      I4 => \data_byte_aligned[2]_i_2_0\(0),
      I5 => \data_byte_aligned[2]_i_2\(3),
      O => u_ISERDESE3_8
    );
\data_byte_aligned[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEFFFFFFFF"
    )
        port map (
      I0 => \^last_byte_reg[5]\,
      I1 => \align_offset[3]_i_3_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \align_offset[3]_i_4_n_0\,
      I5 => data_byte_valid0,
      O => u_ISERDESE3_0(0)
    );
\data_byte_aligned[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^last_byte_reg[5]\,
      I2 => data_byte_valid0,
      I3 => \data_byte_aligned_reg[7]\,
      O => u_ISERDESE3_1(3)
    );
\data_byte_aligned[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \data_byte_aligned[2]_i_2_0\(1),
      I3 => \^q\(5),
      I4 => \data_byte_aligned[2]_i_2_0\(0),
      I5 => \^q\(4),
      O => u_ISERDESE3_5
    );
\data_byte_aligned[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \data_byte_aligned[2]_i_2_0\(1),
      I3 => \^q\(1),
      I4 => \data_byte_aligned[2]_i_2_0\(0),
      I5 => \^q\(0),
      O => u_ISERDESE3_3
    );
u_IDELAYE3: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "NONE",
      DELAY_FORMAT => "COUNT",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 200,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 300.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => '0',
      CASC_OUT => NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED,
      CASC_RETURN => NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED,
      CE => '0',
      CLK => clk_hs_byte,
      CNTVALUEIN(8 downto 0) => B"000000000",
      CNTVALUEOUT(8 downto 0) => NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED(8 downto 0),
      DATAIN => '0',
      DATAOUT => data_bit_delayed,
      EN_VTC => '0',
      IDATAIN => data_hs_bit_0,
      INC => '0',
      LOAD => '0',
      RST => AR(0)
    );
u_ISERDESE3: unisim.vcomponents.ISERDESE3
    generic map(
      DATA_WIDTH => 8,
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      FIFO_ENABLE => "TRUE",
      FIFO_SYNC_MODE => "FALSE",
      IDDR_MODE => "FALSE",
      IS_CLK_B_INVERTED => '1',
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000
    )
        port map (
      CLK => clk_hs_bit,
      CLKDIV => clk_hs_byte,
      CLK_B => clk_hs_bit,
      D => data_bit_delayed,
      FIFO_EMPTY => fifo_empty,
      FIFO_RD_CLK => clk_hs_byte,
      FIFO_RD_EN => FIFO_RD_EN0,
      INTERNAL_DIVCLK => NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED,
      Q(7 downto 0) => \^q\(7 downto 0),
      RST => AR(0)
    );
u_ISERDESE3_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_empty,
      O => FIFO_RD_EN0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_byte_reg[5]\ : out STD_LOGIC;
    u_ISERDESE3_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \last_byte_reg[5]_0\ : out STD_LOGIC;
    u_ISERDESE3_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    u_ISERDESE3_2 : out STD_LOGIC;
    u_ISERDESE3_3 : out STD_LOGIC;
    u_ISERDESE3_4 : out STD_LOGIC;
    u_ISERDESE3_5 : out STD_LOGIC;
    u_ISERDESE3_6 : out STD_LOGIC;
    u_ISERDESE3_7 : out STD_LOGIC;
    u_ISERDESE3_8 : out STD_LOGIC;
    u_ISERDESE3_9 : out STD_LOGIC;
    u_ISERDESE3_10 : out STD_LOGIC;
    clk_hs_byte : in STD_LOGIC;
    data_hs_bit_1 : in STD_LOGIC;
    u_ISERDESE3_11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_bit : in STD_LOGIC;
    data_byte_valid0 : in STD_LOGIC;
    \align_offset_reg[1]\ : in STD_LOGIC;
    \data_byte_aligned_reg[1]\ : in STD_LOGIC;
    \data_byte_aligned_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_byte_aligned_reg[7]\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]\ : in STD_LOGIC;
    \align_offset_reg[0]\ : in STD_LOGIC;
    \align_offset_reg[0]_0\ : in STD_LOGIC;
    data_byte_valid_reg : in STD_LOGIC;
    \data_byte_aligned[2]_i_2__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_byte_aligned[2]_i_2__0_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_3\ : entity is "_dphy_rx_to_byte";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_3\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_3\ is
  signal FIFO_RD_EN0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \align_offset[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \align_offset[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \align_offset[3]_i_4__0_n_0\ : STD_LOGIC;
  signal data_bit_delayed : STD_LOGIC;
  signal fifo_empty : STD_LOGIC;
  signal \^last_byte_reg[5]\ : STD_LOGIC;
  signal \^last_byte_reg[5]_0\ : STD_LOGIC;
  signal NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED : STD_LOGIC;
  signal NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_offset[1]_i_1__0\ : label is "soft_lutpair231";
  attribute SOFT_HLUTNM of \align_offset[1]_i_3__0\ : label is "soft_lutpair232";
  attribute SOFT_HLUTNM of \align_offset[1]_i_4__0\ : label is "soft_lutpair233";
  attribute SOFT_HLUTNM of \align_offset[2]_i_9__0\ : label is "soft_lutpair233";
  attribute SOFT_HLUTNM of \align_offset[3]_i_2__0\ : label is "soft_lutpair231";
  attribute SOFT_HLUTNM of \align_offset[3]_i_4__0\ : label is "soft_lutpair232";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_IDELAYE3 : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of u_IDELAYE3 : label is "MLO";
  attribute BOX_TYPE of u_ISERDESE3 : label is "PRIMITIVE";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \last_byte_reg[5]\ <= \^last_byte_reg[5]\;
  \last_byte_reg[5]_0\ <= \^last_byte_reg[5]_0\;
\align_offset[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^last_byte_reg[5]_0\,
      I1 => \align_offset[0]_i_2__0_n_0\,
      I2 => \align_offset_reg[0]\,
      I3 => \align_offset_reg[0]_0\,
      O => D(0)
    );
\align_offset[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \align_offset[0]_i_5__0_n_0\,
      O => \align_offset[0]_i_2__0_n_0\
    );
\align_offset[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_2__0\(3),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(6),
      O => \align_offset[0]_i_5__0_n_0\
    );
\align_offset[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \align_offset[1]_i_2__0_n_0\,
      I1 => \^last_byte_reg[5]_0\,
      I2 => \align_offset_reg[1]\,
      O => D(1)
    );
\align_offset[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \align_offset[1]_i_4__0_n_0\,
      O => \align_offset[1]_i_2__0_n_0\
    );
\align_offset[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_2__0\(1),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \align_offset[1]_i_5__0_n_0\,
      O => \^last_byte_reg[5]_0\
    );
\align_offset[1]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \data_byte_aligned[2]_i_2__0\(2),
      I3 => \data_byte_aligned[2]_i_2__0\(3),
      O => \align_offset[1]_i_4__0_n_0\
    );
\align_offset[1]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \data_byte_aligned[2]_i_2__0\(2),
      I3 => \data_byte_aligned[2]_i_2__0\(3),
      O => \align_offset[1]_i_5__0_n_0\
    );
\align_offset[2]_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      O => u_ISERDESE3_2
    );
\align_offset[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAE00000000"
    )
        port map (
      I0 => \^last_byte_reg[5]\,
      I1 => \align_offset[3]_i_3__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \align_offset[3]_i_4__0_n_0\,
      I5 => data_byte_valid0,
      O => E(0)
    );
\align_offset[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => \^last_byte_reg[5]_0\,
      I1 => data_byte_valid_reg,
      I2 => \align_offset[0]_i_2__0_n_0\,
      I3 => \align_offset[1]_i_2__0_n_0\,
      I4 => \align_offset_reg[1]\,
      O => \^last_byte_reg[5]\
    );
\align_offset[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(4),
      O => \align_offset[3]_i_3__0_n_0\
    );
\align_offset[3]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \align_offset[3]_i_4__0_n_0\
    );
\data_byte_aligned[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \data_byte_aligned[2]_i_2__0_0\(1),
      I4 => \data_byte_aligned[2]_i_2__0_0\(0),
      I5 => \data_byte_aligned[2]_i_2__0\(0),
      O => u_ISERDESE3_6
    );
\data_byte_aligned[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11F000F000F000F0"
    )
        port map (
      I0 => \align_offset[1]_i_2__0_n_0\,
      I1 => \^last_byte_reg[5]_0\,
      I2 => \data_byte_aligned_reg[1]\,
      I3 => data_byte_valid0,
      I4 => \^q\(1),
      I5 => \data_byte_aligned_reg[1]_0\(0),
      O => u_ISERDESE3_1(0)
    );
\data_byte_aligned[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^last_byte_reg[5]\,
      I2 => data_byte_valid0,
      I3 => \data_byte_aligned_reg[3]\,
      O => u_ISERDESE3_1(1)
    );
\data_byte_aligned[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EF"
    )
        port map (
      I0 => \^last_byte_reg[5]\,
      I1 => \^q\(4),
      I2 => data_byte_valid0,
      I3 => \data_byte_aligned_reg[4]\,
      O => u_ISERDESE3_1(2)
    );
\data_byte_aligned[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \data_byte_aligned[2]_i_2__0_0\(1),
      I3 => \^q\(2),
      I4 => \data_byte_aligned[2]_i_2__0_0\(0),
      I5 => \^q\(1),
      O => u_ISERDESE3_9
    );
\data_byte_aligned[4]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(7),
      I1 => \data_byte_aligned[2]_i_2__0_0\(1),
      I2 => \^q\(6),
      I3 => \data_byte_aligned[2]_i_2__0_0\(0),
      I4 => \^q\(5),
      O => u_ISERDESE3_7
    );
\data_byte_aligned[5]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \data_byte_aligned[2]_i_2__0_0\(1),
      I3 => \^q\(3),
      I4 => \data_byte_aligned[2]_i_2__0_0\(0),
      I5 => \^q\(2),
      O => u_ISERDESE3_4
    );
\data_byte_aligned[6]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \data_byte_aligned[2]_i_2__0_0\(1),
      I3 => \^q\(4),
      I4 => \data_byte_aligned[2]_i_2__0_0\(0),
      I5 => \^q\(3),
      O => u_ISERDESE3_10
    );
\data_byte_aligned[6]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \data_byte_aligned[2]_i_2__0_0\(1),
      I3 => \^q\(0),
      I4 => \data_byte_aligned[2]_i_2__0_0\(0),
      I5 => \data_byte_aligned[2]_i_2__0\(3),
      O => u_ISERDESE3_8
    );
\data_byte_aligned[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEFFFFFFFF"
    )
        port map (
      I0 => \^last_byte_reg[5]\,
      I1 => \align_offset[3]_i_3__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \align_offset[3]_i_4__0_n_0\,
      I5 => data_byte_valid0,
      O => u_ISERDESE3_0(0)
    );
\data_byte_aligned[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^last_byte_reg[5]\,
      I2 => data_byte_valid0,
      I3 => \data_byte_aligned_reg[7]\,
      O => u_ISERDESE3_1(3)
    );
\data_byte_aligned[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \data_byte_aligned[2]_i_2__0_0\(1),
      I3 => \^q\(5),
      I4 => \data_byte_aligned[2]_i_2__0_0\(0),
      I5 => \^q\(4),
      O => u_ISERDESE3_5
    );
\data_byte_aligned[7]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \data_byte_aligned[2]_i_2__0_0\(1),
      I3 => \^q\(1),
      I4 => \data_byte_aligned[2]_i_2__0_0\(0),
      I5 => \^q\(0),
      O => u_ISERDESE3_3
    );
u_IDELAYE3: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "NONE",
      DELAY_FORMAT => "COUNT",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 200,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 300.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => '0',
      CASC_OUT => NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED,
      CASC_RETURN => NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED,
      CE => '0',
      CLK => clk_hs_byte,
      CNTVALUEIN(8 downto 0) => B"000000000",
      CNTVALUEOUT(8 downto 0) => NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED(8 downto 0),
      DATAIN => '0',
      DATAOUT => data_bit_delayed,
      EN_VTC => '0',
      IDATAIN => data_hs_bit_1,
      INC => '0',
      LOAD => '0',
      RST => u_ISERDESE3_11(0)
    );
u_ISERDESE3: unisim.vcomponents.ISERDESE3
    generic map(
      DATA_WIDTH => 8,
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      FIFO_ENABLE => "TRUE",
      FIFO_SYNC_MODE => "FALSE",
      IDDR_MODE => "FALSE",
      IS_CLK_B_INVERTED => '1',
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000
    )
        port map (
      CLK => clk_hs_bit,
      CLKDIV => clk_hs_byte,
      CLK_B => clk_hs_bit,
      D => data_bit_delayed,
      FIFO_EMPTY => fifo_empty,
      FIFO_RD_CLK => clk_hs_byte,
      FIFO_RD_EN => FIFO_RD_EN0,
      INTERNAL_DIVCLK => NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED,
      Q(7 downto 0) => \^q\(7 downto 0),
      RST => u_ISERDESE3_11(0)
    );
\u_ISERDESE3_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_empty,
      O => FIFO_RD_EN0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_byte_reg[5]\ : out STD_LOGIC;
    u_ISERDESE3_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \last_byte_reg[5]_0\ : out STD_LOGIC;
    u_ISERDESE3_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    u_ISERDESE3_2 : out STD_LOGIC;
    u_ISERDESE3_3 : out STD_LOGIC;
    u_ISERDESE3_4 : out STD_LOGIC;
    u_ISERDESE3_5 : out STD_LOGIC;
    u_ISERDESE3_6 : out STD_LOGIC;
    u_ISERDESE3_7 : out STD_LOGIC;
    u_ISERDESE3_8 : out STD_LOGIC;
    u_ISERDESE3_9 : out STD_LOGIC;
    u_ISERDESE3_10 : out STD_LOGIC;
    clk_hs_byte : in STD_LOGIC;
    data_hs_bit_2 : in STD_LOGIC;
    u_ISERDESE3_11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_bit : in STD_LOGIC;
    data_byte_valid0 : in STD_LOGIC;
    \align_offset_reg[1]\ : in STD_LOGIC;
    \data_byte_aligned_reg[1]\ : in STD_LOGIC;
    \data_byte_aligned_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_byte_aligned_reg[7]\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]\ : in STD_LOGIC;
    \align_offset_reg[0]\ : in STD_LOGIC;
    \align_offset_reg[0]_0\ : in STD_LOGIC;
    data_byte_valid_reg : in STD_LOGIC;
    \data_byte_aligned[2]_i_2__1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_byte_aligned[2]_i_2__1_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_4\ : entity is "_dphy_rx_to_byte";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_4\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_4\ is
  signal FIFO_RD_EN0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \align_offset[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_5__1_n_0\ : STD_LOGIC;
  signal \align_offset[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \align_offset[3]_i_4__1_n_0\ : STD_LOGIC;
  signal data_bit_delayed : STD_LOGIC;
  signal fifo_empty : STD_LOGIC;
  signal \^last_byte_reg[5]\ : STD_LOGIC;
  signal \^last_byte_reg[5]_0\ : STD_LOGIC;
  signal NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED : STD_LOGIC;
  signal NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_offset[1]_i_1__1\ : label is "soft_lutpair234";
  attribute SOFT_HLUTNM of \align_offset[1]_i_3__1\ : label is "soft_lutpair235";
  attribute SOFT_HLUTNM of \align_offset[1]_i_4__1\ : label is "soft_lutpair236";
  attribute SOFT_HLUTNM of \align_offset[2]_i_9__1\ : label is "soft_lutpair236";
  attribute SOFT_HLUTNM of \align_offset[3]_i_2__1\ : label is "soft_lutpair234";
  attribute SOFT_HLUTNM of \align_offset[3]_i_4__1\ : label is "soft_lutpair235";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_IDELAYE3 : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of u_IDELAYE3 : label is "MLO";
  attribute BOX_TYPE of u_ISERDESE3 : label is "PRIMITIVE";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \last_byte_reg[5]\ <= \^last_byte_reg[5]\;
  \last_byte_reg[5]_0\ <= \^last_byte_reg[5]_0\;
\align_offset[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^last_byte_reg[5]_0\,
      I1 => \align_offset[0]_i_2__1_n_0\,
      I2 => \align_offset_reg[0]\,
      I3 => \align_offset_reg[0]_0\,
      O => D(0)
    );
\align_offset[0]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \align_offset[0]_i_5__1_n_0\,
      O => \align_offset[0]_i_2__1_n_0\
    );
\align_offset[0]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_2__1\(3),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(6),
      O => \align_offset[0]_i_5__1_n_0\
    );
\align_offset[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \align_offset[1]_i_2__1_n_0\,
      I1 => \^last_byte_reg[5]_0\,
      I2 => \align_offset_reg[1]\,
      O => D(1)
    );
\align_offset[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \align_offset[1]_i_4__1_n_0\,
      O => \align_offset[1]_i_2__1_n_0\
    );
\align_offset[1]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_2__1\(1),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \align_offset[1]_i_5__1_n_0\,
      O => \^last_byte_reg[5]_0\
    );
\align_offset[1]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \data_byte_aligned[2]_i_2__1\(2),
      I3 => \data_byte_aligned[2]_i_2__1\(3),
      O => \align_offset[1]_i_4__1_n_0\
    );
\align_offset[1]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \data_byte_aligned[2]_i_2__1\(2),
      I3 => \data_byte_aligned[2]_i_2__1\(3),
      O => \align_offset[1]_i_5__1_n_0\
    );
\align_offset[2]_i_9__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      O => u_ISERDESE3_2
    );
\align_offset[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAE00000000"
    )
        port map (
      I0 => \^last_byte_reg[5]\,
      I1 => \align_offset[3]_i_3__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \align_offset[3]_i_4__1_n_0\,
      I5 => data_byte_valid0,
      O => E(0)
    );
\align_offset[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => \^last_byte_reg[5]_0\,
      I1 => data_byte_valid_reg,
      I2 => \align_offset[0]_i_2__1_n_0\,
      I3 => \align_offset[1]_i_2__1_n_0\,
      I4 => \align_offset_reg[1]\,
      O => \^last_byte_reg[5]\
    );
\align_offset[3]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(4),
      O => \align_offset[3]_i_3__1_n_0\
    );
\align_offset[3]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \align_offset[3]_i_4__1_n_0\
    );
\data_byte_aligned[0]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \data_byte_aligned[2]_i_2__1_0\(1),
      I4 => \data_byte_aligned[2]_i_2__1_0\(0),
      I5 => \data_byte_aligned[2]_i_2__1\(0),
      O => u_ISERDESE3_6
    );
\data_byte_aligned[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11F000F000F000F0"
    )
        port map (
      I0 => \align_offset[1]_i_2__1_n_0\,
      I1 => \^last_byte_reg[5]_0\,
      I2 => \data_byte_aligned_reg[1]\,
      I3 => data_byte_valid0,
      I4 => \^q\(1),
      I5 => \data_byte_aligned_reg[1]_0\(0),
      O => u_ISERDESE3_1(0)
    );
\data_byte_aligned[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^last_byte_reg[5]\,
      I2 => data_byte_valid0,
      I3 => \data_byte_aligned_reg[3]\,
      O => u_ISERDESE3_1(1)
    );
\data_byte_aligned[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EF"
    )
        port map (
      I0 => \^last_byte_reg[5]\,
      I1 => \^q\(4),
      I2 => data_byte_valid0,
      I3 => \data_byte_aligned_reg[4]\,
      O => u_ISERDESE3_1(2)
    );
\data_byte_aligned[4]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \data_byte_aligned[2]_i_2__1_0\(1),
      I3 => \^q\(2),
      I4 => \data_byte_aligned[2]_i_2__1_0\(0),
      I5 => \^q\(1),
      O => u_ISERDESE3_9
    );
\data_byte_aligned[4]_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(7),
      I1 => \data_byte_aligned[2]_i_2__1_0\(1),
      I2 => \^q\(6),
      I3 => \data_byte_aligned[2]_i_2__1_0\(0),
      I4 => \^q\(5),
      O => u_ISERDESE3_7
    );
\data_byte_aligned[5]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \data_byte_aligned[2]_i_2__1_0\(1),
      I3 => \^q\(3),
      I4 => \data_byte_aligned[2]_i_2__1_0\(0),
      I5 => \^q\(2),
      O => u_ISERDESE3_4
    );
\data_byte_aligned[6]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \data_byte_aligned[2]_i_2__1_0\(1),
      I3 => \^q\(4),
      I4 => \data_byte_aligned[2]_i_2__1_0\(0),
      I5 => \^q\(3),
      O => u_ISERDESE3_10
    );
\data_byte_aligned[6]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \data_byte_aligned[2]_i_2__1_0\(1),
      I3 => \^q\(0),
      I4 => \data_byte_aligned[2]_i_2__1_0\(0),
      I5 => \data_byte_aligned[2]_i_2__1\(3),
      O => u_ISERDESE3_8
    );
\data_byte_aligned[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEFFFFFFFF"
    )
        port map (
      I0 => \^last_byte_reg[5]\,
      I1 => \align_offset[3]_i_3__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \align_offset[3]_i_4__1_n_0\,
      I5 => data_byte_valid0,
      O => u_ISERDESE3_0(0)
    );
\data_byte_aligned[7]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^last_byte_reg[5]\,
      I2 => data_byte_valid0,
      I3 => \data_byte_aligned_reg[7]\,
      O => u_ISERDESE3_1(3)
    );
\data_byte_aligned[7]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \data_byte_aligned[2]_i_2__1_0\(1),
      I3 => \^q\(5),
      I4 => \data_byte_aligned[2]_i_2__1_0\(0),
      I5 => \^q\(4),
      O => u_ISERDESE3_5
    );
\data_byte_aligned[7]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \data_byte_aligned[2]_i_2__1_0\(1),
      I3 => \^q\(1),
      I4 => \data_byte_aligned[2]_i_2__1_0\(0),
      I5 => \^q\(0),
      O => u_ISERDESE3_3
    );
u_IDELAYE3: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "NONE",
      DELAY_FORMAT => "COUNT",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 200,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 300.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => '0',
      CASC_OUT => NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED,
      CASC_RETURN => NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED,
      CE => '0',
      CLK => clk_hs_byte,
      CNTVALUEIN(8 downto 0) => B"000000000",
      CNTVALUEOUT(8 downto 0) => NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED(8 downto 0),
      DATAIN => '0',
      DATAOUT => data_bit_delayed,
      EN_VTC => '0',
      IDATAIN => data_hs_bit_2,
      INC => '0',
      LOAD => '0',
      RST => u_ISERDESE3_11(0)
    );
u_ISERDESE3: unisim.vcomponents.ISERDESE3
    generic map(
      DATA_WIDTH => 8,
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      FIFO_ENABLE => "TRUE",
      FIFO_SYNC_MODE => "FALSE",
      IDDR_MODE => "FALSE",
      IS_CLK_B_INVERTED => '1',
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000
    )
        port map (
      CLK => clk_hs_bit,
      CLKDIV => clk_hs_byte,
      CLK_B => clk_hs_bit,
      D => data_bit_delayed,
      FIFO_EMPTY => fifo_empty,
      FIFO_RD_CLK => clk_hs_byte,
      FIFO_RD_EN => FIFO_RD_EN0,
      INTERNAL_DIVCLK => NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED,
      Q(7 downto 0) => \^q\(7 downto 0),
      RST => u_ISERDESE3_11(0)
    );
\u_ISERDESE3_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_empty,
      O => FIFO_RD_EN0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_5\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_byte_reg[5]\ : out STD_LOGIC;
    u_ISERDESE3_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \last_byte_reg[5]_0\ : out STD_LOGIC;
    u_ISERDESE3_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    u_ISERDESE3_2 : out STD_LOGIC;
    u_ISERDESE3_3 : out STD_LOGIC;
    u_ISERDESE3_4 : out STD_LOGIC;
    u_ISERDESE3_5 : out STD_LOGIC;
    u_ISERDESE3_6 : out STD_LOGIC;
    u_ISERDESE3_7 : out STD_LOGIC;
    u_ISERDESE3_8 : out STD_LOGIC;
    u_ISERDESE3_9 : out STD_LOGIC;
    u_ISERDESE3_10 : out STD_LOGIC;
    clk_hs_byte : in STD_LOGIC;
    data_hs_bit_3 : in STD_LOGIC;
    u_ISERDESE3_11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_bit : in STD_LOGIC;
    data_byte_valid0 : in STD_LOGIC;
    \align_offset_reg[1]\ : in STD_LOGIC;
    \data_byte_aligned_reg[1]\ : in STD_LOGIC;
    \data_byte_aligned_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_byte_aligned_reg[7]\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]\ : in STD_LOGIC;
    \align_offset_reg[0]\ : in STD_LOGIC;
    \align_offset_reg[0]_0\ : in STD_LOGIC;
    data_byte_valid_reg : in STD_LOGIC;
    \data_byte_aligned[2]_i_2__2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_byte_aligned[2]_i_2__2_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_5\ : entity is "_dphy_rx_to_byte";
end \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_5\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_5\ is
  signal FIFO_RD_EN0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \align_offset[0]_i_2__2_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_5__2_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_2__2_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_4__2_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_5__2_n_0\ : STD_LOGIC;
  signal \align_offset[3]_i_3__2_n_0\ : STD_LOGIC;
  signal \align_offset[3]_i_4__2_n_0\ : STD_LOGIC;
  signal data_bit_delayed : STD_LOGIC;
  signal fifo_empty : STD_LOGIC;
  signal \^last_byte_reg[5]\ : STD_LOGIC;
  signal \^last_byte_reg[5]_0\ : STD_LOGIC;
  signal NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED : STD_LOGIC;
  signal NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_offset[1]_i_1__2\ : label is "soft_lutpair237";
  attribute SOFT_HLUTNM of \align_offset[1]_i_3__2\ : label is "soft_lutpair238";
  attribute SOFT_HLUTNM of \align_offset[1]_i_4__2\ : label is "soft_lutpair239";
  attribute SOFT_HLUTNM of \align_offset[2]_i_9__2\ : label is "soft_lutpair239";
  attribute SOFT_HLUTNM of \align_offset[3]_i_2__2\ : label is "soft_lutpair237";
  attribute SOFT_HLUTNM of \align_offset[3]_i_4__2\ : label is "soft_lutpair238";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_IDELAYE3 : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of u_IDELAYE3 : label is "MLO";
  attribute BOX_TYPE of u_ISERDESE3 : label is "PRIMITIVE";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \last_byte_reg[5]\ <= \^last_byte_reg[5]\;
  \last_byte_reg[5]_0\ <= \^last_byte_reg[5]_0\;
\align_offset[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^last_byte_reg[5]_0\,
      I1 => \align_offset[0]_i_2__2_n_0\,
      I2 => \align_offset_reg[0]\,
      I3 => \align_offset_reg[0]_0\,
      O => D(0)
    );
\align_offset[0]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \align_offset[0]_i_5__2_n_0\,
      O => \align_offset[0]_i_2__2_n_0\
    );
\align_offset[0]_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_2__2\(3),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(6),
      O => \align_offset[0]_i_5__2_n_0\
    );
\align_offset[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \align_offset[1]_i_2__2_n_0\,
      I1 => \^last_byte_reg[5]_0\,
      I2 => \align_offset_reg[1]\,
      O => D(1)
    );
\align_offset[1]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \align_offset[1]_i_4__2_n_0\,
      O => \align_offset[1]_i_2__2_n_0\
    );
\align_offset[1]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_2__2\(1),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \align_offset[1]_i_5__2_n_0\,
      O => \^last_byte_reg[5]_0\
    );
\align_offset[1]_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \data_byte_aligned[2]_i_2__2\(2),
      I3 => \data_byte_aligned[2]_i_2__2\(3),
      O => \align_offset[1]_i_4__2_n_0\
    );
\align_offset[1]_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \data_byte_aligned[2]_i_2__2\(2),
      I3 => \data_byte_aligned[2]_i_2__2\(3),
      O => \align_offset[1]_i_5__2_n_0\
    );
\align_offset[2]_i_9__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      O => u_ISERDESE3_2
    );
\align_offset[3]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAE00000000"
    )
        port map (
      I0 => \^last_byte_reg[5]\,
      I1 => \align_offset[3]_i_3__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \align_offset[3]_i_4__2_n_0\,
      I5 => data_byte_valid0,
      O => E(0)
    );
\align_offset[3]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => \^last_byte_reg[5]_0\,
      I1 => data_byte_valid_reg,
      I2 => \align_offset[0]_i_2__2_n_0\,
      I3 => \align_offset[1]_i_2__2_n_0\,
      I4 => \align_offset_reg[1]\,
      O => \^last_byte_reg[5]\
    );
\align_offset[3]_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(4),
      O => \align_offset[3]_i_3__2_n_0\
    );
\align_offset[3]_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \align_offset[3]_i_4__2_n_0\
    );
\data_byte_aligned[0]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \data_byte_aligned[2]_i_2__2_0\(1),
      I4 => \data_byte_aligned[2]_i_2__2_0\(0),
      I5 => \data_byte_aligned[2]_i_2__2\(0),
      O => u_ISERDESE3_6
    );
\data_byte_aligned[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11F000F000F000F0"
    )
        port map (
      I0 => \align_offset[1]_i_2__2_n_0\,
      I1 => \^last_byte_reg[5]_0\,
      I2 => \data_byte_aligned_reg[1]\,
      I3 => data_byte_valid0,
      I4 => \^q\(1),
      I5 => \data_byte_aligned_reg[1]_0\(0),
      O => u_ISERDESE3_1(0)
    );
\data_byte_aligned[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^last_byte_reg[5]\,
      I2 => data_byte_valid0,
      I3 => \data_byte_aligned_reg[3]\,
      O => u_ISERDESE3_1(1)
    );
\data_byte_aligned[4]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EF"
    )
        port map (
      I0 => \^last_byte_reg[5]\,
      I1 => \^q\(4),
      I2 => data_byte_valid0,
      I3 => \data_byte_aligned_reg[4]\,
      O => u_ISERDESE3_1(2)
    );
\data_byte_aligned[4]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \data_byte_aligned[2]_i_2__2_0\(1),
      I3 => \^q\(2),
      I4 => \data_byte_aligned[2]_i_2__2_0\(0),
      I5 => \^q\(1),
      O => u_ISERDESE3_9
    );
\data_byte_aligned[4]_i_6__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(7),
      I1 => \data_byte_aligned[2]_i_2__2_0\(1),
      I2 => \^q\(6),
      I3 => \data_byte_aligned[2]_i_2__2_0\(0),
      I4 => \^q\(5),
      O => u_ISERDESE3_7
    );
\data_byte_aligned[5]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \data_byte_aligned[2]_i_2__2_0\(1),
      I3 => \^q\(3),
      I4 => \data_byte_aligned[2]_i_2__2_0\(0),
      I5 => \^q\(2),
      O => u_ISERDESE3_4
    );
\data_byte_aligned[6]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \data_byte_aligned[2]_i_2__2_0\(1),
      I3 => \^q\(4),
      I4 => \data_byte_aligned[2]_i_2__2_0\(0),
      I5 => \^q\(3),
      O => u_ISERDESE3_10
    );
\data_byte_aligned[6]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \data_byte_aligned[2]_i_2__2_0\(1),
      I3 => \^q\(0),
      I4 => \data_byte_aligned[2]_i_2__2_0\(0),
      I5 => \data_byte_aligned[2]_i_2__2\(3),
      O => u_ISERDESE3_8
    );
\data_byte_aligned[7]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEFFFFFFFF"
    )
        port map (
      I0 => \^last_byte_reg[5]\,
      I1 => \align_offset[3]_i_3__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \align_offset[3]_i_4__2_n_0\,
      I5 => data_byte_valid0,
      O => u_ISERDESE3_0(0)
    );
\data_byte_aligned[7]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^last_byte_reg[5]\,
      I2 => data_byte_valid0,
      I3 => \data_byte_aligned_reg[7]\,
      O => u_ISERDESE3_1(3)
    );
\data_byte_aligned[7]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \data_byte_aligned[2]_i_2__2_0\(1),
      I3 => \^q\(5),
      I4 => \data_byte_aligned[2]_i_2__2_0\(0),
      I5 => \^q\(4),
      O => u_ISERDESE3_5
    );
\data_byte_aligned[7]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \data_byte_aligned[2]_i_2__2_0\(1),
      I3 => \^q\(1),
      I4 => \data_byte_aligned[2]_i_2__2_0\(0),
      I5 => \^q\(0),
      O => u_ISERDESE3_3
    );
u_IDELAYE3: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "NONE",
      DELAY_FORMAT => "COUNT",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 200,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 300.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => '0',
      CASC_OUT => NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED,
      CASC_RETURN => NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED,
      CE => '0',
      CLK => clk_hs_byte,
      CNTVALUEIN(8 downto 0) => B"000000000",
      CNTVALUEOUT(8 downto 0) => NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED(8 downto 0),
      DATAIN => '0',
      DATAOUT => data_bit_delayed,
      EN_VTC => '0',
      IDATAIN => data_hs_bit_3,
      INC => '0',
      LOAD => '0',
      RST => u_ISERDESE3_11(0)
    );
u_ISERDESE3: unisim.vcomponents.ISERDESE3
    generic map(
      DATA_WIDTH => 8,
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      FIFO_ENABLE => "TRUE",
      FIFO_SYNC_MODE => "FALSE",
      IDDR_MODE => "FALSE",
      IS_CLK_B_INVERTED => '1',
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000
    )
        port map (
      CLK => clk_hs_bit,
      CLKDIV => clk_hs_byte,
      CLK_B => clk_hs_bit,
      D => data_bit_delayed,
      FIFO_EMPTY => fifo_empty,
      FIFO_RD_CLK => clk_hs_byte,
      FIFO_RD_EN => FIFO_RD_EN0,
      INTERNAL_DIVCLK => NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED,
      Q(7 downto 0) => \^q\(7 downto 0),
      RST => u_ISERDESE3_11(0)
    );
\u_ISERDESE3_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_empty,
      O => FIFO_RD_EN0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mipi_rx_to_video_0_0_csi2_rx_to_pixel is
  port (
    module_reset_reg : out STD_LOGIC;
    pix_valid : out STD_LOGIC;
    pix_data_enable : out STD_LOGIC;
    lane_byte_aligned_valid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[2][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[1][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[0][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_pix_di_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_pix_data_reg[39]_0\ : out STD_LOGIC_VECTOR ( 39 downto 0 );
    clk_hs_byte : in STD_LOGIC;
    align_flag_reg : in STD_LOGIC;
    locked_reg : in STD_LOGIC;
    module_reset : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \lane_buf_reg[7][0]\ : in STD_LOGIC;
    \lane_buf_reg[7][8]\ : in STD_LOGIC;
    \lane_buf_reg[7][16]\ : in STD_LOGIC;
    \lane_valid__2\ : in STD_LOGIC;
    \align_idx_reg[0][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lane_buf_reg[0][31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \align_idx_reg[1][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[1][0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[2][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[2][0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[3][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[3][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mipi_rx_to_video_0_0_csi2_rx_to_pixel : entity is "csi2_rx_to_pixel";
end design_1_mipi_rx_to_video_0_0_csi2_rx_to_pixel;

architecture STRUCTURE of design_1_mipi_rx_to_video_0_0_csi2_rx_to_pixel is
  signal data_flag0 : STD_LOGIC;
  signal head_clk_idx : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal lane_byte_aligned : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^lane_byte_aligned_valid\ : STD_LOGIC;
  signal last_data : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal last_size_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^module_reset_reg\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^pix_valid\ : STD_LOGIC;
  signal pixel_enable3_out : STD_LOGIC;
  signal pkt_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pkt_valid : STD_LOGIC;
  signal raw10_pix_data_enable : STD_LOGIC;
  signal raw10_pix_valid : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_10 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_11 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_12 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_13 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_14 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_15 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_16 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_17 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_18 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_19 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_20 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_21 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_22 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_23 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_24 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_25 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_26 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_27 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_28 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_29 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_30 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_31 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_8 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_9 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_1 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_10 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_100 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_101 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_11 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_12 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_13 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_14 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_15 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_16 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_17 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_2 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_5 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_50 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_54 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_55 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_56 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_57 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_58 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_59 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_6 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_60 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_61 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_62 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_63 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_64 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_65 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_66 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_67 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_68 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_69 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_7 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_70 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_71 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_72 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_73 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_74 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_75 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_76 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_77 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_78 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_79 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_8 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_80 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_81 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_82 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_83 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_84 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_85 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_86 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_87 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_88 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_89 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_9 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_90 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_91 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_92 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_93 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_94 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_95 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_96 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_97 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_98 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_99 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_12 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_13 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_14 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_15 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_16 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_17 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_18 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_19 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_20 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_21 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_22 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_23 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_24 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_25 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_26 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_27 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_28 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_29 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_30 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_31 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_32 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_33 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_34 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_35 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_36 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_37 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_38 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_39 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_40 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_41 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_42 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_43 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_44 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_45 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_46 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_47 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_48 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_49 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_50 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_51 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_52 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_77 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_78 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_79 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_80 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_81 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_82 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_83 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_84 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_85 : STD_LOGIC;
begin
  lane_byte_aligned_valid <= \^lane_byte_aligned_valid\;
  module_reset_reg <= \^module_reset_reg\;
  pix_valid <= \^pix_valid\;
locked_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pix_valid\,
      I1 => locked_reg,
      O => E(0)
    );
reg_pix_data_enable_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_packet_decoder_n_5,
      Q => pix_data_enable
    );
\reg_pix_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_51,
      Q => \reg_pix_data_reg[39]_0\(0)
    );
\reg_pix_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_41,
      Q => \reg_pix_data_reg[39]_0\(10)
    );
\reg_pix_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_40,
      Q => \reg_pix_data_reg[39]_0\(11)
    );
\reg_pix_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_39,
      Q => \reg_pix_data_reg[39]_0\(12)
    );
\reg_pix_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_38,
      Q => \reg_pix_data_reg[39]_0\(13)
    );
\reg_pix_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_37,
      Q => \reg_pix_data_reg[39]_0\(14)
    );
\reg_pix_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_36,
      Q => \reg_pix_data_reg[39]_0\(15)
    );
\reg_pix_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_35,
      Q => \reg_pix_data_reg[39]_0\(16)
    );
\reg_pix_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_34,
      Q => \reg_pix_data_reg[39]_0\(17)
    );
\reg_pix_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_33,
      Q => \reg_pix_data_reg[39]_0\(18)
    );
\reg_pix_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_32,
      Q => \reg_pix_data_reg[39]_0\(19)
    );
\reg_pix_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_50,
      Q => \reg_pix_data_reg[39]_0\(1)
    );
\reg_pix_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_31,
      Q => \reg_pix_data_reg[39]_0\(20)
    );
\reg_pix_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_30,
      Q => \reg_pix_data_reg[39]_0\(21)
    );
\reg_pix_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_29,
      Q => \reg_pix_data_reg[39]_0\(22)
    );
\reg_pix_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_28,
      Q => \reg_pix_data_reg[39]_0\(23)
    );
\reg_pix_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_27,
      Q => \reg_pix_data_reg[39]_0\(24)
    );
\reg_pix_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_26,
      Q => \reg_pix_data_reg[39]_0\(25)
    );
\reg_pix_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_25,
      Q => \reg_pix_data_reg[39]_0\(26)
    );
\reg_pix_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_24,
      Q => \reg_pix_data_reg[39]_0\(27)
    );
\reg_pix_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_23,
      Q => \reg_pix_data_reg[39]_0\(28)
    );
\reg_pix_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_22,
      Q => \reg_pix_data_reg[39]_0\(29)
    );
\reg_pix_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_49,
      Q => \reg_pix_data_reg[39]_0\(2)
    );
\reg_pix_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_21,
      Q => \reg_pix_data_reg[39]_0\(30)
    );
\reg_pix_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_20,
      Q => \reg_pix_data_reg[39]_0\(31)
    );
\reg_pix_data_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_19,
      Q => \reg_pix_data_reg[39]_0\(32)
    );
\reg_pix_data_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_18,
      Q => \reg_pix_data_reg[39]_0\(33)
    );
\reg_pix_data_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_17,
      Q => \reg_pix_data_reg[39]_0\(34)
    );
\reg_pix_data_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_16,
      Q => \reg_pix_data_reg[39]_0\(35)
    );
\reg_pix_data_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_15,
      Q => \reg_pix_data_reg[39]_0\(36)
    );
\reg_pix_data_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_14,
      Q => \reg_pix_data_reg[39]_0\(37)
    );
\reg_pix_data_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_13,
      Q => \reg_pix_data_reg[39]_0\(38)
    );
\reg_pix_data_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_12,
      Q => \reg_pix_data_reg[39]_0\(39)
    );
\reg_pix_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_48,
      Q => \reg_pix_data_reg[39]_0\(3)
    );
\reg_pix_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_47,
      Q => \reg_pix_data_reg[39]_0\(4)
    );
\reg_pix_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_46,
      Q => \reg_pix_data_reg[39]_0\(5)
    );
\reg_pix_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_45,
      Q => \reg_pix_data_reg[39]_0\(6)
    );
\reg_pix_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_44,
      Q => \reg_pix_data_reg[39]_0\(7)
    );
\reg_pix_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_43,
      Q => \reg_pix_data_reg[39]_0\(8)
    );
\reg_pix_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_raw10_unpack_n_42,
      Q => \reg_pix_data_reg[39]_0\(9)
    );
\reg_pix_di_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => p_0_in(0),
      Q => \reg_pix_di_reg[7]_0\(0)
    );
\reg_pix_di_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => p_0_in(1),
      Q => \reg_pix_di_reg[7]_0\(1)
    );
\reg_pix_di_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => p_0_in(2),
      Q => \reg_pix_di_reg[7]_0\(2)
    );
\reg_pix_di_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => p_0_in(3),
      Q => \reg_pix_di_reg[7]_0\(3)
    );
\reg_pix_di_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => p_0_in(4),
      Q => \reg_pix_di_reg[7]_0\(4)
    );
\reg_pix_di_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => p_0_in(5),
      Q => \reg_pix_di_reg[7]_0\(5)
    );
\reg_pix_di_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => p_0_in(6),
      Q => \reg_pix_di_reg[7]_0\(6)
    );
\reg_pix_di_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => p_0_in(7),
      Q => \reg_pix_di_reg[7]_0\(7)
    );
reg_pix_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => u_csi2_packet_decoder_n_1,
      Q => \^pix_valid\
    );
u_csi2_lanes_aligner: entity work.\design_1_mipi_rx_to_video_0_0__csi2_lanes_aligner\
     port map (
      D(0) => p_1_in(0),
      Q(0) => Q(0),
      align_flag_reg_0 => \^lane_byte_aligned_valid\,
      align_flag_reg_1(23) => u_csi2_lanes_aligner_n_8,
      align_flag_reg_1(22) => u_csi2_lanes_aligner_n_9,
      align_flag_reg_1(21) => u_csi2_lanes_aligner_n_10,
      align_flag_reg_1(20) => u_csi2_lanes_aligner_n_11,
      align_flag_reg_1(19) => u_csi2_lanes_aligner_n_12,
      align_flag_reg_1(18) => u_csi2_lanes_aligner_n_13,
      align_flag_reg_1(17) => u_csi2_lanes_aligner_n_14,
      align_flag_reg_1(16) => u_csi2_lanes_aligner_n_15,
      align_flag_reg_1(15) => u_csi2_lanes_aligner_n_16,
      align_flag_reg_1(14) => u_csi2_lanes_aligner_n_17,
      align_flag_reg_1(13) => u_csi2_lanes_aligner_n_18,
      align_flag_reg_1(12) => u_csi2_lanes_aligner_n_19,
      align_flag_reg_1(11) => u_csi2_lanes_aligner_n_20,
      align_flag_reg_1(10) => u_csi2_lanes_aligner_n_21,
      align_flag_reg_1(9) => u_csi2_lanes_aligner_n_22,
      align_flag_reg_1(8) => u_csi2_lanes_aligner_n_23,
      align_flag_reg_1(7) => u_csi2_lanes_aligner_n_24,
      align_flag_reg_1(6) => u_csi2_lanes_aligner_n_25,
      align_flag_reg_1(5) => u_csi2_lanes_aligner_n_26,
      align_flag_reg_1(4) => u_csi2_lanes_aligner_n_27,
      align_flag_reg_1(3) => u_csi2_lanes_aligner_n_28,
      align_flag_reg_1(2) => u_csi2_lanes_aligner_n_29,
      align_flag_reg_1(1) => u_csi2_lanes_aligner_n_30,
      align_flag_reg_1(0) => u_csi2_lanes_aligner_n_31,
      align_flag_reg_2 => align_flag_reg,
      \align_idx_reg[0][0]_0\(0) => \align_idx_reg[0][0]\(0),
      \align_idx_reg[0][0]_1\(0) => \align_idx_reg[0][0]_0\(0),
      \align_idx_reg[0][0]_2\(0) => D(0),
      \align_idx_reg[1][0]_0\(0) => \align_idx_reg[1][0]\(0),
      \align_idx_reg[1][0]_1\(0) => \align_idx_reg[1][0]_0\(0),
      \align_idx_reg[1][0]_2\(0) => \align_idx_reg[1][0]_1\(0),
      \align_idx_reg[2][0]_0\(0) => \align_idx_reg[2][0]\(0),
      \align_idx_reg[2][0]_1\(0) => \align_idx_reg[2][0]_0\(0),
      \align_idx_reg[2][0]_2\(0) => \align_idx_reg[2][0]_1\(0),
      \align_idx_reg[3][0]_0\(0) => \align_idx_reg[3][0]\(0),
      \align_idx_reg[3][0]_1\(0) => \align_idx_reg[3][0]_0\(0),
      clk_hs_byte => clk_hs_byte,
      data_flag0 => data_flag0,
      data_flag_reg => u_csi2_packet_decoder_n_56,
      data_flag_reg_0 => u_csi2_packet_decoder_n_55,
      \head_clk_idx_reg[0]\(2 downto 0) => head_clk_idx(2 downto 0),
      \head_word_reg[0]\ => u_csi2_packet_decoder_n_54,
      \lane_buf_reg[0][31]_0\(31 downto 0) => \lane_buf_reg[0][31]\(31 downto 0),
      \lane_buf_reg[7][0]_0\ => \lane_buf_reg[7][0]\,
      \lane_buf_reg[7][16]_0\ => \lane_buf_reg[7][16]\,
      \lane_buf_reg[7][8]_0\ => \lane_buf_reg[7][8]\,
      lane_byte_aligned(31 downto 0) => lane_byte_aligned(31 downto 0),
      \lane_valid__2\ => \lane_valid__2\,
      module_reset => module_reset,
      module_reset_reg => \^module_reset_reg\,
      s00_axi_aresetn => s00_axi_aresetn
    );
u_csi2_packet_decoder: entity work.\design_1_mipi_rx_to_video_0_0__csi2_packet_decoder\
     port map (
      D(1) => p_0_in(4),
      D(0) => p_0_in(2),
      E(0) => u_csi2_packet_decoder_n_16,
      O(2) => u_csi2_raw10_unpack_n_83,
      O(1) => u_csi2_raw10_unpack_n_84,
      O(0) => u_csi2_raw10_unpack_n_85,
      Q(5) => u_csi2_packet_decoder_n_9,
      Q(4) => u_csi2_packet_decoder_n_10,
      Q(3) => u_csi2_packet_decoder_n_11,
      Q(2) => u_csi2_packet_decoder_n_12,
      Q(1) => u_csi2_packet_decoder_n_13,
      Q(0) => u_csi2_packet_decoder_n_14,
      clk_hs_byte => clk_hs_byte,
      \data_byte_2_reg[0]_0\ => u_csi2_packet_decoder_n_101,
      \data_byte_2_reg[1]_0\ => u_csi2_packet_decoder_n_100,
      \data_byte_2_reg[2]_0\ => u_csi2_packet_decoder_n_99,
      \data_byte_2_reg[31]_0\(31 downto 0) => pkt_data(31 downto 0),
      \data_byte_2_reg[31]_1\(31) => u_csi2_packet_decoder_n_63,
      \data_byte_2_reg[31]_1\(30) => u_csi2_packet_decoder_n_64,
      \data_byte_2_reg[31]_1\(29) => u_csi2_packet_decoder_n_65,
      \data_byte_2_reg[31]_1\(28) => u_csi2_packet_decoder_n_66,
      \data_byte_2_reg[31]_1\(27) => u_csi2_packet_decoder_n_67,
      \data_byte_2_reg[31]_1\(26) => u_csi2_packet_decoder_n_68,
      \data_byte_2_reg[31]_1\(25) => u_csi2_packet_decoder_n_69,
      \data_byte_2_reg[31]_1\(24) => u_csi2_packet_decoder_n_70,
      \data_byte_2_reg[31]_1\(23) => u_csi2_packet_decoder_n_71,
      \data_byte_2_reg[31]_1\(22) => u_csi2_packet_decoder_n_72,
      \data_byte_2_reg[31]_1\(21) => u_csi2_packet_decoder_n_73,
      \data_byte_2_reg[31]_1\(20) => u_csi2_packet_decoder_n_74,
      \data_byte_2_reg[31]_1\(19) => u_csi2_packet_decoder_n_75,
      \data_byte_2_reg[31]_1\(18) => u_csi2_packet_decoder_n_76,
      \data_byte_2_reg[31]_1\(17) => u_csi2_packet_decoder_n_77,
      \data_byte_2_reg[31]_1\(16) => u_csi2_packet_decoder_n_78,
      \data_byte_2_reg[31]_1\(15) => u_csi2_packet_decoder_n_79,
      \data_byte_2_reg[31]_1\(14) => u_csi2_packet_decoder_n_80,
      \data_byte_2_reg[31]_1\(13) => u_csi2_packet_decoder_n_81,
      \data_byte_2_reg[31]_1\(12) => u_csi2_packet_decoder_n_82,
      \data_byte_2_reg[31]_1\(11) => u_csi2_packet_decoder_n_83,
      \data_byte_2_reg[31]_1\(10) => u_csi2_packet_decoder_n_84,
      \data_byte_2_reg[31]_1\(9) => u_csi2_packet_decoder_n_85,
      \data_byte_2_reg[31]_1\(8) => u_csi2_packet_decoder_n_86,
      \data_byte_2_reg[31]_1\(7) => u_csi2_packet_decoder_n_87,
      \data_byte_2_reg[31]_1\(6) => u_csi2_packet_decoder_n_88,
      \data_byte_2_reg[31]_1\(5) => u_csi2_packet_decoder_n_89,
      \data_byte_2_reg[31]_1\(4) => u_csi2_packet_decoder_n_90,
      \data_byte_2_reg[31]_1\(3) => u_csi2_packet_decoder_n_91,
      \data_byte_2_reg[31]_1\(2) => u_csi2_packet_decoder_n_92,
      \data_byte_2_reg[31]_1\(1) => u_csi2_packet_decoder_n_93,
      \data_byte_2_reg[31]_1\(0) => u_csi2_packet_decoder_n_94,
      \data_byte_2_reg[3]_0\ => u_csi2_packet_decoder_n_98,
      \data_byte_2_reg[4]_0\ => u_csi2_packet_decoder_n_50,
      \data_byte_2_reg[5]_0\ => u_csi2_packet_decoder_n_96,
      \data_byte_2_reg[5]_1\ => u_csi2_packet_decoder_n_97,
      \data_byte_2_reg[6]_0\ => u_csi2_packet_decoder_n_17,
      \data_byte_2_reg[7]_0\ => u_csi2_packet_decoder_n_95,
      \data_byte_reg[0]_0\ => \^module_reset_reg\,
      data_flag0 => data_flag0,
      data_flag_2_reg_0(2) => u_csi2_packet_decoder_n_6,
      data_flag_2_reg_0(1) => u_csi2_packet_decoder_n_7,
      data_flag_2_reg_0(0) => u_csi2_packet_decoder_n_8,
      data_flag_2_reg_1 => u_csi2_packet_decoder_n_15,
      data_flag_2_reg_2(5) => u_csi2_packet_decoder_n_57,
      data_flag_2_reg_2(4) => u_csi2_packet_decoder_n_58,
      data_flag_2_reg_2(3) => u_csi2_packet_decoder_n_59,
      data_flag_2_reg_2(2) => u_csi2_packet_decoder_n_60,
      data_flag_2_reg_2(1) => u_csi2_packet_decoder_n_61,
      data_flag_2_reg_2(0) => u_csi2_packet_decoder_n_62,
      \data_id_2_reg[4]_0\ => u_csi2_packet_decoder_n_2,
      \di_reg_reg[3]\(0) => u_csi2_raw10_unpack_n_52,
      \head_clk_idx_reg[0]_0\(0) => p_1_in(0),
      \head_clk_idx_reg[1]_0\ => u_csi2_packet_decoder_n_54,
      \head_clk_idx_reg[1]_1\ => \^lane_byte_aligned_valid\,
      \head_clk_idx_reg[2]_0\(2 downto 0) => head_clk_idx(2 downto 0),
      \head_clk_idx_reg[2]_1\ => u_csi2_packet_decoder_n_55,
      \head_clk_idx_reg[2]_2\ => u_csi2_packet_decoder_n_56,
      \head_word_reg[23]_0\(23) => u_csi2_lanes_aligner_n_8,
      \head_word_reg[23]_0\(22) => u_csi2_lanes_aligner_n_9,
      \head_word_reg[23]_0\(21) => u_csi2_lanes_aligner_n_10,
      \head_word_reg[23]_0\(20) => u_csi2_lanes_aligner_n_11,
      \head_word_reg[23]_0\(19) => u_csi2_lanes_aligner_n_12,
      \head_word_reg[23]_0\(18) => u_csi2_lanes_aligner_n_13,
      \head_word_reg[23]_0\(17) => u_csi2_lanes_aligner_n_14,
      \head_word_reg[23]_0\(16) => u_csi2_lanes_aligner_n_15,
      \head_word_reg[23]_0\(15) => u_csi2_lanes_aligner_n_16,
      \head_word_reg[23]_0\(14) => u_csi2_lanes_aligner_n_17,
      \head_word_reg[23]_0\(13) => u_csi2_lanes_aligner_n_18,
      \head_word_reg[23]_0\(12) => u_csi2_lanes_aligner_n_19,
      \head_word_reg[23]_0\(11) => u_csi2_lanes_aligner_n_20,
      \head_word_reg[23]_0\(10) => u_csi2_lanes_aligner_n_21,
      \head_word_reg[23]_0\(9) => u_csi2_lanes_aligner_n_22,
      \head_word_reg[23]_0\(8) => u_csi2_lanes_aligner_n_23,
      \head_word_reg[23]_0\(7) => u_csi2_lanes_aligner_n_24,
      \head_word_reg[23]_0\(6) => u_csi2_lanes_aligner_n_25,
      \head_word_reg[23]_0\(5) => u_csi2_lanes_aligner_n_26,
      \head_word_reg[23]_0\(4) => u_csi2_lanes_aligner_n_27,
      \head_word_reg[23]_0\(3) => u_csi2_lanes_aligner_n_28,
      \head_word_reg[23]_0\(2) => u_csi2_lanes_aligner_n_29,
      \head_word_reg[23]_0\(1) => u_csi2_lanes_aligner_n_30,
      \head_word_reg[23]_0\(0) => u_csi2_lanes_aligner_n_31,
      lane_byte_aligned(31 downto 0) => lane_byte_aligned(31 downto 0),
      last_size_reg(2 downto 0) => last_size_reg(2 downto 0),
      \pixel_data_reg[11]\(2) => u_csi2_raw10_unpack_n_77,
      \pixel_data_reg[11]\(1) => u_csi2_raw10_unpack_n_78,
      \pixel_data_reg[11]\(0) => u_csi2_raw10_unpack_n_79,
      \pixel_data_reg[21]\(2) => u_csi2_raw10_unpack_n_80,
      \pixel_data_reg[21]\(1) => u_csi2_raw10_unpack_n_81,
      \pixel_data_reg[21]\(0) => u_csi2_raw10_unpack_n_82,
      \pixel_data_reg[31]\(23 downto 18) => last_data(31 downto 26),
      \pixel_data_reg[31]\(17 downto 12) => last_data(23 downto 18),
      \pixel_data_reg[31]\(11 downto 6) => last_data(15 downto 10),
      \pixel_data_reg[31]\(5 downto 0) => last_data(7 downto 2),
      pixel_enable3_out => pixel_enable3_out,
      pkt_valid => pkt_valid,
      raw10_pix_data_enable => raw10_pix_data_enable,
      raw10_pix_valid => raw10_pix_valid,
      reg_pix_valid_reg => u_csi2_packet_decoder_n_1,
      reg_pix_valid_reg_0 => u_csi2_packet_decoder_n_5
    );
u_csi2_raw10_unpack: entity work.\design_1_mipi_rx_to_video_0_0__csi2_raw10_unpack\
     port map (
      D(5 downto 3) => p_0_in(7 downto 5),
      D(2) => p_0_in(3),
      D(1 downto 0) => p_0_in(1 downto 0),
      E(0) => u_csi2_packet_decoder_n_16,
      O(2) => u_csi2_raw10_unpack_n_83,
      O(1) => u_csi2_raw10_unpack_n_84,
      O(0) => u_csi2_raw10_unpack_n_85,
      Q(5) => u_csi2_packet_decoder_n_9,
      Q(4) => u_csi2_packet_decoder_n_10,
      Q(3) => u_csi2_packet_decoder_n_11,
      Q(2) => u_csi2_packet_decoder_n_12,
      Q(1) => u_csi2_packet_decoder_n_13,
      Q(0) => u_csi2_packet_decoder_n_14,
      clk_hs_byte => clk_hs_byte,
      \di_reg_reg[7]_0\(2) => u_csi2_packet_decoder_n_6,
      \di_reg_reg[7]_0\(1) => u_csi2_packet_decoder_n_7,
      \di_reg_reg[7]_0\(0) => u_csi2_packet_decoder_n_8,
      \last_data_reg[31]_0\(23 downto 18) => last_data(31 downto 26),
      \last_data_reg[31]_0\(17 downto 12) => last_data(23 downto 18),
      \last_data_reg[31]_0\(11 downto 6) => last_data(15 downto 10),
      \last_data_reg[31]_0\(5 downto 0) => last_data(7 downto 2),
      \last_data_reg[31]_1\(31) => u_csi2_packet_decoder_n_63,
      \last_data_reg[31]_1\(30) => u_csi2_packet_decoder_n_64,
      \last_data_reg[31]_1\(29) => u_csi2_packet_decoder_n_65,
      \last_data_reg[31]_1\(28) => u_csi2_packet_decoder_n_66,
      \last_data_reg[31]_1\(27) => u_csi2_packet_decoder_n_67,
      \last_data_reg[31]_1\(26) => u_csi2_packet_decoder_n_68,
      \last_data_reg[31]_1\(25) => u_csi2_packet_decoder_n_69,
      \last_data_reg[31]_1\(24) => u_csi2_packet_decoder_n_70,
      \last_data_reg[31]_1\(23) => u_csi2_packet_decoder_n_71,
      \last_data_reg[31]_1\(22) => u_csi2_packet_decoder_n_72,
      \last_data_reg[31]_1\(21) => u_csi2_packet_decoder_n_73,
      \last_data_reg[31]_1\(20) => u_csi2_packet_decoder_n_74,
      \last_data_reg[31]_1\(19) => u_csi2_packet_decoder_n_75,
      \last_data_reg[31]_1\(18) => u_csi2_packet_decoder_n_76,
      \last_data_reg[31]_1\(17) => u_csi2_packet_decoder_n_77,
      \last_data_reg[31]_1\(16) => u_csi2_packet_decoder_n_78,
      \last_data_reg[31]_1\(15) => u_csi2_packet_decoder_n_79,
      \last_data_reg[31]_1\(14) => u_csi2_packet_decoder_n_80,
      \last_data_reg[31]_1\(13) => u_csi2_packet_decoder_n_81,
      \last_data_reg[31]_1\(12) => u_csi2_packet_decoder_n_82,
      \last_data_reg[31]_1\(11) => u_csi2_packet_decoder_n_83,
      \last_data_reg[31]_1\(10) => u_csi2_packet_decoder_n_84,
      \last_data_reg[31]_1\(9) => u_csi2_packet_decoder_n_85,
      \last_data_reg[31]_1\(8) => u_csi2_packet_decoder_n_86,
      \last_data_reg[31]_1\(7) => u_csi2_packet_decoder_n_87,
      \last_data_reg[31]_1\(6) => u_csi2_packet_decoder_n_88,
      \last_data_reg[31]_1\(5) => u_csi2_packet_decoder_n_89,
      \last_data_reg[31]_1\(4) => u_csi2_packet_decoder_n_90,
      \last_data_reg[31]_1\(3) => u_csi2_packet_decoder_n_91,
      \last_data_reg[31]_1\(2) => u_csi2_packet_decoder_n_92,
      \last_data_reg[31]_1\(1) => u_csi2_packet_decoder_n_93,
      \last_data_reg[31]_1\(0) => u_csi2_packet_decoder_n_94,
      last_size_reg(2 downto 0) => last_size_reg(2 downto 0),
      \last_size_reg[0]_0\(2) => u_csi2_raw10_unpack_n_77,
      \last_size_reg[0]_0\(1) => u_csi2_raw10_unpack_n_78,
      \last_size_reg[0]_0\(0) => u_csi2_raw10_unpack_n_79,
      \last_size_reg[0]_1\(2) => u_csi2_raw10_unpack_n_80,
      \last_size_reg[0]_1\(1) => u_csi2_raw10_unpack_n_81,
      \last_size_reg[0]_1\(0) => u_csi2_raw10_unpack_n_82,
      \pixel_data_reg[0]_0\ => \^module_reset_reg\,
      \pixel_data_reg[17]_0\ => u_csi2_packet_decoder_n_97,
      \pixel_data_reg[1]_0\ => u_csi2_packet_decoder_n_15,
      \pixel_data_reg[31]_0\(5) => u_csi2_packet_decoder_n_57,
      \pixel_data_reg[31]_0\(4) => u_csi2_packet_decoder_n_58,
      \pixel_data_reg[31]_0\(3) => u_csi2_packet_decoder_n_59,
      \pixel_data_reg[31]_0\(2) => u_csi2_packet_decoder_n_60,
      \pixel_data_reg[31]_0\(1) => u_csi2_packet_decoder_n_61,
      \pixel_data_reg[31]_0\(0) => u_csi2_packet_decoder_n_62,
      \pixel_data_reg[32]_0\ => u_csi2_packet_decoder_n_101,
      \pixel_data_reg[33]_0\ => u_csi2_packet_decoder_n_100,
      \pixel_data_reg[34]_0\ => u_csi2_packet_decoder_n_99,
      \pixel_data_reg[35]_0\ => u_csi2_packet_decoder_n_98,
      \pixel_data_reg[36]_0\ => u_csi2_packet_decoder_n_50,
      \pixel_data_reg[37]_0\ => u_csi2_packet_decoder_n_96,
      \pixel_data_reg[38]_0\ => u_csi2_packet_decoder_n_17,
      \pixel_data_reg[39]_0\ => u_csi2_packet_decoder_n_95,
      pixel_enable3_out => pixel_enable3_out,
      pkt_valid => pkt_valid,
      raw10_pix_data_enable => raw10_pix_data_enable,
      raw10_pix_valid => raw10_pix_valid,
      \ready_delay_reg[0]_0\(0) => u_csi2_raw10_unpack_n_52,
      \reg_pix_data_reg[31]_0\(31 downto 0) => pkt_data(31 downto 0),
      \reg_pix_di_reg[7]_0\ => u_csi2_packet_decoder_n_2,
      reg_pix_valid_reg_0(39) => u_csi2_raw10_unpack_n_12,
      reg_pix_valid_reg_0(38) => u_csi2_raw10_unpack_n_13,
      reg_pix_valid_reg_0(37) => u_csi2_raw10_unpack_n_14,
      reg_pix_valid_reg_0(36) => u_csi2_raw10_unpack_n_15,
      reg_pix_valid_reg_0(35) => u_csi2_raw10_unpack_n_16,
      reg_pix_valid_reg_0(34) => u_csi2_raw10_unpack_n_17,
      reg_pix_valid_reg_0(33) => u_csi2_raw10_unpack_n_18,
      reg_pix_valid_reg_0(32) => u_csi2_raw10_unpack_n_19,
      reg_pix_valid_reg_0(31) => u_csi2_raw10_unpack_n_20,
      reg_pix_valid_reg_0(30) => u_csi2_raw10_unpack_n_21,
      reg_pix_valid_reg_0(29) => u_csi2_raw10_unpack_n_22,
      reg_pix_valid_reg_0(28) => u_csi2_raw10_unpack_n_23,
      reg_pix_valid_reg_0(27) => u_csi2_raw10_unpack_n_24,
      reg_pix_valid_reg_0(26) => u_csi2_raw10_unpack_n_25,
      reg_pix_valid_reg_0(25) => u_csi2_raw10_unpack_n_26,
      reg_pix_valid_reg_0(24) => u_csi2_raw10_unpack_n_27,
      reg_pix_valid_reg_0(23) => u_csi2_raw10_unpack_n_28,
      reg_pix_valid_reg_0(22) => u_csi2_raw10_unpack_n_29,
      reg_pix_valid_reg_0(21) => u_csi2_raw10_unpack_n_30,
      reg_pix_valid_reg_0(20) => u_csi2_raw10_unpack_n_31,
      reg_pix_valid_reg_0(19) => u_csi2_raw10_unpack_n_32,
      reg_pix_valid_reg_0(18) => u_csi2_raw10_unpack_n_33,
      reg_pix_valid_reg_0(17) => u_csi2_raw10_unpack_n_34,
      reg_pix_valid_reg_0(16) => u_csi2_raw10_unpack_n_35,
      reg_pix_valid_reg_0(15) => u_csi2_raw10_unpack_n_36,
      reg_pix_valid_reg_0(14) => u_csi2_raw10_unpack_n_37,
      reg_pix_valid_reg_0(13) => u_csi2_raw10_unpack_n_38,
      reg_pix_valid_reg_0(12) => u_csi2_raw10_unpack_n_39,
      reg_pix_valid_reg_0(11) => u_csi2_raw10_unpack_n_40,
      reg_pix_valid_reg_0(10) => u_csi2_raw10_unpack_n_41,
      reg_pix_valid_reg_0(9) => u_csi2_raw10_unpack_n_42,
      reg_pix_valid_reg_0(8) => u_csi2_raw10_unpack_n_43,
      reg_pix_valid_reg_0(7) => u_csi2_raw10_unpack_n_44,
      reg_pix_valid_reg_0(6) => u_csi2_raw10_unpack_n_45,
      reg_pix_valid_reg_0(5) => u_csi2_raw10_unpack_n_46,
      reg_pix_valid_reg_0(4) => u_csi2_raw10_unpack_n_47,
      reg_pix_valid_reg_0(3) => u_csi2_raw10_unpack_n_48,
      reg_pix_valid_reg_0(2) => u_csi2_raw10_unpack_n_49,
      reg_pix_valid_reg_0(1) => u_csi2_raw10_unpack_n_50,
      reg_pix_valid_reg_0(0) => u_csi2_raw10_unpack_n_51
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mipi_rx_to_video_0_0_dphy_rx_to_byte is
  port (
    data_lp_n_0 : out STD_LOGIC;
    data_lp_p_0 : out STD_LOGIC;
    data_lp_n_1 : out STD_LOGIC;
    data_lp_p_1 : out STD_LOGIC;
    data_lp_n_2 : out STD_LOGIC;
    data_lp_p_2 : out STD_LOGIC;
    data_lp_n_3 : out STD_LOGIC;
    data_lp_p_3 : out STD_LOGIC;
    clk_hs_byte : out STD_LOGIC;
    \data_byte_aligned_reg[7]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_byte_valid_reg : out STD_LOGIC;
    data_byte_valid_reg_0 : out STD_LOGIC;
    data_byte_valid_reg_1 : out STD_LOGIC;
    \lane_valid__2\ : out STD_LOGIC;
    \align_idx_reg[3][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[2][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[1][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    align_flag_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    byte_data_valid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    align_flag_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    align_flag_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    align_flag_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_byte_valid_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_byte_valid_reg_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_byte_valid_reg_4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[2][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[1][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[0][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    lane_byte_aligned_valid : in STD_LOGIC;
    dphy_clk_p : in STD_LOGIC;
    dphy_clk_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mipi_rx_to_video_0_0_dphy_rx_to_byte : entity is "dphy_rx_to_byte";
end design_1_mipi_rx_to_video_0_0_dphy_rx_to_byte;

architecture STRUCTURE of design_1_mipi_rx_to_video_0_0_dphy_rx_to_byte is
  signal \^byte_data_valid\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_hs_bit : STD_LOGIC;
  signal \^clk_hs_byte\ : STD_LOGIC;
  signal data6 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data6_10 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data6_6 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data6_8 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data_byte_valid0 : STD_LOGIC;
  signal data_byte_valid0_11 : STD_LOGIC;
  signal data_byte_valid0_7 : STD_LOGIC;
  signal data_byte_valid0_9 : STD_LOGIC;
  signal \^data_byte_valid_reg\ : STD_LOGIC;
  signal \^data_byte_valid_reg_0\ : STD_LOGIC;
  signal \^data_byte_valid_reg_1\ : STD_LOGIC;
  signal data_hs_bit_0 : STD_LOGIC;
  signal data_hs_bit_1 : STD_LOGIC;
  signal data_hs_bit_2 : STD_LOGIC;
  signal data_hs_bit_3 : STD_LOGIC;
  signal data_hs_byte_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_hs_byte_16 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_hs_byte_24 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_hs_byte_8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \genblk2[0].u_dphy_rx_to_byte_n_10\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_13\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_18\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_19\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_20\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_21\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_22\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_23\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_24\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_25\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_26\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_8\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_9\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_10\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_13\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_18\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_19\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_20\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_21\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_22\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_23\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_24\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_25\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_26\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_8\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_9\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_10\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_13\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_18\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_19\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_20\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_21\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_22\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_23\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_24\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_25\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_26\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_8\ : STD_LOGIC;
  signal \genblk2[2].u_dphy_rx_to_byte_n_9\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_10\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_13\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_18\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_19\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_20\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_21\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_22\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_23\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_24\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_25\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_26\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_8\ : STD_LOGIC;
  signal \genblk2[3].u_dphy_rx_to_byte_n_9\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_15\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_16\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_17\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_18\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_19\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_2\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_20\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_21\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_22\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_23\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_24\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_25\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_3\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_15\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_16\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_17\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_18\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_19\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_2\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_20\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_21\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_22\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_23\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_24\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_25\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_3\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_15\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_16\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_17\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_18\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_19\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_2\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_20\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_21\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_22\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_23\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_24\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_25\ : STD_LOGIC;
  signal \genblk3[2].u_dphy_rx_data_byte_aligner_n_3\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_2\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_23\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_24\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_25\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_26\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_27\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_28\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_29\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_3\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_30\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_31\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_32\ : STD_LOGIC;
  signal \genblk3[3].u_dphy_rx_data_byte_aligner_n_33\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in_3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in_5 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_in_2 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_in_4 : STD_LOGIC_VECTOR ( 7 downto 1 );
begin
  byte_data_valid(3 downto 0) <= \^byte_data_valid\(3 downto 0);
  clk_hs_byte <= \^clk_hs_byte\;
  data_byte_valid_reg <= \^data_byte_valid_reg\;
  data_byte_valid_reg_0 <= \^data_byte_valid_reg_0\;
  data_byte_valid_reg_1 <= \^data_byte_valid_reg_1\;
\genblk1[0].u_dphy_rx_data_io\: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_data_io\
     port map (
      data_hs_bit_0 => data_hs_bit_0,
      data_lp_n_0 => data_lp_n_0,
      data_lp_p_0 => data_lp_p_0,
      dphy_data_n(0) => dphy_data_n(0),
      dphy_data_p(0) => dphy_data_p(0)
    );
\genblk1[1].u_dphy_rx_data_io\: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_0\
     port map (
      data_hs_bit_1 => data_hs_bit_1,
      data_lp_n_1 => data_lp_n_1,
      data_lp_p_1 => data_lp_p_1,
      dphy_data_n(0) => dphy_data_n(1),
      dphy_data_p(0) => dphy_data_p(1)
    );
\genblk1[2].u_dphy_rx_data_io\: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_1\
     port map (
      data_hs_bit_2 => data_hs_bit_2,
      data_lp_n_2 => data_lp_n_2,
      data_lp_p_2 => data_lp_p_2,
      dphy_data_n(0) => dphy_data_n(2),
      dphy_data_p(0) => dphy_data_p(2)
    );
\genblk1[3].u_dphy_rx_data_io\: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_data_io_2\
     port map (
      data_hs_bit_3 => data_hs_bit_3,
      data_lp_n_3 => data_lp_n_3,
      data_lp_p_3 => data_lp_p_3,
      dphy_data_n(0) => dphy_data_n(3),
      dphy_data_p(0) => dphy_data_p(3)
    );
\genblk2[0].u_dphy_rx_to_byte\: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte\
     port map (
      AR(0) => AR(0),
      D(1 downto 0) => p_0_in(1 downto 0),
      E(0) => \genblk2[0].u_dphy_rx_to_byte_n_8\,
      Q(7 downto 0) => data_hs_byte_0(7 downto 0),
      \align_offset_reg[0]\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_18\,
      \align_offset_reg[0]_0\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_19\,
      \align_offset_reg[1]\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_3\,
      clk_hs_bit => clk_hs_bit,
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned[2]_i_2\(3) => data6(0),
      \data_byte_aligned[2]_i_2\(2) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_15\,
      \data_byte_aligned[2]_i_2\(1) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_16\,
      \data_byte_aligned[2]_i_2\(0) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_17\,
      \data_byte_aligned[2]_i_2_0\(1) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_21\,
      \data_byte_aligned[2]_i_2_0\(0) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_22\,
      \data_byte_aligned_reg[1]\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_20\,
      \data_byte_aligned_reg[1]_0\(0) => p_0_in(2),
      \data_byte_aligned_reg[3]\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_23\,
      \data_byte_aligned_reg[4]\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_25\,
      \data_byte_aligned_reg[7]\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_24\,
      data_byte_valid0 => data_byte_valid0,
      data_byte_valid_reg => \genblk3[0].u_dphy_rx_data_byte_aligner_n_2\,
      data_hs_bit_0 => data_hs_bit_0,
      \last_byte_reg[5]\ => \genblk2[0].u_dphy_rx_to_byte_n_9\,
      \last_byte_reg[5]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_13\,
      u_ISERDESE3_0(0) => \genblk2[0].u_dphy_rx_to_byte_n_10\,
      u_ISERDESE3_1(3) => p_1_in(7),
      u_ISERDESE3_1(2 downto 1) => p_1_in(4 downto 3),
      u_ISERDESE3_1(0) => p_1_in(1),
      u_ISERDESE3_10 => \genblk2[0].u_dphy_rx_to_byte_n_26\,
      u_ISERDESE3_2 => \genblk2[0].u_dphy_rx_to_byte_n_18\,
      u_ISERDESE3_3 => \genblk2[0].u_dphy_rx_to_byte_n_19\,
      u_ISERDESE3_4 => \genblk2[0].u_dphy_rx_to_byte_n_20\,
      u_ISERDESE3_5 => \genblk2[0].u_dphy_rx_to_byte_n_21\,
      u_ISERDESE3_6 => \genblk2[0].u_dphy_rx_to_byte_n_22\,
      u_ISERDESE3_7 => \genblk2[0].u_dphy_rx_to_byte_n_23\,
      u_ISERDESE3_8 => \genblk2[0].u_dphy_rx_to_byte_n_24\,
      u_ISERDESE3_9 => \genblk2[0].u_dphy_rx_to_byte_n_25\
    );
\genblk2[1].u_dphy_rx_to_byte\: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_3\
     port map (
      D(1 downto 0) => p_0_in_1(1 downto 0),
      E(0) => \genblk2[1].u_dphy_rx_to_byte_n_8\,
      Q(7 downto 0) => data_hs_byte_8(7 downto 0),
      \align_offset_reg[0]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_18\,
      \align_offset_reg[0]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_19\,
      \align_offset_reg[1]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_3\,
      clk_hs_bit => clk_hs_bit,
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned[2]_i_2__0\(3) => data6_6(0),
      \data_byte_aligned[2]_i_2__0\(2) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_15\,
      \data_byte_aligned[2]_i_2__0\(1) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_16\,
      \data_byte_aligned[2]_i_2__0\(0) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_17\,
      \data_byte_aligned[2]_i_2__0_0\(1) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_21\,
      \data_byte_aligned[2]_i_2__0_0\(0) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_22\,
      \data_byte_aligned_reg[1]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_20\,
      \data_byte_aligned_reg[1]_0\(0) => p_0_in_1(2),
      \data_byte_aligned_reg[3]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_23\,
      \data_byte_aligned_reg[4]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_25\,
      \data_byte_aligned_reg[7]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_24\,
      data_byte_valid0 => data_byte_valid0_7,
      data_byte_valid_reg => \genblk3[1].u_dphy_rx_data_byte_aligner_n_2\,
      data_hs_bit_1 => data_hs_bit_1,
      \last_byte_reg[5]\ => \genblk2[1].u_dphy_rx_to_byte_n_9\,
      \last_byte_reg[5]_0\ => \genblk2[1].u_dphy_rx_to_byte_n_13\,
      u_ISERDESE3_0(0) => \genblk2[1].u_dphy_rx_to_byte_n_10\,
      u_ISERDESE3_1(3) => p_1_in_0(7),
      u_ISERDESE3_1(2 downto 1) => p_1_in_0(4 downto 3),
      u_ISERDESE3_1(0) => p_1_in_0(1),
      u_ISERDESE3_10 => \genblk2[1].u_dphy_rx_to_byte_n_26\,
      u_ISERDESE3_11(0) => data_byte_valid_reg_2(0),
      u_ISERDESE3_2 => \genblk2[1].u_dphy_rx_to_byte_n_18\,
      u_ISERDESE3_3 => \genblk2[1].u_dphy_rx_to_byte_n_19\,
      u_ISERDESE3_4 => \genblk2[1].u_dphy_rx_to_byte_n_20\,
      u_ISERDESE3_5 => \genblk2[1].u_dphy_rx_to_byte_n_21\,
      u_ISERDESE3_6 => \genblk2[1].u_dphy_rx_to_byte_n_22\,
      u_ISERDESE3_7 => \genblk2[1].u_dphy_rx_to_byte_n_23\,
      u_ISERDESE3_8 => \genblk2[1].u_dphy_rx_to_byte_n_24\,
      u_ISERDESE3_9 => \genblk2[1].u_dphy_rx_to_byte_n_25\
    );
\genblk2[2].u_dphy_rx_to_byte\: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_4\
     port map (
      D(1 downto 0) => p_0_in_3(1 downto 0),
      E(0) => \genblk2[2].u_dphy_rx_to_byte_n_8\,
      Q(7 downto 0) => data_hs_byte_16(7 downto 0),
      \align_offset_reg[0]\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_18\,
      \align_offset_reg[0]_0\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_19\,
      \align_offset_reg[1]\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_3\,
      clk_hs_bit => clk_hs_bit,
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned[2]_i_2__1\(3) => data6_8(0),
      \data_byte_aligned[2]_i_2__1\(2) => \genblk3[2].u_dphy_rx_data_byte_aligner_n_15\,
      \data_byte_aligned[2]_i_2__1\(1) => \genblk3[2].u_dphy_rx_data_byte_aligner_n_16\,
      \data_byte_aligned[2]_i_2__1\(0) => \genblk3[2].u_dphy_rx_data_byte_aligner_n_17\,
      \data_byte_aligned[2]_i_2__1_0\(1) => \genblk3[2].u_dphy_rx_data_byte_aligner_n_21\,
      \data_byte_aligned[2]_i_2__1_0\(0) => \genblk3[2].u_dphy_rx_data_byte_aligner_n_22\,
      \data_byte_aligned_reg[1]\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_20\,
      \data_byte_aligned_reg[1]_0\(0) => p_0_in_3(2),
      \data_byte_aligned_reg[3]\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_23\,
      \data_byte_aligned_reg[4]\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_25\,
      \data_byte_aligned_reg[7]\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_24\,
      data_byte_valid0 => data_byte_valid0_9,
      data_byte_valid_reg => \genblk3[2].u_dphy_rx_data_byte_aligner_n_2\,
      data_hs_bit_2 => data_hs_bit_2,
      \last_byte_reg[5]\ => \genblk2[2].u_dphy_rx_to_byte_n_9\,
      \last_byte_reg[5]_0\ => \genblk2[2].u_dphy_rx_to_byte_n_13\,
      u_ISERDESE3_0(0) => \genblk2[2].u_dphy_rx_to_byte_n_10\,
      u_ISERDESE3_1(3) => p_1_in_2(7),
      u_ISERDESE3_1(2 downto 1) => p_1_in_2(4 downto 3),
      u_ISERDESE3_1(0) => p_1_in_2(1),
      u_ISERDESE3_10 => \genblk2[2].u_dphy_rx_to_byte_n_26\,
      u_ISERDESE3_11(0) => data_byte_valid_reg_3(0),
      u_ISERDESE3_2 => \genblk2[2].u_dphy_rx_to_byte_n_18\,
      u_ISERDESE3_3 => \genblk2[2].u_dphy_rx_to_byte_n_19\,
      u_ISERDESE3_4 => \genblk2[2].u_dphy_rx_to_byte_n_20\,
      u_ISERDESE3_5 => \genblk2[2].u_dphy_rx_to_byte_n_21\,
      u_ISERDESE3_6 => \genblk2[2].u_dphy_rx_to_byte_n_22\,
      u_ISERDESE3_7 => \genblk2[2].u_dphy_rx_to_byte_n_23\,
      u_ISERDESE3_8 => \genblk2[2].u_dphy_rx_to_byte_n_24\,
      u_ISERDESE3_9 => \genblk2[2].u_dphy_rx_to_byte_n_25\
    );
\genblk2[3].u_dphy_rx_to_byte\: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_to_byte_5\
     port map (
      D(1 downto 0) => p_0_in_5(1 downto 0),
      E(0) => \genblk2[3].u_dphy_rx_to_byte_n_8\,
      Q(7 downto 0) => data_hs_byte_24(7 downto 0),
      \align_offset_reg[0]\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_26\,
      \align_offset_reg[0]_0\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_27\,
      \align_offset_reg[1]\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_3\,
      clk_hs_bit => clk_hs_bit,
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned[2]_i_2__2\(3) => data6_10(0),
      \data_byte_aligned[2]_i_2__2\(2) => \genblk3[3].u_dphy_rx_data_byte_aligner_n_23\,
      \data_byte_aligned[2]_i_2__2\(1) => \genblk3[3].u_dphy_rx_data_byte_aligner_n_24\,
      \data_byte_aligned[2]_i_2__2\(0) => \genblk3[3].u_dphy_rx_data_byte_aligner_n_25\,
      \data_byte_aligned[2]_i_2__2_0\(1) => \genblk3[3].u_dphy_rx_data_byte_aligner_n_29\,
      \data_byte_aligned[2]_i_2__2_0\(0) => \genblk3[3].u_dphy_rx_data_byte_aligner_n_30\,
      \data_byte_aligned_reg[1]\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_28\,
      \data_byte_aligned_reg[1]_0\(0) => p_0_in_5(2),
      \data_byte_aligned_reg[3]\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_31\,
      \data_byte_aligned_reg[4]\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_33\,
      \data_byte_aligned_reg[7]\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_32\,
      data_byte_valid0 => data_byte_valid0_11,
      data_byte_valid_reg => \genblk3[3].u_dphy_rx_data_byte_aligner_n_2\,
      data_hs_bit_3 => data_hs_bit_3,
      \last_byte_reg[5]\ => \genblk2[3].u_dphy_rx_to_byte_n_9\,
      \last_byte_reg[5]_0\ => \genblk2[3].u_dphy_rx_to_byte_n_13\,
      u_ISERDESE3_0(0) => \genblk2[3].u_dphy_rx_to_byte_n_10\,
      u_ISERDESE3_1(3) => p_1_in_4(7),
      u_ISERDESE3_1(2 downto 1) => p_1_in_4(4 downto 3),
      u_ISERDESE3_1(0) => p_1_in_4(1),
      u_ISERDESE3_10 => \genblk2[3].u_dphy_rx_to_byte_n_26\,
      u_ISERDESE3_11(0) => data_byte_valid_reg_4(0),
      u_ISERDESE3_2 => \genblk2[3].u_dphy_rx_to_byte_n_18\,
      u_ISERDESE3_3 => \genblk2[3].u_dphy_rx_to_byte_n_19\,
      u_ISERDESE3_4 => \genblk2[3].u_dphy_rx_to_byte_n_20\,
      u_ISERDESE3_5 => \genblk2[3].u_dphy_rx_to_byte_n_21\,
      u_ISERDESE3_6 => \genblk2[3].u_dphy_rx_to_byte_n_22\,
      u_ISERDESE3_7 => \genblk2[3].u_dphy_rx_to_byte_n_23\,
      u_ISERDESE3_8 => \genblk2[3].u_dphy_rx_to_byte_n_24\,
      u_ISERDESE3_9 => \genblk2[3].u_dphy_rx_to_byte_n_25\
    );
\genblk3[0].u_dphy_rx_data_byte_aligner\: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner\
     port map (
      AR(0) => AR(0),
      D(3) => p_1_in(7),
      D(2 downto 1) => p_1_in(4 downto 3),
      D(0) => p_1_in(1),
      E(0) => \genblk2[0].u_dphy_rx_to_byte_n_8\,
      Q(7 downto 0) => data_hs_byte_0(7 downto 0),
      align_flag_reg(0) => align_flag_reg_2(0),
      \align_idx_reg[0][0]\ => \^data_byte_valid_reg\,
      \align_offset_reg[1]_0\(1) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_21\,
      \align_offset_reg[1]_0\(0) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_22\,
      \align_offset_reg[1]_1\(1 downto 0) => p_0_in(1 downto 0),
      \align_offset_reg[2]_0\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_24\,
      \align_offset_reg[2]_1\ => \genblk2[0].u_dphy_rx_to_byte_n_18\,
      \align_offset_reg[3]_0\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_20\,
      \align_offset_reg[3]_1\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_23\,
      \align_offset_reg[3]_2\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_25\,
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned_reg[0]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_13\,
      \data_byte_aligned_reg[0]_1\ => \genblk2[0].u_dphy_rx_to_byte_n_22\,
      \data_byte_aligned_reg[0]_2\(0) => \genblk2[0].u_dphy_rx_to_byte_n_10\,
      \data_byte_aligned_reg[3]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_19\,
      \data_byte_aligned_reg[3]_1\ => \genblk2[0].u_dphy_rx_to_byte_n_21\,
      \data_byte_aligned_reg[4]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_25\,
      \data_byte_aligned_reg[4]_1\ => \genblk2[0].u_dphy_rx_to_byte_n_23\,
      \data_byte_aligned_reg[5]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_20\,
      \data_byte_aligned_reg[6]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_9\,
      \data_byte_aligned_reg[6]_1\ => \genblk2[0].u_dphy_rx_to_byte_n_26\,
      \data_byte_aligned_reg[6]_2\ => \genblk2[0].u_dphy_rx_to_byte_n_24\,
      \data_byte_aligned_reg[7]_0\(7 downto 0) => \data_byte_aligned_reg[7]\(7 downto 0),
      data_byte_valid0 => data_byte_valid0,
      data_byte_valid_reg_0 => \^byte_data_valid\(0),
      lane_byte_aligned_valid => lane_byte_aligned_valid,
      \last_byte_reg[1]_0\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_19\,
      \last_byte_reg[4]_0\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_3\,
      \last_byte_reg[4]_1\(0) => p_0_in(2),
      \last_byte_reg[6]_0\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_2\,
      \last_byte_reg[7]_0\(3) => data6(0),
      \last_byte_reg[7]_0\(2) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_15\,
      \last_byte_reg[7]_0\(1) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_16\,
      \last_byte_reg[7]_0\(0) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_17\,
      u_ISERDESE3 => \genblk3[0].u_dphy_rx_data_byte_aligner_n_18\
    );
\genblk3[1].u_dphy_rx_data_byte_aligner\: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_6\
     port map (
      D(3) => p_1_in_0(7),
      D(2 downto 1) => p_1_in_0(4 downto 3),
      D(0) => p_1_in_0(1),
      E(0) => \genblk2[1].u_dphy_rx_to_byte_n_8\,
      Q(7 downto 0) => data_hs_byte_8(7 downto 0),
      align_flag_reg(0) => align_flag_reg_1(0),
      \align_idx_reg[1][0]\ => \^data_byte_valid_reg_0\,
      \align_offset_reg[1]_0\(1) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_21\,
      \align_offset_reg[1]_0\(0) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_22\,
      \align_offset_reg[1]_1\(1 downto 0) => p_0_in_1(1 downto 0),
      \align_offset_reg[2]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_24\,
      \align_offset_reg[2]_1\ => \genblk2[1].u_dphy_rx_to_byte_n_18\,
      \align_offset_reg[3]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_20\,
      \align_offset_reg[3]_1\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_23\,
      \align_offset_reg[3]_2\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_25\,
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned_reg[0]_0\ => \genblk2[1].u_dphy_rx_to_byte_n_13\,
      \data_byte_aligned_reg[0]_1\ => \genblk2[1].u_dphy_rx_to_byte_n_22\,
      \data_byte_aligned_reg[0]_2\(0) => \genblk2[1].u_dphy_rx_to_byte_n_10\,
      \data_byte_aligned_reg[3]_0\ => \genblk2[1].u_dphy_rx_to_byte_n_19\,
      \data_byte_aligned_reg[3]_1\ => \genblk2[1].u_dphy_rx_to_byte_n_21\,
      \data_byte_aligned_reg[4]_0\ => \genblk2[1].u_dphy_rx_to_byte_n_25\,
      \data_byte_aligned_reg[4]_1\ => \genblk2[1].u_dphy_rx_to_byte_n_23\,
      \data_byte_aligned_reg[5]_0\ => \genblk2[1].u_dphy_rx_to_byte_n_20\,
      \data_byte_aligned_reg[6]_0\ => \genblk2[1].u_dphy_rx_to_byte_n_9\,
      \data_byte_aligned_reg[6]_1\ => \genblk2[1].u_dphy_rx_to_byte_n_26\,
      \data_byte_aligned_reg[6]_2\ => \genblk2[1].u_dphy_rx_to_byte_n_24\,
      \data_byte_aligned_reg[7]_0\(7 downto 0) => \data_byte_aligned_reg[7]\(15 downto 8),
      data_byte_valid0 => data_byte_valid0_7,
      data_byte_valid_reg_0 => \^byte_data_valid\(1),
      data_byte_valid_reg_1(0) => data_byte_valid_reg_2(0),
      lane_byte_aligned_valid => lane_byte_aligned_valid,
      \last_byte_reg[1]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_19\,
      \last_byte_reg[4]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_3\,
      \last_byte_reg[4]_1\(0) => p_0_in_1(2),
      \last_byte_reg[6]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_2\,
      \last_byte_reg[7]_0\(3) => data6_6(0),
      \last_byte_reg[7]_0\(2) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_15\,
      \last_byte_reg[7]_0\(1) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_16\,
      \last_byte_reg[7]_0\(0) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_17\,
      u_ISERDESE3 => \genblk3[1].u_dphy_rx_data_byte_aligner_n_18\
    );
\genblk3[2].u_dphy_rx_data_byte_aligner\: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_7\
     port map (
      D(3) => p_1_in_2(7),
      D(2 downto 1) => p_1_in_2(4 downto 3),
      D(0) => p_1_in_2(1),
      E(0) => \genblk2[2].u_dphy_rx_to_byte_n_8\,
      Q(7 downto 0) => data_hs_byte_16(7 downto 0),
      align_flag_reg(0) => align_flag_reg_0(0),
      \align_idx_reg[2][0]\ => \^data_byte_valid_reg_1\,
      \align_offset_reg[1]_0\(1) => \genblk3[2].u_dphy_rx_data_byte_aligner_n_21\,
      \align_offset_reg[1]_0\(0) => \genblk3[2].u_dphy_rx_data_byte_aligner_n_22\,
      \align_offset_reg[1]_1\(1 downto 0) => p_0_in_3(1 downto 0),
      \align_offset_reg[2]_0\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_24\,
      \align_offset_reg[2]_1\ => \genblk2[2].u_dphy_rx_to_byte_n_18\,
      \align_offset_reg[3]_0\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_20\,
      \align_offset_reg[3]_1\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_23\,
      \align_offset_reg[3]_2\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_25\,
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned_reg[0]_0\ => \genblk2[2].u_dphy_rx_to_byte_n_13\,
      \data_byte_aligned_reg[0]_1\ => \genblk2[2].u_dphy_rx_to_byte_n_22\,
      \data_byte_aligned_reg[0]_2\(0) => \genblk2[2].u_dphy_rx_to_byte_n_10\,
      \data_byte_aligned_reg[3]_0\ => \genblk2[2].u_dphy_rx_to_byte_n_19\,
      \data_byte_aligned_reg[3]_1\ => \genblk2[2].u_dphy_rx_to_byte_n_21\,
      \data_byte_aligned_reg[4]_0\ => \genblk2[2].u_dphy_rx_to_byte_n_25\,
      \data_byte_aligned_reg[4]_1\ => \genblk2[2].u_dphy_rx_to_byte_n_23\,
      \data_byte_aligned_reg[5]_0\ => \genblk2[2].u_dphy_rx_to_byte_n_20\,
      \data_byte_aligned_reg[6]_0\ => \genblk2[2].u_dphy_rx_to_byte_n_9\,
      \data_byte_aligned_reg[6]_1\ => \genblk2[2].u_dphy_rx_to_byte_n_26\,
      \data_byte_aligned_reg[6]_2\ => \genblk2[2].u_dphy_rx_to_byte_n_24\,
      \data_byte_aligned_reg[7]_0\(7 downto 0) => \data_byte_aligned_reg[7]\(23 downto 16),
      data_byte_valid0 => data_byte_valid0_9,
      data_byte_valid_reg_0 => \^byte_data_valid\(2),
      data_byte_valid_reg_1(0) => data_byte_valid_reg_3(0),
      lane_byte_aligned_valid => lane_byte_aligned_valid,
      \last_byte_reg[1]_0\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_19\,
      \last_byte_reg[4]_0\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_3\,
      \last_byte_reg[4]_1\(0) => p_0_in_3(2),
      \last_byte_reg[6]_0\ => \genblk3[2].u_dphy_rx_data_byte_aligner_n_2\,
      \last_byte_reg[7]_0\(3) => data6_8(0),
      \last_byte_reg[7]_0\(2) => \genblk3[2].u_dphy_rx_data_byte_aligner_n_15\,
      \last_byte_reg[7]_0\(1) => \genblk3[2].u_dphy_rx_data_byte_aligner_n_16\,
      \last_byte_reg[7]_0\(0) => \genblk3[2].u_dphy_rx_data_byte_aligner_n_17\,
      u_ISERDESE3 => \genblk3[2].u_dphy_rx_data_byte_aligner_n_18\
    );
\genblk3[3].u_dphy_rx_data_byte_aligner\: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_data_byte_aligner_8\
     port map (
      D(3) => p_1_in_4(7),
      D(2 downto 1) => p_1_in_4(4 downto 3),
      D(0) => p_1_in_4(1),
      E(0) => \genblk2[3].u_dphy_rx_to_byte_n_8\,
      Q(7 downto 0) => data_hs_byte_24(7 downto 0),
      align_flag_reg(0) => align_flag_reg(0),
      \align_idx_reg[0][0]\(0) => D(0),
      \align_idx_reg[0][0]_0\(0) => \align_idx_reg[0][0]\(0),
      \align_idx_reg[0][0]_1\ => \^byte_data_valid\(2),
      \align_idx_reg[0][0]_2\ => \^byte_data_valid\(1),
      \align_idx_reg[0][0]_3\ => \^byte_data_valid\(0),
      \align_idx_reg[1][0]\(0) => \align_idx_reg[1][0]\(0),
      \align_idx_reg[1][0]_0\(0) => \align_idx_reg[1][0]_0\(0),
      \align_idx_reg[2][0]\(0) => \align_idx_reg[2][0]\(0),
      \align_idx_reg[2][0]_0\(0) => \align_idx_reg[2][0]_0\(0),
      \align_idx_reg[3][0]\(0) => \align_idx_reg[3][0]\(0),
      \align_idx_reg[3][0]_0\(0) => Q(0),
      \align_offset_reg[1]_0\(1) => \genblk3[3].u_dphy_rx_data_byte_aligner_n_29\,
      \align_offset_reg[1]_0\(0) => \genblk3[3].u_dphy_rx_data_byte_aligner_n_30\,
      \align_offset_reg[1]_1\(1 downto 0) => p_0_in_5(1 downto 0),
      \align_offset_reg[2]_0\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_32\,
      \align_offset_reg[2]_1\ => \genblk2[3].u_dphy_rx_to_byte_n_18\,
      \align_offset_reg[3]_0\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_28\,
      \align_offset_reg[3]_1\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_31\,
      \align_offset_reg[3]_2\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_33\,
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned_reg[0]_0\ => \genblk2[3].u_dphy_rx_to_byte_n_13\,
      \data_byte_aligned_reg[0]_1\ => \genblk2[3].u_dphy_rx_to_byte_n_22\,
      \data_byte_aligned_reg[0]_2\(0) => \genblk2[3].u_dphy_rx_to_byte_n_10\,
      \data_byte_aligned_reg[3]_0\ => \genblk2[3].u_dphy_rx_to_byte_n_19\,
      \data_byte_aligned_reg[3]_1\ => \genblk2[3].u_dphy_rx_to_byte_n_21\,
      \data_byte_aligned_reg[4]_0\ => \genblk2[3].u_dphy_rx_to_byte_n_25\,
      \data_byte_aligned_reg[4]_1\ => \genblk2[3].u_dphy_rx_to_byte_n_23\,
      \data_byte_aligned_reg[5]_0\ => \genblk2[3].u_dphy_rx_to_byte_n_20\,
      \data_byte_aligned_reg[6]_0\ => \genblk2[3].u_dphy_rx_to_byte_n_9\,
      \data_byte_aligned_reg[6]_1\ => \genblk2[3].u_dphy_rx_to_byte_n_26\,
      \data_byte_aligned_reg[6]_2\ => \genblk2[3].u_dphy_rx_to_byte_n_24\,
      \data_byte_aligned_reg[7]_0\(7 downto 0) => \data_byte_aligned_reg[7]\(31 downto 24),
      data_byte_valid0 => data_byte_valid0_11,
      data_byte_valid_reg_0 => \^byte_data_valid\(3),
      data_byte_valid_reg_1 => \lane_valid__2\,
      data_byte_valid_reg_2 => \^data_byte_valid_reg_1\,
      data_byte_valid_reg_3 => \^data_byte_valid_reg_0\,
      data_byte_valid_reg_4 => \^data_byte_valid_reg\,
      data_byte_valid_reg_5(0) => data_byte_valid_reg_4(0),
      lane_byte_aligned_valid => lane_byte_aligned_valid,
      \last_byte_reg[1]_0\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_27\,
      \last_byte_reg[4]_0\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_3\,
      \last_byte_reg[4]_1\(0) => p_0_in_5(2),
      \last_byte_reg[6]_0\ => \genblk3[3].u_dphy_rx_data_byte_aligner_n_2\,
      \last_byte_reg[7]_0\(3) => data6_10(0),
      \last_byte_reg[7]_0\(2) => \genblk3[3].u_dphy_rx_data_byte_aligner_n_23\,
      \last_byte_reg[7]_0\(1) => \genblk3[3].u_dphy_rx_data_byte_aligner_n_24\,
      \last_byte_reg[7]_0\(0) => \genblk3[3].u_dphy_rx_data_byte_aligner_n_25\,
      u_ISERDESE3 => \genblk3[3].u_dphy_rx_data_byte_aligner_n_26\
    );
u_dphy_rx_clk_io: entity work.\design_1_mipi_rx_to_video_0_0__dphy_rx_clk_io\
     port map (
      clk_hs_bit => clk_hs_bit,
      clk_hs_byte => \^clk_hs_byte\,
      dphy_clk_n => dphy_clk_n,
      dphy_clk_p => dphy_clk_p
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mipi_rx_to_video_0_0_mipi_rx_to_video is
  port (
    locked_reg : out STD_LOGIC;
    clk_hs_byte : out STD_LOGIC;
    reg_ce_reg : out STD_LOGIC;
    reg_active_video_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pix_cnt_reg[12]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    pix_cnt1 : out STD_LOGIC;
    \line_cnt_reg[14]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mipi_width0__0\ : out STD_LOGIC;
    \axi_araddr_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    reg_ce_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    vid_data : out STD_LOGIC_VECTOR ( 39 downto 0 );
    \reg_di_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \pix_cnt_reg[13]\ : in STD_LOGIC;
    \pix_cnt_reg[8]\ : in STD_LOGIC;
    pre_active_video : in STD_LOGIC;
    \line_cnt_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \line_cnt_reg[6]\ : in STD_LOGIC;
    \line_cnt_reg[11]\ : in STD_LOGIC;
    pre_vsync : in STD_LOGIC;
    module_reset : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    p_1_in_13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \line_cnt_reg[15]_0\ : in STD_LOGIC;
    \line_cnt_reg[10]\ : in STD_LOGIC;
    \line_cnt_reg[5]\ : in STD_LOGIC;
    dphy_data_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dphy_clk_p : in STD_LOGIC;
    dphy_clk_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video : entity is "mipi_rx_to_video";
end design_1_mipi_rx_to_video_0_0_mipi_rx_to_video;

architecture STRUCTURE of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video is
  signal align_flag_i_1_n_0 : STD_LOGIC;
  signal byte_data_valid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^clk_hs_byte\ : STD_LOGIC;
  signal data_lp_n_0 : STD_LOGIC;
  signal data_lp_n_1 : STD_LOGIC;
  signal data_lp_n_2 : STD_LOGIC;
  signal data_lp_n_3 : STD_LOGIC;
  signal data_lp_p_0 : STD_LOGIC;
  signal data_lp_p_1 : STD_LOGIC;
  signal data_lp_p_2 : STD_LOGIC;
  signal data_lp_p_3 : STD_LOGIC;
  signal lane_byte_aligned_valid : STD_LOGIC;
  signal locked0 : STD_LOGIC;
  signal \^locked_reg\ : STD_LOGIC;
  signal pix_data : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal pix_data_enable : STD_LOGIC;
  signal pix_di : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pix_valid : STD_LOGIC;
  signal rst0 : STD_LOGIC;
  signal rst00_out : STD_LOGIC;
  signal rst01_out : STD_LOGIC;
  signal rst02_out : STD_LOGIC;
  signal \u_csi2_lanes_aligner/align_idx_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \u_csi2_lanes_aligner/align_idx_reg[1]_9\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \u_csi2_lanes_aligner/align_idx_reg[2]_10\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \u_csi2_lanes_aligner/align_idx_reg[3]_11\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \u_csi2_lanes_aligner/lane_valid__2\ : STD_LOGIC;
  signal \u_csi2_lanes_aligner/p_1_in\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal u_csi2_rx_to_pixel_n_0 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_41 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_42 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_43 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_45 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_46 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_47 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_48 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_49 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_54 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_55 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_56 : STD_LOGIC;
begin
  clk_hs_byte <= \^clk_hs_byte\;
  locked_reg <= \^locked_reg\;
align_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000080000000"
    )
        port map (
      I0 => byte_data_valid(2),
      I1 => byte_data_valid(3),
      I2 => byte_data_valid(0),
      I3 => byte_data_valid(1),
      I4 => \u_csi2_lanes_aligner/lane_valid__2\,
      I5 => lane_byte_aligned_valid,
      O => align_flag_i_1_n_0
    );
u_IDELAYE3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_lp_p_0,
      I1 => data_lp_n_0,
      O => rst0
    );
\u_IDELAYE3_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_lp_p_1,
      I1 => data_lp_n_1,
      O => rst00_out
    );
\u_IDELAYE3_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_lp_p_2,
      I1 => data_lp_n_2,
      O => rst01_out
    );
\u_IDELAYE3_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_lp_p_3,
      I1 => data_lp_n_3,
      O => rst02_out
    );
u_csi2_pixel_to_video: entity work.\design_1_mipi_rx_to_video_0_0__csi2_pixel_to_video\
     port map (
      E(0) => locked0,
      Q(11 downto 0) => Q(11 downto 0),
      \axi_araddr_reg[5]\(0) => \axi_araddr_reg[5]\(0),
      \axi_rdata_reg[0]\ => \axi_rdata_reg[0]\,
      \axi_rdata_reg[0]_0\(4 downto 0) => \axi_rdata_reg[0]_0\(4 downto 0),
      \axi_rdata_reg[0]_1\(0) => \axi_rdata_reg[0]_1\(0),
      clk_hs_byte => \^clk_hs_byte\,
      \line_cnt_reg[10]\ => \line_cnt_reg[10]\,
      \line_cnt_reg[11]\ => \line_cnt_reg[11]\,
      \line_cnt_reg[14]\(15 downto 0) => \line_cnt_reg[14]\(15 downto 0),
      \line_cnt_reg[15]\(15 downto 0) => \line_cnt_reg[15]\(15 downto 0),
      \line_cnt_reg[15]_0\ => \line_cnt_reg[15]_0\,
      \line_cnt_reg[5]\ => \line_cnt_reg[5]\,
      \line_cnt_reg[6]\ => \line_cnt_reg[6]\,
      locked_reg_0 => \^locked_reg\,
      \mipi_width0__0\ => \mipi_width0__0\,
      p_1_in_13(0) => p_1_in_13(0),
      p_2_in(0) => p_2_in(0),
      \pix_cnt_reg[12]\(4 downto 0) => \pix_cnt_reg[12]\(4 downto 0),
      \pix_cnt_reg[13]\ => \pix_cnt_reg[13]\,
      \pix_cnt_reg[8]\ => \pix_cnt_reg[8]\,
      pix_data_enable => pix_data_enable,
      pix_valid => pix_valid,
      pre_active_video => pre_active_video,
      pre_active_video_reg(0) => E(0),
      pre_vsync => pre_vsync,
      reg_active_video_reg_0 => reg_active_video_reg,
      reg_active_video_reg_1 => pix_cnt1,
      reg_ce_reg_0 => reg_ce_reg,
      reg_ce_reg_1(0) => reg_ce_reg_0(0),
      \reg_di_reg[7]_0\(7 downto 0) => \reg_di_reg[7]\(7 downto 0),
      \reg_pix_data_reg[39]_0\ => u_csi2_rx_to_pixel_n_0,
      \reg_pix_data_reg[39]_1\(39 downto 0) => pix_data(39 downto 0),
      \reg_pix_di_reg[7]_0\(7 downto 0) => pix_di(7 downto 0),
      reg_vsync_reg_0 => D(0),
      vid_data(39 downto 0) => vid_data(39 downto 0)
    );
u_csi2_rx_to_pixel: entity work.design_1_mipi_rx_to_video_0_0_csi2_rx_to_pixel
     port map (
      D(0) => u_dphy_rx_to_byte_n_48,
      E(0) => locked0,
      Q(0) => \u_csi2_lanes_aligner/align_idx_reg[3]_11\(0),
      align_flag_reg => align_flag_i_1_n_0,
      \align_idx_reg[0][0]\(0) => \u_csi2_lanes_aligner/align_idx_reg[0]_0\(0),
      \align_idx_reg[0][0]_0\(0) => u_dphy_rx_to_byte_n_56,
      \align_idx_reg[1][0]\(0) => \u_csi2_lanes_aligner/align_idx_reg[1]_9\(0),
      \align_idx_reg[1][0]_0\(0) => u_dphy_rx_to_byte_n_55,
      \align_idx_reg[1][0]_1\(0) => u_dphy_rx_to_byte_n_47,
      \align_idx_reg[2][0]\(0) => \u_csi2_lanes_aligner/align_idx_reg[2]_10\(0),
      \align_idx_reg[2][0]_0\(0) => u_dphy_rx_to_byte_n_54,
      \align_idx_reg[2][0]_1\(0) => u_dphy_rx_to_byte_n_46,
      \align_idx_reg[3][0]\(0) => u_dphy_rx_to_byte_n_49,
      \align_idx_reg[3][0]_0\(0) => u_dphy_rx_to_byte_n_45,
      clk_hs_byte => \^clk_hs_byte\,
      \lane_buf_reg[0][31]\(31 downto 0) => \u_csi2_lanes_aligner/p_1_in\(31 downto 0),
      \lane_buf_reg[7][0]\ => u_dphy_rx_to_byte_n_41,
      \lane_buf_reg[7][16]\ => u_dphy_rx_to_byte_n_43,
      \lane_buf_reg[7][8]\ => u_dphy_rx_to_byte_n_42,
      lane_byte_aligned_valid => lane_byte_aligned_valid,
      \lane_valid__2\ => \u_csi2_lanes_aligner/lane_valid__2\,
      locked_reg => \^locked_reg\,
      module_reset => module_reset,
      module_reset_reg => u_csi2_rx_to_pixel_n_0,
      pix_data_enable => pix_data_enable,
      pix_valid => pix_valid,
      \reg_pix_data_reg[39]_0\(39 downto 0) => pix_data(39 downto 0),
      \reg_pix_di_reg[7]_0\(7 downto 0) => pix_di(7 downto 0),
      s00_axi_aresetn => s00_axi_aresetn
    );
u_dphy_rx_to_byte: entity work.design_1_mipi_rx_to_video_0_0_dphy_rx_to_byte
     port map (
      AR(0) => rst0,
      D(0) => u_dphy_rx_to_byte_n_48,
      Q(0) => \u_csi2_lanes_aligner/align_idx_reg[3]_11\(0),
      align_flag_reg(0) => u_dphy_rx_to_byte_n_49,
      align_flag_reg_0(0) => u_dphy_rx_to_byte_n_54,
      align_flag_reg_1(0) => u_dphy_rx_to_byte_n_55,
      align_flag_reg_2(0) => u_dphy_rx_to_byte_n_56,
      \align_idx_reg[0][0]\(0) => \u_csi2_lanes_aligner/align_idx_reg[0]_0\(0),
      \align_idx_reg[1][0]\(0) => u_dphy_rx_to_byte_n_47,
      \align_idx_reg[1][0]_0\(0) => \u_csi2_lanes_aligner/align_idx_reg[1]_9\(0),
      \align_idx_reg[2][0]\(0) => u_dphy_rx_to_byte_n_46,
      \align_idx_reg[2][0]_0\(0) => \u_csi2_lanes_aligner/align_idx_reg[2]_10\(0),
      \align_idx_reg[3][0]\(0) => u_dphy_rx_to_byte_n_45,
      byte_data_valid(3 downto 0) => byte_data_valid(3 downto 0),
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned_reg[7]\(31 downto 0) => \u_csi2_lanes_aligner/p_1_in\(31 downto 0),
      data_byte_valid_reg => u_dphy_rx_to_byte_n_41,
      data_byte_valid_reg_0 => u_dphy_rx_to_byte_n_42,
      data_byte_valid_reg_1 => u_dphy_rx_to_byte_n_43,
      data_byte_valid_reg_2(0) => rst00_out,
      data_byte_valid_reg_3(0) => rst01_out,
      data_byte_valid_reg_4(0) => rst02_out,
      data_lp_n_0 => data_lp_n_0,
      data_lp_n_1 => data_lp_n_1,
      data_lp_n_2 => data_lp_n_2,
      data_lp_n_3 => data_lp_n_3,
      data_lp_p_0 => data_lp_p_0,
      data_lp_p_1 => data_lp_p_1,
      data_lp_p_2 => data_lp_p_2,
      data_lp_p_3 => data_lp_p_3,
      dphy_clk_n => dphy_clk_n,
      dphy_clk_p => dphy_clk_p,
      dphy_data_n(3 downto 0) => dphy_data_n(3 downto 0),
      dphy_data_p(3 downto 0) => dphy_data_p(3 downto 0),
      lane_byte_aligned_valid => lane_byte_aligned_valid,
      \lane_valid__2\ => \u_csi2_lanes_aligner/lane_valid__2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0_S00_AXI is
  port (
    clk_byte : out STD_LOGIC;
    vid_locked : out STD_LOGIC;
    vid_ce : out STD_LOGIC;
    reg_vsync_reg : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    dphy_data_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dphy_clk_p : in STD_LOGIC;
    dphy_clk_n : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0_S00_AXI : entity is "mipi_rx_to_video_v1_0_S00_AXI";
end design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0_S00_AXI;

architecture STRUCTURE of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \aclk_vsync_reg_n_0_[0]\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[6]\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^clk_byte\ : STD_LOGIC;
  signal int_frame_done_i_1_n_0 : STD_LOGIC;
  signal int_frame_start : STD_LOGIC;
  signal int_frame_start_i_1_n_0 : STD_LOGIC;
  signal int_mask_frame_start : STD_LOGIC;
  signal \line_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[14]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[15]_i_3_n_0\ : STD_LOGIC;
  signal \line_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal line_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mipi_di : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mipi_frame_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal mipi_frame_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \mipi_frame_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \mipi_frame_cnt_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal mipi_height : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mipi_rx_to_video_inst_n_27 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_29 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_30 : STD_LOGIC;
  signal mipi_width : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \mipi_width0__0\ : STD_LOGIC;
  signal module_reset : STD_LOGIC;
  signal module_reset_i_1_n_0 : STD_LOGIC;
  signal module_reset_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_0_in_12 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in6_in : STD_LOGIC;
  signal p_1_in_13 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pix_cnt1 : STD_LOGIC;
  signal \pix_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[13]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal pix_cnt_reg : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal pre_active_video : STD_LOGIC;
  signal pre_vsync : STD_LOGIC;
  signal reg_di : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^reg_vsync_reg\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal \^vid_active_video\ : STD_LOGIC;
  signal \^vid_ce\ : STD_LOGIC;
  signal \NLW_mipi_frame_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_2\ : label is "soft_lutpair293";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_2\ : label is "soft_lutpair293";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair298";
  attribute SOFT_HLUTNM of int_frame_done_i_1 : label is "soft_lutpair297";
  attribute SOFT_HLUTNM of int_frame_start_i_1 : label is "soft_lutpair297";
  attribute SOFT_HLUTNM of int_mask_frame_start_i_2 : label is "soft_lutpair298";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mipi_frame_cnt_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \mipi_frame_cnt_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \mipi_frame_cnt_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \mipi_frame_cnt_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of \pix_cnt[10]_i_1\ : label is "soft_lutpair299";
  attribute SOFT_HLUTNM of \pix_cnt[11]_i_1\ : label is "soft_lutpair294";
  attribute SOFT_HLUTNM of \pix_cnt[12]_i_1\ : label is "soft_lutpair294";
  attribute SOFT_HLUTNM of \pix_cnt[1]_i_1\ : label is "soft_lutpair296";
  attribute SOFT_HLUTNM of \pix_cnt[2]_i_1\ : label is "soft_lutpair296";
  attribute SOFT_HLUTNM of \pix_cnt[5]_i_1\ : label is "soft_lutpair299";
  attribute SOFT_HLUTNM of \pix_cnt[6]_i_1\ : label is "soft_lutpair295";
  attribute SOFT_HLUTNM of \pix_cnt[7]_i_1\ : label is "soft_lutpair295";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  clk_byte <= \^clk_byte\;
  reg_vsync_reg <= \^reg_vsync_reg\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  vid_active_video <= \^vid_active_video\;
  vid_ce <= \^vid_ce\;
\aclk_vsync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^reg_vsync_reg\,
      Q => \aclk_vsync_reg_n_0_[0]\,
      R => '0'
    );
\aclk_vsync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \aclk_vsync_reg_n_0_[0]\,
      Q => p_1_in6_in,
      R => '0'
    );
\aclk_vsync_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in6_in,
      Q => p_0_in7_in,
      R => '0'
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF8CCC8CCC8CCC"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => axi_araddr(4),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(3),
      Q => axi_araddr(5),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(4),
      Q => axi_araddr(6),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => p_0_in_12(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => p_0_in_12(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => p_0_in_12(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => p_0_in0,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(4),
      Q => \axi_awaddr_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => module_reset,
      I1 => mipi_height(0),
      I2 => mipi_frame_cnt_reg(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A828A02088088000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => mipi_frame_cnt_reg(10),
      I4 => mipi_width(10),
      I5 => mipi_height(10),
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A828A02088088000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => mipi_frame_cnt_reg(11),
      I4 => mipi_width(11),
      I5 => mipi_height(11),
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A828A02088088000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => mipi_frame_cnt_reg(12),
      I4 => mipi_width(12),
      I5 => mipi_height(12),
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A828A02088088000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => mipi_frame_cnt_reg(13),
      I4 => mipi_width(13),
      I5 => mipi_height(13),
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A828A02088088000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => mipi_frame_cnt_reg(14),
      I4 => mipi_width(14),
      I5 => mipi_height(14),
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A828A02088088000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => mipi_frame_cnt_reg(15),
      I4 => mipi_width(15),
      I5 => mipi_height(15),
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axi_araddr(5),
      I1 => axi_araddr(6),
      I2 => axi_araddr(4),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(16),
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(17),
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(18),
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(19),
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata[1]_i_3_n_0\,
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      O => \axi_rdata[1]_i_1_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D591C48000000000"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => p_1_in_13(1),
      I3 => p_2_in(1),
      I4 => mipi_di(1),
      I5 => axi_araddr(4),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008C80"
    )
        port map (
      I0 => mipi_frame_cnt_reg(1),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => mipi_height(1),
      I4 => axi_araddr(4),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(20),
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(21),
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(22),
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(23),
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(24),
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(25),
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(26),
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(27),
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(28),
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(29),
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => mipi_di(2),
      I1 => \axi_rdata[7]_i_2_n_0\,
      I2 => \axi_rdata[2]_i_2_n_0\,
      I3 => axi_araddr(5),
      I4 => axi_araddr(6),
      I5 => axi_araddr(4),
      O => \axi_rdata[2]_i_1_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => mipi_height(2),
      I1 => mipi_width(2),
      I2 => mipi_frame_cnt_reg(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(30),
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(5),
      I3 => axi_araddr(6),
      I4 => axi_araddr(4),
      I5 => mipi_frame_cnt_reg(31),
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => mipi_di(3),
      I1 => \axi_rdata[7]_i_2_n_0\,
      I2 => \axi_rdata[3]_i_2_n_0\,
      I3 => axi_araddr(5),
      I4 => axi_araddr(6),
      I5 => axi_araddr(4),
      O => \axi_rdata[3]_i_1_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => mipi_height(3),
      I1 => mipi_width(3),
      I2 => mipi_frame_cnt_reg(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => mipi_di(4),
      I1 => \axi_rdata[7]_i_2_n_0\,
      I2 => \axi_rdata[4]_i_2_n_0\,
      I3 => axi_araddr(5),
      I4 => axi_araddr(6),
      I5 => axi_araddr(4),
      O => \axi_rdata[4]_i_1_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => mipi_height(4),
      I1 => mipi_width(4),
      I2 => mipi_frame_cnt_reg(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => mipi_di(5),
      I1 => \axi_rdata[7]_i_2_n_0\,
      I2 => \axi_rdata[5]_i_2_n_0\,
      I3 => axi_araddr(5),
      I4 => axi_araddr(6),
      I5 => axi_araddr(4),
      O => \axi_rdata[5]_i_1_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => mipi_height(5),
      I1 => mipi_width(5),
      I2 => mipi_frame_cnt_reg(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => mipi_di(6),
      I1 => \axi_rdata[7]_i_2_n_0\,
      I2 => \axi_rdata[6]_i_2_n_0\,
      I3 => axi_araddr(5),
      I4 => axi_araddr(6),
      I5 => axi_araddr(4),
      O => \axi_rdata[6]_i_1_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => mipi_height(6),
      I1 => mipi_width(6),
      I2 => mipi_frame_cnt_reg(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => mipi_di(7),
      I1 => \axi_rdata[7]_i_2_n_0\,
      I2 => \axi_rdata[7]_i_3_n_0\,
      I3 => axi_araddr(5),
      I4 => axi_araddr(6),
      I5 => axi_araddr(4),
      O => \axi_rdata[7]_i_1_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => axi_araddr(6),
      I1 => axi_araddr(5),
      I2 => axi_araddr(4),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => mipi_height(7),
      I1 => mipi_width(7),
      I2 => mipi_frame_cnt_reg(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A828A02088088000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => mipi_frame_cnt_reg(8),
      I4 => mipi_width(8),
      I5 => mipi_height(8),
      O => \axi_rdata[8]_i_1_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A828A02088088000"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => mipi_frame_cnt_reg(9),
      I4 => mipi_width(9),
      I5 => mipi_height(9),
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => mipi_rx_to_video_inst_n_29,
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[1]_i_1_n_0\,
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[2]_i_1_n_0\,
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[31]_i_1_n_0\,
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[3]_i_1_n_0\,
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[4]_i_1_n_0\,
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[5]_i_1_n_0\,
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[6]_i_1_n_0\,
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[7]_i_1_n_0\,
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[8]_i_1_n_0\,
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
int_frame_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => int_frame_start,
      I1 => p_0_in7_in,
      I2 => p_1_in6_in,
      I3 => p_2_in(1),
      O => int_frame_done_i_1_n_0
    );
int_frame_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_frame_done_i_1_n_0,
      Q => p_2_in(1),
      R => axi_awready_i_1_n_0
    );
int_frame_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => int_frame_start,
      I1 => p_1_in6_in,
      I2 => p_0_in7_in,
      I3 => p_2_in(0),
      O => int_frame_start_i_1_n_0
    );
int_frame_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[6]\,
      I1 => p_0_in0,
      I2 => p_0_in_12(0),
      I3 => p_0_in_12(2),
      I4 => p_0_in_12(1),
      I5 => \slv_reg_wren__2\,
      O => int_frame_start
    );
int_frame_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_frame_start_i_1_n_0,
      Q => p_2_in(0),
      R => axi_awready_i_1_n_0
    );
int_mask_frame_done_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => int_mask_frame_start,
      D => s00_axi_wdata(1),
      Q => p_1_in_13(1),
      S => axi_awready_i_1_n_0
    );
int_mask_frame_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[6]\,
      I1 => p_0_in0,
      I2 => p_0_in_12(1),
      I3 => p_0_in_12(0),
      I4 => p_0_in_12(2),
      I5 => \slv_reg_wren__2\,
      O => int_mask_frame_start
    );
int_mask_frame_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
int_mask_frame_start_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => int_mask_frame_start,
      D => s00_axi_wdata(0),
      Q => p_1_in_13(0),
      S => axi_awready_i_1_n_0
    );
irq_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => p_1_in_13(1),
      I1 => p_2_in(1),
      I2 => p_1_in_13(0),
      I3 => p_2_in(0),
      O => irq
    );
\line_cnt[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => line_cnt_reg(9),
      I1 => line_cnt_reg(7),
      I2 => \line_cnt[9]_i_2_n_0\,
      I3 => line_cnt_reg(6),
      I4 => line_cnt_reg(8),
      O => \line_cnt[10]_i_2_n_0\
    );
\line_cnt[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => line_cnt_reg(10),
      I1 => line_cnt_reg(8),
      I2 => line_cnt_reg(6),
      I3 => \line_cnt[9]_i_2_n_0\,
      I4 => line_cnt_reg(7),
      I5 => line_cnt_reg(9),
      O => \line_cnt[14]_i_2_n_0\
    );
\line_cnt[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => line_cnt_reg(13),
      I1 => line_cnt_reg(11),
      I2 => \line_cnt[14]_i_2_n_0\,
      I3 => line_cnt_reg(12),
      O => \line_cnt[15]_i_3_n_0\
    );
\line_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => line_cnt_reg(4),
      I1 => line_cnt_reg(2),
      I2 => line_cnt_reg(0),
      I3 => line_cnt_reg(1),
      I4 => line_cnt_reg(3),
      O => \line_cnt[5]_i_2_n_0\
    );
\line_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => line_cnt_reg(5),
      I1 => line_cnt_reg(3),
      I2 => line_cnt_reg(1),
      I3 => line_cnt_reg(0),
      I4 => line_cnt_reg(2),
      I5 => line_cnt_reg(4),
      O => \line_cnt[9]_i_2_n_0\
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(0),
      Q => line_cnt_reg(0)
    );
\line_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(10),
      Q => line_cnt_reg(10)
    );
\line_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(11),
      Q => line_cnt_reg(11)
    );
\line_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(12),
      Q => line_cnt_reg(12)
    );
\line_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(13),
      Q => line_cnt_reg(13)
    );
\line_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(14),
      Q => line_cnt_reg(14)
    );
\line_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(15),
      Q => line_cnt_reg(15)
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(1),
      Q => line_cnt_reg(1)
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(2),
      Q => line_cnt_reg(2)
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(3),
      Q => line_cnt_reg(3)
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(4),
      Q => line_cnt_reg(4)
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(5),
      Q => line_cnt_reg(5)
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(6),
      Q => line_cnt_reg(6)
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(7),
      Q => line_cnt_reg(7)
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(8),
      Q => line_cnt_reg(8)
    );
\line_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_27,
      CLR => module_reset,
      D => \p_0_in__0\(9),
      Q => line_cnt_reg(9)
    );
\mipi_di_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => reg_di(0),
      Q => mipi_di(0)
    );
\mipi_di_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => reg_di(1),
      Q => mipi_di(1)
    );
\mipi_di_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => reg_di(2),
      Q => mipi_di(2)
    );
\mipi_di_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => reg_di(3),
      Q => mipi_di(3)
    );
\mipi_di_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => reg_di(4),
      Q => mipi_di(4)
    );
\mipi_di_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => reg_di(5),
      Q => mipi_di(5)
    );
\mipi_di_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => reg_di(6),
      Q => mipi_di(6)
    );
\mipi_di_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => reg_di(7),
      Q => mipi_di(7)
    );
\mipi_frame_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mipi_frame_cnt_reg(0),
      O => \mipi_frame_cnt[0]_i_2_n_0\
    );
\mipi_frame_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_15\,
      Q => mipi_frame_cnt_reg(0)
    );
\mipi_frame_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \mipi_frame_cnt_reg[0]_i_1_n_0\,
      CO(6) => \mipi_frame_cnt_reg[0]_i_1_n_1\,
      CO(5) => \mipi_frame_cnt_reg[0]_i_1_n_2\,
      CO(4) => \mipi_frame_cnt_reg[0]_i_1_n_3\,
      CO(3) => \mipi_frame_cnt_reg[0]_i_1_n_4\,
      CO(2) => \mipi_frame_cnt_reg[0]_i_1_n_5\,
      CO(1) => \mipi_frame_cnt_reg[0]_i_1_n_6\,
      CO(0) => \mipi_frame_cnt_reg[0]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \mipi_frame_cnt_reg[0]_i_1_n_8\,
      O(6) => \mipi_frame_cnt_reg[0]_i_1_n_9\,
      O(5) => \mipi_frame_cnt_reg[0]_i_1_n_10\,
      O(4) => \mipi_frame_cnt_reg[0]_i_1_n_11\,
      O(3) => \mipi_frame_cnt_reg[0]_i_1_n_12\,
      O(2) => \mipi_frame_cnt_reg[0]_i_1_n_13\,
      O(1) => \mipi_frame_cnt_reg[0]_i_1_n_14\,
      O(0) => \mipi_frame_cnt_reg[0]_i_1_n_15\,
      S(7 downto 1) => mipi_frame_cnt_reg(7 downto 1),
      S(0) => \mipi_frame_cnt[0]_i_2_n_0\
    );
\mipi_frame_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_13\,
      Q => mipi_frame_cnt_reg(10)
    );
\mipi_frame_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_12\,
      Q => mipi_frame_cnt_reg(11)
    );
\mipi_frame_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_11\,
      Q => mipi_frame_cnt_reg(12)
    );
\mipi_frame_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_10\,
      Q => mipi_frame_cnt_reg(13)
    );
\mipi_frame_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_9\,
      Q => mipi_frame_cnt_reg(14)
    );
\mipi_frame_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_8\,
      Q => mipi_frame_cnt_reg(15)
    );
\mipi_frame_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_15\,
      Q => mipi_frame_cnt_reg(16)
    );
\mipi_frame_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \mipi_frame_cnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \mipi_frame_cnt_reg[16]_i_1_n_0\,
      CO(6) => \mipi_frame_cnt_reg[16]_i_1_n_1\,
      CO(5) => \mipi_frame_cnt_reg[16]_i_1_n_2\,
      CO(4) => \mipi_frame_cnt_reg[16]_i_1_n_3\,
      CO(3) => \mipi_frame_cnt_reg[16]_i_1_n_4\,
      CO(2) => \mipi_frame_cnt_reg[16]_i_1_n_5\,
      CO(1) => \mipi_frame_cnt_reg[16]_i_1_n_6\,
      CO(0) => \mipi_frame_cnt_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \mipi_frame_cnt_reg[16]_i_1_n_8\,
      O(6) => \mipi_frame_cnt_reg[16]_i_1_n_9\,
      O(5) => \mipi_frame_cnt_reg[16]_i_1_n_10\,
      O(4) => \mipi_frame_cnt_reg[16]_i_1_n_11\,
      O(3) => \mipi_frame_cnt_reg[16]_i_1_n_12\,
      O(2) => \mipi_frame_cnt_reg[16]_i_1_n_13\,
      O(1) => \mipi_frame_cnt_reg[16]_i_1_n_14\,
      O(0) => \mipi_frame_cnt_reg[16]_i_1_n_15\,
      S(7 downto 0) => mipi_frame_cnt_reg(23 downto 16)
    );
\mipi_frame_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_14\,
      Q => mipi_frame_cnt_reg(17)
    );
\mipi_frame_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_13\,
      Q => mipi_frame_cnt_reg(18)
    );
\mipi_frame_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_12\,
      Q => mipi_frame_cnt_reg(19)
    );
\mipi_frame_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_14\,
      Q => mipi_frame_cnt_reg(1)
    );
\mipi_frame_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_11\,
      Q => mipi_frame_cnt_reg(20)
    );
\mipi_frame_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_10\,
      Q => mipi_frame_cnt_reg(21)
    );
\mipi_frame_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_9\,
      Q => mipi_frame_cnt_reg(22)
    );
\mipi_frame_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_8\,
      Q => mipi_frame_cnt_reg(23)
    );
\mipi_frame_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_15\,
      Q => mipi_frame_cnt_reg(24)
    );
\mipi_frame_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \mipi_frame_cnt_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_mipi_frame_cnt_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \mipi_frame_cnt_reg[24]_i_1_n_1\,
      CO(5) => \mipi_frame_cnt_reg[24]_i_1_n_2\,
      CO(4) => \mipi_frame_cnt_reg[24]_i_1_n_3\,
      CO(3) => \mipi_frame_cnt_reg[24]_i_1_n_4\,
      CO(2) => \mipi_frame_cnt_reg[24]_i_1_n_5\,
      CO(1) => \mipi_frame_cnt_reg[24]_i_1_n_6\,
      CO(0) => \mipi_frame_cnt_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \mipi_frame_cnt_reg[24]_i_1_n_8\,
      O(6) => \mipi_frame_cnt_reg[24]_i_1_n_9\,
      O(5) => \mipi_frame_cnt_reg[24]_i_1_n_10\,
      O(4) => \mipi_frame_cnt_reg[24]_i_1_n_11\,
      O(3) => \mipi_frame_cnt_reg[24]_i_1_n_12\,
      O(2) => \mipi_frame_cnt_reg[24]_i_1_n_13\,
      O(1) => \mipi_frame_cnt_reg[24]_i_1_n_14\,
      O(0) => \mipi_frame_cnt_reg[24]_i_1_n_15\,
      S(7 downto 0) => mipi_frame_cnt_reg(31 downto 24)
    );
\mipi_frame_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_14\,
      Q => mipi_frame_cnt_reg(25)
    );
\mipi_frame_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_13\,
      Q => mipi_frame_cnt_reg(26)
    );
\mipi_frame_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_12\,
      Q => mipi_frame_cnt_reg(27)
    );
\mipi_frame_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_11\,
      Q => mipi_frame_cnt_reg(28)
    );
\mipi_frame_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_10\,
      Q => mipi_frame_cnt_reg(29)
    );
\mipi_frame_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_13\,
      Q => mipi_frame_cnt_reg(2)
    );
\mipi_frame_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_9\,
      Q => mipi_frame_cnt_reg(30)
    );
\mipi_frame_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_8\,
      Q => mipi_frame_cnt_reg(31)
    );
\mipi_frame_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_12\,
      Q => mipi_frame_cnt_reg(3)
    );
\mipi_frame_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_11\,
      Q => mipi_frame_cnt_reg(4)
    );
\mipi_frame_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_10\,
      Q => mipi_frame_cnt_reg(5)
    );
\mipi_frame_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_9\,
      Q => mipi_frame_cnt_reg(6)
    );
\mipi_frame_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_8\,
      Q => mipi_frame_cnt_reg(7)
    );
\mipi_frame_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_15\,
      Q => mipi_frame_cnt_reg(8)
    );
\mipi_frame_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \mipi_frame_cnt_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \mipi_frame_cnt_reg[8]_i_1_n_0\,
      CO(6) => \mipi_frame_cnt_reg[8]_i_1_n_1\,
      CO(5) => \mipi_frame_cnt_reg[8]_i_1_n_2\,
      CO(4) => \mipi_frame_cnt_reg[8]_i_1_n_3\,
      CO(3) => \mipi_frame_cnt_reg[8]_i_1_n_4\,
      CO(2) => \mipi_frame_cnt_reg[8]_i_1_n_5\,
      CO(1) => \mipi_frame_cnt_reg[8]_i_1_n_6\,
      CO(0) => \mipi_frame_cnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \mipi_frame_cnt_reg[8]_i_1_n_8\,
      O(6) => \mipi_frame_cnt_reg[8]_i_1_n_9\,
      O(5) => \mipi_frame_cnt_reg[8]_i_1_n_10\,
      O(4) => \mipi_frame_cnt_reg[8]_i_1_n_11\,
      O(3) => \mipi_frame_cnt_reg[8]_i_1_n_12\,
      O(2) => \mipi_frame_cnt_reg[8]_i_1_n_13\,
      O(1) => \mipi_frame_cnt_reg[8]_i_1_n_14\,
      O(0) => \mipi_frame_cnt_reg[8]_i_1_n_15\,
      S(7 downto 0) => mipi_frame_cnt_reg(15 downto 8)
    );
\mipi_frame_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_14\,
      Q => mipi_frame_cnt_reg(9)
    );
\mipi_height_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(0),
      Q => mipi_height(0)
    );
\mipi_height_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(10),
      Q => mipi_height(10)
    );
\mipi_height_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(11),
      Q => mipi_height(11)
    );
\mipi_height_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(12),
      Q => mipi_height(12)
    );
\mipi_height_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(13),
      Q => mipi_height(13)
    );
\mipi_height_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(14),
      Q => mipi_height(14)
    );
\mipi_height_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(15),
      Q => mipi_height(15)
    );
\mipi_height_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(1),
      Q => mipi_height(1)
    );
\mipi_height_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(2),
      Q => mipi_height(2)
    );
\mipi_height_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(3),
      Q => mipi_height(3)
    );
\mipi_height_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(4),
      Q => mipi_height(4)
    );
\mipi_height_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(5),
      Q => mipi_height(5)
    );
\mipi_height_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(6),
      Q => mipi_height(6)
    );
\mipi_height_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(7),
      Q => mipi_height(7)
    );
\mipi_height_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(8),
      Q => mipi_height(8)
    );
\mipi_height_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(9),
      Q => mipi_height(9)
    );
mipi_rx_to_video_inst: entity work.design_1_mipi_rx_to_video_0_0_mipi_rx_to_video
     port map (
      D(0) => \^reg_vsync_reg\,
      E(0) => mipi_rx_to_video_inst_n_27,
      Q(11 downto 9) => pix_cnt_reg(13 downto 11),
      Q(8 downto 5) => pix_cnt_reg(9 downto 6),
      Q(4 downto 0) => pix_cnt_reg(4 downto 0),
      \axi_araddr_reg[5]\(0) => mipi_rx_to_video_inst_n_29,
      \axi_rdata_reg[0]\ => \axi_rdata[0]_i_3_n_0\,
      \axi_rdata_reg[0]_0\(4 downto 0) => axi_araddr(6 downto 2),
      \axi_rdata_reg[0]_1\(0) => mipi_di(0),
      clk_hs_byte => \^clk_byte\,
      dphy_clk_n => dphy_clk_n,
      dphy_clk_p => dphy_clk_p,
      dphy_data_n(3 downto 0) => dphy_data_n(3 downto 0),
      dphy_data_p(3 downto 0) => dphy_data_p(3 downto 0),
      \line_cnt_reg[10]\ => \line_cnt[10]_i_2_n_0\,
      \line_cnt_reg[11]\ => \line_cnt[14]_i_2_n_0\,
      \line_cnt_reg[14]\(15 downto 0) => \p_0_in__0\(15 downto 0),
      \line_cnt_reg[15]\(15 downto 0) => line_cnt_reg(15 downto 0),
      \line_cnt_reg[15]_0\ => \line_cnt[15]_i_3_n_0\,
      \line_cnt_reg[5]\ => \line_cnt[5]_i_2_n_0\,
      \line_cnt_reg[6]\ => \line_cnt[9]_i_2_n_0\,
      locked_reg => vid_locked,
      \mipi_width0__0\ => \mipi_width0__0\,
      module_reset => module_reset,
      p_1_in_13(0) => p_1_in_13(0),
      p_2_in(0) => p_2_in(0),
      pix_cnt1 => pix_cnt1,
      \pix_cnt_reg[12]\(4) => p_0_in(13),
      \pix_cnt_reg[12]\(3 downto 2) => p_0_in(9 downto 8),
      \pix_cnt_reg[12]\(1 downto 0) => p_0_in(4 downto 3),
      \pix_cnt_reg[13]\ => \pix_cnt[13]_i_3_n_0\,
      \pix_cnt_reg[8]\ => \pix_cnt[9]_i_2_n_0\,
      pre_active_video => pre_active_video,
      pre_vsync => pre_vsync,
      reg_active_video_reg => \^vid_active_video\,
      reg_ce_reg => \^vid_ce\,
      reg_ce_reg_0(0) => mipi_rx_to_video_inst_n_30,
      \reg_di_reg[7]\(7 downto 0) => reg_di(7 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      vid_data(39 downto 0) => vid_data(39 downto 0)
    );
\mipi_width_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(8),
      Q => mipi_width(10)
    );
\mipi_width_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(9),
      Q => mipi_width(11)
    );
\mipi_width_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(10),
      Q => mipi_width(12)
    );
\mipi_width_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(11),
      Q => mipi_width(13)
    );
\mipi_width_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(12),
      Q => mipi_width(14)
    );
\mipi_width_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(13),
      Q => mipi_width(15)
    );
\mipi_width_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(0),
      Q => mipi_width(2)
    );
\mipi_width_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(1),
      Q => mipi_width(3)
    );
\mipi_width_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(2),
      Q => mipi_width(4)
    );
\mipi_width_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(3),
      Q => mipi_width(5)
    );
\mipi_width_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(4),
      Q => mipi_width(6)
    );
\mipi_width_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(5),
      Q => mipi_width(7)
    );
\mipi_width_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(6),
      Q => mipi_width(8)
    );
\mipi_width_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(7),
      Q => mipi_width(9)
    );
module_reset_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => module_reset_i_2_n_0,
      I2 => \slv_reg_wren__2\,
      I3 => module_reset,
      O => module_reset_i_1_n_0
    );
module_reset_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_0_in_12(2),
      I1 => p_0_in_12(0),
      I2 => p_0_in_12(1),
      I3 => p_0_in0,
      I4 => \axi_awaddr_reg_n_0_[6]\,
      O => module_reset_i_2_n_0
    );
module_reset_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => module_reset_i_1_n_0,
      Q => module_reset,
      S => axi_awready_i_1_n_0
    );
\pix_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => pre_active_video,
      I1 => pix_cnt_reg(0),
      O => p_0_in(0)
    );
\pix_cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \pix_cnt[10]_i_2_n_0\,
      I1 => pre_active_video,
      I2 => pix_cnt_reg(10),
      O => p_0_in(10)
    );
\pix_cnt[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => pix_cnt_reg(9),
      I1 => pix_cnt_reg(7),
      I2 => \pix_cnt[9]_i_2_n_0\,
      I3 => pix_cnt_reg(6),
      I4 => pix_cnt_reg(8),
      O => \pix_cnt[10]_i_2_n_0\
    );
\pix_cnt[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \pix_cnt[13]_i_3_n_0\,
      I1 => pre_active_video,
      I2 => pix_cnt_reg(11),
      O => p_0_in(11)
    );
\pix_cnt[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => pix_cnt_reg(11),
      I1 => \pix_cnt[13]_i_3_n_0\,
      I2 => pre_active_video,
      I3 => pix_cnt_reg(12),
      O => p_0_in(12)
    );
\pix_cnt[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pix_cnt_reg(10),
      I1 => pix_cnt_reg(8),
      I2 => pix_cnt_reg(6),
      I3 => \pix_cnt[9]_i_2_n_0\,
      I4 => pix_cnt_reg(7),
      I5 => pix_cnt_reg(9),
      O => \pix_cnt[13]_i_3_n_0\
    );
\pix_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => pre_active_video,
      I1 => pix_cnt_reg(0),
      I2 => pix_cnt_reg(1),
      O => p_0_in(1)
    );
\pix_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => pre_active_video,
      I1 => pix_cnt_reg(0),
      I2 => pix_cnt_reg(1),
      I3 => pix_cnt_reg(2),
      O => p_0_in(2)
    );
\pix_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \pix_cnt[5]_i_2_n_0\,
      I1 => pre_active_video,
      I2 => pix_cnt_reg(5),
      O => p_0_in(5)
    );
\pix_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => pix_cnt_reg(4),
      I1 => pix_cnt_reg(2),
      I2 => pix_cnt_reg(0),
      I3 => pix_cnt_reg(1),
      I4 => pix_cnt_reg(3),
      O => \pix_cnt[5]_i_2_n_0\
    );
\pix_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \pix_cnt[9]_i_2_n_0\,
      I1 => pre_active_video,
      I2 => pix_cnt_reg(6),
      O => p_0_in(6)
    );
\pix_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => pix_cnt_reg(6),
      I1 => \pix_cnt[9]_i_2_n_0\,
      I2 => pre_active_video,
      I3 => pix_cnt_reg(7),
      O => p_0_in(7)
    );
\pix_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pix_cnt_reg(5),
      I1 => pix_cnt_reg(3),
      I2 => pix_cnt_reg(1),
      I3 => pix_cnt_reg(0),
      I4 => pix_cnt_reg(2),
      I5 => pix_cnt_reg(4),
      O => \pix_cnt[9]_i_2_n_0\
    );
\pix_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(0),
      Q => pix_cnt_reg(0)
    );
\pix_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(10),
      Q => pix_cnt_reg(10)
    );
\pix_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(11),
      Q => pix_cnt_reg(11)
    );
\pix_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(12),
      Q => pix_cnt_reg(12)
    );
\pix_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(13),
      Q => pix_cnt_reg(13)
    );
\pix_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(1),
      Q => pix_cnt_reg(1)
    );
\pix_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(2),
      Q => pix_cnt_reg(2)
    );
\pix_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(3),
      Q => pix_cnt_reg(3)
    );
\pix_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(4),
      Q => pix_cnt_reg(4)
    );
\pix_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(5),
      Q => pix_cnt_reg(5)
    );
\pix_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(6),
      Q => pix_cnt_reg(6)
    );
\pix_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(7),
      Q => pix_cnt_reg(7)
    );
\pix_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(8),
      Q => pix_cnt_reg(8)
    );
\pix_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_byte\,
      CE => mipi_rx_to_video_inst_n_30,
      CLR => module_reset,
      D => p_0_in(9),
      Q => pix_cnt_reg(9)
    );
pre_active_video_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk_byte\,
      CE => \^vid_ce\,
      D => \^vid_active_video\,
      Q => pre_active_video,
      R => '0'
    );
pre_vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk_byte\,
      CE => \^vid_ce\,
      D => \^reg_vsync_reg\,
      Q => pre_vsync,
      R => '0'
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0 is
  port (
    dphy_clk_p : in STD_LOGIC;
    dphy_clk_n : in STD_LOGIC;
    dphy_data_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vid_clk : out STD_LOGIC;
    vid_ce : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 39 downto 0 );
    vid_locked : out STD_LOGIC;
    irq : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0 : entity is 7;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0 : entity is 32;
  attribute DATA_BITS : integer;
  attribute DATA_BITS of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0 : entity is 10;
  attribute DATA_DELAY_INSIDE : string;
  attribute DATA_DELAY_INSIDE of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0 : entity is "1'b1";
  attribute DATA_DELAY_NTAPS : integer;
  attribute DATA_DELAY_NTAPS of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0 : entity is 200;
  attribute HS_SETTLE_DELAY : integer;
  attribute HS_SETTLE_DELAY of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0 : entity is 20;
  attribute LANES_NUM : integer;
  attribute LANES_NUM of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0 : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0 : entity is "mipi_rx_to_video_v1_0";
end design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0;

architecture STRUCTURE of design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
mipi_rx_to_video_v1_0_S00_AXI_inst: entity work.design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      clk_byte => vid_clk,
      dphy_clk_n => dphy_clk_n,
      dphy_clk_p => dphy_clk_p,
      dphy_data_n(3 downto 0) => dphy_data_n(3 downto 0),
      dphy_data_p(3 downto 0) => dphy_data_p(3 downto 0),
      irq => irq,
      reg_vsync_reg => vid_vsync,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 0) => s00_axi_araddr(6 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(4 downto 0) => s00_axi_awaddr(6 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(1 downto 0) => s00_axi_wdata(1 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      vid_active_video => vid_active_video,
      vid_ce => vid_ce,
      vid_data(39 downto 0) => vid_data(39 downto 0),
      vid_locked => vid_locked
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mipi_rx_to_video_0_0 is
  port (
    dphy_clk_p : in STD_LOGIC;
    dphy_clk_n : in STD_LOGIC;
    dphy_data_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vid_clk : out STD_LOGIC;
    vid_ce : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 39 downto 0 );
    vid_locked : out STD_LOGIC;
    irq : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_mipi_rx_to_video_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_mipi_rx_to_video_0_0 : entity is "design_1_mipi_rx_to_video_0_0,mipi_rx_to_video_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_mipi_rx_to_video_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_mipi_rx_to_video_0_0 : entity is "mipi_rx_to_video_v1_0,Vivado 2022.1";
end design_1_mipi_rx_to_video_0_0;

architecture STRUCTURE of design_1_mipi_rx_to_video_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s00_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s00_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of inst : label is 7;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of inst : label is 32;
  attribute DATA_BITS : integer;
  attribute DATA_BITS of inst : label is 10;
  attribute DATA_DELAY_INSIDE : string;
  attribute DATA_DELAY_INSIDE of inst : label is "1'b1";
  attribute DATA_DELAY_NTAPS : integer;
  attribute DATA_DELAY_NTAPS of inst : label is 200;
  attribute HS_SETTLE_DELAY : integer;
  attribute HS_SETTLE_DELAY of inst : label is 20;
  attribute LANES_NUM : integer;
  attribute LANES_NUM of inst : label is 4;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of dphy_clk_n : signal is "xilinx.com:signal:clock:1.0 dphy_clk_n CLK, xilinx.com:interface:mipi_phy:1.0 mipi_rx CLK_N";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dphy_clk_n : signal is "XIL_INTERFACENAME dphy_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dphy_clk_p : signal is "xilinx.com:signal:clock:1.0 dphy_clk_p CLK, xilinx.com:interface:mipi_phy:1.0 mipi_rx CLK_P";
  attribute X_INTERFACE_PARAMETER of dphy_clk_p : signal is "XIL_INTERFACENAME dphy_clk_p, ASSOCIATED_BUSIF mipi_rx, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn:irq, FREQ_HZ 99999000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of vid_active_video : signal is "xilinx.com:interface:vid_io:1.0 video ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vid_ce : signal is "xilinx.com:signal:clockenable:1.0 vid_ce CE";
  attribute X_INTERFACE_PARAMETER of vid_ce : signal is "XIL_INTERFACENAME vid_ce, FREQ_HZ 100000000, PHASE 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of vid_clk : signal is "xilinx.com:signal:clock:1.0 vid_clk CLK";
  attribute X_INTERFACE_PARAMETER of vid_clk : signal is "XIL_INTERFACENAME vid_clk, ASSOCIATED_BUSIF video, ASSOCIATED_RESET vid_ce, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_mipi_rx_to_video_0_0_vid_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_vsync : signal is "xilinx.com:interface:vid_io:1.0 video VSYNC";
  attribute X_INTERFACE_INFO of dphy_data_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_rx DATA_N";
  attribute X_INTERFACE_INFO of dphy_data_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_rx DATA_P";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of vid_data : signal is "xilinx.com:interface:vid_io:1.0 video DATA";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_mipi_rx_to_video_0_0_mipi_rx_to_video_v1_0
     port map (
      dphy_clk_n => dphy_clk_n,
      dphy_clk_p => dphy_clk_p,
      dphy_data_n(3 downto 0) => dphy_data_n(3 downto 0),
      dphy_data_p(3 downto 0) => dphy_data_p(3 downto 0),
      irq => irq,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(6 downto 2) => s00_axi_araddr(6 downto 2),
      s00_axi_araddr(1 downto 0) => B"00",
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arprot(2 downto 0) => B"000",
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(6 downto 2) => s00_axi_awaddr(6 downto 2),
      s00_axi_awaddr(1 downto 0) => B"00",
      s00_axi_awprot(2 downto 0) => B"000",
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bresp(1 downto 0) => NLW_inst_s00_axi_bresp_UNCONNECTED(1 downto 0),
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rresp(1 downto 0) => NLW_inst_s00_axi_rresp_UNCONNECTED(1 downto 0),
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 2) => B"000000000000000000000000000000",
      s00_axi_wdata(1 downto 0) => s00_axi_wdata(1 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => B"0000",
      s00_axi_wvalid => s00_axi_wvalid,
      vid_active_video => vid_active_video,
      vid_ce => vid_ce,
      vid_clk => vid_clk,
      vid_data(39 downto 0) => vid_data(39 downto 0),
      vid_locked => vid_locked,
      vid_vsync => vid_vsync
    );
end STRUCTURE;
