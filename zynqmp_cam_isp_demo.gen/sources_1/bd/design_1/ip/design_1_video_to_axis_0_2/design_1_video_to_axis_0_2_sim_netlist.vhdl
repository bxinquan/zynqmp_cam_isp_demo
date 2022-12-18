-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sat Dec 17 00:31:06 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_video_to_axis_0_2/design_1_video_to_axis_0_2_sim_netlist.vhdl
-- Design      : design_1_video_to_axis_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_video_to_axis_0_2_full_dp_ram is
  port (
    wr_flag : out STD_LOGIC;
    \r2w_rptr2_reg[6]\ : out STD_LOGIC;
    waddr_reg_1_sp_1 : out STD_LOGIC;
    waddr_reg_4_sp_1 : out STD_LOGIC;
    rd_flag : out STD_LOGIC;
    raddr_reg_6_sp_1 : out STD_LOGIC;
    raddr_reg_0_sp_1 : out STD_LOGIC;
    q_b : out STD_LOGIC_VECTOR ( 25 downto 0 );
    vid_ce : in STD_LOGIC;
    prev_active_video : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    waddr_reg : in STD_LOGIC_VECTOR ( 10 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_active_video : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    raddr_reg : in STD_LOGIC_VECTOR ( 10 downto 0 );
    mem_reg_bram_1_i_4_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    mem_reg_bram_1_i_4_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_clk : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wdata_a : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_video_to_axis_0_2_full_dp_ram : entity is "full_dp_ram";
end design_1_video_to_axis_0_2_full_dp_ram;

architecture STRUCTURE of design_1_video_to_axis_0_2_full_dp_ram is
  signal mem_reg_bram_1_i_10_n_0 : STD_LOGIC;
  signal mem_reg_bram_1_i_11_n_0 : STD_LOGIC;
  signal mem_reg_bram_1_i_12_n_0 : STD_LOGIC;
  signal mem_reg_bram_1_i_6_n_0 : STD_LOGIC;
  signal mem_reg_bram_1_i_7_n_0 : STD_LOGIC;
  signal mem_reg_bram_1_i_8_n_0 : STD_LOGIC;
  signal mem_reg_bram_1_i_9_n_0 : STD_LOGIC;
  signal overflow_INST_0_i_5_n_0 : STD_LOGIC;
  signal overflow_INST_0_i_6_n_0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 24 to 24 );
  signal \^r2w_rptr2_reg[6]\ : STD_LOGIC;
  signal raddr_reg_0_sn_1 : STD_LOGIC;
  signal raddr_reg_6_sn_1 : STD_LOGIC;
  signal \^rd_flag\ : STD_LOGIC;
  signal waddr_reg_1_sn_1 : STD_LOGIC;
  signal waddr_reg_4_sn_1 : STD_LOGIC;
  signal \^wr_flag\ : STD_LOGIC;
  signal NLW_mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_bram_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_bram_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_bram_0_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_bram_0_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_bram_0_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_bram_0_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_bram_0_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_bram_0_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_mem_reg_bram_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_bram_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_bram_1_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_bram_1_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_bram_1_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_bram_1_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_bram_1_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_bram_1_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_bram_0 : label is "p2_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_bram_0 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_bram_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of mem_reg_bram_0 : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_bram_0 : label is 53248;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_bram_0 : label is "inst/video_to_axis_inst/fifo/ram/mem_reg_bram_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_bram_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_bram_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_bram_0 : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_bram_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_bram_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_bram_0 : label is 17;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_bram_1 : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_bram_1 : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_bram_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of mem_reg_bram_1 : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of mem_reg_bram_1 : label is 53248;
  attribute RTL_RAM_NAME of mem_reg_bram_1 : label is "inst/video_to_axis_inst/fifo/ram/mem_reg_bram_1";
  attribute RTL_RAM_TYPE of mem_reg_bram_1 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_bram_1 : label is 0;
  attribute ram_addr_end of mem_reg_bram_1 : label is 2047;
  attribute ram_offset of mem_reg_bram_1 : label is 0;
  attribute ram_slice_begin of mem_reg_bram_1 : label is 18;
  attribute ram_slice_end of mem_reg_bram_1 : label is 25;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mem_reg_bram_1_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of mem_reg_bram_1_i_3 : label is "soft_lutpair0";
begin
  \r2w_rptr2_reg[6]\ <= \^r2w_rptr2_reg[6]\;
  raddr_reg_0_sp_1 <= raddr_reg_0_sn_1;
  raddr_reg_6_sp_1 <= raddr_reg_6_sn_1;
  rd_flag <= \^rd_flag\;
  waddr_reg_1_sp_1 <= waddr_reg_1_sn_1;
  waddr_reg_4_sp_1 <= waddr_reg_4_sn_1;
  wr_flag <= \^wr_flag\;
mem_reg_bram_0: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(14 downto 4) => waddr_reg(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(14 downto 4) => raddr_reg(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => NLW_mem_reg_bram_0_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_mem_reg_bram_0_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_mem_reg_bram_0_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_mem_reg_bram_0_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => vid_clk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_mem_reg_bram_0_DBITERR_UNCONNECTED,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => wdata_a(15 downto 0),
      DINBDIN(31 downto 0) => B"00000000000000001111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => wdata_a(17 downto 16),
      DINPBDINP(3 downto 0) => B"0011",
      DOUTADOUT(31 downto 0) => NLW_mem_reg_bram_0_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 16) => NLW_mem_reg_bram_0_DOUTBDOUT_UNCONNECTED(31 downto 16),
      DOUTBDOUT(15 downto 0) => q_b(15 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 2) => NLW_mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED(3 downto 2),
      DOUTPBDOUTP(1 downto 0) => q_b(17 downto 16),
      ECCPARITY(7 downto 0) => NLW_mem_reg_bram_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => \^rd_flag\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_mem_reg_bram_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_bram_0_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \^wr_flag\,
      WEA(2) => \^wr_flag\,
      WEA(1) => \^wr_flag\,
      WEA(0) => \^wr_flag\,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_bram_1: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => waddr_reg(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(13 downto 3) => raddr_reg(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => NLW_mem_reg_bram_1_CASDOUTA_UNCONNECTED(15 downto 0),
      CASDOUTB(15 downto 0) => NLW_mem_reg_bram_1_CASDOUTB_UNCONNECTED(15 downto 0),
      CASDOUTPA(1 downto 0) => NLW_mem_reg_bram_1_CASDOUTPA_UNCONNECTED(1 downto 0),
      CASDOUTPB(1 downto 0) => NLW_mem_reg_bram_1_CASDOUTPB_UNCONNECTED(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => vid_clk,
      CLKBWRCLK => aclk,
      DINADIN(15 downto 8) => B"00000000",
      DINADIN(7) => wdata_a(24),
      DINADIN(6) => p_0_out(24),
      DINADIN(5 downto 0) => wdata_a(23 downto 18),
      DINBDIN(15 downto 0) => B"0000000011111111",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"00",
      DOUTADOUT(15 downto 0) => NLW_mem_reg_bram_1_DOUTADOUT_UNCONNECTED(15 downto 0),
      DOUTBDOUT(15 downto 8) => NLW_mem_reg_bram_1_DOUTBDOUT_UNCONNECTED(15 downto 8),
      DOUTBDOUT(7 downto 0) => q_b(25 downto 18),
      DOUTPADOUTP(1 downto 0) => NLW_mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => NLW_mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => \^rd_flag\,
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1) => \^wr_flag\,
      WEA(0) => \^wr_flag\,
      WEBWE(3 downto 0) => B"0000"
    );
mem_reg_bram_1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD0"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => m_axis_tready,
      I2 => raddr_reg_6_sn_1,
      I3 => raddr_reg_0_sn_1,
      O => \^rd_flag\
    );
mem_reg_bram_1_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609009"
    )
        port map (
      I0 => mem_reg_bram_1_i_4_0(4),
      I1 => raddr_reg(4),
      I2 => mem_reg_bram_1_i_4_0(5),
      I3 => raddr_reg(6),
      I4 => raddr_reg(5),
      O => mem_reg_bram_1_i_10_n_0
    );
mem_reg_bram_1_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => raddr_reg(3),
      I1 => raddr_reg(4),
      I2 => mem_reg_bram_1_i_4_0(3),
      O => mem_reg_bram_1_i_11_n_0
    );
