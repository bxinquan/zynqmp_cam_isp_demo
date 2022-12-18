-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sat Dec 17 00:26:58 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_axis_to_video_0_0/design_1_axis_to_video_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_to_video_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_to_video_0_0_full_dp_ram is
  port (
    DOUTBDOUT : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rd_flag : out STD_LOGIC;
    wr_flag : out STD_LOGIC;
    raddr_reg_6_sp_1 : out STD_LOGIC;
    wfull : out STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    waddr_reg : in STD_LOGIC_VECTOR ( 10 downto 0 );
    raddr_reg : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DINADIN : in STD_LOGIC_VECTOR ( 10 downto 0 );
    active_video_w : in STD_LOGIC;
    mem_reg_bram_0_0 : in STD_LOGIC;
    rd_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready_INST_0_i_4_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_tready_INST_0_i_4_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_to_video_0_0_full_dp_ram : entity is "full_dp_ram";
end design_1_axis_to_video_0_0_full_dp_ram;

architecture STRUCTURE of design_1_axis_to_video_0_0_full_dp_ram is
  signal \^doutbdout\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal raddr_reg_6_sn_1 : STD_LOGIC;
  signal \^rd_flag\ : STD_LOGIC;
  signal s_axis_tready_INST_0_i_2_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_3_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_4_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_5_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_6_n_0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_7_n_0 : STD_LOGIC;
  signal underflow_INST_0_i_2_n_0 : STD_LOGIC;
  signal underflow_INST_0_i_3_n_0 : STD_LOGIC;
  signal underflow_INST_0_i_4_n_0 : STD_LOGIC;
  signal underflow_INST_0_i_5_n_0 : STD_LOGIC;
  signal underflow_INST_0_i_6_n_0 : STD_LOGIC;
  signal underflow_INST_0_i_7_n_0 : STD_LOGIC;
  signal \^wfull\ : STD_LOGIC;
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
  signal NLW_mem_reg_bram_0_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 11 );
  signal NLW_mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_bram_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_bram_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_bram_0 : label is "p0_d11";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_bram_0 : label is "p0_d11";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_bram_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of mem_reg_bram_0 : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_bram_0 : label is 22528;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_bram_0 : label is "inst/axis_to_video_inst/fifo/ram/mem_reg_bram_0";
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
  attribute ram_slice_end of mem_reg_bram_0 : label is 10;
begin
  DOUTBDOUT(10 downto 0) <= \^doutbdout\(10 downto 0);
  raddr_reg_6_sp_1 <= raddr_reg_6_sn_1;
  rd_flag <= \^rd_flag\;
  wfull <= \^wfull\;
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
      CLKARDCLK => aclk,
      CLKBWRCLK => vid_clk,
      DBITERR => NLW_mem_reg_bram_0_DBITERR_UNCONNECTED,
      DINADIN(31 downto 11) => B"000000000000000000000",
      DINADIN(10 downto 0) => DINADIN(10 downto 0),
      DINBDIN(31 downto 0) => B"00000000000000000000011111111111",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 0) => NLW_mem_reg_bram_0_DOUTADOUT_UNCONNECTED(31 downto 0),
      DOUTBDOUT(31 downto 11) => NLW_mem_reg_bram_0_DOUTBDOUT_UNCONNECTED(31 downto 11),
      DOUTBDOUT(10 downto 0) => \^doutbdout\(10 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
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
mem_reg_bram_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C88CC88"
    )
        port map (
      I0 => active_video_w,
      I1 => raddr_reg_6_sn_1,
      I2 => \^doutbdout\(10),
      I3 => mem_reg_bram_0_0,
      I4 => rd_valid,
      O => \^rd_flag\
    );
mem_reg_bram_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^wfull\,
      O => \^wr_flag\
    );
s_axis_tready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028820000"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_2_n_0,
      I1 => waddr_reg(1),
      I2 => waddr_reg(0),
      I3 => s_axis_tready_INST_0_i_4_0(0),
      I4 => s_axis_tready_INST_0_i_3_n_0,
      I5 => s_axis_tready_INST_0_i_4_n_0,
      O => \^wfull\
    );
s_axis_tready_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => waddr_reg(4),
      I1 => waddr_reg(3),
      I2 => s_axis_tready_INST_0_i_4_0(3),
      I3 => s_axis_tready_INST_0_i_5_n_0,
      O => s_axis_tready_INST_0_i_2_n_0
    );
s_axis_tready_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => waddr_reg(1),
      I1 => s_axis_tready_INST_0_i_4_0(1),
      I2 => waddr_reg(3),
      I3 => waddr_reg(2),
      I4 => s_axis_tready_INST_0_i_4_0(2),
      O => s_axis_tready_INST_0_i_3_n_0
    );
s_axis_tready_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77DFFFF"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_6_n_0,
      I1 => s_axis_tready_INST_0_i_4_0(6),
      I2 => waddr_reg(6),
      I3 => waddr_reg(7),
      I4 => s_axis_tready_INST_0_i_7_n_0,
      O => s_axis_tready_INST_0_i_4_n_0
    );
s_axis_tready_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => waddr_reg(4),
      I1 => s_axis_tready_INST_0_i_4_0(4),
      I2 => waddr_reg(6),
      I3 => waddr_reg(5),
      I4 => s_axis_tready_INST_0_i_4_0(5),
      O => s_axis_tready_INST_0_i_5_n_0
    );
s_axis_tready_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => waddr_reg(7),
      I1 => s_axis_tready_INST_0_i_4_0(7),
      I2 => waddr_reg(9),
      I3 => waddr_reg(8),
      I4 => s_axis_tready_INST_0_i_4_0(8),
      O => s_axis_tready_INST_0_i_6_n_0
    );
