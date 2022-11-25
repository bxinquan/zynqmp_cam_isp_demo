-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity design_1_v_frmbuf_rd_0_0_MEMORY2LIVE_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 2; 
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


architecture rtl of design_1_v_frmbuf_rd_0_0_MEMORY2LIVE_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00", 1 => "01", 2 => "10", 3 => "11", 4 => "00", 5 => "01", 
    6 => "10", 7 to 10=> "00", 11 => "01", 12 => "10", 13 => "01", 14 => "10", 
    15 => "00", 16 => "01", 17 => "00", 18 => "10", 19 => "11", 20 => "00", 
    21 => "01", 22 => "10", 23 => "11", 24 to 26=> "01", 27 => "00", 28 => "10", 
    29 to 30=> "00", 31 => "01", 32 => "10", 33 => "11", 34 => "01", 35 => "00", 
    36 => "01", 37 => "10", 38 => "11", 39 => "01", 40 to 41=> "00", 42 to 43=> "01" );


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