mem_reg_bram_1_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Q(3),
      I1 => waddr_reg(3),
      I2 => waddr_reg(4),
      O => mem_reg_bram_1_i_12_n_0
    );
mem_reg_bram_1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prev_active_video,
      I1 => vid_active_video,
      O => p_0_out(24)
    );
mem_reg_bram_1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => vid_ce,
      I1 => prev_active_video,
      I2 => \^r2w_rptr2_reg[6]\,
      I3 => mem_reg_bram_1_i_6_n_0,
      O => \^wr_flag\
    );
mem_reg_bram_1_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77DFFFF"
    )
        port map (
      I0 => mem_reg_bram_1_i_7_n_0,
      I1 => raddr_reg(6),
      I2 => raddr_reg(7),
      I3 => mem_reg_bram_1_i_4_0(6),
      I4 => mem_reg_bram_1_i_8_n_0,
      O => raddr_reg_6_sn_1
    );
mem_reg_bram_1_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D77DFFFFFFFFFFFF"
    )
        port map (
      I0 => mem_reg_bram_1_i_9_n_0,
      I1 => raddr_reg(0),
      I2 => raddr_reg(1),
      I3 => mem_reg_bram_1_i_4_0(0),
      I4 => mem_reg_bram_1_i_10_n_0,
      I5 => mem_reg_bram_1_i_11_n_0,
      O => raddr_reg_0_sn_1
    );