s_axis_tready_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600006000900900"
    )
        port map (
      I0 => waddr_reg(9),
      I1 => s_axis_tready_INST_0_i_4_0(9),
      I2 => s_axis_tready_INST_0_i_4_0(11),
      I3 => s_axis_tready_INST_0_i_4_1(0),
      I4 => s_axis_tready_INST_0_i_4_0(10),
      I5 => waddr_reg(10),
      O => s_axis_tready_INST_0_i_7_n_0
    );
underflow_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF96"
    )
        port map (
      I0 => raddr_reg(6),
      I1 => raddr_reg(7),
      I2 => Q(6),
      I3 => underflow_INST_0_i_2_n_0,
      I4 => underflow_INST_0_i_3_n_0,
      I5 => underflow_INST_0_i_4_n_0,
      O => raddr_reg_6_sn_1
    );
underflow_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F69F9FF6"
    )
        port map (
      I0 => raddr_reg(7),
      I1 => Q(7),
      I2 => raddr_reg(8),
      I3 => raddr_reg(9),
      I4 => Q(8),
      O => underflow_INST_0_i_2_n_0
    );
underflow_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9FF6FFFFF9FFFF6"
    )
        port map (
      I0 => raddr_reg(9),
      I1 => Q(9),
      I2 => Q(10),
      I3 => S(0),
      I4 => raddr_reg(10),
      I5 => Q(11),
      O => underflow_INST_0_i_3_n_0
    );
underflow_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEBBE"
    )
        port map (
      I0 => underflow_INST_0_i_5_n_0,
      I1 => Q(3),
      I2 => raddr_reg(4),
      I3 => raddr_reg(3),
      I4 => underflow_INST_0_i_6_n_0,
      I5 => underflow_INST_0_i_7_n_0,
      O => underflow_INST_0_i_4_n_0
    );
underflow_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F69F9FF6"
    )
        port map (
      I0 => raddr_reg(4),
      I1 => Q(4),
      I2 => raddr_reg(5),
      I3 => raddr_reg(6),
      I4 => Q(5),
      O => underflow_INST_0_i_5_n_0
    );
underflow_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F96F9FF6"
    )
        port map (
      I0 => raddr_reg(3),
      I1 => Q(2),
      I2 => raddr_reg(1),
      I3 => raddr_reg(2),
      I4 => Q(1),
      O => underflow_INST_0_i_6_n_0
    );
