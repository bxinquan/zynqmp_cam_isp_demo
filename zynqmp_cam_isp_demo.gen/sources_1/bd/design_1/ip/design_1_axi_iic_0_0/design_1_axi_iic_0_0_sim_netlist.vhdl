-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sat Dec 10 20:29:42 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_axi_iic_0_0/design_1_axi_iic_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_iic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_SRL_FIFO is
  port (
    Rc_Data_Exists : out STD_LOGIC;
    Rc_addr : out STD_LOGIC_VECTOR ( 0 to 3 );
    Rc_fifo_data : out STD_LOGIC_VECTOR ( 0 to 7 );
    msms_set_i_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \Addr_Counters[1].FDRE_I_0\ : out STD_LOGIC;
    Bus2IIC_Reset : in STD_LOGIC;
    D_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \FIFO_RAM[0].SRL16E_I_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Msms_set : in STD_LOGIC;
    \Addr_Counters[0].MUXCY_L_I_0\ : in STD_LOGIC;
    \Addr_Counters[0].MUXCY_L_I_1\ : in STD_LOGIC;
    Rc_fifo_rd : in STD_LOGIC;
    Rc_fifo_rd_d : in STD_LOGIC;
    Rc_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_wr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_SRL_FIFO : entity is "SRL_FIFO";
end design_1_axi_iic_0_0_SRL_FIFO;

architecture STRUCTURE of design_1_axi_iic_0_0_SRL_FIFO is
  signal \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1__1_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0\ : STD_LOGIC;
  signal \RD_FIFO_CNTRL.ro_prev_i_i_3_n_0\ : STD_LOGIC;
  signal \^rc_data_exists\ : STD_LOGIC;
  signal \^rc_addr\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of Data_Exists_DFF : label is "VCC:CE";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_2__1\ : label is "soft_lutpair30";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[7].SRL16E_I ";
  attribute SOFT_HLUTNM of \RD_FIFO_CNTRL.ro_prev_i_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sr_i[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sr_i[2]_i_1\ : label is "soft_lutpair30";
begin
  Rc_Data_Exists <= \^rc_data_exists\;
  Rc_addr(0 to 3) <= \^rc_addr\(0 to 3);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => sum_A_3,
      Q => \^rc_addr\(0),
      R => Bus2IIC_Reset
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => CI,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      DI(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 3),
      DI(2) => \^rc_addr\(2),
      DI(1) => \^rc_addr\(1),
      DI(0) => \^rc_addr\(0),
      O(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 4),
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 4),
      S(3) => \Addr_Counters[3].XORCY_I_i_1__1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\,
      I1 => Rc_fifo_rd,
      I2 => Rc_fifo_rd_d,
      I3 => \^rc_addr\(0),
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00000000"
    )
        port map (
      I0 => \^rc_addr\(1),
      I1 => \^rc_addr\(2),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(0),
      I4 => \Addr_Counters[0].MUXCY_L_I_0\,
      I5 => \Addr_Counters[0].MUXCY_L_I_1\,
      O => CI
    );
\Addr_Counters[0].MUXCY_L_I_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => Rc_fifo_wr_d,
      I1 => Rc_fifo_wr,
      I2 => \^rc_addr\(0),
      I3 => \^rc_addr\(3),
      I4 => \^rc_addr\(2),
      I5 => \^rc_addr\(1),
      O => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => sum_A_2,
      Q => \^rc_addr\(1),
      R => Bus2IIC_Reset
    );
\Addr_Counters[1].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\,
      I1 => Rc_fifo_rd,
      I2 => Rc_fifo_rd_d,
      I3 => \^rc_addr\(1),
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => sum_A_1,
      Q => \^rc_addr\(2),
      R => Bus2IIC_Reset
    );
\Addr_Counters[2].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\,
      I1 => Rc_fifo_rd,
      I2 => Rc_fifo_rd_d,
      I3 => \^rc_addr\(2),
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => sum_A_0,
      Q => \^rc_addr\(3),
      R => Bus2IIC_Reset
    );
\Addr_Counters[3].XORCY_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\,
      I1 => Rc_fifo_rd,
      I2 => Rc_fifo_rd_d,
      I3 => \^rc_addr\(3),
      O => \Addr_Counters[3].XORCY_I_i_1__1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D_0,
      Q => \^rc_data_exists\,
      R => Bus2IIC_Reset
    );
\Data_Exists_DFF_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^rc_addr\(1),
      I1 => \^rc_addr\(2),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(0),
      O => \Addr_Counters[1].FDRE_I_0\
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(7),
      Q => Rc_fifo_data(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(6),
      Q => Rc_fifo_data(1)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(5),
      Q => Rc_fifo_data(2)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(4),
      Q => Rc_fifo_data(3)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(3),
      Q => Rc_fifo_data(4)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(2),
      Q => Rc_fifo_data(5)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(1),
      Q => Rc_fifo_data(6)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \FIFO_RAM[0].SRL16E_I_0\(0),
      Q => Rc_fifo_data(7)
    );
\RD_FIFO_CNTRL.ro_prev_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000001"
    )
        port map (
      I0 => Bus2IIC_Reset,
      I1 => Msms_set,
      I2 => \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0\,
      I3 => \RD_FIFO_CNTRL.ro_prev_i_i_3_n_0\,
      I4 => Q(3),
      I5 => \^rc_addr\(3),
      O => msms_set_i_reg
    );
\RD_FIFO_CNTRL.ro_prev_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^rc_addr\(1),
      I1 => Q(1),
      I2 => \^rc_addr\(2),
      I3 => Q(2),
      O => \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0\
    );
\RD_FIFO_CNTRL.ro_prev_i_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \^rc_addr\(0),
      I1 => Q(0),
      I2 => \^rc_data_exists\,
      O => \RD_FIFO_CNTRL.ro_prev_i_i_3_n_0\
    );
\sr_i[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rc_data_exists\,
      O => D(1)
    );
\sr_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^rc_addr\(1),
      I1 => \^rc_addr\(2),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_SRL_FIFO_0 is
  port (
    Tx_data_exists_sgl : out STD_LOGIC;
    Tx_addr_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Tx_fifo_data_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \Addr_Counters[1].FDRE_I_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FIFO_RAM[0].SRL16E_I_0\ : out STD_LOGIC;
    rdCntrFrmTxFifo0 : out STD_LOGIC;
    Data_Exists_DFF_0 : out STD_LOGIC;
    \Addr_Counters[3].FDRE_I_0\ : out STD_LOGIC;
    \FIFO_RAM[7].SRL16E_I_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_rst : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \Addr_Counters[0].MUXCY_L_I_0\ : in STD_LOGIC;
    \Addr_Counters[0].MUXCY_L_I_1\ : in STD_LOGIC;
    Tx_fifo_wr : in STD_LOGIC;
    Tx_fifo_wr_d : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_fifo_rd : in STD_LOGIC;
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 1 );
    callingReadAccess : in STD_LOGIC;
    earlyAckHdr : in STD_LOGIC;
    shift_reg_ld : in STD_LOGIC;
    \data_int_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_SRL_FIFO_0 : entity is "SRL_FIFO";
end design_1_axi_iic_0_0_SRL_FIFO_0;

architecture STRUCTURE of design_1_axi_iic_0_0_SRL_FIFO_0 is
  signal \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1__0_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal \^data_exists_dff_0\ : STD_LOGIC;
  signal \Data_Exists_DFF_i_2__0_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal \^tx_addr_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_data_exists_sgl\ : STD_LOGIC;
  signal \^tx_fifo_data_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of Data_Exists_DFF : label is "VCC:CE";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_2__0\ : label is "soft_lutpair37";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[7].SRL16E_I ";
  attribute SOFT_HLUTNM of \cr_i[5]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sr_i[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sr_i[3]_i_1\ : label is "soft_lutpair37";
begin
  Data_Exists_DFF_0 <= \^data_exists_dff_0\;
  Tx_addr_0(3 downto 0) <= \^tx_addr_0\(3 downto 0);
  Tx_data_exists_sgl <= \^tx_data_exists_sgl\;
  Tx_fifo_data_0(7 downto 0) <= \^tx_fifo_data_0\(7 downto 0);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists_sgl\,
      D => sum_A_3,
      Q => \^tx_addr_0\(3),
      R => Tx_fifo_rst
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => CI,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      DI(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 3),
      DI(2) => \^tx_addr_0\(1),
      DI(1) => \^tx_addr_0\(2),
      DI(0) => \^tx_addr_0\(3),
      O(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 4),
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 4),
      S(3) => \Addr_Counters[3].XORCY_I_i_1__0_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20228A88"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\,
      I1 => rdCntrFrmTxFifo,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => \^tx_addr_0\(3),
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_0\,
      I1 => \Addr_Counters[0].MUXCY_L_I_1\,
      I2 => \^tx_addr_0\(2),
      I3 => \^tx_addr_0\(0),
      I4 => \^tx_addr_0\(3),
      I5 => \^tx_addr_0\(1),
      O => CI
    );
\Addr_Counters[0].MUXCY_L_I_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFEFFFE"
    )
        port map (
      I0 => \^tx_addr_0\(1),
      I1 => \^tx_addr_0\(3),
      I2 => \^tx_addr_0\(0),
      I3 => \^tx_addr_0\(2),
      I4 => Tx_fifo_wr_d,
      I5 => Tx_fifo_wr,
      O => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists_sgl\,
      D => sum_A_2,
      Q => \^tx_addr_0\(2),
      R => Tx_fifo_rst
    );
\Addr_Counters[1].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20228A88"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\,
      I1 => rdCntrFrmTxFifo,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => \^tx_addr_0\(2),
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists_sgl\,
      D => sum_A_1,
      Q => \^tx_addr_0\(1),
      R => Tx_fifo_rst
    );
\Addr_Counters[2].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20228A88"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\,
      I1 => rdCntrFrmTxFifo,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => \^tx_addr_0\(1),
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists_sgl\,
      D => sum_A_0,
      Q => \^tx_addr_0\(0),
      R => Tx_fifo_rst
    );
\Addr_Counters[3].XORCY_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20228A88"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\,
      I1 => rdCntrFrmTxFifo,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => \^tx_addr_0\(0),
      O => \Addr_Counters[3].XORCY_I_i_1__0_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => \^tx_data_exists_sgl\,
      R => Tx_fifo_rst
    );
\Data_Exists_DFF_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF20202"
    )
        port map (
      I0 => Tx_fifo_wr,
      I1 => Tx_fifo_wr_d,
      I2 => \Data_Exists_DFF_i_2__0_n_0\,
      I3 => \Addr_Counters[0].MUXCY_L_I_1\,
      I4 => \^tx_data_exists_sgl\,
      O => D
    );
\Data_Exists_DFF_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^tx_addr_0\(2),
      I1 => \^tx_addr_0\(0),
      I2 => \^tx_addr_0\(3),
      I3 => \^tx_addr_0\(1),
      O => \Data_Exists_DFF_i_2__0_n_0\
    );
\FIFO_GEN_DTR.IIC2Bus_IntrEvent[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_addr_0\(0),
      O => \Addr_Counters[3].FDRE_I_0\
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(7),
      Q => \^tx_fifo_data_0\(7)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(6),
      Q => \^tx_fifo_data_0\(6)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(5),
      Q => \^tx_fifo_data_0\(5)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(4),
      Q => \^tx_fifo_data_0\(4)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(3),
      Q => \^tx_fifo_data_0\(3)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(2),
      Q => \^tx_fifo_data_0\(2)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(1),
      Q => \^tx_fifo_data_0\(1)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr_0\(3),
      A1 => \^tx_addr_0\(2),
      A2 => \^tx_addr_0\(1),
      A3 => \^tx_addr_0\(0),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(0),
      Q => \^tx_fifo_data_0\(0)
    );
\cr_i[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FFFFFF"
    )
        port map (
      I0 => \Data_Exists_DFF_i_2__0_n_0\,
      I1 => dynamic_MSMS(0),
      I2 => \^tx_fifo_data_0\(0),
      I3 => \^tx_data_exists_sgl\,
      I4 => dynamic_MSMS(1),
      O => \FIFO_RAM[0].SRL16E_I_0\
    );
\data_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_fifo_data_0\(0),
      I1 => shift_reg_ld,
      I2 => \data_int_reg[0]\,
      O => \FIFO_RAM[7].SRL16E_I_0\(0)
    );
rdCntrFrmTxFifo_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^data_exists_dff_0\,
      I1 => callingReadAccess,
      I2 => earlyAckHdr,
      O => rdCntrFrmTxFifo0
    );
\sr_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555555D5"
    )
        port map (
      I0 => \^tx_data_exists_sgl\,
      I1 => dynamic_MSMS(1),
      I2 => \^tx_fifo_data_0\(0),
      I3 => dynamic_MSMS(0),
      I4 => \Data_Exists_DFF_i_2__0_n_0\,
      O => \^data_exists_dff_0\
    );
\sr_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^tx_addr_0\(2),
      I1 => \^tx_addr_0\(0),
      I2 => \^tx_addr_0\(3),
      I3 => \^tx_addr_0\(1),
      O => \Addr_Counters[1].FDRE_I_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_iic_0_0_SRL_FIFO__parameterized0\ is
  port (
    Data_Exists_DFF_0 : out STD_LOGIC;
    dynamic_MSMS : out STD_LOGIC_VECTOR ( 0 to 1 );
    \FIFO_RAM[1].SRL16E_I_0\ : out STD_LOGIC;
    \Addr_Counters[1].FDRE_I_0\ : out STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    D : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ctrlFifoDin : in STD_LOGIC_VECTOR ( 0 to 1 );
    rdCntrFrmTxFifo : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_fifo_rd : in STD_LOGIC;
    \Addr_Counters[0].MUXCY_L_I_0\ : in STD_LOGIC;
    \Addr_Counters[0].MUXCY_L_I_1\ : in STD_LOGIC;
    \cr_i_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_iic_0_0_SRL_FIFO__parameterized0\ : entity is "SRL_FIFO";
end \design_1_axi_iic_0_0_SRL_FIFO__parameterized0\;

architecture STRUCTURE of \design_1_axi_iic_0_0_SRL_FIFO__parameterized0\ is
  signal \Addr_Counters[0].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[0].MUXCY_L_I_i_3_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal \^data_exists_dff_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal \^dynamic_msms\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_3\ : label is "soft_lutpair35";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of Data_Exists_DFF : label is "VCC:CE";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_3 : label is "soft_lutpair35";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[1].SRL16E_I ";
begin
  Data_Exists_DFF_0 <= \^data_exists_dff_0\;
  dynamic_MSMS(0 to 1) <= \^dynamic_msms\(0 to 1);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^data_exists_dff_0\,
      D => sum_A_3,
      Q => \Addr_Counters[0].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => CI,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      DI(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 3),
      DI(2) => \Addr_Counters[2].FDRE_I_n_0\,
      DI(1) => \Addr_Counters[1].FDRE_I_n_0\,
      DI(0) => \Addr_Counters[0].FDRE_I_n_0\,
      O(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 4),
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 4),
      S(3) => \Addr_Counters[3].XORCY_I_i_1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20228A88"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => rdCntrFrmTxFifo,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => \Addr_Counters[0].FDRE_I_n_0\,
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_0\,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      I4 => \Addr_Counters[0].FDRE_I_n_0\,
      I5 => \Addr_Counters[0].MUXCY_L_I_1\,
      O => CI
    );
\Addr_Counters[0].MUXCY_L_I_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_0\,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[3].FDRE_I_n_0\,
      I4 => \Addr_Counters[1].FDRE_I_n_0\,
      O => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^data_exists_dff_0\,
      D => sum_A_2,
      Q => \Addr_Counters[1].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20228A88"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => rdCntrFrmTxFifo,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => \Addr_Counters[1].FDRE_I_n_0\,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^data_exists_dff_0\,
      D => sum_A_1,
      Q => \Addr_Counters[2].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20228A88"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => rdCntrFrmTxFifo,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => \Addr_Counters[2].FDRE_I_n_0\,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^data_exists_dff_0\,
      D => sum_A_0,
      Q => \Addr_Counters[3].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20228A88"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => rdCntrFrmTxFifo,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => \Addr_Counters[3].FDRE_I_n_0\,
      O => \Addr_Counters[3].XORCY_I_i_1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => \^data_exists_dff_0\,
      R => Tx_fifo_rst
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[2].FDRE_I_n_0\,
      O => \Addr_Counters[1].FDRE_I_0\
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => ctrlFifoDin(0),
      Q => \^dynamic_msms\(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => ctrlFifoDin(1),
      Q => \^dynamic_msms\(1)
    );
\cr_i[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \^dynamic_msms\(1),
      I1 => \cr_i_reg[2]\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      O => \FIFO_RAM[1].SRL16E_I_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_address_decoder is
  port (
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    is_write_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    AXI_IP2Bus_Error : out STD_LOGIC;
    \s_axi_wdata[5]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Bus2IIC_WrCE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \bus2ip_addr_i_reg[5]\ : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[31]\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    AXI_IP2Bus_WrAck20 : out STD_LOGIC;
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    s_axi_awready_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \cr_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    firstDynStartSeen : in STD_LOGIC;
    \cr_i_reg[2]_0\ : in STD_LOGIC;
    \cr_i_reg[2]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in7_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_0\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[8]\ : in STD_LOGIC;
    cr_txModeSelect_set : in STD_LOGIC;
    cr_txModeSelect_clr : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_1\ : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_IP2Bus_WrAck2_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_address_decoder : entity is "address_decoder";
end design_1_axi_iic_0_0_address_decoder;

architecture STRUCTURE of design_1_axi_iic_0_0_address_decoder is
  signal AXI_Bus2IP_CS : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^bus2iic_wrce\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_10 : STD_LOGIC;
  signal ce_expnd_i_11 : STD_LOGIC;
  signal ce_expnd_i_12 : STD_LOGIC;
  signal ce_expnd_i_13 : STD_LOGIC;
  signal ce_expnd_i_14 : STD_LOGIC;
  signal ce_expnd_i_15 : STD_LOGIC;
  signal ce_expnd_i_16 : STD_LOGIC;
  signal ce_expnd_i_17 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_24 : STD_LOGIC;
  signal ce_expnd_i_26 : STD_LOGIC;
  signal ce_expnd_i_27 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_8 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \^is_read_reg\ : STD_LOGIC;
  signal \^is_write_reg\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal pselect_hit_i_0 : STD_LOGIC;
  signal pselect_hit_i_2 : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_5_n_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^sw_rst_cond\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXI_IP2Bus_RdAck2_i_1 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of AXI_IP2Bus_WrAck2_i_1 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FIFO_GEN_DTR.Tx_fifo_wr_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GPO_GEN.gpo_i[31]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[0].cs_out_i[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \adr_i[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cr_i[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[7]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of ipif_glbl_irpt_enable_reg_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[10]_i_7\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[10]_i_8\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[10]_i_9\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[2]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_5\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \timing_param_tbuf_i[10]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \timing_param_thddat_i[10]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \timing_param_thdsta_i[10]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \timing_param_thigh_i[10]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \timing_param_tlow_i[10]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \timing_param_tsudat_i[10]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \timing_param_tsusta_i[10]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \timing_param_tsusto_i[10]_i_1\ : label is "soft_lutpair50";
begin
  Bus2IIC_WrCE(11 downto 0) <= \^bus2iic_wrce\(11 downto 0);
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ <= \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\;
  is_read_reg <= \^is_read_reg\;
  is_write_reg <= \^is_write_reg\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  sw_rst_cond <= \^sw_rst_cond\;
AXI_IP2Bus_RdAck2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => AXI_Bus2IP_CS(1),
      I1 => AXI_Bus2IP_CS(2),
      I2 => AXI_Bus2IP_CS(0),
      I3 => AXI_IP2Bus_WrAck2_reg,
      O => AXI_IP2Bus_RdAck20
    );
AXI_IP2Bus_WrAck2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => AXI_Bus2IP_CS(1),
      I1 => AXI_Bus2IP_CS(2),
      I2 => AXI_Bus2IP_CS(0),
      I3 => AXI_IP2Bus_WrAck2_reg,
      O => AXI_IP2Bus_WrAck20
    );
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_IP2Bus_WrAck2_reg,
      I1 => Q,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\FIFO_GEN_DTR.Tx_fifo_wr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_15_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^bus2iic_wrce\(10)
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => pselect_hit_i_2,
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      O => ce_expnd_i_24
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_24,
      Q => p_24_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I1 => pselect_hit_i_0,
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      O => ce_expnd_i_17
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_17,
      Q => p_17_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I1 => pselect_hit_i_0,
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      O => ce_expnd_i_16
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_16,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      I4 => pselect_hit_i_0,
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      O => ce_expnd_i_15
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_15,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I1 => pselect_hit_i_0,
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      O => ce_expnd_i_14
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_14,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I1 => pselect_hit_i_0,
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      O => ce_expnd_i_13
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_13,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I1 => pselect_hit_i_0,
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      O => ce_expnd_i_12
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_12,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I1 => pselect_hit_i_0,
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      O => ce_expnd_i_11
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_11,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      I1 => pselect_hit_i_0,
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      O => ce_expnd_i_10
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_10,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I2 => pselect_hit_i_0,
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      O => ce_expnd_i_9
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_9,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I1 => pselect_hit_i_0,
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      O => ce_expnd_i_8
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_8,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I1 => pselect_hit_i_0,
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      O => ce_expnd_i_7
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_7,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I5 => pselect_hit_i_0,
      O => ce_expnd_i_6
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_6,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(8),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      O => ce_expnd_i_5
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_5,
      Q => p_5_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(8),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      O => ce_expnd_i_4
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_4,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I5 => pselect_hit_i_0,
      O => ce_expnd_i_3
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(8),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(8),
      I4 => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2_n_0\,
      O => ce_expnd_i_1
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      O => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => p_1_in_0,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^is_write_reg\,
      I1 => s_axi_aresetn,
      I2 => \^is_read_reg\,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I1 => pselect_hit_i_0,
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q,
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(8),
      O => pselect_hit_i_0
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => pselect_hit_i_2,
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(2),
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      O => ce_expnd_i_27
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_27,
      Q => p_27_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I2 => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2_n_0\,
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(8),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(7),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      O => ce_expnd_i_26
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_26,
      Q => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      R => cs_ce_clr
    );
\GPO_GEN.gpo_i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_8_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => gpo(0),
      O => s_axi_wdata_0_sn_1
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(7),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(8),
      I2 => Q,
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      O => pselect_hit_i_2
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => pselect_hit_i_2,
      Q => AXI_Bus2IP_CS(2),
      R => cs_ce_clr
    );
\MEM_DECODE_GEN[1].cs_out_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I2 => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2_n_0\,
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(8),
      I4 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(7),
      I5 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      O => \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\
    );
\MEM_DECODE_GEN[1].cs_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\,
      Q => AXI_Bus2IP_CS(1),
      R => cs_ce_clr
    );
\MEM_DECODE_GEN[2].cs_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(8),
      Q => AXI_Bus2IP_CS(0),
      R => cs_ce_clr
    );
\RD_FIFO_CNTRL.Rc_fifo_rd_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_14_in,
      O => Bus2IIC_RdCE(0)
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_9_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^bus2iic_wrce\(8)
    );
\adr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_13_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^bus2iic_wrce\(9)
    );
\cr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_17_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^bus2iic_wrce\(11)
    );
\cr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8B8B8888BB88"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \^bus2iic_wrce\(11),
      I2 => \cr_i_reg[2]\(0),
      I3 => firstDynStartSeen,
      I4 => \cr_i_reg[2]_0\,
      I5 => \cr_i_reg[2]_1\(1),
      O => \s_axi_wdata[5]\(1)
    );
\cr_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080808FBFBFB08"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => p_17_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \cr_i_reg[2]_1\(0),
      I4 => cr_txModeSelect_set,
      I5 => cr_txModeSelect_clr,
      O => \s_axi_wdata[5]\(0)
    );
\ip_irpt_enable_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_24_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => E(0)
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => p_27_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_0_in(0),
      O => \s_axi_wdata[31]\
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => p_24_in,
      I1 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_27_in,
      O => irpt_wrack
    );
reset_trig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sw_rst_cond\,
      I1 => sw_rst_cond_d1,
      O => reset_trig0
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => s_axi_wready_INST_0_i_1_n_0,
      I1 => s_axi_arready,
      I2 => AXI_IP2Bus_RdAck1,
      I3 => AXI_IP2Bus_RdAck2,
      O => \^is_read_reg\
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8088"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => \s_axi_rdata_i_reg[0]_0\,
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I4 => \s_axi_rdata_i[0]_i_4_n_0\,
      O => D(0)
    );
\s_axi_rdata_i[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C808080"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[0]_1\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I3 => \s_axi_rdata_i_reg[7]\(0),
      I4 => p_24_in,
      O => \s_axi_rdata_i[0]_i_4_n_0\
    );
\s_axi_rdata_i[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_7_in,
      I1 => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\,
      I2 => p_6_in,
      I3 => p_11_in,
      I4 => p_4_in,
      I5 => p_17_in,
      O => \s_axi_rdata_i[10]_i_10_n_0\
    );
\s_axi_rdata_i[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDDDBFFFFFFFF"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(5),
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6),
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(4),
      I4 => \s_axi_rdata_i_reg[8]\,
      I5 => \s_axi_rdata_i[10]_i_6_n_0\,
      O => \bus2ip_addr_i_reg[5]\
    );
\s_axi_rdata_i[10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \s_axi_rdata_i[10]_i_7_n_0\,
      I2 => \s_axi_rdata_i[10]_i_8_n_0\,
      I3 => \s_axi_rdata_i[10]_i_9_n_0\,
      I4 => \s_axi_rdata_i[10]_i_10_n_0\,
      O => \s_axi_rdata_i[10]_i_6_n_0\
    );
\s_axi_rdata_i[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_15_in,
      I1 => p_5_in,
      I2 => p_14_in,
      I3 => p_3_in,
      O => \s_axi_rdata_i[10]_i_7_n_0\
    );
\s_axi_rdata_i[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_10_in,
      I1 => p_8_in,
      I2 => p_9_in,
      I3 => p_2_in,
      O => \s_axi_rdata_i[10]_i_8_n_0\
    );
\s_axi_rdata_i[10]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_13_in,
      I1 => p_1_in_0,
      I2 => p_16_in,
      I3 => p_12_in,
      O => \s_axi_rdata_i[10]_i_9_n_0\
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8088"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[1]\,
      I2 => \s_axi_rdata_i_reg[1]_0\,
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I4 => \s_axi_rdata_i[1]_i_4_n_0\,
      O => D(1)
    );
\s_axi_rdata_i[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C808080"
    )
        port map (
      I0 => p_1_in16_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I3 => \s_axi_rdata_i_reg[7]\(1),
      I4 => p_24_in,
      O => \s_axi_rdata_i[1]_i_4_n_0\
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8088"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[2]\,
      I2 => \s_axi_rdata_i_reg[2]_0\,
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I4 => \s_axi_rdata_i[2]_i_4_n_0\,
      O => D(2)
    );
\s_axi_rdata_i[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C808080"
    )
        port map (
      I0 => p_1_in13_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I3 => \s_axi_rdata_i_reg[7]\(2),
      I4 => p_24_in,
      O => \s_axi_rdata_i[2]_i_4_n_0\
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => p_27_in,
      I1 => p_0_in(0),
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_24_in,
      I4 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      O => D(8)
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8088"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[3]\,
      I2 => \s_axi_rdata_i_reg[3]_0\,
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(3),
      I4 => \s_axi_rdata_i[3]_i_4_n_0\,
      O => D(3)
    );
\s_axi_rdata_i[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C808080"
    )
        port map (
      I0 => p_1_in10_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I3 => \s_axi_rdata_i_reg[7]\(3),
      I4 => p_24_in,
      O => \s_axi_rdata_i[3]_i_4_n_0\
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[4]\,
      I1 => \s_axi_rdata_i[7]_i_3_n_0\,
      I2 => \s_axi_rdata_i[7]_i_4_n_0\,
      I3 => \s_axi_rdata_i_reg[7]\(4),
      I4 => \s_axi_rdata_i[7]_i_5_n_0\,
      I5 => p_1_in7_in,
      O => D(4)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\,
      I1 => \s_axi_rdata_i[7]_i_3_n_0\,
      I2 => \s_axi_rdata_i[7]_i_4_n_0\,
      I3 => \s_axi_rdata_i_reg[7]\(5),
      I4 => \s_axi_rdata_i[7]_i_5_n_0\,
      I5 => p_1_in4_in,
      O => D(5)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[6]\,
      I1 => \s_axi_rdata_i[7]_i_3_n_0\,
      I2 => \s_axi_rdata_i[7]_i_4_n_0\,
      I3 => \s_axi_rdata_i_reg[7]\(6),
      I4 => \s_axi_rdata_i[7]_i_5_n_0\,
      I5 => p_1_in1_in,
      O => D(6)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[7]_0\,
      I1 => \s_axi_rdata_i[7]_i_3_n_0\,
      I2 => \s_axi_rdata_i[7]_i_4_n_0\,
      I3 => \s_axi_rdata_i_reg[7]\(7),
      I4 => \s_axi_rdata_i[7]_i_5_n_0\,
      I5 => p_1_in,
      O => D(7)
    );
\s_axi_rdata_i[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \s_axi_rdata_i[10]_i_6_n_0\,
      I1 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(7),
      I2 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(1),
      I3 => \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(0),
      O => \s_axi_rdata_i[7]_i_3_n_0\
    );
\s_axi_rdata_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_24_in,
      O => \s_axi_rdata_i[7]_i_4_n_0\
    );
\s_axi_rdata_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      O => \s_axi_rdata_i[7]_i_5_n_0\
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444404444444444"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => AXI_Bus2IP_CS(1),
      I2 => s_axi_wdata(0),
      I3 => s_axi_wdata(1),
      I4 => s_axi_wdata(2),
      I5 => s_axi_wdata(3),
      O => AXI_IP2Bus_Error
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => s_axi_wready_INST_0_i_1_n_0,
      I1 => s_axi_awready,
      I2 => AXI_IP2Bus_WrAck1,
      I3 => AXI_IP2Bus_WrAck2,
      O => \^is_write_reg\
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_axi_awready_0(1),
      I1 => s_axi_awready_0(0),
      I2 => s_axi_awready_0(3),
      I3 => s_axi_awready_0(2),
      O => s_axi_wready_INST_0_i_1_n_0
    );
sw_rst_cond_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => AXI_Bus2IP_CS(1),
      I2 => s_axi_wdata(0),
      I3 => s_axi_wdata(1),
      I4 => s_axi_wdata(2),
      I5 => s_axi_wdata(3),
      O => \^sw_rst_cond\
    );
\timing_param_tbuf_i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^bus2iic_wrce\(3)
    );
\timing_param_thddat_i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^bus2iic_wrce\(0)
    );
\timing_param_thdsta_i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_5_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^bus2iic_wrce\(5)
    );
\timing_param_thigh_i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^bus2iic_wrce\(2)
    );
\timing_param_tlow_i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^bus2iic_wrce\(1)
    );
\timing_param_tsudat_i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_4_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^bus2iic_wrce\(4)
    );
\timing_param_tsusta_i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_7_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^bus2iic_wrce\(7)
    );
