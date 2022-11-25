-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity design_1_v_frmbuf_rd_0_0_mux_35_10_1_1 is
generic (
    ID            :integer := 0;
    NUM_STAGE     :integer := 1;
    din0_WIDTH       :integer := 32;
    din1_WIDTH       :integer := 32;
    din2_WIDTH       :integer := 32;
    din3_WIDTH       :integer := 32;
    dout_WIDTH        :integer := 32);
port (
    din0   :in  std_logic_vector(9 downto 0);
    din1   :in  std_logic_vector(9 downto 0);
    din2   :in  std_logic_vector(9 downto 0);
    din3   :in  std_logic_vector(4 downto 0);
    dout     :out std_logic_vector(9 downto 0));
end entity;

architecture rtl of design_1_v_frmbuf_rd_0_0_mux_35_10_1_1 is
    -- puts internal signals
    signal sel    : std_logic_vector(4 downto 0);
    -- level 1 signals
    signal mux_1_0    : std_logic_vector(9 downto 0);
    signal mux_1_1    : std_logic_vector(9 downto 0);
    -- level 2 signals
    signal mux_2_0    : std_logic_vector(9 downto 0);
    -- level 3 signals
    signal mux_3_0    : std_logic_vector(9 downto 0);
    -- level 4 signals
    signal mux_4_0    : std_logic_vector(9 downto 0);
    -- level 5 signals
    signal mux_5_0    : std_logic_vector(9 downto 0);
begin

sel <= din3;

-- Generate level 1 logic
mux_1_0 <= din0 when sel(0) = '0' else din1;
mux_1_1 <= din2;

-- Generate level 2 logic
mux_2_0 <= mux_1_0 when sel(1) = '0' else mux_1_1;

-- Generate level 3 logic
mux_3_0 <= mux_2_0;

-- Generate level 4 logic
mux_4_0 <= mux_3_0;

-- Generate level 5 logic
mux_5_0 <= mux_4_0;

-- output logic
dout <= mux_5_0;

end architecture;