mem_reg_bram_1_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D77DFFFFFFFFFFFF"
    )
        port map (
      I0 => waddr_reg_1_sn_1,
      I1 => Q(0),
      I2 => waddr_reg(0),
      I3 => waddr_reg(1),
      I4 => waddr_reg_4_sn_1,
      I5 => mem_reg_bram_1_i_12_n_0,
      O => mem_reg_bram_1_i_6_n_0
    );
mem_reg_bram_1_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609009"
    )
        port map (
      I0 => mem_reg_bram_1_i_4_0(7),
      I1 => raddr_reg(7),
      I2 => mem_reg_bram_1_i_4_0(8),
      I3 => raddr_reg(9),
      I4 => raddr_reg(8),
      O => mem_reg_bram_1_i_7_n_0
    );
mem_reg_bram_1_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006900060000009"
    )
        port map (
      I0 => mem_reg_bram_1_i_4_0(9),
      I1 => raddr_reg(9),
      I2 => mem_reg_bram_1_i_4_1(0),
      I3 => mem_reg_bram_1_i_4_0(11),
      I4 => raddr_reg(10),
      I5 => mem_reg_bram_1_i_4_0(10),
      O => mem_reg_bram_1_i_8_n_0
    );
mem_reg_bram_1_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609009"
    )
        port map (
      I0 => mem_reg_bram_1_i_4_0(1),
      I1 => raddr_reg(1),
      I2 => mem_reg_bram_1_i_4_0(2),
      I3 => raddr_reg(3),
      I4 => raddr_reg(2),
      O => mem_reg_bram_1_i_9_n_0
    );
overflow_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => waddr_reg(1),
      I1 => Q(1),
      I2 => waddr_reg(3),
      I3 => waddr_reg(2),
      I4 => Q(2),
      O => waddr_reg_1_sn_1
    );
overflow_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77DFFFF"
    )
        port map (
      I0 => overflow_INST_0_i_5_n_0,
      I1 => Q(6),
      I2 => waddr_reg(6),
      I3 => waddr_reg(7),
      I4 => overflow_INST_0_i_6_n_0,
      O => \^r2w_rptr2_reg[6]\
    );
overflow_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => waddr_reg(4),
      I1 => Q(4),
      I2 => waddr_reg(6),
      I3 => waddr_reg(5),
      I4 => Q(5),
      O => waddr_reg_4_sn_1
    );
overflow_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => waddr_reg(7),
      I1 => Q(7),
      I2 => waddr_reg(9),
      I3 => waddr_reg(8),
      I4 => Q(8),
      O => overflow_INST_0_i_5_n_0
    );