underflow_INST_0_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(0),
      I1 => raddr_reg(1),
      I2 => raddr_reg(0),
      O => underflow_INST_0_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_to_video_0_0_video_timing_gen is
  port (
    active_video_w : out STD_LOGIC;
    vsync_w : out STD_LOGIC;
    vid_hsync_reg_0 : out STD_LOGIC;
    rd_valid_reg : out STD_LOGIC;
    mem_reg_bram_0 : out STD_LOGIC;
    vid_clk : in STD_LOGIC;
    locked : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    rd_valid : in STD_LOGIC;
    frmsync_wait_reg : in STD_LOGIC;
    rd_valid_reg_0 : in STD_LOGIC;
    DOUTBDOUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_vsync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_to_video_0_0_video_timing_gen : entity is "video_timing_gen";
end design_1_axis_to_video_0_0_video_timing_gen;

architecture STRUCTURE of design_1_axis_to_video_0_0_video_timing_gen is
  signal \^active_video_w\ : STD_LOGIC;
  signal line_cnt : STD_LOGIC;
  signal \line_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_5_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_6_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_7_n_0\ : STD_LOGIC;
  signal \line_cnt[10]_i_8_n_0\ : STD_LOGIC;
  signal \line_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal pix_cnt : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \pix_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_3_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_4_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_5_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_6_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_7_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_8_n_0\ : STD_LOGIC;
  signal \pix_cnt[11]_i_9_n_0\ : STD_LOGIC;
  signal \pix_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \pix_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \pix_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal vid_active_video0 : STD_LOGIC;
  signal vid_active_video_i_2_n_0 : STD_LOGIC;
  signal vid_active_video_i_3_n_0 : STD_LOGIC;
  signal vid_active_video_i_4_n_0 : STD_LOGIC;
  signal vid_hsync_i_1_n_0 : STD_LOGIC;
  signal vid_hsync_i_2_n_0 : STD_LOGIC;
  signal vid_hsync_i_3_n_0 : STD_LOGIC;
  signal vid_vsync_i_1_n_0 : STD_LOGIC;
  signal vid_vsync_i_2_n_0 : STD_LOGIC;
  signal \^vsync_w\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \line_cnt[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \line_cnt[10]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \line_cnt[10]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \line_cnt[10]_i_8\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \line_cnt[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \line_cnt[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \line_cnt[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \line_cnt[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pix_cnt[0]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \pix_cnt[11]_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pix_cnt[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pix_cnt[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \pix_cnt[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \pix_cnt[5]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pix_cnt[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pix_cnt[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pix_cnt[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of vid_active_video_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of vid_active_video_i_4 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of vid_hsync_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of vid_hsync_i_3 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of vid_vsync_i_1 : label is "soft_lutpair10";
begin
  active_video_w <= \^active_video_w\;
  vsync_w <= \^vsync_w\;
frmsync_wait_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4C7F7F4C"
    )
        port map (
      I0 => DOUTBDOUT(0),
      I1 => frmsync_wait_reg,
      I2 => \^active_video_w\,
      I3 => vid_vsync,
      I4 => \^vsync_w\,
      O => mem_reg_bram_0
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[0]\,
      O => \line_cnt[0]_i_1_n_0\
    );
\line_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \line_cnt[10]_i_3_n_0\,
      I1 => pix_cnt(11),
      I2 => pix_cnt(5),
      I3 => pix_cnt(4),
      I4 => pix_cnt(3),
      I5 => \line_cnt[10]_i_4_n_0\,
      O => line_cnt
    );
\line_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA20000000"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt[10]_i_6_n_0\,
      I2 => \line_cnt_reg_n_0_[7]\,
      I3 => \line_cnt_reg_n_0_[8]\,
      I4 => \line_cnt_reg_n_0_[9]\,
      I5 => \line_cnt_reg_n_0_[10]\,
      O => \line_cnt[10]_i_2_n_0\
    );
\line_cnt[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => pix_cnt(6),
      I1 => pix_cnt(7),
      I2 => pix_cnt(2),
      I3 => pix_cnt(1),
      I4 => pix_cnt(0),
      O => \line_cnt[10]_i_3_n_0\
    );
\line_cnt[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => pix_cnt(8),
      I1 => pix_cnt(9),
      I2 => pix_cnt(10),
      O => \line_cnt[10]_i_4_n_0\
    );
\line_cnt[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005755FFFFFFFF"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[4]\,
      I1 => \line_cnt_reg_n_0_[2]\,
      I2 => \line_cnt_reg_n_0_[3]\,
      I3 => \line_cnt[5]_i_2_n_0\,
      I4 => \line_cnt[10]_i_7_n_0\,
      I5 => \line_cnt[10]_i_8_n_0\,
      O => \line_cnt[10]_i_5_n_0\
    );
\line_cnt[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[5]\,
      I1 => \line_cnt_reg_n_0_[3]\,
      I2 => \line_cnt[5]_i_2_n_0\,
      I3 => \line_cnt_reg_n_0_[2]\,
      I4 => \line_cnt_reg_n_0_[4]\,
      I5 => \line_cnt_reg_n_0_[6]\,
      O => \line_cnt[10]_i_6_n_0\
    );
\line_cnt[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[6]\,
      I1 => \line_cnt_reg_n_0_[8]\,
      I2 => \line_cnt_reg_n_0_[5]\,
      I3 => \line_cnt_reg_n_0_[7]\,
      O => \line_cnt[10]_i_7_n_0\
    );
\line_cnt[10]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[10]\,
      I1 => \line_cnt_reg_n_0_[9]\,
      O => \line_cnt[10]_i_8_n_0\
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[0]\,
      I2 => \line_cnt_reg_n_0_[1]\,
      O => \line_cnt[1]_i_1_n_0\
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[0]\,
      I2 => \line_cnt_reg_n_0_[1]\,
      I3 => \line_cnt_reg_n_0_[2]\,
      O => \line_cnt[2]_i_1_n_0\
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[1]\,
      I2 => \line_cnt_reg_n_0_[0]\,
      I3 => \line_cnt_reg_n_0_[2]\,
      I4 => \line_cnt_reg_n_0_[3]\,
      O => \line_cnt[3]_i_1_n_0\
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[2]\,
      I2 => \line_cnt_reg_n_0_[0]\,
      I3 => \line_cnt_reg_n_0_[1]\,
      I4 => \line_cnt_reg_n_0_[3]\,
      I5 => \line_cnt_reg_n_0_[4]\,
      O => \line_cnt[4]_i_1_n_0\
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[3]\,
      I2 => \line_cnt[5]_i_2_n_0\,
      I3 => \line_cnt_reg_n_0_[2]\,
      I4 => \line_cnt_reg_n_0_[4]\,
      I5 => \line_cnt_reg_n_0_[5]\,
      O => \line_cnt[5]_i_1_n_0\
    );
\line_cnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[0]\,
      I1 => \line_cnt_reg_n_0_[1]\,
      O => \line_cnt[5]_i_2_n_0\
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[4]\,
      I2 => \line_cnt[7]_i_2_n_0\,
      I3 => \line_cnt_reg_n_0_[5]\,
      I4 => \line_cnt_reg_n_0_[6]\,
      O => \line_cnt[6]_i_1_n_0\
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[5]\,
      I2 => \line_cnt[7]_i_2_n_0\,
      I3 => \line_cnt_reg_n_0_[4]\,
      I4 => \line_cnt_reg_n_0_[6]\,
      I5 => \line_cnt_reg_n_0_[7]\,
      O => \line_cnt[7]_i_1_n_0\
    );
\line_cnt[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[2]\,
      I1 => \line_cnt_reg_n_0_[0]\,
      I2 => \line_cnt_reg_n_0_[1]\,
      I3 => \line_cnt_reg_n_0_[3]\,
      O => \line_cnt[7]_i_2_n_0\
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[6]\,
      I2 => \line_cnt[9]_i_2_n_0\,
      I3 => \line_cnt_reg_n_0_[7]\,
      I4 => \line_cnt_reg_n_0_[8]\,
      O => \line_cnt[8]_i_1_n_0\
    );
\line_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => \line_cnt[10]_i_5_n_0\,
      I1 => \line_cnt_reg_n_0_[8]\,
      I2 => \line_cnt_reg_n_0_[7]\,
      I3 => \line_cnt[9]_i_2_n_0\,
      I4 => \line_cnt_reg_n_0_[6]\,
      I5 => \line_cnt_reg_n_0_[9]\,
      O => \line_cnt[9]_i_1_n_0\
    );
\line_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[4]\,
      I1 => \line_cnt_reg_n_0_[2]\,
      I2 => \line_cnt_reg_n_0_[0]\,
      I3 => \line_cnt_reg_n_0_[1]\,
      I4 => \line_cnt_reg_n_0_[3]\,
      I5 => \line_cnt_reg_n_0_[5]\,
      O => \line_cnt[9]_i_2_n_0\
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[0]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[0]\
    );
\line_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[10]_i_2_n_0\,
      Q => \line_cnt_reg_n_0_[10]\
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[1]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[1]\
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[2]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[2]\
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[3]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[3]\
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[4]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[4]\
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[5]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[5]\
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[6]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[6]\
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[7]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[7]\
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[8]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[8]\
    );
\line_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => line_cnt,
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \line_cnt[9]_i_1_n_0\,
      Q => \line_cnt_reg_n_0_[9]\
    );
\pix_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444404"
    )
        port map (
      I0 => pix_cnt(0),
      I1 => \pix_cnt[11]_i_4_n_0\,
      I2 => \pix_cnt[11]_i_5_n_0\,
      I3 => \pix_cnt[0]_i_2_n_0\,
      I4 => \pix_cnt[0]_i_3_n_0\,
      O => \pix_cnt[0]_i_1_n_0\
    );
\pix_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \pix_cnt[11]_i_9_n_0\,
      I1 => \line_cnt_reg_n_0_[3]\,
      I2 => \line_cnt_reg_n_0_[2]\,
      I3 => pix_cnt(0),
      I4 => DOUTBDOUT(0),
      I5 => \pix_cnt[11]_i_7_n_0\,
      O => \pix_cnt[0]_i_2_n_0\
    );
\pix_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[4]\,
      I1 => \line_cnt_reg_n_0_[7]\,
      I2 => \line_cnt_reg_n_0_[5]\,
      I3 => \line_cnt_reg_n_0_[8]\,
      I4 => \line_cnt_reg_n_0_[6]\,
      O => \pix_cnt[0]_i_3_n_0\
    );