\timing_param_tsusto_i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_6_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^bus2iic_wrce\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_cdc_sync is
  port (
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_cdc_sync : entity is "cdc_sync";
end design_1_axi_iic_0_0_cdc_sync;

architecture STRUCTURE of design_1_axi_iic_0_0_cdc_sync is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  signal Q : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_i,
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_cdc_sync_4 is
  port (
    scl_rising_edge0 : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    scl_rin_d1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_cdc_sync_4 : entity is "cdc_sync";
end design_1_axi_iic_0_0_cdc_sync_4;

architecture STRUCTURE of design_1_axi_iic_0_0_cdc_sync_4 is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  signal Q_0 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[7]_i_1\ : label is "soft_lutpair1";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of scl_rising_edge_i_1 : label is "soft_lutpair1";
begin
  scndry_out <= \^scndry_out\;
\FSM_onehot_scl_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => Q(0),
      O => D(0)
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_i,
      Q => Q_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q_0,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \^scndry_out\,
      R => '0'
    );
scl_rising_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => scl_rin_d1,
      O => scl_rising_edge0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_dynamic_master is
  port (
    callingReadAccess : out STD_LOGIC;
    rdCntrFrmTxFifo : out STD_LOGIC;
    rxCntDone : out STD_LOGIC;
    cr_txModeSelect_set : out STD_LOGIC;
    cr_txModeSelect_clr : out STD_LOGIC;
    firstDynStartSeen : out STD_LOGIC;
    rdCntrFrmTxFifo_reg_0 : out STD_LOGIC;
    \cr_i_reg[3]\ : out STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    ackDataState : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rdCntrFrmTxFifo0 : in STD_LOGIC;
    earlyAckDataState : in STD_LOGIC;
    Cr_txModeSelect_set_reg_0 : in STD_LOGIC;
    firstDynStartSeen_reg_0 : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_fifo_rd : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_dynamic_master : entity is "dynamic_master";
end design_1_axi_iic_0_0_dynamic_master;

architecture STRUCTURE of design_1_axi_iic_0_0_dynamic_master is
  signal Cr_txModeSelect_set_i_2_n_0 : STD_LOGIC;
  signal ackDataState_d1 : STD_LOGIC;
  signal \^callingreadaccess\ : STD_LOGIC;
  signal earlyAckDataState_d1 : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdByteCntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdByteCntr[2]_i_2_n_0\ : STD_LOGIC;
  signal rdByteCntr_reg : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^rdcntrfrmtxfifo\ : STD_LOGIC;
  signal rxCntDone0 : STD_LOGIC;
  signal rxCntDone_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rdByteCntr[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdByteCntr[7]_i_1\ : label is "soft_lutpair0";
begin
  callingReadAccess <= \^callingreadaccess\;
  rdCntrFrmTxFifo <= \^rdcntrfrmtxfifo\;
Cr_txModeSelect_clr_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^callingreadaccess\,
      Q => cr_txModeSelect_clr,
      R => Cr_txModeSelect_set_reg_0
    );
Cr_txModeSelect_set_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^callingreadaccess\,
      O => Cr_txModeSelect_set_i_2_n_0
    );
Cr_txModeSelect_set_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Cr_txModeSelect_set_i_2_n_0,
      Q => cr_txModeSelect_set,
      R => Cr_txModeSelect_set_reg_0
    );
\Data_Exists_DFF_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \^rdcntrfrmtxfifo\,
      I1 => Tx_fifo_rd_d,
      I2 => Tx_fifo_rd,
      O => rdCntrFrmTxFifo_reg_0
    );
\LEVEL_1_GEN.master_sda_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEAAAAAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => \^callingreadaccess\,
      I2 => rdByteCntr_reg(1),
      I3 => rxCntDone_i_2_n_0,
      I4 => rdByteCntr_reg(0),
      I5 => earlyAckDataState,
      O => \cr_i_reg[3]\
    );
ackDataState_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ackDataState,
      Q => ackDataState_d1,
      R => Tx_fifo_rst
    );
callingReadAccess_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_3_in,
      D => Tx_fifo_data_0(0),
      Q => \^callingreadaccess\,
      R => Tx_fifo_rst
    );
earlyAckDataState_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => earlyAckDataState,
      Q => earlyAckDataState_d1,
      R => Tx_fifo_rst
    );
firstDynStartSeen_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => firstDynStartSeen_reg_0,
      Q => firstDynStartSeen,
      R => '0'
    );
\rdByteCntr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABABABABAAA"
    )
        port map (
      I0 => \^rdcntrfrmtxfifo\,
      I1 => earlyAckDataState_d1,
      I2 => earlyAckDataState,
      I3 => rdByteCntr_reg(0),
      I4 => rxCntDone_i_2_n_0,
      I5 => rdByteCntr_reg(1),
      O => \rdByteCntr[0]_i_1_n_0\
    );
\rdByteCntr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => Tx_fifo_data_0(7),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => rdByteCntr_reg(0),
      I3 => rxCntDone_i_2_n_0,
      I4 => rdByteCntr_reg(1),
      O => \p_0_in__1\(7)
    );
\rdByteCntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Tx_fifo_data_0(6),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => rxCntDone_i_2_n_0,
      I3 => rdByteCntr_reg(1),
      O => \p_0_in__1\(6)
    );
\rdByteCntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => Tx_fifo_data_0(5),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => rdByteCntr_reg(3),
      I3 => \rdByteCntr[2]_i_2_n_0\,
      I4 => rdByteCntr_reg(2),
      O => \p_0_in__1\(5)
    );
\rdByteCntr[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rdByteCntr_reg(4),
      I1 => rdByteCntr_reg(7),
      I2 => rdByteCntr_reg(6),
      I3 => rdByteCntr_reg(5),
      O => \rdByteCntr[2]_i_2_n_0\
    );
\rdByteCntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Tx_fifo_data_0(4),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => rdByteCntr_reg(3),
      I3 => \rdByteCntr[2]_i_2_n_0\,
      O => \p_0_in__1\(4)
    );
\rdByteCntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => Tx_fifo_data_0(3),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => rdByteCntr_reg(5),
      I3 => rdByteCntr_reg(6),
      I4 => rdByteCntr_reg(7),
      I5 => rdByteCntr_reg(4),
      O => \p_0_in__1\(3)
    );
\rdByteCntr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => Tx_fifo_data_0(2),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => rdByteCntr_reg(7),
      I3 => rdByteCntr_reg(6),
      I4 => rdByteCntr_reg(5),
      O => \p_0_in__1\(2)
    );
\rdByteCntr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Tx_fifo_data_0(1),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => rdByteCntr_reg(7),
      I3 => rdByteCntr_reg(6),
      O => \p_0_in__1\(1)
    );
\rdByteCntr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Tx_fifo_data_0(0),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => rdByteCntr_reg(7),
      O => \p_0_in__1\(0)
    );
\rdByteCntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(7),
      Q => rdByteCntr_reg(0),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(6),
      Q => rdByteCntr_reg(1),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(5),
      Q => rdByteCntr_reg(2),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(4),
      Q => rdByteCntr_reg(3),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(3),
      Q => rdByteCntr_reg(4),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(2),
      Q => rdByteCntr_reg(5),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(1),
      Q => rdByteCntr_reg(6),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__1\(0),
      Q => rdByteCntr_reg(7),
      R => Tx_fifo_rst
    );
rdCntrFrmTxFifo_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdCntrFrmTxFifo0,
      Q => \^rdcntrfrmtxfifo\,
      R => Tx_fifo_rst
    );
rxCntDone_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => rdByteCntr_reg(0),
      I1 => rxCntDone_i_2_n_0,
      I2 => rdByteCntr_reg(1),
      I3 => \^callingreadaccess\,
      I4 => ackDataState,
      I5 => ackDataState_d1,
      O => rxCntDone0
    );
rxCntDone_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rdByteCntr_reg(2),
      I1 => rdByteCntr_reg(4),
      I2 => rdByteCntr_reg(7),
      I3 => rdByteCntr_reg(6),
      I4 => rdByteCntr_reg(5),
      I5 => rdByteCntr_reg(3),
      O => rxCntDone_i_2_n_0
    );
rxCntDone_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rxCntDone0,
      Q => rxCntDone,
      R => Tx_fifo_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_interrupt_control is
  port (
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC;
    p_1_in16_in : out STD_LOGIC;
    p_1_in13_in : out STD_LOGIC;
    p_1_in10_in : out STD_LOGIC;
    p_1_in7_in : out STD_LOGIC;
    p_1_in4_in : out STD_LOGIC;
    p_1_in1_in : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    iic2intc_irpt : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg_0 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_26_in : in STD_LOGIC;
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_interrupt_control : entity is "interrupt_control";
end design_1_axi_iic_0_0_interrupt_control;

architecture STRUCTURE of design_1_axi_iic_0_0_interrupt_control is
  signal \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal iic2intc_irpt_INST_0_i_1_n_0 : STD_LOGIC;
  signal iic2intc_irpt_INST_0_i_2_n_0 : STD_LOGIC;
  signal iic2intc_irpt_INST_0_i_3_n_0 : STD_LOGIC;
  signal iic2intc_irpt_INST_0_i_4_n_0 : STD_LOGIC;
  signal irpt_wrack_d1 : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^p_1_in\ : STD_LOGIC;
  signal \^p_1_in10_in\ : STD_LOGIC;
  signal \^p_1_in13_in\ : STD_LOGIC;
  signal \^p_1_in16_in\ : STD_LOGIC;
  signal \^p_1_in1_in\ : STD_LOGIC;
  signal \^p_1_in4_in\ : STD_LOGIC;
  signal \^p_1_in7_in\ : STD_LOGIC;
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\;
  Q(7 downto 0) <= \^q\(7 downto 0);
  p_0_in(0) <= \^p_0_in\(0);
  p_1_in <= \^p_1_in\;
  p_1_in10_in <= \^p_1_in10_in\;
  p_1_in13_in <= \^p_1_in13_in\;
  p_1_in16_in <= \^p_1_in16_in\;
  p_1_in1_in <= \^p_1_in1_in\;
  p_1_in4_in <= \^p_1_in4_in\;
  p_1_in7_in <= \^p_1_in7_in\;
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFF10FF00"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg,
      I2 => p_26_in,
      I3 => IIC2Bus_IntrEvent(0),
      I4 => s_axi_wdata(0),
      I5 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFF10FF00"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg,
      I2 => p_26_in,
      I3 => IIC2Bus_IntrEvent(1),
      I4 => s_axi_wdata(1),
      I5 => \^p_1_in16_in\,
      O => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\,
      Q => \^p_1_in16_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFF10FF00"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg,
      I2 => p_26_in,
      I3 => IIC2Bus_IntrEvent(2),
      I4 => s_axi_wdata(2),
      I5 => \^p_1_in13_in\,
      O => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\,
      Q => \^p_1_in13_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFF10FF00"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg,
      I2 => p_26_in,
      I3 => IIC2Bus_IntrEvent(3),
      I4 => s_axi_wdata(3),
      I5 => \^p_1_in10_in\,
      O => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\,
      Q => \^p_1_in10_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFF10FF00"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg,
      I2 => p_26_in,
      I3 => IIC2Bus_IntrEvent(4),
      I4 => s_axi_wdata(4),
      I5 => \^p_1_in7_in\,
      O => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\,
      Q => \^p_1_in7_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFF10FF00"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg,
      I2 => p_26_in,
      I3 => IIC2Bus_IntrEvent(5),
      I4 => s_axi_wdata(5),
      I5 => \^p_1_in4_in\,
      O => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0\,
      Q => \^p_1_in4_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFF10FF00"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg,
      I2 => p_26_in,
      I3 => IIC2Bus_IntrEvent(6),
      I4 => s_axi_wdata(6),
      I5 => \^p_1_in1_in\,
      O => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\,
      Q => \^p_1_in1_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFF10FF00"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Bus_RNW_reg,
      I2 => p_26_in,
      I3 => IIC2Bus_IntrEvent(7),
      I4 => s_axi_wdata(7),
      I5 => \^p_1_in\,
      O => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0\,
      Q => \^p_1_in\,
      R => SR(0)
    );
iic2intc_irpt_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => iic2intc_irpt_INST_0_i_1_n_0,
      I2 => iic2intc_irpt_INST_0_i_2_n_0,
      I3 => iic2intc_irpt_INST_0_i_3_n_0,
      I4 => iic2intc_irpt_INST_0_i_4_n_0,
      O => iic2intc_irpt
    );
iic2intc_irpt_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^p_1_in4_in\,
      I2 => \^q\(7),
      I3 => \^p_1_in\,
      O => iic2intc_irpt_INST_0_i_1_n_0
    );
iic2intc_irpt_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^p_1_in13_in\,
      I2 => \^q\(3),
      I3 => \^p_1_in10_in\,
      O => iic2intc_irpt_INST_0_i_2_n_0
    );
iic2intc_irpt_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^p_1_in1_in\,
      I2 => \^q\(4),
      I3 => \^p_1_in7_in\,
      O => iic2intc_irpt_INST_0_i_3_n_0
    );
iic2intc_irpt_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^p_1_in16_in\,
      I2 => \^q\(0),
      I3 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      O => iic2intc_irpt_INST_0_i_4_n_0
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \^q\(5),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \^q\(6),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \^q\(7),
      R => SR(0)
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ipif_glbl_irpt_enable_reg_reg_0,
      Q => \^p_0_in\(0),
      R => SR(0)
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_reg_interface is
  port (
    IIC2Bus_IntrEvent : out STD_LOGIC_VECTOR ( 0 to 7 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Tx_fifo_wr : out STD_LOGIC;
    Tx_fifo_rd : out STD_LOGIC;
    Tx_fifo_rst : out STD_LOGIC;
    new_rcv_dta_d1 : out STD_LOGIC;
    Rc_fifo_wr : out STD_LOGIC;
    Rc_fifo_rd : out STD_LOGIC;
    \sr_i_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    Msms_set : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_scl_state_reg[1]\ : out STD_LOGIC;
    \q_int_reg[0]\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : out STD_LOGIC;
    D_0 : out STD_LOGIC;
    Tx_fifo_wr_d_reg : out STD_LOGIC;
    \FSM_onehot_scl_state_reg[5]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \timing_param_thdsta_i_reg[10]_0\ : out STD_LOGIC;
    \FSM_onehot_scl_state_reg[4]\ : out STD_LOGIC;
    \timing_param_tlow_i_reg[10]_0\ : out STD_LOGIC;
    \cr_i_reg[7]_0\ : out STD_LOGIC;
    abgc_i_reg : out STD_LOGIC;
    \adr_i_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \timing_param_tsudat_i_reg[6]_0\ : out STD_LOGIC;
    \timing_param_tsudat_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_int_reg[1]\ : out STD_LOGIC;
    firstDynStartSeen_reg : out STD_LOGIC;
    p_3_in : out STD_LOGIC;
    \FIFO_GEN_DTR.Tx_fifo_rd_reg_0\ : out STD_LOGIC;
    \FIFO_GEN_DTR.Tx_fifo_rst_reg_0\ : out STD_LOGIC;
    \cr_i_reg[2]_0\ : out STD_LOGIC;
    \timing_param_tsusto_i_reg[0]_0\ : out STD_LOGIC;
    \timing_param_tsusta_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \timing_param_tsusto_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \timing_param_thigh_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tbuf_i_reg[10]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \GPO_GEN.gpo_i_reg[31]_0\ : out STD_LOGIC;
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5]_0\ : out STD_LOGIC;
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \timing_param_tlow_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_1\ : out STD_LOGIC;
    \timing_param_tsudat_i_reg[4]_0\ : out STD_LOGIC;
    \timing_param_tsudat_i_reg[5]_0\ : out STD_LOGIC;
    \timing_param_tsudat_i_reg[6]_1\ : out STD_LOGIC;
    \timing_param_tsudat_i_reg[7]_0\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \timing_param_thdsta_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \sr_i_reg[4]_0\ : out STD_LOGIC;
    \sr_i_reg[5]_0\ : out STD_LOGIC;
    \adr_i_reg[6]_0\ : out STD_LOGIC;
    \IIC2Bus_IntrEvent_reg[5]_0\ : out STD_LOGIC;
    \FIFO_GEN_DTR.Tx_fifo_wr_reg_0\ : out STD_LOGIC;
    D_1 : out STD_LOGIC;
    \RD_FIFO_CNTRL.Rc_fifo_wr_reg_0\ : out STD_LOGIC;
    \RD_FIFO_CNTRL.Rc_fifo_rd_reg_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_Reset : in STD_LOGIC;
    \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Bus2IIC_WrCE : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rdy_new_xmt_i : in STD_LOGIC;
    New_rcv_dta : in STD_LOGIC;
    Rc_fifo_wr0 : in STD_LOGIC;
    Bus2IIC_RdCE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sr_i_reg[0]_1\ : in STD_LOGIC;
    Aas : in STD_LOGIC;
    \GPO_GEN.gpo_i_reg[31]_1\ : in STD_LOGIC;
    \RD_FIFO_CNTRL.ro_prev_i_reg_0\ : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[5]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    scndry_out : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[0]\ : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    Data_Exists_DFF : in STD_LOGIC;
    Data_Exists_DFF_0 : in STD_LOGIC;
    Tx_fifo_wr_d : in STD_LOGIC;
    stop_scl_reg : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[4]_0\ : in STD_LOGIC;
    \FSM_onehot_scl_state[4]_i_3_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \sr_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    sda_setup_reg : in STD_LOGIC_VECTOR ( 10 downto 0 );
    firstDynStartSeen : in STD_LOGIC;
    firstDynStartSeen_reg_0 : in STD_LOGIC;
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 0 );
    earlyAckHdr : in STD_LOGIC;
    \FSM_onehot_scl_state[9]_i_4_0\ : in STD_LOGIC;
    \s_axi_rdata_i[1]_i_5\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_axi_rdata_i_reg[8]\ : in STD_LOGIC;
    Rc_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_rd_d : in STD_LOGIC;
    Data_Exists_DFF_1 : in STD_LOGIC;
    Rc_Data_Exists : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \cr_i_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \IIC2Bus_IntrEvent_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_reg_interface : entity is "reg_interface";
end design_1_axi_iic_0_0_reg_interface;

architecture STRUCTURE of design_1_axi_iic_0_0_reg_interface is
  signal Cr : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_scl_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[4]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[5]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[6]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[6]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[6]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_9_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_scl_state_reg[4]\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_s_level_out_d4\ : STD_LOGIC;
  signal \^iic2bus_intrevent\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^msms_set\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rc_fifo_rd\ : STD_LOGIC;
  signal \^rc_fifo_wr\ : STD_LOGIC;
  signal \^tx_fifo_rd\ : STD_LOGIC;
  signal \^tx_fifo_rst\ : STD_LOGIC;
  signal \^tx_fifo_wr\ : STD_LOGIC;
  signal \^tx_fifo_wr_d_reg\ : STD_LOGIC;
  signal \^adr_i_reg[0]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^gpo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal msms_d1 : STD_LOGIC;
  signal msms_set_i_i_1_n_0 : STD_LOGIC;
  signal \^q_int_reg[0]\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_3_n_0\ : STD_LOGIC;
  signal sda_cout_reg_i_10_n_0 : STD_LOGIC;
  signal sda_cout_reg_i_6_n_0 : STD_LOGIC;
  signal sda_cout_reg_i_7_n_0 : STD_LOGIC;
  signal sda_cout_reg_i_8_n_0 : STD_LOGIC;
  signal sda_cout_reg_i_9_n_0 : STD_LOGIC;
  signal sda_setup_i_4_n_0 : STD_LOGIC;
  signal sda_setup_i_5_n_0 : STD_LOGIC;
  signal sr_i : STD_LOGIC_VECTOR ( 1 to 7 );
  signal \^sr_i_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^timing_param_tbuf_i_reg[10]_0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal timing_param_thddat_i : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal timing_param_thdsta_i : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \^timing_param_thdsta_i_reg[10]_0\ : STD_LOGIC;
  signal \^timing_param_thdsta_i_reg[7]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal timing_param_thigh_i : STD_LOGIC_VECTOR ( 10 downto 9 );
  signal \^timing_param_thigh_i_reg[8]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_tlow_i : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \^timing_param_tlow_i_reg[10]_0\ : STD_LOGIC;
  signal \^timing_param_tlow_i_reg[7]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal timing_param_tsudat_i : STD_LOGIC_VECTOR ( 10 downto 4 );
  signal \^timing_param_tsudat_i_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal timing_param_tsusta_i : STD_LOGIC_VECTOR ( 10 downto 8 );
  signal \^timing_param_tsusta_i_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_tsusto_i : STD_LOGIC_VECTOR ( 10 downto 8 );
  signal \^timing_param_tsusto_i_reg[0]_0\ : STD_LOGIC;
  signal \^timing_param_tsusto_i_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of Cr_txModeSelect_set_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_2 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of callingReadAccess_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cr_i[5]_i_4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of firstDynStartSeen_i_1 : label is "soft_lutpair33";
begin
  D(0) <= \^d\(0);
  \FSM_onehot_scl_state_reg[4]\ <= \^fsm_onehot_scl_state_reg[4]\;
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_s_level_out_d4\;
  IIC2Bus_IntrEvent(0 to 7) <= \^iic2bus_intrevent\(0 to 7);
  Msms_set <= \^msms_set\;
  Q(6 downto 0) <= \^q\(6 downto 0);
  \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_0\(3 downto 0) <= \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(3 downto 0);
  Rc_fifo_rd <= \^rc_fifo_rd\;
  Rc_fifo_wr <= \^rc_fifo_wr\;
  Tx_fifo_rd <= \^tx_fifo_rd\;
  Tx_fifo_rst <= \^tx_fifo_rst\;
  Tx_fifo_wr <= \^tx_fifo_wr\;
  Tx_fifo_wr_d_reg <= \^tx_fifo_wr_d_reg\;
  \adr_i_reg[0]_0\(5 downto 0) <= \^adr_i_reg[0]_0\(5 downto 0);
  gpo(0) <= \^gpo\(0);
  \q_int_reg[0]\ <= \^q_int_reg[0]\;
  \sr_i_reg[0]_0\(0) <= \^sr_i_reg[0]_0\(0);
  \timing_param_tbuf_i_reg[10]_0\(10 downto 0) <= \^timing_param_tbuf_i_reg[10]_0\(10 downto 0);
  \timing_param_thdsta_i_reg[10]_0\ <= \^timing_param_thdsta_i_reg[10]_0\;
  \timing_param_thdsta_i_reg[7]_0\(6 downto 0) <= \^timing_param_thdsta_i_reg[7]_0\(6 downto 0);
  \timing_param_thigh_i_reg[8]_0\(8 downto 0) <= \^timing_param_thigh_i_reg[8]_0\(8 downto 0);
  \timing_param_tlow_i_reg[10]_0\ <= \^timing_param_tlow_i_reg[10]_0\;
  \timing_param_tlow_i_reg[7]_0\(4 downto 0) <= \^timing_param_tlow_i_reg[7]_0\(4 downto 0);
  \timing_param_tsudat_i_reg[3]_0\(3 downto 0) <= \^timing_param_tsudat_i_reg[3]_0\(3 downto 0);
  \timing_param_tsusta_i_reg[7]_0\(7 downto 0) <= \^timing_param_tsusta_i_reg[7]_0\(7 downto 0);
  \timing_param_tsusto_i_reg[0]_0\ <= \^timing_param_tsusto_i_reg[0]_0\;
  \timing_param_tsusto_i_reg[7]_0\(7 downto 0) <= \^timing_param_tsusto_i_reg[7]_0\(7 downto 0);
\Addr_Counters[0].MUXCY_L_I_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^tx_fifo_wr\,
      I1 => Tx_fifo_wr_d,
      O => \FIFO_GEN_DTR.Tx_fifo_wr_reg_0\
    );
\Addr_Counters[0].MUXCY_L_I_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rc_fifo_rd\,
      I1 => Rc_fifo_rd_d,
      O => \RD_FIFO_CNTRL.Rc_fifo_rd_reg_0\
    );
\Addr_Counters[0].MUXCY_L_I_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rc_fifo_wr\,
      I1 => Rc_fifo_wr_d,
      O => \RD_FIFO_CNTRL.Rc_fifo_wr_reg_0\
    );
Cr_txModeSelect_set_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^tx_fifo_rst\,
      I1 => earlyAckHdr,
      I2 => firstDynStartSeen,
      O => \FIFO_GEN_DTR.Tx_fifo_rst_reg_0\
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAFB0000AAAA"
    )
        port map (
      I0 => \^tx_fifo_wr_d_reg\,
      I1 => \^tx_fifo_rd\,
      I2 => Tx_fifo_rd_d,
      I3 => rdCntrFrmTxFifo,
      I4 => Data_Exists_DFF,
      I5 => Data_Exists_DFF_0,
      O => D_0
    );
\Data_Exists_DFF_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2FF00002222"
    )
        port map (
      I0 => \^rc_fifo_wr\,
      I1 => Rc_fifo_wr_d,
      I2 => Rc_fifo_rd_d,
      I3 => \^rc_fifo_rd\,
      I4 => Data_Exists_DFF_1,
      I5 => Rc_Data_Exists,
      O => D_1
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => Tx_fifo_wr_d,
      I1 => \^tx_fifo_wr\,
      I2 => Bus2IIC_Reset,
      I3 => \^tx_fifo_rst\,
      O => \^tx_fifo_wr_d_reg\
    );
\FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]_0\,
      Q => \^iic2bus_intrevent\(7),
      R => Bus2IIC_Reset
    );
\FIFO_GEN_DTR.Tx_fifo_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdy_new_xmt_i,
      Q => \^tx_fifo_rd\,
      R => Bus2IIC_Reset
    );
\FIFO_GEN_DTR.Tx_fifo_rst_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Cr(6),
      Q => \^tx_fifo_rst\,
      S => Bus2IIC_Reset
    );
\FIFO_GEN_DTR.Tx_fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus2IIC_WrCE(10),
      Q => \^tx_fifo_wr\,
      R => Bus2IIC_Reset
    );
\FSM_onehot_scl_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q_int_reg[0]\,
      I1 => \FSM_onehot_scl_state_reg[5]_0\(0),
      O => \FSM_onehot_scl_state_reg[1]\
    );
\FSM_onehot_scl_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAEAEAEAFF"
    )
        port map (
      I0 => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_s_level_out_d4\,
      I1 => \FSM_onehot_scl_state_reg[5]_0\(1),
      I2 => \^timing_param_thdsta_i_reg[10]_0\,
      I3 => stop_scl_reg,
      I4 => \FSM_onehot_scl_state_reg[4]_0\,
      I5 => \^q\(4),
      O => \FSM_onehot_scl_state_reg[5]\(0)
    );
\FSM_onehot_scl_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => scndry_out,
      I1 => \FSM_onehot_scl_state[5]_i_6_n_0\,
      I2 => \FSM_onehot_scl_state[5]_i_5_n_0\,
      I3 => \FSM_onehot_scl_state[5]_i_4_n_0\,
      I4 => \FSM_onehot_scl_state[5]_i_3_n_0\,
      I5 => \FSM_onehot_scl_state_reg[5]_0\(2),
      O => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_s_level_out_d4\
    );
\FSM_onehot_scl_state[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \FSM_onehot_scl_state[4]_i_5_n_0\,
      I1 => \FSM_onehot_scl_state[4]_i_6_n_0\,
      I2 => \FSM_onehot_scl_state[4]_i_7_n_0\,
      I3 => \FSM_onehot_scl_state[4]_i_8_n_0\,
      O => \^timing_param_thdsta_i_reg[10]_0\
    );
\FSM_onehot_scl_state[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => timing_param_thdsta_i(10),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(10),
      I2 => timing_param_thdsta_i(9),
      I3 => \FSM_onehot_scl_state[4]_i_3_0\(9),
      O => \FSM_onehot_scl_state[4]_i_5_n_0\
    );
\FSM_onehot_scl_state[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^timing_param_thdsta_i_reg[7]_0\(3),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(4),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(5),
      I3 => \^timing_param_thdsta_i_reg[7]_0\(4),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(3),
      I5 => \^timing_param_thdsta_i_reg[7]_0\(2),
      O => \FSM_onehot_scl_state[4]_i_6_n_0\
    );
\FSM_onehot_scl_state[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^timing_param_thdsta_i_reg[7]_0\(0),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(0),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(1),
      I3 => timing_param_thdsta_i(1),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(2),
      I5 => \^timing_param_thdsta_i_reg[7]_0\(1),
      O => \FSM_onehot_scl_state[4]_i_7_n_0\
    );
\FSM_onehot_scl_state[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^timing_param_thdsta_i_reg[7]_0\(5),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(6),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(8),
      I3 => timing_param_thdsta_i(8),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(7),
      I5 => \^timing_param_thdsta_i_reg[7]_0\(6),
      O => \FSM_onehot_scl_state[4]_i_8_n_0\
    );
\FSM_onehot_scl_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^fsm_onehot_scl_state_reg[4]\,
      I1 => \^timing_param_tlow_i_reg[10]_0\,
      I2 => \FSM_onehot_scl_state_reg[5]_0\(3),
      O => \FSM_onehot_scl_state_reg[5]\(1)
    );
\FSM_onehot_scl_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg[5]_0\(2),
      I1 => \FSM_onehot_scl_state[5]_i_3_n_0\,
      I2 => \FSM_onehot_scl_state[5]_i_4_n_0\,
      I3 => \FSM_onehot_scl_state[5]_i_5_n_0\,
      I4 => \FSM_onehot_scl_state[5]_i_6_n_0\,
      I5 => scndry_out,
      O => \^fsm_onehot_scl_state_reg[4]\
    );
\FSM_onehot_scl_state[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => timing_param_thddat_i(10),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(10),
      I2 => timing_param_thddat_i(9),
      I3 => \FSM_onehot_scl_state[4]_i_3_0\(9),
      O => \FSM_onehot_scl_state[5]_i_3_n_0\
    );
\FSM_onehot_scl_state[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_thddat_i(5),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(5),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(3),
      I3 => timing_param_thddat_i(3),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(4),
      I5 => timing_param_thddat_i(4),
      O => \FSM_onehot_scl_state[5]_i_4_n_0\
    );
\FSM_onehot_scl_state[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_thddat_i(0),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(0),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(1),
      I3 => timing_param_thddat_i(1),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(2),
      I5 => timing_param_thddat_i(2),
      O => \FSM_onehot_scl_state[5]_i_5_n_0\
    );
\FSM_onehot_scl_state[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_thddat_i(6),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(6),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(8),
      I3 => timing_param_thddat_i(8),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(7),
      I5 => timing_param_thddat_i(7),
      O => \FSM_onehot_scl_state[5]_i_6_n_0\
    );
\FSM_onehot_scl_state[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \FSM_onehot_scl_state[6]_i_3_n_0\,
      I1 => \FSM_onehot_scl_state[6]_i_4_n_0\,
      I2 => \FSM_onehot_scl_state[6]_i_5_n_0\,
      I3 => \FSM_onehot_scl_state[6]_i_6_n_0\,
      O => \^timing_param_tlow_i_reg[10]_0\
    );
\FSM_onehot_scl_state[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => timing_param_tlow_i(10),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(10),
      I2 => timing_param_tlow_i(9),
      I3 => \FSM_onehot_scl_state[4]_i_3_0\(9),
      O => \FSM_onehot_scl_state[6]_i_3_n_0\
    );
\FSM_onehot_scl_state[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => timing_param_tlow_i(3),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(3),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(5),
      I3 => \^timing_param_tlow_i_reg[7]_0\(2),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(4),
      I5 => \^timing_param_tlow_i_reg[7]_0\(1),
      O => \FSM_onehot_scl_state[6]_i_4_n_0\
    );
\FSM_onehot_scl_state[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^timing_param_tlow_i_reg[7]_0\(0),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(0),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(1),
      I3 => timing_param_tlow_i(1),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(2),
      I5 => timing_param_tlow_i(2),
      O => \FSM_onehot_scl_state[6]_i_5_n_0\
    );
\FSM_onehot_scl_state[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^timing_param_tlow_i_reg[7]_0\(3),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(6),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(7),
      I3 => \^timing_param_tlow_i_reg[7]_0\(4),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(8),
      I5 => timing_param_tlow_i(8),
      O => \FSM_onehot_scl_state[6]_i_6_n_0\
    );
\FSM_onehot_scl_state[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \cr_i_reg[7]_0\
    );
\FSM_onehot_scl_state[9]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \FSM_onehot_scl_state[9]_i_18_n_0\,
      I1 => \FSM_onehot_scl_state[9]_i_19_n_0\,
      I2 => \FSM_onehot_scl_state[9]_i_20_n_0\,
      I3 => \FSM_onehot_scl_state[9]_i_4_0\,
      O => \FSM_onehot_scl_state[9]_i_10_n_0\
    );
\FSM_onehot_scl_state[9]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[10]_0\(1),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(1),
      I2 => \^timing_param_tbuf_i_reg[10]_0\(0),
      I3 => \FSM_onehot_scl_state[4]_i_3_0\(0),
      O => \FSM_onehot_scl_state[9]_i_12_n_0\
    );
\FSM_onehot_scl_state[9]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[10]_0\(7),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(7),
      I2 => \^timing_param_tbuf_i_reg[10]_0\(6),
      I3 => \FSM_onehot_scl_state[4]_i_3_0\(6),
      O => \FSM_onehot_scl_state[9]_i_13_n_0\
    );
\FSM_onehot_scl_state[9]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[10]_0\(3),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(3),
      I2 => \^timing_param_tbuf_i_reg[10]_0\(2),
      I3 => \FSM_onehot_scl_state[4]_i_3_0\(2),
      O => \FSM_onehot_scl_state[9]_i_14_n_0\
    );
\FSM_onehot_scl_state[9]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[10]_0\(9),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(9),
      I2 => \^timing_param_tbuf_i_reg[10]_0\(8),
      I3 => \FSM_onehot_scl_state[4]_i_3_0\(8),
      O => \FSM_onehot_scl_state[9]_i_15_n_0\
    );
\FSM_onehot_scl_state[9]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^timing_param_tsusta_i_reg[7]_0\(0),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(0),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(2),
      I3 => \^timing_param_tsusta_i_reg[7]_0\(2),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(1),
      I5 => \^timing_param_tsusta_i_reg[7]_0\(1),
      O => \FSM_onehot_scl_state[9]_i_16_n_0\
    );