overflow_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600006000900900"
    )
        port map (
      I0 => waddr_reg(9),
      I1 => Q(9),
      I2 => Q(11),
      I3 => S(0),
      I4 => Q(10),
      I5 => waddr_reg(10),
      O => overflow_INST_0_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_video_to_axis_0_2_async_fifo is
  port (
    aresetn_0 : out STD_LOGIC;
    vid_rstn_0 : out STD_LOGIC;
    m_axis_tready_0 : out STD_LOGIC;
    q_b : out STD_LOGIC_VECTOR ( 25 downto 0 );
    overflow : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wdata_a : in STD_LOGIC_VECTOR ( 24 downto 0 );
    vid_ce : in STD_LOGIC;
    prev_active_video : in STD_LOGIC;
    vid_active_video : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_video_to_axis_0_2_async_fifo : entity is "async_fifo";
end design_1_video_to_axis_0_2_async_fifo;

architecture STRUCTURE of design_1_video_to_axis_0_2_async_fifo is
  signal \^aresetn_0\ : STD_LOGIC;
  signal overflow_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal r2w_rptr1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal r2w_rptr2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \raddr0_carry__0_n_6\ : STD_LOGIC;
  signal \raddr0_carry__0_n_7\ : STD_LOGIC;
  signal raddr0_carry_n_0 : STD_LOGIC;
  signal raddr0_carry_n_1 : STD_LOGIC;
  signal raddr0_carry_n_2 : STD_LOGIC;
  signal raddr0_carry_n_3 : STD_LOGIC;
  signal raddr0_carry_n_4 : STD_LOGIC;
  signal raddr0_carry_n_5 : STD_LOGIC;
  signal raddr0_carry_n_6 : STD_LOGIC;
  signal raddr0_carry_n_7 : STD_LOGIC;
  signal raddr_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \raddr_reg__0\ : STD_LOGIC_VECTOR ( 11 to 11 );
  signal ram_n_1 : STD_LOGIC;
  signal ram_n_2 : STD_LOGIC;
  signal ram_n_3 : STD_LOGIC;
  signal ram_n_5 : STD_LOGIC;
  signal ram_n_6 : STD_LOGIC;
  signal rd_flag : STD_LOGIC;
  signal rptr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^vid_rstn_0\ : STD_LOGIC;
  signal w2r_wptr1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal w2r_wptr2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \waddr0_carry__0_n_6\ : STD_LOGIC;
  signal \waddr0_carry__0_n_7\ : STD_LOGIC;
  signal waddr0_carry_n_0 : STD_LOGIC;
  signal waddr0_carry_n_1 : STD_LOGIC;
  signal waddr0_carry_n_2 : STD_LOGIC;
  signal waddr0_carry_n_3 : STD_LOGIC;
  signal waddr0_carry_n_4 : STD_LOGIC;
  signal waddr0_carry_n_5 : STD_LOGIC;
  signal waddr0_carry_n_6 : STD_LOGIC;
  signal waddr0_carry_n_7 : STD_LOGIC;
  signal waddr_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \waddr_reg__0\ : STD_LOGIC_VECTOR ( 11 to 11 );
  signal wptr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wr_flag : STD_LOGIC;
  signal \NLW_raddr0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_raddr0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_waddr0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_waddr0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of overflow_INST_0_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r2w_rptr1[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r2w_rptr1[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r2w_rptr1[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r2w_rptr1[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r2w_rptr1[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r2w_rptr1[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r2w_rptr1[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r2w_rptr1[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r2w_rptr1[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r2w_rptr1[9]_i_1\ : label is "soft_lutpair6";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of raddr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \raddr0_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \w2r_wptr1[10]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w2r_wptr1[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \w2r_wptr1[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \w2r_wptr1[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \w2r_wptr1[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w2r_wptr1[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w2r_wptr1[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w2r_wptr1[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w2r_wptr1[9]_i_1\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD of waddr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \waddr0_carry__0\ : label is 35;
begin
  aresetn_0 <= \^aresetn_0\;
  vid_rstn_0 <= \^vid_rstn_0\;
overflow_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028820000"
    )
        port map (
      I0 => overflow_INST_0_i_1_n_0,
      I1 => waddr_reg(1),
      I2 => waddr_reg(0),
      I3 => r2w_rptr2(0),
      I4 => ram_n_2,
      I5 => ram_n_1,
      O => overflow
    );
overflow_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => waddr_reg(4),
      I1 => waddr_reg(3),
      I2 => r2w_rptr2(3),
      I3 => ram_n_3,
      O => overflow_INST_0_i_1_n_0
    );
\r2w_rptr1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(1),
      I1 => raddr_reg(0),
      O => rptr(0)
    );
\r2w_rptr1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \raddr_reg__0\(11),
      I1 => raddr_reg(10),
      O => rptr(10)
    );
\r2w_rptr1[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vid_rstn,
      O => \^vid_rstn_0\
    );
\r2w_rptr1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(2),
      I1 => raddr_reg(1),
      O => rptr(1)
    );
\r2w_rptr1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(3),
      I1 => raddr_reg(2),
      O => rptr(2)
    );
\r2w_rptr1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(4),
      I1 => raddr_reg(3),
      O => rptr(3)
    );
\r2w_rptr1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(5),
      I1 => raddr_reg(4),
      O => rptr(4)
    );
\r2w_rptr1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(6),
      I1 => raddr_reg(5),
      O => rptr(5)
    );
\r2w_rptr1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(7),
      I1 => raddr_reg(6),
      O => rptr(6)
    );
\r2w_rptr1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(8),
      I1 => raddr_reg(7),
      O => rptr(7)
    );
\r2w_rptr1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(9),
      I1 => raddr_reg(8),
      O => rptr(8)
    );
\r2w_rptr1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(10),
      I1 => raddr_reg(9),
      O => rptr(9)
    );
\r2w_rptr1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(0),
      Q => r2w_rptr1(0)
    );
\r2w_rptr1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(10),
      Q => r2w_rptr1(10)
    );
\r2w_rptr1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => \raddr_reg__0\(11),
      Q => r2w_rptr1(11)
    );
\r2w_rptr1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(1),
      Q => r2w_rptr1(1)
    );
\r2w_rptr1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(2),
      Q => r2w_rptr1(2)
    );
