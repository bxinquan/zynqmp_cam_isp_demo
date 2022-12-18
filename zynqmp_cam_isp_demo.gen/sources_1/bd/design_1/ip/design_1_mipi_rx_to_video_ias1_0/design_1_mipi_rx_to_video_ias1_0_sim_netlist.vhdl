-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sat Dec 17 00:28:45 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_mipi_rx_to_video_ias1_0/design_1_mipi_rx_to_video_ias1_0_sim_netlist.vhdl
-- Design      : design_1_mipi_rx_to_video_ias1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_ias1_0__csi2_lanes_aligner\ is
  port (
    align_flag_reg_0 : out STD_LOGIC;
    module_reset_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \align_idx_reg[1][1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \align_idx_reg[0][1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \head_clk_idx_reg[0]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    align_flag_reg_1 : out STD_LOGIC;
    \lane_buf_reg[2][15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[1][15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[0][15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[6][15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[5][15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[4][15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[3][15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    align_flag_reg_2 : in STD_LOGIC;
    clk_hs_byte : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    byte_data_valid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    module_reset : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \align_idx_reg[0][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[0][1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \lane_buf_reg[0][15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[1][15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[2][15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[3][15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[4][15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[5][15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[6][15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[7][15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \align_idx_reg[1][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[1][1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_ias1_0__csi2_lanes_aligner\ : entity is "_csi2_lanes_aligner";
end \design_1_mipi_rx_to_video_ias1_0__csi2_lanes_aligner\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_ias1_0__csi2_lanes_aligner\ is
  signal \^align_flag_reg_0\ : STD_LOGIC;
  signal \^align_flag_reg_1\ : STD_LOGIC;
  signal \align_idx[0][2]_i_2_n_0\ : STD_LOGIC;
  signal \align_idx[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \^align_idx_reg[0][1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \align_idx_reg[0]_0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^align_idx_reg[1][1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \align_idx_reg[1]_9\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \head_clk_idx[0]_i_3_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_4_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_5_n_0\ : STD_LOGIC;
  signal \head_word[16]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[16]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[17]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[17]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[18]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[18]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[19]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[19]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[20]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[20]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[21]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[21]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[22]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[22]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[23]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[23]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[24]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[24]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[25]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[25]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[26]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[26]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[27]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[27]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[28]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[28]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[29]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[29]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[30]_i_3_n_0\ : STD_LOGIC;
  signal \head_word[30]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[31]_i_4_n_0\ : STD_LOGIC;
  signal \head_word[31]_i_5_n_0\ : STD_LOGIC;
  signal \head_word_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \head_word_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \^lane_buf_reg[0][15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^lane_buf_reg[1][15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^lane_buf_reg[2][15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^lane_buf_reg[3][15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^lane_buf_reg[4][15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^lane_buf_reg[5][15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^lane_buf_reg[6][15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lane_buf_reg[7]_8\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^module_reset_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_byte[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_byte[10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_byte[11]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_byte[12]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_byte[13]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data_byte[14]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_byte[15]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_byte[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_byte[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_byte[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_byte[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_byte[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_byte[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_byte[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_byte[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_byte[9]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \head_word[16]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \head_word[17]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \head_word[18]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \head_word[19]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \head_word[20]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \head_word[21]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \head_word[22]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \head_word[23]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \head_word[24]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \head_word[25]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \head_word[26]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \head_word[27]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \head_word[28]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \head_word[29]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \head_word[30]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \head_word[31]_i_2\ : label is "soft_lutpair35";
begin
  align_flag_reg_0 <= \^align_flag_reg_0\;
  align_flag_reg_1 <= \^align_flag_reg_1\;
  \align_idx_reg[0][1]_0\(1 downto 0) <= \^align_idx_reg[0][1]_0\(1 downto 0);
  \align_idx_reg[1][1]_0\(1 downto 0) <= \^align_idx_reg[1][1]_0\(1 downto 0);
  \lane_buf_reg[0][15]_0\(15 downto 0) <= \^lane_buf_reg[0][15]_0\(15 downto 0);
  \lane_buf_reg[1][15]_0\(15 downto 0) <= \^lane_buf_reg[1][15]_0\(15 downto 0);
  \lane_buf_reg[2][15]_0\(15 downto 0) <= \^lane_buf_reg[2][15]_0\(15 downto 0);
  \lane_buf_reg[3][15]_0\(15 downto 0) <= \^lane_buf_reg[3][15]_0\(15 downto 0);
  \lane_buf_reg[4][15]_0\(15 downto 0) <= \^lane_buf_reg[4][15]_0\(15 downto 0);
  \lane_buf_reg[5][15]_0\(15 downto 0) <= \^lane_buf_reg[5][15]_0\(15 downto 0);
  \lane_buf_reg[6][15]_0\(15 downto 0) <= \^lane_buf_reg[6][15]_0\(15 downto 0);
  module_reset_reg <= \^module_reset_reg\;
align_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => align_flag_reg_2,
      Q => \^align_flag_reg_0\
    );
\align_idx[0][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEEE000"
    )
        port map (
      I0 => byte_data_valid(0),
      I1 => byte_data_valid(1),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^align_idx_reg[0][1]_0\(0),
      I4 => \align_idx_reg[0]_0\(2),
      O => \align_idx[0][2]_i_2_n_0\
    );
\align_idx[1][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEEE000"
    )
        port map (
      I0 => byte_data_valid(0),
      I1 => byte_data_valid(1),
      I2 => \^align_idx_reg[1][1]_0\(0),
      I3 => \^align_idx_reg[1][1]_0\(1),
      I4 => \align_idx_reg[1]_9\(2),
      O => \align_idx[1][2]_i_2_n_0\
    );
\align_idx_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[0][0]_0\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx_reg[0][1]_1\(0),
      Q => \^align_idx_reg[0][1]_0\(0)
    );
\align_idx_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[0][0]_0\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx_reg[0][1]_1\(1),
      Q => \^align_idx_reg[0][1]_0\(1)
    );
\align_idx_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[0][0]_0\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx[0][2]_i_2_n_0\,
      Q => \align_idx_reg[0]_0\(2)
    );
\align_idx_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[1][0]_0\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx_reg[1][1]_1\(0),
      Q => \^align_idx_reg[1][1]_0\(0)
    );
\align_idx_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[1][0]_0\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx_reg[1][1]_1\(1),
      Q => \^align_idx_reg[1][1]_0\(1)
    );
\align_idx_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \align_idx_reg[1][0]_0\(0),
      CLR => \^module_reset_reg\,
      D => \align_idx[1][2]_i_2_n_0\,
      Q => \align_idx_reg[1]_9\(2)
    );
\data_byte[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[16]_i_2_n_0\,
      O => D(0)
    );
\data_byte[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[26]_i_2_n_0\,
      O => D(10)
    );
\data_byte[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[27]_i_2_n_0\,
      O => D(11)
    );
\data_byte[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[28]_i_2_n_0\,
      O => D(12)
    );
\data_byte[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[29]_i_2_n_0\,
      O => D(13)
    );
\data_byte[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[30]_i_2_n_0\,
      O => D(14)
    );
\data_byte[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[31]_i_3_n_0\,
      O => D(15)
    );
\data_byte[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[17]_i_2_n_0\,
      O => D(1)
    );
\data_byte[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[18]_i_2_n_0\,
      O => D(2)
    );
\data_byte[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[19]_i_2_n_0\,
      O => D(3)
    );
\data_byte[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[20]_i_2_n_0\,
      O => D(4)
    );
\data_byte[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[21]_i_2_n_0\,
      O => D(5)
    );
\data_byte[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[22]_i_2_n_0\,
      O => D(6)
    );
\data_byte[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[23]_i_2_n_0\,
      O => D(7)
    );
\data_byte[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[24]_i_2_n_0\,
      O => D(8)
    );
\data_byte[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^align_flag_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \head_word_reg[25]_i_2_n_0\,
      O => D(9)
    );
\head_clk_idx[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \head_clk_idx[0]_i_3_n_0\,
      I1 => \head_clk_idx[0]_i_4_n_0\,
      I2 => \head_clk_idx[0]_i_5_n_0\,
      I3 => \head_word_reg[17]_i_2_n_0\,
      I4 => \head_word_reg[29]_i_2_n_0\,
      I5 => \head_word_reg[19]_i_2_n_0\,
      O => \^align_flag_reg_1\
    );
\head_clk_idx[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \head_word_reg[26]_i_2_n_0\,
      I1 => \^align_flag_reg_0\,
      I2 => \head_word_reg[20]_i_2_n_0\,
      I3 => \head_word_reg[27]_i_2_n_0\,
      I4 => \head_word_reg[23]_i_2_n_0\,
      I5 => \head_word_reg[30]_i_2_n_0\,
      O => \head_clk_idx[0]_i_3_n_0\
    );
\head_clk_idx[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \head_word_reg[18]_i_2_n_0\,
      I1 => \head_word_reg[22]_i_2_n_0\,
      I2 => \head_word_reg[28]_i_2_n_0\,
      I3 => \head_word_reg[31]_i_3_n_0\,
      O => \head_clk_idx[0]_i_4_n_0\
    );
\head_clk_idx[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \head_word_reg[24]_i_2_n_0\,
      I1 => \head_word_reg[16]_i_2_n_0\,
      I2 => \head_word_reg[25]_i_2_n_0\,
      I3 => \head_word_reg[21]_i_2_n_0\,
      O => \head_clk_idx[0]_i_5_n_0\
    );
\head_word[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[16]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(0)
    );
\head_word[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(0),
      I1 => \^lane_buf_reg[1][15]_0\(0),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(0),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(0),
      O => \head_word[16]_i_3_n_0\
    );
\head_word[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(0),
      I1 => \^lane_buf_reg[5][15]_0\(0),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(0),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(0),
      O => \head_word[16]_i_4_n_0\
    );
\head_word[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[17]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(1)
    );
\head_word[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(1),
      I1 => \^lane_buf_reg[1][15]_0\(1),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(1),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(1),
      O => \head_word[17]_i_3_n_0\
    );
\head_word[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(1),
      I1 => \^lane_buf_reg[5][15]_0\(1),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(1),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(1),
      O => \head_word[17]_i_4_n_0\
    );
\head_word[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[18]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(2)
    );
\head_word[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(2),
      I1 => \^lane_buf_reg[1][15]_0\(2),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(2),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(2),
      O => \head_word[18]_i_3_n_0\
    );
\head_word[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(2),
      I1 => \^lane_buf_reg[5][15]_0\(2),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(2),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(2),
      O => \head_word[18]_i_4_n_0\
    );
\head_word[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[19]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(3)
    );
\head_word[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(3),
      I1 => \^lane_buf_reg[1][15]_0\(3),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(3),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(3),
      O => \head_word[19]_i_3_n_0\
    );
\head_word[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(3),
      I1 => \^lane_buf_reg[5][15]_0\(3),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(3),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(3),
      O => \head_word[19]_i_4_n_0\
    );
\head_word[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[20]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(4)
    );
\head_word[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(4),
      I1 => \^lane_buf_reg[1][15]_0\(4),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(4),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(4),
      O => \head_word[20]_i_3_n_0\
    );
\head_word[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(4),
      I1 => \^lane_buf_reg[5][15]_0\(4),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(4),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(4),
      O => \head_word[20]_i_4_n_0\
    );
\head_word[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[21]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(5)
    );
\head_word[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(5),
      I1 => \^lane_buf_reg[1][15]_0\(5),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(5),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(5),
      O => \head_word[21]_i_3_n_0\
    );
\head_word[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(5),
      I1 => \^lane_buf_reg[5][15]_0\(5),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(5),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(5),
      O => \head_word[21]_i_4_n_0\
    );
\head_word[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[22]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(6)
    );
\head_word[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(6),
      I1 => \^lane_buf_reg[1][15]_0\(6),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(6),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(6),
      O => \head_word[22]_i_3_n_0\
    );
\head_word[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(6),
      I1 => \^lane_buf_reg[5][15]_0\(6),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(6),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(6),
      O => \head_word[22]_i_4_n_0\
    );
\head_word[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[23]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(7)
    );
\head_word[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(7),
      I1 => \^lane_buf_reg[1][15]_0\(7),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(7),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(7),
      O => \head_word[23]_i_3_n_0\
    );
\head_word[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(7),
      I1 => \^lane_buf_reg[5][15]_0\(7),
      I2 => \^align_idx_reg[0][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(7),
      I4 => \^align_idx_reg[0][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(7),
      O => \head_word[23]_i_4_n_0\
    );
\head_word[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[24]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(8)
    );
\head_word[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(8),
      I1 => \^lane_buf_reg[1][15]_0\(8),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(8),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(8),
      O => \head_word[24]_i_3_n_0\
    );
\head_word[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(8),
      I1 => \^lane_buf_reg[5][15]_0\(8),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(8),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(8),
      O => \head_word[24]_i_4_n_0\
    );
\head_word[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[25]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(9)
    );
\head_word[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(9),
      I1 => \^lane_buf_reg[1][15]_0\(9),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(9),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(9),
      O => \head_word[25]_i_3_n_0\
    );
\head_word[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(9),
      I1 => \^lane_buf_reg[5][15]_0\(9),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(9),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(9),
      O => \head_word[25]_i_4_n_0\
    );
\head_word[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[26]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(10)
    );
\head_word[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(10),
      I1 => \^lane_buf_reg[1][15]_0\(10),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(10),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(10),
      O => \head_word[26]_i_3_n_0\
    );
\head_word[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(10),
      I1 => \^lane_buf_reg[5][15]_0\(10),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(10),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(10),
      O => \head_word[26]_i_4_n_0\
    );
\head_word[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[27]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(11)
    );
\head_word[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(11),
      I1 => \^lane_buf_reg[1][15]_0\(11),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(11),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(11),
      O => \head_word[27]_i_3_n_0\
    );
\head_word[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(11),
      I1 => \^lane_buf_reg[5][15]_0\(11),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(11),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(11),
      O => \head_word[27]_i_4_n_0\
    );
\head_word[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[28]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(12)
    );
\head_word[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(12),
      I1 => \^lane_buf_reg[1][15]_0\(12),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(12),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(12),
      O => \head_word[28]_i_3_n_0\
    );
\head_word[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(12),
      I1 => \^lane_buf_reg[5][15]_0\(12),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(12),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(12),
      O => \head_word[28]_i_4_n_0\
    );
\head_word[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[29]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(13)
    );
\head_word[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(13),
      I1 => \^lane_buf_reg[1][15]_0\(13),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(13),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(13),
      O => \head_word[29]_i_3_n_0\
    );
\head_word[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(13),
      I1 => \^lane_buf_reg[5][15]_0\(13),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(13),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(13),
      O => \head_word[29]_i_4_n_0\
    );
\head_word[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[30]_i_2_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(14)
    );
\head_word[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(14),
      I1 => \^lane_buf_reg[1][15]_0\(14),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(14),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(14),
      O => \head_word[30]_i_3_n_0\
    );
\head_word[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(14),
      I1 => \^lane_buf_reg[5][15]_0\(14),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(14),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(14),
      O => \head_word[30]_i_4_n_0\
    );
\head_word[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55544444"
    )
        port map (
      I0 => \head_word_reg[31]_i_3_n_0\,
      I1 => \^align_flag_reg_1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^align_flag_reg_0\,
      O => \head_clk_idx_reg[0]\(15)
    );
\head_word[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[2][15]_0\(15),
      I1 => \^lane_buf_reg[1][15]_0\(15),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[0][15]_0\(15),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \lane_buf_reg[7]_8\(15),
      O => \head_word[31]_i_4_n_0\
    );
\head_word[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^lane_buf_reg[6][15]_0\(15),
      I1 => \^lane_buf_reg[5][15]_0\(15),
      I2 => \^align_idx_reg[1][1]_0\(1),
      I3 => \^lane_buf_reg[4][15]_0\(15),
      I4 => \^align_idx_reg[1][1]_0\(0),
      I5 => \^lane_buf_reg[3][15]_0\(15),
      O => \head_word[31]_i_5_n_0\
    );
\head_word_reg[16]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[16]_i_3_n_0\,
      I1 => \head_word[16]_i_4_n_0\,
      O => \head_word_reg[16]_i_2_n_0\,
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[17]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[17]_i_3_n_0\,
      I1 => \head_word[17]_i_4_n_0\,
      O => \head_word_reg[17]_i_2_n_0\,
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[18]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[18]_i_3_n_0\,
      I1 => \head_word[18]_i_4_n_0\,
      O => \head_word_reg[18]_i_2_n_0\,
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[19]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[19]_i_3_n_0\,
      I1 => \head_word[19]_i_4_n_0\,
      O => \head_word_reg[19]_i_2_n_0\,
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[20]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[20]_i_3_n_0\,
      I1 => \head_word[20]_i_4_n_0\,
      O => \head_word_reg[20]_i_2_n_0\,
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[21]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[21]_i_3_n_0\,
      I1 => \head_word[21]_i_4_n_0\,
      O => \head_word_reg[21]_i_2_n_0\,
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[22]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[22]_i_3_n_0\,
      I1 => \head_word[22]_i_4_n_0\,
      O => \head_word_reg[22]_i_2_n_0\,
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[23]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[23]_i_3_n_0\,
      I1 => \head_word[23]_i_4_n_0\,
      O => \head_word_reg[23]_i_2_n_0\,
      S => \align_idx_reg[0]_0\(2)
    );
\head_word_reg[24]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[24]_i_3_n_0\,
      I1 => \head_word[24]_i_4_n_0\,
      O => \head_word_reg[24]_i_2_n_0\,
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[25]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[25]_i_3_n_0\,
      I1 => \head_word[25]_i_4_n_0\,
      O => \head_word_reg[25]_i_2_n_0\,
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[26]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[26]_i_3_n_0\,
      I1 => \head_word[26]_i_4_n_0\,
      O => \head_word_reg[26]_i_2_n_0\,
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[27]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[27]_i_3_n_0\,
      I1 => \head_word[27]_i_4_n_0\,
      O => \head_word_reg[27]_i_2_n_0\,
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[28]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[28]_i_3_n_0\,
      I1 => \head_word[28]_i_4_n_0\,
      O => \head_word_reg[28]_i_2_n_0\,
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[29]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[29]_i_3_n_0\,
      I1 => \head_word[29]_i_4_n_0\,
      O => \head_word_reg[29]_i_2_n_0\,
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[30]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[30]_i_3_n_0\,
      I1 => \head_word[30]_i_4_n_0\,
      O => \head_word_reg[30]_i_2_n_0\,
      S => \align_idx_reg[1]_9\(2)
    );
\head_word_reg[31]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \head_word[31]_i_4_n_0\,
      I1 => \head_word[31]_i_5_n_0\,
      O => \head_word_reg[31]_i_3_n_0\,
      S => \align_idx_reg[1]_9\(2)
    );
\lane_buf_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(0),
      Q => \^lane_buf_reg[0][15]_0\(0)
    );
\lane_buf_reg[0][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(10),
      Q => \^lane_buf_reg[0][15]_0\(10)
    );
\lane_buf_reg[0][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(11),
      Q => \^lane_buf_reg[0][15]_0\(11)
    );
\lane_buf_reg[0][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(12),
      Q => \^lane_buf_reg[0][15]_0\(12)
    );
\lane_buf_reg[0][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(13),
      Q => \^lane_buf_reg[0][15]_0\(13)
    );
\lane_buf_reg[0][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(14),
      Q => \^lane_buf_reg[0][15]_0\(14)
    );
\lane_buf_reg[0][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(15),
      Q => \^lane_buf_reg[0][15]_0\(15)
    );
\lane_buf_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(1),
      Q => \^lane_buf_reg[0][15]_0\(1)
    );
\lane_buf_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(2),
      Q => \^lane_buf_reg[0][15]_0\(2)
    );
\lane_buf_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(3),
      Q => \^lane_buf_reg[0][15]_0\(3)
    );
\lane_buf_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(4),
      Q => \^lane_buf_reg[0][15]_0\(4)
    );
\lane_buf_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(5),
      Q => \^lane_buf_reg[0][15]_0\(5)
    );
\lane_buf_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(6),
      Q => \^lane_buf_reg[0][15]_0\(6)
    );
\lane_buf_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(7),
      Q => \^lane_buf_reg[0][15]_0\(7)
    );
\lane_buf_reg[0][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(8),
      Q => \^lane_buf_reg[0][15]_0\(8)
    );
\lane_buf_reg[0][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[0][15]_1\(9),
      Q => \^lane_buf_reg[0][15]_0\(9)
    );
\lane_buf_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(0),
      Q => \^lane_buf_reg[1][15]_0\(0)
    );
\lane_buf_reg[1][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(10),
      Q => \^lane_buf_reg[1][15]_0\(10)
    );
\lane_buf_reg[1][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(11),
      Q => \^lane_buf_reg[1][15]_0\(11)
    );
\lane_buf_reg[1][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(12),
      Q => \^lane_buf_reg[1][15]_0\(12)
    );
\lane_buf_reg[1][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(13),
      Q => \^lane_buf_reg[1][15]_0\(13)
    );
\lane_buf_reg[1][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(14),
      Q => \^lane_buf_reg[1][15]_0\(14)
    );
\lane_buf_reg[1][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(15),
      Q => \^lane_buf_reg[1][15]_0\(15)
    );
\lane_buf_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(1),
      Q => \^lane_buf_reg[1][15]_0\(1)
    );
\lane_buf_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(2),
      Q => \^lane_buf_reg[1][15]_0\(2)
    );
\lane_buf_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(3),
      Q => \^lane_buf_reg[1][15]_0\(3)
    );
\lane_buf_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(4),
      Q => \^lane_buf_reg[1][15]_0\(4)
    );
\lane_buf_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(5),
      Q => \^lane_buf_reg[1][15]_0\(5)
    );
\lane_buf_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(6),
      Q => \^lane_buf_reg[1][15]_0\(6)
    );
\lane_buf_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(7),
      Q => \^lane_buf_reg[1][15]_0\(7)
    );
\lane_buf_reg[1][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(8),
      Q => \^lane_buf_reg[1][15]_0\(8)
    );
\lane_buf_reg[1][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[1][15]_1\(9),
      Q => \^lane_buf_reg[1][15]_0\(9)
    );
\lane_buf_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(0),
      Q => \^lane_buf_reg[2][15]_0\(0)
    );
\lane_buf_reg[2][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(10),
      Q => \^lane_buf_reg[2][15]_0\(10)
    );
\lane_buf_reg[2][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(11),
      Q => \^lane_buf_reg[2][15]_0\(11)
    );
\lane_buf_reg[2][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(12),
      Q => \^lane_buf_reg[2][15]_0\(12)
    );
\lane_buf_reg[2][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(13),
      Q => \^lane_buf_reg[2][15]_0\(13)
    );
\lane_buf_reg[2][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(14),
      Q => \^lane_buf_reg[2][15]_0\(14)
    );
\lane_buf_reg[2][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(15),
      Q => \^lane_buf_reg[2][15]_0\(15)
    );
\lane_buf_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(1),
      Q => \^lane_buf_reg[2][15]_0\(1)
    );
\lane_buf_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(2),
      Q => \^lane_buf_reg[2][15]_0\(2)
    );
\lane_buf_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(3),
      Q => \^lane_buf_reg[2][15]_0\(3)
    );
\lane_buf_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(4),
      Q => \^lane_buf_reg[2][15]_0\(4)
    );
\lane_buf_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(5),
      Q => \^lane_buf_reg[2][15]_0\(5)
    );
\lane_buf_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(6),
      Q => \^lane_buf_reg[2][15]_0\(6)
    );
\lane_buf_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(7),
      Q => \^lane_buf_reg[2][15]_0\(7)
    );
\lane_buf_reg[2][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(8),
      Q => \^lane_buf_reg[2][15]_0\(8)
    );
\lane_buf_reg[2][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[2][15]_1\(9),
      Q => \^lane_buf_reg[2][15]_0\(9)
    );
\lane_buf_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(0),
      Q => \^lane_buf_reg[3][15]_0\(0)
    );
\lane_buf_reg[3][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(10),
      Q => \^lane_buf_reg[3][15]_0\(10)
    );
\lane_buf_reg[3][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(11),
      Q => \^lane_buf_reg[3][15]_0\(11)
    );
\lane_buf_reg[3][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(12),
      Q => \^lane_buf_reg[3][15]_0\(12)
    );
\lane_buf_reg[3][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(13),
      Q => \^lane_buf_reg[3][15]_0\(13)
    );
\lane_buf_reg[3][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(14),
      Q => \^lane_buf_reg[3][15]_0\(14)
    );
\lane_buf_reg[3][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(15),
      Q => \^lane_buf_reg[3][15]_0\(15)
    );
\lane_buf_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(1),
      Q => \^lane_buf_reg[3][15]_0\(1)
    );
\lane_buf_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(2),
      Q => \^lane_buf_reg[3][15]_0\(2)
    );
\lane_buf_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(3),
      Q => \^lane_buf_reg[3][15]_0\(3)
    );
\lane_buf_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(4),
      Q => \^lane_buf_reg[3][15]_0\(4)
    );
\lane_buf_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(5),
      Q => \^lane_buf_reg[3][15]_0\(5)
    );
\lane_buf_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(6),
      Q => \^lane_buf_reg[3][15]_0\(6)
    );
\lane_buf_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(7),
      Q => \^lane_buf_reg[3][15]_0\(7)
    );
\lane_buf_reg[3][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(8),
      Q => \^lane_buf_reg[3][15]_0\(8)
    );
\lane_buf_reg[3][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[3][15]_1\(9),
      Q => \^lane_buf_reg[3][15]_0\(9)
    );
\lane_buf_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(0),
      Q => \^lane_buf_reg[4][15]_0\(0)
    );
\lane_buf_reg[4][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(10),
      Q => \^lane_buf_reg[4][15]_0\(10)
    );
\lane_buf_reg[4][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(11),
      Q => \^lane_buf_reg[4][15]_0\(11)
    );
\lane_buf_reg[4][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(12),
      Q => \^lane_buf_reg[4][15]_0\(12)
    );
\lane_buf_reg[4][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(13),
      Q => \^lane_buf_reg[4][15]_0\(13)
    );
\lane_buf_reg[4][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(14),
      Q => \^lane_buf_reg[4][15]_0\(14)
    );
\lane_buf_reg[4][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(15),
      Q => \^lane_buf_reg[4][15]_0\(15)
    );
\lane_buf_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(1),
      Q => \^lane_buf_reg[4][15]_0\(1)
    );
\lane_buf_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(2),
      Q => \^lane_buf_reg[4][15]_0\(2)
    );
\lane_buf_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(3),
      Q => \^lane_buf_reg[4][15]_0\(3)
    );
\lane_buf_reg[4][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(4),
      Q => \^lane_buf_reg[4][15]_0\(4)
    );
\lane_buf_reg[4][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(5),
      Q => \^lane_buf_reg[4][15]_0\(5)
    );
\lane_buf_reg[4][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(6),
      Q => \^lane_buf_reg[4][15]_0\(6)
    );
\lane_buf_reg[4][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(7),
      Q => \^lane_buf_reg[4][15]_0\(7)
    );
\lane_buf_reg[4][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(8),
      Q => \^lane_buf_reg[4][15]_0\(8)
    );
\lane_buf_reg[4][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[4][15]_1\(9),
      Q => \^lane_buf_reg[4][15]_0\(9)
    );
\lane_buf_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(0),
      Q => \^lane_buf_reg[5][15]_0\(0)
    );
\lane_buf_reg[5][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(10),
      Q => \^lane_buf_reg[5][15]_0\(10)
    );
\lane_buf_reg[5][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(11),
      Q => \^lane_buf_reg[5][15]_0\(11)
    );
\lane_buf_reg[5][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(12),
      Q => \^lane_buf_reg[5][15]_0\(12)
    );
\lane_buf_reg[5][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(13),
      Q => \^lane_buf_reg[5][15]_0\(13)
    );
\lane_buf_reg[5][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(14),
      Q => \^lane_buf_reg[5][15]_0\(14)
    );
\lane_buf_reg[5][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(15),
      Q => \^lane_buf_reg[5][15]_0\(15)
    );
\lane_buf_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(1),
      Q => \^lane_buf_reg[5][15]_0\(1)
    );
\lane_buf_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(2),
      Q => \^lane_buf_reg[5][15]_0\(2)
    );
\lane_buf_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(3),
      Q => \^lane_buf_reg[5][15]_0\(3)
    );
\lane_buf_reg[5][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(4),
      Q => \^lane_buf_reg[5][15]_0\(4)
    );
\lane_buf_reg[5][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(5),
      Q => \^lane_buf_reg[5][15]_0\(5)
    );
\lane_buf_reg[5][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(6),
      Q => \^lane_buf_reg[5][15]_0\(6)
    );
\lane_buf_reg[5][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(7),
      Q => \^lane_buf_reg[5][15]_0\(7)
    );
\lane_buf_reg[5][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(8),
      Q => \^lane_buf_reg[5][15]_0\(8)
    );
\lane_buf_reg[5][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[5][15]_1\(9),
      Q => \^lane_buf_reg[5][15]_0\(9)
    );
\lane_buf_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(0),
      Q => \^lane_buf_reg[6][15]_0\(0)
    );
\lane_buf_reg[6][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(10),
      Q => \^lane_buf_reg[6][15]_0\(10)
    );
\lane_buf_reg[6][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(11),
      Q => \^lane_buf_reg[6][15]_0\(11)
    );
\lane_buf_reg[6][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(12),
      Q => \^lane_buf_reg[6][15]_0\(12)
    );
\lane_buf_reg[6][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(13),
      Q => \^lane_buf_reg[6][15]_0\(13)
    );
\lane_buf_reg[6][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(14),
      Q => \^lane_buf_reg[6][15]_0\(14)
    );
\lane_buf_reg[6][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(15),
      Q => \^lane_buf_reg[6][15]_0\(15)
    );
\lane_buf_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(1),
      Q => \^lane_buf_reg[6][15]_0\(1)
    );
\lane_buf_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(2),
      Q => \^lane_buf_reg[6][15]_0\(2)
    );
\lane_buf_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(3),
      Q => \^lane_buf_reg[6][15]_0\(3)
    );
\lane_buf_reg[6][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(4),
      Q => \^lane_buf_reg[6][15]_0\(4)
    );
\lane_buf_reg[6][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(5),
      Q => \^lane_buf_reg[6][15]_0\(5)
    );
\lane_buf_reg[6][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(6),
      Q => \^lane_buf_reg[6][15]_0\(6)
    );
\lane_buf_reg[6][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(7),
      Q => \^lane_buf_reg[6][15]_0\(7)
    );
\lane_buf_reg[6][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(8),
      Q => \^lane_buf_reg[6][15]_0\(8)
    );
\lane_buf_reg[6][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[6][15]_1\(9),
      Q => \^lane_buf_reg[6][15]_0\(9)
    );
\lane_buf_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(0),
      Q => \lane_buf_reg[7]_8\(0)
    );
\lane_buf_reg[7][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(10),
      Q => \lane_buf_reg[7]_8\(10)
    );
\lane_buf_reg[7][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(11),
      Q => \lane_buf_reg[7]_8\(11)
    );
\lane_buf_reg[7][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(12),
      Q => \lane_buf_reg[7]_8\(12)
    );
\lane_buf_reg[7][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(13),
      Q => \lane_buf_reg[7]_8\(13)
    );
\lane_buf_reg[7][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(14),
      Q => \lane_buf_reg[7]_8\(14)
    );
\lane_buf_reg[7][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(15),
      Q => \lane_buf_reg[7]_8\(15)
    );
\lane_buf_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(1),
      Q => \lane_buf_reg[7]_8\(1)
    );
\lane_buf_reg[7][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(2),
      Q => \lane_buf_reg[7]_8\(2)
    );
\lane_buf_reg[7][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(3),
      Q => \lane_buf_reg[7]_8\(3)
    );
\lane_buf_reg[7][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(4),
      Q => \lane_buf_reg[7]_8\(4)
    );
\lane_buf_reg[7][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(5),
      Q => \lane_buf_reg[7]_8\(5)
    );
\lane_buf_reg[7][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(6),
      Q => \lane_buf_reg[7]_8\(6)
    );
\lane_buf_reg[7][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(7),
      Q => \lane_buf_reg[7]_8\(7)
    );
\lane_buf_reg[7][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(8),
      Q => \lane_buf_reg[7]_8\(8)
    );
\lane_buf_reg[7][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^module_reset_reg\,
      D => \lane_buf_reg[7][15]_0\(9),
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
entity \design_1_mipi_rx_to_video_ias1_0__csi2_packet_decoder\ is
  port (
    pkt_valid : out STD_LOGIC;
    reg_pix_valid_reg : out STD_LOGIC;
    \data_id_2_reg[4]_0\ : out STD_LOGIC;
    reg_pix_valid_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    data_flag_2_reg_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_flag_2_reg_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \head_clk_idx_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_byte_2_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_byte_2_reg[15]_1\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_hs_byte : in STD_LOGIC;
    \data_byte_2_reg[0]_0\ : in STD_LOGIC;
    raw10_pix_valid : in STD_LOGIC;
    raw10_pix_data_enable : in STD_LOGIC;
    \di_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \head_word_reg[0]_0\ : in STD_LOGIC;
    \head_clk_idx_reg[0]_0\ : in STD_LOGIC;
    \head_word_reg[31]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_byte_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_ias1_0__csi2_packet_decoder\ : entity is "_csi2_packet_decoder";
end \design_1_mipi_rx_to_video_ias1_0__csi2_packet_decoder\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_ias1_0__csi2_packet_decoder\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal data0 : STD_LOGIC;
  signal data_byte : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \data_byte_2[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_byte_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_byte_2[9]_i_1_n_0\ : STD_LOGIC;
  signal \^data_byte_2_reg[15]_1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_count_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal \data_count_2[15]_i_6_n_0\ : STD_LOGIC;
  signal \data_count_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_2[9]_i_1_n_0\ : STD_LOGIC;
  signal data_flag : STD_LOGIC;
  signal data_flag0 : STD_LOGIC;
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
  signal data_flag_2_i_2_n_0 : STD_LOGIC;
  signal \^data_flag_2_reg_1\ : STD_LOGIC;
  signal data_id_2 : STD_LOGIC_VECTOR ( 4 downto 2 );
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
  signal data_index_2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \data_index_2[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_index_2[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_index_2[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_index_2[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_index_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_index_2[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_index_2[9]_i_1_n_0\ : STD_LOGIC;
  signal \head_clk_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \head_clk_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \^head_clk_idx_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
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
  signal \head_word_reg_n_0_[22]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[23]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[24]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[25]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[26]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[27]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[28]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[29]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[2]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[30]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[31]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[6]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[7]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[8]\ : STD_LOGIC;
  signal \head_word_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal p_2_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^pkt_valid\ : STD_LOGIC;
  signal reg_pix_data_enable_i_2_n_0 : STD_LOGIC;
  signal reg_pix_data_enable_i_3_n_0 : STD_LOGIC;
  signal reg_pix_data_enable_i_4_n_0 : STD_LOGIC;
  signal reg_pix_data_enable_i_5_n_0 : STD_LOGIC;
  signal NLW_data_flag_20_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_byte_2[15]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_count_2[15]_i_5\ : label is "soft_lutpair39";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of data_flag_20_carry : label is 11;
  attribute SOFT_HLUTNM of data_flag_2_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of data_flag_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data_id_2[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \data_id_2[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \data_id_2[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_id_2[3]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_id_2[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \data_id_2[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \data_id_2[6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \data_id_2[7]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \data_id_2[7]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data_index_2[11]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \data_index_2[12]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \data_index_2[13]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_index_2[14]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_index_2[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \data_index_2[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \data_index_2[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data_index_2[4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data_index_2[6]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \data_index_2[7]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \data_index_2[8]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data_index_2[9]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \di_reg[6]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \di_reg[7]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \di_reg[7]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \head_clk_idx[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \last_data[16]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \last_data[17]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \last_data[18]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \last_data[19]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \last_data[20]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \last_data[21]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \last_data[22]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \last_data[23]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \last_data[24]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \last_data[25]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \last_data[26]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \last_data[27]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \last_data[28]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \last_data[29]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \last_data[30]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \last_data[31]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \last_data[31]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \ready_delay[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \reg_pix_di[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \reg_pix_di[4]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \reg_pix_valid_i_1__0\ : label is "soft_lutpair48";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  \data_byte_2_reg[15]_1\(15 downto 0) <= \^data_byte_2_reg[15]_1\(15 downto 0);
  data_flag_2_reg_1 <= \^data_flag_2_reg_1\;
  \data_id_2_reg[4]_0\ <= \^data_id_2_reg[4]_0\;
  \head_clk_idx_reg[1]_0\(1 downto 0) <= \^head_clk_idx_reg[1]_0\(1 downto 0);
  pkt_valid <= \^pkt_valid\;
\data_byte_2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(0),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[0]_i_1_n_0\
    );
\data_byte_2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(10),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[10]_i_1_n_0\
    );
\data_byte_2[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(11),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[11]_i_1_n_0\
    );
\data_byte_2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(12),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[12]_i_1_n_0\
    );
\data_byte_2[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(13),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[13]_i_1_n_0\
    );
\data_byte_2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(14),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[14]_i_1_n_0\
    );
\data_byte_2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(15),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[15]_i_1_n_0\
    );
\data_byte_2[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40040004"
    )
        port map (
      I0 => \data_count_2[15]_i_3_n_0\,
      I1 => \data_count_2[15]_i_4_n_0\,
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \data_byte_2[15]_i_2_n_0\
    );
\data_byte_2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(1),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[1]_i_1_n_0\
    );
\data_byte_2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(2),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[2]_i_1_n_0\
    );
\data_byte_2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(3),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[3]_i_1_n_0\
    );
\data_byte_2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(4),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[4]_i_1_n_0\
    );
\data_byte_2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(5),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[5]_i_1_n_0\
    );
\data_byte_2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(6),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[6]_i_1_n_0\
    );
\data_byte_2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(7),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[7]_i_1_n_0\
    );
\data_byte_2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(8),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[8]_i_1_n_0\
    );
\data_byte_2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => data0,
      I1 => data_flag_2_i_2_n_0,
      I2 => data_flag,
      I3 => data_byte(9),
      I4 => \data_byte_2[15]_i_2_n_0\,
      O => \data_byte_2[9]_i_1_n_0\
    );
\data_byte_2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[0]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(0)
    );
\data_byte_2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[10]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(10)
    );
\data_byte_2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[11]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(11)
    );
\data_byte_2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[12]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(12)
    );
\data_byte_2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[13]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(13)
    );
\data_byte_2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[14]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(14)
    );
\data_byte_2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[15]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(15)
    );