\FSM_onehot_scl_state[9]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^timing_param_tsusta_i_reg[7]_0\(3),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(3),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(5),
      I3 => \^timing_param_tsusta_i_reg[7]_0\(5),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(4),
      I5 => \^timing_param_tsusta_i_reg[7]_0\(4),
      O => \FSM_onehot_scl_state[9]_i_17_n_0\
    );
\FSM_onehot_scl_state[9]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => timing_param_thigh_i(10),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(10),
      I2 => timing_param_thigh_i(9),
      I3 => \FSM_onehot_scl_state[4]_i_3_0\(9),
      O => \FSM_onehot_scl_state[9]_i_18_n_0\
    );
\FSM_onehot_scl_state[9]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^timing_param_thigh_i_reg[8]_0\(3),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(3),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(4),
      I3 => \^timing_param_thigh_i_reg[8]_0\(4),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(5),
      I5 => \^timing_param_thigh_i_reg[8]_0\(5),
      O => \FSM_onehot_scl_state[9]_i_19_n_0\
    );
\FSM_onehot_scl_state[9]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^timing_param_thigh_i_reg[8]_0\(0),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(0),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(1),
      I3 => \^timing_param_thigh_i_reg[8]_0\(1),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(2),
      I5 => \^timing_param_thigh_i_reg[8]_0\(2),
      O => \FSM_onehot_scl_state[9]_i_20_n_0\
    );
\FSM_onehot_scl_state[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \FSM_onehot_scl_state[9]_i_8_n_0\,
      I1 => \FSM_onehot_scl_state[9]_i_9_n_0\,
      I2 => \^q\(4),
      I3 => \^timing_param_tsusto_i_reg[0]_0\,
      I4 => stop_scl_reg,
      I5 => \FSM_onehot_scl_state[9]_i_10_n_0\,
      O => \cr_i_reg[2]_0\
    );
\FSM_onehot_scl_state[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg[0]\,
      I1 => \FSM_onehot_scl_state[9]_i_12_n_0\,
      I2 => \FSM_onehot_scl_state[9]_i_13_n_0\,
      I3 => \FSM_onehot_scl_state[9]_i_14_n_0\,
      I4 => \FSM_onehot_scl_state[9]_i_15_n_0\,
      O => \^q_int_reg[0]\
    );
\FSM_onehot_scl_state[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004000000004004"
    )
        port map (
      I0 => \FSM_onehot_scl_state[9]_i_16_n_0\,
      I1 => \FSM_onehot_scl_state[9]_i_17_n_0\,
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(9),
      I3 => timing_param_tsusta_i(9),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(10),
      I5 => timing_param_tsusta_i(10),
      O => \FSM_onehot_scl_state[9]_i_8_n_0\
    );
\FSM_onehot_scl_state[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^timing_param_tsusta_i_reg[7]_0\(6),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(6),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(7),
      I3 => \^timing_param_tsusta_i_reg[7]_0\(7),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(8),
      I5 => timing_param_tsusta_i(8),
      O => \FSM_onehot_scl_state[9]_i_9_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAEB"
    )
        port map (
      I0 => \sr_i_reg[1]_0\(0),
      I1 => \FSM_sequential_state_reg[1]\(6),
      I2 => \^adr_i_reg[0]_0\(5),
      I3 => \FSM_sequential_state[1]_i_6_n_0\,
      I4 => \FSM_sequential_state[1]_i_7_n_0\,
      O => abgc_i_reg
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^adr_i_reg[0]_0\(2),
      I1 => \FSM_sequential_state_reg[1]\(3),
      I2 => \FSM_sequential_state_reg[1]\(5),
      I3 => \^adr_i_reg[0]_0\(4),
      I4 => \FSM_sequential_state_reg[1]\(4),
      I5 => \^adr_i_reg[0]_0\(3),
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => data4(1),
      I1 => \FSM_sequential_state_reg[1]\(0),
      I2 => \FSM_sequential_state_reg[1]\(2),
      I3 => \^adr_i_reg[0]_0\(1),
      I4 => \FSM_sequential_state_reg[1]\(1),
      I5 => \^adr_i_reg[0]_0\(0),
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\GPO_GEN.gpo_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GPO_GEN.gpo_i_reg[31]_1\,
      Q => \^gpo\(0),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IIC2Bus_IntrEvent_reg[0]_0\(4),
      Q => \^iic2bus_intrevent\(0),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IIC2Bus_IntrEvent_reg[0]_0\(3),
      Q => \^iic2bus_intrevent\(1),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IIC2Bus_IntrEvent_reg[0]_0\(2),
      Q => \^iic2bus_intrevent\(2),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => \^iic2bus_intrevent\(3),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IIC2Bus_IntrEvent_reg[0]_0\(1),
      Q => \^iic2bus_intrevent\(4),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Aas,
      Q => \^iic2bus_intrevent\(5),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IIC2Bus_IntrEvent_reg[0]_0\(0),
      Q => \^iic2bus_intrevent\(6),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.Rc_fifo_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus2IIC_RdCE(0),
      Q => \^rc_fifo_rd\,
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.Rc_fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_wr0,
      Q => \^rc_fifo_wr\,
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(8),
      D => s_axi_wdata(3),
      Q => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(3),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(8),
      D => s_axi_wdata(2),
      Q => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(2),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(8),
      D => s_axi_wdata(1),
      Q => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(1),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(8),
      D => s_axi_wdata(0),
      Q => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(0),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.ro_prev_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RD_FIFO_CNTRL.ro_prev_i_reg_0\,
      Q => \^d\(0),
      R => '0'
    );
\adr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(7),
      Q => \^adr_i_reg[0]_0\(5),
      R => Bus2IIC_Reset
    );
\adr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(6),
      Q => \^adr_i_reg[0]_0\(4),
      R => Bus2IIC_Reset
    );
\adr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(5),
      Q => \^adr_i_reg[0]_0\(3),
      R => Bus2IIC_Reset
    );
\adr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(4),
      Q => \^adr_i_reg[0]_0\(2),
      R => Bus2IIC_Reset
    );
\adr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(3),
      Q => \^adr_i_reg[0]_0\(1),
      R => Bus2IIC_Reset
    );
\adr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(2),
      Q => \^adr_i_reg[0]_0\(0),
      R => Bus2IIC_Reset
    );
\adr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(1),
      Q => data4(1),
      R => Bus2IIC_Reset
    );
callingReadAccess_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \^tx_fifo_rd\,
      I1 => Tx_fifo_rd_d,
      I2 => \sr_i_reg[0]_1\,
      I3 => dynamic_MSMS(0),
      O => p_3_in
    );
\cr_i[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^tx_fifo_rd\,
      I1 => Tx_fifo_rd_d,
      O => \FIFO_GEN_DTR.Tx_fifo_rd_reg_0\
    );
\cr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(7),
      Q => \^q\(6),
      R => Bus2IIC_Reset
    );
\cr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(6),
      Q => \^q\(5),
      R => Bus2IIC_Reset
    );
\cr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cr_i_reg[2]_1\(2),
      Q => \^q\(4),
      R => Bus2IIC_Reset
    );
\cr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(4),
      Q => \^q\(3),
      R => Bus2IIC_Reset
    );
\cr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cr_i_reg[2]_1\(1),
      Q => \^q\(2),
      R => Bus2IIC_Reset
    );
\cr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cr_i_reg[2]_1\(0),
      Q => \^q\(1),
      R => Bus2IIC_Reset
    );
\cr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(1),
      Q => Cr(6),
      R => Bus2IIC_Reset
    );
\cr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => Bus2IIC_Reset
    );
firstDynStartSeen_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B0"
    )
        port map (
      I0 => firstDynStartSeen,
      I1 => firstDynStartSeen_reg_0,
      I2 => \^q\(1),
      I3 => \^tx_fifo_rst\,
      O => firstDynStartSeen_reg
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[10]_0\(10),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(10),
      O => S(0)
    );
msms_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(1),
      Q => msms_d1,
      R => Bus2IIC_Reset
    );
msms_set_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CE0C0A00"
    )
        port map (
      I0 => \^d\(0),
      I1 => \sr_i_reg[1]_0\(1),
      I2 => \^q\(1),
      I3 => msms_d1,
      I4 => \^msms_set\,
      O => msms_set_i_i_1_n_0
    );
msms_set_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_set_i_i_1_n_0,
      Q => \^msms_set\,
      R => Bus2IIC_Reset
    );
new_rcv_dta_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => New_rcv_dta,
      Q => new_rcv_dta_d1,
      R => Bus2IIC_Reset
    );
\s_axi_rdata_i[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \^gpo\(0),
      I1 => \s_axi_rdata_i[1]_i_5\(3),
      I2 => timing_param_thddat_i(0),
      I3 => \s_axi_rdata_i[1]_i_5\(4),
      I4 => sr_i(7),
      O => \GPO_GEN.gpo_i_reg[31]_0\
    );
\s_axi_rdata_i[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \s_axi_rdata_i[10]_i_2_n_0\,
      I1 => \s_axi_rdata_i[1]_i_5\(0),
      I2 => \s_axi_rdata_i[10]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[8]\,
      O => \bus2ip_addr_i_reg[2]\(2)
    );
\s_axi_rdata_i[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[10]_0\(10),
      I1 => timing_param_tsusta_i(10),
      I2 => \s_axi_rdata_i[1]_i_5\(1),
      I3 => timing_param_thdsta_i(10),
      I4 => \s_axi_rdata_i[1]_i_5\(2),
      I5 => timing_param_tlow_i(10),
      O => \s_axi_rdata_i[10]_i_2_n_0\
    );
\s_axi_rdata_i[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => timing_param_thigh_i(10),
      I1 => timing_param_tsusto_i(10),
      I2 => \s_axi_rdata_i[1]_i_5\(1),
      I3 => timing_param_tsudat_i(10),
      I4 => \s_axi_rdata_i[1]_i_5\(2),
      I5 => timing_param_thddat_i(10),
      O => \s_axi_rdata_i[10]_i_3_n_0\
    );
\s_axi_rdata_i[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(1),
      I1 => \s_axi_rdata_i[1]_i_5\(3),
      I2 => timing_param_tlow_i(1),
      I3 => \s_axi_rdata_i[1]_i_5\(4),
      I4 => Cr(6),
      O => \s_axi_rdata_i[1]_i_10_n_0\
    );
\s_axi_rdata_i[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => data4(1),
      I1 => \s_axi_rdata_i[1]_i_5\(3),
      I2 => timing_param_thdsta_i(1),
      I3 => \s_axi_rdata_i[1]_i_5\(4),
      I4 => \s_axi_rdata_i[1]_i_5\(2),
      I5 => \s_axi_rdata_i[1]_i_10_n_0\,
      O => \adr_i_reg[6]_0\
    );
\s_axi_rdata_i[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^iic2bus_intrevent\(5),
      I1 => \s_axi_rdata_i[1]_i_5\(4),
      I2 => timing_param_thddat_i(1),
      I3 => \s_axi_rdata_i[1]_i_5\(3),
      O => \IIC2Bus_IntrEvent_reg[5]_0\
    );
\s_axi_rdata_i[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => sr_i(5),
      I1 => \s_axi_rdata_i[1]_i_5\(4),
      I2 => timing_param_thddat_i(2),
      I3 => \s_axi_rdata_i[1]_i_5\(3),
      O => \sr_i_reg[5]_0\
    );
\s_axi_rdata_i[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(2),
      I1 => \s_axi_rdata_i[1]_i_5\(3),
      I2 => timing_param_tlow_i(2),
      I3 => \s_axi_rdata_i[1]_i_5\(4),
      I4 => \^q\(1),
      O => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5]_0\
    );
\s_axi_rdata_i[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \^rd_fifo_cntrl.rc_fifo_pirq_i_reg[4]_0\(3),
      I1 => \s_axi_rdata_i[1]_i_5\(3),
      I2 => timing_param_tlow_i(3),
      I3 => \s_axi_rdata_i[1]_i_5\(4),
      I4 => \^q\(2),
      O => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_1\
    );
\s_axi_rdata_i[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => sr_i(4),
      I1 => \s_axi_rdata_i[1]_i_5\(4),
      I2 => timing_param_thddat_i(3),
      I3 => \s_axi_rdata_i[1]_i_5\(3),
      O => \sr_i_reg[4]_0\
    );
\s_axi_rdata_i[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFC7C7FFFFF7C7F"
    )
        port map (
      I0 => timing_param_tsudat_i(4),
      I1 => \s_axi_rdata_i[1]_i_5\(2),
      I2 => \s_axi_rdata_i[1]_i_5\(3),
      I3 => sr_i(3),
      I4 => \s_axi_rdata_i[1]_i_5\(4),
      I5 => timing_param_thddat_i(4),
      O => \timing_param_tsudat_i_reg[4]_0\
    );
\s_axi_rdata_i[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFC7C7FFFFF7C7F"
    )
        port map (
      I0 => timing_param_tsudat_i(5),
      I1 => \s_axi_rdata_i[1]_i_5\(2),
      I2 => \s_axi_rdata_i[1]_i_5\(3),
      I3 => sr_i(2),
      I4 => \s_axi_rdata_i[1]_i_5\(4),
      I5 => timing_param_thddat_i(5),
      O => \timing_param_tsudat_i_reg[5]_0\
    );
\s_axi_rdata_i[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFC7C7FFFFF7C7F"
    )
        port map (
      I0 => timing_param_tsudat_i(6),
      I1 => \s_axi_rdata_i[1]_i_5\(2),
      I2 => \s_axi_rdata_i[1]_i_5\(3),
      I3 => sr_i(1),
      I4 => \s_axi_rdata_i[1]_i_5\(4),
      I5 => timing_param_thddat_i(6),
      O => \timing_param_tsudat_i_reg[6]_1\
    );
\s_axi_rdata_i[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFC7C7FFFFF7C7F"
    )
        port map (
      I0 => timing_param_tsudat_i(7),
      I1 => \s_axi_rdata_i[1]_i_5\(2),
      I2 => \s_axi_rdata_i[1]_i_5\(3),
      I3 => \^sr_i_reg[0]_0\(0),
      I4 => \s_axi_rdata_i[1]_i_5\(4),
      I5 => timing_param_thddat_i(7),
      O => \timing_param_tsudat_i_reg[7]_0\
    );
\s_axi_rdata_i[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \s_axi_rdata_i[8]_i_2_n_0\,
      I1 => \s_axi_rdata_i[1]_i_5\(0),
      I2 => \s_axi_rdata_i[8]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[8]\,
      O => \bus2ip_addr_i_reg[2]\(0)
    );
\s_axi_rdata_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[10]_0\(8),
      I1 => timing_param_tsusta_i(8),
      I2 => \s_axi_rdata_i[1]_i_5\(1),
      I3 => timing_param_thdsta_i(8),
      I4 => \s_axi_rdata_i[1]_i_5\(2),
      I5 => timing_param_tlow_i(8),
      O => \s_axi_rdata_i[8]_i_2_n_0\
    );
\s_axi_rdata_i[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^timing_param_thigh_i_reg[8]_0\(8),
      I1 => timing_param_tsusto_i(8),
      I2 => \s_axi_rdata_i[1]_i_5\(1),
      I3 => timing_param_tsudat_i(8),
      I4 => \s_axi_rdata_i[1]_i_5\(2),
      I5 => timing_param_thddat_i(8),
      O => \s_axi_rdata_i[8]_i_3_n_0\
    );
\s_axi_rdata_i[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \s_axi_rdata_i[9]_i_2_n_0\,
      I1 => \s_axi_rdata_i[1]_i_5\(0),
      I2 => \s_axi_rdata_i[9]_i_3_n_0\,
      I3 => \s_axi_rdata_i_reg[8]\,
      O => \bus2ip_addr_i_reg[2]\(1)
    );
\s_axi_rdata_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^timing_param_tbuf_i_reg[10]_0\(9),
      I1 => timing_param_tsusta_i(9),
      I2 => \s_axi_rdata_i[1]_i_5\(1),
      I3 => timing_param_thdsta_i(9),
      I4 => \s_axi_rdata_i[1]_i_5\(2),
      I5 => timing_param_tlow_i(9),
      O => \s_axi_rdata_i[9]_i_2_n_0\
    );
\s_axi_rdata_i[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => timing_param_thigh_i(9),
      I1 => timing_param_tsusto_i(9),
      I2 => \s_axi_rdata_i[1]_i_5\(1),
      I3 => timing_param_tsudat_i(9),
      I4 => \s_axi_rdata_i[1]_i_5\(2),
      I5 => timing_param_thddat_i(9),
      O => \s_axi_rdata_i[9]_i_3_n_0\
    );
sda_cout_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^timing_param_tsusto_i_reg[7]_0\(3),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(3),
      I2 => \FSM_onehot_scl_state[4]_i_3_0\(4),
      I3 => \^timing_param_tsusto_i_reg[7]_0\(4),
      I4 => \FSM_onehot_scl_state[4]_i_3_0\(5),
      I5 => \^timing_param_tsusto_i_reg[7]_0\(5),
      O => sda_cout_reg_i_10_n_0
    );
sda_cout_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => sda_cout_reg_i_6_n_0,
      I1 => sda_cout_reg_i_7_n_0,
      I2 => sda_cout_reg_i_8_n_0,
      I3 => sda_cout_reg_i_9_n_0,
      I4 => sda_cout_reg_i_10_n_0,
      O => \^timing_param_tsusto_i_reg[0]_0\
    );
sda_cout_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^timing_param_tsusto_i_reg[7]_0\(0),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(0),
      I2 => timing_param_tsusto_i(10),
      I3 => \FSM_onehot_scl_state[4]_i_3_0\(10),
      O => sda_cout_reg_i_6_n_0
    );
sda_cout_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timing_param_tsusto_i(9),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(9),
      I2 => timing_param_tsusto_i(8),
      I3 => \FSM_onehot_scl_state[4]_i_3_0\(8),
      O => sda_cout_reg_i_7_n_0
    );
sda_cout_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^timing_param_tsusto_i_reg[7]_0\(1),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(1),
      I2 => \^timing_param_tsusto_i_reg[7]_0\(2),
      I3 => \FSM_onehot_scl_state[4]_i_3_0\(2),
      O => sda_cout_reg_i_8_n_0
    );
sda_cout_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^timing_param_tsusto_i_reg[7]_0\(6),
      I1 => \FSM_onehot_scl_state[4]_i_3_0\(6),
      I2 => \^timing_param_tsusto_i_reg[7]_0\(7),
      I3 => \FSM_onehot_scl_state[4]_i_3_0\(7),
      O => sda_cout_reg_i_9_n_0
    );
sda_setup_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_tsudat_i(6),
      I1 => sda_setup_reg(6),
      I2 => sda_setup_reg(8),
      I3 => timing_param_tsudat_i(8),
      I4 => sda_setup_reg(7),
      I5 => timing_param_tsudat_i(7),
      O => \timing_param_tsudat_i_reg[6]_0\
    );
sda_setup_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004000000004004"
    )
        port map (
      I0 => sda_setup_i_4_n_0,
      I1 => sda_setup_i_5_n_0,
      I2 => sda_setup_reg(9),
      I3 => timing_param_tsudat_i(9),
      I4 => sda_setup_reg(10),
      I5 => timing_param_tsudat_i(10),
      O => \q_int_reg[1]\
    );
sda_setup_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^timing_param_tsudat_i_reg[3]_0\(0),
      I1 => sda_setup_reg(0),
      I2 => sda_setup_reg(1),
      I3 => \^timing_param_tsudat_i_reg[3]_0\(1),
      I4 => sda_setup_reg(2),
      I5 => \^timing_param_tsudat_i_reg[3]_0\(2),
      O => sda_setup_i_4_n_0
    );
sda_setup_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^timing_param_tsudat_i_reg[3]_0\(3),
      I1 => sda_setup_reg(3),
      I2 => sda_setup_reg(4),
      I3 => timing_param_tsudat_i(4),
      I4 => sda_setup_reg(5),
      I5 => timing_param_tsudat_i(5),
      O => sda_setup_i_5_n_0
    );
\sr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[0]_1\,
      Q => \^sr_i_reg[0]_0\(0),
      R => Bus2IIC_Reset
    );
\sr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[1]_0\(5),
      Q => sr_i(1),
      R => Bus2IIC_Reset
    );
\sr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[1]_0\(4),
      Q => sr_i(2),
      R => Bus2IIC_Reset
    );
\sr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[1]_0\(3),
      Q => sr_i(3),
      R => Bus2IIC_Reset
    );
\sr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[1]_0\(2),
      Q => sr_i(4),
      R => Bus2IIC_Reset
    );
\sr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[1]_0\(1),
      Q => sr_i(5),
      R => Bus2IIC_Reset
    );
\sr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sr_i_reg[1]_0\(0),
      Q => sr_i(7),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(0),
      Q => \^timing_param_tbuf_i_reg[10]_0\(0),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(10),
      Q => \^timing_param_tbuf_i_reg[10]_0\(10),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(1),
      Q => \^timing_param_tbuf_i_reg[10]_0\(1),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(2),
      Q => \^timing_param_tbuf_i_reg[10]_0\(2),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(3),
      Q => \^timing_param_tbuf_i_reg[10]_0\(3),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(4),
      Q => \^timing_param_tbuf_i_reg[10]_0\(4),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(5),
      Q => \^timing_param_tbuf_i_reg[10]_0\(5),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(6),
      Q => \^timing_param_tbuf_i_reg[10]_0\(6),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(7),
      Q => \^timing_param_tbuf_i_reg[10]_0\(7),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(8),
      Q => \^timing_param_tbuf_i_reg[10]_0\(8),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(9),
      Q => \^timing_param_tbuf_i_reg[10]_0\(9),
      S => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(0),
      Q => timing_param_thddat_i(0),
      S => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(10),
      Q => timing_param_thddat_i(10),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(1),
      Q => timing_param_thddat_i(1),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(2),
      Q => timing_param_thddat_i(2),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(3),
      Q => timing_param_thddat_i(3),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(4),
      Q => timing_param_thddat_i(4),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(5),
      Q => timing_param_thddat_i(5),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(6),
      Q => timing_param_thddat_i(6),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(7),
      Q => timing_param_thddat_i(7),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(8),
      Q => timing_param_thddat_i(8),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(9),
      Q => timing_param_thddat_i(9),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(0),
      Q => \^timing_param_thdsta_i_reg[7]_0\(0),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(10),
      Q => timing_param_thdsta_i(10),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(1),
      Q => timing_param_thdsta_i(1),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(2),
      Q => \^timing_param_thdsta_i_reg[7]_0\(1),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(3),
      Q => \^timing_param_thdsta_i_reg[7]_0\(2),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(4),
      Q => \^timing_param_thdsta_i_reg[7]_0\(3),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(5),
      Q => \^timing_param_thdsta_i_reg[7]_0\(4),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(6),
      Q => \^timing_param_thdsta_i_reg[7]_0\(5),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(7),
      Q => \^timing_param_thdsta_i_reg[7]_0\(6),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(8),
      Q => timing_param_thdsta_i(8),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(9),
      Q => timing_param_thdsta_i(9),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(0),
      Q => \^timing_param_thigh_i_reg[8]_0\(0),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(10),
      Q => timing_param_thigh_i(10),
      R => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(1),
      Q => \^timing_param_thigh_i_reg[8]_0\(1),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(2),
      Q => \^timing_param_thigh_i_reg[8]_0\(2),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(3),
      Q => \^timing_param_thigh_i_reg[8]_0\(3),
      R => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(4),
      Q => \^timing_param_thigh_i_reg[8]_0\(4),
      R => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(5),
      Q => \^timing_param_thigh_i_reg[8]_0\(5),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(6),
      Q => \^timing_param_thigh_i_reg[8]_0\(6),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(7),
      Q => \^timing_param_thigh_i_reg[8]_0\(7),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(8),
      Q => \^timing_param_thigh_i_reg[8]_0\(8),
      R => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(9),
      Q => timing_param_thigh_i(9),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(0),
      Q => \^timing_param_tlow_i_reg[7]_0\(0),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(10),
      Q => timing_param_tlow_i(10),
      R => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(1),
      Q => timing_param_tlow_i(1),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(2),
      Q => timing_param_tlow_i(2),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(3),
      Q => timing_param_tlow_i(3),
      R => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(4),
      Q => \^timing_param_tlow_i_reg[7]_0\(1),
      R => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(5),
      Q => \^timing_param_tlow_i_reg[7]_0\(2),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(6),
      Q => \^timing_param_tlow_i_reg[7]_0\(3),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(7),
      Q => \^timing_param_tlow_i_reg[7]_0\(4),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(8),
      Q => timing_param_tlow_i(8),
      R => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(9),
      Q => timing_param_tlow_i(9),
      S => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(0),
      Q => \^timing_param_tsudat_i_reg[3]_0\(0),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(10),
      Q => timing_param_tsudat_i(10),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(1),
      Q => \^timing_param_tsudat_i_reg[3]_0\(1),
      S => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(2),
      Q => \^timing_param_tsudat_i_reg[3]_0\(2),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(3),
      Q => \^timing_param_tsudat_i_reg[3]_0\(3),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(4),
      Q => timing_param_tsudat_i(4),
      S => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(5),
      Q => timing_param_tsudat_i(5),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(6),
      Q => timing_param_tsudat_i(6),
      S => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(7),
      Q => timing_param_tsudat_i(7),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(8),
      Q => timing_param_tsudat_i(8),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(9),
      Q => timing_param_tsudat_i(9),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(0),
      Q => \^timing_param_tsusta_i_reg[7]_0\(0),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(10),
      Q => timing_param_tsusta_i(10),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(1),
      Q => \^timing_param_tsusta_i_reg[7]_0\(1),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(2),
      Q => \^timing_param_tsusta_i_reg[7]_0\(2),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(3),
      Q => \^timing_param_tsusta_i_reg[7]_0\(3),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(4),
      Q => \^timing_param_tsusta_i_reg[7]_0\(4),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(5),
      Q => \^timing_param_tsusta_i_reg[7]_0\(5),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(6),
      Q => \^timing_param_tsusta_i_reg[7]_0\(6),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(7),
      Q => \^timing_param_tsusta_i_reg[7]_0\(7),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(8),
      Q => timing_param_tsusta_i(8),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(9),
      Q => timing_param_tsusta_i(9),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(0),
      Q => \^timing_param_tsusto_i_reg[7]_0\(0),
      R => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(10),
      Q => timing_param_tsusto_i(10),
      R => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(1),
      Q => \^timing_param_tsusto_i_reg[7]_0\(1),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(2),
      Q => \^timing_param_tsusto_i_reg[7]_0\(2),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(3),
      Q => \^timing_param_tsusto_i_reg[7]_0\(3),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(4),
      Q => \^timing_param_tsusto_i_reg[7]_0\(4),
      R => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(5),
      Q => \^timing_param_tsusto_i_reg[7]_0\(5),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(6),
      Q => \^timing_param_tsusto_i_reg[7]_0\(6),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(7),
      Q => \^timing_param_tsusto_i_reg[7]_0\(7),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(8),
      Q => timing_param_tsusto_i(8),
      R => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(9),
      Q => timing_param_tsusto_i(9),
      S => Bus2IIC_Reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_shift8 is
  port (
    \data_int_reg[7]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_under_prev_i_reg : out STD_LOGIC;
    shift_reg_en : in STD_LOGIC;
    \data_int_reg[1]_0\ : in STD_LOGIC;
    \LEVEL_1_GEN.master_sda_reg\ : in STD_LOGIC;
    slave_sda_reg : in STD_LOGIC;
    slave_sda_reg_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LEVEL_1_GEN.master_sda_reg_0\ : in STD_LOGIC;
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \data_int_reg[7]_1\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \data_int_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_shift8 : entity is "shift8";
end design_1_axi_iic_0_0_shift8;

architecture STRUCTURE of design_1_axi_iic_0_0_shift8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_int[7]_i_1_n_0\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_int[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_int[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_int[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_int[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_int[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_int[7]_i_2\ : label is "soft_lutpair8";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\LEVEL_1_GEN.master_sda_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAFFFFF0FACFF"
    )
        port map (
      I0 => \LEVEL_1_GEN.master_sda_reg\,
      I1 => \LEVEL_1_GEN.master_sda_reg_0\,
      I2 => slave_sda_reg_0(0),
      I3 => slave_sda_reg_0(1),
      I4 => slave_sda_reg_0(2),
      I5 => \^q\(7),
      O => tx_under_prev_i_reg
    );
\data_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(0),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(0),
      O => p_2_in(1)
    );
\data_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(1),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(1),
      O => p_2_in(2)
    );
\data_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(2),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(2),
      O => p_2_in(3)
    );
\data_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(3),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(3),
      O => p_2_in(4)
    );
\data_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(4),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(4),
      O => p_2_in(5)
    );
\data_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(5),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(5),
      O => p_2_in(6)
    );
\data_int[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_reg_en,
      I1 => \data_int_reg[1]_0\,
      O => \data_int[7]_i_1_n_0\
    );
\data_int[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data_0(6),
      I1 => \data_int_reg[1]_0\,
      I2 => \^q\(6),
      O => p_2_in(7)
    );
\data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int_reg[0]_0\(0),
      Q => \^q\(0),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(1),
      Q => \^q\(1),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(2),
      Q => \^q\(2),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(3),
      Q => \^q\(3),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(4),
      Q => \^q\(4),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(5),
      Q => \^q\(5),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(6),
      Q => \^q\(6),
      R => \data_int_reg[7]_1\
    );
\data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => p_2_in(7),
      Q => \^q\(7),
      R => \data_int_reg[7]_1\
    );
slave_sda_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFCCAAFFFFFFFF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \LEVEL_1_GEN.master_sda_reg\,
      I2 => slave_sda_reg,
      I3 => slave_sda_reg_0(0),
      I4 => slave_sda_reg_0(2),
      I5 => slave_sda_reg_0(1),
      O => \data_int_reg[7]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_shift8_1 is
  port (
    shift_reg_ld0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    detect_start_reg : out STD_LOGIC;
    \data_int_reg[7]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \data_int_reg[0]_0\ : out STD_LOGIC;
    detect_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    shift_reg_ld_reg : in STD_LOGIC;
    abgc_i_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    master_slave : in STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC;
    sda_sample : in STD_LOGIC;
    arb_lost : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_2\ : in STD_LOGIC;
    srw_i_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    abgc_i_reg_0 : in STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_2\ : in STD_LOGIC;
    \data_int_reg[0]_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \data_int_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_shift8_1 : entity is "shift8";
end design_1_axi_iic_0_0_shift8_1;

architecture STRUCTURE of design_1_axi_iic_0_0_shift8_1 is
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal abgc_i_i_2_n_0 : STD_LOGIC;
  signal abgc_i_i_3_n_0 : STD_LOGIC;
  signal \^data_int_reg[7]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i2c_header : STD_LOGIC_VECTOR ( 0 to 0 );
  signal shift_reg_ld_i_2_n_0 : STD_LOGIC;
begin
  \data_int_reg[7]_0\(6 downto 0) <= \^data_int_reg[7]_0\(6 downto 0);
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDCDCFFFFFCDC"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => \FSM_sequential_state_reg[1]_0\,
      I2 => master_slave,
      I3 => abgc_i_reg(1),
      I4 => \FSM_sequential_state_reg[1]_1\,
      I5 => \FSM_sequential_state[1]_i_5_n_0\,
      O => D(0)
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEFEFFFFFFFFF"
    )
        port map (
      I0 => sda_sample,
      I1 => arb_lost,
      I2 => i2c_header(0),
      I3 => abgc_i_reg(1),
      I4 => master_slave,
      I5 => \FSM_sequential_state_reg[1]_2\,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBABAA"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]\,
      I1 => Q(0),
      I2 => \FSM_sequential_state[2]_i_7_n_0\,
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => \FSM_sequential_state_reg[2]_1\,
      O => D(1)
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD8FFFFFFFFFFFF"
    )
        port map (
      I0 => master_slave,
      I1 => abgc_i_reg(1),
      I2 => i2c_header(0),
      I3 => \FSM_sequential_state_reg[2]_2\,
      I4 => Q(1),
      I5 => Q(2),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
abgc_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044440400"
    )
        port map (
      I0 => detect_start,
      I1 => abgc_i_reg(0),
      I2 => abgc_i_i_2_n_0,
      I3 => abgc_i_i_3_n_0,
      I4 => srw_i_reg(0),
      I5 => abgc_i_reg_0,
      O => detect_start_reg
    );
abgc_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => i2c_header(0),
      I4 => \^data_int_reg[7]_0\(2),
      I5 => abgc_i_reg(2),
      O => abgc_i_i_2_n_0
    );
abgc_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^data_int_reg[7]_0\(5),
      I1 => \^data_int_reg[7]_0\(1),
      I2 => \^data_int_reg[7]_0\(0),
      I3 => \^data_int_reg[7]_0\(3),
      I4 => \^data_int_reg[7]_0\(4),
      I5 => \^data_int_reg[7]_0\(6),
      O => abgc_i_i_3_n_0
    );
