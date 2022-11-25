-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity design_1_v_frmbuf_wr_0_0_MEMORY2LIVE_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 3; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 44
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of design_1_v_frmbuf_wr_0_0_MEMORY2LIVE_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "000", 1 => "001", 2 => "010", 3 => "011", 4 => "000", 5 => "101", 
    6 => "110", 7 to 10=> "000", 11 => "001", 12 => "010", 13 => "101", 14 => "110", 
    15 => "000", 16 => "001", 17 => "000", 18 => "010", 19 => "011", 20 => "000", 
    21 => "001", 22 => "010", 23 => "011", 24 to 25=> "001", 26 => "101", 27 => "000", 
    28 => "010", 29 to 30=> "000", 31 => "001", 32 => "010", 33 => "011", 34 => "001", 
    35 => "000", 36 => "001", 37 => "010", 38 => "011", 39 => "001", 40 to 41=> "000", 
    42 to 43=> "001" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;