\data_byte_2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[1]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(1)
    );
\data_byte_2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[2]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(2)
    );
\data_byte_2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[3]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(3)
    );
\data_byte_2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[4]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(4)
    );
\data_byte_2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[5]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(5)
    );
\data_byte_2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[6]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(6)
    );
\data_byte_2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[7]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(7)
    );
\data_byte_2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[8]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(8)
    );
\data_byte_2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_2[9]_i_1_n_0\,
      Q => \^data_byte_2_reg[15]_1\(9)
    );
\data_byte_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(0),
      Q => data_byte(0)
    );
\data_byte_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(10),
      Q => data_byte(10)
    );
\data_byte_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(11),
      Q => data_byte(11)
    );
\data_byte_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(12),
      Q => data_byte(12)
    );
\data_byte_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(13),
      Q => data_byte(13)
    );
\data_byte_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(14),
      Q => data_byte(14)
    );
\data_byte_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(15),
      Q => data_byte(15)
    );
\data_byte_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(1),
      Q => data_byte(1)
    );
\data_byte_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(2),
      Q => data_byte(2)
    );
\data_byte_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(3),
      Q => data_byte(3)
    );
\data_byte_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(4),
      Q => data_byte(4)
    );
\data_byte_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(5),
      Q => data_byte(5)
    );
\data_byte_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(6),
      Q => data_byte(6)
    );
\data_byte_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(7),
      Q => data_byte(7)
    );
\data_byte_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(8),
      Q => data_byte(8)
    );
\data_byte_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_byte_reg[15]_0\(9),
      Q => data_byte(9)
    );
\data_count_2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[8]\,
      I1 => data_flag,
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
      I1 => data_flag,
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
      I1 => data_flag,
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
      I0 => p_1_in(4),
      I1 => data_flag,
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
      I0 => p_1_in(5),
      I1 => data_flag,
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
      I1 => data_flag,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[14]_i_1_n_0\
    );
\data_count_2[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \data_count_2[15]_i_3_n_0\,
      I1 => \data_count_2[15]_i_4_n_0\,
      I2 => data_flag,
      O => \data_count_2[15]_i_1_n_0\
    );
\data_count_2[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[23]\,
      I1 => data_flag,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[15]_i_2_n_0\
    );
\data_count_2[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_count_2[15]_i_5_n_0\,
      I1 => data_index_2(6),
      I2 => data_index_2(3),
      I3 => data_index_2(12),
      I4 => data_index_2(9),
      O => \data_count_2[15]_i_3_n_0\
    );
\data_count_2[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => data_index_2(15),
      I1 => data_index_2(4),
      I2 => data_index_2(10),
      I3 => \data_count_2[15]_i_6_n_0\,
      I4 => data_index_2(2),
      I5 => data_index_2(1),
      O => \data_count_2[15]_i_4_n_0\
    );
\data_count_2[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_index_2(8),
      I1 => data_index_2(14),
      I2 => data_index_2(7),
      I3 => data_index_2(13),
      O => \data_count_2[15]_i_5_n_0\
    );
\data_count_2[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_index_2(11),
      I1 => data_index_2(5),
      O => \data_count_2[15]_i_6_n_0\
    );
\data_count_2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888800"
    )
        port map (
      I0 => \head_word_reg_n_0_[9]\,
      I1 => data_flag,
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
      I1 => data_flag,
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
      I1 => data_flag,
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
      I1 => data_flag,
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
      I1 => data_flag,
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
      I1 => data_flag,
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
      I1 => data_flag,
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
      I1 => data_flag,
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
      I1 => data_flag,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => \data_count_2[9]_i_1_n_0\
    );
\data_count_2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[0]_i_1_n_0\,
      Q => data_count_2(0)
    );
\data_count_2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[10]_i_1_n_0\,
      Q => data_count_2(10)
    );
\data_count_2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[11]_i_1_n_0\,
      Q => data_count_2(11)
    );
\data_count_2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[12]_i_1_n_0\,
      Q => data_count_2(12)
    );
\data_count_2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[13]_i_1_n_0\,
      Q => data_count_2(13)
    );
\data_count_2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[14]_i_1_n_0\,
      Q => data_count_2(14)
    );
\data_count_2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[15]_i_2_n_0\,
      Q => data_count_2(15)
    );
\data_count_2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[1]_i_1_n_0\,
      Q => data_count_2(1)
    );
\data_count_2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[2]_i_1_n_0\,
      Q => data_count_2(2)
    );
\data_count_2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[3]_i_1_n_0\,
      Q => data_count_2(3)
    );
\data_count_2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[4]_i_1_n_0\,
      Q => data_count_2(4)
    );
\data_count_2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[5]_i_1_n_0\,
      Q => data_count_2(5)
    );
\data_count_2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[6]_i_1_n_0\,
      Q => data_count_2(6)
    );
\data_count_2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[7]_i_1_n_0\,
      Q => data_count_2(7)
    );
\data_count_2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[8]_i_1_n_0\,
      Q => data_count_2(8)
    );
\data_count_2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_count_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_count_2[9]_i_1_n_0\,
      Q => data_count_2(9)
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
      I0 => data_index_2(15),
      I1 => data_count_2(15),
      I2 => data_count_2(14),
      I3 => data_index_2(14),
      O => data_flag_20_carry_i_1_n_0
    );
data_flag_20_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_count_2(13),
      I1 => data_index_2(13),
      I2 => data_count_2(12),
      I3 => data_index_2(12),
      O => data_flag_20_carry_i_10_n_0
    );
data_flag_20_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_count_2(11),
      I1 => data_index_2(11),
      I2 => data_count_2(10),
      I3 => data_index_2(10),
      O => data_flag_20_carry_i_11_n_0
    );
data_flag_20_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_count_2(9),
      I1 => data_index_2(9),
      I2 => data_count_2(8),
      I3 => data_index_2(8),
      O => data_flag_20_carry_i_12_n_0
    );
data_flag_20_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_count_2(7),
      I1 => data_index_2(7),
      I2 => data_count_2(6),
      I3 => data_index_2(6),
      O => data_flag_20_carry_i_13_n_0
    );
data_flag_20_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_count_2(5),
      I1 => data_index_2(5),
      I2 => data_count_2(4),
      I3 => data_index_2(4),
      O => data_flag_20_carry_i_14_n_0
    );
data_flag_20_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_count_2(3),
      I1 => data_index_2(3),
      I2 => data_count_2(2),
      I3 => data_index_2(2),
      O => data_flag_20_carry_i_15_n_0
    );
data_flag_20_carry_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => data_count_2(0),
      I1 => data_count_2(1),
      I2 => data_index_2(1),
      O => data_flag_20_carry_i_16_n_0
    );
data_flag_20_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => data_index_2(13),
      I1 => data_count_2(13),
      I2 => data_count_2(12),
      I3 => data_index_2(12),
      O => data_flag_20_carry_i_2_n_0
    );
data_flag_20_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => data_index_2(11),
      I1 => data_count_2(11),
      I2 => data_count_2(10),
      I3 => data_index_2(10),
      O => data_flag_20_carry_i_3_n_0
    );
data_flag_20_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => data_index_2(9),
      I1 => data_count_2(9),
      I2 => data_count_2(8),
      I3 => data_index_2(8),
      O => data_flag_20_carry_i_4_n_0
    );
data_flag_20_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => data_index_2(7),
      I1 => data_count_2(7),
      I2 => data_count_2(6),
      I3 => data_index_2(6),
      O => data_flag_20_carry_i_5_n_0
    );
data_flag_20_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => data_index_2(5),
      I1 => data_count_2(5),
      I2 => data_count_2(4),
      I3 => data_index_2(4),
      O => data_flag_20_carry_i_6_n_0
    );
data_flag_20_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => data_index_2(3),
      I1 => data_count_2(3),
      I2 => data_count_2(2),
      I3 => data_index_2(2),
      O => data_flag_20_carry_i_7_n_0
    );
data_flag_20_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => data_index_2(1),
      I1 => data_count_2(1),
      I2 => data_count_2(0),
      O => data_flag_20_carry_i_8_n_0
    );
data_flag_20_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_count_2(15),
      I1 => data_index_2(15),
      I2 => data_count_2(14),
      I3 => data_index_2(14),
      O => data_flag_20_carry_i_9_n_0
    );
data_flag_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_flag,
      I1 => data_flag_2_i_2_n_0,
      I2 => data0,
      O => data_flag_20
    );
data_flag_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \data_count_2[15]_i_4_n_0\,
      I1 => data_index_2(9),
      I2 => data_index_2(12),
      I3 => data_index_2(3),
      I4 => data_index_2(6),
      I5 => \data_count_2[15]_i_5_n_0\,
      O => data_flag_2_i_2_n_0
    );
data_flag_2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => data_flag_20,
      Q => \^pkt_valid\
    );
data_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AB000000"
    )
        port map (
      I0 => \^head_clk_idx_reg[1]_0\(0),
      I1 => p_1_in(4),
      I2 => p_1_in(5),
      I3 => \head_word_reg[0]_0\,
      I4 => \^head_clk_idx_reg[1]_0\(1),
      O => data_flag0
    );
data_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => data_flag0,
      Q => data_flag
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
\data_id_2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FFF"
    )
        port map (
      I0 => \data_count_2[15]_i_3_n_0\,
      I1 => \data_count_2[15]_i_4_n_0\,
      I2 => data_flag,
      I3 => data0,
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
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \data_count_2[15]_i_4_n_0\,
      I1 => \data_id_2[7]_i_5_n_0\,
      I2 => data_index_2(5),
      I3 => data_index_2(11),
      I4 => data_index_2(8),
      I5 => data_index_2(14),
      O => \data_id_2[7]_i_3_n_0\
    );
\data_id_2[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => data_index_2(13),
      I1 => data_index_2(7),
      I2 => data_index_2(14),
      I3 => data_index_2(8),
      I4 => data_flag,
      O => \data_id_2[7]_i_4_n_0\
    );
\data_id_2[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF22F2"
    )
        port map (
      I0 => data_index_2(3),
      I1 => data_index_2(4),
      I2 => data_index_2(9),
      I3 => data_index_2(10),
      I4 => \data_id_2[7]_i_6_n_0\,
      O => \data_id_2[7]_i_5_n_0\
    );
\data_id_2[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => data_index_2(7),
      I1 => data_index_2(6),
      I2 => data_index_2(13),
      I3 => data_index_2(12),
      O => \data_id_2[7]_i_6_n_0\
    );
\data_id_2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_id_2[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\data_id_2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_id_2[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\data_id_2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_id_2[2]_i_1_n_0\,
      Q => data_id_2(2)
    );
\data_id_2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_id_2[3]_i_1_n_0\,
      Q => \^q\(2)
    );
\data_id_2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_id_2[4]_i_1_n_0\,
      Q => data_id_2(4)
    );
\data_id_2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_id_2[5]_i_1_n_0\,
      Q => \^q\(3)
    );
\data_id_2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_id_2[6]_i_1_n_0\,
      Q => \^q\(4)
    );
\data_id_2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_id_2[7]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_id_2[7]_i_2_n_0\,
      Q => \^q\(5)
    );
\data_index_2[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => data_flag,
      I1 => data_index_2(8),
      I2 => \data_index_2[10]_i_2_n_0\,
      I3 => data_index_2(7),
      I4 => data_index_2(9),
      I5 => data_index_2(10),
      O => \data_index_2[10]_i_1_n_0\
    );
\data_index_2[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => data_index_2(5),
      I1 => data_index_2(3),
      I2 => data_index_2(2),
      I3 => data_index_2(1),
      I4 => data_index_2(4),
      I5 => data_index_2(6),
      O => \data_index_2[10]_i_2_n_0\
    );
\data_index_2[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => data_flag,
      I1 => \data_index_2[11]_i_2_n_0\,
      I2 => data_index_2(11),
      O => \data_index_2[11]_i_1_n_0\
    );
\data_index_2[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => data_index_2(9),
      I1 => data_index_2(7),
      I2 => \data_index_2[10]_i_2_n_0\,
      I3 => data_index_2(8),
      I4 => data_index_2(10),
      O => \data_index_2[11]_i_2_n_0\
    );
\data_index_2[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => data_flag,
      I1 => \data_index_2[15]_i_3_n_0\,
      I2 => data_index_2(12),
      O => \data_index_2[12]_i_1_n_0\
    );
\data_index_2[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => data_flag,
      I1 => \data_index_2[15]_i_3_n_0\,
      I2 => data_index_2(12),
      I3 => data_index_2(13),
      O => \data_index_2[13]_i_1_n_0\
    );
\data_index_2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => data_flag,
      I1 => data_index_2(13),
      I2 => data_index_2(12),
      I3 => \data_index_2[15]_i_3_n_0\,
      I4 => data_index_2(14),
      O => \data_index_2[14]_i_1_n_0\
    );
\data_index_2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => \data_count_2[15]_i_3_n_0\,
      I1 => \data_count_2[15]_i_4_n_0\,
      I2 => data_flag,
      I3 => data0,
      O => \data_index_2[15]_i_1_n_0\
    );
\data_index_2[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF400000000000"
    )
        port map (
      I0 => \data_index_2[15]_i_3_n_0\,
      I1 => data_index_2(12),
      I2 => data_index_2(13),
      I3 => data_index_2(14),
      I4 => data_index_2(15),
      I5 => data_flag,
      O => \data_index_2[15]_i_2_n_0\
    );
\data_index_2[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => data_index_2(10),
      I1 => data_index_2(8),
      I2 => \data_index_2[10]_i_2_n_0\,
      I3 => data_index_2(7),
      I4 => data_index_2(9),
      I5 => data_index_2(11),
      O => \data_index_2[15]_i_3_n_0\
    );
\data_index_2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_flag,
      I1 => data_index_2(1),
      O => \data_index_2[1]_i_1_n_0\
    );
\data_index_2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => data_index_2(1),
      I1 => data_index_2(2),
      I2 => data_flag,
      O => \data_index_2[2]_i_1_n_0\
    );
\data_index_2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => data_flag,
      I1 => data_index_2(2),
      I2 => data_index_2(1),
      I3 => data_index_2(3),
      O => \data_index_2[3]_i_1_n_0\
    );
\data_index_2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => data_flag,
      I1 => data_index_2(1),
      I2 => data_index_2(2),
      I3 => data_index_2(3),
      I4 => data_index_2(4),
      O => \data_index_2[4]_i_1_n_0\
    );
\data_index_2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => data_flag,
      I1 => data_index_2(3),
      I2 => data_index_2(2),
      I3 => data_index_2(1),
      I4 => data_index_2(4),
      I5 => data_index_2(5),
      O => \data_index_2[5]_i_1_n_0\
    );
\data_index_2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => data_flag,
      I1 => \data_index_2[6]_i_2_n_0\,
      I2 => data_index_2(6),
      O => \data_index_2[6]_i_1_n_0\
    );
\data_index_2[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => data_index_2(4),
      I1 => data_index_2(1),
      I2 => data_index_2(2),
      I3 => data_index_2(3),
      I4 => data_index_2(5),
      O => \data_index_2[6]_i_2_n_0\
    );
\data_index_2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => data_flag,
      I1 => \data_index_2[10]_i_2_n_0\,
      I2 => data_index_2(7),
      O => \data_index_2[7]_i_1_n_0\
    );
\data_index_2[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => data_flag,
      I1 => \data_index_2[10]_i_2_n_0\,
      I2 => data_index_2(7),
      I3 => data_index_2(8),
      O => \data_index_2[8]_i_1_n_0\
    );
\data_index_2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => data_flag,
      I1 => data_index_2(7),
      I2 => \data_index_2[10]_i_2_n_0\,
      I3 => data_index_2(8),
      I4 => data_index_2(9),
      O => \data_index_2[9]_i_1_n_0\
    );
\data_index_2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[10]_i_1_n_0\,
      Q => data_index_2(10)
    );
\data_index_2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[11]_i_1_n_0\,
      Q => data_index_2(11)
    );
\data_index_2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[12]_i_1_n_0\,
      Q => data_index_2(12)
    );
\data_index_2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[13]_i_1_n_0\,
      Q => data_index_2(13)
    );
\data_index_2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[14]_i_1_n_0\,
      Q => data_index_2(14)
    );
\data_index_2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[15]_i_2_n_0\,
      Q => data_index_2(15)
    );
\data_index_2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[1]_i_1_n_0\,
      Q => data_index_2(1)
    );
\data_index_2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[2]_i_1_n_0\,
      Q => data_index_2(2)
    );
\data_index_2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[3]_i_1_n_0\,
      Q => data_index_2(3)
    );
\data_index_2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[4]_i_1_n_0\,
      Q => data_index_2(4)
    );
\data_index_2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[5]_i_1_n_0\,
      Q => data_index_2(5)
    );
\data_index_2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[6]_i_1_n_0\,
      Q => data_index_2(6)
    );
\data_index_2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[7]_i_1_n_0\,
      Q => data_index_2(7)
    );
\data_index_2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[8]_i_1_n_0\,
      Q => data_index_2(8)
    );
\data_index_2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_index_2[15]_i_1_n_0\,
      CLR => \data_byte_2_reg[0]_0\,
      D => \data_index_2[9]_i_1_n_0\,
      Q => data_index_2(9)
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
\head_clk_idx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^head_clk_idx_reg[1]_0\(1),
      I1 => \head_word_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \head_clk_idx_reg[0]_0\,
      O => \head_clk_idx[0]_i_1_n_0\
    );
\head_clk_idx[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^head_clk_idx_reg[1]_0\(0),
      I1 => \^head_clk_idx_reg[1]_0\(1),
      I2 => \head_word_reg[0]_0\,
      O => \head_clk_idx[1]_i_1_n_0\
    );
\head_clk_idx_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_clk_idx[0]_i_1_n_0\,
      Q => \^head_clk_idx_reg[1]_0\(0)
    );
\head_clk_idx_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_clk_idx[1]_i_1_n_0\,
      Q => \^head_clk_idx_reg[1]_0\(1)
    );
\head_word[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[16]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(0)
    );
\head_word[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[26]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(10)
    );
\head_word[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[27]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(11)
    );
\head_word[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[28]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(12)
    );
\head_word[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[29]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(13)
    );
\head_word[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[30]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(14)
    );
\head_word[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[31]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(15)
    );
\head_word[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[17]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(1)
    );
\head_word[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[18]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(2)
    );
\head_word[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \head_word_reg[0]_0\,
      I1 => \^head_clk_idx_reg[1]_0\(0),
      I2 => \^head_clk_idx_reg[1]_0\(1),
      O => head_word0
    );
\head_word[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[19]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(3)
    );
\head_word[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => p_1_in(4),
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(4)
    );
\head_word[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => p_1_in(5),
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(5)
    );
\head_word[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[22]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(6)
    );
\head_word[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[23]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(7)
    );
\head_word[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[24]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(8)
    );
\head_word[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA88888"
    )
        port map (
      I0 => \head_word_reg_n_0_[25]\,
      I1 => \head_clk_idx_reg[0]_0\,
      I2 => \^head_clk_idx_reg[1]_0\(0),
      I3 => \^head_clk_idx_reg[1]_0\(1),
      I4 => \head_word_reg[0]_0\,
      O => p_2_in(9)
    );
\head_word_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(0),
      Q => \head_word_reg_n_0_[0]\
    );
\head_word_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(10),
      Q => \head_word_reg_n_0_[10]\
    );
\head_word_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(11),
      Q => \head_word_reg_n_0_[11]\
    );
\head_word_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(12),
      Q => \head_word_reg_n_0_[12]\
    );
\head_word_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(13),
      Q => \head_word_reg_n_0_[13]\
    );
\head_word_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(14),
      Q => \head_word_reg_n_0_[14]\
    );
\head_word_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(15),
      Q => \head_word_reg_n_0_[15]\
    );
\head_word_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(0),
      Q => \head_word_reg_n_0_[16]\
    );
\head_word_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(1),
      Q => \head_word_reg_n_0_[17]\
    );
\head_word_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(2),
      Q => \head_word_reg_n_0_[18]\
    );
\head_word_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(3),
      Q => \head_word_reg_n_0_[19]\
    );
\head_word_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(1),
      Q => \head_word_reg_n_0_[1]\
    );
\head_word_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(4),
      Q => p_1_in(4)
    );
\head_word_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(5),
      Q => p_1_in(5)
    );
\head_word_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(6),
      Q => \head_word_reg_n_0_[22]\
    );
\head_word_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(7),
      Q => \head_word_reg_n_0_[23]\
    );
\head_word_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(8),
      Q => \head_word_reg_n_0_[24]\
    );
\head_word_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(9),
      Q => \head_word_reg_n_0_[25]\
    );
\head_word_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(10),
      Q => \head_word_reg_n_0_[26]\
    );
\head_word_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(11),
      Q => \head_word_reg_n_0_[27]\
    );
\head_word_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(12),
      Q => \head_word_reg_n_0_[28]\
    );
\head_word_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(13),
      Q => \head_word_reg_n_0_[29]\
    );
\head_word_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(2),
      Q => \head_word_reg_n_0_[2]\
    );
\head_word_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(14),
      Q => \head_word_reg_n_0_[30]\
    );
\head_word_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => \head_word_reg[31]_0\(15),
      Q => \head_word_reg_n_0_[31]\
    );
\head_word_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(3),
      Q => p_0_in(0)
    );
\head_word_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(4),
      Q => p_0_in(1)
    );
\head_word_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(5),
      Q => p_0_in(2)
    );
\head_word_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(6),
      Q => \head_word_reg_n_0_[6]\
    );
\head_word_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(7),
      Q => \head_word_reg_n_0_[7]\
    );
\head_word_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(8),
      Q => \head_word_reg_n_0_[8]\
    );
\head_word_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => head_word0,
      CLR => \data_byte_2_reg[0]_0\,
      D => p_2_in(9),
      Q => \head_word_reg_n_0_[9]\
    );
\last_data[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(0),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(0)
    );
\last_data[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(1),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(1)
    );
\last_data[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(2),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(2)
    );
\last_data[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(3),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(3)
    );
\last_data[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(4),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(4)
    );
\last_data[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(5),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(5)
    );
\last_data[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(6),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(6)
    );
\last_data[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(7),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(7)
    );
\last_data[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(8),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(8)
    );
\last_data[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(9),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(9)
    );
\last_data[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(10),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(10)
    );
\last_data[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(11),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(11)
    );
\last_data[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(12),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(12)
    );
\last_data[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(13),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(13)
    );
\last_data[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(14),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(14)
    );
\last_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_byte_2_reg[15]_1\(15),
      I1 => \^data_flag_2_reg_1\,
      O => \data_byte_2_reg[15]_0\(15)
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
      I0 => data_id_2(4),
      I1 => \^q\(2),
      I2 => data_id_2(2),
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \^q\(0),
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
      I0 => data_count_2(15),
      I1 => data_count_2(13),
      I2 => data_count_2(14),
      I3 => data_count_2(10),
      I4 => reg_pix_data_enable_i_4_n_0,
      O => reg_pix_data_enable_i_2_n_0
    );
reg_pix_data_enable_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_count_2(5),
      I1 => data_count_2(6),
      I2 => data_count_2(8),
      I3 => data_count_2(11),
      I4 => reg_pix_data_enable_i_5_n_0,
      O => reg_pix_data_enable_i_3_n_0
    );
reg_pix_data_enable_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_count_2(3),
      I1 => data_count_2(1),
      I2 => data_count_2(7),
      I3 => data_count_2(12),
      O => reg_pix_data_enable_i_4_n_0
    );
reg_pix_data_enable_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_count_2(2),
      I1 => data_count_2(9),
      I2 => data_count_2(0),
      I3 => data_count_2(4),
      O => reg_pix_data_enable_i_5_n_0
    );
\reg_pix_di[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => raw10_pix_valid,
      I1 => \^data_id_2_reg[4]_0\,
      I2 => data_id_2(2),
      O => D(0)
    );
\reg_pix_di[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => raw10_pix_valid,
      I1 => \^data_id_2_reg[4]_0\,
      I2 => data_id_2(4),
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
entity \design_1_mipi_rx_to_video_ias1_0__csi2_pixel_to_video\ is
  port (
    locked_reg_0 : out STD_LOGIC;
    reg_ce_reg_0 : out STD_LOGIC;
    reg_active_video_reg_0 : out STD_LOGIC;
    reg_vsync_reg_0 : out STD_LOGIC;
    \pix_cnt_reg[11]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    reg_active_video_reg_1 : out STD_LOGIC;
    \line_cnt_reg[14]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_ce_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    reg_vsync_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mipi_width0__0\ : out STD_LOGIC;
    \axi_araddr_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_di_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vid_data : out STD_LOGIC_VECTOR ( 19 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_byte : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    pix_data_enable : in STD_LOGIC;
    pix_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \pix_cnt_reg[14]\ : in STD_LOGIC;
    \pix_cnt_reg[8]\ : in STD_LOGIC;
    \line_cnt_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \line_cnt_reg[11]\ : in STD_LOGIC;
    \line_cnt_reg[6]\ : in STD_LOGIC;
    pre_vsync : in STD_LOGIC;
    \line_cnt_reg[10]\ : in STD_LOGIC;
    \line_cnt_reg[5]\ : in STD_LOGIC;
    pre_active_video : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    p_1_in_11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \line_cnt_reg[15]_0\ : in STD_LOGIC;
    \reg_pix_di_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_pix_data_reg[19]_0\ : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_ias1_0__csi2_pixel_to_video\ : entity is "_csi2_pixel_to_video";
end \design_1_mipi_rx_to_video_ias1_0__csi2_pixel_to_video\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_ias1_0__csi2_pixel_to_video\ is
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \line_cnt[14]_i_2_n_0\ : STD_LOGIC;
  signal \^locked_reg_0\ : STD_LOGIC;
  signal locked_vc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal \reg_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data[9]_i_1_n_0\ : STD_LOGIC;
  signal reg_pix_data : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal reg_pix_data_enable : STD_LOGIC;
  signal \reg_pix_di_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_pix_di_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_pix_di_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_pix_di_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_pix_di_reg_n_0_[7]\ : STD_LOGIC;
  signal reg_pix_valid : STD_LOGIC;
  signal reg_vsync_i_1_n_0 : STD_LOGIC;
  signal reg_vsync_i_2_n_0 : STD_LOGIC;
  signal reg_vsync_i_3_n_0 : STD_LOGIC;
  signal \^reg_vsync_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \line_cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \line_cnt[10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \line_cnt[11]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \line_cnt[12]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \line_cnt[14]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \line_cnt[15]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \line_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \line_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \line_cnt[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \line_cnt[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \line_cnt[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mipi_di[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mipi_width[15]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pix_cnt[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of reg_active_video_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg_data[10]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_data[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg_data[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg_data[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_data[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_data[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg_data[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg_data[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg_data[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg_data[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg_data[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reg_data[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reg_data[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg_data[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg_data[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reg_data[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reg_data[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg_data[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg_data[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_di[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg_di[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_di[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_di[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_di[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg_di[5]_i_1\ : label is "soft_lutpair8";
begin
  locked_reg_0 <= \^locked_reg_0\;
  reg_active_video_reg_0 <= \^reg_active_video_reg_0\;
  reg_active_video_reg_1 <= \^reg_active_video_reg_1\;
  reg_ce_reg_0 <= \^reg_ce_reg_0\;
  reg_vsync_reg_0 <= \^reg_vsync_reg_0\;
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020002"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\(3),
      I2 => \axi_rdata_reg[0]_0\(4),
      I3 => \axi_rdata_reg[0]_0\(2),
      I4 => \axi_rdata[0]_i_3_n_0\,
      O => \axi_araddr_reg[5]\(0)
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_1_in_11(0),
      I1 => p_2_in(0),
      I2 => \axi_rdata_reg[0]_0\(1),
      I3 => \^locked_reg_0\,
      I4 => \axi_rdata_reg[0]_0\(0),
      I5 => \axi_rdata_reg[0]_1\(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \line_cnt_reg[15]\(0),
      I1 => \^reg_vsync_reg_0\,
      I2 => pre_vsync,
      O => \line_cnt_reg[14]\(0)
    );
\line_cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B00B"
    )
        port map (
      I0 => \^reg_vsync_reg_0\,
      I1 => pre_vsync,
      I2 => \line_cnt_reg[10]\,
      I3 => \line_cnt_reg[15]\(10),
      O => \line_cnt_reg[14]\(10)
    );
\line_cnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B00B"
    )
        port map (
      I0 => \^reg_vsync_reg_0\,
      I1 => pre_vsync,
      I2 => \line_cnt_reg[11]\,
      I3 => \line_cnt_reg[15]\(11),
      O => \line_cnt_reg[14]\(11)
    );
\line_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0BB0B00"
    )
        port map (
      I0 => \^reg_vsync_reg_0\,
      I1 => pre_vsync,
      I2 => \line_cnt_reg[11]\,
      I3 => \line_cnt_reg[15]\(11),
      I4 => \line_cnt_reg[15]\(12),
      O => \line_cnt_reg[14]\(12)
    );
\line_cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550400"
    )
        port map (
      I0 => \line_cnt[14]_i_2_n_0\,
      I1 => \line_cnt_reg[15]\(11),
      I2 => \line_cnt_reg[11]\,
      I3 => \line_cnt_reg[15]\(12),
      I4 => \line_cnt_reg[15]\(13),
      O => \line_cnt_reg[14]\(13)
    );
\line_cnt[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515555500400000"
    )
        port map (
      I0 => \line_cnt[14]_i_2_n_0\,
      I1 => \line_cnt_reg[15]\(13),
      I2 => \line_cnt_reg[15]\(12),
      I3 => \line_cnt_reg[11]\,
      I4 => \line_cnt_reg[15]\(11),
      I5 => \line_cnt_reg[15]\(14),
      O => \line_cnt_reg[14]\(14)
    );
\line_cnt[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => pre_vsync,
      I1 => \^reg_ce_reg_0\,
      I2 => \^reg_vsync_reg_0\,
      O => \line_cnt[14]_i_2_n_0\
    );
\line_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F004400"
    )
        port map (
      I0 => \^reg_vsync_reg_0\,
      I1 => pre_vsync,
      I2 => \^reg_active_video_reg_0\,
      I3 => \^reg_ce_reg_0\,
      I4 => pre_active_video,
      O => reg_vsync_reg_1(0)
    );
\line_cnt[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78007878"
    )
        port map (
      I0 => \line_cnt_reg[15]_0\,
      I1 => \line_cnt_reg[15]\(14),
      I2 => \line_cnt_reg[15]\(15),
      I3 => \^reg_vsync_reg_0\,
      I4 => pre_vsync,
      O => \line_cnt_reg[14]\(15)
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6066"
    )
        port map (
      I0 => \line_cnt_reg[15]\(0),
      I1 => \line_cnt_reg[15]\(1),
      I2 => \^reg_vsync_reg_0\,
      I3 => pre_vsync,
      O => \line_cnt_reg[14]\(1)
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78007878"
    )
        port map (
      I0 => \line_cnt_reg[15]\(1),
      I1 => \line_cnt_reg[15]\(0),
      I2 => \line_cnt_reg[15]\(2),
      I3 => \^reg_vsync_reg_0\,
      I4 => pre_vsync,
      O => \line_cnt_reg[14]\(2)
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \line_cnt[14]_i_2_n_0\,
      I1 => \line_cnt_reg[15]\(0),
      I2 => \line_cnt_reg[15]\(1),
      I3 => \line_cnt_reg[15]\(2),
      I4 => \line_cnt_reg[15]\(3),
      O => \line_cnt_reg[14]\(3)
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \line_cnt[14]_i_2_n_0\,
      I1 => \line_cnt_reg[15]\(2),
      I2 => \line_cnt_reg[15]\(1),
      I3 => \line_cnt_reg[15]\(0),
      I4 => \line_cnt_reg[15]\(3),
      I5 => \line_cnt_reg[15]\(4),
      O => \line_cnt_reg[14]\(4)
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B00B"
    )
        port map (
      I0 => \^reg_vsync_reg_0\,
      I1 => pre_vsync,
      I2 => \line_cnt_reg[5]\,
      I3 => \line_cnt_reg[15]\(5),
      O => \line_cnt_reg[14]\(5)
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B00B"
    )
        port map (
      I0 => \^reg_vsync_reg_0\,
      I1 => pre_vsync,
      I2 => \line_cnt_reg[6]\,
      I3 => \line_cnt_reg[15]\(6),
      O => \line_cnt_reg[14]\(6)
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0BB0B00"
    )
        port map (
      I0 => \^reg_vsync_reg_0\,
      I1 => pre_vsync,
      I2 => \line_cnt_reg[6]\,
      I3 => \line_cnt_reg[15]\(6),
      I4 => \line_cnt_reg[15]\(7),
      O => \line_cnt_reg[14]\(7)
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550400"
    )
        port map (
      I0 => \line_cnt[14]_i_2_n_0\,
      I1 => \line_cnt_reg[15]\(6),
      I2 => \line_cnt_reg[6]\,
      I3 => \line_cnt_reg[15]\(7),
      I4 => \line_cnt_reg[15]\(8),
      O => \line_cnt_reg[14]\(8)
    );
\line_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5155555504000000"
    )
        port map (
      I0 => \line_cnt[14]_i_2_n_0\,
      I1 => \line_cnt_reg[15]\(7),
      I2 => \line_cnt_reg[6]\,
      I3 => \line_cnt_reg[15]\(6),
      I4 => \line_cnt_reg[15]\(8),
      I5 => \line_cnt_reg[15]\(9),
      O => \line_cnt_reg[14]\(9)
    );
locked_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => '1',
      Q => \^locked_reg_0\
    );
\locked_vc_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => \reg_pix_di_reg[7]_0\(6),
      Q => locked_vc(0)
    );
\locked_vc_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
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
      INIT => X"08"
    )
        port map (
      I0 => \^reg_vsync_reg_0\,
      I1 => \^reg_ce_reg_0\,
      I2 => pre_vsync,
      O => \mipi_width0__0\
    );
\pix_cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55150040"
    )
        port map (
      I0 => \^reg_active_video_reg_1\,
      I1 => Q(10),
      I2 => Q(9),
      I3 => \pix_cnt_reg[14]\,
      I4 => Q(11),
      O => \pix_cnt_reg[11]\(4)
    );
\pix_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_ce_reg_0\,
      I1 => \^reg_active_video_reg_0\,
      O => reg_ce_reg_1(0)
    );
\pix_cnt[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BFFF4000"
    )
        port map (
      I0 => \pix_cnt_reg[14]\,
      I1 => Q(9),
      I2 => Q(10),
      I3 => Q(11),
      I4 => Q(12),
      I5 => \^reg_active_video_reg_1\,
      O => \pix_cnt_reg[11]\(5)
    );
\pix_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \^reg_active_video_reg_1\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(3),
      O => \pix_cnt_reg[11]\(0)
    );
\pix_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \^reg_active_video_reg_1\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(4),
      O => \pix_cnt_reg[11]\(1)
    );
\pix_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550400"
    )
        port map (
      I0 => \^reg_active_video_reg_1\,
      I1 => Q(5),
      I2 => \pix_cnt_reg[8]\,
      I3 => Q(6),
      I4 => Q(7),
      O => \pix_cnt_reg[11]\(2)
    );
\pix_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5155555504000000"
    )
        port map (
      I0 => \^reg_active_video_reg_1\,
      I1 => Q(6),
      I2 => \pix_cnt_reg[8]\,
      I3 => Q(5),
      I4 => Q(7),
      I5 => Q(8),
      O => \pix_cnt_reg[11]\(3)
    );
reg_active_video_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1454"
    )
        port map (
      I0 => reg_ce_i_3_n_0,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      O => reg_active_video0
    );
reg_active_video_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => reg_active_video0,
      Q => \^reg_active_video_reg_0\
    );
reg_ce_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAF"
    )
        port map (
      I0 => reg_pix_data_enable,
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => reg_ce_i_3_n_0,
      O => reg_ce_i_1_n_0
    );
reg_ce_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFFFFFF"
    )
        port map (
      I0 => locked_vc(1),
      I1 => \reg_pix_di_reg_n_0_[7]\,
      I2 => locked_vc(0),
      I3 => \reg_pix_di_reg_n_0_[6]\,
      I4 => reg_pix_valid,
      I5 => \^locked_reg_0\,
      O => reg_ce_i_3_n_0
    );
reg_ce_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_hs_byte,
      CE => '1',
      D => reg_ce_i_1_n_0,
      PRE => AR(0),
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
\reg_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_pix_data(2),
      I1 => reg_ce_i_3_n_0,
      O => \reg_data[2]_i_1_n_0\
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
      CLR => AR(0),
      D => \reg_data[0]_i_1_n_0\,
      Q => vid_data(0)
    );
\reg_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[10]_i_1_n_0\,
      Q => vid_data(10)
    );
\reg_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[11]_i_1_n_0\,
      Q => vid_data(11)
    );
\reg_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[12]_i_1_n_0\,
      Q => vid_data(12)
    );
\reg_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[13]_i_1_n_0\,
      Q => vid_data(13)
    );
\reg_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[14]_i_1_n_0\,
      Q => vid_data(14)
    );
\reg_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[15]_i_1_n_0\,
      Q => vid_data(15)
    );
\reg_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[16]_i_1_n_0\,
      Q => vid_data(16)
    );
\reg_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[17]_i_1_n_0\,
      Q => vid_data(17)
    );
\reg_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[18]_i_1_n_0\,
      Q => vid_data(18)
    );
\reg_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[19]_i_1_n_0\,
      Q => vid_data(19)
    );
\reg_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[1]_i_1_n_0\,
      Q => vid_data(1)
    );
\reg_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[2]_i_1_n_0\,
      Q => vid_data(2)
    );