\data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \data_int_reg[0]_2\,
      Q => i2c_header(0),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => i2c_header(0),
      Q => \^data_int_reg[7]_0\(0),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^data_int_reg[7]_0\(0),
      Q => \^data_int_reg[7]_0\(1),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^data_int_reg[7]_0\(1),
      Q => \^data_int_reg[7]_0\(2),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^data_int_reg[7]_0\(2),
      Q => \^data_int_reg[7]_0\(3),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^data_int_reg[7]_0\(3),
      Q => \^data_int_reg[7]_0\(4),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^data_int_reg[7]_0\(4),
      Q => \^data_int_reg[7]_0\(5),
      R => \data_int_reg[0]_1\
    );
\data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^data_int_reg[7]_0\(5),
      Q => \^data_int_reg[7]_0\(6),
      R => \data_int_reg[0]_1\
    );
shift_reg_ld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0320"
    )
        port map (
      I0 => detect_start,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => shift_reg_ld_reg,
      I5 => shift_reg_ld_i_2_n_0,
      O => shift_reg_ld0
    );
shift_reg_ld_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CA00000000F0"
    )
        port map (
      I0 => i2c_header(0),
      I1 => abgc_i_reg(1),
      I2 => master_slave,
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => shift_reg_ld_i_2_n_0
    );
srw_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => i2c_header(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => srw_i_reg(1),
      O => \data_int_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_soft_reset is
  port (
    sw_rst_cond_d1 : out STD_LOGIC;
    AXI_Bus2IP_Reset : out STD_LOGIC;
    ctrlFifoDin : out STD_LOGIC_VECTOR ( 0 to 1 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sw_rst_cond : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset_trig0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Tx_fifo_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_soft_reset : entity is "soft_reset";
end design_1_axi_iic_0_0_soft_reset;

architecture STRUCTURE of design_1_axi_iic_0_0_soft_reset is
  signal \^axi_bus2ip_reset\ : STD_LOGIC;
  signal \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal flop_q_chain : STD_LOGIC_VECTOR ( 1 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_RAM[0].SRL16E_I_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \FIFO_RAM[1].SRL16E_I_i_1\ : label is "soft_lutpair63";
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute box_type : string;
  attribute box_type of \RESET_FLOPS[0].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[1].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[1].RST_FLOPS_i_1\ : label is "soft_lutpair64";
  attribute IS_CE_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[2].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[2].RST_FLOPS_i_1\ : label is "soft_lutpair64";
  attribute IS_CE_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[3].RST_FLOPS\ : label is "PRIMITIVE";
begin
  AXI_Bus2IP_Reset <= \^axi_bus2ip_reset\;
  SR(0) <= \^sr\(0);
\FIFO_RAM[0].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^sr\(0),
      I2 => Tx_fifo_rst,
      O => ctrlFifoDin(0)
    );
\FIFO_RAM[1].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^sr\(0),
      I2 => Tx_fifo_rst,
      O => ctrlFifoDin(1)
    );
\GPO_GEN.gpo_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \RESET_FLOPS[3].RST_FLOPS_n_0\,
      I1 => s_axi_aresetn,
      O => \^sr\(0)
    );
\RESET_FLOPS[0].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => S,
      Q => flop_q_chain(1),
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[1].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(2),
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[1].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(1),
      O => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[2].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(3),
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[2].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(2),
      O => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[3].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\,
      Q => \RESET_FLOPS[3].RST_FLOPS_n_0\,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[3].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(3),
      O => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\
    );
reset_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_trig0,
      Q => S,
      R => \^axi_bus2ip_reset\
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^axi_bus2ip_reset\
    );
sw_rst_cond_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sw_rst_cond,
      Q => sw_rst_cond_d1,
      R => \^axi_bus2ip_reset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_upcnt_n is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \q_int_reg[0]_0\ : out STD_LOGIC;
    arb_lost_reg : out STD_LOGIC;
    \q_int_reg[3]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \FSM_onehot_scl_state[9]_i_7\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    scndry_out : in STD_LOGIC;
    \q_int_reg[0]_1\ : in STD_LOGIC;
    \q_int_reg[0]_2\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \q_int_reg[0]_3\ : in STD_LOGIC;
    arb_lost : in STD_LOGIC;
    \q_int_reg[0]_4\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_int_reg[0]_5\ : in STD_LOGIC;
    \FSM_onehot_scl_state[9]_i_10\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_int_reg[10]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_upcnt_n : entity is "upcnt_n";
end design_1_axi_iic_0_0_upcnt_n;

architecture STRUCTURE of design_1_axi_iic_0_0_upcnt_n is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^arb_lost_reg\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \q_int[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_6_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_7_n_0\ : STD_LOGIC;
  signal \q_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[5]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[6]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[7]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[4]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_int[0]_i_3__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_int[0]_i_5__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_int[0]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_int[10]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_int[2]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_int[5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_int[6]_i_2\ : label is "soft_lutpair6";
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
  arb_lost_reg <= \^arb_lost_reg\;
\FSM_onehot_scl_state[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => arb_lost,
      I1 => \q_int_reg[0]_2\(7),
      O => \^arb_lost_reg\
    );
\FSM_onehot_scl_state[9]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(10),
      I1 => \FSM_onehot_scl_state[9]_i_7\(10),
      I2 => \^q\(4),
      I3 => \FSM_onehot_scl_state[9]_i_7\(4),
      I4 => \^q\(5),
      I5 => \FSM_onehot_scl_state[9]_i_7\(5),
      O => \q_int_reg[0]_0\
    );
\FSM_onehot_scl_state[9]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(7),
      I1 => \FSM_onehot_scl_state[9]_i_10\(1),
      I2 => \^q\(8),
      I3 => \FSM_onehot_scl_state[9]_i_10\(2),
      I4 => \FSM_onehot_scl_state[9]_i_10\(0),
      I5 => \^q\(6),
      O => \q_int_reg[3]_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(10),
      I1 => \FSM_onehot_scl_state[9]_i_7\(10),
      O => DI(5)
    );
\i__carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \FSM_onehot_scl_state[9]_i_7\(4),
      I2 => \^q\(5),
      I3 => \FSM_onehot_scl_state[9]_i_7\(5),
      O => S(2)
    );
\i__carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \FSM_onehot_scl_state[9]_i_7\(2),
      I2 => \^q\(3),
      I3 => \FSM_onehot_scl_state[9]_i_7\(3),
      O => S(1)
    );
\i__carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_scl_state[9]_i_7\(0),
      I2 => \^q\(1),
      I3 => \FSM_onehot_scl_state[9]_i_7\(1),
      O => S(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(9),
      I1 => \FSM_onehot_scl_state[9]_i_7\(9),
      I2 => \^q\(8),
      I3 => \FSM_onehot_scl_state[9]_i_7\(8),
      O => DI(4)
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \FSM_onehot_scl_state[9]_i_7\(7),
      I2 => \^q\(6),
      I3 => \FSM_onehot_scl_state[9]_i_7\(6),
      O => DI(3)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \FSM_onehot_scl_state[9]_i_7\(5),
      I2 => \^q\(4),
      I3 => \FSM_onehot_scl_state[9]_i_7\(4),
      O => DI(2)
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \FSM_onehot_scl_state[9]_i_7\(3),
      I2 => \^q\(2),
      I3 => \FSM_onehot_scl_state[9]_i_7\(2),
      O => DI(1)
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_scl_state[9]_i_7\(1),
      I2 => \^q\(0),
      I3 => \FSM_onehot_scl_state[9]_i_7\(0),
      O => DI(0)
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(8),
      I1 => \FSM_onehot_scl_state[9]_i_7\(8),
      I2 => \^q\(9),
      I3 => \FSM_onehot_scl_state[9]_i_7\(9),
      O => S(4)
    );
\i__carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \FSM_onehot_scl_state[9]_i_7\(6),
      I2 => \^q\(7),
      I3 => \FSM_onehot_scl_state[9]_i_7\(7),
      O => S(3)
    );
\q_int[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF4"
    )
        port map (
      I0 => scndry_out,
      I1 => \q_int_reg[0]_1\,
      I2 => \q_int[0]_i_3__0_n_0\,
      I3 => \q_int[0]_i_4_n_0\,
      I4 => \q_int[0]_i_5__0_n_0\,
      O => \q_int[0]_i_1__0_n_0\
    );
\q_int[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000D0D0D0D000000"
    )
        port map (
      I0 => \q_int_reg[0]_3\,
      I1 => \^arb_lost_reg\,
      I2 => \q_int[0]_i_5__0_n_0\,
      I3 => \q_int[0]_i_6_n_0\,
      I4 => \^q\(9),
      I5 => \^q\(10),
      O => p_0_in(10)
    );
\q_int[0]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \q_int_reg[0]_2\(0),
      I1 => CO(0),
      I2 => \q_int_reg[0]_5\,
      O => \q_int[0]_i_3__0_n_0\
    );
\q_int[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \q_int_reg[0]_2\(1),
      I1 => \q_int_reg[0]_2\(3),
      I2 => \q_int_reg[0]_2\(7),
      I3 => \q_int_reg[0]_2\(5),
      I4 => \q_int_reg[0]_2\(9),
      O => \q_int[0]_i_4_n_0\
    );
\q_int[0]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEFEFE"
    )
        port map (
      I0 => \q_int_reg[0]_4\,
      I1 => \q_int[0]_i_7_n_0\,
      I2 => \q_int_reg[0]_2\(0),
      I3 => CO(0),
      I4 => \q_int_reg[0]_5\,
      O => \q_int[0]_i_5__0_n_0\
    );
\q_int[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \q_int[4]_i_2_n_0\,
      I3 => \^q\(6),
      O => \q_int[0]_i_6_n_0\
    );
\q_int[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \q_int_reg[0]_2\(8),
      I1 => \q_int_reg[0]_2\(6),
      I2 => scndry_out,
      I3 => \q_int_reg[0]_2\(4),
      I4 => \q_int_reg[0]_2\(2),
      O => \q_int[0]_i_7_n_0\
    );
\q_int[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F7"
    )
        port map (
      I0 => \q_int_reg[0]_3\,
      I1 => \q_int_reg[0]_2\(7),
      I2 => arb_lost,
      I3 => \q_int[0]_i_5__0_n_0\,
      I4 => \^q\(0),
      O => p_0_in(0)
    );
\q_int[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F700F70000"
    )
        port map (
      I0 => \q_int_reg[0]_3\,
      I1 => \q_int_reg[0]_2\(7),
      I2 => arb_lost,
      I3 => \q_int[0]_i_5__0_n_0\,
      I4 => \q_int[0]_i_6_n_0\,
      I5 => \^q\(9),
      O => p_0_in(9)
    );
\q_int[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F70000000000F7"
    )
        port map (
      I0 => \q_int_reg[0]_3\,
      I1 => \q_int_reg[0]_2\(7),
      I2 => arb_lost,
      I3 => \q_int[0]_i_5__0_n_0\,
      I4 => \q_int[2]_i_2_n_0\,
      I5 => \^q\(8),
      O => p_0_in(8)
    );
\q_int[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \q_int[4]_i_2_n_0\,
      I2 => \^q\(7),
      O => \q_int[2]_i_2_n_0\
    );
\q_int[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F70000000000F7"
    )
        port map (
      I0 => \q_int_reg[0]_3\,
      I1 => \q_int_reg[0]_2\(7),
      I2 => arb_lost,
      I3 => \q_int[0]_i_5__0_n_0\,
      I4 => \q_int[3]_i_2_n_0\,
      I5 => \^q\(7),
      O => p_0_in(7)
    );
\q_int[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \q_int[4]_i_2_n_0\,
      I1 => \^q\(6),
      O => \q_int[3]_i_2_n_0\
    );
\q_int[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F70000000000F7"
    )
        port map (
      I0 => \q_int_reg[0]_3\,
      I1 => \q_int_reg[0]_2\(7),
      I2 => arb_lost,
      I3 => \q_int[0]_i_5__0_n_0\,
      I4 => \q_int[4]_i_2_n_0\,
      I5 => \^q\(6),
      O => p_0_in(6)
    );
\q_int[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \q_int[4]_i_2_n_0\
    );
\q_int[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F70000000000F7"
    )
        port map (
      I0 => \q_int_reg[0]_3\,
      I1 => \q_int_reg[0]_2\(7),
      I2 => arb_lost,
      I3 => \q_int[0]_i_5__0_n_0\,
      I4 => \q_int[5]_i_2_n_0\,
      I5 => \^q\(5),
      O => p_0_in(5)
    );
\q_int[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \q_int[5]_i_2_n_0\
    );
\q_int[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F70000000000F7"
    )
        port map (
      I0 => \q_int_reg[0]_3\,
      I1 => \q_int_reg[0]_2\(7),
      I2 => arb_lost,
      I3 => \q_int[0]_i_5__0_n_0\,
      I4 => \q_int[6]_i_2_n_0\,
      I5 => \^q\(4),
      O => p_0_in(4)
    );
\q_int[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \q_int[6]_i_2_n_0\
    );
\q_int[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F70000000000F7"
    )
        port map (
      I0 => \q_int_reg[0]_3\,
      I1 => \q_int_reg[0]_2\(7),
      I2 => arb_lost,
      I3 => \q_int[0]_i_5__0_n_0\,
      I4 => \q_int[7]_i_2_n_0\,
      I5 => \^q\(3),
      O => p_0_in(3)
    );
\q_int[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \q_int[7]_i_2_n_0\
    );
\q_int[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000D0D0D0D000000"
    )
        port map (
      I0 => \q_int_reg[0]_3\,
      I1 => \^arb_lost_reg\,
      I2 => \q_int[0]_i_5__0_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => p_0_in(2)
    );
\q_int[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F700F70000"
    )
        port map (
      I0 => \q_int_reg[0]_3\,
      I1 => \q_int_reg[0]_2\(7),
      I2 => arb_lost,
      I3 => \q_int[0]_i_5__0_n_0\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_in(1)
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => p_0_in(10),
      Q => \^q\(10),
      R => \q_int_reg[10]_0\
    );
\q_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => p_0_in(0),
      Q => \^q\(0),
      R => \q_int_reg[10]_0\
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => p_0_in(9),
      Q => \^q\(9),
      R => \q_int_reg[10]_0\
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => p_0_in(8),
      Q => \^q\(8),
      R => \q_int_reg[10]_0\
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => p_0_in(7),
      Q => \^q\(7),
      R => \q_int_reg[10]_0\
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => p_0_in(6),
      Q => \^q\(6),
      R => \q_int_reg[10]_0\
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => p_0_in(5),
      Q => \^q\(5),
      R => \q_int_reg[10]_0\
    );
\q_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => p_0_in(4),
      Q => \^q\(4),
      R => \q_int_reg[10]_0\
    );
\q_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => p_0_in(3),
      Q => \^q\(3),
      R => \q_int_reg[10]_0\
    );
\q_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => p_0_in(2),
      Q => \^q\(2),
      R => \q_int_reg[10]_0\
    );
\q_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => p_0_in(1),
      Q => \^q\(1),
      R => \q_int_reg[10]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_upcnt_n_2 is
  port (
    sda_rin_d1_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sda_setup : in STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    \q_int_reg[10]_0\ : in STD_LOGIC;
    rsta_d1 : in STD_LOGIC;
    \q_int[0]_i_3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gen_stop : in STD_LOGIC;
    gen_stop_d1 : in STD_LOGIC;
    tx_under_prev_d1 : in STD_LOGIC;
    \q_int[0]_i_3_1\ : in STD_LOGIC;
    \q_int_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_upcnt_n_2 : entity is "upcnt_n";
end design_1_axi_iic_0_0_upcnt_n_2;

architecture STRUCTURE of design_1_axi_iic_0_0_upcnt_n_2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \q_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_5_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \^sda_rin_d1_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_int[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q_int[0]_i_4__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q_int[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q_int[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_int[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_int[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q_int[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_int[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_int[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_int[9]_i_1\ : label is "soft_lutpair15";
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
  sda_rin_d1_reg <= \^sda_rin_d1_reg\;
\q_int[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sda_setup,
      I1 => \^sda_rin_d1_reg\,
      O => \q_int[0]_i_1_n_0\
    );
\q_int[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^sda_rin_d1_reg\,
      I1 => \^q\(9),
      I2 => \q_int[0]_i_4__0_n_0\,
      I3 => \^q\(10),
      O => \p_0_in__0\(10)
    );
\q_int[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => sda_rin_d1,
      I1 => \q_int_reg[10]_0\,
      I2 => \q_int[0]_i_5_n_0\,
      O => \^sda_rin_d1_reg\
    );
\q_int[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \q_int[1]_i_2_n_0\,
      I3 => \^q\(6),
      O => \q_int[0]_i_4__0_n_0\
    );
\q_int[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => rsta_d1,
      I1 => \q_int[0]_i_3_0\(0),
      I2 => gen_stop,
      I3 => gen_stop_d1,
      I4 => tx_under_prev_d1,
      I5 => \q_int[0]_i_3_1\,
      O => \q_int[0]_i_5_n_0\
    );
\q_int[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sda_rin_d1_reg\,
      I1 => \^q\(0),
      O => \p_0_in__0\(0)
    );
\q_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => \^sda_rin_d1_reg\,
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \q_int[1]_i_2_n_0\,
      I4 => \^q\(6),
      I5 => \^q\(9),
      O => \p_0_in__0\(9)
    );
\q_int[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \q_int[1]_i_2_n_0\
    );
\q_int[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => \^sda_rin_d1_reg\,
      I1 => \^q\(6),
      I2 => \q_int[1]_i_2_n_0\,
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \p_0_in__0\(8)
    );
\q_int[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \^sda_rin_d1_reg\,
      I1 => \q_int[1]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \p_0_in__0\(7)
    );
\q_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^sda_rin_d1_reg\,
      I1 => \q_int[1]_i_2_n_0\,
      I2 => \^q\(6),
      O => \p_0_in__0\(6)
    );
\q_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^sda_rin_d1_reg\,
      I1 => \q_int[5]_i_2__0_n_0\,
      I2 => \^q\(5),
      O => \p_0_in__0\(5)
    );
\q_int[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \q_int[5]_i_2__0_n_0\
    );
\q_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \^sda_rin_d1_reg\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \p_0_in__0\(4)
    );
\q_int[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \^sda_rin_d1_reg\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \p_0_in__0\(3)
    );
\q_int[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^sda_rin_d1_reg\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \p_0_in__0\(2)
    );
\q_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^sda_rin_d1_reg\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \p_0_in__0\(1)
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(10),
      Q => \^q\(10),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => \^q\(0),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(9),
      Q => \^q\(9),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(8),
      Q => \^q\(8),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => \^q\(7),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => \^q\(6),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => \^q\(5),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => \^q\(4),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => \^q\(3),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => \^q\(2),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \^q\(1),
      R => \q_int_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_iic_0_0_upcnt_n__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    EarlyAckDataState0 : out STD_LOGIC;
    \q_int_reg[1]_0\ : out STD_LOGIC;
    detect_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bit_cnt_en : in STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    EarlyAckDataState_reg : in STD_LOGIC;
    EarlyAckDataState_reg_0 : in STD_LOGIC;
    scl_falling_edge : in STD_LOGIC;
    dtc_i : in STD_LOGIC;
    \q_int_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_iic_0_0_upcnt_n__parameterized0\ : entity is "upcnt_n";
end \design_1_axi_iic_0_0_upcnt_n__parameterized0\;

architecture STRUCTURE of \design_1_axi_iic_0_0_upcnt_n__parameterized0\ is
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal bit_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \q_int[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[3]_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_int[0]_i_2__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_int[0]_i_3__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_int[1]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_int[3]_i_1__1\ : label is "soft_lutpair3";
begin
EarlyAckDataState_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABAAAAAAE"
    )
        port map (
      I0 => EarlyAckDataState_reg,
      I1 => bit_cnt(3),
      I2 => bit_cnt(1),
      I3 => bit_cnt(0),
      I4 => bit_cnt(2),
      I5 => EarlyAckDataState_reg_0,
      O => EarlyAckDataState0
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FFD5FDC"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => detect_start,
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => \FSM_sequential_state_reg[0]\,
      O => E(0)
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => bit_cnt(3),
      I3 => bit_cnt(2),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
dtc_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => bit_cnt(2),
      I1 => bit_cnt(0),
      I2 => bit_cnt(1),
      I3 => bit_cnt(3),
      I4 => scl_falling_edge,
      I5 => dtc_i,
      O => \q_int_reg[1]_0\
    );
\q_int[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFEEFEF"
    )
        port map (
      I0 => bit_cnt_en,
      I1 => detect_start,
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      O => \q_int[0]_i_1__1_n_0\
    );
\q_int[0]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \q_int[0]_i_3__1_n_0\,
      I1 => bit_cnt(1),
      I2 => bit_cnt(0),
      I3 => bit_cnt(2),
      I4 => bit_cnt(3),
      O => \q_int[0]_i_2__1_n_0\
    );
\q_int[0]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => detect_start,
      O => \q_int[0]_i_3__1_n_0\
    );
\q_int[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \q_int[0]_i_3__1_n_0\,
      I1 => bit_cnt(0),
      I2 => bit_cnt(1),
      I3 => bit_cnt(2),
      O => \q_int[1]_i_1__1_n_0\
    );
\q_int[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000414441440000"
    )
        port map (
      I0 => detect_start,
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => bit_cnt(0),
      I5 => bit_cnt(1),
      O => \q_int[2]_i_1__1_n_0\
    );
\q_int[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004144"
    )
        port map (
      I0 => detect_start,
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => bit_cnt(0),
      O => \q_int[3]_i_1__1_n_0\
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => \q_int[0]_i_2__1_n_0\,
      Q => bit_cnt(3),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => \q_int[1]_i_1__1_n_0\,
      Q => bit_cnt(2),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => \q_int[2]_i_1__1_n_0\,
      Q => bit_cnt(1),
      R => \q_int_reg[0]_0\
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => \q_int[3]_i_1__1_n_0\,
      Q => bit_cnt(0),
      R => \q_int_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_debounce is
  port (
    scl_rising_edge0 : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    scl_rin_d1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_debounce : entity is "debounce";
end design_1_axi_iic_0_0_debounce;

architecture STRUCTURE of design_1_axi_iic_0_0_debounce is
begin
INPUT_DOUBLE_REGS: entity work.design_1_axi_iic_0_0_cdc_sync_4
     port map (
      D(0) => D(0),
      Q(0) => Q(0),
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge0 => scl_rising_edge0,
      scndry_out => scndry_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_debounce_3 is
  port (
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_debounce_3 : entity is "debounce";
end design_1_axi_iic_0_0_debounce_3;

architecture STRUCTURE of design_1_axi_iic_0_0_debounce_3 is
begin
INPUT_DOUBLE_REGS: entity work.design_1_axi_iic_0_0_cdc_sync
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      s_axi_aclk => s_axi_aclk,
      sda_i => sda_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_iic_control is
  port (
    New_rcv_dta : out STD_LOGIC;
    shift_reg_ld : out STD_LOGIC;
    scl_rin_d1 : out STD_LOGIC;
    Tx_under_prev : out STD_LOGIC;
    Bb : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    earlyAckHdr : out STD_LOGIC;
    earlyAckDataState : out STD_LOGIC;
    ackDataState : out STD_LOGIC;
    rdy_new_xmt_i : out STD_LOGIC;
    srw_i_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    stop_scl_reg : out STD_LOGIC;
    Aas : out STD_LOGIC;
    \q_int_reg[0]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    arb_lost_reg_0 : out STD_LOGIC;
    \FSM_onehot_scl_state_reg[6]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_int_reg[0]_0\ : out STD_LOGIC;
    \q_int_reg[0]_1\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \data_int_reg[7]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sda_t : out STD_LOGIC;
    \s_axi_wdata[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_int_reg[3]\ : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    Rc_fifo_wr0 : out STD_LOGIC;
    \data_i2c_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_int_reg[0]_2\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \data_int_reg[0]\ : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    scl_rising_edge0 : in STD_LOGIC;
    Ro_prev : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sr_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_scl_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_onehot_scl_state[9]_i_7\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \q_int_reg[0]_3\ : in STD_LOGIC;
    \q_int_reg[0]_4\ : in STD_LOGIC;
    \q_int_reg[0]_5\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \LEVEL_1_GEN.master_sda_reg_0\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cr_i_reg[5]\ : in STD_LOGIC;
    Tx_data_exists_sgl : in STD_LOGIC;
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cr_i_reg[5]_0\ : in STD_LOGIC;
    rxCntDone : in STD_LOGIC;
    sda_cout_reg_reg_0 : in STD_LOGIC;
    \FSM_onehot_scl_state[9]_i_10\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Msms_set : in STD_LOGIC;
    \data_int_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \FSM_onehot_scl_state_reg[6]_1\ : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[3]_0\ : in STD_LOGIC;
    new_rcv_dta_d1 : in STD_LOGIC;
    sda_setup_reg_0 : in STD_LOGIC;
    sda_setup_reg_1 : in STD_LOGIC;
    \FSM_onehot_scl_state_reg[7]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_iic_control : entity is "iic_control";
end design_1_axi_iic_0_0_iic_control;

architecture STRUCTURE of design_1_axi_iic_0_0_iic_control is
  signal \^aas\ : STD_LOGIC;
  signal AckDataState_i_1_n_0 : STD_LOGIC;
  signal BITCNT_n_0 : STD_LOGIC;
  signal BITCNT_n_2 : STD_LOGIC;
  signal \^bb\ : STD_LOGIC;
  signal CLKCNT_n_14 : STD_LOGIC;
  signal CLKCNT_n_15 : STD_LOGIC;
  signal CLKCNT_n_16 : STD_LOGIC;
  signal CLKCNT_n_17 : STD_LOGIC;
  signal CLKCNT_n_18 : STD_LOGIC;
  signal CLKCNT_n_19 : STD_LOGIC;
  signal CLKCNT_n_20 : STD_LOGIC;
  signal CLKCNT_n_21 : STD_LOGIC;
  signal CLKCNT_n_22 : STD_LOGIC;
  signal CLKCNT_n_23 : STD_LOGIC;
  signal CLKCNT_n_24 : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EarlyAckDataState0 : STD_LOGIC;
  signal EarlyAckDataState_i_2_n_0 : STD_LOGIC;
  signal EarlyAckHdr0 : STD_LOGIC;
  signal \FSM_onehot_scl_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_scl_state[9]_i_6_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_scl_state_reg[6]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FSM_onehot_scl_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_scl_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_scl_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_scl_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_9_n_0\ : STD_LOGIC;
  signal I2CDATA_REG_n_0 : STD_LOGIC;
  signal I2CDATA_REG_n_2 : STD_LOGIC;
  signal I2CDATA_REG_n_3 : STD_LOGIC;
  signal I2CDATA_REG_n_4 : STD_LOGIC;
  signal I2CDATA_REG_n_5 : STD_LOGIC;
  signal I2CDATA_REG_n_6 : STD_LOGIC;
  signal I2CDATA_REG_n_7 : STD_LOGIC;
  signal I2CDATA_REG_n_8 : STD_LOGIC;
  signal I2CDATA_REG_n_9 : STD_LOGIC;
  signal I2CHEADER_REG_n_1 : STD_LOGIC;
  signal I2CHEADER_REG_n_11 : STD_LOGIC;
  signal I2CHEADER_REG_n_2 : STD_LOGIC;
  signal I2CHEADER_REG_n_3 : STD_LOGIC;
  signal \LEVEL_1_GEN.master_sda_reg_n_0\ : STD_LOGIC;
  signal \^new_rcv_dta\ : STD_LOGIC;
  signal SETUP_CNT_n_0 : STD_LOGIC;
  signal \^tx_under_prev\ : STD_LOGIC;
  signal aas_i_i_1_n_0 : STD_LOGIC;
  signal aas_i_i_2_n_0 : STD_LOGIC;
  signal al_i_i_1_n_0 : STD_LOGIC;
  signal al_i_i_2_n_0 : STD_LOGIC;
  signal al_prevent : STD_LOGIC;
  signal al_prevent_i_1_n_0 : STD_LOGIC;
  signal arb_lost : STD_LOGIC;
  signal arb_lost_i_1_n_0 : STD_LOGIC;
  signal \^arb_lost_reg_0\ : STD_LOGIC;
  signal bit_cnt_en : STD_LOGIC;
  signal bit_cnt_en0 : STD_LOGIC;
  signal bus_busy_d1 : STD_LOGIC;
  signal bus_busy_i_1_n_0 : STD_LOGIC;
  signal \clk_cnt_en1_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \clk_cnt_en1_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \clk_cnt_en1_inferred__2/i__carry_n_4\ : STD_LOGIC;
  signal \clk_cnt_en1_inferred__2/i__carry_n_5\ : STD_LOGIC;
  signal \clk_cnt_en1_inferred__2/i__carry_n_6\ : STD_LOGIC;
  signal \clk_cnt_en1_inferred__2/i__carry_n_7\ : STD_LOGIC;
  signal \cr_i[5]_i_3_n_0\ : STD_LOGIC;
  signal data_i2c_i0 : STD_LOGIC;
  signal detect_start : STD_LOGIC;
  signal detect_start_i_1_n_0 : STD_LOGIC;
  signal detect_stop_b : STD_LOGIC;
  signal detect_stop_b_i_1_n_0 : STD_LOGIC;
  signal detect_stop_b_reg_n_0 : STD_LOGIC;
  signal detect_stop_i_1_n_0 : STD_LOGIC;
  signal detect_stop_i_2_n_0 : STD_LOGIC;
  signal detect_stop_reg_n_0 : STD_LOGIC;
  signal dtc_i : STD_LOGIC;
  signal dtc_i_d1 : STD_LOGIC;
  signal dtc_i_d2 : STD_LOGIC;
  signal dtre_d1 : STD_LOGIC;
  signal gen_start : STD_LOGIC;
  signal gen_start_i_1_n_0 : STD_LOGIC;
  signal gen_stop : STD_LOGIC;
  signal gen_stop_d1 : STD_LOGIC;
  signal gen_stop_i_1_n_0 : STD_LOGIC;
  signal i2c_header_en : STD_LOGIC;
  signal i2c_header_en0 : STD_LOGIC;
  signal master_slave : STD_LOGIC;
  signal master_slave_i_1_n_0 : STD_LOGIC;
  signal msms_d1 : STD_LOGIC;
  signal msms_d10 : STD_LOGIC;
  signal msms_d1_i_2_n_0 : STD_LOGIC;
  signal msms_d2 : STD_LOGIC;
  signal msms_rst_i : STD_LOGIC;
  signal msms_rst_i_i_1_n_0 : STD_LOGIC;
  signal msms_rst_i_i_2_n_0 : STD_LOGIC;
  signal msms_rst_i_i_3_n_0 : STD_LOGIC;
  signal \^rdy_new_xmt_i\ : STD_LOGIC;
  signal rdy_new_xmt_i_i_1_n_0 : STD_LOGIC;
  signal rdy_new_xmt_i_i_2_n_0 : STD_LOGIC;
  signal rdy_new_xmt_i_i_3_n_0 : STD_LOGIC;
  signal ro_prev_d1 : STD_LOGIC;
  signal rsta_d1 : STD_LOGIC;
  signal rsta_tx_under_prev : STD_LOGIC;
  signal rsta_tx_under_prev_i_1_n_0 : STD_LOGIC;
  signal scl_cout_reg : STD_LOGIC;
  signal scl_cout_reg0 : STD_LOGIC;
  signal scl_cout_reg_i_2_n_0 : STD_LOGIC;
  signal scl_f_edg_d1 : STD_LOGIC;
  signal scl_f_edg_d2 : STD_LOGIC;
  signal scl_f_edg_d3 : STD_LOGIC;
  signal scl_falling_edge : STD_LOGIC;
  signal scl_falling_edge0 : STD_LOGIC;
  signal \^scl_rin_d1\ : STD_LOGIC;
  signal scl_rising_edge : STD_LOGIC;
  signal sda_cout : STD_LOGIC;
  signal sda_cout_reg : STD_LOGIC;
  signal sda_cout_reg_i_1_n_0 : STD_LOGIC;
  signal sda_cout_reg_i_2_n_0 : STD_LOGIC;
  signal sda_cout_reg_i_3_n_0 : STD_LOGIC;
  signal sda_cout_reg_i_5_n_0 : STD_LOGIC;
  signal sda_rin_d1 : STD_LOGIC;
  signal sda_sample : STD_LOGIC;
  signal sda_sample_i_1_n_0 : STD_LOGIC;
  signal sda_setup : STD_LOGIC;
  signal sda_setup_i_1_n_0 : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 7 to 7 );
  signal shift_reg_en : STD_LOGIC;
  signal shift_reg_en0 : STD_LOGIC;
  signal shift_reg_en_i_2_n_0 : STD_LOGIC;
  signal \^shift_reg_ld\ : STD_LOGIC;
  signal shift_reg_ld0 : STD_LOGIC;
  signal shift_reg_ld_d1 : STD_LOGIC;
  signal slave_sda_reg_n_0 : STD_LOGIC;
  signal sm_stop_i_1_n_0 : STD_LOGIC;
  signal sm_stop_i_2_n_0 : STD_LOGIC;
  signal sm_stop_i_3_n_0 : STD_LOGIC;
  signal sm_stop_reg_n_0 : STD_LOGIC;
  signal \^srw_i_reg_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state0 : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^stop_scl_reg\ : STD_LOGIC;
  signal stop_scl_reg_i_1_n_0 : STD_LOGIC;
  signal stop_scl_reg_i_2_n_0 : STD_LOGIC;
  signal stop_scl_reg_i_4_n_0 : STD_LOGIC;
  signal tx_under_prev_d1 : STD_LOGIC;
  signal tx_under_prev_i0 : STD_LOGIC;
  signal tx_under_prev_i_i_1_n_0 : STD_LOGIC;
  signal txer_edge_i_1_n_0 : STD_LOGIC;
  signal txer_edge_i_2_n_0 : STD_LOGIC;
  signal txer_i_i_1_n_0 : STD_LOGIC;
  signal txer_i_reg_n_0 : STD_LOGIC;
  signal \NLW_clk_cnt_en1_inferred__2/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_clk_cnt_en1_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AckDataState_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of EarlyAckDataState_i_2 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of EarlyAckHdr_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[0]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[2]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[9]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[9]_i_6\ : label is "soft_lutpair20";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[0]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[1]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[2]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[3]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[4]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[5]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[6]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[7]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[8]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_scl_state_reg[9]\ : label is "start_edge:0000001000,scl_low_edge:0000010000,start:0000000100,start_wait:0000000010,scl_idle:0000000001,scl_high:0010000000,stop_wait:1000000000,scl_high_edge:0001000000,stop_edge:0100000000,scl_low:0000100000";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_10\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair23";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ack_header:110,wait_ack:001,header:101,ack_data:011,rcv_data:100,xmit_data:010,idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ack_header:110,wait_ack:001,header:101,ack_data:011,rcv_data:100,xmit_data:010,idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "ack_header:110,wait_ack:001,header:101,ack_data:011,rcv_data:100,xmit_data:010,idle:000";
  attribute SOFT_HLUTNM of \IIC2Bus_IntrEvent[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \IIC2Bus_IntrEvent[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of aas_i_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of aas_i_i_2 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of al_i_i_2 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of bit_cnt_en_i_1 : label is "soft_lutpair25";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \clk_cnt_en1_inferred__2/i__carry\ : label is 11;
  attribute SOFT_HLUTNM of i2c_header_en_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of master_slave_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of msms_rst_i_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of msms_rst_i_i_3 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of rdy_new_xmt_i_i_2 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of rdy_new_xmt_i_i_3 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of scl_cout_reg_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sda_cout_reg_i_3 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of sm_stop_i_3 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of stop_scl_reg_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of stop_scl_reg_i_4 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of txer_edge_i_2 : label is "soft_lutpair28";
begin
  Aas <= \^aas\;
  Bb <= \^bb\;
  D(3 downto 0) <= \^d\(3 downto 0);
  \FSM_onehot_scl_state_reg[6]_0\(4 downto 0) <= \^fsm_onehot_scl_state_reg[6]_0\(4 downto 0);
  New_rcv_dta <= \^new_rcv_dta\;
  Tx_under_prev <= \^tx_under_prev\;
  arb_lost_reg_0 <= \^arb_lost_reg_0\;
  rdy_new_xmt_i <= \^rdy_new_xmt_i\;
  scl_rin_d1 <= \^scl_rin_d1\;
  shift_reg_ld <= \^shift_reg_ld\;
  srw_i_reg_0(1 downto 0) <= \^srw_i_reg_0\(1 downto 0);
  stop_scl_reg <= \^stop_scl_reg\;
AckDataState_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => AckDataState_i_1_n_0
    );
AckDataState_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AckDataState_i_1_n_0,
      Q => ackDataState,
      R => \q_int_reg[0]_2\
    );
BITCNT: entity work.\design_1_axi_iic_0_0_upcnt_n__parameterized0\
     port map (
      E(0) => BITCNT_n_0,
      EarlyAckDataState0 => EarlyAckDataState0,
      EarlyAckDataState_reg => AckDataState_i_1_n_0,
      EarlyAckDataState_reg_0 => EarlyAckDataState_i_2_n_0,
      \FSM_sequential_state_reg[0]\ => \FSM_sequential_state[2]_i_5_n_0\,
      Q(2 downto 0) => \state__0\(2 downto 0),
      bit_cnt_en => bit_cnt_en,
      detect_start => detect_start,
      dtc_i => dtc_i,
      \q_int_reg[0]_0\ => \q_int_reg[0]_2\,
      \q_int_reg[1]_0\ => BITCNT_n_2,
      s_axi_aclk => s_axi_aclk,
      scl_falling_edge => scl_falling_edge
    );
CLKCNT: entity work.design_1_axi_iic_0_0_upcnt_n
     port map (
      CO(0) => \clk_cnt_en1_inferred__2/i__carry_n_2\,
      DI(5) => CLKCNT_n_19,
      DI(4) => CLKCNT_n_20,
      DI(3) => CLKCNT_n_21,
      DI(2) => CLKCNT_n_22,
      DI(1) => CLKCNT_n_23,
      DI(0) => CLKCNT_n_24,
      \FSM_onehot_scl_state[9]_i_10\(2 downto 0) => \FSM_onehot_scl_state[9]_i_10\(2 downto 0),
      \FSM_onehot_scl_state[9]_i_7\(10 downto 0) => \FSM_onehot_scl_state[9]_i_7\(10 downto 0),
      Q(10 downto 0) => \q_int_reg[0]\(10 downto 0),
      S(4) => CLKCNT_n_14,
      S(3) => CLKCNT_n_15,
      S(2) => CLKCNT_n_16,
      S(1) => CLKCNT_n_17,
      S(0) => CLKCNT_n_18,
      arb_lost => arb_lost,
      arb_lost_reg => \^arb_lost_reg_0\,
      \q_int_reg[0]_0\ => \q_int_reg[0]_0\,
      \q_int_reg[0]_1\ => \q_int_reg[0]_3\,
      \q_int_reg[0]_2\(9) => \FSM_onehot_scl_state_reg_n_0_[9]\,
      \q_int_reg[0]_2\(8) => \FSM_onehot_scl_state_reg_n_0_[8]\,
      \q_int_reg[0]_2\(7) => \FSM_onehot_scl_state_reg_n_0_[7]\,
      \q_int_reg[0]_2\(6 downto 3) => \^fsm_onehot_scl_state_reg[6]_0\(4 downto 1),
      \q_int_reg[0]_2\(2) => detect_stop_b,
      \q_int_reg[0]_2\(1) => \^fsm_onehot_scl_state_reg[6]_0\(0),
      \q_int_reg[0]_2\(0) => \FSM_onehot_scl_state_reg_n_0_[0]\,
      \q_int_reg[0]_3\ => \q_int_reg[0]_4\,
      \q_int_reg[0]_4\ => \q_int_reg[0]_5\,
      \q_int_reg[0]_5\ => detect_stop_b_reg_n_0,
      \q_int_reg[10]_0\ => \q_int_reg[0]_2\,
      \q_int_reg[3]_0\ => \q_int_reg[3]\,
      s_axi_aclk => s_axi_aclk,
      scndry_out => scndry_out
    );
EarlyAckDataState_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => EarlyAckDataState_i_2_n_0
    );
EarlyAckDataState_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => EarlyAckDataState0,
      Q => earlyAckDataState,
      R => \q_int_reg[0]_2\
    );
EarlyAckHdr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => scl_f_edg_d3,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      O => EarlyAckHdr0
    );
EarlyAckHdr_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => EarlyAckHdr0,
      Q => earlyAckHdr,
      R => \q_int_reg[0]_2\
    );
\FSM_onehot_scl_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg[0]_0\,
      I1 => \FSM_onehot_scl_state_reg_n_0_[9]\,
      I2 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_scl_state[0]_i_2_n_0\,
      I4 => arb_lost,
      I5 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      O => \FSM_onehot_scl_state[0]_i_1_n_0\
    );
\FSM_onehot_scl_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bb\,
      I1 => gen_start,
      I2 => master_slave,
      O => \FSM_onehot_scl_state[0]_i_2_n_0\
    );
\FSM_onehot_scl_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555D5555555"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg[1]_0\,
      I1 => \FSM_onehot_scl_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I3 => master_slave,
      I4 => gen_start,
      I5 => \^bb\,
      O => \FSM_onehot_scl_state[1]_i_1_n_0\
    );
\FSM_onehot_scl_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000080"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I1 => master_slave,
      I2 => gen_start,
      I3 => \^bb\,
      I4 => \FSM_onehot_scl_state[2]_i_2_n_0\,
      I5 => \FSM_onehot_scl_state[2]_i_3_n_0\,
      O => \FSM_onehot_scl_state[2]_i_1_n_0\
    );