\pix_cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \pix_cnt[11]_i_4_n_0\,
      I1 => \pix_cnt[11]_i_3_n_0\,
      I2 => pix_cnt(10),
      O => \pix_cnt[10]_i_1_n_0\
    );
\pix_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F8000000F800"
    )
        port map (
      I0 => \pix_cnt[11]_i_3_n_0\,
      I1 => pix_cnt(10),
      I2 => pix_cnt(11),
      I3 => \pix_cnt[11]_i_4_n_0\,
      I4 => \pix_cnt[11]_i_5_n_0\,
      I5 => \pix_cnt[11]_i_6_n_0\,
      O => \pix_cnt[11]_i_1_n_0\
    );
\pix_cnt[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => locked,
      I1 => vid_rstn,
      O => \pix_cnt[11]_i_2_n_0\
    );
\pix_cnt[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => pix_cnt(9),
      I1 => pix_cnt(8),
      I2 => \pix_cnt[9]_i_2_n_0\,
      I3 => pix_cnt(6),
      I4 => pix_cnt(7),
      O => \pix_cnt[11]_i_3_n_0\
    );
\pix_cnt[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555555555D"
    )
        port map (
      I0 => pix_cnt(11),
      I1 => vid_active_video_i_3_n_0,
      I2 => pix_cnt(10),
      I3 => pix_cnt(9),
      I4 => pix_cnt(8),
      I5 => \line_cnt[10]_i_3_n_0\,
      O => \pix_cnt[11]_i_4_n_0\
    );
\pix_cnt[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pix_cnt(6),
      I1 => pix_cnt(11),
      I2 => pix_cnt(10),
      I3 => pix_cnt(9),
      I4 => pix_cnt(8),
      I5 => pix_cnt(7),
      O => \pix_cnt[11]_i_5_n_0\
    );
\pix_cnt[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \pix_cnt[0]_i_3_n_0\,
      I1 => \pix_cnt[11]_i_7_n_0\,
      I2 => DOUTBDOUT(0),
      I3 => pix_cnt(0),
      I4 => \pix_cnt[11]_i_8_n_0\,
      I5 => \pix_cnt[11]_i_9_n_0\,
      O => \pix_cnt[11]_i_6_n_0\
    );
\pix_cnt[11]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => pix_cnt(1),
      I1 => pix_cnt(3),
      I2 => pix_cnt(2),
      O => \pix_cnt[11]_i_7_n_0\
    );
\pix_cnt[11]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[2]\,
      I1 => \line_cnt_reg_n_0_[3]\,
      O => \pix_cnt[11]_i_8_n_0\
    );
\pix_cnt[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[1]\,
      I1 => \line_cnt_reg_n_0_[0]\,
      I2 => \line_cnt_reg_n_0_[10]\,
      I3 => \line_cnt_reg_n_0_[9]\,
      I4 => pix_cnt(5),
      I5 => pix_cnt(4),
      O => \pix_cnt[11]_i_9_n_0\
    );
\pix_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \pix_cnt[11]_i_4_n_0\,
      I1 => pix_cnt(0),
      I2 => pix_cnt(1),
      O => \pix_cnt[1]_i_1_n_0\
    );
\pix_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \pix_cnt[11]_i_4_n_0\,
      I1 => pix_cnt(1),
      I2 => pix_cnt(0),
      I3 => pix_cnt(2),
      O => \pix_cnt[2]_i_1_n_0\
    );
\pix_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \pix_cnt[11]_i_4_n_0\,
      I1 => pix_cnt(0),
      I2 => pix_cnt(1),
      I3 => pix_cnt(2),
      I4 => pix_cnt(3),
      O => \pix_cnt[3]_i_1_n_0\
    );
\pix_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \pix_cnt[11]_i_4_n_0\,
      I1 => pix_cnt(2),
      I2 => pix_cnt(1),
      I3 => pix_cnt(0),
      I4 => pix_cnt(3),
      I5 => pix_cnt(4),
      O => \pix_cnt[4]_i_1_n_0\
    );
\pix_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \pix_cnt[11]_i_4_n_0\,
      I1 => \pix_cnt[5]_i_2_n_0\,
      I2 => pix_cnt(4),
      I3 => pix_cnt(5),
      O => \pix_cnt[5]_i_1_n_0\
    );
\pix_cnt[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pix_cnt(2),
      I1 => pix_cnt(1),
      I2 => pix_cnt(0),
      I3 => pix_cnt(3),
      O => \pix_cnt[5]_i_2_n_0\
    );
\pix_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \pix_cnt[11]_i_4_n_0\,
      I1 => \pix_cnt[9]_i_2_n_0\,
      I2 => pix_cnt(6),
      O => \pix_cnt[6]_i_1_n_0\
    );
\pix_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \pix_cnt[11]_i_4_n_0\,
      I1 => \pix_cnt[9]_i_2_n_0\,
      I2 => pix_cnt(6),
      I3 => pix_cnt(7),
      O => \pix_cnt[7]_i_1_n_0\
    );