\reg_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[3]_i_1_n_0\,
      Q => vid_data(3)
    );
\reg_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[4]_i_1_n_0\,
      Q => vid_data(4)
    );
\reg_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[5]_i_1_n_0\,
      Q => vid_data(5)
    );
\reg_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[6]_i_1_n_0\,
      Q => vid_data(6)
    );
\reg_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[7]_i_1_n_0\,
      Q => vid_data(7)
    );
\reg_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_data[8]_i_1_n_0\,
      Q => vid_data(8)
    );
\reg_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
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
      I0 => \reg_pix_di_reg_n_0_[1]\,
      I1 => reg_ce_i_3_n_0,
      O => p_1_in(1)
    );
\reg_di[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \reg_pix_di_reg_n_0_[2]\,
      I1 => reg_ce_i_3_n_0,
      O => p_1_in(2)
    );
\reg_di[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(0),
      I1 => reg_ce_i_3_n_0,
      O => p_1_in(3)
    );
\reg_di[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => reg_ce_i_3_n_0,
      O => p_1_in(4)
    );
\reg_di[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(2),
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
      I2 => \reg_pix_di_reg_n_0_[6]\,
      I3 => locked_vc(0),
      I4 => \reg_pix_di_reg_n_0_[7]\,
      I5 => locked_vc(1),
      O => p_1_in(6)
    );
\reg_di[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008000000000000"
    )
        port map (
      I0 => \^locked_reg_0\,
      I1 => reg_pix_valid,
      I2 => \reg_pix_di_reg_n_0_[6]\,
      I3 => locked_vc(0),
      I4 => \reg_pix_di_reg_n_0_[7]\,
      I5 => locked_vc(1),
      O => p_1_in(7)
    );
\reg_di_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => p_1_in(0),
      Q => \reg_di_reg[7]_0\(0)
    );
\reg_di_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => p_1_in(1),
      Q => \reg_di_reg[7]_0\(1)
    );
\reg_di_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => p_1_in(2),
      Q => \reg_di_reg[7]_0\(2)
    );
\reg_di_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => p_1_in(3),
      Q => \reg_di_reg[7]_0\(3)
    );
\reg_di_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => p_1_in(4),
      Q => \reg_di_reg[7]_0\(4)
    );
\reg_di_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => p_1_in(5),
      Q => \reg_di_reg[7]_0\(5)
    );
\reg_di_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => p_1_in(6),
      Q => \reg_di_reg[7]_0\(6)
    );
\reg_di_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => p_1_in(7),
      Q => \reg_di_reg[7]_0\(7)
    );
reg_pix_data_enable_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => pix_data_enable,
      Q => reg_pix_data_enable
    );
\reg_pix_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(0),
      Q => reg_pix_data(0)
    );
\reg_pix_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(10),
      Q => reg_pix_data(10)
    );
\reg_pix_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(11),
      Q => reg_pix_data(11)
    );
\reg_pix_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(12),
      Q => reg_pix_data(12)
    );
\reg_pix_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(13),
      Q => reg_pix_data(13)
    );
\reg_pix_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(14),
      Q => reg_pix_data(14)
    );
\reg_pix_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(15),
      Q => reg_pix_data(15)
    );
\reg_pix_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(16),
      Q => reg_pix_data(16)
    );
\reg_pix_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(17),
      Q => reg_pix_data(17)
    );
\reg_pix_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(18),
      Q => reg_pix_data(18)
    );
\reg_pix_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(19),
      Q => reg_pix_data(19)
    );
\reg_pix_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(1),
      Q => reg_pix_data(1)
    );
\reg_pix_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(2),
      Q => reg_pix_data(2)
    );
\reg_pix_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(3),
      Q => reg_pix_data(3)
    );
\reg_pix_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(4),
      Q => reg_pix_data(4)
    );
\reg_pix_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(5),
      Q => reg_pix_data(5)
    );
\reg_pix_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(6),
      Q => reg_pix_data(6)
    );
\reg_pix_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(7),
      Q => reg_pix_data(7)
    );
\reg_pix_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(8),
      Q => reg_pix_data(8)
    );
\reg_pix_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_data_reg[19]_0\(9),
      Q => reg_pix_data(9)
    );
\reg_pix_di_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_di_reg[7]_0\(0),
      Q => \reg_pix_di_reg_n_0_[0]\
    );
\reg_pix_di_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_di_reg[7]_0\(1),
      Q => \reg_pix_di_reg_n_0_[1]\
    );
\reg_pix_di_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_di_reg[7]_0\(2),
      Q => \reg_pix_di_reg_n_0_[2]\
    );
\reg_pix_di_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_di_reg[7]_0\(3),
      Q => p_0_in(0)
    );
\reg_pix_di_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_di_reg[7]_0\(4),
      Q => p_0_in(1)
    );
\reg_pix_di_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_di_reg[7]_0\(5),
      Q => p_0_in(2)
    );
\reg_pix_di_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_di_reg[7]_0\(6),
      Q => \reg_pix_di_reg_n_0_[6]\
    );
\reg_pix_di_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \reg_pix_di_reg[7]_0\(7),
      Q => \reg_pix_di_reg_n_0_[7]\
    );
reg_pix_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => pix_valid,
      Q => reg_pix_valid
    );
reg_vsync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF02FF"
    )
        port map (
      I0 => \reg_pix_di_reg_n_0_[0]\,
      I1 => reg_vsync_i_2_n_0,
      I2 => reg_vsync_i_3_n_0,
      I3 => \^locked_reg_0\,
      I4 => \^reg_vsync_reg_0\,
      O => reg_vsync_i_1_n_0
    );
reg_vsync_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => \reg_pix_di_reg_n_0_[2]\,
      I3 => \reg_pix_di_reg_n_0_[1]\,
      I4 => p_0_in(0),
      O => reg_vsync_i_2_n_0
    );
reg_vsync_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DFFFF7D"
    )
        port map (
      I0 => reg_pix_valid,
      I1 => \reg_pix_di_reg_n_0_[6]\,
      I2 => locked_vc(0),
      I3 => \reg_pix_di_reg_n_0_[7]\,
      I4 => locked_vc(1),
      O => reg_vsync_i_3_n_0
    );
reg_vsync_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_hs_byte,
      CE => '1',
      D => reg_vsync_i_1_n_0,
      PRE => AR(0),
      Q => \^reg_vsync_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_ias1_0__csi2_raw10_unpack\ is
  port (
    raw10_pix_valid : out STD_LOGIC;
    raw10_pix_data_enable : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    reg_pix_valid_reg_0 : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \ready_delay_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_byte : in STD_LOGIC;
    \reg_pix_di_reg[3]_0\ : in STD_LOGIC;
    \reg_pix_data_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \reg_pix_di_reg[7]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    pkt_valid : in STD_LOGIC;
    \last_size_reg[2]_0\ : in STD_LOGIC;
    \last_data_reg[31]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \di_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_ias1_0__csi2_raw10_unpack\ : entity is "_csi2_raw10_unpack";
end \design_1_mipi_rx_to_video_ias1_0__csi2_raw10_unpack\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_ias1_0__csi2_raw10_unpack\ is
  signal di_reg : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \last_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \last_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \last_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \last_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \last_pix_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \last_pix_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \last_size[2]_i_1_n_0\ : STD_LOGIC;
  signal last_size_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pixel_data : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \pixel_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \pixel_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \pixel_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[10]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[10]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[10]_i_5_n_0\ : STD_LOGIC;
  signal \pixel_data[10]_i_6_n_0\ : STD_LOGIC;
  signal \pixel_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[11]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[11]_i_6_n_0\ : STD_LOGIC;
  signal \pixel_data[11]_i_7_n_0\ : STD_LOGIC;
  signal \pixel_data[11]_i_8_n_0\ : STD_LOGIC;
  signal \pixel_data[11]_i_9_n_0\ : STD_LOGIC;
  signal \pixel_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[12]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[13]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[13]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[14]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[14]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[16]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[16]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[17]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[17]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[18]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[18]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[19]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[19]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \pixel_data[1]_i_6_n_0\ : STD_LOGIC;
  signal \pixel_data[1]_i_7_n_0\ : STD_LOGIC;
  signal \pixel_data[1]_i_8_n_0\ : STD_LOGIC;
  signal \pixel_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data[4]_i_2_n_0\ : STD_LOGIC;
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
  signal \pixel_data_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_data_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_data_reg[11]_i_5_n_12\ : STD_LOGIC;
  signal \pixel_data_reg[11]_i_5_n_13\ : STD_LOGIC;
  signal \pixel_data_reg[11]_i_5_n_14\ : STD_LOGIC;
  signal \pixel_data_reg[11]_i_5_n_15\ : STD_LOGIC;
  signal \pixel_data_reg[11]_i_5_n_5\ : STD_LOGIC;
  signal \pixel_data_reg[11]_i_5_n_6\ : STD_LOGIC;
  signal \pixel_data_reg[11]_i_5_n_7\ : STD_LOGIC;
  signal \pixel_data_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal pixel_enable : STD_LOGIC;
  signal pixel_enable3_out : STD_LOGIC;
  signal \^raw10_pix_valid\ : STD_LOGIC;
  signal \^ready_delay_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ready_delay_reg_n_0_[0]\ : STD_LOGIC;
  signal reg_pix_data : STD_LOGIC_VECTOR ( 19 downto 0 );
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
  signal \reg_pix_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_data[9]_i_1_n_0\ : STD_LOGIC;
  signal reg_pix_data_enable0 : STD_LOGIC;
  signal reg_pix_di : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \reg_pix_di[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_di[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pix_di[7]_i_1_n_0\ : STD_LOGIC;
  signal reg_pix_valid0 : STD_LOGIC;
  signal \NLW_pixel_data_reg[11]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_pixel_data_reg[11]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \last_data[0]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \last_data[10]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \last_data[11]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \last_data[12]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \last_data[13]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \last_data[14]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \last_data[15]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \last_data[1]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \last_data[2]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \last_data[3]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \last_data[4]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \last_data[5]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \last_data[6]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \last_data[7]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \last_data[8]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \last_data[9]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \last_pix_idx[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \last_size[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \last_size[1]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \last_size[2]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \pixel_data[1]_i_7\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \pixel_data[1]_i_8\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \reg_pix_data[0]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \reg_pix_data[10]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \reg_pix_data[11]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \reg_pix_data[12]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \reg_pix_data[13]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \reg_pix_data[14]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \reg_pix_data[14]_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \reg_pix_data[15]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \reg_pix_data[15]_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \reg_pix_data[16]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \reg_pix_data[16]_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \reg_pix_data[17]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \reg_pix_data[17]_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \reg_pix_data[18]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \reg_pix_data[18]_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \reg_pix_data[19]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \reg_pix_data[19]_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \reg_pix_data[1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \reg_pix_data[2]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \reg_pix_data[3]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \reg_pix_data[4]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \reg_pix_data[5]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \reg_pix_data[6]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \reg_pix_data[7]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \reg_pix_data[8]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \reg_pix_data[9]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of reg_pix_data_enable_i_1 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \reg_pix_di[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \reg_pix_di[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \reg_pix_di[3]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \reg_pix_di[3]_i_1__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \reg_pix_di[5]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \reg_pix_di[6]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \reg_pix_di[6]_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \reg_pix_di[7]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \reg_pix_di[7]_i_1__0\ : label is "soft_lutpair64";
begin
  raw10_pix_valid <= \^raw10_pix_valid\;
  \ready_delay_reg[1]_0\(0) <= \^ready_delay_reg[1]_0\(0);
\di_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => \reg_pix_di_reg[3]_0\,
      D => \di_reg_reg[7]_0\(0),
      Q => di_reg(3)
    );
\di_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => \reg_pix_di_reg[3]_0\,
      D => \di_reg_reg[7]_0\(1),
      Q => di_reg(6)
    );
\di_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => \reg_pix_di_reg[3]_0\,
      D => \di_reg_reg[7]_0\(2),
      Q => di_reg(7)
    );
\last_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[0]_i_1_n_0\
    );
\last_data[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(10),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[10]_i_1_n_0\
    );
\last_data[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(11),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[11]_i_1_n_0\
    );
\last_data[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(12),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[12]_i_1_n_0\
    );
\last_data[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(13),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[13]_i_1_n_0\
    );
\last_data[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(14),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[14]_i_1_n_0\
    );
\last_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(15),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[15]_i_1_n_0\
    );
\last_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(1),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[1]_i_1_n_0\
    );
\last_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(2),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[2]_i_1_n_0\
    );
\last_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(3),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[3]_i_1_n_0\
    );
\last_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(4),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[4]_i_1_n_0\
    );
\last_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(5),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[5]_i_1_n_0\
    );
\last_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(6),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[6]_i_1_n_0\
    );
\last_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(7),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[7]_i_1_n_0\
    );
\last_data[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(8),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[8]_i_1_n_0\
    );
\last_data[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(9),
      I1 => \last_size_reg[2]_0\,
      O => \last_data[9]_i_1_n_0\
    );
\last_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[0]_i_1_n_0\,
      Q => \last_data_reg_n_0_[0]\
    );
\last_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[10]_i_1_n_0\,
      Q => \last_data_reg_n_0_[10]\
    );
\last_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[11]_i_1_n_0\,
      Q => \last_data_reg_n_0_[11]\
    );
\last_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[12]_i_1_n_0\,
      Q => \last_data_reg_n_0_[12]\
    );
\last_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[13]_i_1_n_0\,
      Q => \last_data_reg_n_0_[13]\
    );
\last_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[14]_i_1_n_0\,
      Q => \last_data_reg_n_0_[14]\
    );
\last_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[15]_i_1_n_0\,
      Q => \last_data_reg_n_0_[15]\
    );
\last_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(0),
      Q => p_1_in(0)
    );
\last_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(1),
      Q => p_1_in(1)
    );
\last_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(2),
      Q => p_1_in(2)
    );
\last_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(3),
      Q => p_1_in(3)
    );
\last_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[1]_i_1_n_0\,
      Q => \last_data_reg_n_0_[1]\
    );
\last_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(4),
      Q => p_1_in(4)
    );
\last_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(5),
      Q => p_1_in(5)
    );
\last_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(6),
      Q => p_1_in(6)
    );
\last_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(7),
      Q => p_1_in(7)
    );
\last_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(8),
      Q => p_1_in(8)
    );
\last_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(9),
      Q => p_1_in(9)
    );
\last_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(10),
      Q => p_1_in(10)
    );
\last_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(11),
      Q => p_1_in(11)
    );
\last_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(12),
      Q => p_1_in(12)
    );
\last_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(13),
      Q => p_1_in(13)
    );
\last_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[2]_i_1_n_0\,
      Q => \last_data_reg_n_0_[2]\
    );
\last_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(14),
      Q => p_1_in(14)
    );
\last_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data_reg[31]_0\(15),
      Q => p_1_in(15)
    );
\last_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[3]_i_1_n_0\,
      Q => \last_data_reg_n_0_[3]\
    );
\last_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[4]_i_1_n_0\,
      Q => \last_data_reg_n_0_[4]\
    );
\last_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[5]_i_1_n_0\,
      Q => \last_data_reg_n_0_[5]\
    );
\last_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[6]_i_1_n_0\,
      Q => \last_data_reg_n_0_[6]\
    );
\last_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[7]_i_1_n_0\,
      Q => \last_data_reg_n_0_[7]\
    );
\last_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[8]_i_1_n_0\,
      Q => \last_data_reg_n_0_[8]\
    );
\last_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_data[9]_i_1_n_0\,
      Q => \last_data_reg_n_0_[9]\
    );
\last_pix_idx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => last_size_reg(2),
      I1 => last_size_reg(0),
      I2 => last_size_reg(1),
      I3 => \last_size_reg[2]_0\,
      I4 => \last_pix_idx_reg_n_0_[1]\,
      O => \last_pix_idx[1]_i_1_n_0\
    );
\last_pix_idx_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \last_pix_idx[1]_i_1_n_0\,
      Q => \last_pix_idx_reg_n_0_[1]\
    );
\last_size[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0414"
    )
        port map (
      I0 => \last_size_reg[2]_0\,
      I1 => last_size_reg(2),
      I2 => last_size_reg(0),
      I3 => last_size_reg(1),
      O => \p_0_in__0\(0)
    );
\last_size[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5015"
    )
        port map (
      I0 => \last_size_reg[2]_0\,
      I1 => last_size_reg(2),
      I2 => last_size_reg(0),
      I3 => last_size_reg(1),
      O => \p_0_in__0\(1)
    );
\last_size[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEFFF"
    )
        port map (
      I0 => \last_pix_idx_reg_n_0_[1]\,
      I1 => \last_size_reg[2]_0\,
      I2 => last_size_reg(1),
      I3 => last_size_reg(0),
      I4 => last_size_reg(2),
      O => \last_size[2]_i_1_n_0\
    );
\last_size[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5404"
    )
        port map (
      I0 => \last_size_reg[2]_0\,
      I1 => last_size_reg(1),
      I2 => last_size_reg(0),
      I3 => last_size_reg(2),
      O => \p_0_in__0\(2)
    );
\last_size_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \last_size[2]_i_1_n_0\,
      CLR => \reg_pix_di_reg[3]_0\,
      D => \p_0_in__0\(0),
      Q => last_size_reg(0)
    );
\last_size_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \last_size[2]_i_1_n_0\,
      CLR => \reg_pix_di_reg[3]_0\,
      D => \p_0_in__0\(1),
      Q => last_size_reg(1)
    );
\last_size_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \last_size[2]_i_1_n_0\,
      CLR => \reg_pix_di_reg[3]_0\,
      D => \p_0_in__0\(2),
      Q => last_size_reg(2)
    );
\pixel_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"53005000"
    )
        port map (
      I0 => \pixel_data_reg[0]_i_2_n_0\,
      I1 => \pixel_data[0]_i_3_n_0\,
      I2 => \last_pix_idx_reg_n_0_[1]\,
      I3 => pixel_enable3_out,
      I4 => \pixel_data[0]_i_4_n_0\,
      O => \pixel_data[0]_i_1_n_0\
    );
\pixel_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => last_size_reg(0),
      I1 => \last_data_reg_n_0_[8]\,
      I2 => \pixel_data[1]_i_7_n_0\,
      I3 => \reg_pix_data_reg[15]_0\(8),
      I4 => \pixel_data[1]_i_8_n_0\,
      I5 => p_1_in(8),
      O => \pixel_data[0]_i_3_n_0\
    );
\pixel_data[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => last_size_reg(0),
      I1 => \last_data_reg_n_0_[0]\,
      I2 => \pixel_data[1]_i_7_n_0\,
      I3 => \reg_pix_data_reg[15]_0\(0),
      I4 => \pixel_data[1]_i_8_n_0\,
      I5 => p_1_in(0),
      O => \pixel_data[0]_i_4_n_0\
    );
\pixel_data[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF4747"
    )
        port map (
      I0 => \reg_pix_data_reg[15]_0\(4),
      I1 => \pixel_data[1]_i_7_n_0\,
      I2 => \last_data_reg_n_0_[4]\,
      I3 => p_1_in(4),
      I4 => \pixel_data[1]_i_8_n_0\,
      O => \pixel_data[0]_i_5_n_0\
    );
\pixel_data[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF4747"
    )
        port map (
      I0 => \reg_pix_data_reg[15]_0\(12),
      I1 => \pixel_data[1]_i_7_n_0\,
      I2 => \last_data_reg_n_0_[12]\,
      I3 => p_1_in(12),
      I4 => \pixel_data[1]_i_8_n_0\,
      O => \pixel_data[0]_i_6_n_0\
    );
\pixel_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8B800000000"
    )
        port map (
      I0 => \pixel_data[10]_i_2_n_0\,
      I1 => \pixel_data_reg[11]_i_5_n_14\,
      I2 => \pixel_data[10]_i_3_n_0\,
      I3 => \pixel_data_reg[10]_i_4_n_0\,
      I4 => \pixel_data_reg[11]_i_5_n_15\,
      I5 => pixel_enable3_out,
      O => \pixel_data[10]_i_1_n_0\
    );
\pixel_data[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_in(10),
      I1 => \pixel_data_reg[11]_i_5_n_13\,
      I2 => \reg_pix_data_reg[15]_0\(10),
      I3 => \pixel_data_reg[11]_i_5_n_12\,
      I4 => \last_data_reg_n_0_[10]\,
      O => \pixel_data[10]_i_2_n_0\
    );
\pixel_data[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_in(2),
      I1 => \pixel_data_reg[11]_i_5_n_13\,
      I2 => \reg_pix_data_reg[15]_0\(2),
      I3 => \pixel_data_reg[11]_i_5_n_12\,
      I4 => \last_data_reg_n_0_[2]\,
      O => \pixel_data[10]_i_3_n_0\
    );
\pixel_data[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_in(6),
      I1 => \pixel_data_reg[11]_i_5_n_13\,
      I2 => \reg_pix_data_reg[15]_0\(6),
      I3 => \pixel_data_reg[11]_i_5_n_12\,
      I4 => \last_data_reg_n_0_[6]\,
      O => \pixel_data[10]_i_5_n_0\
    );
\pixel_data[10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_in(14),
      I1 => \pixel_data_reg[11]_i_5_n_13\,
      I2 => \reg_pix_data_reg[15]_0\(14),
      I3 => \pixel_data_reg[11]_i_5_n_12\,
      I4 => \last_data_reg_n_0_[14]\,
      O => \pixel_data[10]_i_6_n_0\
    );
\pixel_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0EE0000"
    )
        port map (
      I0 => \pixel_data[11]_i_2_n_0\,
      I1 => \pixel_data[11]_i_3_n_0\,
      I2 => \pixel_data_reg[11]_i_4_n_0\,
      I3 => \pixel_data_reg[11]_i_5_n_15\,
      I4 => pixel_enable3_out,
      O => \pixel_data[11]_i_1_n_0\
    );
\pixel_data[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \last_data_reg_n_0_[11]\,
      I1 => \pixel_data_reg[11]_i_5_n_12\,
      I2 => \reg_pix_data_reg[15]_0\(11),
      I3 => \pixel_data_reg[11]_i_5_n_13\,
      I4 => p_1_in(11),
      I5 => \pixel_data_reg[11]_i_5_n_14\,
      O => \pixel_data[11]_i_2_n_0\
    );
\pixel_data[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \last_data_reg_n_0_[3]\,
      I1 => \pixel_data_reg[11]_i_5_n_12\,
      I2 => \reg_pix_data_reg[15]_0\(3),
      I3 => \pixel_data_reg[11]_i_5_n_13\,
      I4 => p_1_in(3),
      I5 => \pixel_data_reg[11]_i_5_n_14\,
      O => \pixel_data[11]_i_3_n_0\
    );
\pixel_data[11]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_in(7),
      I1 => \pixel_data_reg[11]_i_5_n_13\,
      I2 => \reg_pix_data_reg[15]_0\(7),
      I3 => \pixel_data_reg[11]_i_5_n_12\,
      I4 => \last_data_reg_n_0_[7]\,
      O => \pixel_data[11]_i_6_n_0\
    );
\pixel_data[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_in(15),
      I1 => \pixel_data_reg[11]_i_5_n_13\,
      I2 => \reg_pix_data_reg[15]_0\(15),
      I3 => \pixel_data_reg[11]_i_5_n_12\,
      I4 => \last_data_reg_n_0_[15]\,
      O => \pixel_data[11]_i_7_n_0\
    );
\pixel_data[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9556"
    )
        port map (
      I0 => last_size_reg(2),
      I1 => last_size_reg(0),
      I2 => last_size_reg(1),
      I3 => \last_pix_idx_reg_n_0_[1]\,
      O => \pixel_data[11]_i_8_n_0\
    );
\pixel_data[11]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => last_size_reg(0),
      I1 => \last_pix_idx_reg_n_0_[1]\,
      I2 => last_size_reg(1),
      O => \pixel_data[11]_i_9_n_0\
    );
\pixel_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EA0000"
    )
        port map (
      I0 => last_size_reg(2),
      I1 => last_size_reg(0),
      I2 => last_size_reg(1),
      I3 => \last_size_reg[2]_0\,
      I4 => \pixel_data[12]_i_2_n_0\,
      O => \pixel_data[12]_i_1_n_0\
    );
\pixel_data[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \last_data_reg_n_0_[8]\,
      I1 => last_size_reg(0),
      I2 => \last_data_reg_n_0_[0]\,
      I3 => last_size_reg(1),
      I4 => last_size_reg(2),
      I5 => \pixel_data[12]_i_3_n_0\,
      O => \pixel_data[12]_i_2_n_0\
    );
\pixel_data[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_1_in(0),
      I1 => p_1_in(8),
      I2 => last_size_reg(1),
      I3 => \reg_pix_data_reg[15]_0\(0),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(8),
      O => \pixel_data[12]_i_3_n_0\
    );
\pixel_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EA0000"
    )
        port map (
      I0 => last_size_reg(2),
      I1 => last_size_reg(0),
      I2 => last_size_reg(1),
      I3 => \last_size_reg[2]_0\,
      I4 => \pixel_data[13]_i_2_n_0\,
      O => \pixel_data[13]_i_1_n_0\
    );
\pixel_data[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \last_data_reg_n_0_[9]\,
      I1 => last_size_reg(0),
      I2 => \last_data_reg_n_0_[1]\,
      I3 => last_size_reg(1),
      I4 => last_size_reg(2),
      I5 => \pixel_data[13]_i_3_n_0\,
      O => \pixel_data[13]_i_2_n_0\
    );
\pixel_data[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_1_in(1),
      I1 => p_1_in(9),
      I2 => last_size_reg(1),
      I3 => \reg_pix_data_reg[15]_0\(1),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(9),
      O => \pixel_data[13]_i_3_n_0\
    );
\pixel_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EA0000"
    )
        port map (
      I0 => last_size_reg(2),
      I1 => last_size_reg(0),
      I2 => last_size_reg(1),
      I3 => \last_size_reg[2]_0\,
      I4 => \pixel_data[14]_i_2_n_0\,
      O => \pixel_data[14]_i_1_n_0\
    );
\pixel_data[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \last_data_reg_n_0_[10]\,
      I1 => last_size_reg(0),
      I2 => \last_data_reg_n_0_[2]\,
      I3 => last_size_reg(1),
      I4 => last_size_reg(2),
      I5 => \pixel_data[14]_i_3_n_0\,
      O => \pixel_data[14]_i_2_n_0\
    );
\pixel_data[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_1_in(2),
      I1 => p_1_in(10),
      I2 => last_size_reg(1),
      I3 => \reg_pix_data_reg[15]_0\(2),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(10),
      O => \pixel_data[14]_i_3_n_0\
    );
\pixel_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EA0000"
    )
        port map (
      I0 => last_size_reg(2),
      I1 => last_size_reg(0),
      I2 => last_size_reg(1),
      I3 => \last_size_reg[2]_0\,
      I4 => \pixel_data[15]_i_2_n_0\,
      O => \pixel_data[15]_i_1_n_0\
    );
\pixel_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \last_data_reg_n_0_[11]\,
      I1 => last_size_reg(0),
      I2 => \last_data_reg_n_0_[3]\,
      I3 => last_size_reg(1),
      I4 => last_size_reg(2),
      I5 => \pixel_data[15]_i_3_n_0\,
      O => \pixel_data[15]_i_2_n_0\
    );
\pixel_data[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_1_in(3),
      I1 => p_1_in(11),
      I2 => last_size_reg(1),
      I3 => \reg_pix_data_reg[15]_0\(3),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(11),
      O => \pixel_data[15]_i_3_n_0\
    );
\pixel_data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EA0000"
    )
        port map (
      I0 => last_size_reg(2),
      I1 => last_size_reg(0),
      I2 => last_size_reg(1),
      I3 => \last_size_reg[2]_0\,
      I4 => \pixel_data[16]_i_2_n_0\,
      O => \pixel_data[16]_i_1_n_0\
    );
\pixel_data[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \last_data_reg_n_0_[12]\,
      I1 => last_size_reg(0),
      I2 => \last_data_reg_n_0_[4]\,
      I3 => last_size_reg(1),
      I4 => last_size_reg(2),
      I5 => \pixel_data[16]_i_3_n_0\,
      O => \pixel_data[16]_i_2_n_0\
    );
\pixel_data[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_1_in(4),
      I1 => p_1_in(12),
      I2 => last_size_reg(1),
      I3 => \reg_pix_data_reg[15]_0\(4),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(12),
      O => \pixel_data[16]_i_3_n_0\
    );
\pixel_data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EA0000"
    )
        port map (
      I0 => last_size_reg(2),
      I1 => last_size_reg(0),
      I2 => last_size_reg(1),
      I3 => \last_size_reg[2]_0\,
      I4 => \pixel_data[17]_i_2_n_0\,
      O => \pixel_data[17]_i_1_n_0\
    );
\pixel_data[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \last_data_reg_n_0_[13]\,
      I1 => last_size_reg(0),
      I2 => \last_data_reg_n_0_[5]\,
      I3 => last_size_reg(1),
      I4 => last_size_reg(2),
      I5 => \pixel_data[17]_i_3_n_0\,
      O => \pixel_data[17]_i_2_n_0\
    );
\pixel_data[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_1_in(5),
      I1 => p_1_in(13),
      I2 => last_size_reg(1),
      I3 => \reg_pix_data_reg[15]_0\(5),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(13),
      O => \pixel_data[17]_i_3_n_0\
    );
\pixel_data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EA0000"
    )
        port map (
      I0 => last_size_reg(2),
      I1 => last_size_reg(0),
      I2 => last_size_reg(1),
      I3 => \last_size_reg[2]_0\,
      I4 => \pixel_data[18]_i_2_n_0\,
      O => \pixel_data[18]_i_1_n_0\
    );
\pixel_data[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \last_data_reg_n_0_[14]\,
      I1 => last_size_reg(0),
      I2 => \last_data_reg_n_0_[6]\,
      I3 => last_size_reg(1),
      I4 => last_size_reg(2),
      I5 => \pixel_data[18]_i_3_n_0\,
      O => \pixel_data[18]_i_2_n_0\
    );
\pixel_data[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_1_in(6),
      I1 => p_1_in(14),
      I2 => last_size_reg(1),
      I3 => \reg_pix_data_reg[15]_0\(6),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(14),
      O => \pixel_data[18]_i_3_n_0\
    );
\pixel_data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EA0000"
    )
        port map (
      I0 => last_size_reg(2),
      I1 => last_size_reg(0),
      I2 => last_size_reg(1),
      I3 => \last_size_reg[2]_0\,
      I4 => \pixel_data[19]_i_2_n_0\,
      O => \pixel_data[19]_i_1_n_0\
    );
\pixel_data[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \last_data_reg_n_0_[15]\,
      I1 => last_size_reg(0),
      I2 => \last_data_reg_n_0_[7]\,
      I3 => last_size_reg(1),
      I4 => last_size_reg(2),
      I5 => \pixel_data[19]_i_3_n_0\,
      O => \pixel_data[19]_i_2_n_0\
    );
\pixel_data[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_1_in(7),
      I1 => p_1_in(15),
      I2 => last_size_reg(1),
      I3 => \reg_pix_data_reg[15]_0\(7),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(15),
      O => \pixel_data[19]_i_3_n_0\
    );
\pixel_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70404040"
    )
        port map (
      I0 => \pixel_data_reg[1]_i_2_n_0\,
      I1 => \last_pix_idx_reg_n_0_[1]\,
      I2 => pixel_enable3_out,
      I3 => \pixel_data[1]_i_3_n_0\,
      I4 => \pixel_data[1]_i_4_n_0\,
      O => \pixel_data[1]_i_1_n_0\
    );
\pixel_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDF5FFF555"
    )
        port map (
      I0 => last_size_reg(0),
      I1 => p_1_in(9),
      I2 => \reg_pix_data_reg[15]_0\(9),
      I3 => \pixel_data[1]_i_7_n_0\,
      I4 => \last_data_reg_n_0_[9]\,
      I5 => \pixel_data[1]_i_8_n_0\,
      O => \pixel_data[1]_i_3_n_0\
    );
\pixel_data[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => last_size_reg(0),
      I1 => \last_data_reg_n_0_[1]\,
      I2 => \pixel_data[1]_i_7_n_0\,
      I3 => \reg_pix_data_reg[15]_0\(1),
      I4 => \pixel_data[1]_i_8_n_0\,
      I5 => p_1_in(1),
      O => \pixel_data[1]_i_4_n_0\
    );
\pixel_data[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF4747"
    )
        port map (
      I0 => \reg_pix_data_reg[15]_0\(5),
      I1 => \pixel_data[1]_i_7_n_0\,
      I2 => \last_data_reg_n_0_[5]\,
      I3 => p_1_in(5),
      I4 => \pixel_data[1]_i_8_n_0\,
      O => \pixel_data[1]_i_5_n_0\
    );
\pixel_data[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FF47"
    )
        port map (
      I0 => \reg_pix_data_reg[15]_0\(13),
      I1 => \pixel_data[1]_i_7_n_0\,
      I2 => \last_data_reg_n_0_[13]\,
      I3 => \pixel_data[1]_i_8_n_0\,
      I4 => p_1_in(13),
      O => \pixel_data[1]_i_6_n_0\
    );
\pixel_data[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9556"
    )
        port map (
      I0 => last_size_reg(2),
      I1 => last_size_reg(0),
      I2 => last_size_reg(1),
      I3 => \last_pix_idx_reg_n_0_[1]\,
      O => \pixel_data[1]_i_7_n_0\
    );
\pixel_data[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => last_size_reg(0),
      I1 => \last_pix_idx_reg_n_0_[1]\,
      I2 => last_size_reg(1),
      O => \pixel_data[1]_i_8_n_0\
    );
\pixel_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400005004000000"
    )
        port map (
      I0 => \last_size_reg[2]_0\,
      I1 => \pixel_data[2]_i_2_n_0\,
      I2 => last_size_reg(2),
      I3 => last_size_reg(1),
      I4 => last_size_reg(0),
      I5 => \last_data_reg_n_0_[0]\,
      O => \pixel_data[2]_i_1_n_0\
    );
\pixel_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_data_reg_n_0_[8]\,
      I1 => p_1_in(0),
      I2 => last_size_reg(1),
      I3 => p_1_in(8),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(0),
      O => \pixel_data[2]_i_2_n_0\
    );
\pixel_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400005004000000"
    )
        port map (
      I0 => \last_size_reg[2]_0\,
      I1 => \pixel_data[3]_i_2_n_0\,
      I2 => last_size_reg(2),
      I3 => last_size_reg(1),
      I4 => last_size_reg(0),
      I5 => \last_data_reg_n_0_[1]\,
      O => \pixel_data[3]_i_1_n_0\
    );
\pixel_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_data_reg_n_0_[9]\,
      I1 => p_1_in(1),
      I2 => last_size_reg(1),
      I3 => p_1_in(9),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(1),
      O => \pixel_data[3]_i_2_n_0\
    );
\pixel_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400005004000000"
    )
        port map (
      I0 => \last_size_reg[2]_0\,
      I1 => \pixel_data[4]_i_2_n_0\,
      I2 => last_size_reg(2),
      I3 => last_size_reg(1),
      I4 => last_size_reg(0),
      I5 => \last_data_reg_n_0_[2]\,
      O => \pixel_data[4]_i_1_n_0\
    );