\FSM_onehot_scl_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F400000000"
    )
        port map (
      I0 => \clk_cnt_en1_inferred__2/i__carry_n_2\,
      I1 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I2 => \^fsm_onehot_scl_state_reg[6]_0\(0),
      I3 => \FSM_onehot_scl_state_reg[0]_0\,
      I4 => \FSM_onehot_scl_state[2]_i_4_n_0\,
      I5 => detect_stop_b_reg_n_0,
      O => \FSM_onehot_scl_state[2]_i_2_n_0\
    );
\FSM_onehot_scl_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => Q(3),
      I1 => \^arb_lost_reg_0\,
      I2 => \data_int_reg[0]\,
      I3 => detect_stop_b,
      I4 => \^fsm_onehot_scl_state_reg[6]_0\(0),
      I5 => \FSM_onehot_scl_state_reg[0]_0\,
      O => \FSM_onehot_scl_state[2]_i_3_n_0\
    );
\FSM_onehot_scl_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_scl_state[2]_i_5_n_0\,
      I1 => \^fsm_onehot_scl_state_reg[6]_0\(3),
      I2 => \^fsm_onehot_scl_state_reg[6]_0\(1),
      I3 => detect_stop_b,
      I4 => \FSM_onehot_scl_state_reg_n_0_[9]\,
      I5 => \^fsm_onehot_scl_state_reg[6]_0\(2),
      O => \FSM_onehot_scl_state[2]_i_4_n_0\
    );
\FSM_onehot_scl_state[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_scl_state_reg_n_0_[8]\,
      I2 => \^fsm_onehot_scl_state_reg[6]_0\(4),
      O => \FSM_onehot_scl_state[2]_i_5_n_0\
    );
\FSM_onehot_scl_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg[3]_0\,
      I1 => \^fsm_onehot_scl_state_reg[6]_0\(1),
      I2 => \data_int_reg[0]\,
      I3 => detect_stop_b,
      O => \FSM_onehot_scl_state[3]_i_1_n_0\
    );
\FSM_onehot_scl_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => scndry_out,
      I1 => \^fsm_onehot_scl_state_reg[6]_0\(4),
      I2 => \FSM_onehot_scl_state_reg[6]_1\,
      I3 => \^fsm_onehot_scl_state_reg[6]_0\(3),
      O => \FSM_onehot_scl_state[6]_i_1_n_0\
    );
\FSM_onehot_scl_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400FFFF04000400"
    )
        port map (
      I0 => Q(3),
      I1 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      I2 => arb_lost,
      I3 => \^stop_scl_reg\,
      I4 => \data_int_reg[0]\,
      I5 => \FSM_onehot_scl_state_reg_n_0_[8]\,
      O => \FSM_onehot_scl_state[8]_i_1_n_0\
    );
\FSM_onehot_scl_state[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFCFC"
    )
        port map (
      I0 => \q_int_reg[0]_4\,
      I1 => \FSM_onehot_scl_state[9]_i_5_n_0\,
      I2 => \FSM_onehot_scl_state[9]_i_6_n_0\,
      I3 => arb_lost,
      I4 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      I5 => \^fsm_onehot_scl_state_reg[6]_0\(1),
      O => \FSM_onehot_scl_state[9]_i_2_n_0\
    );
\FSM_onehot_scl_state[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg[0]_0\,
      I1 => \FSM_onehot_scl_state_reg_n_0_[9]\,
      I2 => \FSM_onehot_scl_state_reg_n_0_[8]\,
      I3 => \data_int_reg[0]\,
      O => \FSM_onehot_scl_state[9]_i_3_n_0\
    );
\FSM_onehot_scl_state[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I1 => \^fsm_onehot_scl_state_reg[6]_0\(3),
      I2 => detect_stop_b,
      I3 => \FSM_onehot_scl_state_reg_n_0_[9]\,
      I4 => \^fsm_onehot_scl_state_reg[6]_0\(2),
      I5 => \^fsm_onehot_scl_state_reg[6]_0\(0),
      O => \FSM_onehot_scl_state[9]_i_5_n_0\
    );
\FSM_onehot_scl_state[9]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fsm_onehot_scl_state_reg[6]_0\(4),
      I1 => \FSM_onehot_scl_state_reg_n_0_[8]\,
      O => \FSM_onehot_scl_state[9]_i_6_n_0\
    );
\FSM_onehot_scl_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_scl_state[9]_i_2_n_0\,
      D => \FSM_onehot_scl_state[0]_i_1_n_0\,
      Q => \FSM_onehot_scl_state_reg_n_0_[0]\,
      S => \q_int_reg[0]_2\
    );
\FSM_onehot_scl_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_scl_state[9]_i_2_n_0\,
      D => \FSM_onehot_scl_state[1]_i_1_n_0\,
      Q => \^fsm_onehot_scl_state_reg[6]_0\(0),
      R => \q_int_reg[0]_2\
    );
\FSM_onehot_scl_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_scl_state[9]_i_2_n_0\,
      D => \FSM_onehot_scl_state[2]_i_1_n_0\,
      Q => detect_stop_b,
      R => \q_int_reg[0]_2\
    );
\FSM_onehot_scl_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_scl_state[9]_i_2_n_0\,
      D => \FSM_onehot_scl_state[3]_i_1_n_0\,
      Q => \^fsm_onehot_scl_state_reg[6]_0\(1),
      R => \q_int_reg[0]_2\
    );
\FSM_onehot_scl_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_scl_state[9]_i_2_n_0\,
      D => \FSM_onehot_scl_state_reg[7]_0\(0),
      Q => \^fsm_onehot_scl_state_reg[6]_0\(2),
      R => \q_int_reg[0]_2\
    );
\FSM_onehot_scl_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_scl_state[9]_i_2_n_0\,
      D => \FSM_onehot_scl_state_reg[7]_0\(1),
      Q => \^fsm_onehot_scl_state_reg[6]_0\(3),
      R => \q_int_reg[0]_2\
    );
\FSM_onehot_scl_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_scl_state[9]_i_2_n_0\,
      D => \FSM_onehot_scl_state[6]_i_1_n_0\,
      Q => \^fsm_onehot_scl_state_reg[6]_0\(4),
      R => \q_int_reg[0]_2\
    );
\FSM_onehot_scl_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_scl_state[9]_i_2_n_0\,
      D => \FSM_onehot_scl_state_reg[7]_0\(2),
      Q => \FSM_onehot_scl_state_reg_n_0_[7]\,
      R => \q_int_reg[0]_2\
    );
\FSM_onehot_scl_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_scl_state[9]_i_2_n_0\,
      D => \FSM_onehot_scl_state[8]_i_1_n_0\,
      Q => \FSM_onehot_scl_state_reg_n_0_[8]\,
      R => \q_int_reg[0]_2\
    );
\FSM_onehot_scl_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_scl_state[9]_i_2_n_0\,
      D => \FSM_onehot_scl_state[9]_i_3_n_0\,
      Q => \FSM_onehot_scl_state_reg_n_0_[9]\,
      R => \q_int_reg[0]_2\
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E000EFF0F0F0F"
    )
        port map (
      I0 => detect_start,
      I1 => \FSM_sequential_state[2]_i_8_n_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => Ro_prev,
      I5 => \state__0\(2),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBAAAAFFFBFFFB"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => sda_sample,
      I3 => arb_lost,
      I4 => detect_start,
      I5 => \state__0\(2),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C80"
    )
        port map (
      I0 => Ro_prev,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => detect_stop_reg_n_0,
      I1 => Q(0),
      O => state0
    );
\FSM_sequential_state[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => arb_lost,
      I1 => sda_sample,
      O => \FSM_sequential_state[2]_i_10_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => ro_prev_d1,
      I1 => Ro_prev,
      I2 => scl_f_edg_d2,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04C0"
    )
        port map (
      I0 => Ro_prev,
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => master_slave,
      I1 => \FSM_sequential_state_reg[1]_0\,
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
\FSM_sequential_state[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => detect_start,
      O => \FSM_sequential_state[2]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => state0
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => I2CHEADER_REG_n_2,
      Q => \state__0\(1),
      R => state0
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => I2CHEADER_REG_n_1,
      Q => \state__0\(2),
      R => state0
    );
I2CDATA_REG: entity work.design_1_axi_iic_0_0_shift8
     port map (
      \LEVEL_1_GEN.master_sda_reg\ => \LEVEL_1_GEN.master_sda_reg_0\,
      \LEVEL_1_GEN.master_sda_reg_0\ => \^tx_under_prev\,
      Q(7) => shift_reg(7),
      Q(6) => I2CDATA_REG_n_2,
      Q(5) => I2CDATA_REG_n_3,
      Q(4) => I2CDATA_REG_n_4,
      Q(3) => I2CDATA_REG_n_5,
      Q(2) => I2CDATA_REG_n_6,
      Q(1) => I2CDATA_REG_n_7,
      Q(0) => I2CDATA_REG_n_8,
      Tx_fifo_data_0(6 downto 0) => Tx_fifo_data_0(6 downto 0),
      \data_int_reg[0]_0\(0) => \data_int_reg[0]_0\(0),
      \data_int_reg[1]_0\ => \^shift_reg_ld\,
      \data_int_reg[7]_0\ => I2CDATA_REG_n_0,
      \data_int_reg[7]_1\ => \q_int_reg[0]_2\,
      s_axi_aclk => s_axi_aclk,
      shift_reg_en => shift_reg_en,
      slave_sda_reg => \FSM_sequential_state_reg[1]_0\,
      slave_sda_reg_0(2 downto 0) => \state__0\(2 downto 0),
      tx_under_prev_i_reg => I2CDATA_REG_n_9
    );
I2CHEADER_REG: entity work.design_1_axi_iic_0_0_shift8_1
     port map (
      D(1) => I2CHEADER_REG_n_1,
      D(0) => I2CHEADER_REG_n_2,
      E(0) => i2c_header_en,
      \FSM_sequential_state_reg[1]\ => \FSM_sequential_state[1]_i_2_n_0\,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state[1]_i_3_n_0\,
      \FSM_sequential_state_reg[1]_1\ => \FSM_sequential_state_reg[1]_0\,
      \FSM_sequential_state_reg[1]_2\ => aas_i_i_2_n_0,
      \FSM_sequential_state_reg[2]\ => \FSM_sequential_state[2]_i_6_n_0\,
      \FSM_sequential_state_reg[2]_0\ => \FSM_sequential_state[2]_i_8_n_0\,
      \FSM_sequential_state_reg[2]_1\ => \FSM_sequential_state[2]_i_9_n_0\,
      \FSM_sequential_state_reg[2]_2\ => \FSM_sequential_state[2]_i_10_n_0\,
      Q(2 downto 0) => \state__0\(2 downto 0),
      abgc_i_reg(2) => Q(4),
      abgc_i_reg(1) => Q(2),
      abgc_i_reg(0) => Q(0),
      abgc_i_reg_0 => detect_stop_reg_n_0,
      arb_lost => arb_lost,
      \data_int_reg[0]_0\ => I2CHEADER_REG_n_11,
      \data_int_reg[0]_1\ => \q_int_reg[0]_2\,
      \data_int_reg[0]_2\ => \data_int_reg[0]\,
      \data_int_reg[7]_0\(6 downto 0) => \data_int_reg[7]\(6 downto 0),
      detect_start => detect_start,
      detect_start_reg => I2CHEADER_REG_n_3,
      master_slave => master_slave,
      s_axi_aclk => s_axi_aclk,
      sda_sample => sda_sample,
      shift_reg_ld0 => shift_reg_ld0,
      shift_reg_ld_reg => \^tx_under_prev\,
      srw_i_reg(1 downto 0) => \^srw_i_reg_0\(1 downto 0)
    );
\IIC2Bus_IntrEvent[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bb\,
      O => \^d\(1)
    );
\IIC2Bus_IntrEvent[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aas\,
      O => \^d\(0)
    );
\LEVEL_1_GEN.master_sda_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CDATA_REG_n_9,
      Q => \LEVEL_1_GEN.master_sda_reg_n_0\,
      S => \q_int_reg[0]_2\
    );
\RD_FIFO_CNTRL.Rc_fifo_wr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^new_rcv_dta\,
      I1 => new_rcv_dta_d1,
      O => Rc_fifo_wr0
    );
SETUP_CNT: entity work.design_1_axi_iic_0_0_upcnt_n_2
     port map (
      Q(10 downto 0) => \q_int_reg[0]_1\(10 downto 0),
      gen_stop => gen_stop,
      gen_stop_d1 => gen_stop_d1,
      \q_int[0]_i_3_0\(0) => Q(3),
      \q_int[0]_i_3_1\ => \^tx_under_prev\,
      \q_int_reg[0]_0\ => \q_int_reg[0]_2\,
      \q_int_reg[10]_0\ => \data_int_reg[0]\,
      rsta_d1 => rsta_d1,
      s_axi_aclk => s_axi_aclk,
      sda_rin_d1 => sda_rin_d1,
      sda_rin_d1_reg => SETUP_CNT_n_0,
      sda_setup => sda_setup,
      tx_under_prev_d1 => tx_under_prev_d1
    );
aas_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A80000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_0\,
      I1 => aas_i_i_2_n_0,
      I2 => \^aas\,
      I3 => detect_stop_reg_n_0,
      I4 => Q(0),
      O => aas_i_i_1_n_0
    );
aas_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => aas_i_i_2_n_0
    );
aas_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => aas_i_i_1_n_0,
      Q => \^aas\,
      R => '0'
    );
abgc_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CHEADER_REG_n_3,
      Q => \^srw_i_reg_0\(0),
      R => '0'
    );
al_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0E0EEE0E0"
    )
        port map (
      I0 => Q(3),
      I1 => master_slave,
      I2 => al_i_i_2_n_0,
      I3 => al_prevent,
      I4 => detect_stop_reg_n_0,
      I5 => sm_stop_reg_n_0,
      O => al_i_i_1_n_0
    );
al_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => master_slave,
      I1 => arb_lost,
      I2 => bus_busy_d1,
      I3 => gen_start,
      O => al_i_i_2_n_0
    );
al_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_i_1_n_0,
      Q => \^d\(3),
      R => \q_int_reg[0]_2\
    );
al_prevent_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => detect_start,
      I1 => gen_stop,
      I2 => sm_stop_reg_n_0,
      I3 => al_prevent,
      O => al_prevent_i_1_n_0
    );
al_prevent_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_prevent_i_1_n_0,
      Q => al_prevent,
      R => \q_int_reg[0]_2\
    );
arb_lost_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AEA2A2A"
    )
        port map (
      I0 => arb_lost,
      I1 => master_slave,
      I2 => msms_rst_i_i_2_n_0,
      I3 => \data_int_reg[0]\,
      I4 => sda_cout_reg,
      I5 => msms_rst_i_i_3_n_0,
      O => arb_lost_i_1_n_0
    );
arb_lost_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => arb_lost_i_1_n_0,
      Q => arb_lost,
      R => '0'
    );
bit_cnt_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0488"
    )
        port map (
      I0 => \state__0\(2),
      I1 => scl_falling_edge,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => bit_cnt_en0
    );
bit_cnt_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bit_cnt_en0,
      Q => bit_cnt_en,
      R => \q_int_reg[0]_2\
    );
bus_busy_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bb\,
      Q => bus_busy_d1,
      R => \q_int_reg[0]_2\
    );
bus_busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \^bb\,
      I1 => detect_start,
      I2 => Q(0),
      I3 => detect_stop_reg_n_0,
      O => bus_busy_i_1_n_0
    );
bus_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus_busy_i_1_n_0,
      Q => \^bb\,
      R => '0'
    );
\clk_cnt_en1_inferred__2/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_clk_cnt_en1_inferred__2/i__carry_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \clk_cnt_en1_inferred__2/i__carry_n_2\,
      CO(4) => \clk_cnt_en1_inferred__2/i__carry_n_3\,
      CO(3) => \clk_cnt_en1_inferred__2/i__carry_n_4\,
      CO(2) => \clk_cnt_en1_inferred__2/i__carry_n_5\,
      CO(1) => \clk_cnt_en1_inferred__2/i__carry_n_6\,
      CO(0) => \clk_cnt_en1_inferred__2/i__carry_n_7\,
      DI(7 downto 6) => B"00",
      DI(5) => CLKCNT_n_19,
      DI(4) => CLKCNT_n_20,
      DI(3) => CLKCNT_n_21,
      DI(2) => CLKCNT_n_22,
      DI(1) => CLKCNT_n_23,
      DI(0) => CLKCNT_n_24,
      O(7 downto 0) => \NLW_clk_cnt_en1_inferred__2/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => S(0),
      S(4) => CLKCNT_n_14,
      S(3) => CLKCNT_n_15,
      S(2) => CLKCNT_n_16,
      S(1) => CLKCNT_n_17,
      S(0) => CLKCNT_n_18
    );
\cr_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBBB888B"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => E(0),
      I2 => \^bb\,
      I3 => \cr_i_reg[5]\,
      I4 => Q(1),
      I5 => \cr_i[5]_i_3_n_0\,
      O => \s_axi_wdata[2]\(0)
    );
\cr_i[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => Tx_data_exists_sgl,
      I1 => dynamic_MSMS(0),
      I2 => \cr_i_reg[5]_0\,
      I3 => msms_rst_i,
      I4 => sm_stop_reg_n_0,
      I5 => rxCntDone,
      O => \cr_i[5]_i_3_n_0\
    );
\data_i2c_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_8,
      Q => \data_i2c_i_reg[7]_0\(0),
      R => \q_int_reg[0]_2\
    );
\data_i2c_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_7,
      Q => \data_i2c_i_reg[7]_0\(1),
      R => \q_int_reg[0]_2\
    );
\data_i2c_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_6,
      Q => \data_i2c_i_reg[7]_0\(2),
      R => \q_int_reg[0]_2\
    );
\data_i2c_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_5,
      Q => \data_i2c_i_reg[7]_0\(3),
      R => \q_int_reg[0]_2\
    );
\data_i2c_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_4,
      Q => \data_i2c_i_reg[7]_0\(4),
      R => \q_int_reg[0]_2\
    );
\data_i2c_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_3,
      Q => \data_i2c_i_reg[7]_0\(5),
      R => \q_int_reg[0]_2\
    );
\data_i2c_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_2,
      Q => \data_i2c_i_reg[7]_0\(6),
      R => \q_int_reg[0]_2\
    );
\data_i2c_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => shift_reg(7),
      Q => \data_i2c_i_reg[7]_0\(7),
      R => \q_int_reg[0]_2\
    );
detect_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8A008000000000"
    )
        port map (
      I0 => rdy_new_xmt_i_i_3_n_0,
      I1 => scndry_out,
      I2 => sda_rin_d1,
      I3 => \data_int_reg[0]\,
      I4 => detect_start,
      I5 => Q(0),
      O => detect_start_i_1_n_0
    );
detect_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => detect_start_i_1_n_0,
      Q => detect_start,
      R => '0'
    );
detect_stop_b_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3A330A00"
    )
        port map (
      I0 => scndry_out,
      I1 => detect_stop_b,
      I2 => sda_rin_d1,
      I3 => \data_int_reg[0]\,
      I4 => detect_stop_b_reg_n_0,
      O => detect_stop_b_i_1_n_0
    );
detect_stop_b_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => detect_stop_b_i_1_n_0,
      Q => detect_stop_b_reg_n_0,
      R => detect_stop_i_1_n_0
    );
detect_stop_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => detect_start,
      I1 => Q(0),
      O => detect_stop_i_1_n_0
    );
detect_stop_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF20EFEF20202020"
    )
        port map (
      I0 => scndry_out,
      I1 => sda_rin_d1,
      I2 => \data_int_reg[0]\,
      I3 => msms_d2,
      I4 => msms_d1,
      I5 => detect_stop_reg_n_0,
      O => detect_stop_i_2_n_0
    );
detect_stop_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => detect_stop_i_2_n_0,
      Q => detect_stop_reg_n_0,
      R => detect_stop_i_1_n_0
    );
dtc_i_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtc_i,
      Q => dtc_i_d1,
      R => \q_int_reg[0]_2\
    );
dtc_i_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtc_i_d1,
      Q => dtc_i_d2,
      R => \q_int_reg[0]_2\
    );
dtc_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => BITCNT_n_2,
      Q => dtc_i,
      R => \q_int_reg[0]_2\
    );
dtre_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sr_i(0),
      Q => dtre_d1,
      R => \q_int_reg[0]_2\
    );
gen_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => detect_start,
      I1 => msms_d2,
      I2 => msms_d1,
      I3 => gen_start,
      O => gen_start_i_1_n_0
    );
gen_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_start_i_1_n_0,
      Q => gen_start,
      R => \q_int_reg[0]_2\
    );
gen_stop_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_stop,
      Q => gen_stop_d1,
      R => \q_int_reg[0]_2\
    );
gen_stop_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55750030"
    )
        port map (
      I0 => detect_stop_reg_n_0,
      I1 => msms_d1,
      I2 => msms_d2,
      I3 => arb_lost,
      I4 => gen_stop,
      O => gen_stop_i_1_n_0
    );
gen_stop_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_stop_i_1_n_0,
      Q => gen_stop,
      R => \q_int_reg[0]_2\
    );
i2c_header_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => scl_rising_edge,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      O => i2c_header_en0
    );
i2c_header_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => i2c_header_en0,
      Q => i2c_header_en,
      R => \q_int_reg[0]_2\
    );
master_slave_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F400000"
    )
        port map (
      I0 => arb_lost,
      I1 => master_slave,
      I2 => \^bb\,
      I3 => msms_d1,
      I4 => Q(0),
      O => master_slave_i_1_n_0
    );
master_slave_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => master_slave_i_1_n_0,
      Q => master_slave,
      R => '0'
    );
msms_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => msms_d1_i_2_n_0,
      I1 => msms_rst_i,
      O => msms_d10
    );
msms_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAABAAABA"
    )
        port map (
      I0 => Q(1),
      I1 => txer_i_reg_n_0,
      I2 => msms_d1,
      I3 => Msms_set,
      I4 => dtc_i_d2,
      I5 => dtc_i_d1,
      O => msms_d1_i_2_n_0
    );
msms_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_d10,
      Q => msms_d1,
      R => \q_int_reg[0]_2\
    );
msms_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_d1,
      Q => msms_d2,
      R => \q_int_reg[0]_2\
    );
msms_rst_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008FF0800"
    )
        port map (
      I0 => msms_rst_i_i_2_n_0,
      I1 => sda_cout_reg,
      I2 => \data_int_reg[0]\,
      I3 => master_slave,
      I4 => msms_rst_i,
      I5 => msms_rst_i_i_3_n_0,
      O => msms_rst_i_i_1_n_0
    );
msms_rst_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0820"
    )
        port map (
      I0 => scl_rising_edge,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      O => msms_rst_i_i_2_n_0
    );
msms_rst_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I2 => Q(0),
      O => msms_rst_i_i_3_n_0
    );
msms_rst_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_rst_i_i_1_n_0,
      Q => msms_rst_i,
      R => '0'
    );
new_rcv_dta_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => scl_falling_edge,
      I4 => Ro_prev,
      O => data_i2c_i0
    );
new_rcv_dta_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => data_i2c_i0,
      Q => \^new_rcv_dta\,
      R => \q_int_reg[0]_2\
    );
rdy_new_xmt_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F222F2F20222020"
    )
        port map (
      I0 => shift_reg_ld_d1,
      I1 => \^shift_reg_ld\,
      I2 => rdy_new_xmt_i_i_2_n_0,
      I3 => rdy_new_xmt_i_i_3_n_0,
      I4 => Q(1),
      I5 => \^rdy_new_xmt_i\,
      O => rdy_new_xmt_i_i_1_n_0
    );
rdy_new_xmt_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => rdy_new_xmt_i_i_2_n_0
    );