\r2w_rptr1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(3),
      Q => r2w_rptr1(3)
    );
\r2w_rptr1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(4),
      Q => r2w_rptr1(4)
    );
\r2w_rptr1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(5),
      Q => r2w_rptr1(5)
    );
\r2w_rptr1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(6),
      Q => r2w_rptr1(6)
    );
\r2w_rptr1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(7),
      Q => r2w_rptr1(7)
    );
\r2w_rptr1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(8),
      Q => r2w_rptr1(8)
    );
\r2w_rptr1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => rptr(9),
      Q => r2w_rptr1(9)
    );
\r2w_rptr2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(0),
      Q => r2w_rptr2(0)
    );
\r2w_rptr2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(10),
      Q => r2w_rptr2(10)
    );
\r2w_rptr2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(11),
      Q => r2w_rptr2(11)
    );
\r2w_rptr2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(1),
      Q => r2w_rptr2(1)
    );
\r2w_rptr2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(2),
      Q => r2w_rptr2(2)
    );
\r2w_rptr2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(3),
      Q => r2w_rptr2(3)
    );
\r2w_rptr2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(4),
      Q => r2w_rptr2(4)
    );
\r2w_rptr2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(5),
      Q => r2w_rptr2(5)
    );
\r2w_rptr2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(6),
      Q => r2w_rptr2(6)
    );
\r2w_rptr2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(7),
      Q => r2w_rptr2(7)
    );
\r2w_rptr2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(8),
      Q => r2w_rptr2(8)
    );
\r2w_rptr2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => r2w_rptr1(9),
      Q => r2w_rptr2(9)
    );
raddr0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => raddr_reg(0),
      CI_TOP => '0',
      CO(7) => raddr0_carry_n_0,
      CO(6) => raddr0_carry_n_1,
      CO(5) => raddr0_carry_n_2,
      CO(4) => raddr0_carry_n_3,
      CO(3) => raddr0_carry_n_4,
      CO(2) => raddr0_carry_n_5,
      CO(1) => raddr0_carry_n_6,
      CO(0) => raddr0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \p_0_in__0\(8 downto 1),
      S(7 downto 0) => raddr_reg(8 downto 1)
    );
\raddr0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => raddr0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_raddr0_carry__0_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \raddr0_carry__0_n_6\,
      CO(0) => \raddr0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_raddr0_carry__0_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \p_0_in__0\(11 downto 9),
      S(7 downto 3) => B"00000",
      S(2) => \raddr_reg__0\(11),
      S(1 downto 0) => raddr_reg(10 downto 9)
    );
\raddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raddr_reg(0),
      O => \p_0_in__0\(0)
    );
\raddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \^aresetn_0\,
      D => \p_0_in__0\(0),
      Q => raddr_reg(0)
    );
\raddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \^aresetn_0\,
      D => \p_0_in__0\(10),
      Q => raddr_reg(10)
    );
\raddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \^aresetn_0\,
      D => \p_0_in__0\(11),
      Q => \raddr_reg__0\(11)
    );
\raddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \^aresetn_0\,
      D => \p_0_in__0\(1),
      Q => raddr_reg(1)
    );
\raddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \^aresetn_0\,
      D => \p_0_in__0\(2),
      Q => raddr_reg(2)
    );
\raddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \^aresetn_0\,
      D => \p_0_in__0\(3),
      Q => raddr_reg(3)
    );
\raddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \^aresetn_0\,
      D => \p_0_in__0\(4),
      Q => raddr_reg(4)
    );
\raddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \^aresetn_0\,
      D => \p_0_in__0\(5),
      Q => raddr_reg(5)
    );
\raddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \^aresetn_0\,
      D => \p_0_in__0\(6),
      Q => raddr_reg(6)
    );
\raddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \^aresetn_0\,
      D => \p_0_in__0\(7),
      Q => raddr_reg(7)
    );
\raddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \^aresetn_0\,
      D => \p_0_in__0\(8),
      Q => raddr_reg(8)
    );
\raddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => rd_flag,
      CLR => \^aresetn_0\,
      D => \p_0_in__0\(9),
      Q => raddr_reg(9)
    );