\pixel_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_data_reg_n_0_[10]\,
      I1 => p_1_in(2),
      I2 => last_size_reg(1),
      I3 => p_1_in(10),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(2),
      O => \pixel_data[4]_i_2_n_0\
    );
\pixel_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400005004000000"
    )
        port map (
      I0 => \last_size_reg[2]_0\,
      I1 => \pixel_data[5]_i_2_n_0\,
      I2 => last_size_reg(2),
      I3 => last_size_reg(1),
      I4 => last_size_reg(0),
      I5 => \last_data_reg_n_0_[3]\,
      O => \pixel_data[5]_i_1_n_0\
    );
\pixel_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_data_reg_n_0_[11]\,
      I1 => p_1_in(3),
      I2 => last_size_reg(1),
      I3 => p_1_in(11),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(3),
      O => \pixel_data[5]_i_2_n_0\
    );
\pixel_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400005004000000"
    )
        port map (
      I0 => \last_size_reg[2]_0\,
      I1 => \pixel_data[6]_i_2_n_0\,
      I2 => last_size_reg(2),
      I3 => last_size_reg(1),
      I4 => last_size_reg(0),
      I5 => \last_data_reg_n_0_[4]\,
      O => \pixel_data[6]_i_1_n_0\
    );
\pixel_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_data_reg_n_0_[12]\,
      I1 => p_1_in(4),
      I2 => last_size_reg(1),
      I3 => p_1_in(12),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(4),
      O => \pixel_data[6]_i_2_n_0\
    );
\pixel_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400005004000000"
    )
        port map (
      I0 => \last_size_reg[2]_0\,
      I1 => \pixel_data[7]_i_2_n_0\,
      I2 => last_size_reg(2),
      I3 => last_size_reg(1),
      I4 => last_size_reg(0),
      I5 => \last_data_reg_n_0_[5]\,
      O => \pixel_data[7]_i_1_n_0\
    );
\pixel_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_data_reg_n_0_[13]\,
      I1 => p_1_in(5),
      I2 => last_size_reg(1),
      I3 => p_1_in(13),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(5),
      O => \pixel_data[7]_i_2_n_0\
    );
\pixel_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400005004000000"
    )
        port map (
      I0 => \last_size_reg[2]_0\,
      I1 => \pixel_data[8]_i_2_n_0\,
      I2 => last_size_reg(2),
      I3 => last_size_reg(1),
      I4 => last_size_reg(0),
      I5 => \last_data_reg_n_0_[6]\,
      O => \pixel_data[8]_i_1_n_0\
    );
\pixel_data[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_data_reg_n_0_[14]\,
      I1 => p_1_in(6),
      I2 => last_size_reg(1),
      I3 => p_1_in(14),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(6),
      O => \pixel_data[8]_i_2_n_0\
    );
\pixel_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400005004000000"
    )
        port map (
      I0 => \last_size_reg[2]_0\,
      I1 => \pixel_data[9]_i_2_n_0\,
      I2 => last_size_reg(2),
      I3 => last_size_reg(1),
      I4 => last_size_reg(0),
      I5 => \last_data_reg_n_0_[7]\,
      O => \pixel_data[9]_i_1_n_0\
    );
\pixel_data[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_data_reg_n_0_[15]\,
      I1 => p_1_in(7),
      I2 => last_size_reg(1),
      I3 => p_1_in(15),
      I4 => last_size_reg(0),
      I5 => \reg_pix_data_reg[15]_0\(7),
      O => \pixel_data[9]_i_2_n_0\
    );
\pixel_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[0]_i_1_n_0\,
      Q => pixel_data(0)
    );
\pixel_data_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data[0]_i_5_n_0\,
      I1 => \pixel_data[0]_i_6_n_0\,
      O => \pixel_data_reg[0]_i_2_n_0\,
      S => last_size_reg(0)
    );
\pixel_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[10]_i_1_n_0\,
      Q => pixel_data(10)
    );
\pixel_data_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data[10]_i_5_n_0\,
      I1 => \pixel_data[10]_i_6_n_0\,
      O => \pixel_data_reg[10]_i_4_n_0\,
      S => \pixel_data_reg[11]_i_5_n_14\
    );
\pixel_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[11]_i_1_n_0\,
      Q => pixel_data(11)
    );
\pixel_data_reg[11]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data[11]_i_6_n_0\,
      I1 => \pixel_data[11]_i_7_n_0\,
      O => \pixel_data_reg[11]_i_4_n_0\,
      S => \pixel_data_reg[11]_i_5_n_14\
    );
\pixel_data_reg[11]_i_5\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_pixel_data_reg[11]_i_5_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \pixel_data_reg[11]_i_5_n_5\,
      CO(1) => \pixel_data_reg[11]_i_5_n_6\,
      CO(0) => \pixel_data_reg[11]_i_5_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => last_size_reg(0),
      DI(0) => '0',
      O(7 downto 4) => \NLW_pixel_data_reg[11]_i_5_O_UNCONNECTED\(7 downto 4),
      O(3) => \pixel_data_reg[11]_i_5_n_12\,
      O(2) => \pixel_data_reg[11]_i_5_n_13\,
      O(1) => \pixel_data_reg[11]_i_5_n_14\,
      O(0) => \pixel_data_reg[11]_i_5_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \pixel_data[11]_i_8_n_0\,
      S(2) => \pixel_data[11]_i_9_n_0\,
      S(1) => last_size_reg(0),
      S(0) => \last_pix_idx_reg_n_0_[1]\
    );
\pixel_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[12]_i_1_n_0\,
      Q => pixel_data(12)
    );
\pixel_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[13]_i_1_n_0\,
      Q => pixel_data(13)
    );
\pixel_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[14]_i_1_n_0\,
      Q => pixel_data(14)
    );
\pixel_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[15]_i_1_n_0\,
      Q => pixel_data(15)
    );
\pixel_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[16]_i_1_n_0\,
      Q => pixel_data(16)
    );
\pixel_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[17]_i_1_n_0\,
      Q => pixel_data(17)
    );
\pixel_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[18]_i_1_n_0\,
      Q => pixel_data(18)
    );
\pixel_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[19]_i_1_n_0\,
      Q => pixel_data(19)
    );
\pixel_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[1]_i_1_n_0\,
      Q => pixel_data(1)
    );
\pixel_data_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data[1]_i_5_n_0\,
      I1 => \pixel_data[1]_i_6_n_0\,
      O => \pixel_data_reg[1]_i_2_n_0\,
      S => last_size_reg(0)
    );
\pixel_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[2]_i_1_n_0\,
      Q => pixel_data(2)
    );
\pixel_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[3]_i_1_n_0\,
      Q => pixel_data(3)
    );
\pixel_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[4]_i_1_n_0\,
      Q => pixel_data(4)
    );
\pixel_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[5]_i_1_n_0\,
      Q => pixel_data(5)
    );
\pixel_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[6]_i_1_n_0\,
      Q => pixel_data(6)
    );
\pixel_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[7]_i_1_n_0\,
      Q => pixel_data(7)
    );
\pixel_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[8]_i_1_n_0\,
      Q => pixel_data(8)
    );
\pixel_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \pixel_data[9]_i_1_n_0\,
      Q => pixel_data(9)
    );
pixel_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8000000"
    )
        port map (
      I0 => pkt_valid,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \^ready_delay_reg[1]_0\(0),
      I3 => last_size_reg(1),
      I4 => last_size_reg(0),
      I5 => last_size_reg(2),
      O => pixel_enable3_out
    );
pixel_enable_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => pixel_enable3_out,
      Q => pixel_enable
    );
\ready_delay_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \di_reg_reg[7]_0\(0),
      Q => \ready_delay_reg_n_0_[0]\
    );
\ready_delay_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \ready_delay_reg_n_0_[0]\,
      Q => \^ready_delay_reg[1]_0\(0)
    );
\ready_delay_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \^ready_delay_reg[1]_0\(0),
      Q => p_0_in
    );
\reg_pix_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(0),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[0]_i_1_n_0\
    );
\reg_pix_data[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(0),
      I3 => reg_pix_data(0),
      O => reg_pix_valid_reg_0(0)
    );
\reg_pix_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(10),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[10]_i_1_n_0\
    );
\reg_pix_data[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(10),
      I3 => reg_pix_data(10),
      O => reg_pix_valid_reg_0(10)
    );
\reg_pix_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(11),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[11]_i_1_n_0\
    );
\reg_pix_data[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(11),
      I3 => reg_pix_data(11),
      O => reg_pix_valid_reg_0(11)
    );
\reg_pix_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(12),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[12]_i_1_n_0\
    );
\reg_pix_data[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(12),
      I3 => reg_pix_data(12),
      O => reg_pix_valid_reg_0(12)
    );
\reg_pix_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(13),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[13]_i_1_n_0\
    );
\reg_pix_data[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(13),
      I3 => reg_pix_data(13),
      O => reg_pix_valid_reg_0(13)
    );
\reg_pix_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(14),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[14]_i_1_n_0\
    );
\reg_pix_data[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(14),
      I3 => reg_pix_data(14),
      O => reg_pix_valid_reg_0(14)
    );
\reg_pix_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(15),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[15]_i_1_n_0\
    );
\reg_pix_data[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(15),
      I3 => reg_pix_data(15),
      O => reg_pix_valid_reg_0(15)
    );
\reg_pix_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(16),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[16]_i_1_n_0\
    );
\reg_pix_data[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => reg_pix_data(16),
      O => reg_pix_valid_reg_0(16)
    );
\reg_pix_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(17),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[17]_i_1_n_0\
    );
\reg_pix_data[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => reg_pix_data(17),
      O => reg_pix_valid_reg_0(17)
    );
\reg_pix_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(18),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[18]_i_1_n_0\
    );
\reg_pix_data[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => reg_pix_data(18),
      O => reg_pix_valid_reg_0(18)
    );
\reg_pix_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(19),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[19]_i_1_n_0\
    );
\reg_pix_data[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => reg_pix_data(19),
      O => reg_pix_valid_reg_0(19)
    );
\reg_pix_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(1),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[1]_i_1_n_0\
    );
\reg_pix_data[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(1),
      I3 => reg_pix_data(1),
      O => reg_pix_valid_reg_0(1)
    );
\reg_pix_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(2),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[2]_i_1_n_0\
    );
\reg_pix_data[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(2),
      I3 => reg_pix_data(2),
      O => reg_pix_valid_reg_0(2)
    );
\reg_pix_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(3),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[3]_i_1_n_0\
    );
\reg_pix_data[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(3),
      I3 => reg_pix_data(3),
      O => reg_pix_valid_reg_0(3)
    );
\reg_pix_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(4),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[4]_i_1_n_0\
    );
\reg_pix_data[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(4),
      I3 => reg_pix_data(4),
      O => reg_pix_valid_reg_0(4)
    );
\reg_pix_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(5),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[5]_i_1_n_0\
    );
\reg_pix_data[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(5),
      I3 => reg_pix_data(5),
      O => reg_pix_valid_reg_0(5)
    );
\reg_pix_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(6),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[6]_i_1_n_0\
    );
\reg_pix_data[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(6),
      I3 => reg_pix_data(6),
      O => reg_pix_valid_reg_0(6)
    );
\reg_pix_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(7),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[7]_i_1_n_0\
    );
\reg_pix_data[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(7),
      I3 => reg_pix_data(7),
      O => reg_pix_valid_reg_0(7)
    );
\reg_pix_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(8),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[8]_i_1_n_0\
    );
\reg_pix_data[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(8),
      I3 => reg_pix_data(8),
      O => reg_pix_valid_reg_0(8)
    );
\reg_pix_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_data(9),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => \reg_pix_data[9]_i_1_n_0\
    );
\reg_pix_data[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => \reg_pix_data_reg[15]_0\(9),
      I3 => reg_pix_data(9),
      O => reg_pix_valid_reg_0(9)
    );
reg_pix_data_enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_enable,
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
      O => reg_pix_data_enable0
    );
reg_pix_data_enable_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => reg_pix_data_enable0,
      Q => raw10_pix_data_enable
    );
\reg_pix_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[0]_i_1_n_0\,
      Q => reg_pix_data(0)
    );
\reg_pix_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[10]_i_1_n_0\,
      Q => reg_pix_data(10)
    );
\reg_pix_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[11]_i_1_n_0\,
      Q => reg_pix_data(11)
    );
\reg_pix_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[12]_i_1_n_0\,
      Q => reg_pix_data(12)
    );
\reg_pix_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[13]_i_1_n_0\,
      Q => reg_pix_data(13)
    );
\reg_pix_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[14]_i_1_n_0\,
      Q => reg_pix_data(14)
    );
\reg_pix_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[15]_i_1_n_0\,
      Q => reg_pix_data(15)
    );
\reg_pix_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[16]_i_1_n_0\,
      Q => reg_pix_data(16)
    );
\reg_pix_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[17]_i_1_n_0\,
      Q => reg_pix_data(17)
    );
\reg_pix_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[18]_i_1_n_0\,
      Q => reg_pix_data(18)
    );
\reg_pix_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[19]_i_1_n_0\,
      Q => reg_pix_data(19)
    );
\reg_pix_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[1]_i_1_n_0\,
      Q => reg_pix_data(1)
    );
\reg_pix_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[2]_i_1_n_0\,
      Q => reg_pix_data(2)
    );
\reg_pix_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[3]_i_1_n_0\,
      Q => reg_pix_data(3)
    );
\reg_pix_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[4]_i_1_n_0\,
      Q => reg_pix_data(4)
    );
\reg_pix_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[5]_i_1_n_0\,
      Q => reg_pix_data(5)
    );
\reg_pix_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[6]_i_1_n_0\,
      Q => reg_pix_data(6)
    );
\reg_pix_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[7]_i_1_n_0\,
      Q => reg_pix_data(7)
    );
\reg_pix_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[8]_i_1_n_0\,
      Q => reg_pix_data(8)
    );
\reg_pix_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_data[9]_i_1_n_0\,
      Q => reg_pix_data(9)
    );
\reg_pix_di[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \^raw10_pix_valid\,
      I1 => \reg_pix_di_reg[7]_0\,
      I2 => Q(0),
      I3 => reg_pix_di(3),
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
      I3 => reg_pix_di(3),
      O => D(1)
    );
\reg_pix_di[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => di_reg(3),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
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
      I3 => reg_pix_di(3),
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
      I3 => reg_pix_di(3),
      O => D(3)
    );
\reg_pix_di[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => di_reg(6),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
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
      I3 => reg_pix_di(6),
      O => D(4)
    );
\reg_pix_di[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => di_reg(7),
      I1 => p_0_in,
      I2 => \^ready_delay_reg[1]_0\(0),
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
      I3 => reg_pix_di(7),
      O => D(5)
    );
\reg_pix_di_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_di[3]_i_1_n_0\,
      Q => reg_pix_di(3)
    );
\reg_pix_di_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_di[6]_i_1_n_0\,
      Q => reg_pix_di(6)
    );
\reg_pix_di_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => \reg_pix_di[7]_i_1_n_0\,
      Q => reg_pix_di(7)
    );
reg_pix_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ready_delay_reg[1]_0\(0),
      I1 => p_0_in,
      O => reg_pix_valid0
    );
reg_pix_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \reg_pix_di_reg[3]_0\,
      D => reg_pix_valid0,
      Q => \^raw10_pix_valid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_ias1_0__dphy_rx_clk_io\ is
  port (
    clk_hs_bit : out STD_LOGIC;
    clk_hs_byte : out STD_LOGIC;
    dphy_clk_p : in STD_LOGIC;
    dphy_clk_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_clk_io\ : entity is "_dphy_rx_clk_io";
end \design_1_mipi_rx_to_video_ias1_0__dphy_rx_clk_io\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_clk_io\ is
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
entity \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_byte_aligner\ is
  port (
    data_byte_valid_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_byte_valid_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_byte_valid_reg_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_byte_valid_reg_3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_byte_valid_reg_4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_8 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_9 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_10 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_11 : out STD_LOGIC_VECTOR ( 0 to 0 );
    u_ISERDESE3 : out STD_LOGIC;
    u_ISERDESE3_0 : out STD_LOGIC;
    \last_byte_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \last_byte_reg[7]_1\ : out STD_LOGIC;
    data_byte_valid_reg_12 : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_byte : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_byte_aligned_reg[4]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[2]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[7]_0\ : in STD_LOGIC;
    \align_idx_reg[0][0]\ : in STD_LOGIC;
    align_flag : in STD_LOGIC;
    \align_idx_reg[0][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \align_idx_reg[1][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \lane_buf_reg[1][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[2][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[3][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[4][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[5][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[6][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[7][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \align_offset_reg[1]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[2]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[2]_2\ : in STD_LOGIC;
    \last_byte_reg[7]_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \align_offset_reg[2]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[6]_0\ : in STD_LOGIC;
    \align_offset_reg[1]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[5]_0\ : in STD_LOGIC;
    \data_byte_aligned[4]_i_2_0\ : in STD_LOGIC;
    \align_offset_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_byte_aligned_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_byte_aligner\ : entity is "_dphy_rx_data_byte_aligner";
end \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_byte_aligner\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_byte_aligner\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal align_offset : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \align_offset[0]_i_4_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_5_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_11_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_12_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_7_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_8_n_0\ : STD_LOGIC;
  signal byte_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_byte_aligned[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_5_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[7]_i_4_n_0\ : STD_LOGIC;
  signal \^data_byte_valid_reg_0\ : STD_LOGIC;
  signal \^last_byte_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^last_byte_reg[7]_1\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[0]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^u_iserdese3\ : STD_LOGIC;
  signal \^u_iserdese3_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_idx[0][0]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \align_idx[0][1]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \align_idx[0][2]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \align_idx[1][0]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \align_idx[1][1]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \align_idx[1][2]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \align_offset[0]_i_2\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \align_offset[0]_i_4\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \align_offset[0]_i_5\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \align_offset[2]_i_11\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \lane_buf[0][0]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \lane_buf[0][1]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \lane_buf[0][2]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \lane_buf[0][3]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \lane_buf[0][4]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \lane_buf[0][5]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \lane_buf[0][6]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \lane_buf[0][7]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \lane_buf[1][0]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \lane_buf[1][10]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \lane_buf[1][11]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \lane_buf[1][12]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \lane_buf[1][13]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \lane_buf[1][14]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \lane_buf[1][15]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \lane_buf[1][1]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \lane_buf[1][2]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \lane_buf[1][3]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \lane_buf[1][4]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \lane_buf[1][5]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \lane_buf[1][6]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \lane_buf[1][7]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \lane_buf[1][8]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \lane_buf[1][9]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \lane_buf[2][0]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \lane_buf[2][10]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \lane_buf[2][11]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \lane_buf[2][12]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \lane_buf[2][13]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \lane_buf[2][14]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \lane_buf[2][15]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \lane_buf[2][1]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \lane_buf[2][2]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \lane_buf[2][3]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \lane_buf[2][4]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \lane_buf[2][5]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \lane_buf[2][6]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \lane_buf[2][7]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \lane_buf[2][8]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \lane_buf[2][9]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \lane_buf[3][0]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \lane_buf[3][10]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \lane_buf[3][11]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \lane_buf[3][12]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \lane_buf[3][13]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \lane_buf[3][14]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \lane_buf[3][15]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \lane_buf[3][1]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \lane_buf[3][2]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \lane_buf[3][3]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \lane_buf[3][4]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \lane_buf[3][5]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \lane_buf[3][6]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \lane_buf[3][7]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \lane_buf[3][8]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \lane_buf[3][9]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \lane_buf[4][0]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \lane_buf[4][10]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \lane_buf[4][11]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \lane_buf[4][12]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \lane_buf[4][13]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \lane_buf[4][14]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \lane_buf[4][15]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \lane_buf[4][1]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \lane_buf[4][2]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \lane_buf[4][3]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \lane_buf[4][4]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \lane_buf[4][5]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \lane_buf[4][6]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \lane_buf[4][7]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \lane_buf[4][8]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \lane_buf[4][9]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \lane_buf[5][0]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \lane_buf[5][10]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \lane_buf[5][11]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \lane_buf[5][12]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \lane_buf[5][13]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \lane_buf[5][14]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \lane_buf[5][15]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \lane_buf[5][1]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \lane_buf[5][2]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \lane_buf[5][3]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \lane_buf[5][4]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \lane_buf[5][5]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \lane_buf[5][6]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \lane_buf[5][7]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \lane_buf[5][8]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \lane_buf[5][9]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \lane_buf[6][0]_i_1\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \lane_buf[6][10]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \lane_buf[6][11]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \lane_buf[6][12]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \lane_buf[6][13]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \lane_buf[6][14]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \lane_buf[6][15]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \lane_buf[6][1]_i_1\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \lane_buf[6][2]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \lane_buf[6][3]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \lane_buf[6][4]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \lane_buf[6][5]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \lane_buf[6][6]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \lane_buf[6][7]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \lane_buf[6][8]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \lane_buf[6][9]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \lane_buf[7][0]_i_1\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \lane_buf[7][10]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \lane_buf[7][11]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \lane_buf[7][12]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \lane_buf[7][13]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \lane_buf[7][14]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \lane_buf[7][15]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \lane_buf[7][1]_i_1\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \lane_buf[7][2]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \lane_buf[7][3]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \lane_buf[7][4]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \lane_buf[7][5]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \lane_buf[7][6]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \lane_buf[7][7]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \lane_buf[7][8]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \lane_buf[7][9]_i_1\ : label is "soft_lutpair161";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  data_byte_valid_reg_0 <= \^data_byte_valid_reg_0\;
  \last_byte_reg[7]_0\(3 downto 0) <= \^last_byte_reg[7]_0\(3 downto 0);
  \last_byte_reg[7]_1\ <= \^last_byte_reg[7]_1\;
  u_ISERDESE3 <= \^u_iserdese3\;
  u_ISERDESE3_0 <= \^u_iserdese3_0\;
align_flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => align_flag,
      O => data_byte_valid_reg_12
    );
\align_idx[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \align_idx_reg[0][1]\(0),
      O => D(0)
    );
\align_idx[0][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EE0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \align_idx_reg[0][1]\(0),
      I3 => \align_idx_reg[0][1]\(1),
      O => D(1)
    );
\align_idx[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => align_flag,
      O => data_byte_valid_reg_11(0)
    );
\align_idx[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \align_idx_reg[1][1]\(0),
      O => data_byte_valid_reg_2(0)
    );
\align_idx[1][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EE0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \align_idx_reg[1][1]\(1),
      I3 => \align_idx_reg[1][1]\(0),
      O => data_byte_valid_reg_2(1)
    );
\align_idx[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => align_flag,
      O => data_byte_valid_reg_1(0)
    );
\align_offset[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => \last_byte_reg_n_0_[1]\,
      I2 => \last_byte_reg_n_0_[2]\,
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \align_offset[0]_i_4_n_0\,
      O => \^last_byte_reg[7]_1\
    );
\align_offset[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \last_byte_reg[7]_2\(1),
      I1 => \last_byte_reg[7]_2\(2),
      I2 => \^last_byte_reg[7]_0\(3),
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \align_offset[0]_i_5_n_0\,
      O => \^u_iserdese3_0\
    );
\align_offset[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \last_byte_reg[7]_2\(0),
      I1 => \^last_byte_reg[7]_0\(2),
      I2 => \^last_byte_reg[7]_0\(1),
      I3 => \^last_byte_reg[7]_0\(0),
      O => \align_offset[0]_i_4_n_0\
    );
\align_offset[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \last_byte_reg[7]_2\(0),
      I1 => \^last_byte_reg[7]_0\(2),
      I2 => \^last_byte_reg[7]_0\(1),
      I3 => \^last_byte_reg[7]_0\(0),
      O => \align_offset[0]_i_5_n_0\
    );
\align_offset[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^u_iserdese3\,
      I1 => \align_offset_reg[1]_0\,
      O => p_0_in(1)
    );
\align_offset[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \last_byte_reg_n_0_[3]\,
      O => \align_offset[2]_i_11_n_0\
    );
\align_offset[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \last_byte_reg[7]_2\(1),
      I1 => \^last_byte_reg[7]_0\(1),
      I2 => \^last_byte_reg[7]_0\(3),
      I3 => \^last_byte_reg[7]_0\(2),
      O => \align_offset[2]_i_12_n_0\
    );
\align_offset[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \align_offset[2]_i_7_n_0\,
      I1 => \align_offset[2]_i_8_n_0\,
      O => p_0_in(2)
    );
\align_offset[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFEF"
    )
        port map (
      I0 => \last_byte_reg[7]_2\(0),
      I1 => \^last_byte_reg[7]_0\(0),
      I2 => \align_offset[2]_i_11_n_0\,
      I3 => \align_offset[2]_i_12_n_0\,
      I4 => \^last_byte_reg[7]_1\,
      I5 => \align_offset_reg[1]_1\,
      O => \^u_iserdese3\
    );
\align_offset[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555554"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\,
      I1 => \align_offset[2]_i_12_n_0\,
      I2 => \last_byte_reg_n_0_[3]\,
      I3 => \last_byte_reg_n_0_[2]\,
      I4 => \^last_byte_reg[7]_0\(0),
      I5 => \last_byte_reg[7]_2\(0),
      O => \align_offset[2]_i_7_n_0\
    );
\align_offset[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABAAAAAA"
    )
        port map (
      I0 => \^u_iserdese3_0\,
      I1 => \align_offset_reg[2]_0\,
      I2 => \^last_byte_reg[7]_0\(2),
      I3 => \last_byte_reg[7]_2\(0),
      I4 => \^last_byte_reg[7]_0\(3),
      I5 => \last_byte_reg[7]_2\(2),
      O => \align_offset[2]_i_8_n_0\
    );
\align_offset_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => \align_offset_reg[0]_0\(0),
      Q => \^q\(0)
    );
\align_offset_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => p_0_in(1),
      Q => \^q\(1)
    );
\align_offset_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => p_0_in(2),
      Q => align_offset(2)
    );
\data_byte_aligned[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEAAA"
    )
        port map (
      I0 => \data_byte_aligned[0]_i_2__0_n_0\,
      I1 => \last_byte_reg[7]_2\(0),
      I2 => \align_offset[2]_i_7_n_0\,
      I3 => \data_byte_aligned_reg[2]_2\,
      I4 => \^data_byte_valid_reg_0\,
      O => p_1_in(0)
    );
\data_byte_aligned[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \data_byte_aligned[0]_i_3_n_0\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned[0]_i_4_n_0\,
      I4 => align_offset(2),
      I5 => \data_byte_aligned[4]_i_4_n_0\,
      O => \data_byte_aligned[0]_i_2__0_n_0\
    );
\data_byte_aligned[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"155515550000FFFF"
    )
        port map (
      I0 => \data_byte_aligned[4]_i_2_0\,
      I1 => \last_byte_reg_n_0_[0]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \data_byte_aligned_reg[4]_0\,
      I5 => align_offset(2),
      O => \data_byte_aligned[0]_i_3_n_0\
    );
\data_byte_aligned[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(0),
      I1 => \last_byte_reg_n_0_[3]\,
      I2 => \^q\(1),
      I3 => \last_byte_reg_n_0_[2]\,
      I4 => \^q\(0),
      I5 => \last_byte_reg_n_0_[1]\,
      O => \data_byte_aligned[0]_i_4_n_0\
    );
\data_byte_aligned[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC000"
    )
        port map (
      I0 => \data_byte_aligned[1]_i_2_n_0\,
      I1 => \last_byte_reg[7]_2\(1),
      I2 => \^u_iserdese3\,
      I3 => \data_byte_aligned_reg[2]_2\,
      I4 => \^data_byte_valid_reg_0\,
      O => p_1_in(1)
    );
\data_byte_aligned[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned[5]_i_4_n_0\,
      I1 => \data_byte_aligned[1]_i_3__0_n_0\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned[1]_i_4_n_0\,
      I4 => align_offset(2),
      I5 => \data_byte_aligned_reg[5]_0\,
      O => \data_byte_aligned[1]_i_2_n_0\
    );
\data_byte_aligned[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => \^last_byte_reg[7]_0\(0),
      I2 => \^q\(1),
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \^q\(0),
      I5 => \last_byte_reg_n_0_[2]\,
      O => \data_byte_aligned[1]_i_3__0_n_0\
    );
\data_byte_aligned[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => \last_byte_reg[7]_2\(7),
      I1 => \last_byte_reg[7]_2\(6),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \last_byte_reg_n_0_[1]\,
      O => \data_byte_aligned[1]_i_4_n_0\
    );
\data_byte_aligned[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => \^u_iserdese3\,
      I1 => \data_byte_aligned_reg[2]_1\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned_reg[2]_2\,
      I4 => \last_byte_reg[7]_2\(2),
      I5 => \data_byte_aligned[2]_i_2_n_0\,
      O => p_1_in(2)
    );
\data_byte_aligned[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_3_n_0\,
      I1 => \^data_byte_valid_reg_0\,
      I2 => \data_byte_aligned[2]_i_4_n_0\,
      I3 => align_offset(2),
      I4 => \data_byte_aligned_reg[2]_0\,
      I5 => \^data_byte_valid_reg_0\,
      O => \data_byte_aligned[2]_i_2_n_0\
    );
\data_byte_aligned[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \^q\(1),
      I2 => \last_byte_reg[7]_2\(7),
      I3 => \^q\(0),
      I4 => align_offset(2),
      I5 => \data_byte_aligned_reg[6]_0\,
      O => \data_byte_aligned[2]_i_3_n_0\
    );
\data_byte_aligned[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AACCAACC"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(0),
      I1 => \last_byte_reg_n_0_[3]\,
      I2 => \^last_byte_reg[7]_0\(2),
      I3 => \^q\(0),
      I4 => \^last_byte_reg[7]_0\(1),
      I5 => \^q\(1),
      O => \data_byte_aligned[2]_i_4_n_0\
    );
\data_byte_aligned[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFDFF"
    )
        port map (
      I0 => \^u_iserdese3\,
      I1 => \data_byte_aligned_reg[2]_1\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned_reg[2]_2\,
      I4 => \last_byte_reg[7]_2\(3),
      I5 => \data_byte_aligned[3]_i_2__0_n_0\,
      O => p_1_in(3)
    );
\data_byte_aligned[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \data_byte_aligned[3]_i_3_n_0\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned[3]_i_4_n_0\,
      I4 => align_offset(2),
      I5 => \data_byte_aligned_reg[3]_0\,
      O => \data_byte_aligned[3]_i_2__0_n_0\
    );
\data_byte_aligned[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \last_byte_reg_n_0_[3]\,
      I3 => align_offset(2),
      I4 => \data_byte_aligned_reg[7]_0\,
      O => \data_byte_aligned[3]_i_3_n_0\
    );
\data_byte_aligned[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(3),
      I1 => \^last_byte_reg[7]_0\(2),
      I2 => \^q\(1),
      I3 => \^last_byte_reg[7]_0\(1),
      I4 => \^q\(0),
      I5 => \^last_byte_reg[7]_0\(0),
      O => \data_byte_aligned[3]_i_4_n_0\
    );
\data_byte_aligned[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFDFF"
    )
        port map (
      I0 => \^u_iserdese3\,
      I1 => \data_byte_aligned_reg[2]_1\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned_reg[2]_2\,
      I4 => \last_byte_reg[7]_2\(4),
      I5 => \data_byte_aligned[4]_i_2_n_0\,
      O => p_1_in(4)
    );
\data_byte_aligned[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A20202A2A2A202"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \data_byte_aligned[4]_i_3_n_0\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => align_offset(2),
      I4 => \data_byte_aligned[4]_i_4_n_0\,
      I5 => \data_byte_aligned_reg[4]_0\,
      O => \data_byte_aligned[4]_i_2_n_0\
    );
\data_byte_aligned[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^last_byte_reg[7]_0\(0),
      I3 => align_offset(2),
      I4 => \data_byte_aligned[4]_i_2_0\,
      O => \data_byte_aligned[4]_i_3_n_0\
    );
\data_byte_aligned[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \last_byte_reg[7]_2\(0),
      I1 => \^last_byte_reg[7]_0\(3),
      I2 => \^q\(1),
      I3 => \^last_byte_reg[7]_0\(2),
      I4 => \^q\(0),
      I5 => \^last_byte_reg[7]_0\(1),
      O => \data_byte_aligned[4]_i_4_n_0\
    );
\data_byte_aligned[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFDFF"
    )
        port map (
      I0 => \^u_iserdese3\,
      I1 => \data_byte_aligned_reg[2]_1\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned_reg[2]_2\,
      I4 => \last_byte_reg[7]_2\(5),
      I5 => \data_byte_aligned[5]_i_2_n_0\,
      O => p_1_in(5)
    );
\data_byte_aligned[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FF00000000"
    )
        port map (
      I0 => \data_byte_aligned_reg[5]_0\,
      I1 => align_offset(2),
      I2 => \data_byte_aligned[5]_i_4_n_0\,
      I3 => \data_byte_aligned[5]_i_5_n_0\,
      I4 => \^data_byte_valid_reg_0\,
      I5 => \^data_byte_valid_reg_0\,
      O => \data_byte_aligned[5]_i_2_n_0\
    );
\data_byte_aligned[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \last_byte_reg[7]_2\(1),
      I1 => \last_byte_reg[7]_2\(0),
      I2 => \^q\(1),
      I3 => \^last_byte_reg[7]_0\(3),
      I4 => \^q\(0),
      I5 => \^last_byte_reg[7]_0\(2),
      O => \data_byte_aligned[5]_i_4_n_0\
    );
\data_byte_aligned[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800880033300030"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(1),
      I1 => align_offset(2),
      I2 => \last_byte_reg[7]_2\(6),
      I3 => \^q\(0),
      I4 => \last_byte_reg[7]_2\(7),
      I5 => \^q\(1),
      O => \data_byte_aligned[5]_i_5_n_0\
    );
\data_byte_aligned[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => \^u_iserdese3\,
      I1 => \data_byte_aligned_reg[2]_1\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned_reg[2]_2\,
      I4 => \last_byte_reg[7]_2\(6),
      I5 => \data_byte_aligned[6]_i_2_n_0\,
      O => p_1_in(6)
    );
\data_byte_aligned[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \data_byte_aligned[6]_i_3_n_0\,
      I1 => \^data_byte_valid_reg_0\,
      I2 => \data_byte_aligned_reg[2]_0\,
      I3 => align_offset(2),
      I4 => \data_byte_aligned_reg[6]_0\,
      I5 => \^data_byte_valid_reg_0\,
      O => \data_byte_aligned[6]_i_2_n_0\
    );
\data_byte_aligned[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800300"
    )
        port map (
      I0 => \^last_byte_reg[7]_0\(2),
      I1 => align_offset(2),
      I2 => \^q\(0),
      I3 => \last_byte_reg[7]_2\(7),
      I4 => \^q\(1),
      O => \data_byte_aligned[6]_i_3_n_0\
    );
\data_byte_aligned[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFDFF"
    )
        port map (
      I0 => \^u_iserdese3\,
      I1 => \data_byte_aligned_reg[2]_1\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned_reg[2]_2\,
      I4 => \last_byte_reg[7]_2\(7),
      I5 => \data_byte_aligned[7]_i_3__0_n_0\,
      O => p_1_in(7)
    );
\data_byte_aligned[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \data_byte_aligned[7]_i_4_n_0\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned_reg[3]_0\,
      I4 => align_offset(2),
      I5 => \data_byte_aligned_reg[7]_0\,
      O => \data_byte_aligned[7]_i_3__0_n_0\
    );
\data_byte_aligned[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => align_offset(2),
      I2 => \^q\(0),
      I3 => \^last_byte_reg[7]_0\(3),
      O => \data_byte_aligned[7]_i_4_n_0\
    );
\data_byte_aligned_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[7]_1\(0),
      CLR => AR(0),
      D => p_1_in(0),
      Q => byte_data(0)
    );
\data_byte_aligned_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[7]_1\(0),
      CLR => AR(0),
      D => p_1_in(1),
      Q => byte_data(1)
    );
\data_byte_aligned_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[7]_1\(0),
      CLR => AR(0),
      D => p_1_in(2),
      Q => byte_data(2)
    );
\data_byte_aligned_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[7]_1\(0),
      CLR => AR(0),
      D => p_1_in(3),
      Q => byte_data(3)
    );
\data_byte_aligned_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[7]_1\(0),
      CLR => AR(0),
      D => p_1_in(4),
      Q => byte_data(4)
    );
\data_byte_aligned_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[7]_1\(0),
      CLR => AR(0),
      D => p_1_in(5),
      Q => byte_data(5)
    );
\data_byte_aligned_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[7]_1\(0),
      CLR => AR(0),
      D => p_1_in(6),
      Q => byte_data(6)
    );
\data_byte_aligned_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[7]_1\(0),
      CLR => AR(0),
      D => p_1_in(7),
      Q => byte_data(7)
    );
data_byte_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => '1',
      Q => \^data_byte_valid_reg_0\
    );
\lane_buf[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => byte_data(0),
      O => data_byte_valid_reg_3(0)
    );
\lane_buf[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => byte_data(1),
      O => data_byte_valid_reg_3(1)
    );
\lane_buf[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => byte_data(2),
      O => data_byte_valid_reg_3(2)
    );
\lane_buf[0][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => byte_data(3),
      O => data_byte_valid_reg_3(3)
    );