rdy_new_xmt_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      O => rdy_new_xmt_i_i_3_n_0
    );
rdy_new_xmt_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdy_new_xmt_i_i_1_n_0,
      Q => \^rdy_new_xmt_i\,
      R => \q_int_reg[0]_2\
    );
ro_prev_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Ro_prev,
      Q => ro_prev_d1,
      R => \q_int_reg[0]_2\
    );
rsta_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => rsta_d1,
      R => \q_int_reg[0]_2\
    );
rsta_tx_under_prev_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FF2020"
    )
        port map (
      I0 => Q(3),
      I1 => rsta_d1,
      I2 => sr_i(0),
      I3 => dtre_d1,
      I4 => rsta_tx_under_prev,
      O => rsta_tx_under_prev_i_1_n_0
    );
rsta_tx_under_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rsta_tx_under_prev_i_1_n_0,
      Q => rsta_tx_under_prev,
      R => \q_int_reg[0]_2\
    );
scl_cout_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55545555"
    )
        port map (
      I0 => Ro_prev,
      I1 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_scl_state_reg_n_0_[8]\,
      I3 => \^fsm_onehot_scl_state_reg[6]_0\(4),
      I4 => scl_cout_reg_i_2_n_0,
      O => scl_cout_reg0
    );
scl_cout_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_scl_state_reg_n_0_[9]\,
      I2 => detect_stop_b,
      I3 => \^fsm_onehot_scl_state_reg[6]_0\(0),
      I4 => \^fsm_onehot_scl_state_reg[6]_0\(1),
      O => scl_cout_reg_i_2_n_0
    );
scl_cout_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_cout_reg0,
      Q => scl_cout_reg,
      S => \q_int_reg[0]_2\
    );
scl_f_edg_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_falling_edge,
      Q => scl_f_edg_d1,
      R => \q_int_reg[0]_2\
    );
scl_f_edg_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_f_edg_d1,
      Q => scl_f_edg_d2,
      R => \q_int_reg[0]_2\
    );
scl_f_edg_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_f_edg_d2,
      Q => scl_f_edg_d3,
      R => \q_int_reg[0]_2\
    );
scl_falling_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scl_rin_d1\,
      I1 => scndry_out,
      O => scl_falling_edge0
    );
scl_falling_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_falling_edge0,
      Q => scl_falling_edge,
      R => \q_int_reg[0]_2\
    );
scl_rin_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scndry_out,
      Q => \^scl_rin_d1\,
      R => '0'
    );
scl_rising_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_rising_edge0,
      Q => scl_rising_edge,
      R => \q_int_reg[0]_2\
    );
scl_t_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => rsta_tx_under_prev,
      I1 => scl_cout_reg,
      I2 => Ro_prev,
      I3 => sda_setup,
      O => scl_t
    );
sda_cout_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECCEFFFEECCE000"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      I1 => sda_cout_reg_i_2_n_0,
      I2 => sda_cout_reg_i_3_n_0,
      I3 => sda_cout_reg_reg_0,
      I4 => sda_cout_reg_i_5_n_0,
      I5 => sda_cout_reg,
      O => sda_cout_reg_i_1_n_0
    );
sda_cout_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I1 => \^fsm_onehot_scl_state_reg[6]_0\(4),
      I2 => \^fsm_onehot_scl_state_reg[6]_0\(3),
      I3 => Q(3),
      I4 => \LEVEL_1_GEN.master_sda_reg_n_0\,
      I5 => stop_scl_reg_i_2_n_0,
      O => sda_cout_reg_i_2_n_0
    );
sda_cout_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \^stop_scl_reg\,
      I1 => arb_lost,
      I2 => \FSM_onehot_scl_state_reg_n_0_[7]\,
      I3 => Q(3),
      O => sda_cout_reg_i_3_n_0
    );
sda_cout_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^fsm_onehot_scl_state_reg[6]_0\(4),
      I1 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I2 => \^fsm_onehot_scl_state_reg[6]_0\(3),
      I3 => detect_stop_b,
      O => sda_cout_reg_i_5_n_0
    );
sda_cout_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_cout_reg_i_1_n_0,
      Q => sda_cout_reg,
      S => \q_int_reg[0]_2\
    );
sda_rin_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \data_int_reg[0]\,
      Q => sda_rin_d1,
      R => '0'
    );
sda_sample_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_int_reg[0]\,
      I1 => scl_rising_edge,
      I2 => sda_sample,
      O => sda_sample_i_1_n_0
    );
sda_sample_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_sample_i_1_n_0,
      Q => sda_sample,
      R => \q_int_reg[0]_2\
    );
sda_setup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0DFFFF0D0D0D0D"
    )
        port map (
      I0 => SETUP_CNT_n_0,
      I1 => \^tx_under_prev\,
      I2 => scndry_out,
      I3 => sda_setup_reg_0,
      I4 => sda_setup_reg_1,
      I5 => sda_setup,
      O => sda_setup_i_1_n_0
    );
sda_setup_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_setup_i_1_n_0,
      Q => sda_setup,
      R => \q_int_reg[0]_2\
    );
sda_t_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFE0"
    )
        port map (
      I0 => arb_lost,
      I1 => sda_cout_reg,
      I2 => master_slave,
      I3 => slave_sda_reg_n_0,
      I4 => \^stop_scl_reg\,
      O => sda_t
    );
shift_reg_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => master_slave,
      I1 => scl_rising_edge,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      I5 => shift_reg_en_i_2_n_0,
      O => shift_reg_en0
    );
shift_reg_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000045000000400"
    )
        port map (
      I0 => detect_start,
      I1 => scl_rising_edge,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      I5 => scl_f_edg_d2,
      O => shift_reg_en_i_2_n_0
    );
shift_reg_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => shift_reg_en0,
      Q => shift_reg_en,
      R => \q_int_reg[0]_2\
    );
shift_reg_ld_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^shift_reg_ld\,
      Q => shift_reg_ld_d1,
      R => \q_int_reg[0]_2\
    );
shift_reg_ld_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => shift_reg_ld0,
      Q => \^shift_reg_ld\,
      R => \q_int_reg[0]_2\
    );
slave_sda_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CDATA_REG_n_0,
      Q => slave_sda_reg_n_0,
      S => \q_int_reg[0]_2\
    );
sm_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => sm_stop_reg_n_0,
      I1 => sm_stop_i_2_n_0,
      I2 => sm_stop_i_3_n_0,
      I3 => master_slave,
      I4 => Q(0),
      I5 => detect_stop_reg_n_0,
      O => sm_stop_i_1_n_0
    );
sm_stop_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF45FFFFFFFFFF"
    )
        port map (
      I0 => scl_f_edg_d2,
      I1 => Ro_prev,
      I2 => ro_prev_d1,
      I3 => sda_sample,
      I4 => arb_lost,
      I5 => master_slave,
      O => sm_stop_i_2_n_0
    );
sm_stop_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => sm_stop_i_3_n_0
    );
sm_stop_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sm_stop_i_1_n_0,
      Q => sm_stop_reg_n_0,
      R => '0'
    );
srw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CHEADER_REG_n_11,
      Q => \^srw_i_reg_0\(1),
      R => \q_int_reg[0]_2\
    );
stop_scl_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EFF0E0E0E00"
    )
        port map (
      I0 => \^fsm_onehot_scl_state_reg[6]_0\(4),
      I1 => \^fsm_onehot_scl_state_reg[6]_0\(3),
      I2 => stop_scl_reg_i_2_n_0,
      I3 => sda_cout,
      I4 => stop_scl_reg_i_4_n_0,
      I5 => \^stop_scl_reg\,
      O => stop_scl_reg_i_1_n_0
    );
stop_scl_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FF111F1"
    )
        port map (
      I0 => gen_stop,
      I1 => sm_stop_reg_n_0,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => stop_scl_reg_i_2_n_0
    );
stop_scl_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => sda_cout_reg_i_3_n_0,
      I1 => sda_cout_reg_reg_0,
      I2 => detect_stop_b,
      I3 => \^fsm_onehot_scl_state_reg[6]_0\(3),
      I4 => \FSM_onehot_scl_state_reg_n_0_[0]\,
      I5 => \^fsm_onehot_scl_state_reg[6]_0\(4),
      O => sda_cout
    );
stop_scl_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^fsm_onehot_scl_state_reg[6]_0\(0),
      I1 => \^fsm_onehot_scl_state_reg[6]_0\(2),
      I2 => \FSM_onehot_scl_state_reg_n_0_[9]\,
      O => stop_scl_reg_i_4_n_0
    );
stop_scl_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stop_scl_reg_i_1_n_0,
      Q => \^stop_scl_reg\,
      R => \q_int_reg[0]_2\
    );
tx_under_prev_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^tx_under_prev\,
      Q => tx_under_prev_d1,
      R => \q_int_reg[0]_2\
    );
tx_under_prev_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEAAAAA"
    )
        port map (
      I0 => tx_under_prev_i0,
      I1 => sr_i(0),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \^tx_under_prev\,
      O => tx_under_prev_i_i_1_n_0
    );
tx_under_prev_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000800"
    )
        port map (
      I0 => sm_stop_i_3_n_0,
      I1 => scl_falling_edge,
      I2 => gen_stop,
      I3 => sr_i(0),
      I4 => \^aas\,
      I5 => \^srw_i_reg_0\(1),
      O => tx_under_prev_i0
    );
tx_under_prev_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_under_prev_i_i_1_n_0,
      Q => \^tx_under_prev\,
      R => \q_int_reg[0]_2\
    );
txer_edge_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5C500C000000000"
    )
        port map (
      I0 => scl_f_edg_d2,
      I1 => sda_sample,
      I2 => scl_falling_edge,
      I3 => txer_edge_i_2_n_0,
      I4 => \^d\(2),
      I5 => Q(0),
      O => txer_edge_i_1_n_0
    );
txer_edge_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C7"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => txer_edge_i_2_n_0
    );
txer_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => txer_edge_i_1_n_0,
      Q => \^d\(2),
      R => '0'
    );
txer_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBFFFBF08800080"
    )
        port map (
      I0 => sda_sample,
      I1 => scl_falling_edge,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      I5 => txer_i_reg_n_0,
      O => txer_i_i_1_n_0
    );
txer_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => txer_i_i_1_n_0,
      Q => txer_i_reg_n_0,
      R => \q_int_reg[0]_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_slave_attachment is
  port (
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    is_write_reg_0 : out STD_LOGIC;
    is_read_reg_0 : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    \s_axi_wdata[5]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Bus2IIC_WrCE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \bus2ip_addr_i_reg[5]_0\ : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[31]\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AXI_IP2Bus_WrAck20 : out STD_LOGIC;
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    AXI_Bus2IP_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    \s_axi_rdata_i_reg[7]_i_7_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i_reg[7]_i_7_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i_reg[7]_i_6_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i_reg[7]_i_6_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i[7]_i_8_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_rdata_i[7]_i_8_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_axi_rdata_i[0]_i_2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \cr_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    firstDynStartSeen : in STD_LOGIC;
    \cr_i_reg[2]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_i_6_2\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Tx_addr_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[3]_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[0]_i_2_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_i_6_3\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_rdata_i[2]_i_2_0\ : in STD_LOGIC;
    \s_axi_rdata_i[3]_i_2_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in7_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_i_2_0\ : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]_i_2_0\ : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_i_2_0\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_i_2_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]_0\ : in STD_LOGIC;
    Rc_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    cr_txModeSelect_set : in STD_LOGIC;
    cr_txModeSelect_clr : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[3]_i_2_2\ : in STD_LOGIC;
    \s_axi_rdata_i[2]_i_2_1\ : in STD_LOGIC;
    \s_axi_rdata_i[1]_i_2_0\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_slave_attachment : entity is "slave_attachment";
end design_1_axi_iic_0_0_slave_attachment;

architecture STRUCTURE of design_1_axi_iic_0_0_slave_attachment is
  signal AXI_IP2Bus_Data : STD_LOGIC_VECTOR ( 24 to 31 );
  signal AXI_IP2Bus_Error : STD_LOGIC;
  signal Bus2IIC_Addr : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Intr2Bus_DBus : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \bus2ip_addr_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[1]\ : STD_LOGIC;
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal \^is_read_reg_0\ : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal \^is_write_reg_0\ : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_bresp_i : STD_LOGIC;
  signal \s_axi_bresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_11_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_12_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[7]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of is_read_i_2 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of is_write_i_1 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_5\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_12\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair54";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  is_read_reg_0 <= \^is_read_reg_0\;
  is_write_reg_0 <= \^is_write_reg_0\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F444F444F44"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => s_axi_wvalid,
      I5 => s_axi_awvalid,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => \^is_read_reg_0\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => \^is_write_reg_0\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^is_write_reg_0\,
      I1 => s_axi_bresp_i,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state[3]_i_2_n_0\,
      I4 => s_axi_rresp_i,
      I5 => \^is_read_reg_0\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^s_axi_rvalid_i_reg_0\,
      I1 => s_axi_rready,
      I2 => \^s_axi_bvalid_i_reg_0\,
      I3 => s_axi_bready,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => rst
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => clear
    );
I_DECODER: entity work.design_1_axi_iic_0_0_address_decoder
     port map (
      AXI_IP2Bus_Error => AXI_IP2Bus_Error,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      AXI_IP2Bus_WrAck20 => AXI_IP2Bus_WrAck20,
      AXI_IP2Bus_WrAck2_reg => bus2ip_rnw_i_reg_n_0,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      Bus2IIC_WrCE(11 downto 0) => Bus2IIC_WrCE(11 downto 0),
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      D(8) => Intr2Bus_DBus(0),
      D(7) => AXI_IP2Bus_Data(24),
      D(6) => AXI_IP2Bus_Data(25),
      D(5) => AXI_IP2Bus_Data(26),
      D(4) => AXI_IP2Bus_Data(27),
      D(3) => AXI_IP2Bus_Data(28),
      D(2) => AXI_IP2Bus_Data(29),
      D(1) => AXI_IP2Bus_Data(30),
      D(0) => AXI_IP2Bus_Data(31),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(8) => Bus2IIC_Addr(0),
      \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(7) => Bus2IIC_Addr(1),
      \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(6 downto 2) => \^q\(4 downto 0),
      \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(1) => \bus2ip_addr_i_reg_n_0_[1]\,
      \MEM_DECODE_GEN[2].cs_out_i_reg[2]_0\(0) => \bus2ip_addr_i_reg_n_0_[0]\,
      Q => start2,
      \bus2ip_addr_i_reg[5]\ => \bus2ip_addr_i_reg[5]_0\,
      \cr_i_reg[2]\(0) => \cr_i_reg[2]\(0),
      \cr_i_reg[2]_0\ => \cr_i_reg[2]_0\,
      \cr_i_reg[2]_1\(1) => \s_axi_rdata_i[7]_i_8_0\(3),
      \cr_i_reg[2]_1\(0) => \s_axi_rdata_i[7]_i_8_0\(1),
      cr_txModeSelect_clr => cr_txModeSelect_clr,
      cr_txModeSelect_set => cr_txModeSelect_set,
      firstDynStartSeen => firstDynStartSeen,
      gpo(0) => gpo(0),
      irpt_wrack => irpt_wrack,
      is_read_reg => \^is_read_reg_0\,
      is_write_reg => \^is_write_reg_0\,
      p_0_in(0) => p_0_in(0),
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in16_in => p_1_in16_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => is_read_reg_n_0,
      s_axi_awready => is_write_reg_n_0,
      s_axi_awready_0(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3 downto 0),
      \s_axi_rdata_i_reg[0]\ => \s_axi_rdata_i[0]_i_2_n_0\,
      \s_axi_rdata_i_reg[0]_0\ => \s_axi_rdata_i[0]_i_3_n_0\,
      \s_axi_rdata_i_reg[0]_1\ => \s_axi_rdata_i_reg[0]_0\,
      \s_axi_rdata_i_reg[1]\ => \s_axi_rdata_i[1]_i_2_n_0\,
      \s_axi_rdata_i_reg[1]_0\ => \s_axi_rdata_i[1]_i_3_n_0\,
      \s_axi_rdata_i_reg[2]\ => \s_axi_rdata_i[2]_i_2_n_0\,
      \s_axi_rdata_i_reg[2]_0\ => \s_axi_rdata_i[2]_i_3_n_0\,
      \s_axi_rdata_i_reg[3]\ => \s_axi_rdata_i[3]_i_2_n_0\,
      \s_axi_rdata_i_reg[3]_0\ => \s_axi_rdata_i[3]_i_3_n_0\,
      \s_axi_rdata_i_reg[4]\ => \s_axi_rdata_i_reg[4]_i_2_n_0\,
      \s_axi_rdata_i_reg[5]\ => \s_axi_rdata_i_reg[5]_i_2_n_0\,
      \s_axi_rdata_i_reg[6]\ => \s_axi_rdata_i_reg[6]_i_2_n_0\,
      \s_axi_rdata_i_reg[7]\(7 downto 0) => \s_axi_rdata_i_reg[7]_0\(7 downto 0),
      \s_axi_rdata_i_reg[7]_0\ => \s_axi_rdata_i_reg[7]_i_2_n_0\,
      \s_axi_rdata_i_reg[8]\ => \s_axi_rdata_i[10]_i_5_n_0\,
      s_axi_wdata(5 downto 0) => s_axi_wdata(5 downto 0),
      \s_axi_wdata[31]\ => \s_axi_wdata[31]\,
      \s_axi_wdata[5]\(1 downto 0) => \s_axi_wdata[5]\(1 downto 0),
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
\bus2ip_addr_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(0),
      O => \bus2ip_addr_i[0]_i_1_n_0\
    );
\bus2ip_addr_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(1),
      O => \bus2ip_addr_i[1]_i_1_n_0\
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(2),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(3),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(4),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(5),
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(6),
      O => \bus2ip_addr_i[6]_i_1_n_0\
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(7),
      O => \bus2ip_addr_i[7]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020202"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(8),
      O => \bus2ip_addr_i[8]_i_2_n_0\
    );
\bus2ip_addr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[0]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[0]\,
      R => rst
    );
\bus2ip_addr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[1]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[1]\,
      R => rst
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \^q\(0),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \^q\(1),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => \^q\(2),
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => \^q\(3),
      R => rst
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[6]_i_1_n_0\,
      Q => \^q\(4),
      R => rst
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[7]_i_1_n_0\,
      Q => Bus2IIC_Addr(1),
      R => rst
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[8]_i_2_n_0\,
      Q => Bus2IIC_Addr(0),
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => bus2ip_rnw_i_reg_n_0,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^s_axi_rvalid_i_reg_0\,
      I2 => s_axi_rready,
      I3 => \^s_axi_bvalid_i_reg_0\,
      I4 => s_axi_bready,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => is_read_i_1_n_0
    );
is_read_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => is_read
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => is_read_i_1_n_0,
      D => is_read,
      Q => is_read_reg_n_0,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => s_axi_arvalid,
      O => is_write
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => is_read_i_1_n_0,
      D => is_write,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_Bus2IP_Reset,
      Q => rst,
      R => '0'
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AXI_IP2Bus_Error,
      I1 => s_axi_bresp_i,
      I2 => \^s_axi_bresp\(0),
      O => \s_axi_bresp_i[1]_i_1_n_0\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75553000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \^is_write_reg_0\,
      I4 => \^s_axi_bvalid_i_reg_0\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => rst
    );
\s_axi_rdata_i[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00530000"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[7]_i_6_1\(0),
      I1 => Rc_addr(0),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \s_axi_rdata_i[0]_i_11_n_0\
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FF4F4F"
    )
        port map (
      I0 => \s_axi_rdata_i[0]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[7]_i_6_2\(0),
      I2 => \s_axi_rdata_i[0]_i_6_n_0\,
      I3 => \s_axi_rdata_i[0]_i_7_n_0\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \s_axi_rdata_i[0]_i_2_n_0\
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[0]_i_8_n_0\,
      I1 => \s_axi_rdata_i_reg[7]_i_7_1\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \s_axi_rdata_i[0]_i_9_n_0\,
      O => \s_axi_rdata_i[0]_i_3_n_0\
    );
\s_axi_rdata_i[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      O => \s_axi_rdata_i[0]_i_5_n_0\
    );
\s_axi_rdata_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => \^q\(2),
      I1 => \s_axi_rdata_i[7]_i_8_0\(0),
      I2 => \^q\(4),
      I3 => \s_axi_rdata_i[7]_i_8_1\(0),
      I4 => \^q\(3),
      I5 => \s_axi_rdata_i[0]_i_2_0\(0),
      O => \s_axi_rdata_i[0]_i_6_n_0\
    );
\s_axi_rdata_i[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => Tx_addr_0(3),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i[3]_i_2_0\(0),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[0]_i_2_1\,
      O => \s_axi_rdata_i[0]_i_7_n_0\
    );
\s_axi_rdata_i[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1311131313111111"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \s_axi_rdata_i_reg[7]_i_7_0\(0),
      I4 => \^q\(3),
      I5 => Rc_fifo_data(7),
      O => \s_axi_rdata_i[0]_i_8_n_0\
    );
\s_axi_rdata_i[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000047"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[7]_i_6_0\(0),
      I1 => \^q\(3),
      I2 => Tx_fifo_data_0(0),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[0]_i_11_n_0\,
      O => \s_axi_rdata_i[0]_i_9_n_0\
    );
\s_axi_rdata_i[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bus2ip_addr_i_reg_n_0_[0]\,
      I1 => \bus2ip_addr_i_reg_n_0_[1]\,
      I2 => Bus2IIC_Addr(1),
      O => \s_axi_rdata_i[10]_i_5_n_0\
    );
\s_axi_rdata_i[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1013"
    )
        port map (
      I0 => Rc_addr(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => Tx_fifo_data_0(1),
      O => \s_axi_rdata_i[1]_i_11_n_0\
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAC"
    )
        port map (
      I0 => \s_axi_rdata_i[1]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[1]_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \s_axi_rdata_i[1]_i_2_n_0\
    );
\s_axi_rdata_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[1]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[7]_i_7_1\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \s_axi_rdata_i[1]_i_8_n_0\,
      O => \s_axi_rdata_i[1]_i_3_n_0\
    );
\s_axi_rdata_i[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => Tx_addr_0(2),
      I1 => \^q\(3),
      I2 => \s_axi_rdata_i[3]_i_2_0\(1),
      I3 => \^q\(4),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[1]_i_2_0\,
      O => \s_axi_rdata_i[1]_i_5_n_0\
    );
\s_axi_rdata_i[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1311131313111111"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \s_axi_rdata_i_reg[7]_i_7_0\(1),
      I4 => \^q\(3),
      I5 => Rc_fifo_data(6),
      O => \s_axi_rdata_i[1]_i_7_n_0\
    );
\s_axi_rdata_i[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1013FFFF10130000"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[7]_i_6_1\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \s_axi_rdata_i_reg[7]_i_6_0\(1),
      I4 => \^q\(3),
      I5 => \s_axi_rdata_i[1]_i_11_n_0\,
      O => \s_axi_rdata_i[1]_i_8_n_0\
    );
\s_axi_rdata_i[2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00530000"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[7]_i_6_1\(2),
      I1 => Rc_addr(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \s_axi_rdata_i[2]_i_11_n_0\
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFC5"
    )
        port map (
      I0 => \s_axi_rdata_i[2]_i_5_n_0\,
      I1 => \s_axi_rdata_i[2]_i_6_n_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \s_axi_rdata_i[2]_i_2_n_0\
    );
\s_axi_rdata_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[2]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[7]_i_7_1\(2),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \s_axi_rdata_i[2]_i_8_n_0\,
      O => \s_axi_rdata_i[2]_i_3_n_0\
    );
\s_axi_rdata_i[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \s_axi_rdata_i_reg[7]_i_6_3\(0),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_6_2\(1),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[2]_i_2_0\,
      O => \s_axi_rdata_i[2]_i_5_n_0\
    );
\s_axi_rdata_i[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => Tx_addr_0(1),
      I1 => \^q\(3),
      I2 => \s_axi_rdata_i[3]_i_2_0\(2),
      I3 => \^q\(4),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[2]_i_2_1\,
      O => \s_axi_rdata_i[2]_i_6_n_0\
    );
\s_axi_rdata_i[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1311131313111111"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \s_axi_rdata_i_reg[7]_i_7_0\(2),
      I4 => \^q\(3),
      I5 => Rc_fifo_data(5),
      O => \s_axi_rdata_i[2]_i_7_n_0\
    );
\s_axi_rdata_i[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000047"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[7]_i_6_0\(2),
      I1 => \^q\(3),
      I2 => Tx_fifo_data_0(2),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[2]_i_11_n_0\,
      O => \s_axi_rdata_i[2]_i_8_n_0\
    );
\s_axi_rdata_i[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1013"
    )
        port map (
      I0 => Rc_addr(3),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => Tx_fifo_data_0(3),
      O => \s_axi_rdata_i[3]_i_11_n_0\
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FB"
    )
        port map (
      I0 => \s_axi_rdata_i[3]_i_5_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \s_axi_rdata_i[3]_i_6_n_0\,
      O => \s_axi_rdata_i[3]_i_2_n_0\
    );
\s_axi_rdata_i[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[3]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[7]_i_7_1\(3),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \s_axi_rdata_i[3]_i_8_n_0\,
      O => \s_axi_rdata_i[3]_i_3_n_0\
    );
\s_axi_rdata_i[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => Tx_addr_0(0),
      I1 => \^q\(3),
      I2 => \s_axi_rdata_i[3]_i_2_0\(3),
      I3 => \^q\(4),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[3]_i_2_2\,
      O => \s_axi_rdata_i[3]_i_5_n_0\
    );
\s_axi_rdata_i[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \s_axi_rdata_i_reg[7]_i_6_3\(1),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_6_2\(2),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[3]_i_2_1\,
      O => \s_axi_rdata_i[3]_i_6_n_0\
    );
\s_axi_rdata_i[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1311131313111111"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \s_axi_rdata_i_reg[7]_i_7_0\(3),
      I4 => \^q\(3),
      I5 => Rc_fifo_data(4),
      O => \s_axi_rdata_i[3]_i_7_n_0\
    );
\s_axi_rdata_i[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1013FFFF10130000"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[7]_i_6_1\(3),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \s_axi_rdata_i_reg[7]_i_6_0\(3),
      I4 => \^q\(3),
      I5 => \s_axi_rdata_i[3]_i_11_n_0\,
      O => \s_axi_rdata_i[3]_i_8_n_0\
    );
\s_axi_rdata_i[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \s_axi_rdata_i_reg[7]_i_6_3\(2),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_6_2\(3),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[4]_i_9_n_0\,
      O => \s_axi_rdata_i[4]_i_5_n_0\
    );
\s_axi_rdata_i[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
        port map (
      I0 => \^q\(4),
      I1 => Tx_fifo_data_0(4),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_6_0\(4),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i_reg[7]_i_6_1\(4),
      O => \s_axi_rdata_i[4]_i_6_n_0\
    );
\s_axi_rdata_i[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
        port map (
      I0 => \^q\(4),
      I1 => Rc_fifo_data(3),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_7_0\(4),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i_reg[7]_i_7_1\(4),
      O => \s_axi_rdata_i[4]_i_8_n_0\
    );
\s_axi_rdata_i[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^q\(3),
      I1 => \s_axi_rdata_i[7]_i_8_0\(2),
      I2 => \^q\(4),
      I3 => \s_axi_rdata_i[7]_i_8_1\(1),
      O => \s_axi_rdata_i[4]_i_9_n_0\
    );
\s_axi_rdata_i[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \s_axi_rdata_i_reg[7]_i_6_3\(3),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_6_2\(4),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[5]_i_9_n_0\,
      O => \s_axi_rdata_i[5]_i_5_n_0\
    );
\s_axi_rdata_i[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
        port map (
      I0 => \^q\(4),
      I1 => Tx_fifo_data_0(5),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_6_0\(5),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i_reg[7]_i_6_1\(5),
      O => \s_axi_rdata_i[5]_i_6_n_0\
    );
\s_axi_rdata_i[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
        port map (
      I0 => \^q\(4),
      I1 => Rc_fifo_data(2),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_7_0\(5),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i_reg[7]_i_7_1\(5),
      O => \s_axi_rdata_i[5]_i_8_n_0\
    );
\s_axi_rdata_i[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^q\(3),
      I1 => \s_axi_rdata_i[7]_i_8_0\(3),
      I2 => \^q\(4),
      I3 => \s_axi_rdata_i[7]_i_8_1\(2),
      O => \s_axi_rdata_i[5]_i_9_n_0\
    );
\s_axi_rdata_i[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \s_axi_rdata_i_reg[7]_i_6_3\(4),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_6_2\(5),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[6]_i_9_n_0\,
      O => \s_axi_rdata_i[6]_i_5_n_0\
    );
\s_axi_rdata_i[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
        port map (
      I0 => \^q\(4),
      I1 => Tx_fifo_data_0(6),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_6_0\(6),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i_reg[7]_i_6_1\(6),
      O => \s_axi_rdata_i[6]_i_6_n_0\
    );
\s_axi_rdata_i[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
        port map (
      I0 => \^q\(4),
      I1 => Rc_fifo_data(1),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_7_0\(6),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i_reg[7]_i_7_1\(6),
      O => \s_axi_rdata_i[6]_i_8_n_0\
    );
\s_axi_rdata_i[6]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^q\(3),
      I1 => \s_axi_rdata_i[7]_i_8_0\(4),
      I2 => \^q\(4),
      I3 => \s_axi_rdata_i[7]_i_8_1\(3),
      O => \s_axi_rdata_i[6]_i_9_n_0\
    );
\s_axi_rdata_i[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
        port map (
      I0 => \^q\(4),
      I1 => Rc_fifo_data(0),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_7_0\(7),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i_reg[7]_i_7_1\(7),
      O => \s_axi_rdata_i[7]_i_11_n_0\
    );
\s_axi_rdata_i[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^q\(3),
      I1 => \s_axi_rdata_i[7]_i_8_0\(5),
      I2 => \^q\(4),
      I3 => \s_axi_rdata_i[7]_i_8_1\(4),
      O => \s_axi_rdata_i[7]_i_12_n_0\
    );
\s_axi_rdata_i[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \s_axi_rdata_i_reg[7]_i_6_3\(5),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_6_2\(6),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[7]_i_12_n_0\,
      O => \s_axi_rdata_i[7]_i_8_n_0\
    );
\s_axi_rdata_i[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
        port map (
      I0 => \^q\(4),
      I1 => Tx_fifo_data_0(7),
      I2 => \^q\(3),
      I3 => \s_axi_rdata_i_reg[7]_i_6_0\(7),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i_reg[7]_i_6_1\(7),
      O => \s_axi_rdata_i[7]_i_9_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(31),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(2),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(30),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(29),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => Intr2Bus_DBus(0),
      Q => s_axi_rdata(11),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(28),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(27),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[4]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[4]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[4]_i_4_n_0\,
      O => \s_axi_rdata_i_reg[4]_i_2_n_0\,
      S => \^q\(0)
    );
\s_axi_rdata_i_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[4]_i_5_n_0\,
      I1 => \s_axi_rdata_i[4]_i_6_n_0\,
      O => \s_axi_rdata_i_reg[4]_i_3_n_0\,
      S => \^q\(1)
    );
\s_axi_rdata_i_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i_reg[4]_i_2_0\,
      I1 => \s_axi_rdata_i[4]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[4]_i_4_n_0\,
      S => \^q\(1)
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(26),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[5]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[5]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[5]_i_4_n_0\,
      O => \s_axi_rdata_i_reg[5]_i_2_n_0\,
      S => \^q\(0)
    );
\s_axi_rdata_i_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[5]_i_5_n_0\,
      I1 => \s_axi_rdata_i[5]_i_6_n_0\,
      O => \s_axi_rdata_i_reg[5]_i_3_n_0\,
      S => \^q\(1)
    );
\s_axi_rdata_i_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i_reg[5]_i_2_0\,
      I1 => \s_axi_rdata_i[5]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[5]_i_4_n_0\,
      S => \^q\(1)
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(25),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[6]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[6]_i_3_n_0\,
      I1 => \s_axi_rdata_i_reg[6]_i_4_n_0\,
      O => \s_axi_rdata_i_reg[6]_i_2_n_0\,
      S => \^q\(0)
    );
\s_axi_rdata_i_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[6]_i_5_n_0\,
      I1 => \s_axi_rdata_i[6]_i_6_n_0\,
      O => \s_axi_rdata_i_reg[6]_i_3_n_0\,
      S => \^q\(1)
    );
\s_axi_rdata_i_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i_reg[6]_i_2_0\,
      I1 => \s_axi_rdata_i[6]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[6]_i_4_n_0\,
      S => \^q\(1)
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Data(24),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[7]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_rdata_i_reg[7]_i_6_n_0\,
      I1 => \s_axi_rdata_i_reg[7]_i_7_n_0\,
      O => \s_axi_rdata_i_reg[7]_i_2_n_0\,
      S => \^q\(0)
    );
\s_axi_rdata_i_reg[7]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[7]_i_8_n_0\,
      I1 => \s_axi_rdata_i[7]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[7]_i_6_n_0\,
      S => \^q\(1)
    );