ram: entity work.design_1_video_to_axis_0_2_full_dp_ram
     port map (
      Q(11 downto 0) => r2w_rptr2(11 downto 0),
      S(0) => \waddr_reg__0\(11),
      aclk => aclk,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      mem_reg_bram_1_i_4_0(11 downto 0) => w2r_wptr2(11 downto 0),
      mem_reg_bram_1_i_4_1(0) => \raddr_reg__0\(11),
      prev_active_video => prev_active_video,
      q_b(25 downto 0) => q_b(25 downto 0),
      \r2w_rptr2_reg[6]\ => ram_n_1,
      raddr_reg(10 downto 0) => raddr_reg(10 downto 0),
      raddr_reg_0_sp_1 => ram_n_6,
      raddr_reg_6_sp_1 => ram_n_5,
      rd_flag => rd_flag,
      vid_active_video => vid_active_video,
      vid_ce => vid_ce,
      vid_clk => vid_clk,
      waddr_reg(10 downto 0) => waddr_reg(10 downto 0),
      waddr_reg_1_sp_1 => ram_n_2,
      waddr_reg_4_sp_1 => ram_n_3,
      wdata_a(24 downto 0) => wdata_a(24 downto 0),
      wr_flag => wr_flag
    );
tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => ram_n_5,
      I1 => ram_n_6,
      I2 => m_axis_tready,
      I3 => m_axis_tvalid,
      O => m_axis_tready_0
    );
tvalid_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^aresetn_0\
    );
\w2r_wptr1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(1),
      I1 => waddr_reg(0),
      O => wptr(0)
    );
\w2r_wptr1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \waddr_reg__0\(11),
      I1 => waddr_reg(10),
      O => wptr(10)
    );
\w2r_wptr1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(2),
      I1 => waddr_reg(1),
      O => wptr(1)
    );
\w2r_wptr1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(3),
      I1 => waddr_reg(2),
      O => wptr(2)
    );
\w2r_wptr1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(4),
      I1 => waddr_reg(3),
      O => wptr(3)
    );
\w2r_wptr1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(5),
      I1 => waddr_reg(4),
      O => wptr(4)
    );
\w2r_wptr1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(6),
      I1 => waddr_reg(5),
      O => wptr(5)
    );
\w2r_wptr1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(7),
      I1 => waddr_reg(6),
      O => wptr(6)
    );
\w2r_wptr1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(8),
      I1 => waddr_reg(7),
      O => wptr(7)
    );
\w2r_wptr1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(9),
      I1 => waddr_reg(8),
      O => wptr(8)
    );
\w2r_wptr1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr_reg(10),
      I1 => waddr_reg(9),
      O => wptr(9)
    );
\w2r_wptr1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => wptr(0),
      Q => w2r_wptr1(0)
    );
\w2r_wptr1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => wptr(10),
      Q => w2r_wptr1(10)
    );
\w2r_wptr1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \waddr_reg__0\(11),
      Q => w2r_wptr1(11)
    );
\w2r_wptr1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => wptr(1),
      Q => w2r_wptr1(1)
    );
\w2r_wptr1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => wptr(2),
      Q => w2r_wptr1(2)
    );
\w2r_wptr1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => wptr(3),
      Q => w2r_wptr1(3)
    );
\w2r_wptr1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => wptr(4),
      Q => w2r_wptr1(4)
    );
\w2r_wptr1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => wptr(5),
      Q => w2r_wptr1(5)
    );
\w2r_wptr1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => wptr(6),
      Q => w2r_wptr1(6)
    );
\w2r_wptr1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => wptr(7),
      Q => w2r_wptr1(7)
    );
\w2r_wptr1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => wptr(8),
      Q => w2r_wptr1(8)
    );
\w2r_wptr1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => wptr(9),
      Q => w2r_wptr1(9)
    );
\w2r_wptr2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => w2r_wptr1(0),
      Q => w2r_wptr2(0)
    );
\w2r_wptr2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => w2r_wptr1(10),
      Q => w2r_wptr2(10)
    );
\w2r_wptr2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => w2r_wptr1(11),
      Q => w2r_wptr2(11)
    );
\w2r_wptr2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => w2r_wptr1(1),
      Q => w2r_wptr2(1)
    );
\w2r_wptr2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => w2r_wptr1(2),
      Q => w2r_wptr2(2)
    );
\w2r_wptr2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => w2r_wptr1(3),
      Q => w2r_wptr2(3)
    );
\w2r_wptr2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => w2r_wptr1(4),
      Q => w2r_wptr2(4)
    );
\w2r_wptr2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => w2r_wptr1(5),
      Q => w2r_wptr2(5)
    );