\lane_buf[0][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => byte_data(4),
      O => data_byte_valid_reg_3(4)
    );
\lane_buf[0][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => byte_data(5),
      O => data_byte_valid_reg_3(5)
    );
\lane_buf[0][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => byte_data(6),
      O => data_byte_valid_reg_3(6)
    );
\lane_buf[0][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => byte_data(7),
      O => data_byte_valid_reg_3(7)
    );
\lane_buf[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(0),
      O => data_byte_valid_reg_4(0)
    );
\lane_buf[1][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(10),
      O => data_byte_valid_reg_4(10)
    );
\lane_buf[1][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(11),
      O => data_byte_valid_reg_4(11)
    );
\lane_buf[1][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(12),
      O => data_byte_valid_reg_4(12)
    );
\lane_buf[1][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(13),
      O => data_byte_valid_reg_4(13)
    );
\lane_buf[1][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(14),
      O => data_byte_valid_reg_4(14)
    );
\lane_buf[1][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(15),
      O => data_byte_valid_reg_4(15)
    );
\lane_buf[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(1),
      O => data_byte_valid_reg_4(1)
    );
\lane_buf[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(2),
      O => data_byte_valid_reg_4(2)
    );
\lane_buf[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(3),
      O => data_byte_valid_reg_4(3)
    );
\lane_buf[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(4),
      O => data_byte_valid_reg_4(4)
    );
\lane_buf[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(5),
      O => data_byte_valid_reg_4(5)
    );
\lane_buf[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(6),
      O => data_byte_valid_reg_4(6)
    );
\lane_buf[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(7),
      O => data_byte_valid_reg_4(7)
    );
\lane_buf[1][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(8),
      O => data_byte_valid_reg_4(8)
    );
\lane_buf[1][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[1][15]\(9),
      O => data_byte_valid_reg_4(9)
    );
\lane_buf[2][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(0),
      O => data_byte_valid_reg_5(0)
    );
\lane_buf[2][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(10),
      O => data_byte_valid_reg_5(10)
    );
\lane_buf[2][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(11),
      O => data_byte_valid_reg_5(11)
    );
\lane_buf[2][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(12),
      O => data_byte_valid_reg_5(12)
    );
\lane_buf[2][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(13),
      O => data_byte_valid_reg_5(13)
    );
\lane_buf[2][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(14),
      O => data_byte_valid_reg_5(14)
    );
\lane_buf[2][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(15),
      O => data_byte_valid_reg_5(15)
    );
\lane_buf[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(1),
      O => data_byte_valid_reg_5(1)
    );
\lane_buf[2][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(2),
      O => data_byte_valid_reg_5(2)
    );
\lane_buf[2][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(3),
      O => data_byte_valid_reg_5(3)
    );
\lane_buf[2][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(4),
      O => data_byte_valid_reg_5(4)
    );
\lane_buf[2][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(5),
      O => data_byte_valid_reg_5(5)
    );
\lane_buf[2][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(6),
      O => data_byte_valid_reg_5(6)
    );
\lane_buf[2][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(7),
      O => data_byte_valid_reg_5(7)
    );
\lane_buf[2][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(8),
      O => data_byte_valid_reg_5(8)
    );
\lane_buf[2][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[2][15]\(9),
      O => data_byte_valid_reg_5(9)
    );
\lane_buf[3][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(0),
      O => data_byte_valid_reg_6(0)
    );
\lane_buf[3][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(10),
      O => data_byte_valid_reg_6(10)
    );
\lane_buf[3][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(11),
      O => data_byte_valid_reg_6(11)
    );
\lane_buf[3][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(12),
      O => data_byte_valid_reg_6(12)
    );
\lane_buf[3][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(13),
      O => data_byte_valid_reg_6(13)
    );
\lane_buf[3][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(14),
      O => data_byte_valid_reg_6(14)
    );
\lane_buf[3][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(15),
      O => data_byte_valid_reg_6(15)
    );
\lane_buf[3][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(1),
      O => data_byte_valid_reg_6(1)
    );
\lane_buf[3][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(2),
      O => data_byte_valid_reg_6(2)
    );
\lane_buf[3][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(3),
      O => data_byte_valid_reg_6(3)
    );
\lane_buf[3][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(4),
      O => data_byte_valid_reg_6(4)
    );
\lane_buf[3][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(5),
      O => data_byte_valid_reg_6(5)
    );
\lane_buf[3][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(6),
      O => data_byte_valid_reg_6(6)
    );
\lane_buf[3][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(7),
      O => data_byte_valid_reg_6(7)
    );
\lane_buf[3][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(8),
      O => data_byte_valid_reg_6(8)
    );
\lane_buf[3][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[3][15]\(9),
      O => data_byte_valid_reg_6(9)
    );
\lane_buf[4][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(0),
      O => data_byte_valid_reg_7(0)
    );
\lane_buf[4][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(10),
      O => data_byte_valid_reg_7(10)
    );
\lane_buf[4][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(11),
      O => data_byte_valid_reg_7(11)
    );
\lane_buf[4][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(12),
      O => data_byte_valid_reg_7(12)
    );
\lane_buf[4][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(13),
      O => data_byte_valid_reg_7(13)
    );
\lane_buf[4][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(14),
      O => data_byte_valid_reg_7(14)
    );
\lane_buf[4][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(15),
      O => data_byte_valid_reg_7(15)
    );
\lane_buf[4][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(1),
      O => data_byte_valid_reg_7(1)
    );
\lane_buf[4][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(2),
      O => data_byte_valid_reg_7(2)
    );
\lane_buf[4][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(3),
      O => data_byte_valid_reg_7(3)
    );
\lane_buf[4][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(4),
      O => data_byte_valid_reg_7(4)
    );
\lane_buf[4][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(5),
      O => data_byte_valid_reg_7(5)
    );
\lane_buf[4][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(6),
      O => data_byte_valid_reg_7(6)
    );
\lane_buf[4][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(7),
      O => data_byte_valid_reg_7(7)
    );
\lane_buf[4][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(8),
      O => data_byte_valid_reg_7(8)
    );
\lane_buf[4][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[4][15]\(9),
      O => data_byte_valid_reg_7(9)
    );
\lane_buf[5][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(0),
      O => data_byte_valid_reg_8(0)
    );
\lane_buf[5][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(10),
      O => data_byte_valid_reg_8(10)
    );
\lane_buf[5][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(11),
      O => data_byte_valid_reg_8(11)
    );
\lane_buf[5][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(12),
      O => data_byte_valid_reg_8(12)
    );
\lane_buf[5][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(13),
      O => data_byte_valid_reg_8(13)
    );
\lane_buf[5][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(14),
      O => data_byte_valid_reg_8(14)
    );
\lane_buf[5][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(15),
      O => data_byte_valid_reg_8(15)
    );
\lane_buf[5][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(1),
      O => data_byte_valid_reg_8(1)
    );
\lane_buf[5][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(2),
      O => data_byte_valid_reg_8(2)
    );
\lane_buf[5][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(3),
      O => data_byte_valid_reg_8(3)
    );
\lane_buf[5][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(4),
      O => data_byte_valid_reg_8(4)
    );
\lane_buf[5][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(5),
      O => data_byte_valid_reg_8(5)
    );
\lane_buf[5][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(6),
      O => data_byte_valid_reg_8(6)
    );
\lane_buf[5][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(7),
      O => data_byte_valid_reg_8(7)
    );
\lane_buf[5][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(8),
      O => data_byte_valid_reg_8(8)
    );
\lane_buf[5][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[5][15]\(9),
      O => data_byte_valid_reg_8(9)
    );
\lane_buf[6][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(0),
      O => data_byte_valid_reg_9(0)
    );
\lane_buf[6][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(10),
      O => data_byte_valid_reg_9(10)
    );
\lane_buf[6][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(11),
      O => data_byte_valid_reg_9(11)
    );
\lane_buf[6][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(12),
      O => data_byte_valid_reg_9(12)
    );
\lane_buf[6][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(13),
      O => data_byte_valid_reg_9(13)
    );
\lane_buf[6][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(14),
      O => data_byte_valid_reg_9(14)
    );
\lane_buf[6][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(15),
      O => data_byte_valid_reg_9(15)
    );
\lane_buf[6][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(1),
      O => data_byte_valid_reg_9(1)
    );
\lane_buf[6][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(2),
      O => data_byte_valid_reg_9(2)
    );
\lane_buf[6][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(3),
      O => data_byte_valid_reg_9(3)
    );
\lane_buf[6][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(4),
      O => data_byte_valid_reg_9(4)
    );
\lane_buf[6][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(5),
      O => data_byte_valid_reg_9(5)
    );
\lane_buf[6][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(6),
      O => data_byte_valid_reg_9(6)
    );
\lane_buf[6][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(7),
      O => data_byte_valid_reg_9(7)
    );
\lane_buf[6][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(8),
      O => data_byte_valid_reg_9(8)
    );
\lane_buf[6][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[6][15]\(9),
      O => data_byte_valid_reg_9(9)
    );
\lane_buf[7][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(0),
      O => data_byte_valid_reg_10(0)
    );
\lane_buf[7][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(10),
      O => data_byte_valid_reg_10(10)
    );
\lane_buf[7][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(11),
      O => data_byte_valid_reg_10(11)
    );
\lane_buf[7][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(12),
      O => data_byte_valid_reg_10(12)
    );
\lane_buf[7][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(13),
      O => data_byte_valid_reg_10(13)
    );
\lane_buf[7][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(14),
      O => data_byte_valid_reg_10(14)
    );
\lane_buf[7][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(15),
      O => data_byte_valid_reg_10(15)
    );
\lane_buf[7][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(1),
      O => data_byte_valid_reg_10(1)
    );
\lane_buf[7][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(2),
      O => data_byte_valid_reg_10(2)
    );
\lane_buf[7][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(3),
      O => data_byte_valid_reg_10(3)
    );
\lane_buf[7][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(4),
      O => data_byte_valid_reg_10(4)
    );
\lane_buf[7][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(5),
      O => data_byte_valid_reg_10(5)
    );
\lane_buf[7][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(6),
      O => data_byte_valid_reg_10(6)
    );
\lane_buf[7][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(7),
      O => data_byte_valid_reg_10(7)
    );
\lane_buf[7][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(8),
      O => data_byte_valid_reg_10(8)
    );
\lane_buf[7][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \align_idx_reg[0][0]\,
      I2 => \lane_buf_reg[7][15]\(9),
      O => data_byte_valid_reg_10(9)
    );
\last_byte_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \last_byte_reg[7]_2\(0),
      Q => \last_byte_reg_n_0_[0]\
    );
\last_byte_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \last_byte_reg[7]_2\(1),
      Q => \last_byte_reg_n_0_[1]\
    );
\last_byte_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \last_byte_reg[7]_2\(2),
      Q => \last_byte_reg_n_0_[2]\
    );
\last_byte_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \last_byte_reg[7]_2\(3),
      Q => \last_byte_reg_n_0_[3]\
    );
\last_byte_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \last_byte_reg[7]_2\(4),
      Q => \^last_byte_reg[7]_0\(0)
    );
\last_byte_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \last_byte_reg[7]_2\(5),
      Q => \^last_byte_reg[7]_0\(1)
    );
\last_byte_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \last_byte_reg[7]_2\(6),
      Q => \^last_byte_reg[7]_0\(2)
    );
\last_byte_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => \last_byte_reg[7]_2\(7),
      Q => \^last_byte_reg[7]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_byte_aligner_2\ is
  port (
    data_byte_valid_reg_0 : out STD_LOGIC;
    data_byte_valid_reg_1 : out STD_LOGIC;
    data_byte_valid_reg_2 : out STD_LOGIC;
    data_byte_valid_reg_3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \last_byte_reg[5]_0\ : out STD_LOGIC;
    \last_byte_reg[7]_0\ : out STD_LOGIC;
    \last_byte_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \last_byte_reg[7]_2\ : out STD_LOGIC;
    \last_byte_reg[6]_0\ : out STD_LOGIC;
    \last_byte_reg[7]_3\ : out STD_LOGIC;
    \last_byte_reg[4]_0\ : out STD_LOGIC;
    \last_byte_reg[6]_1\ : out STD_LOGIC;
    \align_offset_reg[2]_0\ : out STD_LOGIC;
    data_byte_valid_reg_4 : out STD_LOGIC;
    \align_offset_reg[2]_1\ : out STD_LOGIC;
    data_byte_valid_reg_5 : out STD_LOGIC;
    \align_offset_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_byte_valid_reg_6 : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_byte : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_byte_aligned_reg[0]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[2]_0\ : in STD_LOGIC;
    \lane_buf_reg[0][8]\ : in STD_LOGIC;
    \data_byte_aligned_reg[0]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[0]_2\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \align_offset_reg[0]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[0]_3\ : in STD_LOGIC;
    \data_byte_aligned_reg[5]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[7]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[7]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[0]_4\ : in STD_LOGIC;
    \data_byte_aligned[4]_i_2__0_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[6]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_byte_aligned_reg[0]_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_byte_aligned_reg[7]_2\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_byte_aligner_2\ : entity is "_dphy_rx_data_byte_aligner";
end \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_byte_aligner_2\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_byte_aligner_2\ is
  signal \align_offset[0]_i_1_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_8_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_10__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_11__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_9__0_n_0\ : STD_LOGIC;
  signal \^align_offset_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \align_offset_reg_n_0_[2]\ : STD_LOGIC;
  signal byte_data : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \data_byte_aligned[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_4__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[5]_i_5__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[6]_i_4__0_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[7]_i_6__0_n_0\ : STD_LOGIC;
  signal \^data_byte_valid_reg_0\ : STD_LOGIC;
  signal \^last_byte_reg[5]_0\ : STD_LOGIC;
  signal \^last_byte_reg[7]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^last_byte_reg[7]_3\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[3]\ : STD_LOGIC;
  signal \last_byte_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_offset[0]_i_3__0\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \align_offset[0]_i_4__0\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \align_offset[0]_i_6\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \align_offset[0]_i_8\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \align_offset[1]_i_4\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \align_offset[1]_i_5\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \align_offset[2]_i_10__0\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \align_offset[2]_i_12__0\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \align_offset[2]_i_14\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \align_offset[2]_i_9__0\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \data_byte_aligned[3]_i_4__0\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \data_byte_aligned[7]_i_6__0\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \lane_buf[0][10]_i_1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \lane_buf[0][11]_i_1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \lane_buf[0][12]_i_1\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \lane_buf[0][13]_i_1\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \lane_buf[0][14]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \lane_buf[0][15]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \lane_buf[0][8]_i_1\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \lane_buf[0][9]_i_1\ : label is "soft_lutpair175";
begin
  \align_offset_reg[1]_0\(1 downto 0) <= \^align_offset_reg[1]_0\(1 downto 0);
  data_byte_valid_reg_0 <= \^data_byte_valid_reg_0\;
  \last_byte_reg[5]_0\ <= \^last_byte_reg[5]_0\;
  \last_byte_reg[7]_1\(3 downto 0) <= \^last_byte_reg[7]_1\(3 downto 0);
  \last_byte_reg[7]_3\ <= \^last_byte_reg[7]_3\;
\align_offset[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \align_offset_reg[0]_0\,
      I1 => \align_offset[0]_i_3__0_n_0\,
      I2 => \align_offset[0]_i_4__0_n_0\,
      O => \align_offset[0]_i_1_n_0\
    );
\align_offset[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \last_byte_reg_n_0_[4]\,
      I1 => \^last_byte_reg[7]_1\(1),
      I2 => Q(0),
      I3 => \^last_byte_reg[7]_1\(2),
      I4 => \^last_byte_reg[7]_3\,
      O => \align_offset[0]_i_3__0_n_0\
    );
\align_offset[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \last_byte_reg_n_0_[1]\,
      I2 => \^last_byte_reg[7]_1\(3),
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \align_offset[0]_i_8_n_0\,
      O => \align_offset[0]_i_4__0_n_0\
    );
\align_offset[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\(2),
      I1 => \^last_byte_reg[7]_1\(3),
      O => \last_byte_reg[6]_0\
    );
\align_offset[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\(2),
      I1 => Q(0),
      I2 => \^last_byte_reg[7]_1\(1),
      I3 => \last_byte_reg_n_0_[4]\,
      O => \align_offset[0]_i_8_n_0\
    );
\align_offset[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\(3),
      I1 => \^last_byte_reg[7]_1\(2),
      I2 => Q(3),
      I3 => Q(1),
      O => \last_byte_reg[7]_0\
    );
\align_offset[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\(3),
      I1 => \^last_byte_reg[7]_1\(2),
      I2 => Q(1),
      I3 => Q(3),
      O => \last_byte_reg[7]_2\
    );
\align_offset[2]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\(3),
      I1 => \^last_byte_reg[7]_1\(2),
      I2 => \^last_byte_reg[7]_1\(1),
      I3 => Q(1),
      O => \align_offset[2]_i_10__0_n_0\
    );
\align_offset[2]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \last_byte_reg_n_0_[3]\,
      I2 => \last_byte_reg_n_0_[4]\,
      I3 => Q(0),
      O => \align_offset[2]_i_11__0_n_0\
    );
\align_offset[2]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\(2),
      I1 => Q(2),
      I2 => \^last_byte_reg[7]_1\(3),
      I3 => Q(0),
      O => \last_byte_reg[6]_1\
    );
\align_offset[2]_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\(3),
      I1 => \last_byte_reg_n_0_[3]\,
      I2 => Q(2),
      I3 => Q(1),
      O => \^last_byte_reg[7]_3\
    );
\align_offset[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \last_byte_reg_n_0_[4]\,
      I1 => \^last_byte_reg[7]_1\(1),
      O => \last_byte_reg[4]_0\
    );
\align_offset[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^last_byte_reg[5]_0\,
      I1 => \data_byte_aligned_reg[0]_2\,
      O => \align_offset[2]_i_2__0_n_0\
    );
\align_offset[2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00007FFF7FFF"
    )
        port map (
      I0 => \data_byte_aligned_reg[0]_3\,
      I1 => \^last_byte_reg[7]_1\(1),
      I2 => \last_byte_reg_n_0_[4]\,
      I3 => \align_offset[2]_i_9__0_n_0\,
      I4 => \align_offset[2]_i_10__0_n_0\,
      I5 => \align_offset[2]_i_11__0_n_0\,
      O => \^last_byte_reg[5]_0\
    );
\align_offset[2]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \last_byte_reg_n_0_[3]\,
      I1 => \^last_byte_reg[7]_1\(3),
      I2 => \last_byte_reg_n_0_[1]\,
      I3 => \last_byte_reg_n_0_[2]\,
      O => \align_offset[2]_i_9__0_n_0\
    );
\align_offset_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => \align_offset[0]_i_1_n_0\,
      Q => \^align_offset_reg[1]_0\(0)
    );
\align_offset_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => \^align_offset_reg[1]_0\(1)
    );
\align_offset_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => \align_offset[2]_i_2__0_n_0\,
      Q => \align_offset_reg_n_0_[2]\
    );
\data_byte_aligned[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF020000000200"
    )
        port map (
      I0 => \^last_byte_reg[5]_0\,
      I1 => \data_byte_aligned_reg[0]_1\,
      I2 => \data_byte_aligned_reg[0]_2\,
      I3 => Q(0),
      I4 => \^data_byte_valid_reg_0\,
      I5 => \data_byte_aligned[0]_i_2_n_0\,
      O => \data_byte_aligned[0]_i_1__0_n_0\
    );
\data_byte_aligned[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned[4]_i_4__0_n_0\,
      I1 => \data_byte_aligned[0]_i_3__0_n_0\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned_reg[0]_4\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[0]_0\,
      O => \data_byte_aligned[0]_i_2_n_0\
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
      I1 => \data_byte_aligned[1]_i_4__0_n_0\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned[1]_i_5_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[5]_0\,
      O => data_byte_valid_reg_4
    );
\data_byte_aligned[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\(1),
      I1 => \last_byte_reg_n_0_[4]\,
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[3]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[2]\,
      O => \data_byte_aligned[1]_i_4__0_n_0\
    );
\data_byte_aligned[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => \^align_offset_reg[1]_0\(0),
      I3 => \^align_offset_reg[1]_0\(1),
      I4 => \last_byte_reg_n_0_[1]\,
      O => \data_byte_aligned[1]_i_5_n_0\
    );
\data_byte_aligned[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \data_byte_aligned[2]_i_3__0_n_0\,
      I1 => \^data_byte_valid_reg_0\,
      I2 => \data_byte_aligned[2]_i_4__0_n_0\,
      I3 => \align_offset_reg_n_0_[2]\,
      I4 => \data_byte_aligned_reg[2]_0\,
      I5 => \^data_byte_valid_reg_0\,
      O => data_byte_valid_reg_2
    );
\data_byte_aligned[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \last_byte_reg_n_0_[2]\,
      I1 => \^align_offset_reg[1]_0\(1),
      I2 => Q(7),
      I3 => \^align_offset_reg[1]_0\(0),
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[6]_0\,
      O => \data_byte_aligned[2]_i_3__0_n_0\
    );
\data_byte_aligned[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\(2),
      I1 => \^last_byte_reg[7]_1\(1),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \last_byte_reg_n_0_[4]\,
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \last_byte_reg_n_0_[3]\,
      O => \data_byte_aligned[2]_i_4__0_n_0\
    );
\data_byte_aligned[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_byte_aligned_reg[7]_1\,
      I1 => \data_byte_aligned[3]_i_3__0_n_0\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned[3]_i_4__0_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[7]_0\,
      O => data_byte_valid_reg_5
    );
\data_byte_aligned[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\(3),
      I1 => \^last_byte_reg[7]_1\(2),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_1\(1),
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
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => \^data_byte_valid_reg_0\,
      I1 => \data_byte_aligned[4]_i_3__0_n_0\,
      I2 => \^data_byte_valid_reg_0\,
      I3 => \data_byte_aligned[4]_i_4__0_n_0\,
      I4 => \align_offset_reg_n_0_[2]\,
      I5 => \data_byte_aligned_reg[0]_0\,
      O => data_byte_valid_reg_1
    );
\data_byte_aligned[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(1),
      I1 => \^align_offset_reg[1]_0\(0),
      I2 => \last_byte_reg_n_0_[4]\,
      I3 => \align_offset_reg_n_0_[2]\,
      I4 => \data_byte_aligned[4]_i_2__0_0\,
      O => \data_byte_aligned[4]_i_3__0_n_0\
    );
\data_byte_aligned[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(0),
      I1 => \^last_byte_reg[7]_1\(3),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_1\(2),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \^last_byte_reg[7]_1\(1),
      O => \data_byte_aligned[4]_i_4__0_n_0\
    );
\data_byte_aligned[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FF00000000"
    )
        port map (
      I0 => \data_byte_aligned_reg[5]_0\,
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \data_byte_aligned[5]_i_4__0_n_0\,
      I3 => \data_byte_aligned[5]_i_5__0_n_0\,
      I4 => \^data_byte_valid_reg_0\,
      I5 => \^data_byte_valid_reg_0\,
      O => \align_offset_reg[2]_0\
    );
\data_byte_aligned[5]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^align_offset_reg[1]_0\(1),
      I3 => \^last_byte_reg[7]_1\(3),
      I4 => \^align_offset_reg[1]_0\(0),
      I5 => \^last_byte_reg[7]_1\(2),
      O => \data_byte_aligned[5]_i_4__0_n_0\
    );
\data_byte_aligned[5]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800880033300030"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\(1),
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => Q(6),
      I3 => \^align_offset_reg[1]_0\(0),
      I4 => Q(7),
      I5 => \^align_offset_reg[1]_0\(1),
      O => \data_byte_aligned[5]_i_5__0_n_0\
    );
\data_byte_aligned[6]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \data_byte_aligned[6]_i_4__0_n_0\,
      I1 => \^data_byte_valid_reg_0\,
      I2 => \data_byte_aligned_reg[2]_0\,
      I3 => \align_offset_reg_n_0_[2]\,
      I4 => \data_byte_aligned_reg[6]_0\,
      I5 => \^data_byte_valid_reg_0\,
      O => data_byte_valid_reg_6
    );
\data_byte_aligned[6]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800300"
    )
        port map (
      I0 => \^last_byte_reg[7]_1\(2),
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \^align_offset_reg[1]_0\(0),
      I3 => Q(7),
      I4 => \^align_offset_reg[1]_0\(1),
      O => \data_byte_aligned[6]_i_4__0_n_0\
    );
\data_byte_aligned[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_byte_aligned_reg[7]_0\,
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \data_byte_aligned_reg[7]_1\,
      I3 => \^data_byte_valid_reg_0\,
      I4 => \data_byte_aligned[7]_i_6__0_n_0\,
      O => \align_offset_reg[2]_1\
    );
\data_byte_aligned[7]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^align_offset_reg[1]_0\(1),
      I1 => \align_offset_reg_n_0_[2]\,
      I2 => \^align_offset_reg[1]_0\(0),
      I3 => \^last_byte_reg[7]_1\(3),
      O => \data_byte_aligned[7]_i_6__0_n_0\
    );
\data_byte_aligned_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_5\(0),
      CLR => AR(0),
      D => \data_byte_aligned[0]_i_1__0_n_0\,
      Q => byte_data(8)
    );
\data_byte_aligned_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_5\(0),
      CLR => AR(0),
      D => \data_byte_aligned_reg[7]_2\(0),
      Q => byte_data(9)
    );
\data_byte_aligned_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_5\(0),
      CLR => AR(0),
      D => \data_byte_aligned_reg[7]_2\(1),
      Q => byte_data(10)
    );
\data_byte_aligned_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_5\(0),
      CLR => AR(0),
      D => \data_byte_aligned_reg[7]_2\(2),
      Q => byte_data(11)
    );
\data_byte_aligned_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_5\(0),
      CLR => AR(0),
      D => \data_byte_aligned_reg[7]_2\(3),
      Q => byte_data(12)
    );
\data_byte_aligned_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_5\(0),
      CLR => AR(0),
      D => \data_byte_aligned_reg[7]_2\(4),
      Q => byte_data(13)
    );
\data_byte_aligned_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_5\(0),
      CLR => AR(0),
      D => \data_byte_aligned_reg[7]_2\(5),
      Q => byte_data(14)
    );
\data_byte_aligned_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => \data_byte_aligned_reg[0]_5\(0),
      CLR => AR(0),
      D => \data_byte_aligned_reg[7]_2\(6),
      Q => byte_data(15)
    );
data_byte_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => E(0),
      CLR => AR(0),
      D => '1',
      Q => \^data_byte_valid_reg_0\
    );
\lane_buf[0][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \lane_buf_reg[0][8]\,
      I1 => \^data_byte_valid_reg_0\,
      I2 => byte_data(10),
      O => data_byte_valid_reg_3(2)
    );
\lane_buf[0][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \lane_buf_reg[0][8]\,
      I1 => \^data_byte_valid_reg_0\,
      I2 => byte_data(11),
      O => data_byte_valid_reg_3(3)
    );
\lane_buf[0][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \lane_buf_reg[0][8]\,
      I1 => \^data_byte_valid_reg_0\,
      I2 => byte_data(12),
      O => data_byte_valid_reg_3(4)
    );
\lane_buf[0][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \lane_buf_reg[0][8]\,
      I1 => \^data_byte_valid_reg_0\,
      I2 => byte_data(13),
      O => data_byte_valid_reg_3(5)
    );
\lane_buf[0][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \lane_buf_reg[0][8]\,
      I1 => \^data_byte_valid_reg_0\,
      I2 => byte_data(14),
      O => data_byte_valid_reg_3(6)
    );
\lane_buf[0][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \lane_buf_reg[0][8]\,
      I1 => \^data_byte_valid_reg_0\,
      I2 => byte_data(15),
      O => data_byte_valid_reg_3(7)
    );
\lane_buf[0][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \lane_buf_reg[0][8]\,
      I1 => \^data_byte_valid_reg_0\,
      I2 => byte_data(8),
      O => data_byte_valid_reg_3(0)
    );
\lane_buf[0][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \lane_buf_reg[0][8]\,
      I1 => \^data_byte_valid_reg_0\,
      I2 => byte_data(9),
      O => data_byte_valid_reg_3(1)
    );
\last_byte_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => \^last_byte_reg[7]_1\(0)
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
      Q => \^last_byte_reg[7]_1\(1)
    );
\last_byte_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => Q(6),
      Q => \^last_byte_reg[7]_1\(2)
    );
\last_byte_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => AR(0),
      D => Q(7),
      Q => \^last_byte_reg[7]_1\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_io\ is
  port (
    data_hs_bit_0 : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_io\ : entity is "_dphy_rx_data_io";
end \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_io\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_io\ is
  signal data_lp_n_0 : STD_LOGIC;
  signal data_lp_p_0 : STD_LOGIC;
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
u_IDELAYE3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_lp_p_0,
      I1 => data_lp_n_0,
      O => AR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_io_0\ is
  port (
    data_hs_bit_1 : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_io_0\ : entity is "_dphy_rx_data_io";
end \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_io_0\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_io_0\ is
  signal data_lp_n_1 : STD_LOGIC;
  signal data_lp_p_1 : STD_LOGIC;
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
\u_IDELAYE3_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_lp_p_1,
      I1 => data_lp_n_1,
      O => AR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mipi_rx_to_video_ias1_0__dphy_rx_to_byte\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    u_ISERDESE3_0 : out STD_LOGIC;
    u_ISERDESE3_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    u_ISERDESE3_2 : out STD_LOGIC;
    data_byte_valid_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    u_ISERDESE3_3 : out STD_LOGIC;
    u_ISERDESE3_4 : out STD_LOGIC;
    \last_byte_reg[6]\ : out STD_LOGIC;
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
    \align_offset_reg[0]\ : in STD_LOGIC;
    \align_offset_reg[0]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[7]\ : in STD_LOGIC;
    data_byte_valid_reg_0 : in STD_LOGIC;
    \data_byte_aligned_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_byte_aligned[2]_i_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_to_byte\ : entity is "_dphy_rx_to_byte";
end \design_1_mipi_rx_to_video_ias1_0__dphy_rx_to_byte\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_to_byte\ is
  signal FIFO_RD_EN0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \align_offset[2]_i_14__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_15_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_16_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_6_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_9_n_0\ : STD_LOGIC;
  signal data_bit_delayed : STD_LOGIC;
  signal fifo_empty : STD_LOGIC;
  signal \^u_iserdese3_0\ : STD_LOGIC;
  signal \^u_iserdese3_1\ : STD_LOGIC;
  signal \^u_iserdese3_2\ : STD_LOGIC;
  signal \^u_iserdese3_3\ : STD_LOGIC;
  signal NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED : STD_LOGIC;
  signal NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_offset[2]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \align_offset[2]_i_13\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \align_offset[2]_i_14__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \align_offset[2]_i_16\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \align_offset[2]_i_9\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \data_byte_aligned[7]_i_1\ : label is "soft_lutpair90";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_IDELAYE3 : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of u_IDELAYE3 : label is "MLO";
  attribute BOX_TYPE of u_ISERDESE3 : label is "PRIMITIVE";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  u_ISERDESE3_0 <= \^u_iserdese3_0\;
  u_ISERDESE3_1 <= \^u_iserdese3_1\;
  u_ISERDESE3_2 <= \^u_iserdese3_2\;
  u_ISERDESE3_3 <= \^u_iserdese3_3\;
\align_offset[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^u_iserdese3_0\,
      I1 => \align_offset_reg[0]\,
      I2 => \align_offset_reg[0]_0\,
      I3 => \^u_iserdese3_1\,
      O => D(0)
    );
\align_offset[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \align_offset[2]_i_14__0_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \data_byte_aligned_reg[7]_0\(1),
      I4 => \^q\(0),
      I5 => \data_byte_aligned_reg[7]_0\(2),
      O => \^u_iserdese3_1\
    );
\align_offset[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFF7"
    )
        port map (
      I0 => \^u_iserdese3_2\,
      I1 => \data_byte_aligned_reg[7]\,
      I2 => \^u_iserdese3_0\,
      I3 => \align_offset[2]_i_6_n_0\,
      I4 => data_byte_valid_reg_0,
      O => E(0)
    );
\align_offset[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \data_byte_aligned_reg[7]_0\(1),
      I3 => \data_byte_aligned_reg[7]_0\(0),
      O => \^u_iserdese3_3\
    );
\align_offset[2]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \data_byte_aligned_reg[7]_0\(2),
      I1 => \^q\(5),
      I2 => \^q\(0),
      I3 => \data_byte_aligned_reg[7]_0\(3),
      I4 => \align_offset[2]_i_16_n_0\,
      O => \last_byte_reg[6]\
    );
\align_offset[2]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \data_byte_aligned_reg[7]_0\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      O => \align_offset[2]_i_14__0_n_0\
    );
\align_offset[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(6),
      O => \align_offset[2]_i_15_n_0\
    );
\align_offset[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      O => \align_offset[2]_i_16_n_0\
    );
\align_offset[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFBF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \data_byte_aligned_reg[7]_0\(3),
      I2 => \align_offset[2]_i_9_n_0\,
      I3 => \^u_iserdese3_3\,
      I4 => \align_offset_reg[0]_0\,
      I5 => \^u_iserdese3_1\,
      O => \^u_iserdese3_2\
    );
\align_offset[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \align_offset[2]_i_14__0_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(6),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \^u_iserdese3_0\
    );
\align_offset[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(7),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \align_offset[2]_i_15_n_0\,
      O => \align_offset[2]_i_6_n_0\
    );
\align_offset[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \data_byte_aligned_reg[7]_0\(2),
      O => \align_offset[2]_i_9_n_0\
    );
\data_byte_aligned[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \data_byte_aligned[2]_i_3\(1),
      I3 => \^q\(2),
      I4 => \data_byte_aligned[2]_i_3\(0),
      I5 => \^q\(1),
      O => u_ISERDESE3_9
    );
\data_byte_aligned[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(7),
      I1 => \data_byte_aligned[2]_i_3\(1),
      I2 => \^q\(6),
      I3 => \data_byte_aligned[2]_i_3\(0),
      I4 => \^q\(5),
      O => u_ISERDESE3_8
    );
\data_byte_aligned[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \data_byte_aligned[2]_i_3\(1),
      I3 => \^q\(3),
      I4 => \data_byte_aligned[2]_i_3\(0),
      I5 => \^q\(2),
      O => u_ISERDESE3_6
    );
\data_byte_aligned[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \data_byte_aligned[2]_i_3\(0),
      I4 => \data_byte_aligned_reg[7]_0\(3),
      I5 => \data_byte_aligned[2]_i_3\(1),
      O => u_ISERDESE3_4
    );
\data_byte_aligned[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \data_byte_aligned[2]_i_3\(1),
      I3 => \^q\(4),
      I4 => \data_byte_aligned[2]_i_3\(0),
      I5 => \^q\(3),
      O => u_ISERDESE3_10
    );
\data_byte_aligned[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => \align_offset[2]_i_6_n_0\,
      I1 => \^u_iserdese3_0\,
      I2 => \data_byte_aligned_reg[7]\,
      I3 => data_byte_valid_reg_0,
      I4 => \^u_iserdese3_2\,
      O => data_byte_valid_reg(0)
    );
\data_byte_aligned[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \data_byte_aligned[2]_i_3\(1),
      I3 => \^q\(1),
      I4 => \data_byte_aligned[2]_i_3\(0),
      I5 => \^q\(0),
      O => u_ISERDESE3_5
    );