\s_axi_rdata_i_reg[7]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i_reg[7]_i_2_0\,
      I1 => \s_axi_rdata_i[7]_i_11_n_0\,
      O => \s_axi_rdata_i_reg[7]_i_7_n_0\,
      S => \^q\(1)
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(0),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(1),
      Q => s_axi_rdata(9),
      R => rst
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => AXI_IP2Bus_Error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75553000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \^is_read_reg_0\,
      I4 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000F08"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \state_reg_n_0_[0]\,
      I3 => s_axi_arvalid,
      I4 => \state_reg_n_0_[1]\,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3BBF388"
    )
        port map (
      I0 => \^is_write_reg_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[3]_i_2_n_0\,
      I3 => \state_reg_n_0_[0]\,
      I4 => s_axi_arvalid,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FA3A3FF0FA0A0"
    )
        port map (
      I0 => \^is_read_reg_0\,
      I1 => s_axi_arvalid,
      I2 => \state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state[3]_i_2_n_0\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state[1]_i_2_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      O => \state[1]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_axi_lite_ipif is
  port (
    p_26_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    is_write_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    \s_axi_wdata[5]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Bus2IIC_WrCE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \bus2ip_addr_i_reg[5]\ : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[31]\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AXI_IP2Bus_WrAck20 : out STD_LOGIC;
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    AXI_Bus2IP_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    \s_axi_rdata_i_reg[7]_i_7\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i_reg[7]_i_7_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i_reg[7]_i_6\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i_reg[7]_i_6_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i[7]_i_8\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_rdata_i[7]_i_8_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_axi_rdata_i[0]_i_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \cr_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    firstDynStartSeen : in STD_LOGIC;
    \cr_i_reg[2]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_i_6_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Tx_addr_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[3]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[0]_i_2_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_i_6_2\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_rdata_i[2]_i_2\ : in STD_LOGIC;
    \s_axi_rdata_i[3]_i_2_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in7_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_i_2\ : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]_i_2\ : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_i_2\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_i_2\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : in STD_LOGIC;
    Rc_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    cr_txModeSelect_set : in STD_LOGIC;
    cr_txModeSelect_clr : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i[3]_i_2_1\ : in STD_LOGIC;
    \s_axi_rdata_i[2]_i_2_0\ : in STD_LOGIC;
    \s_axi_rdata_i[1]_i_2\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_axi_lite_ipif : entity is "axi_lite_ipif";
end design_1_axi_iic_0_0_axi_lite_ipif;

architecture STRUCTURE of design_1_axi_iic_0_0_axi_lite_ipif is
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
begin
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
I_SLAVE_ATTACHMENT: entity work.design_1_axi_iic_0_0_slave_attachment
     port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      AXI_IP2Bus_WrAck20 => AXI_IP2Bus_WrAck20,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      Bus2IIC_WrCE(11 downto 0) => Bus2IIC_WrCE(11 downto 0),
      Bus_RNW_reg_reg => Bus_RNW_reg,
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => p_26_in,
      Q(4 downto 0) => Q(4 downto 0),
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Tx_addr_0(3 downto 0) => Tx_addr_0(3 downto 0),
      Tx_fifo_data_0(7 downto 0) => Tx_fifo_data_0(7 downto 0),
      \bus2ip_addr_i_reg[5]_0\ => \bus2ip_addr_i_reg[5]\,
      \cr_i_reg[2]\(0) => \cr_i_reg[2]\(0),
      \cr_i_reg[2]_0\ => \cr_i_reg[2]_0\,
      cr_txModeSelect_clr => cr_txModeSelect_clr,
      cr_txModeSelect_set => cr_txModeSelect_set,
      firstDynStartSeen => firstDynStartSeen,
      gpo(0) => gpo(0),
      irpt_wrack => irpt_wrack,
      is_read_reg_0 => is_read_reg,
      is_write_reg_0 => is_write_reg,
      p_0_in(0) => p_0_in(0),
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in16_in => p_1_in16_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(11 downto 0) => s_axi_rdata(11 downto 0),
      \s_axi_rdata_i[0]_i_2_0\(0) => \s_axi_rdata_i[0]_i_2\(0),
      \s_axi_rdata_i[0]_i_2_1\ => \s_axi_rdata_i[0]_i_2_0\,
      \s_axi_rdata_i[1]_i_2_0\ => \s_axi_rdata_i[1]_i_2\,
      \s_axi_rdata_i[2]_i_2_0\ => \s_axi_rdata_i[2]_i_2\,
      \s_axi_rdata_i[2]_i_2_1\ => \s_axi_rdata_i[2]_i_2_0\,
      \s_axi_rdata_i[3]_i_2_0\(3 downto 0) => \s_axi_rdata_i[3]_i_2\(3 downto 0),
      \s_axi_rdata_i[3]_i_2_1\ => \s_axi_rdata_i[3]_i_2_0\,
      \s_axi_rdata_i[3]_i_2_2\ => \s_axi_rdata_i[3]_i_2_1\,
      \s_axi_rdata_i[7]_i_8_0\(5 downto 0) => \s_axi_rdata_i[7]_i_8\(5 downto 0),
      \s_axi_rdata_i[7]_i_8_1\(4 downto 0) => \s_axi_rdata_i[7]_i_8_0\(4 downto 0),
      \s_axi_rdata_i_reg[0]_0\ => \s_axi_rdata_i_reg[0]\,
      \s_axi_rdata_i_reg[1]_0\ => \s_axi_rdata_i_reg[1]\,
      \s_axi_rdata_i_reg[4]_i_2_0\ => \s_axi_rdata_i_reg[4]_i_2\,
      \s_axi_rdata_i_reg[5]_i_2_0\ => \s_axi_rdata_i_reg[5]_i_2\,
      \s_axi_rdata_i_reg[6]_i_2_0\ => \s_axi_rdata_i_reg[6]_i_2\,
      \s_axi_rdata_i_reg[7]_0\(7 downto 0) => \s_axi_rdata_i_reg[7]\(7 downto 0),
      \s_axi_rdata_i_reg[7]_i_2_0\ => \s_axi_rdata_i_reg[7]_i_2\,
      \s_axi_rdata_i_reg[7]_i_6_0\(7 downto 0) => \s_axi_rdata_i_reg[7]_i_6\(7 downto 0),
      \s_axi_rdata_i_reg[7]_i_6_1\(7 downto 0) => \s_axi_rdata_i_reg[7]_i_6_0\(7 downto 0),
      \s_axi_rdata_i_reg[7]_i_6_2\(6 downto 0) => \s_axi_rdata_i_reg[7]_i_6_1\(6 downto 0),
      \s_axi_rdata_i_reg[7]_i_6_3\(5 downto 0) => \s_axi_rdata_i_reg[7]_i_6_2\(5 downto 0),
      \s_axi_rdata_i_reg[7]_i_7_0\(7 downto 0) => \s_axi_rdata_i_reg[7]_i_7\(7 downto 0),
      \s_axi_rdata_i_reg[7]_i_7_1\(7 downto 0) => \s_axi_rdata_i_reg[7]_i_7_0\(7 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wdata(5 downto 0) => s_axi_wdata(5 downto 0),
      \s_axi_wdata[31]\ => \s_axi_wdata[31]\,
      \s_axi_wdata[5]\(1 downto 0) => \s_axi_wdata[5]\(1 downto 0),
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wvalid => s_axi_wvalid,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_filter is
  port (
    scl_rising_edge0 : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : out STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_filter : entity is "filter";
end design_1_axi_iic_0_0_filter;

architecture STRUCTURE of design_1_axi_iic_0_0_filter is
begin
SCL_DEBOUNCE: entity work.design_1_axi_iic_0_0_debounce
     port map (
      D(0) => D(0),
      Q(0) => Q(0),
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge0 => scl_rising_edge0,
      scndry_out => scndry_out
    );
SDA_DEBOUNCE: entity work.design_1_axi_iic_0_0_debounce_3
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      s_axi_aclk => s_axi_aclk,
      sda_i => sda_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_axi_ipif_ssp1 is
  port (
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_Reset : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    is_write_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    ctrlFifoDin : out STD_LOGIC_VECTOR ( 0 to 1 );
    \s_axi_wdata[5]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Bus2IIC_WrCE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \bus2ip_addr_i_reg[5]\ : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    iic2intc_irpt : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    \s_axi_rdata_i_reg[7]_i_7\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i_reg[7]_i_7_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_fifo_data_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i_reg[7]_i_6\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i_reg[7]_i_6_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_axi_rdata_i[7]_i_8\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_rdata_i[7]_i_8_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_axi_rdata_i[0]_i_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Tx_fifo_rst : in STD_LOGIC;
    \cr_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    firstDynStartSeen : in STD_LOGIC;
    \cr_i_reg[2]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_i_6_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Tx_addr_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[3]_i_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i[0]_i_2_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_i_6_2\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_rdata_i[2]_i_2\ : in STD_LOGIC;
    \s_axi_rdata_i[3]_i_2_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_i_2\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]_i_2\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_i_2\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_i_2\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : in STD_LOGIC;
    Rc_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    cr_txModeSelect_set : in STD_LOGIC;
    cr_txModeSelect_clr : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \s_axi_rdata_i[3]_i_2_1\ : in STD_LOGIC;
    \s_axi_rdata_i[2]_i_2_0\ : in STD_LOGIC;
    \s_axi_rdata_i[1]_i_2\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_axi_ipif_ssp1 : entity is "axi_ipif_ssp1";
end design_1_axi_iic_0_0_axi_ipif_ssp1;

architecture STRUCTURE of design_1_axi_iic_0_0_axi_ipif_ssp1 is
  signal AXI_Bus2IP_Reset : STD_LOGIC;
  signal AXI_Bus2IP_WrCE : STD_LOGIC_VECTOR ( 10 to 10 );
  signal AXI_IP2Bus_RdAck1 : STD_LOGIC;
  signal AXI_IP2Bus_RdAck2 : STD_LOGIC;
  signal AXI_IP2Bus_RdAck20 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck1 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck2 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck20 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_32 : STD_LOGIC;
  signal \^bus2iic_reset\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_26_in\ : STD_LOGIC;
  signal X_INTERRUPT_CONTROL_n_0 : STD_LOGIC;
  signal X_INTERRUPT_CONTROL_n_17 : STD_LOGIC;
  signal irpt_wrack : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 to 31 );
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in17_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in10_in : STD_LOGIC;
  signal p_1_in13_in : STD_LOGIC;
  signal p_1_in16_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_in4_in : STD_LOGIC;
  signal p_1_in7_in : STD_LOGIC;
  signal reset_trig0 : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal sw_rst_cond : STD_LOGIC;
  signal sw_rst_cond_d1 : STD_LOGIC;
begin
  Bus2IIC_Reset <= \^bus2iic_reset\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
AXI_IP2Bus_RdAck1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_RdAck2,
      Q => AXI_IP2Bus_RdAck1,
      R => '0'
    );
AXI_IP2Bus_RdAck2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_RdAck20,
      Q => AXI_IP2Bus_RdAck2,
      R => '0'
    );
AXI_IP2Bus_WrAck1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_WrAck2,
      Q => AXI_IP2Bus_WrAck1,
      R => '0'
    );
AXI_IP2Bus_WrAck2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_WrAck20,
      Q => AXI_IP2Bus_WrAck2,
      R => '0'
    );
AXI_LITE_IPIF_I: entity work.design_1_axi_iic_0_0_axi_lite_ipif
     port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      AXI_IP2Bus_WrAck20 => AXI_IP2Bus_WrAck20,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      Bus2IIC_WrCE(11 downto 0) => Bus2IIC_WrCE(11 downto 0),
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(2 downto 0) => D(2 downto 0),
      E(0) => AXI_Bus2IP_WrCE(10),
      Q(4 downto 0) => Q(4 downto 0),
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Tx_addr_0(3 downto 0) => Tx_addr_0(3 downto 0),
      Tx_fifo_data_0(7 downto 0) => Tx_fifo_data_0(7 downto 0),
      \bus2ip_addr_i_reg[5]\ => \bus2ip_addr_i_reg[5]\,
      \cr_i_reg[2]\(0) => \cr_i_reg[2]\(0),
      \cr_i_reg[2]_0\ => \cr_i_reg[2]_0\,
      cr_txModeSelect_clr => cr_txModeSelect_clr,
      cr_txModeSelect_set => cr_txModeSelect_set,
      firstDynStartSeen => firstDynStartSeen,
      gpo(0) => gpo(0),
      irpt_wrack => irpt_wrack,
      is_read_reg => is_read_reg,
      is_write_reg => is_write_reg,
      p_0_in(0) => p_0_in(31),
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in16_in => p_1_in16_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      p_26_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_26_in\,
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid_i_reg => s_axi_bvalid_i_reg,
      s_axi_rdata(11 downto 0) => s_axi_rdata(11 downto 0),
      \s_axi_rdata_i[0]_i_2\(0) => \s_axi_rdata_i[0]_i_2\(0),
      \s_axi_rdata_i[0]_i_2_0\ => \s_axi_rdata_i[0]_i_2_0\,
      \s_axi_rdata_i[1]_i_2\ => \s_axi_rdata_i[1]_i_2\,
      \s_axi_rdata_i[2]_i_2\ => \s_axi_rdata_i[2]_i_2\,
      \s_axi_rdata_i[2]_i_2_0\ => \s_axi_rdata_i[2]_i_2_0\,
      \s_axi_rdata_i[3]_i_2\(3 downto 0) => \s_axi_rdata_i[3]_i_2\(3 downto 0),
      \s_axi_rdata_i[3]_i_2_0\ => \s_axi_rdata_i[3]_i_2_0\,
      \s_axi_rdata_i[3]_i_2_1\ => \s_axi_rdata_i[3]_i_2_1\,
      \s_axi_rdata_i[7]_i_8\(5 downto 0) => \s_axi_rdata_i[7]_i_8\(5 downto 0),
      \s_axi_rdata_i[7]_i_8_0\(4 downto 0) => \s_axi_rdata_i[7]_i_8_0\(4 downto 0),
      \s_axi_rdata_i_reg[0]\ => X_INTERRUPT_CONTROL_n_0,
      \s_axi_rdata_i_reg[1]\ => \s_axi_rdata_i_reg[1]\,
      \s_axi_rdata_i_reg[4]_i_2\ => \s_axi_rdata_i_reg[4]_i_2\,
      \s_axi_rdata_i_reg[5]_i_2\ => \s_axi_rdata_i_reg[5]_i_2\,
      \s_axi_rdata_i_reg[6]_i_2\ => \s_axi_rdata_i_reg[6]_i_2\,
      \s_axi_rdata_i_reg[7]\(7) => p_0_in17_in,
      \s_axi_rdata_i_reg[7]\(6) => p_0_in14_in,
      \s_axi_rdata_i_reg[7]\(5) => p_0_in11_in,
      \s_axi_rdata_i_reg[7]\(4) => p_0_in8_in,
      \s_axi_rdata_i_reg[7]\(3) => p_0_in5_in,
      \s_axi_rdata_i_reg[7]\(2) => p_0_in2_in,
      \s_axi_rdata_i_reg[7]\(1) => p_0_in0_in,
      \s_axi_rdata_i_reg[7]\(0) => X_INTERRUPT_CONTROL_n_17,
      \s_axi_rdata_i_reg[7]_i_2\ => \s_axi_rdata_i_reg[7]_i_2\,
      \s_axi_rdata_i_reg[7]_i_6\(7 downto 0) => \s_axi_rdata_i_reg[7]_i_6\(7 downto 0),
      \s_axi_rdata_i_reg[7]_i_6_0\(7 downto 0) => \s_axi_rdata_i_reg[7]_i_6_0\(7 downto 0),
      \s_axi_rdata_i_reg[7]_i_6_1\(6 downto 0) => \s_axi_rdata_i_reg[7]_i_6_1\(6 downto 0),
      \s_axi_rdata_i_reg[7]_i_6_2\(5 downto 0) => \s_axi_rdata_i_reg[7]_i_6_2\(5 downto 0),
      \s_axi_rdata_i_reg[7]_i_7\(7 downto 0) => \s_axi_rdata_i_reg[7]_i_7\(7 downto 0),
      \s_axi_rdata_i_reg[7]_i_7_0\(7 downto 0) => \s_axi_rdata_i_reg[7]_i_7_0\(7 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid_i_reg => s_axi_rvalid_i_reg,
      s_axi_wdata(5) => s_axi_wdata(10),
      s_axi_wdata(4) => s_axi_wdata(5),
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      \s_axi_wdata[31]\ => AXI_LITE_IPIF_I_n_32,
      \s_axi_wdata[5]\(1 downto 0) => \s_axi_wdata[5]\(1 downto 0),
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wvalid => s_axi_wvalid,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
X_INTERRUPT_CONTROL: entity work.design_1_axi_iic_0_0_interrupt_control
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      E(0) => AXI_Bus2IP_WrCE(10),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => X_INTERRUPT_CONTROL_n_0,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      Q(7) => p_0_in17_in,
      Q(6) => p_0_in14_in,
      Q(5) => p_0_in11_in,
      Q(4) => p_0_in8_in,
      Q(3) => p_0_in5_in,
      Q(2) => p_0_in2_in,
      Q(1) => p_0_in0_in,
      Q(0) => X_INTERRUPT_CONTROL_n_17,
      SR(0) => \^bus2iic_reset\,
      iic2intc_irpt => iic2intc_irpt,
      ipif_glbl_irpt_enable_reg_reg_0 => AXI_LITE_IPIF_I_n_32,
      irpt_wrack => irpt_wrack,
      p_0_in(0) => p_0_in(31),
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in16_in => p_1_in16_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      p_26_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_26_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0)
    );
X_SOFT_RESET: entity work.design_1_axi_iic_0_0_soft_reset
     port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      SR(0) => \^bus2iic_reset\,
      Tx_fifo_rst => Tx_fifo_rst,
      ctrlFifoDin(0 to 1) => ctrlFifoDin(0 to 1),
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(1 downto 0) => s_axi_wdata(9 downto 8),
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_iic is
  port (
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    is_write_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_iic : entity is "iic";
end design_1_axi_iic_0_0_iic;

architecture STRUCTURE of design_1_axi_iic_0_0_iic is
  signal Aas : STD_LOGIC;
  signal Abgc : STD_LOGIC;
  signal Al : STD_LOGIC;
  signal Bb : STD_LOGIC;
  signal Bus2IIC_Addr : STD_LOGIC_VECTOR ( 2 to 6 );
  signal Bus2IIC_RdCE : STD_LOGIC_VECTOR ( 3 to 3 );
  signal Bus2IIC_Reset : STD_LOGIC;
  signal Bus2IIC_WrCE : STD_LOGIC_VECTOR ( 0 to 17 );
  signal \CLKCNT/q_int_reg\ : STD_LOGIC_VECTOR ( 0 to 10 );
  signal Cr : STD_LOGIC_VECTOR ( 0 to 7 );
  signal D : STD_LOGIC;
  signal DYN_MASTER_I_n_6 : STD_LOGIC;
  signal DYN_MASTER_I_n_7 : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal Data_i2c : STD_LOGIC_VECTOR ( 0 to 7 );
  signal FILTER_I_n_2 : STD_LOGIC;
  signal IIC2Bus_Data : STD_LOGIC_VECTOR ( 21 to 23 );
  signal IIC2Bus_IntrEvent : STD_LOGIC_VECTOR ( 0 to 7 );
  signal IIC_CONTROL_I_n_28 : STD_LOGIC;
  signal IIC_CONTROL_I_n_29 : STD_LOGIC;
  signal IIC_CONTROL_I_n_30 : STD_LOGIC;
  signal IIC_CONTROL_I_n_31 : STD_LOGIC;
  signal IIC_CONTROL_I_n_32 : STD_LOGIC;
  signal IIC_CONTROL_I_n_33 : STD_LOGIC;
  signal IIC_CONTROL_I_n_34 : STD_LOGIC;
  signal IIC_CONTROL_I_n_54 : STD_LOGIC;
  signal IIC_CONTROL_I_n_55 : STD_LOGIC;
  signal IIC_CONTROL_I_n_7 : STD_LOGIC;
  signal IIC_CONTROL_I_n_8 : STD_LOGIC;
  signal Msms_set : STD_LOGIC;
  signal New_rcv_dta : STD_LOGIC;
  signal READ_FIFO_I_n_13 : STD_LOGIC;
  signal READ_FIFO_I_n_16 : STD_LOGIC;
  signal REG_INTERFACE_I_n_102 : STD_LOGIC;
  signal REG_INTERFACE_I_n_103 : STD_LOGIC;
  signal REG_INTERFACE_I_n_104 : STD_LOGIC;
  signal REG_INTERFACE_I_n_105 : STD_LOGIC;
  signal REG_INTERFACE_I_n_106 : STD_LOGIC;
  signal REG_INTERFACE_I_n_117 : STD_LOGIC;
  signal REG_INTERFACE_I_n_118 : STD_LOGIC;
  signal REG_INTERFACE_I_n_119 : STD_LOGIC;
  signal REG_INTERFACE_I_n_120 : STD_LOGIC;
  signal REG_INTERFACE_I_n_121 : STD_LOGIC;
  signal REG_INTERFACE_I_n_123 : STD_LOGIC;
  signal REG_INTERFACE_I_n_124 : STD_LOGIC;
  signal REG_INTERFACE_I_n_125 : STD_LOGIC;
  signal REG_INTERFACE_I_n_25 : STD_LOGIC;
  signal REG_INTERFACE_I_n_26 : STD_LOGIC;
  signal REG_INTERFACE_I_n_27 : STD_LOGIC;
  signal REG_INTERFACE_I_n_29 : STD_LOGIC;
  signal REG_INTERFACE_I_n_30 : STD_LOGIC;
  signal REG_INTERFACE_I_n_31 : STD_LOGIC;
  signal REG_INTERFACE_I_n_32 : STD_LOGIC;
  signal REG_INTERFACE_I_n_33 : STD_LOGIC;
  signal REG_INTERFACE_I_n_34 : STD_LOGIC;
  signal REG_INTERFACE_I_n_35 : STD_LOGIC;
  signal REG_INTERFACE_I_n_36 : STD_LOGIC;
  signal REG_INTERFACE_I_n_43 : STD_LOGIC;
  signal REG_INTERFACE_I_n_48 : STD_LOGIC;
  signal REG_INTERFACE_I_n_49 : STD_LOGIC;
  signal REG_INTERFACE_I_n_51 : STD_LOGIC;
  signal REG_INTERFACE_I_n_52 : STD_LOGIC;
  signal REG_INTERFACE_I_n_53 : STD_LOGIC;
  signal REG_INTERFACE_I_n_54 : STD_LOGIC;
  signal REG_INTERFACE_I_n_91 : STD_LOGIC;
  signal REG_INTERFACE_I_n_92 : STD_LOGIC;
  signal REG_INTERFACE_I_n_95 : STD_LOGIC;
  signal REG_INTERFACE_I_n_96 : STD_LOGIC;
  signal Rc_Data_Exists : STD_LOGIC;
  signal Rc_addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Rc_fifo_data : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Rc_fifo_full : STD_LOGIC;
  signal Rc_fifo_rd : STD_LOGIC;
  signal Rc_fifo_rd_d : STD_LOGIC;
  signal Rc_fifo_wr : STD_LOGIC;
  signal Rc_fifo_wr0 : STD_LOGIC;
  signal Rc_fifo_wr_d : STD_LOGIC;
  signal Ro_prev : STD_LOGIC;
  signal \SETUP_CNT/q_int_reg\ : STD_LOGIC_VECTOR ( 0 to 10 );
  signal Srw : STD_LOGIC;
  signal Tx_addr_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Tx_data_exists_sgl : STD_LOGIC;
  signal Tx_fifo_data_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Tx_fifo_full : STD_LOGIC;
  signal Tx_fifo_rd : STD_LOGIC;
  signal Tx_fifo_rd_d : STD_LOGIC;
  signal Tx_fifo_rst : STD_LOGIC;
  signal Tx_fifo_wr : STD_LOGIC;
  signal Tx_fifo_wr_d : STD_LOGIC;
  signal Tx_under_prev : STD_LOGIC;
  signal Txer : STD_LOGIC;
  signal WRITE_FIFO_CTRL_I_n_0 : STD_LOGIC;
  signal WRITE_FIFO_CTRL_I_n_3 : STD_LOGIC;
  signal WRITE_FIFO_CTRL_I_n_4 : STD_LOGIC;
  signal WRITE_FIFO_I_n_14 : STD_LOGIC;
  signal WRITE_FIFO_I_n_16 : STD_LOGIC;
  signal WRITE_FIFO_I_n_17 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_13 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_14 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_27 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_30 : STD_LOGIC;
  signal ackDataState : STD_LOGIC;
  signal callingReadAccess : STD_LOGIC;
  signal cr_txModeSelect_clr : STD_LOGIC;
  signal cr_txModeSelect_set : STD_LOGIC;
  signal ctrlFifoDin : STD_LOGIC_VECTOR ( 0 to 1 );
  signal data4 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal dynamic_MSMS : STD_LOGIC_VECTOR ( 0 to 1 );
  signal earlyAckDataState : STD_LOGIC;
  signal earlyAckHdr : STD_LOGIC;
  signal firstDynStartSeen : STD_LOGIC;
  signal \^gpo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i2c_header : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal new_rcv_dta_d1 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 6 to 6 );
  signal p_1_in2_in : STD_LOGIC;
  signal p_1_in3_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_3_in : STD_LOGIC;
  signal rdCntrFrmTxFifo : STD_LOGIC;
  signal rdCntrFrmTxFifo0 : STD_LOGIC;
  signal rdy_new_xmt_i : STD_LOGIC;
  signal rxCntDone : STD_LOGIC;
  signal scl_clean : STD_LOGIC;
  signal scl_rin_d1 : STD_LOGIC;
  signal scl_rising_edge0 : STD_LOGIC;
  signal sda_clean : STD_LOGIC;
  signal shift_reg_ld : STD_LOGIC;
  signal sr_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal stop_scl_reg : STD_LOGIC;
  signal timing_param_tbuf_i : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal timing_param_thdsta_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_thigh_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_tlow_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_tsudat_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal timing_param_tsusta_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal timing_param_tsusto_i : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  gpo(0) <= \^gpo\(0);
DYN_MASTER_I: entity work.design_1_axi_iic_0_0_dynamic_master
     port map (
      Cr_txModeSelect_set_reg_0 => REG_INTERFACE_I_n_52,
      Q(0) => Cr(3),
      Tx_fifo_data_0(7 downto 0) => Tx_fifo_data_0(7 downto 0),
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      ackDataState => ackDataState,
      callingReadAccess => callingReadAccess,
      \cr_i_reg[3]\ => DYN_MASTER_I_n_7,
      cr_txModeSelect_clr => cr_txModeSelect_clr,
      cr_txModeSelect_set => cr_txModeSelect_set,
      earlyAckDataState => earlyAckDataState,
      firstDynStartSeen => firstDynStartSeen,
      firstDynStartSeen_reg_0 => REG_INTERFACE_I_n_49,
      p_3_in => p_3_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdCntrFrmTxFifo0 => rdCntrFrmTxFifo0,
      rdCntrFrmTxFifo_reg_0 => DYN_MASTER_I_n_6,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk
    );
FILTER_I: entity work.design_1_axi_iic_0_0_filter
     port map (
      D(0) => FILTER_I_n_2,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => sda_clean,
      Q(0) => IIC_CONTROL_I_n_29,
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge0 => scl_rising_edge0,
      scndry_out => scl_clean,
      sda_i => sda_i
    );
IIC_CONTROL_I: entity work.design_1_axi_iic_0_0_iic_control
     port map (
      Aas => Aas,
      Bb => Bb,
      D(3) => Al,
      D(2) => Txer,
      D(1) => IIC_CONTROL_I_n_7,
      D(0) => IIC_CONTROL_I_n_8,
      E(0) => Bus2IIC_WrCE(0),
      \FSM_onehot_scl_state[9]_i_10\(2 downto 0) => timing_param_thigh_i(8 downto 6),
      \FSM_onehot_scl_state[9]_i_7\(10 downto 0) => timing_param_tbuf_i(10 downto 0),
      \FSM_onehot_scl_state_reg[0]_0\ => REG_INTERFACE_I_n_26,
      \FSM_onehot_scl_state_reg[1]_0\ => REG_INTERFACE_I_n_25,
      \FSM_onehot_scl_state_reg[3]_0\ => REG_INTERFACE_I_n_32,
      \FSM_onehot_scl_state_reg[6]_0\(4) => IIC_CONTROL_I_n_29,
      \FSM_onehot_scl_state_reg[6]_0\(3) => IIC_CONTROL_I_n_30,
      \FSM_onehot_scl_state_reg[6]_0\(2) => IIC_CONTROL_I_n_31,
      \FSM_onehot_scl_state_reg[6]_0\(1) => IIC_CONTROL_I_n_32,
      \FSM_onehot_scl_state_reg[6]_0\(0) => IIC_CONTROL_I_n_33,
      \FSM_onehot_scl_state_reg[6]_1\ => REG_INTERFACE_I_n_34,
      \FSM_onehot_scl_state_reg[7]_0\(2) => FILTER_I_n_2,
      \FSM_onehot_scl_state_reg[7]_0\(1) => REG_INTERFACE_I_n_30,
      \FSM_onehot_scl_state_reg[7]_0\(0) => REG_INTERFACE_I_n_31,
      \FSM_sequential_state_reg[1]_0\ => REG_INTERFACE_I_n_36,
      \LEVEL_1_GEN.master_sda_reg_0\ => DYN_MASTER_I_n_7,
      Msms_set => Msms_set,
      New_rcv_dta => New_rcv_dta,
      Q(4) => Cr(1),
      Q(3) => Cr(2),
      Q(2) => Cr(4),
      Q(1) => Cr(5),
      Q(0) => Cr(7),
      Rc_fifo_wr0 => Rc_fifo_wr0,
      Ro_prev => Ro_prev,
      S(0) => REG_INTERFACE_I_n_125,
      Tx_data_exists_sgl => Tx_data_exists_sgl,
      Tx_fifo_data_0(6 downto 0) => Tx_fifo_data_0(7 downto 1),
      Tx_under_prev => Tx_under_prev,
      ackDataState => ackDataState,
      arb_lost_reg_0 => IIC_CONTROL_I_n_28,
      \cr_i_reg[5]\ => WRITE_FIFO_I_n_14,
      \cr_i_reg[5]_0\ => REG_INTERFACE_I_n_51,
      \data_i2c_i_reg[7]_0\(7) => Data_i2c(0),
      \data_i2c_i_reg[7]_0\(6) => Data_i2c(1),
      \data_i2c_i_reg[7]_0\(5) => Data_i2c(2),
      \data_i2c_i_reg[7]_0\(4) => Data_i2c(3),
      \data_i2c_i_reg[7]_0\(3) => Data_i2c(4),
      \data_i2c_i_reg[7]_0\(2) => Data_i2c(5),
      \data_i2c_i_reg[7]_0\(1) => Data_i2c(6),
      \data_i2c_i_reg[7]_0\(0) => Data_i2c(7),
      \data_int_reg[0]\ => sda_clean,
      \data_int_reg[0]_0\(0) => p_2_in(0),
      \data_int_reg[7]\(6 downto 0) => i2c_header(7 downto 1),
      dynamic_MSMS(0) => dynamic_MSMS(0),
      earlyAckDataState => earlyAckDataState,
      earlyAckHdr => earlyAckHdr,
      new_rcv_dta_d1 => new_rcv_dta_d1,
      \q_int_reg[0]\(10) => \CLKCNT/q_int_reg\(0),
      \q_int_reg[0]\(9) => \CLKCNT/q_int_reg\(1),
      \q_int_reg[0]\(8) => \CLKCNT/q_int_reg\(2),
      \q_int_reg[0]\(7) => \CLKCNT/q_int_reg\(3),
      \q_int_reg[0]\(6) => \CLKCNT/q_int_reg\(4),
      \q_int_reg[0]\(5) => \CLKCNT/q_int_reg\(5),
      \q_int_reg[0]\(4) => \CLKCNT/q_int_reg\(6),
      \q_int_reg[0]\(3) => \CLKCNT/q_int_reg\(7),
      \q_int_reg[0]\(2) => \CLKCNT/q_int_reg\(8),
      \q_int_reg[0]\(1) => \CLKCNT/q_int_reg\(9),
      \q_int_reg[0]\(0) => \CLKCNT/q_int_reg\(10),
      \q_int_reg[0]_0\ => IIC_CONTROL_I_n_34,
      \q_int_reg[0]_1\(10) => \SETUP_CNT/q_int_reg\(0),
      \q_int_reg[0]_1\(9) => \SETUP_CNT/q_int_reg\(1),
      \q_int_reg[0]_1\(8) => \SETUP_CNT/q_int_reg\(2),
      \q_int_reg[0]_1\(7) => \SETUP_CNT/q_int_reg\(3),
      \q_int_reg[0]_1\(6) => \SETUP_CNT/q_int_reg\(4),
      \q_int_reg[0]_1\(5) => \SETUP_CNT/q_int_reg\(5),
      \q_int_reg[0]_1\(4) => \SETUP_CNT/q_int_reg\(6),
      \q_int_reg[0]_1\(3) => \SETUP_CNT/q_int_reg\(7),
      \q_int_reg[0]_1\(2) => \SETUP_CNT/q_int_reg\(8),
      \q_int_reg[0]_1\(1) => \SETUP_CNT/q_int_reg\(9),
      \q_int_reg[0]_1\(0) => \SETUP_CNT/q_int_reg\(10),
      \q_int_reg[0]_2\ => REG_INTERFACE_I_n_35,
      \q_int_reg[0]_3\ => REG_INTERFACE_I_n_27,
      \q_int_reg[0]_4\ => REG_INTERFACE_I_n_53,
      \q_int_reg[0]_5\ => REG_INTERFACE_I_n_33,
      \q_int_reg[3]\ => IIC_CONTROL_I_n_55,
      rdy_new_xmt_i => rdy_new_xmt_i,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(2),
      \s_axi_wdata[2]\(0) => IIC_CONTROL_I_n_54,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge0 => scl_rising_edge0,
      scl_t => scl_t,
      scndry_out => scl_clean,
      sda_cout_reg_reg_0 => REG_INTERFACE_I_n_54,
      sda_setup_reg_0 => REG_INTERFACE_I_n_43,
      sda_setup_reg_1 => REG_INTERFACE_I_n_48,
      sda_t => sda_t,
      shift_reg_ld => shift_reg_ld,
      sr_i(0) => sr_i(0),
      srw_i_reg_0(1) => Srw,
      srw_i_reg_0(0) => Abgc,
      stop_scl_reg => stop_scl_reg
    );