\w2r_wptr2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => w2r_wptr1(6),
      Q => w2r_wptr2(6)
    );
\w2r_wptr2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => w2r_wptr1(7),
      Q => w2r_wptr2(7)
    );
\w2r_wptr2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => w2r_wptr1(8),
      Q => w2r_wptr2(8)
    );
\w2r_wptr2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => w2r_wptr1(9),
      Q => w2r_wptr2(9)
    );
waddr0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => waddr_reg(0),
      CI_TOP => '0',
      CO(7) => waddr0_carry_n_0,
      CO(6) => waddr0_carry_n_1,
      CO(5) => waddr0_carry_n_2,
      CO(4) => waddr0_carry_n_3,
      CO(3) => waddr0_carry_n_4,
      CO(2) => waddr0_carry_n_5,
      CO(1) => waddr0_carry_n_6,
      CO(0) => waddr0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => p_0_in(8 downto 1),
      S(7 downto 0) => waddr_reg(8 downto 1)
    );
\waddr0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => waddr0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_waddr0_carry__0_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \waddr0_carry__0_n_6\,
      CO(0) => \waddr0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_waddr0_carry__0_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => p_0_in(11 downto 9),
      S(7 downto 3) => B"00000",
      S(2) => \waddr_reg__0\(11),
      S(1 downto 0) => waddr_reg(10 downto 9)
    );
\waddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => waddr_reg(0),
      O => p_0_in(0)
    );
\waddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(0),
      Q => waddr_reg(0)
    );
\waddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(10),
      Q => waddr_reg(10)
    );
\waddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(11),
      Q => \waddr_reg__0\(11)
    );
\waddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(1),
      Q => waddr_reg(1)
    );
\waddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(2),
      Q => waddr_reg(2)
    );
\waddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(3),
      Q => waddr_reg(3)
    );
\waddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(4),
      Q => waddr_reg(4)
    );
\waddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(5),
      Q => waddr_reg(5)
    );
\waddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(6),
      Q => waddr_reg(6)
    );
\waddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(7),
      Q => waddr_reg(7)
    );
\waddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(8),
      Q => waddr_reg(8)
    );
\waddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => wr_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(9),
      Q => waddr_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_video_to_axis_0_2_video_to_axis is
  port (
    q_b : out STD_LOGIC_VECTOR ( 25 downto 0 );
    overflow : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    vid_clk : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_ce : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_vsync : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    vid_rstn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_video_to_axis_0_2_video_to_axis : entity is "video_to_axis";
end design_1_video_to_axis_0_2_video_to_axis;

architecture STRUCTURE of design_1_video_to_axis_0_2_video_to_axis is
  signal fifo_n_0 : STD_LOGIC;
  signal fifo_n_1 : STD_LOGIC;
  signal fifo_n_2 : STD_LOGIC;
  signal frmsync_i_1_n_0 : STD_LOGIC;
  signal frmsync_reg_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal prev_active_video : STD_LOGIC;
  signal prev_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal prev_vsync : STD_LOGIC;
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
fifo: entity work.design_1_video_to_axis_0_2_async_fifo
     port map (
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => fifo_n_0,
      m_axis_tready => m_axis_tready,
      m_axis_tready_0 => fifo_n_2,
      m_axis_tvalid => \^m_axis_tvalid\,
      overflow => overflow,
      prev_active_video => prev_active_video,
      q_b(25 downto 0) => q_b(25 downto 0),
      vid_active_video => vid_active_video,
      vid_ce => vid_ce,
      vid_clk => vid_clk,
      vid_rstn => vid_rstn,
      vid_rstn_0 => fifo_n_1,
      wdata_a(24) => frmsync_reg_n_0,
      wdata_a(23 downto 0) => prev_data(23 downto 0)
    );
frmsync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FF70AA0"
    )
        port map (
      I0 => vid_ce,
      I1 => prev_active_video,
      I2 => prev_vsync,
      I3 => vid_vsync,
      I4 => frmsync_reg_n_0,
      O => frmsync_i_1_n_0
    );
frmsync_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_1,
      D => frmsync_i_1_n_0,
      Q => frmsync_reg_n_0
    );
prev_active_video_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_active_video,
      Q => prev_active_video
    );
\prev_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(0),
      Q => prev_data(0)
    );
\prev_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(10),
      Q => prev_data(10)
    );
\prev_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(11),
      Q => prev_data(11)
    );
\prev_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(12),
      Q => prev_data(12)
    );
\prev_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(13),
      Q => prev_data(13)
    );
\prev_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(14),
      Q => prev_data(14)
    );