\data_byte_aligned[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \data_byte_aligned[2]_i_3\(1),
      I3 => \^q\(5),
      I4 => \data_byte_aligned[2]_i_3\(0),
      I5 => \^q\(4),
      O => u_ISERDESE3_7
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
entity \design_1_mipi_rx_to_video_ias1_0__dphy_rx_to_byte_1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    u_ISERDESE3_0 : out STD_LOGIC;
    u_ISERDESE3_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_byte_valid_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \last_byte_reg[5]\ : out STD_LOGIC;
    u_ISERDESE3_2 : out STD_LOGIC;
    \last_byte_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
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
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_hs_bit : in STD_LOGIC;
    \align_offset_reg[1]\ : in STD_LOGIC;
    \data_byte_aligned_reg[0]\ : in STD_LOGIC;
    \data_byte_aligned_reg[1]\ : in STD_LOGIC;
    \data_byte_aligned_reg[6]\ : in STD_LOGIC;
    \data_byte_aligned_reg[5]\ : in STD_LOGIC;
    \data_byte_aligned_reg[4]\ : in STD_LOGIC;
    \data_byte_aligned_reg[2]\ : in STD_LOGIC;
    \data_byte_aligned_reg[3]\ : in STD_LOGIC;
    \data_byte_aligned_reg[7]\ : in STD_LOGIC;
    \data_byte_aligned_reg[0]_0\ : in STD_LOGIC;
    \data_byte_aligned_reg[0]_1\ : in STD_LOGIC;
    \data_byte_aligned_reg[0]_2\ : in STD_LOGIC;
    \align_offset_reg[1]_0\ : in STD_LOGIC;
    \align_offset_reg[0]\ : in STD_LOGIC;
    \data_byte_aligned[6]_i_3__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_byte_aligned_reg[1]_0\ : in STD_LOGIC;
    \data_byte_aligned[6]_i_3__0_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_to_byte_1\ : entity is "_dphy_rx_to_byte";
end \design_1_mipi_rx_to_video_ias1_0__dphy_rx_to_byte_1\;

architecture STRUCTURE of \design_1_mipi_rx_to_video_ias1_0__dphy_rx_to_byte_1\ is
  signal FIFO_RD_EN0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \align_offset[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \align_offset[0]_i_7_n_0\ : STD_LOGIC;
  signal \align_offset[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \align_offset[2]_i_7__0_n_0\ : STD_LOGIC;
  signal data_bit_delayed : STD_LOGIC;
  signal \data_byte_aligned[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_byte_aligned[6]_i_2__0_n_0\ : STD_LOGIC;
  signal fifo_empty : STD_LOGIC;
  signal \^last_byte_reg[5]\ : STD_LOGIC;
  signal \^u_iserdese3_0\ : STD_LOGIC;
  signal \^u_iserdese3_1\ : STD_LOGIC;
  signal \^u_iserdese3_2\ : STD_LOGIC;
  signal NLW_u_IDELAYE3_CASC_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_IDELAYE3_CASC_RETURN_UNCONNECTED : STD_LOGIC;
  signal NLW_u_IDELAYE3_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_u_ISERDESE3_INTERNAL_DIVCLK_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \align_offset[0]_i_7\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \align_offset[1]_i_1__0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \align_offset[1]_i_3\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \align_offset[2]_i_1__0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \align_offset[2]_i_3__0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \align_offset[2]_i_7__0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \align_offset[2]_i_8__0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \data_byte_aligned[1]_i_3\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \data_byte_aligned[2]_i_1__0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \data_byte_aligned[3]_i_1__0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \data_byte_aligned[4]_i_1__0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \data_byte_aligned[5]_i_1__0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \data_byte_aligned[6]_i_1__0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \data_byte_aligned[6]_i_2__0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \data_byte_aligned[7]_i_1__0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \data_byte_aligned[7]_i_2__0\ : label is "soft_lutpair97";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_IDELAYE3 : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of u_IDELAYE3 : label is "MLO";
  attribute BOX_TYPE of u_ISERDESE3 : label is "PRIMITIVE";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \last_byte_reg[5]\ <= \^last_byte_reg[5]\;
  u_ISERDESE3_0 <= \^u_iserdese3_0\;
  u_ISERDESE3_1 <= \^u_iserdese3_1\;
  u_ISERDESE3_2 <= \^u_iserdese3_2\;
\align_offset[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777707777777777"
    )
        port map (
      I0 => \align_offset[0]_i_5__0_n_0\,
      I1 => \align_offset[2]_i_7__0_n_0\,
      I2 => \align_offset_reg[0]\,
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \align_offset[0]_i_7_n_0\,
      O => \^u_iserdese3_1\
    );
\align_offset[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \data_byte_aligned[6]_i_3__0\(3),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(6),
      O => \align_offset[0]_i_5__0_n_0\
    );
\align_offset[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \data_byte_aligned[6]_i_3__0\(1),
      O => \align_offset[0]_i_7_n_0\
    );
\align_offset[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \align_offset_reg[1]\,
      I1 => \align_offset[1]_i_2__0_n_0\,
      I2 => \^last_byte_reg[5]\,
      O => \last_byte_reg[5]_0\(0)
    );
\align_offset[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(5),
      I2 => \^q\(0),
      I3 => \^q\(4),
      I4 => \align_offset_reg[1]_0\,
      O => \align_offset[1]_i_2__0_n_0\
    );
\align_offset[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \data_byte_aligned[6]_i_3__0\(1),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \data_byte_aligned_reg[1]_0\,
      O => \^last_byte_reg[5]\
    );
\align_offset[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \align_offset[2]_i_3__0_n_0\,
      I1 => \align_offset[2]_i_4__0_n_0\,
      I2 => \data_byte_aligned_reg[0]\,
      O => E(0)
    );
\align_offset[2]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^u_iserdese3_1\,
      I1 => \align_offset[1]_i_2__0_n_0\,
      I2 => \align_offset_reg[1]\,
      I3 => \^u_iserdese3_0\,
      O => \align_offset[2]_i_3__0_n_0\
    );
\align_offset[2]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \align_offset[2]_i_7__0_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^q\(2),
      I4 => \^q\(5),
      O => \align_offset[2]_i_4__0_n_0\
    );
\align_offset[2]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080FF8080"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \data_byte_aligned_reg[0]_0\,
      I3 => \data_byte_aligned_reg[0]_1\,
      I4 => \^u_iserdese3_2\,
      I5 => \data_byte_aligned_reg[0]_2\,
      O => \^u_iserdese3_0\
    );
\align_offset[2]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(0),
      O => \align_offset[2]_i_7__0_n_0\
    );
\align_offset[2]_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \data_byte_aligned[6]_i_3__0\(2),
      O => \^u_iserdese3_2\
    );
\data_byte_aligned[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \data_byte_aligned[6]_i_3__0_0\(0),
      I4 => \data_byte_aligned[6]_i_3__0_0\(1),
      I5 => \data_byte_aligned[6]_i_3__0\(0),
      O => u_ISERDESE3_6
    );
\data_byte_aligned[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B888888"
    )
        port map (
      I0 => \data_byte_aligned_reg[1]\,
      I1 => \data_byte_aligned_reg[0]\,
      I2 => \^last_byte_reg[5]\,
      I3 => \^q\(1),
      I4 => \data_byte_aligned[1]_i_3_n_0\,
      O => D(0)
    );
\data_byte_aligned[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^u_iserdese3_0\,
      I1 => \align_offset_reg[1]\,
      I2 => \align_offset[1]_i_2__0_n_0\,
      O => \data_byte_aligned[1]_i_3_n_0\
    );
\data_byte_aligned[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \data_byte_aligned[6]_i_2__0_n_0\,
      I1 => \^q\(2),
      I2 => \data_byte_aligned_reg[2]\,
      O => D(1)
    );
\data_byte_aligned[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \align_offset[2]_i_3__0_n_0\,
      I2 => \data_byte_aligned_reg[0]\,
      I3 => \data_byte_aligned_reg[3]\,
      O => D(2)
    );
\data_byte_aligned[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \data_byte_aligned[6]_i_2__0_n_0\,
      I1 => \^q\(4),
      I2 => \data_byte_aligned_reg[4]\,
      O => D(3)
    );
\data_byte_aligned[4]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \data_byte_aligned[6]_i_3__0_0\(1),
      I3 => \^q\(2),
      I4 => \data_byte_aligned[6]_i_3__0_0\(0),
      I5 => \^q\(1),
      O => u_ISERDESE3_9
    );
\data_byte_aligned[4]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(7),
      I1 => \data_byte_aligned[6]_i_3__0_0\(1),
      I2 => \^q\(6),
      I3 => \data_byte_aligned[6]_i_3__0_0\(0),
      I4 => \^q\(5),
      O => u_ISERDESE3_7
    );
\data_byte_aligned[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \data_byte_aligned[6]_i_2__0_n_0\,
      I1 => \^q\(5),
      I2 => \data_byte_aligned_reg[5]\,
      O => D(4)
    );
\data_byte_aligned[5]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \data_byte_aligned[6]_i_3__0_0\(1),
      I3 => \^q\(3),
      I4 => \data_byte_aligned[6]_i_3__0_0\(0),
      I5 => \^q\(2),
      O => u_ISERDESE3_3
    );
\data_byte_aligned[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \data_byte_aligned[6]_i_2__0_n_0\,
      I1 => \^q\(6),
      I2 => \data_byte_aligned_reg[6]\,
      O => D(5)
    );
\data_byte_aligned[6]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \^u_iserdese3_0\,
      I1 => \align_offset_reg[1]\,
      I2 => \align_offset[1]_i_2__0_n_0\,
      I3 => \^u_iserdese3_1\,
      I4 => \data_byte_aligned_reg[0]\,
      O => \data_byte_aligned[6]_i_2__0_n_0\
    );
\data_byte_aligned[6]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \data_byte_aligned[6]_i_3__0_0\(1),
      I3 => \^q\(0),
      I4 => \data_byte_aligned[6]_i_3__0_0\(0),
      I5 => \data_byte_aligned[6]_i_3__0\(3),
      O => u_ISERDESE3_8
    );
\data_byte_aligned[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \data_byte_aligned[6]_i_3__0_0\(1),
      I3 => \^q\(4),
      I4 => \data_byte_aligned[6]_i_3__0_0\(0),
      I5 => \^q\(3),
      O => u_ISERDESE3_10
    );
\data_byte_aligned[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \align_offset[2]_i_3__0_n_0\,
      I1 => \align_offset[2]_i_4__0_n_0\,
      I2 => \data_byte_aligned_reg[0]\,
      O => data_byte_valid_reg(0)
    );
\data_byte_aligned[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0E"
    )
        port map (
      I0 => \^q\(7),
      I1 => \align_offset[2]_i_3__0_n_0\,
      I2 => \data_byte_aligned_reg[0]\,
      I3 => \data_byte_aligned_reg[7]\,
      O => D(6)
    );
\data_byte_aligned[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \data_byte_aligned[6]_i_3__0_0\(1),
      I3 => \^q\(5),
      I4 => \data_byte_aligned[6]_i_3__0_0\(0),
      I5 => \^q\(4),
      O => u_ISERDESE3_4
    );
\data_byte_aligned[7]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \data_byte_aligned[6]_i_3__0_0\(1),
      I3 => \^q\(1),
      I4 => \data_byte_aligned[6]_i_3__0_0\(0),
      I5 => \^q\(0),
      O => u_ISERDESE3_5
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
entity design_1_mipi_rx_to_video_ias1_0_csi2_rx_to_pixel is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    pix_valid : out STD_LOGIC;
    pix_data_enable : out STD_LOGIC;
    align_flag : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \align_idx_reg[0][1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lane_buf_reg[2][15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[1][15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[0][15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[6][15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[5][15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[4][15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[3][15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \reg_pix_di_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_pix_data_reg[19]_0\ : out STD_LOGIC_VECTOR ( 19 downto 0 );
    clk_hs_byte : in STD_LOGIC;
    align_flag_reg : in STD_LOGIC;
    byte_data_valid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    locked_reg : in STD_LOGIC;
    module_reset : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \align_idx_reg[0][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \lane_buf_reg[0][15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[1][15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[2][15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[3][15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[4][15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[5][15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[6][15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[7][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \align_idx_reg[1][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \align_idx_reg[1][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mipi_rx_to_video_ias1_0_csi2_rx_to_pixel : entity is "csi2_rx_to_pixel";
end design_1_mipi_rx_to_video_ias1_0_csi2_rx_to_pixel;

architecture STRUCTURE of design_1_mipi_rx_to_video_ias1_0_csi2_rx_to_pixel is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^align_flag\ : STD_LOGIC;
  signal data_id_2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal flag_ready : STD_LOGIC;
  signal head_clk_idx : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \^pix_valid\ : STD_LOGIC;
  signal pkt_data : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal u_csi2_lanes_aligner_n_2 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_3 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_38 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_4 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_5 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_6 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_7 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_8 : STD_LOGIC;
  signal u_csi2_lanes_aligner_n_9 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_1 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_12 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_13 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_14 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_15 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_16 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_19 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_2 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_20 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_21 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_22 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_23 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_24 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_25 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_26 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_27 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_28 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_29 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_3 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_30 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_31 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_32 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_33 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_34 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_4 : STD_LOGIC;
  signal u_csi2_packet_decoder_n_5 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_10 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_11 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_12 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_13 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_14 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_15 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_16 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_17 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_18 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_19 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_2 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_20 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_21 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_22 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_23 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_24 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_25 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_26 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_27 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_3 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_4 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_5 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_6 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_7 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_8 : STD_LOGIC;
  signal u_csi2_raw10_unpack_n_9 : STD_LOGIC;
begin
  AR(0) <= \^ar\(0);
  align_flag <= \^align_flag\;
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
      CLR => \^ar\(0),
      D => u_csi2_packet_decoder_n_3,
      Q => pix_data_enable
    );
\reg_pix_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_27,
      Q => \reg_pix_data_reg[19]_0\(0)
    );
\reg_pix_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_17,
      Q => \reg_pix_data_reg[19]_0\(10)
    );
\reg_pix_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_16,
      Q => \reg_pix_data_reg[19]_0\(11)
    );
\reg_pix_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_15,
      Q => \reg_pix_data_reg[19]_0\(12)
    );
\reg_pix_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_14,
      Q => \reg_pix_data_reg[19]_0\(13)
    );
\reg_pix_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_13,
      Q => \reg_pix_data_reg[19]_0\(14)
    );
\reg_pix_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_12,
      Q => \reg_pix_data_reg[19]_0\(15)
    );
\reg_pix_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_11,
      Q => \reg_pix_data_reg[19]_0\(16)
    );
\reg_pix_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_10,
      Q => \reg_pix_data_reg[19]_0\(17)
    );
\reg_pix_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_9,
      Q => \reg_pix_data_reg[19]_0\(18)
    );
\reg_pix_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_8,
      Q => \reg_pix_data_reg[19]_0\(19)
    );
\reg_pix_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_26,
      Q => \reg_pix_data_reg[19]_0\(1)
    );
\reg_pix_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_25,
      Q => \reg_pix_data_reg[19]_0\(2)
    );
\reg_pix_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_24,
      Q => \reg_pix_data_reg[19]_0\(3)
    );
\reg_pix_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_23,
      Q => \reg_pix_data_reg[19]_0\(4)
    );
\reg_pix_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_22,
      Q => \reg_pix_data_reg[19]_0\(5)
    );
\reg_pix_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_21,
      Q => \reg_pix_data_reg[19]_0\(6)
    );
\reg_pix_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_20,
      Q => \reg_pix_data_reg[19]_0\(7)
    );
\reg_pix_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_19,
      Q => \reg_pix_data_reg[19]_0\(8)
    );
\reg_pix_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_18,
      Q => \reg_pix_data_reg[19]_0\(9)
    );
\reg_pix_di_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_7,
      Q => \reg_pix_di_reg[7]_0\(0)
    );
\reg_pix_di_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_6,
      Q => \reg_pix_di_reg[7]_0\(1)
    );
\reg_pix_di_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_packet_decoder_n_5,
      Q => \reg_pix_di_reg[7]_0\(2)
    );
\reg_pix_di_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_5,
      Q => \reg_pix_di_reg[7]_0\(3)
    );
\reg_pix_di_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_packet_decoder_n_4,
      Q => \reg_pix_di_reg[7]_0\(4)
    );
\reg_pix_di_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_4,
      Q => \reg_pix_di_reg[7]_0\(5)
    );
\reg_pix_di_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_3,
      Q => \reg_pix_di_reg[7]_0\(6)
    );
\reg_pix_di_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_raw10_unpack_n_2,
      Q => \reg_pix_di_reg[7]_0\(7)
    );
reg_pix_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_hs_byte,
      CE => '1',
      CLR => \^ar\(0),
      D => u_csi2_packet_decoder_n_1,
      Q => \^pix_valid\
    );
u_csi2_lanes_aligner: entity work.\design_1_mipi_rx_to_video_ias1_0__csi2_lanes_aligner\
     port map (
      D(15) => u_csi2_lanes_aligner_n_2,
      D(14) => u_csi2_lanes_aligner_n_3,
      D(13) => u_csi2_lanes_aligner_n_4,
      D(12) => u_csi2_lanes_aligner_n_5,
      D(11) => u_csi2_lanes_aligner_n_6,
      D(10) => u_csi2_lanes_aligner_n_7,
      D(9) => u_csi2_lanes_aligner_n_8,
      D(8) => u_csi2_lanes_aligner_n_9,
      D(7) => u_csi2_lanes_aligner_n_10,
      D(6) => u_csi2_lanes_aligner_n_11,
      D(5) => u_csi2_lanes_aligner_n_12,
      D(4) => u_csi2_lanes_aligner_n_13,
      D(3) => u_csi2_lanes_aligner_n_14,
      D(2) => u_csi2_lanes_aligner_n_15,
      D(1) => u_csi2_lanes_aligner_n_16,
      D(0) => u_csi2_lanes_aligner_n_17,
      Q(1 downto 0) => head_clk_idx(1 downto 0),
      align_flag_reg_0 => \^align_flag\,
      align_flag_reg_1 => u_csi2_lanes_aligner_n_38,
      align_flag_reg_2 => align_flag_reg,
      \align_idx_reg[0][0]_0\(0) => \align_idx_reg[0][0]\(0),
      \align_idx_reg[0][1]_0\(1 downto 0) => \align_idx_reg[0][1]\(1 downto 0),
      \align_idx_reg[0][1]_1\(1 downto 0) => D(1 downto 0),
      \align_idx_reg[1][0]_0\(0) => \align_idx_reg[1][0]\(0),
      \align_idx_reg[1][1]_0\(1 downto 0) => Q(1 downto 0),
      \align_idx_reg[1][1]_1\(1 downto 0) => \align_idx_reg[1][1]\(1 downto 0),
      byte_data_valid(1 downto 0) => byte_data_valid(1 downto 0),
      clk_hs_byte => clk_hs_byte,
      \head_clk_idx_reg[0]\(15 downto 0) => p_2_in(31 downto 16),
      \lane_buf_reg[0][15]_0\(15 downto 0) => \lane_buf_reg[0][15]\(15 downto 0),
      \lane_buf_reg[0][15]_1\(15 downto 0) => \lane_buf_reg[0][15]_0\(15 downto 0),
      \lane_buf_reg[1][15]_0\(15 downto 0) => \lane_buf_reg[1][15]\(15 downto 0),
      \lane_buf_reg[1][15]_1\(15 downto 0) => \lane_buf_reg[1][15]_0\(15 downto 0),
      \lane_buf_reg[2][15]_0\(15 downto 0) => \lane_buf_reg[2][15]\(15 downto 0),
      \lane_buf_reg[2][15]_1\(15 downto 0) => \lane_buf_reg[2][15]_0\(15 downto 0),
      \lane_buf_reg[3][15]_0\(15 downto 0) => \lane_buf_reg[3][15]\(15 downto 0),
      \lane_buf_reg[3][15]_1\(15 downto 0) => \lane_buf_reg[3][15]_0\(15 downto 0),
      \lane_buf_reg[4][15]_0\(15 downto 0) => \lane_buf_reg[4][15]\(15 downto 0),
      \lane_buf_reg[4][15]_1\(15 downto 0) => \lane_buf_reg[4][15]_0\(15 downto 0),
      \lane_buf_reg[5][15]_0\(15 downto 0) => \lane_buf_reg[5][15]\(15 downto 0),
      \lane_buf_reg[5][15]_1\(15 downto 0) => \lane_buf_reg[5][15]_0\(15 downto 0),
      \lane_buf_reg[6][15]_0\(15 downto 0) => \lane_buf_reg[6][15]\(15 downto 0),
      \lane_buf_reg[6][15]_1\(15 downto 0) => \lane_buf_reg[6][15]_0\(15 downto 0),
      \lane_buf_reg[7][15]_0\(15 downto 0) => \lane_buf_reg[7][15]\(15 downto 0),
      module_reset => module_reset,
      module_reset_reg => \^ar\(0),
      s00_axi_aresetn => s00_axi_aresetn
    );
u_csi2_packet_decoder: entity work.\design_1_mipi_rx_to_video_ias1_0__csi2_packet_decoder\
     port map (
      D(1) => u_csi2_packet_decoder_n_4,
      D(0) => u_csi2_packet_decoder_n_5,
      E(0) => u_csi2_packet_decoder_n_16,
      Q(5 downto 3) => data_id_2(7 downto 5),
      Q(2) => data_id_2(3),
      Q(1 downto 0) => data_id_2(1 downto 0),
      clk_hs_byte => clk_hs_byte,
      \data_byte_2_reg[0]_0\ => \^ar\(0),
      \data_byte_2_reg[15]_0\(15) => u_csi2_packet_decoder_n_19,
      \data_byte_2_reg[15]_0\(14) => u_csi2_packet_decoder_n_20,
      \data_byte_2_reg[15]_0\(13) => u_csi2_packet_decoder_n_21,
      \data_byte_2_reg[15]_0\(12) => u_csi2_packet_decoder_n_22,
      \data_byte_2_reg[15]_0\(11) => u_csi2_packet_decoder_n_23,
      \data_byte_2_reg[15]_0\(10) => u_csi2_packet_decoder_n_24,
      \data_byte_2_reg[15]_0\(9) => u_csi2_packet_decoder_n_25,
      \data_byte_2_reg[15]_0\(8) => u_csi2_packet_decoder_n_26,
      \data_byte_2_reg[15]_0\(7) => u_csi2_packet_decoder_n_27,
      \data_byte_2_reg[15]_0\(6) => u_csi2_packet_decoder_n_28,
      \data_byte_2_reg[15]_0\(5) => u_csi2_packet_decoder_n_29,
      \data_byte_2_reg[15]_0\(4) => u_csi2_packet_decoder_n_30,
      \data_byte_2_reg[15]_0\(3) => u_csi2_packet_decoder_n_31,
      \data_byte_2_reg[15]_0\(2) => u_csi2_packet_decoder_n_32,
      \data_byte_2_reg[15]_0\(1) => u_csi2_packet_decoder_n_33,
      \data_byte_2_reg[15]_0\(0) => u_csi2_packet_decoder_n_34,
      \data_byte_2_reg[15]_1\(15 downto 0) => pkt_data(15 downto 0),
      \data_byte_reg[15]_0\(15) => u_csi2_lanes_aligner_n_2,
      \data_byte_reg[15]_0\(14) => u_csi2_lanes_aligner_n_3,
      \data_byte_reg[15]_0\(13) => u_csi2_lanes_aligner_n_4,
      \data_byte_reg[15]_0\(12) => u_csi2_lanes_aligner_n_5,
      \data_byte_reg[15]_0\(11) => u_csi2_lanes_aligner_n_6,
      \data_byte_reg[15]_0\(10) => u_csi2_lanes_aligner_n_7,
      \data_byte_reg[15]_0\(9) => u_csi2_lanes_aligner_n_8,
      \data_byte_reg[15]_0\(8) => u_csi2_lanes_aligner_n_9,
      \data_byte_reg[15]_0\(7) => u_csi2_lanes_aligner_n_10,
      \data_byte_reg[15]_0\(6) => u_csi2_lanes_aligner_n_11,
      \data_byte_reg[15]_0\(5) => u_csi2_lanes_aligner_n_12,
      \data_byte_reg[15]_0\(4) => u_csi2_lanes_aligner_n_13,
      \data_byte_reg[15]_0\(3) => u_csi2_lanes_aligner_n_14,
      \data_byte_reg[15]_0\(2) => u_csi2_lanes_aligner_n_15,
      \data_byte_reg[15]_0\(1) => u_csi2_lanes_aligner_n_16,
      \data_byte_reg[15]_0\(0) => u_csi2_lanes_aligner_n_17,
      data_flag_2_reg_0(2) => u_csi2_packet_decoder_n_12,
      data_flag_2_reg_0(1) => u_csi2_packet_decoder_n_13,
      data_flag_2_reg_0(0) => u_csi2_packet_decoder_n_14,
      data_flag_2_reg_1 => u_csi2_packet_decoder_n_15,
      \data_id_2_reg[4]_0\ => u_csi2_packet_decoder_n_2,
      \di_reg_reg[3]\(0) => flag_ready,
      \head_clk_idx_reg[0]_0\ => u_csi2_lanes_aligner_n_38,
      \head_clk_idx_reg[1]_0\(1 downto 0) => head_clk_idx(1 downto 0),
      \head_word_reg[0]_0\ => \^align_flag\,
      \head_word_reg[31]_0\(15 downto 0) => p_2_in(31 downto 16),
      pkt_valid => pkt_valid,
      raw10_pix_data_enable => raw10_pix_data_enable,
      raw10_pix_valid => raw10_pix_valid,
      reg_pix_valid_reg => u_csi2_packet_decoder_n_1,
      reg_pix_valid_reg_0 => u_csi2_packet_decoder_n_3
    );