READ_FIFO_I: entity work.design_1_axi_iic_0_0_SRL_FIFO
     port map (
      \Addr_Counters[0].MUXCY_L_I_0\ => REG_INTERFACE_I_n_124,
      \Addr_Counters[0].MUXCY_L_I_1\ => REG_INTERFACE_I_n_123,
      \Addr_Counters[1].FDRE_I_0\ => READ_FIFO_I_n_16,
      Bus2IIC_Reset => Bus2IIC_Reset,
      D(1) => p_0_out(6),
      D(0) => Rc_fifo_full,
      D_0 => D,
      \FIFO_RAM[0].SRL16E_I_0\(7) => Data_i2c(0),
      \FIFO_RAM[0].SRL16E_I_0\(6) => Data_i2c(1),
      \FIFO_RAM[0].SRL16E_I_0\(5) => Data_i2c(2),
      \FIFO_RAM[0].SRL16E_I_0\(4) => Data_i2c(3),
      \FIFO_RAM[0].SRL16E_I_0\(3) => Data_i2c(4),
      \FIFO_RAM[0].SRL16E_I_0\(2) => Data_i2c(5),
      \FIFO_RAM[0].SRL16E_I_0\(1) => Data_i2c(6),
      \FIFO_RAM[0].SRL16E_I_0\(0) => Data_i2c(7),
      Msms_set => Msms_set,
      Q(3) => p_1_in3_in,
      Q(2) => p_1_in2_in,
      Q(1) => REG_INTERFACE_I_n_95,
      Q(0) => REG_INTERFACE_I_n_96,
      Rc_Data_Exists => Rc_Data_Exists,
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Rc_fifo_rd => Rc_fifo_rd,
      Rc_fifo_rd_d => Rc_fifo_rd_d,
      Rc_fifo_wr => Rc_fifo_wr,
      Rc_fifo_wr_d => Rc_fifo_wr_d,
      msms_set_i_reg => READ_FIFO_I_n_13,
      s_axi_aclk => s_axi_aclk
    );
REG_INTERFACE_I: entity work.design_1_axi_iic_0_0_reg_interface
     port map (
      Aas => Aas,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(3),
      Bus2IIC_Reset => Bus2IIC_Reset,
      Bus2IIC_WrCE(11) => Bus2IIC_WrCE(0),
      Bus2IIC_WrCE(10) => Bus2IIC_WrCE(2),
      Bus2IIC_WrCE(9) => Bus2IIC_WrCE(4),
      Bus2IIC_WrCE(8) => Bus2IIC_WrCE(8),
      Bus2IIC_WrCE(7) => Bus2IIC_WrCE(10),
      Bus2IIC_WrCE(6) => Bus2IIC_WrCE(11),
      Bus2IIC_WrCE(5) => Bus2IIC_WrCE(12),
      Bus2IIC_WrCE(4) => Bus2IIC_WrCE(13),
      Bus2IIC_WrCE(3) => Bus2IIC_WrCE(14),
      Bus2IIC_WrCE(2) => Bus2IIC_WrCE(15),
      Bus2IIC_WrCE(1) => Bus2IIC_WrCE(16),
      Bus2IIC_WrCE(0) => Bus2IIC_WrCE(17),
      D(0) => Ro_prev,
      D_0 => D_0,
      D_1 => D,
      Data_Exists_DFF => WRITE_FIFO_CTRL_I_n_4,
      Data_Exists_DFF_0 => WRITE_FIFO_CTRL_I_n_0,
      Data_Exists_DFF_1 => READ_FIFO_I_n_16,
      \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]_0\ => WRITE_FIFO_I_n_17,
      \FIFO_GEN_DTR.Tx_fifo_rd_reg_0\ => REG_INTERFACE_I_n_51,
      \FIFO_GEN_DTR.Tx_fifo_rst_reg_0\ => REG_INTERFACE_I_n_52,
      \FIFO_GEN_DTR.Tx_fifo_wr_reg_0\ => REG_INTERFACE_I_n_121,
      \FSM_onehot_scl_state[4]_i_3_0\(10) => \CLKCNT/q_int_reg\(0),
      \FSM_onehot_scl_state[4]_i_3_0\(9) => \CLKCNT/q_int_reg\(1),
      \FSM_onehot_scl_state[4]_i_3_0\(8) => \CLKCNT/q_int_reg\(2),
      \FSM_onehot_scl_state[4]_i_3_0\(7) => \CLKCNT/q_int_reg\(3),
      \FSM_onehot_scl_state[4]_i_3_0\(6) => \CLKCNT/q_int_reg\(4),
      \FSM_onehot_scl_state[4]_i_3_0\(5) => \CLKCNT/q_int_reg\(5),
      \FSM_onehot_scl_state[4]_i_3_0\(4) => \CLKCNT/q_int_reg\(6),
      \FSM_onehot_scl_state[4]_i_3_0\(3) => \CLKCNT/q_int_reg\(7),
      \FSM_onehot_scl_state[4]_i_3_0\(2) => \CLKCNT/q_int_reg\(8),
      \FSM_onehot_scl_state[4]_i_3_0\(1) => \CLKCNT/q_int_reg\(9),
      \FSM_onehot_scl_state[4]_i_3_0\(0) => \CLKCNT/q_int_reg\(10),
      \FSM_onehot_scl_state[9]_i_4_0\ => IIC_CONTROL_I_n_55,
      \FSM_onehot_scl_state_reg[0]\ => IIC_CONTROL_I_n_34,
      \FSM_onehot_scl_state_reg[1]\ => REG_INTERFACE_I_n_25,
      \FSM_onehot_scl_state_reg[4]\ => REG_INTERFACE_I_n_33,
      \FSM_onehot_scl_state_reg[4]_0\ => IIC_CONTROL_I_n_28,
      \FSM_onehot_scl_state_reg[5]\(1) => REG_INTERFACE_I_n_30,
      \FSM_onehot_scl_state_reg[5]\(0) => REG_INTERFACE_I_n_31,
      \FSM_onehot_scl_state_reg[5]_0\(3) => IIC_CONTROL_I_n_30,
      \FSM_onehot_scl_state_reg[5]_0\(2) => IIC_CONTROL_I_n_31,
      \FSM_onehot_scl_state_reg[5]_0\(1) => IIC_CONTROL_I_n_32,
      \FSM_onehot_scl_state_reg[5]_0\(0) => IIC_CONTROL_I_n_33,
      \FSM_sequential_state_reg[1]\(6 downto 0) => i2c_header(7 downto 1),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => REG_INTERFACE_I_n_27,
      \GPO_GEN.gpo_i_reg[31]_0\ => REG_INTERFACE_I_n_91,
      \GPO_GEN.gpo_i_reg[31]_1\ => X_AXI_IPIF_SSP1_n_30,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      \IIC2Bus_IntrEvent_reg[0]_0\(4) => Al,
      \IIC2Bus_IntrEvent_reg[0]_0\(3) => Txer,
      \IIC2Bus_IntrEvent_reg[0]_0\(2) => Tx_under_prev,
      \IIC2Bus_IntrEvent_reg[0]_0\(1) => IIC_CONTROL_I_n_7,
      \IIC2Bus_IntrEvent_reg[0]_0\(0) => IIC_CONTROL_I_n_8,
      \IIC2Bus_IntrEvent_reg[5]_0\ => REG_INTERFACE_I_n_120,
      Msms_set => Msms_set,
      New_rcv_dta => New_rcv_dta,
      Q(6) => Cr(0),
      Q(5) => Cr(1),
      Q(4) => Cr(2),
      Q(3) => Cr(3),
      Q(2) => Cr(4),
      Q(1) => Cr(5),
      Q(0) => Cr(7),
      \RD_FIFO_CNTRL.Rc_fifo_rd_reg_0\ => REG_INTERFACE_I_n_124,
      \RD_FIFO_CNTRL.Rc_fifo_wr_reg_0\ => REG_INTERFACE_I_n_123,
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_0\(3) => p_1_in3_in,
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_0\(2) => p_1_in2_in,
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_0\(1) => REG_INTERFACE_I_n_95,
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_0\(0) => REG_INTERFACE_I_n_96,
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]_1\ => REG_INTERFACE_I_n_102,
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5]_0\ => REG_INTERFACE_I_n_92,
      \RD_FIFO_CNTRL.ro_prev_i_reg_0\ => READ_FIFO_I_n_13,
      Rc_Data_Exists => Rc_Data_Exists,
      Rc_fifo_rd => Rc_fifo_rd,
      Rc_fifo_rd_d => Rc_fifo_rd_d,
      Rc_fifo_wr => Rc_fifo_wr,
      Rc_fifo_wr0 => Rc_fifo_wr0,
      Rc_fifo_wr_d => Rc_fifo_wr_d,
      S(0) => REG_INTERFACE_I_n_125,
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr => Tx_fifo_wr,
      Tx_fifo_wr_d => Tx_fifo_wr_d,
      Tx_fifo_wr_d_reg => REG_INTERFACE_I_n_29,
      abgc_i_reg => REG_INTERFACE_I_n_36,
      \adr_i_reg[0]_0\(5 downto 0) => data4(7 downto 2),
      \adr_i_reg[6]_0\ => REG_INTERFACE_I_n_119,
      \bus2ip_addr_i_reg[2]\(2) => IIC2Bus_Data(21),
      \bus2ip_addr_i_reg[2]\(1) => IIC2Bus_Data(22),
      \bus2ip_addr_i_reg[2]\(0) => IIC2Bus_Data(23),
      \cr_i_reg[2]_0\ => REG_INTERFACE_I_n_53,
      \cr_i_reg[2]_1\(2) => X_AXI_IPIF_SSP1_n_13,
      \cr_i_reg[2]_1\(1) => X_AXI_IPIF_SSP1_n_14,
      \cr_i_reg[2]_1\(0) => IIC_CONTROL_I_n_54,
      \cr_i_reg[7]_0\ => REG_INTERFACE_I_n_35,
      dynamic_MSMS(0) => dynamic_MSMS(1),
      earlyAckHdr => earlyAckHdr,
      firstDynStartSeen => firstDynStartSeen,
      firstDynStartSeen_reg => REG_INTERFACE_I_n_49,
      firstDynStartSeen_reg_0 => WRITE_FIFO_CTRL_I_n_3,
      gpo(0) => \^gpo\(0),
      new_rcv_dta_d1 => new_rcv_dta_d1,
      p_3_in => p_3_in,
      \q_int_reg[0]\ => REG_INTERFACE_I_n_26,
      \q_int_reg[1]\ => REG_INTERFACE_I_n_48,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdy_new_xmt_i => rdy_new_xmt_i,
      s_axi_aclk => s_axi_aclk,
      \s_axi_rdata_i[1]_i_5\(4) => Bus2IIC_Addr(2),
      \s_axi_rdata_i[1]_i_5\(3) => Bus2IIC_Addr(3),
      \s_axi_rdata_i[1]_i_5\(2) => Bus2IIC_Addr(4),
      \s_axi_rdata_i[1]_i_5\(1) => Bus2IIC_Addr(5),
      \s_axi_rdata_i[1]_i_5\(0) => Bus2IIC_Addr(6),
      \s_axi_rdata_i_reg[8]\ => X_AXI_IPIF_SSP1_n_27,
      s_axi_wdata(10 downto 0) => s_axi_wdata(10 downto 0),
      scndry_out => scl_clean,
      sda_setup_reg(10) => \SETUP_CNT/q_int_reg\(0),
      sda_setup_reg(9) => \SETUP_CNT/q_int_reg\(1),
      sda_setup_reg(8) => \SETUP_CNT/q_int_reg\(2),
      sda_setup_reg(7) => \SETUP_CNT/q_int_reg\(3),
      sda_setup_reg(6) => \SETUP_CNT/q_int_reg\(4),
      sda_setup_reg(5) => \SETUP_CNT/q_int_reg\(5),
      sda_setup_reg(4) => \SETUP_CNT/q_int_reg\(6),
      sda_setup_reg(3) => \SETUP_CNT/q_int_reg\(7),
      sda_setup_reg(2) => \SETUP_CNT/q_int_reg\(8),
      sda_setup_reg(1) => \SETUP_CNT/q_int_reg\(9),
      sda_setup_reg(0) => \SETUP_CNT/q_int_reg\(10),
      \sr_i_reg[0]_0\(0) => sr_i(0),
      \sr_i_reg[0]_1\ => WRITE_FIFO_I_n_16,
      \sr_i_reg[1]_0\(5) => p_0_out(6),
      \sr_i_reg[1]_0\(4) => Rc_fifo_full,
      \sr_i_reg[1]_0\(3) => Tx_fifo_full,
      \sr_i_reg[1]_0\(2) => Srw,
      \sr_i_reg[1]_0\(1) => Bb,
      \sr_i_reg[1]_0\(0) => Abgc,
      \sr_i_reg[4]_0\ => REG_INTERFACE_I_n_117,
      \sr_i_reg[5]_0\ => REG_INTERFACE_I_n_118,
      stop_scl_reg => stop_scl_reg,
      \timing_param_tbuf_i_reg[10]_0\(10 downto 0) => timing_param_tbuf_i(10 downto 0),
      \timing_param_thdsta_i_reg[10]_0\ => REG_INTERFACE_I_n_32,
      \timing_param_thdsta_i_reg[7]_0\(6 downto 1) => timing_param_thdsta_i(7 downto 2),
      \timing_param_thdsta_i_reg[7]_0\(0) => timing_param_thdsta_i(0),
      \timing_param_thigh_i_reg[8]_0\(8 downto 0) => timing_param_thigh_i(8 downto 0),
      \timing_param_tlow_i_reg[10]_0\ => REG_INTERFACE_I_n_34,
      \timing_param_tlow_i_reg[7]_0\(4 downto 1) => timing_param_tlow_i(7 downto 4),
      \timing_param_tlow_i_reg[7]_0\(0) => timing_param_tlow_i(0),
      \timing_param_tsudat_i_reg[3]_0\(3 downto 0) => timing_param_tsudat_i(3 downto 0),
      \timing_param_tsudat_i_reg[4]_0\ => REG_INTERFACE_I_n_103,
      \timing_param_tsudat_i_reg[5]_0\ => REG_INTERFACE_I_n_104,
      \timing_param_tsudat_i_reg[6]_0\ => REG_INTERFACE_I_n_43,
      \timing_param_tsudat_i_reg[6]_1\ => REG_INTERFACE_I_n_105,
      \timing_param_tsudat_i_reg[7]_0\ => REG_INTERFACE_I_n_106,
      \timing_param_tsusta_i_reg[7]_0\(7 downto 0) => timing_param_tsusta_i(7 downto 0),
      \timing_param_tsusto_i_reg[0]_0\ => REG_INTERFACE_I_n_54,
      \timing_param_tsusto_i_reg[7]_0\(7 downto 0) => timing_param_tsusto_i(7 downto 0)
    );
Rc_fifo_rd_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_rd,
      Q => Rc_fifo_rd_d,
      R => Bus2IIC_Reset
    );
Rc_fifo_wr_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_wr,
      Q => Rc_fifo_wr_d,
      R => Bus2IIC_Reset
    );
Tx_fifo_rd_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_fifo_rd,
      Q => Tx_fifo_rd_d,
      R => Bus2IIC_Reset
    );
Tx_fifo_wr_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_fifo_wr,
      Q => Tx_fifo_wr_d,
      R => Bus2IIC_Reset
    );
WRITE_FIFO_CTRL_I: entity work.\design_1_axi_iic_0_0_SRL_FIFO__parameterized0\
     port map (
      \Addr_Counters[0].MUXCY_L_I_0\ => REG_INTERFACE_I_n_29,
      \Addr_Counters[0].MUXCY_L_I_1\ => DYN_MASTER_I_n_6,
      \Addr_Counters[1].FDRE_I_0\ => WRITE_FIFO_CTRL_I_n_4,
      D => D_0,
      Data_Exists_DFF_0 => WRITE_FIFO_CTRL_I_n_0,
      \FIFO_RAM[1].SRL16E_I_0\ => WRITE_FIFO_CTRL_I_n_3,
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      \cr_i_reg[2]\ => WRITE_FIFO_I_n_16,
      ctrlFifoDin(0 to 1) => ctrlFifoDin(0 to 1),
      dynamic_MSMS(0 to 1) => dynamic_MSMS(0 to 1),
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      s_axi_aclk => s_axi_aclk
    );
WRITE_FIFO_I: entity work.design_1_axi_iic_0_0_SRL_FIFO_0
     port map (
      \Addr_Counters[0].MUXCY_L_I_0\ => REG_INTERFACE_I_n_121,
      \Addr_Counters[0].MUXCY_L_I_1\ => DYN_MASTER_I_n_6,
      \Addr_Counters[1].FDRE_I_0\(0) => Tx_fifo_full,
      \Addr_Counters[3].FDRE_I_0\ => WRITE_FIFO_I_n_17,
      Data_Exists_DFF_0 => WRITE_FIFO_I_n_16,
      \FIFO_RAM[0].SRL16E_I_0\ => WRITE_FIFO_I_n_14,
      \FIFO_RAM[7].SRL16E_I_0\(0) => p_2_in(0),
      Tx_addr_0(3 downto 0) => Tx_addr_0(3 downto 0),
      Tx_data_exists_sgl => Tx_data_exists_sgl,
      Tx_fifo_data_0(7 downto 0) => Tx_fifo_data_0(7 downto 0),
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr => Tx_fifo_wr,
      Tx_fifo_wr_d => Tx_fifo_wr_d,
      callingReadAccess => callingReadAccess,
      \data_int_reg[0]\ => sda_clean,
      dynamic_MSMS(0 to 1) => dynamic_MSMS(0 to 1),
      earlyAckHdr => earlyAckHdr,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdCntrFrmTxFifo0 => rdCntrFrmTxFifo0,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      shift_reg_ld => shift_reg_ld
    );
X_AXI_IPIF_SSP1: entity work.design_1_axi_iic_0_0_axi_ipif_ssp1
     port map (
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(3),
      Bus2IIC_Reset => Bus2IIC_Reset,
      Bus2IIC_WrCE(11) => Bus2IIC_WrCE(0),
      Bus2IIC_WrCE(10) => Bus2IIC_WrCE(2),
      Bus2IIC_WrCE(9) => Bus2IIC_WrCE(4),
      Bus2IIC_WrCE(8) => Bus2IIC_WrCE(8),
      Bus2IIC_WrCE(7) => Bus2IIC_WrCE(10),
      Bus2IIC_WrCE(6) => Bus2IIC_WrCE(11),
      Bus2IIC_WrCE(5) => Bus2IIC_WrCE(12),
      Bus2IIC_WrCE(4) => Bus2IIC_WrCE(13),
      Bus2IIC_WrCE(3) => Bus2IIC_WrCE(14),
      Bus2IIC_WrCE(2) => Bus2IIC_WrCE(15),
      Bus2IIC_WrCE(1) => Bus2IIC_WrCE(16),
      Bus2IIC_WrCE(0) => Bus2IIC_WrCE(17),
      D(2) => IIC2Bus_Data(21),
      D(1) => IIC2Bus_Data(22),
      D(0) => IIC2Bus_Data(23),
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      Q(4) => Bus2IIC_Addr(2),
      Q(3) => Bus2IIC_Addr(3),
      Q(2) => Bus2IIC_Addr(4),
      Q(1) => Bus2IIC_Addr(5),
      Q(0) => Bus2IIC_Addr(6),
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Tx_addr_0(3 downto 0) => Tx_addr_0(3 downto 0),
      Tx_fifo_data_0(7 downto 0) => Tx_fifo_data_0(7 downto 0),
      Tx_fifo_rst => Tx_fifo_rst,
      \bus2ip_addr_i_reg[5]\ => X_AXI_IPIF_SSP1_n_27,
      \cr_i_reg[2]\(0) => IIC_CONTROL_I_n_32,
      \cr_i_reg[2]_0\ => WRITE_FIFO_CTRL_I_n_3,
      cr_txModeSelect_clr => cr_txModeSelect_clr,
      cr_txModeSelect_set => cr_txModeSelect_set,
      ctrlFifoDin(0 to 1) => ctrlFifoDin(0 to 1),
      firstDynStartSeen => firstDynStartSeen,
      gpo(0) => \^gpo\(0),
      iic2intc_irpt => iic2intc_irpt,
      is_read_reg => is_read_reg,
      is_write_reg => is_write_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid_i_reg => s_axi_bvalid_i_reg,
      s_axi_rdata(11 downto 0) => s_axi_rdata(11 downto 0),
      \s_axi_rdata_i[0]_i_2\(0) => REG_INTERFACE_I_n_96,
      \s_axi_rdata_i[0]_i_2_0\ => REG_INTERFACE_I_n_91,
      \s_axi_rdata_i[1]_i_2\ => REG_INTERFACE_I_n_120,
      \s_axi_rdata_i[2]_i_2\ => REG_INTERFACE_I_n_92,
      \s_axi_rdata_i[2]_i_2_0\ => REG_INTERFACE_I_n_118,
      \s_axi_rdata_i[3]_i_2\(3 downto 0) => timing_param_tsudat_i(3 downto 0),
      \s_axi_rdata_i[3]_i_2_0\ => REG_INTERFACE_I_n_102,
      \s_axi_rdata_i[3]_i_2_1\ => REG_INTERFACE_I_n_117,
      \s_axi_rdata_i[7]_i_8\(5) => Cr(0),
      \s_axi_rdata_i[7]_i_8\(4) => Cr(1),
      \s_axi_rdata_i[7]_i_8\(3) => Cr(2),
      \s_axi_rdata_i[7]_i_8\(2) => Cr(3),
      \s_axi_rdata_i[7]_i_8\(1) => Cr(4),
      \s_axi_rdata_i[7]_i_8\(0) => Cr(7),
      \s_axi_rdata_i[7]_i_8_0\(4 downto 1) => timing_param_tlow_i(7 downto 4),
      \s_axi_rdata_i[7]_i_8_0\(0) => timing_param_tlow_i(0),
      \s_axi_rdata_i_reg[1]\ => REG_INTERFACE_I_n_119,
      \s_axi_rdata_i_reg[4]_i_2\ => REG_INTERFACE_I_n_103,
      \s_axi_rdata_i_reg[5]_i_2\ => REG_INTERFACE_I_n_104,
      \s_axi_rdata_i_reg[6]_i_2\ => REG_INTERFACE_I_n_105,
      \s_axi_rdata_i_reg[7]_i_2\ => REG_INTERFACE_I_n_106,
      \s_axi_rdata_i_reg[7]_i_6\(7 downto 0) => timing_param_tsusta_i(7 downto 0),
      \s_axi_rdata_i_reg[7]_i_6_0\(7 downto 0) => timing_param_tbuf_i(7 downto 0),
      \s_axi_rdata_i_reg[7]_i_6_1\(6 downto 1) => timing_param_thdsta_i(7 downto 2),
      \s_axi_rdata_i_reg[7]_i_6_1\(0) => timing_param_thdsta_i(0),
      \s_axi_rdata_i_reg[7]_i_6_2\(5 downto 0) => data4(7 downto 2),
      \s_axi_rdata_i_reg[7]_i_7\(7 downto 0) => timing_param_tsusto_i(7 downto 0),
      \s_axi_rdata_i_reg[7]_i_7_0\(7 downto 0) => timing_param_thigh_i(7 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid_i_reg => s_axi_rvalid_i_reg,
      s_axi_wdata(10) => s_axi_wdata(11),
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      \s_axi_wdata[5]\(1) => X_AXI_IPIF_SSP1_n_13,
      \s_axi_wdata[5]\(0) => X_AXI_IPIF_SSP1_n_14,
      s_axi_wdata_0_sp_1 => X_AXI_IPIF_SSP1_n_30,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0_axi_iic is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of design_1_axi_iic_0_0_axi_iic : entity is "8'b00000000";
  attribute C_DISABLE_SETUP_VIOLATION_CHECK : integer;
  attribute C_DISABLE_SETUP_VIOLATION_CHECK of design_1_axi_iic_0_0_axi_iic : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_axi_iic_0_0_axi_iic : entity is "zynquplus";
  attribute C_GPO_WIDTH : integer;
  attribute C_GPO_WIDTH of design_1_axi_iic_0_0_axi_iic : entity is 1;
  attribute C_IIC_FREQ : integer;
  attribute C_IIC_FREQ of design_1_axi_iic_0_0_axi_iic : entity is 100000;
  attribute C_SCL_INERTIAL_DELAY : integer;
  attribute C_SCL_INERTIAL_DELAY of design_1_axi_iic_0_0_axi_iic : entity is 0;
  attribute C_SDA_INERTIAL_DELAY : integer;
  attribute C_SDA_INERTIAL_DELAY of design_1_axi_iic_0_0_axi_iic : entity is 0;
  attribute C_SDA_LEVEL : integer;
  attribute C_SDA_LEVEL of design_1_axi_iic_0_0_axi_iic : entity is 1;
  attribute C_SMBUS_PMBUS_HOST : integer;
  attribute C_SMBUS_PMBUS_HOST of design_1_axi_iic_0_0_axi_iic : entity is 0;
  attribute C_STATIC_TIMING_REG_WIDTH : integer;
  attribute C_STATIC_TIMING_REG_WIDTH of design_1_axi_iic_0_0_axi_iic : entity is 0;
  attribute C_S_AXI_ACLK_FREQ_HZ : integer;
  attribute C_S_AXI_ACLK_FREQ_HZ of design_1_axi_iic_0_0_axi_iic : entity is 150074602;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of design_1_axi_iic_0_0_axi_iic : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_axi_iic_0_0_axi_iic : entity is 32;
  attribute C_TEN_BIT_ADR : integer;
  attribute C_TEN_BIT_ADR of design_1_axi_iic_0_0_axi_iic : entity is 0;
  attribute C_TIMING_REG_WIDTH : integer;
  attribute C_TIMING_REG_WIDTH of design_1_axi_iic_0_0_axi_iic : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_iic_0_0_axi_iic : entity is "axi_iic";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_axi_iic_0_0_axi_iic : entity is "yes";
end design_1_axi_iic_0_0_axi_iic;

architecture STRUCTURE of design_1_axi_iic_0_0_axi_iic is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10 downto 0) <= \^s_axi_rdata\(10 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
  scl_o <= \<const0>\;
  sda_o <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
X_IIC: entity work.design_1_axi_iic_0_0_iic
     port map (
      gpo(0) => gpo(0),
      iic2intc_irpt => iic2intc_irpt,
      is_read_reg => s_axi_arready,
      is_write_reg => \^s_axi_awready\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid_i_reg => s_axi_bvalid,
      s_axi_rdata(11) => \^s_axi_rdata\(31),
      s_axi_rdata(10 downto 0) => \^s_axi_rdata\(10 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid_i_reg => s_axi_rvalid,
      s_axi_wdata(11) => s_axi_wdata(31),
      s_axi_wdata(10 downto 0) => s_axi_wdata(10 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      scl_i => scl_i,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_t => sda_t
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_iic_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_iic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_iic_0_0 : entity is "design_1_axi_iic_0_0,axi_iic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_axi_iic_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_axi_iic_0_0 : entity is "axi_iic,Vivado 2022.1";
end design_1_axi_iic_0_0;

architecture STRUCTURE of design_1_axi_iic_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_U0_scl_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sda_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 30 downto 11 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "8'b00000000";
  attribute C_DISABLE_SETUP_VIOLATION_CHECK : integer;
  attribute C_DISABLE_SETUP_VIOLATION_CHECK of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynquplus";
  attribute C_GPO_WIDTH : integer;
  attribute C_GPO_WIDTH of U0 : label is 1;
  attribute C_IIC_FREQ : integer;
  attribute C_IIC_FREQ of U0 : label is 100000;
  attribute C_SCL_INERTIAL_DELAY : integer;
  attribute C_SCL_INERTIAL_DELAY of U0 : label is 0;
  attribute C_SDA_INERTIAL_DELAY : integer;
  attribute C_SDA_INERTIAL_DELAY of U0 : label is 0;
  attribute C_SDA_LEVEL : integer;
  attribute C_SDA_LEVEL of U0 : label is 1;
  attribute C_SMBUS_PMBUS_HOST : integer;
  attribute C_SMBUS_PMBUS_HOST of U0 : label is 0;
  attribute C_STATIC_TIMING_REG_WIDTH : integer;
  attribute C_STATIC_TIMING_REG_WIDTH of U0 : label is 0;
  attribute C_S_AXI_ACLK_FREQ_HZ : integer;
  attribute C_S_AXI_ACLK_FREQ_HZ of U0 : label is 150074602;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TEN_BIT_ADR : integer;
  attribute C_TEN_BIT_ADR of U0 : label is 0;
  attribute C_TIMING_REG_WIDTH : integer;
  attribute C_TIMING_REG_WIDTH of U0 : label is 32;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of iic2intc_irpt : signal is "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of iic2intc_irpt : signal is "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 150074602, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_sys, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of scl_i : signal is "xilinx.com:interface:iic:1.0 IIC SCL_I";
  attribute x_interface_info of scl_o : signal is "xilinx.com:interface:iic:1.0 IIC SCL_O";
  attribute x_interface_info of scl_t : signal is "xilinx.com:interface:iic:1.0 IIC SCL_T";
  attribute x_interface_info of sda_i : signal is "xilinx.com:interface:iic:1.0 IIC SDA_I";
  attribute x_interface_parameter of sda_i : signal is "XIL_INTERFACENAME IIC, BOARD.ASSOCIATED_PARAM IIC_BOARD_INTERFACE";
  attribute x_interface_info of sda_o : signal is "xilinx.com:interface:iic:1.0 IIC SDA_O";
  attribute x_interface_info of sda_t : signal is "xilinx.com:interface:iic:1.0 IIC SDA_T";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 150074602, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_sys, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10 downto 0) <= \^s_axi_rdata\(10 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  scl_o <= \<const0>\;
  sda_o <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_axi_iic_0_0_axi_iic
     port map (
      gpo(0) => gpo(0),
      iic2intc_irpt => iic2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1) => \^s_axi_bresp\(1),
      s_axi_bresp(0) => NLW_U0_s_axi_bresp_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31) => \^s_axi_rdata\(31),
      s_axi_rdata(30 downto 11) => NLW_U0_s_axi_rdata_UNCONNECTED(30 downto 11),
      s_axi_rdata(10 downto 0) => \^s_axi_rdata\(10 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1) => \^s_axi_rresp\(1),
      s_axi_rresp(0) => NLW_U0_s_axi_rresp_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31) => s_axi_wdata(31),
      s_axi_wdata(30 downto 11) => B"00000000000000000000",
      s_axi_wdata(10 downto 0) => s_axi_wdata(10 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid,
      scl_i => scl_i,
      scl_o => NLW_U0_scl_o_UNCONNECTED,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => NLW_U0_sda_o_UNCONNECTED,
      sda_t => sda_t
    );
end STRUCTURE;