\prev_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(15),
      Q => prev_data(15)
    );
\prev_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(16),
      Q => prev_data(16)
    );
\prev_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(17),
      Q => prev_data(17)
    );
\prev_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(18),
      Q => prev_data(18)
    );
\prev_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(19),
      Q => prev_data(19)
    );
\prev_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(1),
      Q => prev_data(1)
    );
\prev_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(20),
      Q => prev_data(20)
    );
\prev_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(21),
      Q => prev_data(21)
    );
\prev_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(22),
      Q => prev_data(22)
    );
\prev_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(23),
      Q => prev_data(23)
    );
\prev_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(2),
      Q => prev_data(2)
    );
\prev_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(3),
      Q => prev_data(3)
    );
\prev_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(4),
      Q => prev_data(4)
    );
\prev_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(5),
      Q => prev_data(5)
    );
\prev_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(6),
      Q => prev_data(6)
    );
\prev_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(7),
      Q => prev_data(7)
    );
\prev_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(8),
      Q => prev_data(8)
    );
\prev_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_data(9),
      Q => prev_data(9)
    );
prev_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => vid_ce,
      CLR => fifo_n_1,
      D => vid_vsync,
      Q => prev_vsync
    );
tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => fifo_n_0,
      D => fifo_n_2,
      Q => \^m_axis_tvalid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_video_to_axis_0_2_video_to_axis_v1_0 is
  port (
    q_b : out STD_LOGIC_VECTOR ( 25 downto 0 );
    overflow : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    vid_clk : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_ce : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_vsync : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    vid_rstn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_video_to_axis_0_2_video_to_axis_v1_0 : entity is "video_to_axis_v1_0";
end design_1_video_to_axis_0_2_video_to_axis_v1_0;

architecture STRUCTURE of design_1_video_to_axis_0_2_video_to_axis_v1_0 is
begin
video_to_axis_inst: entity work.design_1_video_to_axis_0_2_video_to_axis
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      overflow => overflow,
      q_b(25 downto 0) => q_b(25 downto 0),
      vid_active_video => vid_active_video,
      vid_ce => vid_ce,
      vid_clk => vid_clk,
      vid_data(23 downto 0) => vid_data(23 downto 0),
      vid_rstn => vid_rstn,
      vid_vsync => vid_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_video_to_axis_0_2 is
  port (
    vid_clk : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    vid_ce : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC;
    overflow : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_video_to_axis_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_video_to_axis_0_2 : entity is "design_1_video_to_axis_0_2,video_to_axis_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_video_to_axis_0_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_video_to_axis_0_2 : entity is "video_to_axis_v1_0,Vivado 2022.1";
end design_1_video_to_axis_0_2;

architecture STRUCTURE of design_1_video_to_axis_0_2 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF m_axis, FREQ_HZ 299997000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_tuser : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 299997000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of vid_active_video : signal is "xilinx.com:interface:vid_io:1.0 vid_in ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vid_ce : signal is "xilinx.com:signal:clockenable:1.0 vid_ce CE";
  attribute X_INTERFACE_PARAMETER of vid_ce : signal is "XIL_INTERFACENAME vid_ce, FREQ_HZ 100000000, PHASE 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of vid_clk : signal is "xilinx.com:signal:clock:1.0 vid_clk CLK";
  attribute X_INTERFACE_PARAMETER of vid_clk : signal is "XIL_INTERFACENAME vid_clk, ASSOCIATED_RESET vid_rstn:vid_ce, ASSOCIATED_BUSIF vid_in, ASSOCIATED_CLKEN vid_ce, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_xil_vip_0_1_out_pclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_rstn : signal is "xilinx.com:signal:reset:1.0 vid_rstn RST";
  attribute X_INTERFACE_PARAMETER of vid_rstn : signal is "XIL_INTERFACENAME vid_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_vsync : signal is "xilinx.com:interface:vid_io:1.0 vid_in VSYNC";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of vid_data : signal is "xilinx.com:interface:vid_io:1.0 vid_in DATA";
begin
inst: entity work.design_1_video_to_axis_0_2_video_to_axis_v1_0
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      overflow => overflow,
      q_b(25) => m_axis_tuser,
      q_b(24) => m_axis_tlast,
      q_b(23 downto 0) => m_axis_tdata(23 downto 0),
      vid_active_video => vid_active_video,
      vid_ce => vid_ce,
      vid_clk => vid_clk,
      vid_data(23 downto 0) => vid_data(23 downto 0),
      vid_rstn => vid_rstn,
      vid_vsync => vid_vsync
    );
end STRUCTURE;