u_csi2_raw10_unpack: entity work.\design_1_mipi_rx_to_video_ias1_0__csi2_raw10_unpack\
     port map (
      D(5) => u_csi2_raw10_unpack_n_2,
      D(4) => u_csi2_raw10_unpack_n_3,
      D(3) => u_csi2_raw10_unpack_n_4,
      D(2) => u_csi2_raw10_unpack_n_5,
      D(1) => u_csi2_raw10_unpack_n_6,
      D(0) => u_csi2_raw10_unpack_n_7,
      E(0) => u_csi2_packet_decoder_n_16,
      Q(5 downto 3) => data_id_2(7 downto 5),
      Q(2) => data_id_2(3),
      Q(1 downto 0) => data_id_2(1 downto 0),
      clk_hs_byte => clk_hs_byte,
      \di_reg_reg[7]_0\(2) => u_csi2_packet_decoder_n_12,
      \di_reg_reg[7]_0\(1) => u_csi2_packet_decoder_n_13,
      \di_reg_reg[7]_0\(0) => u_csi2_packet_decoder_n_14,
      \last_data_reg[31]_0\(15) => u_csi2_packet_decoder_n_19,
      \last_data_reg[31]_0\(14) => u_csi2_packet_decoder_n_20,
      \last_data_reg[31]_0\(13) => u_csi2_packet_decoder_n_21,
      \last_data_reg[31]_0\(12) => u_csi2_packet_decoder_n_22,
      \last_data_reg[31]_0\(11) => u_csi2_packet_decoder_n_23,
      \last_data_reg[31]_0\(10) => u_csi2_packet_decoder_n_24,
      \last_data_reg[31]_0\(9) => u_csi2_packet_decoder_n_25,
      \last_data_reg[31]_0\(8) => u_csi2_packet_decoder_n_26,
      \last_data_reg[31]_0\(7) => u_csi2_packet_decoder_n_27,
      \last_data_reg[31]_0\(6) => u_csi2_packet_decoder_n_28,
      \last_data_reg[31]_0\(5) => u_csi2_packet_decoder_n_29,
      \last_data_reg[31]_0\(4) => u_csi2_packet_decoder_n_30,
      \last_data_reg[31]_0\(3) => u_csi2_packet_decoder_n_31,
      \last_data_reg[31]_0\(2) => u_csi2_packet_decoder_n_32,
      \last_data_reg[31]_0\(1) => u_csi2_packet_decoder_n_33,
      \last_data_reg[31]_0\(0) => u_csi2_packet_decoder_n_34,
      \last_size_reg[2]_0\ => u_csi2_packet_decoder_n_15,
      pkt_valid => pkt_valid,
      raw10_pix_data_enable => raw10_pix_data_enable,
      raw10_pix_valid => raw10_pix_valid,
      \ready_delay_reg[1]_0\(0) => flag_ready,
      \reg_pix_data_reg[15]_0\(15 downto 0) => pkt_data(15 downto 0),
      \reg_pix_di_reg[3]_0\ => \^ar\(0),
      \reg_pix_di_reg[7]_0\ => u_csi2_packet_decoder_n_2,
      reg_pix_valid_reg_0(19) => u_csi2_raw10_unpack_n_8,
      reg_pix_valid_reg_0(18) => u_csi2_raw10_unpack_n_9,
      reg_pix_valid_reg_0(17) => u_csi2_raw10_unpack_n_10,
      reg_pix_valid_reg_0(16) => u_csi2_raw10_unpack_n_11,
      reg_pix_valid_reg_0(15) => u_csi2_raw10_unpack_n_12,
      reg_pix_valid_reg_0(14) => u_csi2_raw10_unpack_n_13,
      reg_pix_valid_reg_0(13) => u_csi2_raw10_unpack_n_14,
      reg_pix_valid_reg_0(12) => u_csi2_raw10_unpack_n_15,
      reg_pix_valid_reg_0(11) => u_csi2_raw10_unpack_n_16,
      reg_pix_valid_reg_0(10) => u_csi2_raw10_unpack_n_17,
      reg_pix_valid_reg_0(9) => u_csi2_raw10_unpack_n_18,
      reg_pix_valid_reg_0(8) => u_csi2_raw10_unpack_n_19,
      reg_pix_valid_reg_0(7) => u_csi2_raw10_unpack_n_20,
      reg_pix_valid_reg_0(6) => u_csi2_raw10_unpack_n_21,
      reg_pix_valid_reg_0(5) => u_csi2_raw10_unpack_n_22,
      reg_pix_valid_reg_0(4) => u_csi2_raw10_unpack_n_23,
      reg_pix_valid_reg_0(3) => u_csi2_raw10_unpack_n_24,
      reg_pix_valid_reg_0(2) => u_csi2_raw10_unpack_n_25,
      reg_pix_valid_reg_0(1) => u_csi2_raw10_unpack_n_26,
      reg_pix_valid_reg_0(0) => u_csi2_raw10_unpack_n_27
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mipi_rx_to_video_ias1_0_dphy_rx_to_byte is
  port (
    clk_hs_byte : out STD_LOGIC;
    byte_data_valid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_byte_valid_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_byte_valid_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_byte_valid_reg_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_8 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_byte_valid_reg_9 : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_byte_valid_reg_10 : out STD_LOGIC;
    dphy_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    align_flag : in STD_LOGIC;
    \align_idx_reg[0][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \lane_buf_reg[1][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[2][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[3][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[4][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[5][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[6][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \lane_buf_reg[7][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dphy_clk_p : in STD_LOGIC;
    dphy_clk_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mipi_rx_to_video_ias1_0_dphy_rx_to_byte : entity is "dphy_rx_to_byte";
end design_1_mipi_rx_to_video_ias1_0_dphy_rx_to_byte;

architecture STRUCTURE of design_1_mipi_rx_to_video_ias1_0_dphy_rx_to_byte is
  signal align_offset : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^byte_data_valid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal clk_hs_bit : STD_LOGIC;
  signal \^clk_hs_byte\ : STD_LOGIC;
  signal data6 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data6__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data_hs_bit_0 : STD_LOGIC;
  signal data_hs_bit_1 : STD_LOGIC;
  signal data_hs_byte_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_hs_byte_8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \genblk2[0].u_dphy_rx_to_byte_n_10\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_11\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_12\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_13\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_14\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_15\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_16\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_17\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_18\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_19\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_20\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_21\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_22\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_8\ : STD_LOGIC;
  signal \genblk2[0].u_dphy_rx_to_byte_n_9\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_10\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_11\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_12\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_13\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_14\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_15\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_16\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_17\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_18\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_19\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_20\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_21\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_22\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_23\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_24\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_25\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_26\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_27\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_28\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_29\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_8\ : STD_LOGIC;
  signal \genblk2[1].u_dphy_rx_to_byte_n_9\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_129\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_130\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_132\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_133\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_134\ : STD_LOGIC;
  signal \genblk3[0].u_dphy_rx_data_byte_aligner_n_135\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_1\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_11\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_12\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_14\ : STD_LOGIC;
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
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_26\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_27\ : STD_LOGIC;
  signal \genblk3[1].u_dphy_rx_data_byte_aligner_n_28\ : STD_LOGIC;
  signal rst0 : STD_LOGIC;
  signal rst00_out : STD_LOGIC;
begin
  byte_data_valid(1 downto 0) <= \^byte_data_valid\(1 downto 0);
  clk_hs_byte <= \^clk_hs_byte\;
\genblk1[0].u_dphy_rx_data_io\: entity work.\design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_io\
     port map (
      AR(0) => rst0,
      data_hs_bit_0 => data_hs_bit_0,
      dphy_data_n(0) => dphy_data_n(0),
      dphy_data_p(0) => dphy_data_p(0)
    );
\genblk1[1].u_dphy_rx_data_io\: entity work.\design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_io_0\
     port map (
      AR(0) => rst00_out,
      data_hs_bit_1 => data_hs_bit_1,
      dphy_data_n(0) => dphy_data_n(1),
      dphy_data_p(0) => dphy_data_p(1)
    );
\genblk2[0].u_dphy_rx_to_byte\: entity work.\design_1_mipi_rx_to_video_ias1_0__dphy_rx_to_byte\
     port map (
      AR(0) => rst0,
      D(0) => \genblk2[0].u_dphy_rx_to_byte_n_8\,
      E(0) => \genblk2[0].u_dphy_rx_to_byte_n_11\,
      Q(7 downto 0) => data_hs_byte_0(7 downto 0),
      \align_offset_reg[0]\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_135\,
      \align_offset_reg[0]_0\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_130\,
      clk_hs_bit => clk_hs_bit,
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned[2]_i_3\(1 downto 0) => align_offset(1 downto 0),
      \data_byte_aligned_reg[7]\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_129\,
      \data_byte_aligned_reg[7]_0\(3) => data6(0),
      \data_byte_aligned_reg[7]_0\(2) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_132\,
      \data_byte_aligned_reg[7]_0\(1) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_133\,
      \data_byte_aligned_reg[7]_0\(0) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_134\,
      data_byte_valid_reg(0) => \genblk2[0].u_dphy_rx_to_byte_n_13\,
      data_byte_valid_reg_0 => \^byte_data_valid\(0),
      data_hs_bit_0 => data_hs_bit_0,
      \last_byte_reg[6]\ => \genblk2[0].u_dphy_rx_to_byte_n_16\,
      u_ISERDESE3_0 => \genblk2[0].u_dphy_rx_to_byte_n_9\,
      u_ISERDESE3_1 => \genblk2[0].u_dphy_rx_to_byte_n_10\,
      u_ISERDESE3_10 => \genblk2[0].u_dphy_rx_to_byte_n_22\,
      u_ISERDESE3_2 => \genblk2[0].u_dphy_rx_to_byte_n_12\,
      u_ISERDESE3_3 => \genblk2[0].u_dphy_rx_to_byte_n_14\,
      u_ISERDESE3_4 => \genblk2[0].u_dphy_rx_to_byte_n_15\,
      u_ISERDESE3_5 => \genblk2[0].u_dphy_rx_to_byte_n_17\,
      u_ISERDESE3_6 => \genblk2[0].u_dphy_rx_to_byte_n_18\,
      u_ISERDESE3_7 => \genblk2[0].u_dphy_rx_to_byte_n_19\,
      u_ISERDESE3_8 => \genblk2[0].u_dphy_rx_to_byte_n_20\,
      u_ISERDESE3_9 => \genblk2[0].u_dphy_rx_to_byte_n_21\
    );
\genblk2[1].u_dphy_rx_to_byte\: entity work.\design_1_mipi_rx_to_video_ias1_0__dphy_rx_to_byte_1\
     port map (
      AR(0) => rst00_out,
      D(6) => \genblk2[1].u_dphy_rx_to_byte_n_12\,
      D(5) => \genblk2[1].u_dphy_rx_to_byte_n_13\,
      D(4) => \genblk2[1].u_dphy_rx_to_byte_n_14\,
      D(3) => \genblk2[1].u_dphy_rx_to_byte_n_15\,
      D(2) => \genblk2[1].u_dphy_rx_to_byte_n_16\,
      D(1) => \genblk2[1].u_dphy_rx_to_byte_n_17\,
      D(0) => \genblk2[1].u_dphy_rx_to_byte_n_18\,
      E(0) => \genblk2[1].u_dphy_rx_to_byte_n_10\,
      Q(7 downto 0) => data_hs_byte_8(7 downto 0),
      \align_offset_reg[0]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_18\,
      \align_offset_reg[1]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_11\,
      \align_offset_reg[1]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_12\,
      clk_hs_bit => clk_hs_bit,
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned[6]_i_3__0\(3) => \data6__0\(0),
      \data_byte_aligned[6]_i_3__0\(2) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_14\,
      \data_byte_aligned[6]_i_3__0\(1) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_15\,
      \data_byte_aligned[6]_i_3__0\(0) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_16\,
      \data_byte_aligned[6]_i_3__0_0\(1) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_26\,
      \data_byte_aligned[6]_i_3__0_0\(0) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_27\,
      \data_byte_aligned_reg[0]\ => \^byte_data_valid\(1),
      \data_byte_aligned_reg[0]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_21\,
      \data_byte_aligned_reg[0]_1\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_19\,
      \data_byte_aligned_reg[0]_2\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_20\,
      \data_byte_aligned_reg[1]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_23\,
      \data_byte_aligned_reg[1]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_17\,
      \data_byte_aligned_reg[2]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_2\,
      \data_byte_aligned_reg[3]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_25\,
      \data_byte_aligned_reg[4]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_1\,
      \data_byte_aligned_reg[5]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_22\,
      \data_byte_aligned_reg[6]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_28\,
      \data_byte_aligned_reg[7]\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_24\,
      data_byte_valid_reg(0) => \genblk2[1].u_dphy_rx_to_byte_n_11\,
      data_hs_bit_1 => data_hs_bit_1,
      \last_byte_reg[5]\ => \genblk2[1].u_dphy_rx_to_byte_n_19\,
      \last_byte_reg[5]_0\(0) => \genblk2[1].u_dphy_rx_to_byte_n_21\,
      u_ISERDESE3_0 => \genblk2[1].u_dphy_rx_to_byte_n_8\,
      u_ISERDESE3_1 => \genblk2[1].u_dphy_rx_to_byte_n_9\,
      u_ISERDESE3_10 => \genblk2[1].u_dphy_rx_to_byte_n_29\,
      u_ISERDESE3_2 => \genblk2[1].u_dphy_rx_to_byte_n_20\,
      u_ISERDESE3_3 => \genblk2[1].u_dphy_rx_to_byte_n_22\,
      u_ISERDESE3_4 => \genblk2[1].u_dphy_rx_to_byte_n_23\,
      u_ISERDESE3_5 => \genblk2[1].u_dphy_rx_to_byte_n_24\,
      u_ISERDESE3_6 => \genblk2[1].u_dphy_rx_to_byte_n_25\,
      u_ISERDESE3_7 => \genblk2[1].u_dphy_rx_to_byte_n_26\,
      u_ISERDESE3_8 => \genblk2[1].u_dphy_rx_to_byte_n_27\,
      u_ISERDESE3_9 => \genblk2[1].u_dphy_rx_to_byte_n_28\
    );
\genblk3[0].u_dphy_rx_data_byte_aligner\: entity work.\design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_byte_aligner\
     port map (
      AR(0) => rst0,
      D(1 downto 0) => D(1 downto 0),
      E(0) => \genblk2[0].u_dphy_rx_to_byte_n_11\,
      Q(1 downto 0) => align_offset(1 downto 0),
      align_flag => align_flag,
      \align_idx_reg[0][0]\ => \^byte_data_valid\(1),
      \align_idx_reg[0][1]\(1 downto 0) => \align_idx_reg[0][1]\(1 downto 0),
      \align_idx_reg[1][1]\(1 downto 0) => Q(1 downto 0),
      \align_offset_reg[0]_0\(0) => \genblk2[0].u_dphy_rx_to_byte_n_8\,
      \align_offset_reg[1]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_10\,
      \align_offset_reg[1]_1\ => \genblk2[0].u_dphy_rx_to_byte_n_16\,
      \align_offset_reg[2]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_14\,
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned[4]_i_2_0\ => \genblk2[0].u_dphy_rx_to_byte_n_20\,
      \data_byte_aligned_reg[2]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_15\,
      \data_byte_aligned_reg[2]_1\ => \genblk2[0].u_dphy_rx_to_byte_n_9\,
      \data_byte_aligned_reg[2]_2\ => \genblk2[0].u_dphy_rx_to_byte_n_12\,
      \data_byte_aligned_reg[3]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_17\,
      \data_byte_aligned_reg[4]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_21\,
      \data_byte_aligned_reg[5]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_18\,
      \data_byte_aligned_reg[6]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_22\,
      \data_byte_aligned_reg[7]_0\ => \genblk2[0].u_dphy_rx_to_byte_n_19\,
      \data_byte_aligned_reg[7]_1\(0) => \genblk2[0].u_dphy_rx_to_byte_n_13\,
      data_byte_valid_reg_0 => \^byte_data_valid\(0),
      data_byte_valid_reg_1(0) => data_byte_valid_reg(0),
      data_byte_valid_reg_10(15 downto 0) => data_byte_valid_reg_8(15 downto 0),
      data_byte_valid_reg_11(0) => data_byte_valid_reg_9(0),
      data_byte_valid_reg_12 => data_byte_valid_reg_10,
      data_byte_valid_reg_2(1 downto 0) => data_byte_valid_reg_0(1 downto 0),
      data_byte_valid_reg_3(7 downto 0) => data_byte_valid_reg_1(7 downto 0),
      data_byte_valid_reg_4(15 downto 0) => data_byte_valid_reg_2(15 downto 0),
      data_byte_valid_reg_5(15 downto 0) => data_byte_valid_reg_3(15 downto 0),
      data_byte_valid_reg_6(15 downto 0) => data_byte_valid_reg_4(15 downto 0),
      data_byte_valid_reg_7(15 downto 0) => data_byte_valid_reg_5(15 downto 0),
      data_byte_valid_reg_8(15 downto 0) => data_byte_valid_reg_6(15 downto 0),
      data_byte_valid_reg_9(15 downto 0) => data_byte_valid_reg_7(15 downto 0),
      \lane_buf_reg[1][15]\(15 downto 0) => \lane_buf_reg[1][15]\(15 downto 0),
      \lane_buf_reg[2][15]\(15 downto 0) => \lane_buf_reg[2][15]\(15 downto 0),
      \lane_buf_reg[3][15]\(15 downto 0) => \lane_buf_reg[3][15]\(15 downto 0),
      \lane_buf_reg[4][15]\(15 downto 0) => \lane_buf_reg[4][15]\(15 downto 0),
      \lane_buf_reg[5][15]\(15 downto 0) => \lane_buf_reg[5][15]\(15 downto 0),
      \lane_buf_reg[6][15]\(15 downto 0) => \lane_buf_reg[6][15]\(15 downto 0),
      \lane_buf_reg[7][15]\(15 downto 0) => \lane_buf_reg[7][15]\(15 downto 0),
      \last_byte_reg[7]_0\(3) => data6(0),
      \last_byte_reg[7]_0\(2) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_132\,
      \last_byte_reg[7]_0\(1) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_133\,
      \last_byte_reg[7]_0\(0) => \genblk3[0].u_dphy_rx_data_byte_aligner_n_134\,
      \last_byte_reg[7]_1\ => \genblk3[0].u_dphy_rx_data_byte_aligner_n_135\,
      \last_byte_reg[7]_2\(7 downto 0) => data_hs_byte_0(7 downto 0),
      u_ISERDESE3 => \genblk3[0].u_dphy_rx_data_byte_aligner_n_129\,
      u_ISERDESE3_0 => \genblk3[0].u_dphy_rx_data_byte_aligner_n_130\
    );
\genblk3[1].u_dphy_rx_data_byte_aligner\: entity work.\design_1_mipi_rx_to_video_ias1_0__dphy_rx_data_byte_aligner_2\
     port map (
      AR(0) => rst00_out,
      D(0) => \genblk2[1].u_dphy_rx_to_byte_n_21\,
      E(0) => \genblk2[1].u_dphy_rx_to_byte_n_10\,
      Q(7 downto 0) => data_hs_byte_8(7 downto 0),
      \align_offset_reg[0]_0\ => \genblk2[1].u_dphy_rx_to_byte_n_9\,
      \align_offset_reg[1]_0\(1) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_26\,
      \align_offset_reg[1]_0\(0) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_27\,
      \align_offset_reg[2]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_22\,
      \align_offset_reg[2]_1\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_24\,
      clk_hs_byte => \^clk_hs_byte\,
      \data_byte_aligned[4]_i_2__0_0\ => \genblk2[1].u_dphy_rx_to_byte_n_26\,
      \data_byte_aligned_reg[0]_0\ => \genblk2[1].u_dphy_rx_to_byte_n_28\,
      \data_byte_aligned_reg[0]_1\ => \genblk2[1].u_dphy_rx_to_byte_n_19\,
      \data_byte_aligned_reg[0]_2\ => \genblk2[1].u_dphy_rx_to_byte_n_8\,
      \data_byte_aligned_reg[0]_3\ => \genblk2[1].u_dphy_rx_to_byte_n_20\,
      \data_byte_aligned_reg[0]_4\ => \genblk2[1].u_dphy_rx_to_byte_n_25\,
      \data_byte_aligned_reg[0]_5\(0) => \genblk2[1].u_dphy_rx_to_byte_n_11\,
      \data_byte_aligned_reg[2]_0\ => \genblk2[1].u_dphy_rx_to_byte_n_27\,
      \data_byte_aligned_reg[5]_0\ => \genblk2[1].u_dphy_rx_to_byte_n_22\,
      \data_byte_aligned_reg[6]_0\ => \genblk2[1].u_dphy_rx_to_byte_n_29\,
      \data_byte_aligned_reg[7]_0\ => \genblk2[1].u_dphy_rx_to_byte_n_23\,
      \data_byte_aligned_reg[7]_1\ => \genblk2[1].u_dphy_rx_to_byte_n_24\,
      \data_byte_aligned_reg[7]_2\(6) => \genblk2[1].u_dphy_rx_to_byte_n_12\,
      \data_byte_aligned_reg[7]_2\(5) => \genblk2[1].u_dphy_rx_to_byte_n_13\,
      \data_byte_aligned_reg[7]_2\(4) => \genblk2[1].u_dphy_rx_to_byte_n_14\,
      \data_byte_aligned_reg[7]_2\(3) => \genblk2[1].u_dphy_rx_to_byte_n_15\,
      \data_byte_aligned_reg[7]_2\(2) => \genblk2[1].u_dphy_rx_to_byte_n_16\,
      \data_byte_aligned_reg[7]_2\(1) => \genblk2[1].u_dphy_rx_to_byte_n_17\,
      \data_byte_aligned_reg[7]_2\(0) => \genblk2[1].u_dphy_rx_to_byte_n_18\,
      data_byte_valid_reg_0 => \^byte_data_valid\(1),
      data_byte_valid_reg_1 => \genblk3[1].u_dphy_rx_data_byte_aligner_n_1\,
      data_byte_valid_reg_2 => \genblk3[1].u_dphy_rx_data_byte_aligner_n_2\,
      data_byte_valid_reg_3(7 downto 0) => data_byte_valid_reg_1(15 downto 8),
      data_byte_valid_reg_4 => \genblk3[1].u_dphy_rx_data_byte_aligner_n_23\,
      data_byte_valid_reg_5 => \genblk3[1].u_dphy_rx_data_byte_aligner_n_25\,
      data_byte_valid_reg_6 => \genblk3[1].u_dphy_rx_data_byte_aligner_n_28\,
      \lane_buf_reg[0][8]\ => \^byte_data_valid\(0),
      \last_byte_reg[4]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_20\,
      \last_byte_reg[5]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_11\,
      \last_byte_reg[6]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_18\,
      \last_byte_reg[6]_1\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_21\,
      \last_byte_reg[7]_0\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_12\,
      \last_byte_reg[7]_1\(3) => \data6__0\(0),
      \last_byte_reg[7]_1\(2) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_14\,
      \last_byte_reg[7]_1\(1) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_15\,
      \last_byte_reg[7]_1\(0) => \genblk3[1].u_dphy_rx_data_byte_aligner_n_16\,
      \last_byte_reg[7]_2\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_17\,
      \last_byte_reg[7]_3\ => \genblk3[1].u_dphy_rx_data_byte_aligner_n_19\
    );
u_dphy_rx_clk_io: entity work.\design_1_mipi_rx_to_video_ias1_0__dphy_rx_clk_io\
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
entity design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video is
  port (
    clk_hs_byte : out STD_LOGIC;
    locked_reg : out STD_LOGIC;
    reg_ce_reg : out STD_LOGIC;
    reg_active_video_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pix_cnt_reg[11]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    pix_cnt1 : out STD_LOGIC;
    \line_cnt_reg[14]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reg_vsync_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mipi_width0__0\ : out STD_LOGIC;
    \axi_araddr_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_di_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vid_data : out STD_LOGIC_VECTOR ( 19 downto 0 );
    dphy_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \pix_cnt_reg[14]\ : in STD_LOGIC;
    \pix_cnt_reg[8]\ : in STD_LOGIC;
    \line_cnt_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \line_cnt_reg[11]\ : in STD_LOGIC;
    \line_cnt_reg[6]\ : in STD_LOGIC;
    pre_vsync : in STD_LOGIC;
    \line_cnt_reg[10]\ : in STD_LOGIC;
    \line_cnt_reg[5]\ : in STD_LOGIC;
    module_reset : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    pre_active_video : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    p_1_in_11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \line_cnt_reg[15]_0\ : in STD_LOGIC;
    dphy_clk_p : in STD_LOGIC;
    dphy_clk_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video : entity is "mipi_rx_to_video";
end design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video;

architecture STRUCTURE of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video is
  signal align_flag : STD_LOGIC;
  signal \align_idx_reg[0]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \align_idx_reg[1]_9\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal byte_data_valid : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^clk_hs_byte\ : STD_LOGIC;
  signal \lane_buf_reg[0]_1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lane_buf_reg[1]_2\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lane_buf_reg[2]_3\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lane_buf_reg[3]_4\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lane_buf_reg[4]_5\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lane_buf_reg[5]_6\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lane_buf_reg[6]_7\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal locked0 : STD_LOGIC;
  signal \^locked_reg\ : STD_LOGIC;
  signal pix_data : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal pix_data_enable : STD_LOGIC;
  signal pix_di : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pix_valid : STD_LOGIC;
  signal u_csi2_rx_to_pixel_n_0 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_10 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_100 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_101 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_102 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_103 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_104 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_105 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_106 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_107 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_108 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_109 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_11 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_110 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_111 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_112 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_113 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_114 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_115 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_116 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_117 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_118 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_119 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_12 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_120 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_121 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_122 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_123 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_124 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_125 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_126 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_127 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_128 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_129 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_13 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_130 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_131 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_132 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_133 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_134 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_135 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_136 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_137 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_14 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_15 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_16 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_17 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_18 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_19 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_20 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_21 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_22 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_23 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_24 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_25 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_26 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_27 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_28 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_29 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_3 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_30 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_31 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_32 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_33 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_34 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_35 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_36 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_37 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_38 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_39 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_4 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_40 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_41 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_42 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_43 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_44 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_45 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_46 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_47 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_48 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_49 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_5 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_50 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_51 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_52 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_53 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_54 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_55 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_56 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_57 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_58 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_59 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_6 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_60 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_61 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_62 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_63 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_64 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_65 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_66 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_67 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_68 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_69 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_7 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_70 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_71 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_72 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_73 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_74 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_75 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_76 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_77 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_78 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_79 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_8 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_80 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_81 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_82 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_83 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_84 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_85 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_86 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_87 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_88 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_89 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_9 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_90 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_91 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_92 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_93 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_94 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_95 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_96 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_97 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_98 : STD_LOGIC;
  signal u_dphy_rx_to_byte_n_99 : STD_LOGIC;
begin
  clk_hs_byte <= \^clk_hs_byte\;
  locked_reg <= \^locked_reg\;
u_csi2_pixel_to_video: entity work.\design_1_mipi_rx_to_video_ias1_0__csi2_pixel_to_video\
     port map (
      AR(0) => u_csi2_rx_to_pixel_n_0,
      E(0) => locked0,
      Q(12 downto 0) => Q(12 downto 0),
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
      p_1_in_11(0) => p_1_in_11(0),
      p_2_in(0) => p_2_in(0),
      \pix_cnt_reg[11]\(5 downto 0) => \pix_cnt_reg[11]\(5 downto 0),
      \pix_cnt_reg[14]\ => \pix_cnt_reg[14]\,
      \pix_cnt_reg[8]\ => \pix_cnt_reg[8]\,
      pix_data_enable => pix_data_enable,
      pix_valid => pix_valid,
      pre_active_video => pre_active_video,
      pre_vsync => pre_vsync,
      reg_active_video_reg_0 => reg_active_video_reg,
      reg_active_video_reg_1 => pix_cnt1,
      reg_ce_reg_0 => reg_ce_reg,
      reg_ce_reg_1(0) => E(0),
      \reg_di_reg[7]_0\(7 downto 0) => \reg_di_reg[7]\(7 downto 0),
      \reg_pix_data_reg[19]_0\(19 downto 0) => pix_data(19 downto 0),
      \reg_pix_di_reg[7]_0\(7 downto 0) => pix_di(7 downto 0),
      reg_vsync_reg_0 => D(0),
      reg_vsync_reg_1(0) => reg_vsync_reg(0),
      vid_data(19 downto 0) => vid_data(19 downto 0)
    );
u_csi2_rx_to_pixel: entity work.design_1_mipi_rx_to_video_ias1_0_csi2_rx_to_pixel
     port map (
      AR(0) => u_csi2_rx_to_pixel_n_0,
      D(1) => u_dphy_rx_to_byte_n_4,
      D(0) => u_dphy_rx_to_byte_n_5,
      E(0) => locked0,
      Q(1 downto 0) => \align_idx_reg[1]_9\(1 downto 0),
      align_flag => align_flag,
      align_flag_reg => u_dphy_rx_to_byte_n_137,
      \align_idx_reg[0][0]\(0) => u_dphy_rx_to_byte_n_136,
      \align_idx_reg[0][1]\(1 downto 0) => \align_idx_reg[0]_0\(1 downto 0),
      \align_idx_reg[1][0]\(0) => u_dphy_rx_to_byte_n_3,
      \align_idx_reg[1][1]\(1) => u_dphy_rx_to_byte_n_6,
      \align_idx_reg[1][1]\(0) => u_dphy_rx_to_byte_n_7,
      byte_data_valid(1 downto 0) => byte_data_valid(1 downto 0),
      clk_hs_byte => \^clk_hs_byte\,
      \lane_buf_reg[0][15]\(15 downto 0) => \lane_buf_reg[0]_1\(15 downto 0),
      \lane_buf_reg[0][15]_0\(15) => u_dphy_rx_to_byte_n_8,
      \lane_buf_reg[0][15]_0\(14) => u_dphy_rx_to_byte_n_9,
      \lane_buf_reg[0][15]_0\(13) => u_dphy_rx_to_byte_n_10,
      \lane_buf_reg[0][15]_0\(12) => u_dphy_rx_to_byte_n_11,
      \lane_buf_reg[0][15]_0\(11) => u_dphy_rx_to_byte_n_12,
      \lane_buf_reg[0][15]_0\(10) => u_dphy_rx_to_byte_n_13,
      \lane_buf_reg[0][15]_0\(9) => u_dphy_rx_to_byte_n_14,
      \lane_buf_reg[0][15]_0\(8) => u_dphy_rx_to_byte_n_15,
      \lane_buf_reg[0][15]_0\(7) => u_dphy_rx_to_byte_n_16,
      \lane_buf_reg[0][15]_0\(6) => u_dphy_rx_to_byte_n_17,
      \lane_buf_reg[0][15]_0\(5) => u_dphy_rx_to_byte_n_18,
      \lane_buf_reg[0][15]_0\(4) => u_dphy_rx_to_byte_n_19,
      \lane_buf_reg[0][15]_0\(3) => u_dphy_rx_to_byte_n_20,
      \lane_buf_reg[0][15]_0\(2) => u_dphy_rx_to_byte_n_21,
      \lane_buf_reg[0][15]_0\(1) => u_dphy_rx_to_byte_n_22,
      \lane_buf_reg[0][15]_0\(0) => u_dphy_rx_to_byte_n_23,
      \lane_buf_reg[1][15]\(15 downto 0) => \lane_buf_reg[1]_2\(15 downto 0),
      \lane_buf_reg[1][15]_0\(15) => u_dphy_rx_to_byte_n_24,
      \lane_buf_reg[1][15]_0\(14) => u_dphy_rx_to_byte_n_25,
      \lane_buf_reg[1][15]_0\(13) => u_dphy_rx_to_byte_n_26,
      \lane_buf_reg[1][15]_0\(12) => u_dphy_rx_to_byte_n_27,
      \lane_buf_reg[1][15]_0\(11) => u_dphy_rx_to_byte_n_28,
      \lane_buf_reg[1][15]_0\(10) => u_dphy_rx_to_byte_n_29,
      \lane_buf_reg[1][15]_0\(9) => u_dphy_rx_to_byte_n_30,
      \lane_buf_reg[1][15]_0\(8) => u_dphy_rx_to_byte_n_31,
      \lane_buf_reg[1][15]_0\(7) => u_dphy_rx_to_byte_n_32,
      \lane_buf_reg[1][15]_0\(6) => u_dphy_rx_to_byte_n_33,
      \lane_buf_reg[1][15]_0\(5) => u_dphy_rx_to_byte_n_34,
      \lane_buf_reg[1][15]_0\(4) => u_dphy_rx_to_byte_n_35,
      \lane_buf_reg[1][15]_0\(3) => u_dphy_rx_to_byte_n_36,
      \lane_buf_reg[1][15]_0\(2) => u_dphy_rx_to_byte_n_37,
      \lane_buf_reg[1][15]_0\(1) => u_dphy_rx_to_byte_n_38,
      \lane_buf_reg[1][15]_0\(0) => u_dphy_rx_to_byte_n_39,
      \lane_buf_reg[2][15]\(15 downto 0) => \lane_buf_reg[2]_3\(15 downto 0),
      \lane_buf_reg[2][15]_0\(15) => u_dphy_rx_to_byte_n_40,
      \lane_buf_reg[2][15]_0\(14) => u_dphy_rx_to_byte_n_41,
      \lane_buf_reg[2][15]_0\(13) => u_dphy_rx_to_byte_n_42,
      \lane_buf_reg[2][15]_0\(12) => u_dphy_rx_to_byte_n_43,
      \lane_buf_reg[2][15]_0\(11) => u_dphy_rx_to_byte_n_44,
      \lane_buf_reg[2][15]_0\(10) => u_dphy_rx_to_byte_n_45,
      \lane_buf_reg[2][15]_0\(9) => u_dphy_rx_to_byte_n_46,
      \lane_buf_reg[2][15]_0\(8) => u_dphy_rx_to_byte_n_47,
      \lane_buf_reg[2][15]_0\(7) => u_dphy_rx_to_byte_n_48,
      \lane_buf_reg[2][15]_0\(6) => u_dphy_rx_to_byte_n_49,
      \lane_buf_reg[2][15]_0\(5) => u_dphy_rx_to_byte_n_50,
      \lane_buf_reg[2][15]_0\(4) => u_dphy_rx_to_byte_n_51,
      \lane_buf_reg[2][15]_0\(3) => u_dphy_rx_to_byte_n_52,
      \lane_buf_reg[2][15]_0\(2) => u_dphy_rx_to_byte_n_53,
      \lane_buf_reg[2][15]_0\(1) => u_dphy_rx_to_byte_n_54,
      \lane_buf_reg[2][15]_0\(0) => u_dphy_rx_to_byte_n_55,
      \lane_buf_reg[3][15]\(15 downto 0) => \lane_buf_reg[3]_4\(15 downto 0),
      \lane_buf_reg[3][15]_0\(15) => u_dphy_rx_to_byte_n_56,
      \lane_buf_reg[3][15]_0\(14) => u_dphy_rx_to_byte_n_57,
      \lane_buf_reg[3][15]_0\(13) => u_dphy_rx_to_byte_n_58,
      \lane_buf_reg[3][15]_0\(12) => u_dphy_rx_to_byte_n_59,
      \lane_buf_reg[3][15]_0\(11) => u_dphy_rx_to_byte_n_60,
      \lane_buf_reg[3][15]_0\(10) => u_dphy_rx_to_byte_n_61,
      \lane_buf_reg[3][15]_0\(9) => u_dphy_rx_to_byte_n_62,
      \lane_buf_reg[3][15]_0\(8) => u_dphy_rx_to_byte_n_63,
      \lane_buf_reg[3][15]_0\(7) => u_dphy_rx_to_byte_n_64,
      \lane_buf_reg[3][15]_0\(6) => u_dphy_rx_to_byte_n_65,
      \lane_buf_reg[3][15]_0\(5) => u_dphy_rx_to_byte_n_66,
      \lane_buf_reg[3][15]_0\(4) => u_dphy_rx_to_byte_n_67,
      \lane_buf_reg[3][15]_0\(3) => u_dphy_rx_to_byte_n_68,
      \lane_buf_reg[3][15]_0\(2) => u_dphy_rx_to_byte_n_69,
      \lane_buf_reg[3][15]_0\(1) => u_dphy_rx_to_byte_n_70,
      \lane_buf_reg[3][15]_0\(0) => u_dphy_rx_to_byte_n_71,
      \lane_buf_reg[4][15]\(15 downto 0) => \lane_buf_reg[4]_5\(15 downto 0),
      \lane_buf_reg[4][15]_0\(15) => u_dphy_rx_to_byte_n_72,
      \lane_buf_reg[4][15]_0\(14) => u_dphy_rx_to_byte_n_73,
      \lane_buf_reg[4][15]_0\(13) => u_dphy_rx_to_byte_n_74,
      \lane_buf_reg[4][15]_0\(12) => u_dphy_rx_to_byte_n_75,
      \lane_buf_reg[4][15]_0\(11) => u_dphy_rx_to_byte_n_76,
      \lane_buf_reg[4][15]_0\(10) => u_dphy_rx_to_byte_n_77,
      \lane_buf_reg[4][15]_0\(9) => u_dphy_rx_to_byte_n_78,
      \lane_buf_reg[4][15]_0\(8) => u_dphy_rx_to_byte_n_79,
      \lane_buf_reg[4][15]_0\(7) => u_dphy_rx_to_byte_n_80,
      \lane_buf_reg[4][15]_0\(6) => u_dphy_rx_to_byte_n_81,
      \lane_buf_reg[4][15]_0\(5) => u_dphy_rx_to_byte_n_82,
      \lane_buf_reg[4][15]_0\(4) => u_dphy_rx_to_byte_n_83,
      \lane_buf_reg[4][15]_0\(3) => u_dphy_rx_to_byte_n_84,
      \lane_buf_reg[4][15]_0\(2) => u_dphy_rx_to_byte_n_85,
      \lane_buf_reg[4][15]_0\(1) => u_dphy_rx_to_byte_n_86,
      \lane_buf_reg[4][15]_0\(0) => u_dphy_rx_to_byte_n_87,
      \lane_buf_reg[5][15]\(15 downto 0) => \lane_buf_reg[5]_6\(15 downto 0),
      \lane_buf_reg[5][15]_0\(15) => u_dphy_rx_to_byte_n_88,
      \lane_buf_reg[5][15]_0\(14) => u_dphy_rx_to_byte_n_89,
      \lane_buf_reg[5][15]_0\(13) => u_dphy_rx_to_byte_n_90,
      \lane_buf_reg[5][15]_0\(12) => u_dphy_rx_to_byte_n_91,
      \lane_buf_reg[5][15]_0\(11) => u_dphy_rx_to_byte_n_92,
      \lane_buf_reg[5][15]_0\(10) => u_dphy_rx_to_byte_n_93,
      \lane_buf_reg[5][15]_0\(9) => u_dphy_rx_to_byte_n_94,
      \lane_buf_reg[5][15]_0\(8) => u_dphy_rx_to_byte_n_95,
      \lane_buf_reg[5][15]_0\(7) => u_dphy_rx_to_byte_n_96,
      \lane_buf_reg[5][15]_0\(6) => u_dphy_rx_to_byte_n_97,
      \lane_buf_reg[5][15]_0\(5) => u_dphy_rx_to_byte_n_98,
      \lane_buf_reg[5][15]_0\(4) => u_dphy_rx_to_byte_n_99,
      \lane_buf_reg[5][15]_0\(3) => u_dphy_rx_to_byte_n_100,
      \lane_buf_reg[5][15]_0\(2) => u_dphy_rx_to_byte_n_101,
      \lane_buf_reg[5][15]_0\(1) => u_dphy_rx_to_byte_n_102,
      \lane_buf_reg[5][15]_0\(0) => u_dphy_rx_to_byte_n_103,
      \lane_buf_reg[6][15]\(15 downto 0) => \lane_buf_reg[6]_7\(15 downto 0),
      \lane_buf_reg[6][15]_0\(15) => u_dphy_rx_to_byte_n_104,
      \lane_buf_reg[6][15]_0\(14) => u_dphy_rx_to_byte_n_105,
      \lane_buf_reg[6][15]_0\(13) => u_dphy_rx_to_byte_n_106,
      \lane_buf_reg[6][15]_0\(12) => u_dphy_rx_to_byte_n_107,
      \lane_buf_reg[6][15]_0\(11) => u_dphy_rx_to_byte_n_108,
      \lane_buf_reg[6][15]_0\(10) => u_dphy_rx_to_byte_n_109,
      \lane_buf_reg[6][15]_0\(9) => u_dphy_rx_to_byte_n_110,
      \lane_buf_reg[6][15]_0\(8) => u_dphy_rx_to_byte_n_111,
      \lane_buf_reg[6][15]_0\(7) => u_dphy_rx_to_byte_n_112,
      \lane_buf_reg[6][15]_0\(6) => u_dphy_rx_to_byte_n_113,
      \lane_buf_reg[6][15]_0\(5) => u_dphy_rx_to_byte_n_114,
      \lane_buf_reg[6][15]_0\(4) => u_dphy_rx_to_byte_n_115,
      \lane_buf_reg[6][15]_0\(3) => u_dphy_rx_to_byte_n_116,
      \lane_buf_reg[6][15]_0\(2) => u_dphy_rx_to_byte_n_117,
      \lane_buf_reg[6][15]_0\(1) => u_dphy_rx_to_byte_n_118,
      \lane_buf_reg[6][15]_0\(0) => u_dphy_rx_to_byte_n_119,
      \lane_buf_reg[7][15]\(15) => u_dphy_rx_to_byte_n_120,
      \lane_buf_reg[7][15]\(14) => u_dphy_rx_to_byte_n_121,
      \lane_buf_reg[7][15]\(13) => u_dphy_rx_to_byte_n_122,
      \lane_buf_reg[7][15]\(12) => u_dphy_rx_to_byte_n_123,
      \lane_buf_reg[7][15]\(11) => u_dphy_rx_to_byte_n_124,
      \lane_buf_reg[7][15]\(10) => u_dphy_rx_to_byte_n_125,
      \lane_buf_reg[7][15]\(9) => u_dphy_rx_to_byte_n_126,
      \lane_buf_reg[7][15]\(8) => u_dphy_rx_to_byte_n_127,
      \lane_buf_reg[7][15]\(7) => u_dphy_rx_to_byte_n_128,
      \lane_buf_reg[7][15]\(6) => u_dphy_rx_to_byte_n_129,
      \lane_buf_reg[7][15]\(5) => u_dphy_rx_to_byte_n_130,
      \lane_buf_reg[7][15]\(4) => u_dphy_rx_to_byte_n_131,
      \lane_buf_reg[7][15]\(3) => u_dphy_rx_to_byte_n_132,
      \lane_buf_reg[7][15]\(2) => u_dphy_rx_to_byte_n_133,
      \lane_buf_reg[7][15]\(1) => u_dphy_rx_to_byte_n_134,
      \lane_buf_reg[7][15]\(0) => u_dphy_rx_to_byte_n_135,
      locked_reg => \^locked_reg\,
      module_reset => module_reset,
      pix_data_enable => pix_data_enable,
      pix_valid => pix_valid,
      \reg_pix_data_reg[19]_0\(19 downto 0) => pix_data(19 downto 0),
      \reg_pix_di_reg[7]_0\(7 downto 0) => pix_di(7 downto 0),
      s00_axi_aresetn => s00_axi_aresetn
    );
u_dphy_rx_to_byte: entity work.design_1_mipi_rx_to_video_ias1_0_dphy_rx_to_byte
     port map (
      D(1) => u_dphy_rx_to_byte_n_4,
      D(0) => u_dphy_rx_to_byte_n_5,
      Q(1 downto 0) => \align_idx_reg[1]_9\(1 downto 0),
      align_flag => align_flag,
      \align_idx_reg[0][1]\(1 downto 0) => \align_idx_reg[0]_0\(1 downto 0),
      byte_data_valid(1 downto 0) => byte_data_valid(1 downto 0),
      clk_hs_byte => \^clk_hs_byte\,
      data_byte_valid_reg(0) => u_dphy_rx_to_byte_n_3,
      data_byte_valid_reg_0(1) => u_dphy_rx_to_byte_n_6,
      data_byte_valid_reg_0(0) => u_dphy_rx_to_byte_n_7,
      data_byte_valid_reg_1(15) => u_dphy_rx_to_byte_n_8,
      data_byte_valid_reg_1(14) => u_dphy_rx_to_byte_n_9,
      data_byte_valid_reg_1(13) => u_dphy_rx_to_byte_n_10,
      data_byte_valid_reg_1(12) => u_dphy_rx_to_byte_n_11,
      data_byte_valid_reg_1(11) => u_dphy_rx_to_byte_n_12,
      data_byte_valid_reg_1(10) => u_dphy_rx_to_byte_n_13,
      data_byte_valid_reg_1(9) => u_dphy_rx_to_byte_n_14,
      data_byte_valid_reg_1(8) => u_dphy_rx_to_byte_n_15,
      data_byte_valid_reg_1(7) => u_dphy_rx_to_byte_n_16,
      data_byte_valid_reg_1(6) => u_dphy_rx_to_byte_n_17,
      data_byte_valid_reg_1(5) => u_dphy_rx_to_byte_n_18,
      data_byte_valid_reg_1(4) => u_dphy_rx_to_byte_n_19,
      data_byte_valid_reg_1(3) => u_dphy_rx_to_byte_n_20,
      data_byte_valid_reg_1(2) => u_dphy_rx_to_byte_n_21,
      data_byte_valid_reg_1(1) => u_dphy_rx_to_byte_n_22,
      data_byte_valid_reg_1(0) => u_dphy_rx_to_byte_n_23,
      data_byte_valid_reg_10 => u_dphy_rx_to_byte_n_137,
      data_byte_valid_reg_2(15) => u_dphy_rx_to_byte_n_24,
      data_byte_valid_reg_2(14) => u_dphy_rx_to_byte_n_25,
      data_byte_valid_reg_2(13) => u_dphy_rx_to_byte_n_26,
      data_byte_valid_reg_2(12) => u_dphy_rx_to_byte_n_27,
      data_byte_valid_reg_2(11) => u_dphy_rx_to_byte_n_28,
      data_byte_valid_reg_2(10) => u_dphy_rx_to_byte_n_29,
      data_byte_valid_reg_2(9) => u_dphy_rx_to_byte_n_30,
      data_byte_valid_reg_2(8) => u_dphy_rx_to_byte_n_31,
      data_byte_valid_reg_2(7) => u_dphy_rx_to_byte_n_32,
      data_byte_valid_reg_2(6) => u_dphy_rx_to_byte_n_33,
      data_byte_valid_reg_2(5) => u_dphy_rx_to_byte_n_34,
      data_byte_valid_reg_2(4) => u_dphy_rx_to_byte_n_35,
      data_byte_valid_reg_2(3) => u_dphy_rx_to_byte_n_36,
      data_byte_valid_reg_2(2) => u_dphy_rx_to_byte_n_37,
      data_byte_valid_reg_2(1) => u_dphy_rx_to_byte_n_38,
      data_byte_valid_reg_2(0) => u_dphy_rx_to_byte_n_39,
      data_byte_valid_reg_3(15) => u_dphy_rx_to_byte_n_40,
      data_byte_valid_reg_3(14) => u_dphy_rx_to_byte_n_41,
      data_byte_valid_reg_3(13) => u_dphy_rx_to_byte_n_42,
      data_byte_valid_reg_3(12) => u_dphy_rx_to_byte_n_43,
      data_byte_valid_reg_3(11) => u_dphy_rx_to_byte_n_44,
      data_byte_valid_reg_3(10) => u_dphy_rx_to_byte_n_45,
      data_byte_valid_reg_3(9) => u_dphy_rx_to_byte_n_46,
      data_byte_valid_reg_3(8) => u_dphy_rx_to_byte_n_47,
      data_byte_valid_reg_3(7) => u_dphy_rx_to_byte_n_48,
      data_byte_valid_reg_3(6) => u_dphy_rx_to_byte_n_49,
      data_byte_valid_reg_3(5) => u_dphy_rx_to_byte_n_50,
      data_byte_valid_reg_3(4) => u_dphy_rx_to_byte_n_51,
      data_byte_valid_reg_3(3) => u_dphy_rx_to_byte_n_52,
      data_byte_valid_reg_3(2) => u_dphy_rx_to_byte_n_53,
      data_byte_valid_reg_3(1) => u_dphy_rx_to_byte_n_54,
      data_byte_valid_reg_3(0) => u_dphy_rx_to_byte_n_55,
      data_byte_valid_reg_4(15) => u_dphy_rx_to_byte_n_56,
      data_byte_valid_reg_4(14) => u_dphy_rx_to_byte_n_57,
      data_byte_valid_reg_4(13) => u_dphy_rx_to_byte_n_58,
      data_byte_valid_reg_4(12) => u_dphy_rx_to_byte_n_59,
      data_byte_valid_reg_4(11) => u_dphy_rx_to_byte_n_60,
      data_byte_valid_reg_4(10) => u_dphy_rx_to_byte_n_61,
      data_byte_valid_reg_4(9) => u_dphy_rx_to_byte_n_62,
      data_byte_valid_reg_4(8) => u_dphy_rx_to_byte_n_63,
      data_byte_valid_reg_4(7) => u_dphy_rx_to_byte_n_64,
      data_byte_valid_reg_4(6) => u_dphy_rx_to_byte_n_65,
      data_byte_valid_reg_4(5) => u_dphy_rx_to_byte_n_66,
      data_byte_valid_reg_4(4) => u_dphy_rx_to_byte_n_67,
      data_byte_valid_reg_4(3) => u_dphy_rx_to_byte_n_68,
      data_byte_valid_reg_4(2) => u_dphy_rx_to_byte_n_69,
      data_byte_valid_reg_4(1) => u_dphy_rx_to_byte_n_70,
      data_byte_valid_reg_4(0) => u_dphy_rx_to_byte_n_71,
      data_byte_valid_reg_5(15) => u_dphy_rx_to_byte_n_72,
      data_byte_valid_reg_5(14) => u_dphy_rx_to_byte_n_73,
      data_byte_valid_reg_5(13) => u_dphy_rx_to_byte_n_74,
      data_byte_valid_reg_5(12) => u_dphy_rx_to_byte_n_75,
      data_byte_valid_reg_5(11) => u_dphy_rx_to_byte_n_76,
      data_byte_valid_reg_5(10) => u_dphy_rx_to_byte_n_77,
      data_byte_valid_reg_5(9) => u_dphy_rx_to_byte_n_78,
      data_byte_valid_reg_5(8) => u_dphy_rx_to_byte_n_79,
      data_byte_valid_reg_5(7) => u_dphy_rx_to_byte_n_80,
      data_byte_valid_reg_5(6) => u_dphy_rx_to_byte_n_81,
      data_byte_valid_reg_5(5) => u_dphy_rx_to_byte_n_82,
      data_byte_valid_reg_5(4) => u_dphy_rx_to_byte_n_83,
      data_byte_valid_reg_5(3) => u_dphy_rx_to_byte_n_84,
      data_byte_valid_reg_5(2) => u_dphy_rx_to_byte_n_85,
      data_byte_valid_reg_5(1) => u_dphy_rx_to_byte_n_86,
      data_byte_valid_reg_5(0) => u_dphy_rx_to_byte_n_87,
      data_byte_valid_reg_6(15) => u_dphy_rx_to_byte_n_88,
      data_byte_valid_reg_6(14) => u_dphy_rx_to_byte_n_89,
      data_byte_valid_reg_6(13) => u_dphy_rx_to_byte_n_90,
      data_byte_valid_reg_6(12) => u_dphy_rx_to_byte_n_91,
      data_byte_valid_reg_6(11) => u_dphy_rx_to_byte_n_92,
      data_byte_valid_reg_6(10) => u_dphy_rx_to_byte_n_93,
      data_byte_valid_reg_6(9) => u_dphy_rx_to_byte_n_94,
      data_byte_valid_reg_6(8) => u_dphy_rx_to_byte_n_95,
      data_byte_valid_reg_6(7) => u_dphy_rx_to_byte_n_96,
      data_byte_valid_reg_6(6) => u_dphy_rx_to_byte_n_97,
      data_byte_valid_reg_6(5) => u_dphy_rx_to_byte_n_98,
      data_byte_valid_reg_6(4) => u_dphy_rx_to_byte_n_99,
      data_byte_valid_reg_6(3) => u_dphy_rx_to_byte_n_100,
      data_byte_valid_reg_6(2) => u_dphy_rx_to_byte_n_101,
      data_byte_valid_reg_6(1) => u_dphy_rx_to_byte_n_102,
      data_byte_valid_reg_6(0) => u_dphy_rx_to_byte_n_103,
      data_byte_valid_reg_7(15) => u_dphy_rx_to_byte_n_104,
      data_byte_valid_reg_7(14) => u_dphy_rx_to_byte_n_105,
      data_byte_valid_reg_7(13) => u_dphy_rx_to_byte_n_106,
      data_byte_valid_reg_7(12) => u_dphy_rx_to_byte_n_107,
      data_byte_valid_reg_7(11) => u_dphy_rx_to_byte_n_108,
      data_byte_valid_reg_7(10) => u_dphy_rx_to_byte_n_109,
      data_byte_valid_reg_7(9) => u_dphy_rx_to_byte_n_110,
      data_byte_valid_reg_7(8) => u_dphy_rx_to_byte_n_111,
      data_byte_valid_reg_7(7) => u_dphy_rx_to_byte_n_112,
      data_byte_valid_reg_7(6) => u_dphy_rx_to_byte_n_113,
      data_byte_valid_reg_7(5) => u_dphy_rx_to_byte_n_114,
      data_byte_valid_reg_7(4) => u_dphy_rx_to_byte_n_115,
      data_byte_valid_reg_7(3) => u_dphy_rx_to_byte_n_116,
      data_byte_valid_reg_7(2) => u_dphy_rx_to_byte_n_117,
      data_byte_valid_reg_7(1) => u_dphy_rx_to_byte_n_118,
      data_byte_valid_reg_7(0) => u_dphy_rx_to_byte_n_119,
      data_byte_valid_reg_8(15) => u_dphy_rx_to_byte_n_120,
      data_byte_valid_reg_8(14) => u_dphy_rx_to_byte_n_121,
      data_byte_valid_reg_8(13) => u_dphy_rx_to_byte_n_122,
      data_byte_valid_reg_8(12) => u_dphy_rx_to_byte_n_123,
      data_byte_valid_reg_8(11) => u_dphy_rx_to_byte_n_124,
      data_byte_valid_reg_8(10) => u_dphy_rx_to_byte_n_125,
      data_byte_valid_reg_8(9) => u_dphy_rx_to_byte_n_126,
      data_byte_valid_reg_8(8) => u_dphy_rx_to_byte_n_127,
      data_byte_valid_reg_8(7) => u_dphy_rx_to_byte_n_128,
      data_byte_valid_reg_8(6) => u_dphy_rx_to_byte_n_129,
      data_byte_valid_reg_8(5) => u_dphy_rx_to_byte_n_130,
      data_byte_valid_reg_8(4) => u_dphy_rx_to_byte_n_131,
      data_byte_valid_reg_8(3) => u_dphy_rx_to_byte_n_132,
      data_byte_valid_reg_8(2) => u_dphy_rx_to_byte_n_133,
      data_byte_valid_reg_8(1) => u_dphy_rx_to_byte_n_134,
      data_byte_valid_reg_8(0) => u_dphy_rx_to_byte_n_135,
      data_byte_valid_reg_9(0) => u_dphy_rx_to_byte_n_136,
      dphy_clk_n => dphy_clk_n,
      dphy_clk_p => dphy_clk_p,
      dphy_data_n(1 downto 0) => dphy_data_n(1 downto 0),
      dphy_data_p(1 downto 0) => dphy_data_p(1 downto 0),
      \lane_buf_reg[1][15]\(15 downto 0) => \lane_buf_reg[0]_1\(15 downto 0),
      \lane_buf_reg[2][15]\(15 downto 0) => \lane_buf_reg[1]_2\(15 downto 0),
      \lane_buf_reg[3][15]\(15 downto 0) => \lane_buf_reg[2]_3\(15 downto 0),
      \lane_buf_reg[4][15]\(15 downto 0) => \lane_buf_reg[3]_4\(15 downto 0),
      \lane_buf_reg[5][15]\(15 downto 0) => \lane_buf_reg[4]_5\(15 downto 0),
      \lane_buf_reg[6][15]\(15 downto 0) => \lane_buf_reg[5]_6\(15 downto 0),
      \lane_buf_reg[7][15]\(15 downto 0) => \lane_buf_reg[6]_7\(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0_S00_AXI is
  port (
    vid_locked : out STD_LOGIC;
    reg_vsync_reg : out STD_LOGIC;
    clk_hs_byte : out STD_LOGIC;
    vid_ce : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 19 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    dphy_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
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
  attribute ORIG_REF_NAME of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0_S00_AXI : entity is "mipi_rx_to_video_v1_0_S00_AXI";
end design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0_S00_AXI;

architecture STRUCTURE of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \aclk_vsync_reg_n_0_[0]\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[6]\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[6]\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^clk_hs_byte\ : STD_LOGIC;
  signal int_frame_done_i_1_n_0 : STD_LOGIC;
  signal int_frame_start : STD_LOGIC;
  signal int_frame_start_i_1_n_0 : STD_LOGIC;
  signal int_mask_frame_start : STD_LOGIC;
  signal \line_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[14]_i_3_n_0\ : STD_LOGIC;
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
  signal mipi_rx_to_video_inst_n_10 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_13 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_14 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_15 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_16 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_17 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_18 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_19 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_20 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_21 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_22 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_23 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_24 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_28 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_29 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_6 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_7 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_8 : STD_LOGIC;
  signal mipi_rx_to_video_inst_n_9 : STD_LOGIC;
  signal mipi_width : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \mipi_width0__0\ : STD_LOGIC;
  signal module_reset : STD_LOGIC;
  signal module_reset_i_1_n_0 : STD_LOGIC;
  signal module_reset_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_0_in_10 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_1_in6_in : STD_LOGIC;
  signal p_1_in_11 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pix_cnt1 : STD_LOGIC;
  signal \pix_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[14]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal pix_cnt_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal pre_active_video : STD_LOGIC;
  signal pre_vsync : STD_LOGIC;
  signal \^reg_vsync_reg\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal \^vid_active_video\ : STD_LOGIC;
  signal \^vid_ce\ : STD_LOGIC;
  signal vid_di : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mipi_frame_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_2\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_1\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of int_frame_done_i_1 : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of int_frame_start_i_1 : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of int_mask_frame_start_i_2 : label is "soft_lutpair181";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mipi_frame_cnt_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \mipi_frame_cnt_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \mipi_frame_cnt_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \mipi_frame_cnt_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of \pix_cnt[10]_i_1\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \pix_cnt[11]_i_1\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \pix_cnt[12]_i_1\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \pix_cnt[1]_i_1\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \pix_cnt[2]_i_1\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \pix_cnt[5]_i_1\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \pix_cnt[6]_i_1\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \pix_cnt[7]_i_1\ : label is "soft_lutpair178";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  clk_hs_byte <= \^clk_hs_byte\;
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
      S => p_0_in
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      R => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      R => p_0_in
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      R => p_0_in
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(3),
      Q => \axi_araddr_reg_n_0_[5]\,
      R => p_0_in
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(4),
      Q => \axi_araddr_reg_n_0_[6]\,
      R => p_0_in
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
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => p_0_in_10(0),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => p_0_in_10(1),
      R => p_0_in
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => p_0_in_10(2),
      R => p_0_in
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => p_0_in0,
      R => p_0_in
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(4),
      Q => \axi_awaddr_reg_n_0_[6]\,
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => p_0_in
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
      R => p_0_in
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
      R => p_0_in
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => mipi_frame_cnt_reg(0),
      I1 => mipi_height(0),
      I2 => sel0(1),
      I3 => module_reset,
      I4 => sel0(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => mipi_width(10),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => mipi_height(10),
      I4 => mipi_frame_cnt_reg(10),
      I5 => \axi_rdata[15]_i_2_n_0\,
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => mipi_width(11),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => mipi_height(11),
      I4 => mipi_frame_cnt_reg(11),
      I5 => \axi_rdata[15]_i_2_n_0\,
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => mipi_width(12),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => mipi_height(12),
      I4 => mipi_frame_cnt_reg(12),
      I5 => \axi_rdata[15]_i_2_n_0\,
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => mipi_width(13),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => mipi_height(13),
      I4 => mipi_frame_cnt_reg(13),
      I5 => \axi_rdata[15]_i_2_n_0\,
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => mipi_width(14),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => mipi_height(14),
      I4 => mipi_frame_cnt_reg(14),
      I5 => \axi_rdata[15]_i_2_n_0\,
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => mipi_width(15),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => mipi_height(15),
      I4 => mipi_frame_cnt_reg(15),
      I5 => \axi_rdata[15]_i_2_n_0\,
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sel0(2),
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => \axi_araddr_reg_n_0_[6]\,
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(16),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(17),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(18),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(19),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020002"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => \axi_araddr_reg_n_0_[6]\,
      I3 => sel0(2),
      I4 => \axi_rdata[1]_i_3_n_0\,
      O => p_1_in(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => mipi_frame_cnt_reg(1),
      I1 => mipi_height(1),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => mipi_width(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => p_1_in_11(1),
      I1 => p_2_in(1),
      I2 => sel0(1),
      I3 => mipi_di(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(20),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(21),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(22),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(23),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(24),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(25),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(26),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(27),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(28),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(29),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444F44444444"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => mipi_di(2),
      I2 => sel0(2),
      I3 => \axi_araddr_reg_n_0_[5]\,
      I4 => \axi_araddr_reg_n_0_[6]\,
      I5 => \axi_rdata[2]_i_2_n_0\,
      O => p_1_in(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => mipi_frame_cnt_reg(2),
      I1 => mipi_height(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => mipi_width(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(30),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => mipi_frame_cnt_reg(31),
      I4 => sel0(0),
      I5 => sel0(1),
      O => p_1_in(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444F44444444"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => mipi_di(3),
      I2 => sel0(2),
      I3 => \axi_araddr_reg_n_0_[5]\,
      I4 => \axi_araddr_reg_n_0_[6]\,
      I5 => \axi_rdata[3]_i_2_n_0\,
      O => p_1_in(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => mipi_frame_cnt_reg(3),
      I1 => mipi_height(3),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => mipi_width(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444F44444444"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => mipi_di(4),
      I2 => sel0(2),
      I3 => \axi_araddr_reg_n_0_[5]\,
      I4 => \axi_araddr_reg_n_0_[6]\,
      I5 => \axi_rdata[4]_i_2_n_0\,
      O => p_1_in(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => mipi_frame_cnt_reg(4),
      I1 => mipi_height(4),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => mipi_width(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444F44444444"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => mipi_di(5),
      I2 => sel0(2),
      I3 => \axi_araddr_reg_n_0_[5]\,
      I4 => \axi_araddr_reg_n_0_[6]\,
      I5 => \axi_rdata[5]_i_2_n_0\,
      O => p_1_in(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => mipi_frame_cnt_reg(5),
      I1 => mipi_height(5),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => mipi_width(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444F44444444"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => mipi_di(6),
      I2 => sel0(2),
      I3 => \axi_araddr_reg_n_0_[5]\,
      I4 => \axi_araddr_reg_n_0_[6]\,
      I5 => \axi_rdata[6]_i_2_n_0\,
      O => p_1_in(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => mipi_frame_cnt_reg(6),
      I1 => mipi_height(6),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => mipi_width(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444F44444444"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => mipi_di(7),
      I2 => sel0(2),
      I3 => \axi_araddr_reg_n_0_[5]\,
      I4 => \axi_araddr_reg_n_0_[6]\,
      I5 => \axi_rdata[7]_i_3_n_0\,
      O => p_1_in(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => mipi_frame_cnt_reg(7),
      I1 => mipi_height(7),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => mipi_width(7),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => mipi_width(8),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => mipi_height(8),
      I4 => mipi_frame_cnt_reg(8),
      I5 => \axi_rdata[15]_i_2_n_0\,
      O => \axi_rdata[8]_i_1_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => mipi_width(9),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => mipi_height(9),
      I4 => mipi_frame_cnt_reg(9),
      I5 => \axi_rdata[15]_i_2_n_0\,
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(0),
      Q => s00_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => s00_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => s00_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => s00_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => s00_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => s00_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => s00_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(16),
      Q => s00_axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(17),
      Q => s00_axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(18),
      Q => s00_axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(19),
      Q => s00_axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(1),
      Q => s00_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(20),
      Q => s00_axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(21),
      Q => s00_axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(22),
      Q => s00_axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(23),
      Q => s00_axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(24),
      Q => s00_axi_rdata(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(25),
      Q => s00_axi_rdata(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(26),
      Q => s00_axi_rdata(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(27),
      Q => s00_axi_rdata(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(28),
      Q => s00_axi_rdata(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(29),
      Q => s00_axi_rdata(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(2),
      Q => s00_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(30),
      Q => s00_axi_rdata(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(31),
      Q => s00_axi_rdata(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(3),
      Q => s00_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(4),
      Q => s00_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(5),
      Q => s00_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(6),
      Q => s00_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(7),
      Q => s00_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[8]_i_1_n_0\,
      Q => s00_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => s00_axi_rdata(9),
      R => p_0_in
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
      R => p_0_in
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
      R => p_0_in
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
      R => p_0_in
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
      I2 => p_0_in_10(0),
      I3 => p_0_in_10(2),
      I4 => p_0_in_10(1),
      I5 => \slv_reg_wren__2\,
      O => int_frame_start
    );
int_frame_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => int_frame_start_i_1_n_0,
      Q => p_2_in(0),
      R => p_0_in
    );
int_mask_frame_done_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => int_mask_frame_start,
      D => s00_axi_wdata(1),
      Q => p_1_in_11(1),
      S => p_0_in
    );
int_mask_frame_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[6]\,
      I1 => p_0_in0,
      I2 => p_0_in_10(1),
      I3 => p_0_in_10(0),
      I4 => p_0_in_10(2),
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
      Q => p_1_in_11(0),
      S => p_0_in
    );
irq_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => p_1_in_11(0),
      I1 => p_2_in(0),
      I2 => p_1_in_11(1),
      I3 => p_2_in(1),
      O => irq
    );
\line_cnt[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => line_cnt_reg(8),
      I1 => line_cnt_reg(6),
      I2 => \line_cnt[9]_i_2_n_0\,
      I3 => line_cnt_reg(7),
      I4 => line_cnt_reg(9),
      O => \line_cnt[10]_i_2_n_0\
    );
\line_cnt[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => line_cnt_reg(9),
      I1 => line_cnt_reg(7),
      I2 => \line_cnt[9]_i_2_n_0\,
      I3 => line_cnt_reg(6),
      I4 => line_cnt_reg(8),
      I5 => line_cnt_reg(10),
      O => \line_cnt[14]_i_3_n_0\
    );
\line_cnt[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => line_cnt_reg(13),
      I1 => line_cnt_reg(12),
      I2 => \line_cnt[14]_i_3_n_0\,
      I3 => line_cnt_reg(11),
      O => \line_cnt[15]_i_3_n_0\
    );
\line_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => line_cnt_reg(3),
      I1 => line_cnt_reg(0),
      I2 => line_cnt_reg(1),
      I3 => line_cnt_reg(2),
      I4 => line_cnt_reg(4),
      O => \line_cnt[5]_i_2_n_0\
    );
\line_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => line_cnt_reg(4),
      I1 => line_cnt_reg(2),
      I2 => line_cnt_reg(1),
      I3 => line_cnt_reg(0),
      I4 => line_cnt_reg(3),
      I5 => line_cnt_reg(5),
      O => \line_cnt[9]_i_2_n_0\
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => \p_0_in__2\(0),
      Q => line_cnt_reg(0)
    );
\line_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_17,
      Q => line_cnt_reg(10)
    );
\line_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_16,
      Q => line_cnt_reg(11)
    );
\line_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_15,
      Q => line_cnt_reg(12)
    );
\line_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_14,
      Q => line_cnt_reg(13)
    );
\line_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_13,
      Q => line_cnt_reg(14)
    );
\line_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => \p_0_in__2\(15),
      Q => line_cnt_reg(15)
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => \p_0_in__2\(1),
      Q => line_cnt_reg(1)
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => \p_0_in__2\(2),
      Q => line_cnt_reg(2)
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_24,
      Q => line_cnt_reg(3)
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_23,
      Q => line_cnt_reg(4)
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_22,
      Q => line_cnt_reg(5)
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_21,
      Q => line_cnt_reg(6)
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_20,
      Q => line_cnt_reg(7)
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_19,
      Q => line_cnt_reg(8)
    );
\line_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_29,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_18,
      Q => line_cnt_reg(9)
    );
\mipi_di_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => vid_di(0),
      Q => mipi_di(0)
    );
\mipi_di_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => vid_di(1),
      Q => mipi_di(1)
    );
\mipi_di_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => vid_di(2),
      Q => mipi_di(2)
    );
\mipi_di_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => vid_di(3),
      Q => mipi_di(3)
    );
\mipi_di_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => vid_di(4),
      Q => mipi_di(4)
    );
\mipi_di_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => vid_di(5),
      Q => mipi_di(5)
    );
\mipi_di_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => vid_di(6),
      Q => mipi_di(6)
    );
\mipi_di_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => pix_cnt1,
      CLR => module_reset,
      D => vid_di(7),
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
      C => \^clk_hs_byte\,
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
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_13\,
      Q => mipi_frame_cnt_reg(10)
    );
\mipi_frame_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_12\,
      Q => mipi_frame_cnt_reg(11)
    );
\mipi_frame_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_11\,
      Q => mipi_frame_cnt_reg(12)
    );
\mipi_frame_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_10\,
      Q => mipi_frame_cnt_reg(13)
    );
\mipi_frame_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_9\,
      Q => mipi_frame_cnt_reg(14)
    );
\mipi_frame_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_8\,
      Q => mipi_frame_cnt_reg(15)
    );
\mipi_frame_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
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
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_14\,
      Q => mipi_frame_cnt_reg(17)
    );
\mipi_frame_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_13\,
      Q => mipi_frame_cnt_reg(18)
    );
\mipi_frame_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_12\,
      Q => mipi_frame_cnt_reg(19)
    );
\mipi_frame_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_14\,
      Q => mipi_frame_cnt_reg(1)
    );
\mipi_frame_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_11\,
      Q => mipi_frame_cnt_reg(20)
    );
\mipi_frame_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_10\,
      Q => mipi_frame_cnt_reg(21)
    );
\mipi_frame_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_9\,
      Q => mipi_frame_cnt_reg(22)
    );
\mipi_frame_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[16]_i_1_n_8\,
      Q => mipi_frame_cnt_reg(23)
    );
\mipi_frame_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
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
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_14\,
      Q => mipi_frame_cnt_reg(25)
    );
\mipi_frame_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_13\,
      Q => mipi_frame_cnt_reg(26)
    );
\mipi_frame_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_12\,
      Q => mipi_frame_cnt_reg(27)
    );
\mipi_frame_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_11\,
      Q => mipi_frame_cnt_reg(28)
    );
