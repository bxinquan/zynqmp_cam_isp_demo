-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity design_1_v_frmbuf_wr_0_2_BYTES_PER_PIXEL_ROM_AUTO_1R is 
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


architecture rtl of design_1_v_frmbuf_wr_0_2_BYTES_PER_PIXEL_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 to 9=> "000", 10 to 11=> "100", 12 => "010", 13 to 16=> "100", 17 => "010", 18 to 19=> "001", 
    20 to 21=> "011", 22 to 23=> "100", 24 => "001", 25 to 27=> "100", 28 => "010", 29 => "011", 
    30 to 31=> "101", 32 to 34=> "011", 35 to 36=> "110", 37 to 39=> "010", 40 to 41=> "000", 42 => "001", 
    43 => "100" );


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