\pix_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA2000"
    )
        port map (
      I0 => \pix_cnt[11]_i_4_n_0\,
      I1 => \pix_cnt[9]_i_2_n_0\,
      I2 => pix_cnt(6),
      I3 => pix_cnt(7),
      I4 => pix_cnt(8),
      O => \pix_cnt[8]_i_1_n_0\
    );
\pix_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => \pix_cnt[11]_i_4_n_0\,
      I1 => pix_cnt(7),
      I2 => pix_cnt(6),
      I3 => \pix_cnt[9]_i_2_n_0\,
      I4 => pix_cnt(8),
      I5 => pix_cnt(9),
      O => \pix_cnt[9]_i_1_n_0\
    );
\pix_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => pix_cnt(3),
      I1 => pix_cnt(0),
      I2 => pix_cnt(1),
      I3 => pix_cnt(2),
      I4 => pix_cnt(4),
      I5 => pix_cnt(5),
      O => \pix_cnt[9]_i_2_n_0\
    );
\pix_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[0]_i_1_n_0\,
      Q => pix_cnt(0)
    );
\pix_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[10]_i_1_n_0\,
      Q => pix_cnt(10)
    );
\pix_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[11]_i_1_n_0\,
      Q => pix_cnt(11)
    );
\pix_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[1]_i_1_n_0\,
      Q => pix_cnt(1)
    );
\pix_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[2]_i_1_n_0\,
      Q => pix_cnt(2)
    );
\pix_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[3]_i_1_n_0\,
      Q => pix_cnt(3)
    );
\pix_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[4]_i_1_n_0\,
      Q => pix_cnt(4)
    );
\pix_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[5]_i_1_n_0\,
      Q => pix_cnt(5)
    );
\pix_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[6]_i_1_n_0\,
      Q => pix_cnt(6)
    );
\pix_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[7]_i_1_n_0\,
      Q => pix_cnt(7)
    );
\pix_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[8]_i_1_n_0\,
      Q => pix_cnt(8)
    );
\pix_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => \pix_cnt[9]_i_1_n_0\,
      Q => pix_cnt(9)
    );
rd_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => rd_valid,
      I1 => frmsync_wait_reg,
      I2 => \^active_video_w\,
      I3 => rd_valid_reg_0,
      O => rd_valid_reg
    );
vid_active_video_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BDBD00BD"
    )
        port map (
      I0 => vid_active_video_i_2_n_0,
      I1 => \line_cnt_reg_n_0_[9]\,
      I2 => \line_cnt_reg_n_0_[10]\,
      I3 => vid_active_video_i_3_n_0,
      I4 => vid_active_video_i_4_n_0,
      O => vid_active_video0
    );
vid_active_video_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0057"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[3]\,
      I1 => \line_cnt_reg_n_0_[1]\,
      I2 => \line_cnt_reg_n_0_[2]\,
      I3 => \pix_cnt[0]_i_3_n_0\,
      O => vid_active_video_i_2_n_0
    );
vid_active_video_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => pix_cnt(5),
      I1 => pix_cnt(4),
      I2 => pix_cnt(3),
      I3 => pix_cnt(6),
      I4 => pix_cnt(7),
      O => vid_active_video_i_3_n_0
    );
vid_active_video_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pix_cnt(11),
      I1 => pix_cnt(10),
      I2 => pix_cnt(9),
      I3 => pix_cnt(8),
      O => vid_active_video_i_4_n_0
    );
vid_active_video_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => vid_active_video0,
      Q => \^active_video_w\
    );
vid_hsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF3FFFF0505"
    )
        port map (
      I0 => vid_hsync_i_2_n_0,
      I1 => vid_hsync_i_3_n_0,
      I2 => pix_cnt(6),
      I3 => pix_cnt(5),
      I4 => vid_active_video_i_4_n_0,
      I5 => pix_cnt(7),
      O => vid_hsync_i_1_n_0
    );
vid_hsync_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => pix_cnt(2),
      I1 => pix_cnt(3),
      I2 => pix_cnt(1),
      I3 => pix_cnt(4),
      I4 => pix_cnt(5),
      O => vid_hsync_i_2_n_0
    );
vid_hsync_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07FF"
    )
        port map (
      I0 => pix_cnt(2),
      I1 => pix_cnt(1),
      I2 => pix_cnt(3),
      I3 => pix_cnt(4),
      O => vid_hsync_i_3_n_0
    );
vid_hsync_reg: unisim.vcomponents.FDPE
     port map (
      C => vid_clk,
      CE => '1',
      D => vid_hsync_i_1_n_0,
      PRE => \pix_cnt[11]_i_2_n_0\,
      Q => vid_hsync_reg_0
    );
vid_vsync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0FFC040"
    )
        port map (
      I0 => \line_cnt[7]_i_2_n_0\,
      I1 => \line_cnt_reg_n_0_[10]\,
      I2 => \line_cnt_reg_n_0_[9]\,
      I3 => \pix_cnt[0]_i_3_n_0\,
      I4 => vid_vsync_i_2_n_0,
      O => vid_vsync_i_1_n_0
    );
vid_vsync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000057"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[2]\,
      I1 => \line_cnt_reg_n_0_[0]\,
      I2 => \line_cnt_reg_n_0_[1]\,
      I3 => \line_cnt_reg_n_0_[10]\,
      I4 => \line_cnt_reg_n_0_[9]\,
      I5 => \line_cnt_reg_n_0_[3]\,
      O => vid_vsync_i_2_n_0
    );