\mipi_frame_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_10\,
      Q => mipi_frame_cnt_reg(29)
    );
\mipi_frame_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_13\,
      Q => mipi_frame_cnt_reg(2)
    );
\mipi_frame_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_9\,
      Q => mipi_frame_cnt_reg(30)
    );
\mipi_frame_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[24]_i_1_n_8\,
      Q => mipi_frame_cnt_reg(31)
    );
\mipi_frame_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_12\,
      Q => mipi_frame_cnt_reg(3)
    );
\mipi_frame_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_11\,
      Q => mipi_frame_cnt_reg(4)
    );
\mipi_frame_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_10\,
      Q => mipi_frame_cnt_reg(5)
    );
\mipi_frame_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_9\,
      Q => mipi_frame_cnt_reg(6)
    );
\mipi_frame_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[0]_i_1_n_8\,
      Q => mipi_frame_cnt_reg(7)
    );
\mipi_frame_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
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
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => \mipi_frame_cnt_reg[8]_i_1_n_14\,
      Q => mipi_frame_cnt_reg(9)
    );
\mipi_height_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(0),
      Q => mipi_height(0)
    );
\mipi_height_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(10),
      Q => mipi_height(10)
    );
\mipi_height_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(11),
      Q => mipi_height(11)
    );
\mipi_height_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(12),
      Q => mipi_height(12)
    );
\mipi_height_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(13),
      Q => mipi_height(13)
    );
\mipi_height_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(14),
      Q => mipi_height(14)
    );
\mipi_height_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(15),
      Q => mipi_height(15)
    );
\mipi_height_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(1),
      Q => mipi_height(1)
    );
\mipi_height_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(2),
      Q => mipi_height(2)
    );
\mipi_height_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(3),
      Q => mipi_height(3)
    );
\mipi_height_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(4),
      Q => mipi_height(4)
    );
\mipi_height_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(5),
      Q => mipi_height(5)
    );
\mipi_height_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(6),
      Q => mipi_height(6)
    );
\mipi_height_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(7),
      Q => mipi_height(7)
    );
\mipi_height_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(8),
      Q => mipi_height(8)
    );
\mipi_height_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => line_cnt_reg(9),
      Q => mipi_height(9)
    );
mipi_rx_to_video_inst: entity work.design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video
     port map (
      D(0) => \^reg_vsync_reg\,
      E(0) => mipi_rx_to_video_inst_n_28,
      Q(12 downto 9) => pix_cnt_reg(14 downto 11),
      Q(8 downto 5) => pix_cnt_reg(9 downto 6),
      Q(4 downto 0) => pix_cnt_reg(4 downto 0),
      \axi_araddr_reg[5]\(0) => p_1_in(0),
      \axi_rdata_reg[0]\ => \axi_rdata[0]_i_2_n_0\,
      \axi_rdata_reg[0]_0\(4) => \axi_araddr_reg_n_0_[6]\,
      \axi_rdata_reg[0]_0\(3) => \axi_araddr_reg_n_0_[5]\,
      \axi_rdata_reg[0]_0\(2 downto 0) => sel0(2 downto 0),
      \axi_rdata_reg[0]_1\(0) => mipi_di(0),
      clk_hs_byte => \^clk_hs_byte\,
      dphy_clk_n => dphy_clk_n,
      dphy_clk_p => dphy_clk_p,
      dphy_data_n(1 downto 0) => dphy_data_n(1 downto 0),
      dphy_data_p(1 downto 0) => dphy_data_p(1 downto 0),
      \line_cnt_reg[10]\ => \line_cnt[10]_i_2_n_0\,
      \line_cnt_reg[11]\ => \line_cnt[14]_i_3_n_0\,
      \line_cnt_reg[14]\(15) => \p_0_in__2\(15),
      \line_cnt_reg[14]\(14) => mipi_rx_to_video_inst_n_13,
      \line_cnt_reg[14]\(13) => mipi_rx_to_video_inst_n_14,
      \line_cnt_reg[14]\(12) => mipi_rx_to_video_inst_n_15,
      \line_cnt_reg[14]\(11) => mipi_rx_to_video_inst_n_16,
      \line_cnt_reg[14]\(10) => mipi_rx_to_video_inst_n_17,
      \line_cnt_reg[14]\(9) => mipi_rx_to_video_inst_n_18,
      \line_cnt_reg[14]\(8) => mipi_rx_to_video_inst_n_19,
      \line_cnt_reg[14]\(7) => mipi_rx_to_video_inst_n_20,
      \line_cnt_reg[14]\(6) => mipi_rx_to_video_inst_n_21,
      \line_cnt_reg[14]\(5) => mipi_rx_to_video_inst_n_22,
      \line_cnt_reg[14]\(4) => mipi_rx_to_video_inst_n_23,
      \line_cnt_reg[14]\(3) => mipi_rx_to_video_inst_n_24,
      \line_cnt_reg[14]\(2 downto 0) => \p_0_in__2\(2 downto 0),
      \line_cnt_reg[15]\(15 downto 0) => line_cnt_reg(15 downto 0),
      \line_cnt_reg[15]_0\ => \line_cnt[15]_i_3_n_0\,
      \line_cnt_reg[5]\ => \line_cnt[5]_i_2_n_0\,
      \line_cnt_reg[6]\ => \line_cnt[9]_i_2_n_0\,
      locked_reg => vid_locked,
      \mipi_width0__0\ => \mipi_width0__0\,
      module_reset => module_reset,
      p_1_in_11(0) => p_1_in_11(0),
      p_2_in(0) => p_2_in(0),
      pix_cnt1 => pix_cnt1,
      \pix_cnt_reg[11]\(5) => \p_0_in__1\(14),
      \pix_cnt_reg[11]\(4) => mipi_rx_to_video_inst_n_6,
      \pix_cnt_reg[11]\(3) => mipi_rx_to_video_inst_n_7,
      \pix_cnt_reg[11]\(2) => mipi_rx_to_video_inst_n_8,
      \pix_cnt_reg[11]\(1) => mipi_rx_to_video_inst_n_9,
      \pix_cnt_reg[11]\(0) => mipi_rx_to_video_inst_n_10,
      \pix_cnt_reg[14]\ => \pix_cnt[14]_i_3_n_0\,
      \pix_cnt_reg[8]\ => \pix_cnt[9]_i_2_n_0\,
      pre_active_video => pre_active_video,
      pre_vsync => pre_vsync,
      reg_active_video_reg => \^vid_active_video\,
      reg_ce_reg => \^vid_ce\,
      \reg_di_reg[7]\(7 downto 0) => vid_di(7 downto 0),
      reg_vsync_reg(0) => mipi_rx_to_video_inst_n_29,
      s00_axi_aresetn => s00_axi_aresetn,
      vid_data(19 downto 0) => vid_data(19 downto 0)
    );
\mipi_width_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(9),
      Q => mipi_width(10)
    );
\mipi_width_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(10),
      Q => mipi_width(11)
    );
\mipi_width_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(11),
      Q => mipi_width(12)
    );
\mipi_width_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(12),
      Q => mipi_width(13)
    );
\mipi_width_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(13),
      Q => mipi_width(14)
    );
\mipi_width_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(14),
      Q => mipi_width(15)
    );
\mipi_width_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(0),
      Q => mipi_width(1)
    );
\mipi_width_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(1),
      Q => mipi_width(2)
    );
\mipi_width_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(2),
      Q => mipi_width(3)
    );
\mipi_width_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(3),
      Q => mipi_width(4)
    );
\mipi_width_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(4),
      Q => mipi_width(5)
    );
\mipi_width_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(5),
      Q => mipi_width(6)
    );
\mipi_width_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(6),
      Q => mipi_width(7)
    );
\mipi_width_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(7),
      Q => mipi_width(8)
    );
\mipi_width_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => \mipi_width0__0\,
      CLR => module_reset,
      D => pix_cnt_reg(8),
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
      I0 => p_0_in_10(2),
      I1 => p_0_in_10(0),
      I2 => p_0_in_10(1),
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
      S => p_0_in
    );
\pix_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => pre_active_video,
      I1 => pix_cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\pix_cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => pre_active_video,
      I1 => \pix_cnt[10]_i_2_n_0\,
      I2 => pix_cnt_reg(10),
      O => \pix_cnt[10]_i_1_n_0\
    );
\pix_cnt[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => pix_cnt_reg(8),
      I1 => pix_cnt_reg(6),
      I2 => \pix_cnt[9]_i_2_n_0\,
      I3 => pix_cnt_reg(7),
      I4 => pix_cnt_reg(9),
      O => \pix_cnt[10]_i_2_n_0\
    );
\pix_cnt[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => pre_active_video,
      I1 => \pix_cnt[14]_i_3_n_0\,
      I2 => pix_cnt_reg(11),
      O => \pix_cnt[11]_i_1_n_0\
    );
\pix_cnt[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => pre_active_video,
      I1 => \pix_cnt[14]_i_3_n_0\,
      I2 => pix_cnt_reg(11),
      I3 => pix_cnt_reg(12),
      O => \pix_cnt[12]_i_1_n_0\
    );
\pix_cnt[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => pix_cnt_reg(9),
      I1 => pix_cnt_reg(7),
      I2 => \pix_cnt[9]_i_2_n_0\,
      I3 => pix_cnt_reg(6),
      I4 => pix_cnt_reg(8),
      I5 => pix_cnt_reg(10),
      O => \pix_cnt[14]_i_3_n_0\
    );
\pix_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => pix_cnt_reg(0),
      I1 => pix_cnt_reg(1),
      I2 => pre_active_video,
      O => \p_0_in__1\(1)
    );
\pix_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => pix_cnt_reg(1),
      I1 => pix_cnt_reg(0),
      I2 => pix_cnt_reg(2),
      I3 => pre_active_video,
      O => \p_0_in__1\(2)
    );
\pix_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => pre_active_video,
      I1 => \pix_cnt[5]_i_2_n_0\,
      I2 => pix_cnt_reg(5),
      O => \pix_cnt[5]_i_1_n_0\
    );
\pix_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => pix_cnt_reg(3),
      I1 => pix_cnt_reg(0),
      I2 => pix_cnt_reg(1),
      I3 => pix_cnt_reg(2),
      I4 => pix_cnt_reg(4),
      O => \pix_cnt[5]_i_2_n_0\
    );
\pix_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => pre_active_video,
      I1 => \pix_cnt[9]_i_2_n_0\,
      I2 => pix_cnt_reg(6),
      O => \pix_cnt[6]_i_1_n_0\
    );
\pix_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => pre_active_video,
      I1 => \pix_cnt[9]_i_2_n_0\,
      I2 => pix_cnt_reg(6),
      I3 => pix_cnt_reg(7),
      O => \pix_cnt[7]_i_1_n_0\
    );
\pix_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => pix_cnt_reg(4),
      I1 => pix_cnt_reg(2),
      I2 => pix_cnt_reg(1),
      I3 => pix_cnt_reg(0),
      I4 => pix_cnt_reg(3),
      I5 => pix_cnt_reg(5),
      O => \pix_cnt[9]_i_2_n_0\
    );
\pix_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => \p_0_in__1\(0),
      Q => pix_cnt_reg(0)
    );
\pix_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => \pix_cnt[10]_i_1_n_0\,
      Q => pix_cnt_reg(10)
    );
\pix_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => \pix_cnt[11]_i_1_n_0\,
      Q => pix_cnt_reg(11)
    );
\pix_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => \pix_cnt[12]_i_1_n_0\,
      Q => pix_cnt_reg(12)
    );
\pix_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_6,
      Q => pix_cnt_reg(13)
    );
\pix_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => \p_0_in__1\(14),
      Q => pix_cnt_reg(14)
    );
\pix_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => \p_0_in__1\(1),
      Q => pix_cnt_reg(1)
    );
\pix_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => \p_0_in__1\(2),
      Q => pix_cnt_reg(2)
    );
\pix_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_10,
      Q => pix_cnt_reg(3)
    );
\pix_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_9,
      Q => pix_cnt_reg(4)
    );
\pix_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => \pix_cnt[5]_i_1_n_0\,
      Q => pix_cnt_reg(5)
    );
\pix_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => \pix_cnt[6]_i_1_n_0\,
      Q => pix_cnt_reg(6)
    );
\pix_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => \pix_cnt[7]_i_1_n_0\,
      Q => pix_cnt_reg(7)
    );
\pix_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_8,
      Q => pix_cnt_reg(8)
    );
\pix_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk_hs_byte\,
      CE => mipi_rx_to_video_inst_n_28,
      CLR => module_reset,
      D => mipi_rx_to_video_inst_n_7,
      Q => pix_cnt_reg(9)
    );
pre_active_video_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk_hs_byte\,
      CE => \^vid_ce\,
      D => \^vid_active_video\,
      Q => pre_active_video,
      R => '0'
    );
pre_vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk_hs_byte\,
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
entity design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0 is
  port (
    dphy_clk_p : in STD_LOGIC;
    dphy_clk_n : in STD_LOGIC;
    dphy_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    vid_clk : out STD_LOGIC;
    vid_ce : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 19 downto 0 );
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
  attribute C_S00_AXI_ADDR_WIDTH of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0 : entity is 7;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0 : entity is 32;
  attribute DATA_BITS : integer;
  attribute DATA_BITS of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0 : entity is 10;
  attribute DATA_DELAY_INSIDE : string;
  attribute DATA_DELAY_INSIDE of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0 : entity is "1'b1";
  attribute DATA_DELAY_NTAPS : integer;
  attribute DATA_DELAY_NTAPS of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0 : entity is 200;
  attribute HS_SETTLE_DELAY : integer;
  attribute HS_SETTLE_DELAY of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0 : entity is 0;
  attribute LANES_NUM : integer;
  attribute LANES_NUM of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0 : entity is 2;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0 : entity is "mipi_rx_to_video_v1_0";
end design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0;

architecture STRUCTURE of design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0 is
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
mipi_rx_to_video_v1_0_S00_AXI_inst: entity work.design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      clk_hs_byte => vid_clk,
      dphy_clk_n => dphy_clk_n,
      dphy_clk_p => dphy_clk_p,
      dphy_data_n(1 downto 0) => dphy_data_n(1 downto 0),
      dphy_data_p(1 downto 0) => dphy_data_p(1 downto 0),
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
      vid_data(19 downto 0) => vid_data(19 downto 0),
      vid_locked => vid_locked
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mipi_rx_to_video_ias1_0 is
  port (
    dphy_clk_p : in STD_LOGIC;
    dphy_clk_n : in STD_LOGIC;
    dphy_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    vid_clk : out STD_LOGIC;
    vid_ce : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 19 downto 0 );
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
  attribute NotValidForBitStream of design_1_mipi_rx_to_video_ias1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_mipi_rx_to_video_ias1_0 : entity is "design_1_mipi_rx_to_video_ias1_0,mipi_rx_to_video_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_mipi_rx_to_video_ias1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_mipi_rx_to_video_ias1_0 : entity is "mipi_rx_to_video_v1_0,Vivado 2022.1";
end design_1_mipi_rx_to_video_ias1_0;

architecture STRUCTURE of design_1_mipi_rx_to_video_ias1_0 is
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
  attribute HS_SETTLE_DELAY of inst : label is 0;
  attribute LANES_NUM : integer;
  attribute LANES_NUM of inst : label is 2;
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
  attribute X_INTERFACE_PARAMETER of vid_clk : signal is "XIL_INTERFACENAME vid_clk, ASSOCIATED_BUSIF video, ASSOCIATED_RESET vid_ce, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_mipi_rx_to_video_ias1_0_vid_clk, INSERT_VIP 0";
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
inst: entity work.design_1_mipi_rx_to_video_ias1_0_mipi_rx_to_video_v1_0
     port map (
      dphy_clk_n => dphy_clk_n,
      dphy_clk_p => dphy_clk_p,
      dphy_data_n(1 downto 0) => dphy_data_n(1 downto 0),
      dphy_data_p(1 downto 0) => dphy_data_p(1 downto 0),
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
      vid_data(19 downto 0) => vid_data(19 downto 0),
      vid_locked => vid_locked,
      vid_vsync => vid_vsync
    );
end STRUCTURE;
