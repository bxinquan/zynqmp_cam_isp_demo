-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sat Dec 17 00:26:58 2022
-- Host        : LEGION-BIANXINQUAN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/zynqmp_cam_isp_demo/zynqmp_cam_isp_demo.gen/sources_1/bd/design_1/ip/design_1_video_to_axis_0_0/design_1_video_to_axis_0_0_stub.vhdl
-- Design      : design_1_video_to_axis_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_video_to_axis_0_0 is
  Port ( 
    vid_clk : in STD_LOGIC;
    vid_rstn : in STD_LOGIC;
    vid_ce : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 39 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC;
    overflow : out STD_LOGIC
  );

end design_1_video_to_axis_0_0;

architecture stub of design_1_video_to_axis_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "vid_clk,vid_rstn,vid_ce,vid_vsync,vid_active_video,vid_data[39:0],aclk,aresetn,m_axis_tdata[39:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tuser,overflow";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "video_to_axis_v1_0,Vivado 2022.1";
begin
end;