vid_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \pix_cnt[11]_i_2_n_0\,
      D => vid_vsync_i_1_n_0,
      Q => \^vsync_w\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_to_video_0_0_async_fifo is
  port (
    DOUTBDOUT : out STD_LOGIC_VECTOR ( 10 downto 0 );
    vid_rstn_0 : out STD_LOGIC;
    \raddr_reg[6]_0\ : out STD_LOGIC;
    underflow : out STD_LOGIC;
    wfull : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    DINADIN : in STD_LOGIC_VECTOR ( 10 downto 0 );
    active_video_w : in STD_LOGIC;
    mem_reg_bram_0 : in STD_LOGIC;
    rd_valid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_to_video_0_0_async_fifo : entity is "async_fifo";
end design_1_axis_to_video_0_0_async_fifo;

architecture STRUCTURE of design_1_axis_to_video_0_0_async_fifo is
  signal p_0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal r2w_rptr1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \r2w_rptr1[11]_i_1_n_0\ : STD_LOGIC;
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
  signal \^raddr_reg[6]_0\ : STD_LOGIC;
  signal \raddr_reg__0\ : STD_LOGIC_VECTOR ( 11 to 11 );
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
  signal \^wfull\ : STD_LOGIC;
  signal wptr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wr_flag : STD_LOGIC;
  signal \NLW_raddr0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_raddr0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_waddr0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_waddr0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r2w_rptr1[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r2w_rptr1[10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r2w_rptr1[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r2w_rptr1[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r2w_rptr1[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r2w_rptr1[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r2w_rptr1[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r2w_rptr1[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r2w_rptr1[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r2w_rptr1[9]_i_1\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of raddr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \raddr0_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \w2r_wptr1[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \w2r_wptr1[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \w2r_wptr1[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \w2r_wptr1[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \w2r_wptr1[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \w2r_wptr1[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \w2r_wptr1[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w2r_wptr1[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w2r_wptr1[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w2r_wptr1[9]_i_1\ : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD of waddr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \waddr0_carry__0\ : label is 35;
begin
  \raddr_reg[6]_0\ <= \^raddr_reg[6]_0\;
  vid_rstn_0 <= \^vid_rstn_0\;
  wfull <= \^wfull\;
locked_r_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vid_rstn,
      O => \^vid_rstn_0\
    );
\r2w_rptr1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(0),
      I1 => raddr_reg(1),
      O => rptr(0)
    );
\r2w_rptr1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(10),
      I1 => \raddr_reg__0\(11),
      O => rptr(10)
    );
\r2w_rptr1[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \r2w_rptr1[11]_i_1_n_0\
    );
\r2w_rptr1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(1),
      I1 => raddr_reg(2),
      O => rptr(1)
    );
\r2w_rptr1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(2),
      I1 => raddr_reg(3),
      O => rptr(2)
    );
\r2w_rptr1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(3),
      I1 => raddr_reg(4),
      O => rptr(3)
    );
\r2w_rptr1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(4),
      I1 => raddr_reg(5),
      O => rptr(4)
    );
\r2w_rptr1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(5),
      I1 => raddr_reg(6),
      O => rptr(5)
    );
\r2w_rptr1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(6),
      I1 => raddr_reg(7),
      O => rptr(6)
    );
\r2w_rptr1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(7),
      I1 => raddr_reg(8),
      O => rptr(7)
    );
\r2w_rptr1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(8),
      I1 => raddr_reg(9),
      O => rptr(8)
    );
\r2w_rptr1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => raddr_reg(9),
      I1 => raddr_reg(10),
      O => rptr(9)
    );
\r2w_rptr1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => rptr(0),
      Q => r2w_rptr1(0)
    );
\r2w_rptr1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => rptr(10),
      Q => r2w_rptr1(10)
    );
\r2w_rptr1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \raddr_reg__0\(11),
      Q => r2w_rptr1(11)
    );
\r2w_rptr1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => rptr(1),
      Q => r2w_rptr1(1)
    );
\r2w_rptr1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => rptr(2),
      Q => r2w_rptr1(2)
    );
\r2w_rptr1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => rptr(3),
      Q => r2w_rptr1(3)
    );
\r2w_rptr1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => rptr(4),
      Q => r2w_rptr1(4)
    );
\r2w_rptr1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => rptr(5),
      Q => r2w_rptr1(5)
    );
\r2w_rptr1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => rptr(6),
      Q => r2w_rptr1(6)
    );
\r2w_rptr1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => rptr(7),
      Q => r2w_rptr1(7)
    );
\r2w_rptr1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => rptr(8),
      Q => r2w_rptr1(8)
    );
\r2w_rptr1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => rptr(9),
      Q => r2w_rptr1(9)
    );
\r2w_rptr2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => r2w_rptr1(0),
      Q => r2w_rptr2(0)
    );
\r2w_rptr2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => r2w_rptr1(10),
      Q => r2w_rptr2(10)
    );
\r2w_rptr2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => r2w_rptr1(11),
      Q => r2w_rptr2(11)
    );
\r2w_rptr2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => r2w_rptr1(1),
      Q => r2w_rptr2(1)
    );
\r2w_rptr2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => r2w_rptr1(2),
      Q => r2w_rptr2(2)
    );
\r2w_rptr2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => r2w_rptr1(3),
      Q => r2w_rptr2(3)
    );
\r2w_rptr2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => r2w_rptr1(4),
      Q => r2w_rptr2(4)
    );
\r2w_rptr2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => r2w_rptr1(5),
      Q => r2w_rptr2(5)
    );
\r2w_rptr2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => r2w_rptr1(6),
      Q => r2w_rptr2(6)
    );
\r2w_rptr2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => r2w_rptr1(7),
      Q => r2w_rptr2(7)
    );
\r2w_rptr2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => r2w_rptr1(8),
      Q => r2w_rptr2(8)
    );
\r2w_rptr2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \r2w_rptr1[11]_i_1_n_0\,
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
      O(7 downto 0) => p_0_in(8 downto 1),
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
      O(2 downto 0) => p_0_in(11 downto 9),
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
      O => p_0_in(0)
    );
\raddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(0),
      Q => raddr_reg(0)
    );
\raddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(10),
      Q => raddr_reg(10)
    );
\raddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(11),
      Q => \raddr_reg__0\(11)
    );
\raddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(1),
      Q => raddr_reg(1)
    );
\raddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(2),
      Q => raddr_reg(2)
    );
\raddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(3),
      Q => raddr_reg(3)
    );
\raddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(4),
      Q => raddr_reg(4)
    );
\raddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(5),
      Q => raddr_reg(5)
    );
\raddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(6),
      Q => raddr_reg(6)
    );
\raddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(7),
      Q => raddr_reg(7)
    );
\raddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(8),
      Q => raddr_reg(8)
    );
\raddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => rd_flag,
      CLR => \^vid_rstn_0\,
      D => p_0_in(9),
      Q => raddr_reg(9)
    );
ram: entity work.design_1_axis_to_video_0_0_full_dp_ram
     port map (
      DINADIN(10 downto 0) => DINADIN(10 downto 0),
      DOUTBDOUT(10 downto 0) => DOUTBDOUT(10 downto 0),
      Q(11 downto 0) => w2r_wptr2(11 downto 0),
      S(0) => \raddr_reg__0\(11),
      aclk => aclk,
      active_video_w => active_video_w,
      mem_reg_bram_0_0 => mem_reg_bram_0,
      raddr_reg(10 downto 0) => raddr_reg(10 downto 0),
      raddr_reg_6_sp_1 => \^raddr_reg[6]_0\,
      rd_flag => rd_flag,
      rd_valid => rd_valid,
      s_axis_tready_INST_0_i_4_0(11 downto 0) => r2w_rptr2(11 downto 0),
      s_axis_tready_INST_0_i_4_1(0) => \waddr_reg__0\(11),
      s_axis_tvalid => s_axis_tvalid,
      vid_clk => vid_clk,
      waddr_reg(10 downto 0) => waddr_reg(10 downto 0),
      wfull => \^wfull\,
      wr_flag => wr_flag
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^wfull\,
      O => s_axis_tready
    );
underflow_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^raddr_reg[6]_0\,
      O => underflow
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
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(0),
      Q => w2r_wptr1(0)
    );
\w2r_wptr1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(10),
      Q => w2r_wptr1(10)
    );
\w2r_wptr1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => \waddr_reg__0\(11),
      Q => w2r_wptr1(11)
    );
\w2r_wptr1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(1),
      Q => w2r_wptr1(1)
    );
\w2r_wptr1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(2),
      Q => w2r_wptr1(2)
    );
\w2r_wptr1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(3),
      Q => w2r_wptr1(3)
    );
\w2r_wptr1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(4),
      Q => w2r_wptr1(4)
    );
\w2r_wptr1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(5),
      Q => w2r_wptr1(5)
    );
\w2r_wptr1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(6),
      Q => w2r_wptr1(6)
    );
\w2r_wptr1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(7),
      Q => w2r_wptr1(7)
    );
\w2r_wptr1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(8),
      Q => w2r_wptr1(8)
    );
\w2r_wptr1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => wptr(9),
      Q => w2r_wptr1(9)
    );
\w2r_wptr2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(0),
      Q => w2r_wptr2(0)
    );
\w2r_wptr2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(10),
      Q => w2r_wptr2(10)
    );
\w2r_wptr2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(11),
      Q => w2r_wptr2(11)
    );
\w2r_wptr2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(1),
      Q => w2r_wptr2(1)
    );
\w2r_wptr2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(2),
      Q => w2r_wptr2(2)
    );
\w2r_wptr2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(3),
      Q => w2r_wptr2(3)
    );
\w2r_wptr2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(4),
      Q => w2r_wptr2(4)
    );
\w2r_wptr2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(5),
      Q => w2r_wptr2(5)
    );
\w2r_wptr2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(6),
      Q => w2r_wptr2(6)
    );
\w2r_wptr2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(7),
      Q => w2r_wptr2(7)
    );
\w2r_wptr2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
      D => w2r_wptr1(8),
      Q => w2r_wptr2(8)
    );
\w2r_wptr2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => \^vid_rstn_0\,
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
      O(7 downto 0) => \p_0_in__0\(8 downto 1),
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
      O(2 downto 0) => \p_0_in__0\(11 downto 9),
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
      O => \p_0_in__0\(0)
    );
\waddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => waddr_reg(0)
    );
\waddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \p_0_in__0\(10),
      Q => waddr_reg(10)
    );
\waddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \p_0_in__0\(11),
      Q => \waddr_reg__0\(11)
    );
\waddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => waddr_reg(1)
    );
\waddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => waddr_reg(2)
    );
\waddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => waddr_reg(3)
    );
\waddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => waddr_reg(4)
    );
\waddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => waddr_reg(5)
    );
\waddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => waddr_reg(6)
    );
\waddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => waddr_reg(7)
    );
\waddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \p_0_in__0\(8),
      Q => waddr_reg(8)
    );
\waddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => wr_flag,
      CLR => \r2w_rptr1[11]_i_1_n_0\,
      D => \p_0_in__0\(9),
      Q => waddr_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_to_video_0_0_axis_to_video is
  port (
    locked : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    underflow : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    DINADIN : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_to_video_0_0_axis_to_video : entity is "axis_to_video";
end design_1_axis_to_video_0_0_axis_to_video;

architecture STRUCTURE of design_1_axis_to_video_0_0_axis_to_video is
  signal active_video_w : STD_LOGIC;
  signal fifo_n_11 : STD_LOGIC;
  signal fifo_n_12 : STD_LOGIC;
  signal frmsync_wait_reg_n_0 : STD_LOGIC;
  signal \^locked\ : STD_LOGIC;
  signal locked_r_i_1_n_0 : STD_LOGIC;
  signal rd_tuser : STD_LOGIC;
  signal rd_valid : STD_LOGIC;
  signal timing_n_2 : STD_LOGIC;
  signal timing_n_3 : STD_LOGIC;
  signal timing_n_4 : STD_LOGIC;
  signal \^vid_vsync\ : STD_LOGIC;
  signal vsync_w : STD_LOGIC;
  signal w2r_wfull1 : STD_LOGIC;
  signal w2r_wfull2 : STD_LOGIC;
  signal wfull : STD_LOGIC;
begin
  locked <= \^locked\;
  vid_vsync <= \^vid_vsync\;
active_video_r_reg: unisim.vcomponents.FDRE
     port map (
      C => vid_clk,
      CE => '1',
      D => active_video_w,
      Q => vid_active_video,
      R => '0'
    );
fifo: entity work.design_1_axis_to_video_0_0_async_fifo
     port map (
      DINADIN(10 downto 0) => DINADIN(10 downto 0),
      DOUTBDOUT(10) => rd_tuser,
      DOUTBDOUT(9 downto 0) => vid_data(9 downto 0),
      aclk => aclk,
      active_video_w => active_video_w,
      aresetn => aresetn,
      mem_reg_bram_0 => frmsync_wait_reg_n_0,
      \raddr_reg[6]_0\ => fifo_n_12,
      rd_valid => rd_valid,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      underflow => underflow,
      vid_clk => vid_clk,
      vid_rstn => vid_rstn,
      vid_rstn_0 => fifo_n_11,
      wfull => wfull
    );
frmsync_wait_reg: unisim.vcomponents.FDPE
     port map (
      C => vid_clk,
      CE => '1',
      D => timing_n_4,
      PRE => fifo_n_11,
      Q => frmsync_wait_reg_n_0
    );
hsync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => vid_clk,
      CE => '1',
      D => timing_n_2,
      Q => vid_hsync,
      R => '0'
    );
locked_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w2r_wfull2,
      I1 => \^locked\,
      O => locked_r_i_1_n_0
    );
locked_r_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_11,
      D => locked_r_i_1_n_0,
      Q => \^locked\
    );
rd_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_11,
      D => timing_n_3,
      Q => rd_valid
    );
timing: entity work.design_1_axis_to_video_0_0_video_timing_gen
     port map (
      DOUTBDOUT(0) => rd_tuser,
      active_video_w => active_video_w,
      frmsync_wait_reg => frmsync_wait_reg_n_0,
      locked => \^locked\,
      mem_reg_bram_0 => timing_n_4,
      rd_valid => rd_valid,
      rd_valid_reg => timing_n_3,
      rd_valid_reg_0 => fifo_n_12,
      vid_clk => vid_clk,
      vid_hsync_reg_0 => timing_n_2,
      vid_rstn => vid_rstn,
      vid_vsync => \^vid_vsync\,
      vsync_w => vsync_w
    );
vsync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => vid_clk,
      CE => '1',
      D => vsync_w,
      Q => \^vid_vsync\,
      R => '0'
    );
w2r_wfull1_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_11,
      D => wfull,
      Q => w2r_wfull1
    );
w2r_wfull2_reg: unisim.vcomponents.FDCE
     port map (
      C => vid_clk,
      CE => '1',
      CLR => fifo_n_11,
      D => w2r_wfull1,
      Q => w2r_wfull2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_to_video_0_0_axis_to_video_v1_0 is
  port (
    locked : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    underflow : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    DINADIN : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_to_video_0_0_axis_to_video_v1_0 : entity is "axis_to_video_v1_0";
end design_1_axis_to_video_0_0_axis_to_video_v1_0;

architecture STRUCTURE of design_1_axis_to_video_0_0_axis_to_video_v1_0 is
begin
axis_to_video_inst: entity work.design_1_axis_to_video_0_0_axis_to_video
     port map (
      DINADIN(10 downto 0) => DINADIN(10 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      locked => locked,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      underflow => underflow,
      vid_active_video => vid_active_video,
      vid_clk => vid_clk,
      vid_data(9 downto 0) => vid_data(9 downto 0),
      vid_hsync => vid_hsync,
      vid_rstn => vid_rstn,
      vid_vsync => vid_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_to_video_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    vid_clk : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 9 downto 0 );
    locked : out STD_LOGIC;
    underflow : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axis_to_video_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_to_video_0_0 : entity is "design_1_axis_to_video_0_0,axis_to_video_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_to_video_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axis_to_video_0_0 : entity is "axis_to_video_v1_0,Vivado 2022.1";
end design_1_axis_to_video_0_0;

architecture STRUCTURE of design_1_axis_to_video_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF s_axis, FREQ_HZ 299997000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
  attribute X_INTERFACE_PARAMETER of s_axis_tuser : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 299997000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of vid_active_video : signal is "xilinx.com:interface:vid_io:1.0 vid_out ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vid_clk : signal is "xilinx.com:signal:clock:1.0 vid_clk CLK";
  attribute X_INTERFACE_PARAMETER of vid_clk : signal is "XIL_INTERFACENAME vid_clk, ASSOCIATED_RESET vid_rstn, ASSOCIATED_BUSIF video_out, FREQ_HZ 124998750, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_ctrl, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_hsync : signal is "xilinx.com:interface:vid_io:1.0 vid_out HSYNC";
  attribute X_INTERFACE_INFO of vid_rstn : signal is "xilinx.com:signal:reset:1.0 vid_rstn RST";
  attribute X_INTERFACE_PARAMETER of vid_rstn : signal is "XIL_INTERFACENAME vid_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_vsync : signal is "xilinx.com:interface:vid_io:1.0 vid_out VSYNC";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of vid_data : signal is "xilinx.com:interface:vid_io:1.0 vid_out DATA";
begin
inst: entity work.design_1_axis_to_video_0_0_axis_to_video_v1_0
     port map (
      DINADIN(10) => s_axis_tuser,
      DINADIN(9 downto 0) => s_axis_tdata(9 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      locked => locked,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      underflow => underflow,
      vid_active_video => vid_active_video,
      vid_clk => vid_clk,
      vid_data(9 downto 0) => vid_data(9 downto 0),
      vid_hsync => vid_hsync,
      vid_rstn => vid_rstn,
      vid_vsync => vid_vsync
    );
end STRUCTURE;
