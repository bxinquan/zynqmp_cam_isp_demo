-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
-- 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi is
    generic (
        CONSERVATIVE              : INTEGER := 0;
        NUM_READ_OUTSTANDING      : INTEGER := 2;
        NUM_WRITE_OUTSTANDING     : INTEGER := 2;
        MAX_READ_BURST_LENGTH     : INTEGER := 16;
        MAX_WRITE_BURST_LENGTH    : INTEGER := 16;
        C_M_AXI_ID_WIDTH          : INTEGER := 1;
        C_M_AXI_ADDR_WIDTH        : INTEGER := 32;
        C_M_AXI_DATA_WIDTH        : INTEGER := 32;
        C_M_AXI_AWUSER_WIDTH      : INTEGER := 1;
        C_M_AXI_ARUSER_WIDTH      : INTEGER := 1;
        C_M_AXI_WUSER_WIDTH       : INTEGER := 1;
        C_M_AXI_RUSER_WIDTH       : INTEGER := 1;
        C_M_AXI_BUSER_WIDTH       : INTEGER := 1;
        C_TARGET_ADDR             : INTEGER := 16#00000000#;
        C_USER_VALUE              : INTEGER := 0;
        C_PROT_VALUE              : INTEGER := 2#000#;
        C_CACHE_VALUE             : INTEGER := 2#0011#;
        USER_DW                   : INTEGER := 16;
        USER_AW                   : INTEGER := 32;
        USER_MAXREQS              : INTEGER := 16;
        USER_RFIFONUM_WIDTH       : INTEGER := 6;
        MAXI_BUFFER_IMPL          : STRING  := "block");
    port (
        
        -- flush related
        flush           : in STD_LOGIC;
        flush_done      : out STD_LOGIC; 
        -- system signal
        ACLK            : in STD_LOGIC;
        ARESET          : in STD_LOGIC;
        ACLK_EN         : in STD_LOGIC;
        -- write address channel
        AWID            : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        AWADDR          : out STD_LOGIC_VECTOR(C_M_AXI_ADDR_WIDTH-1 downto 0);
        AWLEN           : out STD_LOGIC_VECTOR(7 downto 0);
        AWSIZE          : out STD_LOGIC_VECTOR(2 downto 0);
        AWBURST         : out STD_LOGIC_VECTOR(1 downto 0);
        AWLOCK          : out STD_LOGIC_VECTOR(1 downto 0);
        AWCACHE         : out STD_LOGIC_VECTOR(3 downto 0);
        AWPROT          : out STD_LOGIC_VECTOR(2 downto 0);
        AWQOS           : out STD_LOGIC_VECTOR(3 downto 0);
        AWREGION        : out STD_LOGIC_VECTOR(3 downto 0);
        AWUSER          : out STD_LOGIC_VECTOR(C_M_AXI_AWUSER_WIDTH-1 downto 0);
        AWVALID         : out STD_LOGIC;
        AWREADY         : in  STD_LOGIC;
        -- write data channel
        WID             : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        WDATA           : out STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH-1 downto 0);
        WSTRB           : out STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH/8-1 downto 0);
        WLAST           : out STD_LOGIC;
        WUSER           : out STD_LOGIC_VECTOR(C_M_AXI_WUSER_WIDTH-1 downto 0);
        WVALID          : out STD_LOGIC;
        WREADY          : in  STD_LOGIC;
        -- write response channel
        BID             : in  STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        BRESP           : in  STD_LOGIC_VECTOR(1 downto 0);
        BUSER           : in  STD_LOGIC_VECTOR(C_M_AXI_BUSER_WIDTH-1 downto 0);
        BVALID          : in  STD_LOGIC;
        BREADY          : out STD_LOGIC;
        -- read address channel
        ARID            : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        ARADDR          : out STD_LOGIC_VECTOR(C_M_AXI_ADDR_WIDTH-1 downto 0);
        ARLEN           : out STD_LOGIC_VECTOR(7 downto 0);
        ARSIZE          : out STD_LOGIC_VECTOR(2 downto 0);
        ARBURST         : out STD_LOGIC_VECTOR(1 downto 0);
        ARLOCK          : out STD_LOGIC_VECTOR(1 downto 0);
        ARCACHE         : out STD_LOGIC_VECTOR(3 downto 0);
        ARPROT          : out STD_LOGIC_VECTOR(2 downto 0);
        ARQOS           : out STD_LOGIC_VECTOR(3 downto 0);
        ARREGION        : out STD_LOGIC_VECTOR(3 downto 0);
        ARUSER          : out STD_LOGIC_VECTOR(C_M_AXI_ARUSER_WIDTH-1 downto 0);
        ARVALID         : out STD_LOGIC;
        ARREADY         : in  STD_LOGIC;
        -- read data channel
        RID             : in  STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        RDATA           : in  STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH-1 downto 0);
        RRESP           : in  STD_LOGIC_VECTOR(1 downto 0);
        RLAST           : in  STD_LOGIC;
        RUSER           : in  STD_LOGIC_VECTOR(C_M_AXI_RUSER_WIDTH-1 downto 0);
        RVALID          : in  STD_LOGIC;
        RREADY          : out STD_LOGIC;

        -- internal bus ports
        -- write address channel
        I_AWADDR        : in  STD_LOGIC_VECTOR(USER_AW-1 downto 0);
        I_AWLEN         : in  STD_LOGIC_VECTOR(31 downto 0);
        I_AWVALID       : in  STD_LOGIC;
        I_AWREADY       : out STD_LOGIC;
        -- write data channel
        I_WDATA         : in  STD_LOGIC_VECTOR(USER_DW-1 downto 0);
        I_WSTRB         : in  STD_LOGIC_VECTOR(USER_DW/8-1 downto 0);
        I_WVALID        : in  STD_LOGIC;
        I_WREADY        : out STD_LOGIC;
        -- write response channel
        I_BVALID        : out STD_LOGIC;
        I_BREADY        : in  STD_LOGIC;
        -- read address channel
        I_ARADDR        : in  STD_LOGIC_VECTOR(USER_AW-1 downto 0);
        I_ARLEN         : in  STD_LOGIC_VECTOR(31 downto 0);
        I_ARVALID       : in  STD_LOGIC;
        I_ARREADY       : out STD_LOGIC;
        -- read data channel
        I_RDATA         : out STD_LOGIC_VECTOR(USER_DW-1 downto 0);
        I_RFIFONUM      : out STD_LOGIC_VECTOR(USER_RFIFONUM_WIDTH-1 downto 0);
        I_RVALID        : out STD_LOGIC;
        I_RREADY        : in  STD_LOGIC);
end entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi;

architecture behave of design_1_v_frmbuf_wr_0_1_mm_video_m_axi is
    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_load is
        generic (
            C_TARGET_ADDR          : INTEGER := 16#00000000#;
            NUM_READ_OUTSTANDING   : INTEGER := 2;
            MAX_READ_BURST_LENGTH  : INTEGER := 16;
            BUS_ADDR_WIDTH         : INTEGER := 32;
            BUS_DATA_WIDTH         : INTEGER := 32;
            USER_DW                : INTEGER := 16;
            USER_AW                : INTEGER := 32;
            USER_MAXREQS           : INTEGER := 16;
            USER_RFIFONUM_WIDTH    : INTEGER := 6;
            BUFFER_IMPL            : STRING  := "auto");
        port (
            ACLK                   : in  STD_LOGIC;
            ARESET                 : in  STD_LOGIC;
            ACLK_EN                : in  STD_LOGIC;
            out_AXI_ARADDR         : out UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
            out_AXI_ARLEN          : out UNSIGNED(31 downto 0);
            out_AXI_ARVALID        : out STD_LOGIC;
            in_AXI_ARREADY         : in  STD_LOGIC;
            in_AXI_RDATA           : in  UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
            in_AXI_RLAST           : in  UNSIGNED(1 downto 0);
            in_AXI_RVALID          : in  STD_LOGIC;
            out_AXI_RREADY         : out STD_LOGIC;
            out_AXI_RBURST_READY   : out STD_LOGIC;
            in_HLS_ARADDR          : in  UNSIGNED(USER_AW-1 downto 0);
            in_HLS_ARLEN           : in  UNSIGNED(31 downto 0);
            in_HLS_ARVALID         : in  STD_LOGIC;
            out_HLS_ARREADY        : out STD_LOGIC;
            out_HLS_RDATA          : out UNSIGNED(USER_DW-1 downto 0);
            out_HLS_RVALID         : out STD_LOGIC;
            in_HLS_RREADY          : in  STD_LOGIC;
            out_HLS_RFIFONUM       : out UNSIGNED(USER_RFIFONUM_WIDTH-1 downto 0));
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_load;

    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_store is
        generic (
            C_TARGET_ADDR          : INTEGER := 16#00000000#;
            NUM_WRITE_OUTSTANDING  : INTEGER := 2;
            MAX_WRITE_BURST_LENGTH : INTEGER := 16;
            BUS_ADDR_WIDTH         : INTEGER := 32;
            BUS_DATA_WIDTH         : INTEGER := 32;
            USER_DW                : INTEGER := 16;
            USER_AW                : INTEGER := 32;
            USER_MAXREQS           : INTEGER := 16;
            BUFFER_IMPL            : STRING  := "auto");
        port (
            ACLK                   : in  STD_LOGIC;
            ARESET                 : in  STD_LOGIC;
            ACLK_EN                : in  STD_LOGIC;
            out_AXI_AWADDR         : out UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
            out_AXI_AWLEN          : out UNSIGNED(31 downto 0);
            out_AXI_AWVALID        : out STD_LOGIC;
            in_AXI_AWREADY         : in  STD_LOGIC;
            out_AXI_WDATA          : out UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
            out_AXI_WSTRB          : out UNSIGNED(BUS_DATA_WIDTH/8-1 downto 0);
            out_AXI_WVALID         : out STD_LOGIC;
            in_AXI_WREADY          : in  STD_LOGIC;
            in_AXI_BVALID          : in  STD_LOGIC;
            out_AXI_BREADY         : out STD_LOGIC; 
            in_HLS_AWADDR          : in  UNSIGNED(USER_AW-1 downto 0);
            in_HLS_AWLEN           : in  UNSIGNED(31 downto 0);
            in_HLS_AWVALID         : in  STD_LOGIC;
            out_HLS_AWREADY        : out STD_LOGIC;
            in_HLS_WDATA           : in  UNSIGNED(USER_DW-1 downto 0);
            in_HLS_WSTRB           : in  UNSIGNED(USER_DW/8-1 downto 0);
            in_HLS_WVALID          : in  STD_LOGIC;
            out_HLS_WREADY         : out STD_LOGIC;
            out_HLS_BVALID         : out STD_LOGIC;
            in_HLS_BREADY          : in  STD_LOGIC);
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_store;

    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_read is
        generic (
            NUM_READ_OUTSTANDING   : INTEGER := 1;
            MAX_READ_BURST_LENGTH  : INTEGER := 1;
            C_M_AXI_ID_WIDTH       : INTEGER := 1;
            C_M_AXI_ARUSER_WIDTH   : INTEGER := 1;
            C_M_AXI_RUSER_WIDTH    : INTEGER := 1;
            C_USER_VALUE           : INTEGER := 0;
            C_PROT_VALUE           : INTEGER := 0;
            C_CACHE_VALUE          : INTEGER := 2#0011#;
            BUS_ADDR_WIDTH         : INTEGER := 32;
            BUS_DATA_WIDTH         : INTEGER := 32);
        port (
            ACLK                   : in  STD_LOGIC;
            ARESET                 : in  STD_LOGIC;
            ACLK_EN                : in  STD_LOGIC;
            out_BUS_ARID           : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            out_BUS_ARADDR         : out UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
            out_BUS_ARLEN          : out UNSIGNED(7 downto 0);
            out_BUS_ARSIZE         : out UNSIGNED(2 downto 0);
            out_BUS_ARBURST        : out UNSIGNED(1 downto 0);
            out_BUS_ARLOCK         : out UNSIGNED(1 downto 0);
            out_BUS_ARCACHE        : out UNSIGNED(3 downto 0);
            out_BUS_ARPROT         : out UNSIGNED(2 downto 0);
            out_BUS_ARQOS          : out UNSIGNED(3 downto 0);
            out_BUS_ARREGION       : out UNSIGNED(3 downto 0);
            out_BUS_ARUSER         : out UNSIGNED(C_M_AXI_ARUSER_WIDTH-1 downto 0);
            out_BUS_ARVALID        : out STD_LOGIC;
            in_BUS_ARREADY         : in  STD_LOGIC;
            in_BUS_RID             : in  UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            in_BUS_RDATA           : in  UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
            in_BUS_RRESP           : in  UNSIGNED(1 downto 0);
            in_BUS_RLAST           : in  STD_LOGIC;
            in_BUS_RUSER           : in  UNSIGNED(C_M_AXI_RUSER_WIDTH-1 downto 0);
            in_BUS_RVALID          : in  STD_LOGIC;
            out_BUS_RREADY         : out STD_LOGIC;
            in_HLS_ARVALID         : in  STD_LOGIC;
            out_HLS_ARREADY        : out STD_LOGIC;
            in_HLS_ARADDR          : in  UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
            in_HLS_ARLEN           : in  UNSIGNED(31 downto 0);
            out_HLS_RVALID         : out STD_LOGIC;
            in_HLS_RREADY          : in  STD_LOGIC;
            in_HLS_RBURST_READY    : in  STD_LOGIC;
            out_HLS_RLAST          : out UNSIGNED(1 downto 0);
            out_HLS_RDATA          : out UNSIGNED(BUS_DATA_WIDTH-1 downto 0));
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_read;

    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_write is
        generic (
            CONSERVATIVE           : INTEGER := 0;
            C_M_AXI_ID_WIDTH       : INTEGER := 1;
            C_M_AXI_AWUSER_WIDTH   : INTEGER := 1;
            C_M_AXI_WUSER_WIDTH    : INTEGER := 1;
            C_M_AXI_BUSER_WIDTH    : INTEGER := 1;
            C_USER_VALUE           : INTEGER := 0;
            C_PROT_VALUE           : INTEGER := 0;
            C_CACHE_VALUE          : INTEGER := 2#0011#;
            BUS_ADDR_WIDTH         : INTEGER := 32;
            BUS_DATA_WIDTH         : INTEGER := 32;
            NUM_WRITE_OUTSTANDING  : INTEGER := 1;
            MAX_WRITE_BURST_LENGTH : INTEGER := 1);
        port (
            ACLK                   : in  STD_LOGIC;
            ARESET                 : in  STD_LOGIC;
            ACLK_EN                : in  STD_LOGIC;
            out_BUS_AWID           : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            out_BUS_AWSIZE         : out UNSIGNED(2 downto 0);
            out_BUS_AWBURST        : out UNSIGNED(1 downto 0);
            out_BUS_AWLOCK         : out UNSIGNED(1 downto 0);
            out_BUS_AWCACHE        : out UNSIGNED(3 downto 0);
            out_BUS_AWPROT         : out UNSIGNED(2 downto 0);
            out_BUS_AWQOS          : out UNSIGNED(3 downto 0);
            out_BUS_AWREGION       : out UNSIGNED(3 downto 0);
            out_BUS_AWUSER         : out UNSIGNED(C_M_AXI_AWUSER_WIDTH-1 downto 0);
            out_BUS_AWADDR         : out UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
            out_BUS_AWLEN          : out UNSIGNED(7 downto 0);
            out_BUS_AWVALID        : out STD_LOGIC;
            in_BUS_AWREADY         : in  STD_LOGIC;
            out_BUS_WID            : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            out_BUS_WDATA          : out UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
            out_BUS_WSTRB          : out UNSIGNED(BUS_DATA_WIDTH/8-1 downto 0);
            out_BUS_WLAST          : out STD_LOGIC;
            out_BUS_WUSER          : out UNSIGNED(C_M_AXI_WUSER_WIDTH-1 downto 0);
            out_BUS_WVALID         : out STD_LOGIC;
            in_BUS_WREADY          : in  STD_LOGIC;
            in_BUS_BID             : in  UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            in_BUS_BRESP           : in  UNSIGNED(1 downto 0);
            in_BUS_BUSER           : in  UNSIGNED(C_M_AXI_BUSER_WIDTH-1 downto 0);
            in_BUS_BVALID          : in  STD_LOGIC;
            out_BUS_BREADY         : out STD_LOGIC;
            in_HLS_AWVALID         : in  STD_LOGIC;
            out_HLS_AWREADY        : out STD_LOGIC;
            in_HLS_AWADDR          : in  UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
            in_HLS_AWLEN           : in  UNSIGNED(31 downto 0);
            in_HLS_WVALID          : in  STD_LOGIC;
            out_HLS_WREADY         : out STD_LOGIC;
            in_HLS_WSTRB           : in  UNSIGNED(BUS_DATA_WIDTH/8-1 downto 0);
            in_HLS_WDATA           : in  UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
            out_HLS_BVALID         : out STD_LOGIC;
            in_HLS_BREADY          : in  STD_LOGIC;
            out_HLS_BRESP          : out UNSIGNED(1 downto 0));
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_write;

    
    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_flushManager is
        generic (
            NUM_READ_OUTSTANDING   : INTEGER := 2;
            NUM_WRITE_OUTSTANDING  : INTEGER := 2);
        port (
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            clk_en : in STD_LOGIC;
            flush : in STD_LOGIC;
            flush_done : out STD_LOGIC;
            in_AWVALID : in STD_LOGIC;
            out_AWVALID : out STD_LOGIC;
            in_AWREADY : in STD_LOGIC;
            out_AWREADY : out STD_LOGIC;
            in_WVALID : in STD_LOGIC;
            out_WVALID : out STD_LOGIC;
            in_BREADY : in STD_LOGIC;
            out_BREADY : out STD_LOGIC;
            in_BVALID : in STD_LOGIC;
            in_ARVALID : in STD_LOGIC;
            out_ARVALID : out STD_LOGIC;
            in_ARREADY : in STD_LOGIC;
            in_RREADY : in STD_LOGIC;
            out_RREADY : out STD_LOGIC;
            in_RVALID : in STD_LOGIC;
            in_RLAST : in STD_LOGIC);
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_flushManager;

    signal AWADDR_Dummy   : UNSIGNED(C_M_AXI_ADDR_WIDTH-1 downto 0);
    signal AWLEN_Dummy    : UNSIGNED(31 downto 0);
    signal AWVALID_Dummy  : STD_LOGIC;
    signal AWREADY_Dummy  : STD_LOGIC;
    signal WDATA_Dummy    : UNSIGNED(C_M_AXI_DATA_WIDTH-1 downto 0);
    signal WSTRB_Dummy    : UNSIGNED(C_M_AXI_DATA_WIDTH/8-1 downto 0);
    signal WVALID_Dummy   : STD_LOGIC;
    signal WREADY_Dummy   : STD_LOGIC;
    signal BVALID_Dummy   : STD_LOGIC;
    signal BREADY_Dummy   : STD_LOGIC;
    signal ARADDR_Dummy   : UNSIGNED(C_M_AXI_ADDR_WIDTH-1 downto 0);
    signal ARLEN_Dummy    : UNSIGNED(31 downto 0);
    signal ARVALID_Dummy  : STD_LOGIC;
    signal ARREADY_Dummy  : STD_LOGIC;
    signal RDATA_Dummy    : UNSIGNED(C_M_AXI_DATA_WIDTH-1 downto 0);
    signal RLAST_Dummy    : UNSIGNED(1 downto 0);
    signal RVALID_Dummy   : STD_LOGIC;
    signal RREADY_Dummy   : STD_LOGIC;
    signal RBURST_READY_Dummy   : STD_LOGIC;
    
    signal AWVALIDFromWriteUnit : STD_LOGIC;
    signal AWREADYToWriteUnit   : STD_LOGIC;
    signal WVALIDFromWriteUnit  : STD_LOGIC;
    signal BREADYFromWriteUnit  : STD_LOGIC;
    signal ARVALIDFromReadUnit  : STD_LOGIC;
    signal RREADYFromReadUnit   : STD_LOGIC; 

begin
    -- Instantiation
    load_unit : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_load
        generic map(
            C_TARGET_ADDR          => C_TARGET_ADDR,
            NUM_READ_OUTSTANDING   => NUM_READ_OUTSTANDING,
            MAX_READ_BURST_LENGTH  => MAX_READ_BURST_LENGTH,
            BUS_ADDR_WIDTH         => C_M_AXI_ADDR_WIDTH,
            BUS_DATA_WIDTH         => C_M_AXI_DATA_WIDTH,
            USER_DW                => USER_DW,
            USER_AW                => USER_AW,
            USER_MAXREQS           => USER_MAXREQS,
            USER_RFIFONUM_WIDTH    => USER_RFIFONUM_WIDTH,
            BUFFER_IMPL            => MAXI_BUFFER_IMPL)
        port map(
            ACLK                   => ACLK,
            ARESET                 => ARESET,
            ACLK_EN                => ACLK_EN,
    
            out_AXI_ARADDR         => ARADDR_Dummy,
            out_AXI_ARLEN          => ARLEN_Dummy,
            out_AXI_ARVALID        => ARVALID_Dummy,
            in_AXI_ARREADY         => ARREADY_Dummy,
            in_AXI_RDATA           => RDATA_Dummy,
            in_AXI_RLAST           => RLAST_Dummy,
            in_AXI_RVALID          => RVALID_Dummy,
            out_AXI_RREADY         => RREADY_Dummy,
            out_AXI_RBURST_READY   => RBURST_READY_Dummy,
            
            in_HLS_ARADDR          => UNSIGNED(I_ARADDR),
            in_HLS_ARLEN           => UNSIGNED(I_ARLEN),
            in_HLS_ARVALID         => I_ARVALID,
            out_HLS_ARREADY        => I_ARREADY,
            STD_LOGIC_VECTOR(out_HLS_RDATA)    => I_RDATA,
            out_HLS_RVALID         => I_RVALID,
            in_HLS_RREADY          => I_RREADY,
            STD_LOGIC_VECTOR(out_HLS_RFIFONUM) => I_RFIFONUM);

    store_unit : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_store
        generic map (
            C_TARGET_ADDR          => C_TARGET_ADDR,
            NUM_WRITE_OUTSTANDING  => NUM_WRITE_OUTSTANDING,
            MAX_WRITE_BURST_LENGTH => MAX_WRITE_BURST_LENGTH,
            BUS_ADDR_WIDTH         => C_M_AXI_ADDR_WIDTH,
            BUS_DATA_WIDTH         => C_M_AXI_DATA_WIDTH,
            USER_DW                => USER_DW,
            USER_AW                => USER_AW,
            USER_MAXREQS           => USER_MAXREQS,
            BUFFER_IMPL            => MAXI_BUFFER_IMPL) 
        port map (
            ACLK                   => ACLK,
            ARESET                 => ARESET,
            ACLK_EN                => ACLK_EN,
    
            out_AXI_AWADDR         => AWADDR_Dummy,
            out_AXI_AWLEN          => AWLEN_Dummy,
            out_AXI_AWVALID        => AWVALID_Dummy,
            in_AXI_AWREADY         => AWREADY_Dummy,
            out_AXI_WDATA          => WDATA_Dummy,
            out_AXI_WSTRB          => WSTRB_Dummy,
            out_AXI_WVALID         => WVALID_Dummy,
            in_AXI_WREADY          => WREADY_Dummy,
            in_AXI_BVALID          => BVALID_Dummy,
            out_AXI_BREADY         => BREADY_Dummy,
        
            in_HLS_AWADDR          => UNSIGNED(I_AWADDR),
            in_HLS_AWLEN           => UNSIGNED(I_AWLEN),
            in_HLS_AWVALID         => I_AWVALID,
            out_HLS_AWREADY        => I_AWREADY,
            in_HLS_WDATA           => UNSIGNED(I_WDATA),
            in_HLS_WSTRB           => UNSIGNED(I_WSTRB),
            in_HLS_WVALID          => I_WVALID,
            out_HLS_WREADY         => I_WREADY,
            out_HLS_BVALID         => I_BVALID,
            in_HLS_BREADY          => I_BREADY);

    bus_read : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_read
        generic map (
            C_M_AXI_ID_WIDTH       => C_M_AXI_ID_WIDTH,
            C_M_AXI_ARUSER_WIDTH   => C_M_AXI_ARUSER_WIDTH,
            C_M_AXI_RUSER_WIDTH    => C_M_AXI_RUSER_WIDTH,
            C_USER_VALUE           => C_USER_VALUE,
            C_PROT_VALUE           => C_PROT_VALUE,
            C_CACHE_VALUE          => C_CACHE_VALUE,
            BUS_ADDR_WIDTH         => C_M_AXI_ADDR_WIDTH,
            BUS_DATA_WIDTH         => C_M_AXI_DATA_WIDTH,
            NUM_READ_OUTSTANDING   => NUM_READ_OUTSTANDING,
            MAX_READ_BURST_LENGTH  => MAX_READ_BURST_LENGTH)
        port map (
            ACLK                               => ACLK,
            ARESET                             => ARESET,
            ACLK_EN                            => ACLK_EN,
            STD_LOGIC_VECTOR(out_BUS_ARID)     => ARID,
            STD_LOGIC_VECTOR(out_BUS_ARADDR)   => ARADDR,
            STD_LOGIC_VECTOR(out_BUS_ARLEN)    => ARLEN,
            STD_LOGIC_VECTOR(out_BUS_ARSIZE)   => ARSIZE,
            STD_LOGIC_VECTOR(out_BUS_ARBURST)  => ARBURST,
            STD_LOGIC_VECTOR(out_BUS_ARLOCK)   => ARLOCK,
            STD_LOGIC_VECTOR(out_BUS_ARCACHE)  => ARCACHE,
            STD_LOGIC_VECTOR(out_BUS_ARPROT)   => ARPROT,
            STD_LOGIC_VECTOR(out_BUS_ARQOS)    => ARQOS,
            STD_LOGIC_VECTOR(out_BUS_ARREGION) => ARREGION,
            STD_LOGIC_VECTOR(out_BUS_ARUSER)   => ARUSER,
            
            out_BUS_ARVALID                    => ARVALIDFromReadUnit,
            
            in_BUS_ARREADY                     => ARREADY,
            in_BUS_RID                         => UNSIGNED(RID),
            in_BUS_RDATA                       => UNSIGNED(RDATA),
            in_BUS_RRESP                       => UNSIGNED(RRESP),
            in_BUS_RLAST                       => RLAST,
            in_BUS_RUSER                       => UNSIGNED(RUSER),
            in_BUS_RVALID                      => RVALID,
            
            out_BUS_RREADY                     => RREADYFromReadUnit,
            
            in_HLS_ARVALID                     => ARVALID_Dummy,
            out_HLS_ARREADY                    => ARREADY_Dummy,
            in_HLS_ARADDR                      => ARADDR_Dummy,
            in_HLS_ARLEN                       => ARLEN_Dummy,
            out_HLS_RVALID                     => RVALID_Dummy,
            in_HLS_RREADY                      => RREADY_Dummy,
            in_HLS_RBURST_READY                => RBURST_READY_Dummy,
            out_HLS_RLAST                      => RLAST_Dummy,
            out_HLS_RDATA                      => RDATA_Dummy);
    
    bus_write : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_write
        generic map (
            CONSERVATIVE           => CONSERVATIVE,
            C_M_AXI_ID_WIDTH       => C_M_AXI_ID_WIDTH,
            C_M_AXI_AWUSER_WIDTH   => C_M_AXI_AWUSER_WIDTH,
            C_M_AXI_WUSER_WIDTH    => C_M_AXI_WUSER_WIDTH,
            C_M_AXI_BUSER_WIDTH    => C_M_AXI_BUSER_WIDTH,
            C_USER_VALUE           => C_USER_VALUE,
            C_PROT_VALUE           => C_PROT_VALUE,
            C_CACHE_VALUE          => C_CACHE_VALUE,
            BUS_ADDR_WIDTH         => C_M_AXI_ADDR_WIDTH,
            BUS_DATA_WIDTH         => C_M_AXI_DATA_WIDTH,
            NUM_WRITE_OUTSTANDING  => NUM_WRITE_OUTSTANDING,
            MAX_WRITE_BURST_LENGTH => MAX_WRITE_BURST_LENGTH)
        port map (
            ACLK                               => ACLK,
            ARESET                             => ARESET,
            ACLK_EN                            => ACLK_EN,
            STD_LOGIC_VECTOR(out_BUS_AWID)     => AWID,
            STD_LOGIC_VECTOR(out_BUS_AWADDR)   => AWADDR,
            STD_LOGIC_VECTOR(out_BUS_AWLEN)    => AWLEN,
            STD_LOGIC_VECTOR(out_BUS_AWSIZE)   => AWSIZE,
            STD_LOGIC_VECTOR(out_BUS_AWBURST)  => AWBURST,
            STD_LOGIC_VECTOR(out_BUS_AWLOCK)   => AWLOCK,
            STD_LOGIC_VECTOR(out_BUS_AWCACHE)  => AWCACHE,
            STD_LOGIC_VECTOR(out_BUS_AWPROT)   => AWPROT,
            STD_LOGIC_VECTOR(out_BUS_AWQOS)    => AWQOS,
            STD_LOGIC_VECTOR(out_BUS_AWREGION) => AWREGION,
            STD_LOGIC_VECTOR(out_BUS_AWUSER)   => AWUSER,
            
            out_BUS_AWVALID                    => AWVALIDFromWriteUnit,
            in_BUS_AWREADY                     => AWREADYToWriteUnit,
            
            STD_LOGIC_VECTOR(out_BUS_WID)      => WID,
            STD_LOGIC_VECTOR(out_BUS_WDATA)    => WDATA,
            STD_LOGIC_VECTOR(out_BUS_WSTRB)    => WSTRB,
            out_BUS_WLAST                      => WLAST,
            STD_LOGIC_VECTOR(out_BUS_WUSER)    => WUSER,
            
            out_BUS_WVALID                     => WVALIDFromWriteUnit,
            
            in_BUS_WREADY                      => WREADY,
            in_BUS_BID                         => UNSIGNED(BID),
            in_BUS_BRESP                       => UNSIGNED(BRESP),
            in_BUS_BUSER                       => UNSIGNED(BUSER),
            in_BUS_BVALID                      => BVALID,
            
            out_BUS_BREADY                     => BREADYFromWriteUnit,
            
            in_HLS_AWVALID                     => AWVALID_Dummy,
            out_HLS_AWREADY                    => AWREADY_Dummy,
            in_HLS_AWADDR                      => AWADDR_Dummy,
            in_HLS_AWLEN                       => AWLEN_Dummy,
            in_HLS_WVALID                      => WVALID_Dummy,
            out_HLS_WREADY                     => WREADY_Dummy,
            in_HLS_WSTRB                       => WSTRB_Dummy,
            in_HLS_WDATA                       => WDATA_Dummy,
            out_HLS_BRESP                      => open,
            out_HLS_BVALID                     => BVALID_Dummy,
            in_HLS_BREADY                      => BREADY_Dummy);

    
    flushManager : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_flushManager
        generic map (
            NUM_WRITE_OUTSTANDING  => NUM_WRITE_OUTSTANDING,
            NUM_READ_OUTSTANDING   => NUM_READ_OUTSTANDING)
        port map (
            clk => ACLK,
            reset => ARESET,
            clk_en => ACLK_EN,
            flush => flush,
            flush_done => flush_done,
            in_AWVALID => AWVALIDFromWriteUnit,
            out_AWVALID => AWVALID,
            in_AWREADY => AWREADY,
            out_AWREADY => AWREADYToWriteUnit,
            in_WVALID => WVALIDFromWriteUnit,
            out_WVALID => WVALID,
            in_BREADY => BREADYFromWriteUnit,
            out_BREADY => BREADY,
            in_BVALID => BVALID,
            in_ARVALID => ARVALIDFromReadUnit,
            out_ARVALID => ARVALID,
            in_ARREADY => ARREADY,
            in_RREADY => RREADYFromReadUnit,
            out_RREADY => RREADY,
            in_RVALID => RVALID,
            in_RLAST => RLAST);
end architecture behave;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_load is
    generic (
        C_TARGET_ADDR         : INTEGER := 16#00000000#;
        NUM_READ_OUTSTANDING  : INTEGER := 2;
        MAX_READ_BURST_LENGTH : INTEGER := 16;
        BUS_ADDR_WIDTH        : INTEGER := 32;
        BUS_DATA_WIDTH        : INTEGER := 32;
        USER_DW               : INTEGER := 16;
        USER_AW               : INTEGER := 32;
        USER_MAXREQS          : INTEGER := 16;
        USER_RFIFONUM_WIDTH   : INTEGER := 6;
        BUFFER_IMPL           : STRING  := "auto");
    port (
        ACLK                  : in  STD_LOGIC;
        ARESET                : in  STD_LOGIC;
        ACLK_EN               : in  STD_LOGIC;

        out_AXI_ARADDR        : out UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
        out_AXI_ARLEN         : out UNSIGNED(31 downto 0);
        out_AXI_ARVALID       : out STD_LOGIC;
        in_AXI_ARREADY        : in  STD_LOGIC;
        in_AXI_RDATA          : in  UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
        in_AXI_RLAST          : in  UNSIGNED(1 downto 0);
        in_AXI_RVALID         : in  STD_LOGIC;
        out_AXI_RREADY        : out STD_LOGIC;
        out_AXI_RBURST_READY  : out STD_LOGIC;
        
        in_HLS_ARADDR         : in  UNSIGNED(USER_AW-1 downto 0);
        in_HLS_ARLEN          : in  UNSIGNED(31 downto 0);
        in_HLS_ARVALID        : in  STD_LOGIC;
        out_HLS_ARREADY       : out STD_LOGIC;
        out_HLS_RDATA         : out UNSIGNED(USER_DW-1 downto 0);
        out_HLS_RVALID        : out STD_LOGIC;
        in_HLS_RREADY         : in  STD_LOGIC;
        out_HLS_RFIFONUM      : out UNSIGNED(USER_RFIFONUM_WIDTH-1 downto 0));
end entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_load;

architecture behave of design_1_v_frmbuf_wr_0_1_mm_video_m_axi_load is
    ------------------------Task and function--------------
    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;
    ------------------------Parameter----------------------
    constant USER_DATA_WIDTH  : INTEGER := calc_data_width(USER_DW);
    constant USER_DATA_BYTES  : INTEGER := USER_DATA_WIDTH / 8;
    constant USER_ADDR_ALIGN  : INTEGER := log2(USER_DATA_BYTES);
    constant BUS_DATA_BYTES   : INTEGER := BUS_DATA_WIDTH / 8;
    constant BUS_ADDR_ALIGN   : INTEGER := log2(BUS_DATA_BYTES);
    constant RBUFF_DEPTH      : INTEGER := MAX_READ_BURST_LENGTH*NUM_READ_OUTSTANDING;
    constant TARGET_ADDR      : INTEGER := (C_TARGET_ADDR/BUS_DATA_BYTES)*BUS_DATA_BYTES;

    ------------------------Local signal-------------------
    signal next_rreq      : STD_LOGIC;
    signal ready_for_rreq : STD_LOGIC;
    signal rreq_ready     : STD_LOGIC;
    
    signal in_rreq_pack   : UNSIGNED(USER_AW+31 downto 0);
    signal rreq_pack      : UNSIGNED(USER_AW+31 downto 0);
    signal rreq_addr      : UNSIGNED(USER_AW-1 downto 0);
    signal rreq_len       : UNSIGNED(31 downto 0);
    signal rreq_valid     : STD_LOGIC;
    
    signal tmp_addr       : UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
    signal tmp_len        : UNSIGNED(31 downto 0);
    signal tmp_valid      : STD_LOGIC;

    signal valid_length   : STD_LOGIC;
    
    signal beat_valid     : STD_LOGIC;
    signal next_beat      : STD_LOGIC;
    signal last_beat      : STD_LOGIC;
    signal beat_data      : UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
    signal in_beat_pack   : UNSIGNED(BUS_DATA_WIDTH+1 downto 0); 
    signal beat_pack      : UNSIGNED(BUS_DATA_WIDTH+1 downto 0);
    signal beat_nvalid    : UNSIGNED(log2(RBUFF_DEPTH) downto 0);
    signal burst_ready    : STD_LOGIC;
    signal ready_for_outstanding : STD_LOGIC; 

    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo is
        generic (
            MEM_STYLE         : STRING  := "shiftreg";
            DATA_WIDTH        : INTEGER := 8;
            ADDR_WIDTH        : INTEGER := 4;
            DEPTH             : INTEGER := 16);
        port (
            clk               : in  STD_LOGIC;
            reset             : in  STD_LOGIC;
            clk_en            : in  STD_LOGIC;
            if_full_n         : out STD_LOGIC;
            if_write          : in  STD_LOGIC;
            if_din            : in  UNSIGNED(DATA_WIDTH-1 downto 0);
            if_empty_n        : out STD_LOGIC;
            if_read           : in  STD_LOGIC;
            if_dout           : out UNSIGNED(DATA_WIDTH-1 downto 0);
            if_num_data_valid : out UNSIGNED(ADDR_WIDTH downto 0));
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo;

begin

    -- Instantiation
    fifo_rreq : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
    generic map (
        DATA_WIDTH        => USER_AW + 32,
        ADDR_WIDTH        => log2(USER_MAXREQS),
        DEPTH             => USER_MAXREQS)
    port map (
        clk               => ACLK,
        reset             => ARESET,
        clk_en            => ACLK_EN,
        if_full_n         => out_HLS_ARREADY,
        if_write          => in_HLS_ARVALID,
        if_din            => in_rreq_pack,
        if_empty_n        => rreq_valid,
        if_read           => next_rreq,
        if_dout           => rreq_pack,
        if_num_data_valid => open);

    -- ===================================================================
    -- start of ARADDR PREPROCESSOR
    in_rreq_pack    <= in_HLS_ARLEN & in_HLS_ARADDR;
    next_rreq       <= rreq_valid and ready_for_rreq;
    ready_for_rreq  <= (not tmp_valid) or (in_AXI_ARREADY and rreq_ready);
    rreq_len        <= rreq_pack(USER_AW + 31 downto USER_AW);
    rreq_addr       <= rreq_pack(USER_AW - 1 downto 0);

    valid_length    <= '1' when rreq_len /= 0 and rreq_len(31) = '0' else '0';

    out_AXI_ARLEN   <= tmp_len;   -- Byte length
    out_AXI_ARADDR  <= tmp_addr;  -- Byte address
    out_AXI_ARVALID <= tmp_valid and rreq_ready;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                tmp_addr <= (others => '0');
                tmp_len   <= (others => '0');
            elsif ACLK_EN = '1' then
                if (next_rreq = '1') then
                    tmp_addr  <= TARGET_ADDR + SHIFT_LEFT(RESIZE(rreq_addr, BUS_ADDR_WIDTH), USER_ADDR_ALIGN);
                    tmp_len   <= SHIFT_LEFT(rreq_len, USER_ADDR_ALIGN) - 1;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                tmp_valid  <= '0';
            elsif ACLK_EN = '1' then
                if (next_rreq and valid_length) = '1' then
                    tmp_valid <= '1';
                elsif (in_AXI_ARREADY and rreq_ready) = '1' then
                    tmp_valid <= '0';
                end if;
            end if;
        end if;
    end process;

    -- end of ARADDR PREPROCESSOR
    -- ===================================================================
    
    buff_rdata : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
    generic map (
        MEM_STYLE         => BUFFER_IMPL,
        DATA_WIDTH        => BUS_DATA_WIDTH + 2,
        ADDR_WIDTH        => log2(RBUFF_DEPTH),
        DEPTH             => RBUFF_DEPTH)
    port map (
        clk               => ACLK,
        reset             => ARESET,
        clk_en            => ACLK_EN,
        if_full_n         => out_AXI_RREADY,
        if_write          => in_AXI_RVALID,
        if_din            => in_beat_pack,
        if_empty_n        => beat_valid,
        if_read           => next_beat,
        if_dout           => beat_pack,
        if_num_data_valid => beat_nvalid);
        
        in_beat_pack     <= in_AXI_RLAST & in_AXI_RDATA;
        beat_data        <= beat_pack(BUS_DATA_WIDTH-1 downto 0);
        last_beat        <= beat_pack(BUS_DATA_WIDTH);
        burst_ready      <= beat_pack(BUS_DATA_WIDTH+1);

        out_AXI_RBURST_READY <= ready_for_outstanding;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    ready_for_outstanding  <= '1';
                elsif ACLK_EN = '1' then
                    if (next_beat = '1') then
                        ready_for_outstanding <= burst_ready;
                    else
                        ready_for_outstanding <= '0';
                    end if;
                end if;
            end if;
        end process;

    -- ===================================================================
    -- start of RDATA PREPROCESSOR
    bus_equal_gen : if (USER_DATA_WIDTH = BUS_DATA_WIDTH) generate
    begin
        rreq_ready       <= '1';
        next_beat        <= in_HLS_RREADY;
        out_HLS_RDATA    <= beat_data(USER_DW-1 downto 0);
        out_HLS_RVALID   <= beat_valid;
        out_HLS_RFIFONUM <= beat_nvalid;
    end generate bus_equal_gen;

    bus_wide_gen : if (USER_DATA_WIDTH < BUS_DATA_WIDTH) generate
        constant TOTAL_SPLIT    : INTEGER := BUS_DATA_WIDTH / USER_DATA_WIDTH;
        constant SPLIT_ALIGN    : INTEGER := log2(TOTAL_SPLIT);
        signal  tmp_addr_end    : UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);

        signal  offset_full_n   : STD_LOGIC;
        signal  offset_write    : STD_LOGIC;
        signal  start_offset    : UNSIGNED(SPLIT_ALIGN-1 downto 0);
        signal  end_offset      : UNSIGNED(SPLIT_ALIGN-1 downto 0);

        signal  offset_valid    : STD_LOGIC;
        signal  next_offset     : STD_LOGIC;
        signal  offset_info     : UNSIGNED(2*SPLIT_ALIGN-1 downto 0);
        signal  offset_pack     : UNSIGNED(2*SPLIT_ALIGN-1 downto 0);
        signal  head_offset     : UNSIGNED(SPLIT_ALIGN-1 downto 0);
        signal  tail_offset     : UNSIGNED(SPLIT_ALIGN-1 downto 0);

        signal  data_buf        : UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
        signal  data_valid      : STD_LOGIC;

        signal  rdata_nvalid    : UNSIGNED(USER_RFIFONUM_WIDTH-1 downto 0);
        signal  data_nvalid     : UNSIGNED(SPLIT_ALIGN downto 0);
        signal  split_nvalid    : UNSIGNED(SPLIT_ALIGN downto 0);

        signal  split_cnt       : UNSIGNED(SPLIT_ALIGN-1 downto 0);
        signal  split_cnt_buf   : UNSIGNED(SPLIT_ALIGN-1 downto 0);

        signal  first_beat      : STD_LOGIC;

        signal  ready_for_data  : BOOLEAN;
        signal  first_data      : STD_LOGIC;
        signal  last_data       : STD_LOGIC;
        
        signal  first_split     : BOOLEAN;
        signal  next_split      : BOOLEAN;
        signal  last_split      : BOOLEAN;

    begin

        rreq_offset : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
        generic map (
            DATA_WIDTH        => 2*SPLIT_ALIGN,
            ADDR_WIDTH        => log2(NUM_READ_OUTSTANDING),
            DEPTH             => NUM_READ_OUTSTANDING)
        port map (
            clk               => ACLK,
            reset             => ARESET,
            clk_en            => ACLK_EN,
            if_full_n         => offset_full_n,
            if_write          => offset_write,
            if_din            => offset_info,
            if_empty_n        => offset_valid,
            if_read           => next_offset,
            if_dout           => offset_pack,
            if_num_data_valid => open);

        rreq_ready       <= '1' when offset_full_n = '1' or offset_write = '0' else '0';
        tmp_addr_end     <= tmp_addr + tmp_len;

        start_offset     <= tmp_addr(BUS_ADDR_ALIGN-1 downto USER_ADDR_ALIGN);
        end_offset       <= tmp_addr_end(BUS_ADDR_ALIGN-1 downto USER_ADDR_ALIGN);
        offset_info      <= start_offset & end_offset;
        offset_write     <= tmp_valid and in_AXI_ARREADY;

        next_offset      <= '1' when (last_beat = '1' and beat_valid = '1') and last_split else '0';
        next_beat        <= '1' when last_split else '0';

        head_offset      <= offset_pack(2*SPLIT_ALIGN-1 downto SPLIT_ALIGN);
        tail_offset      <= offset_pack(SPLIT_ALIGN-1 downto 0);

        out_HLS_RDATA    <= data_buf(USER_DW-1 downto 0);
        out_HLS_RVALID   <= data_valid;
        out_HLS_RFIFONUM <= rdata_nvalid + data_nvalid;

        ready_for_data   <= data_valid = '0' or in_HLS_RREADY = '1';
        first_data       <= (first_beat and beat_valid) and offset_valid;
        last_data        <= (last_beat  and beat_valid) and offset_valid;

        first_split      <= (split_cnt = 0 and beat_valid = '1' and ready_for_data) when first_data = '0' else
                            (split_cnt = head_offset and ready_for_data);
        last_split       <= (split_cnt = (TOTAL_SPLIT - 1) and ready_for_data)      when last_data = '0'  else
                            (split_cnt = tail_offset and ready_for_data);
        next_split       <= (split_cnt /= 0 and ready_for_data)                     when first_data = '0' else
                            (split_cnt /= head_offset and ready_for_data);
        split_cnt        <= head_offset                                             when first_data = '1' and (split_cnt_buf = 0) else
                            split_cnt_buf;
        split_nvalid     <= RESIZE(tail_offset - head_offset, SPLIT_ALIGN+1) + 1    when (first_data and last_data) = '1' else
                            RESIZE(TOTAL_SPLIT - head_offset, SPLIT_ALIGN+1)        when first_data = '1'                 else
                            RESIZE(tail_offset + 1           ,SPLIT_ALIGN+1)        when last_data  = '1'                 else
                            TO_UNSIGNED(TOTAL_SPLIT          ,SPLIT_ALIGN+1);

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    first_beat <= '1';
                elsif ACLK_EN = '1' then
                    if last_beat = '1' and last_split then
                        first_beat <= '1';
                    elsif (first_beat = '1' and last_split) then
                        first_beat <= '0';
                    end if;
                end if;
            end if;
        end process;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    split_cnt_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if last_split then
                        split_cnt_buf <= (others => '0');
                    elsif first_split or next_split then
                        split_cnt_buf <= split_cnt + 1;
                    end if;
                end if;
            end if;
        end process;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if ACLK_EN = '1' then
                    if first_split and (first_data = '1') then
                        data_buf <= SHIFT_RIGHT(beat_data, to_integer(head_offset)*USER_DATA_WIDTH);
                    elsif first_split then
                        data_buf <= beat_data;
                    elsif next_split then
                        data_buf <= SHIFT_RIGHT(data_buf, USER_DATA_WIDTH);
                    end if;
                end if;
            end if;
        end process;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    data_valid <= '0';
                elsif ACLK_EN = '1' then
                    if first_split then
                        data_valid <= '1';
                    elsif not (first_split or next_split) and ready_for_data then
                        data_valid <= '0';
                    end if;
                end if;
            end if;
        end process;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    data_nvalid <= (others=>'0');
                elsif ACLK_EN = '1' then
                    if first_split then
                        data_nvalid <= split_nvalid;
                    elsif next_split then
                        data_nvalid <= data_nvalid - 1;
                    elsif not (first_split or next_split) and ready_for_data then
                        data_nvalid <= (others=>'0');
                    end if;
                end if;
            end if;
        end process;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    rdata_nvalid <= (others=>'0');
                elsif ACLK_EN = '1' then
                    if beat_valid = '0' then
                        rdata_nvalid <= (others=>'0');
                    else
                        rdata_nvalid <= SHIFT_LEFT(RESIZE(beat_nvalid-1, USER_RFIFONUM_WIDTH), SPLIT_ALIGN);
                    end if;
                end if;
            end if;
        end process;

    end generate bus_wide_gen; 

    bus_narrow_gen : if (USER_DATA_WIDTH > BUS_DATA_WIDTH) generate
        constant TOTAL_PADS     : INTEGER := USER_DATA_WIDTH / BUS_DATA_WIDTH;
        constant PAD_ALIGN      : INTEGER := log2(TOTAL_PADS);

        signal  data_buf        : UNSIGNED(USER_DATA_WIDTH-1 downto 0);
        signal  data_nvalid     : UNSIGNED(PAD_ALIGN downto 0);
        signal  data_valid      : STD_LOGIC;
        signal  pad_oh          : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  pad_oh_reg      : UNSIGNED(TOTAL_PADS - 1 downto 0);
       
        signal  ready_for_data  : BOOLEAN;
        signal  next_pad        : BOOLEAN;
        signal  first_pad       : BOOLEAN;
        signal  last_pad        : BOOLEAN;
    begin

        rreq_ready       <= '1';
        next_beat        <= '1' when next_pad else '0';

        out_HLS_RDATA    <= data_buf(USER_DW-1 downto 0);
        out_HLS_RVALID   <= data_valid;
        out_HLS_RFIFONUM <= RESIZE(beat_nvalid(log2(RBUFF_DEPTH) downto PAD_ALIGN), RBUFF_DEPTH) + SHIFT_RIGHT(beat_nvalid(PAD_ALIGN-1 downto 0) + data_nvalid, PAD_ALIGN);

        ready_for_data   <= data_valid = '0' or in_HLS_RREADY = '1';
        next_pad         <= beat_valid = '1' and ready_for_data;
        last_pad         <= pad_oh(TOTAL_PADS - 1) = '1';

        pad_oh           <= (others => '0')            when beat_valid = '0' else
                            TO_UNSIGNED(1, TOTAL_PADS) when first_pad      else
                            pad_oh_reg;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    pad_oh_reg <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_pad then
                        pad_oh_reg <= pad_oh(TOTAL_PADS - 2 downto 0) & '0';
                    end if;
                end if;
            end if;
        end process;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    first_pad <= true;
                elsif ACLK_EN = '1' then
                    if next_pad and not last_pad then
                        first_pad <= false;
                    elsif next_pad and last_pad then
                        first_pad <= true;
                    end if;
                end if;
            end if;
        end process;

        data_gen : for i in 0 to TOTAL_PADS-1 generate
        begin
            process (ACLK)
            begin
                if (ACLK'event and ACLK = '1') then
                    if ACLK_EN = '1' then
                        if pad_oh(i) = '1' and ready_for_data then
                            data_buf((i+1)*BUS_DATA_WIDTH - 1 downto i*BUS_DATA_WIDTH) <= beat_data;
                        end if;
                    end if;
                end if;
            end process;
        end generate data_gen;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    data_valid <= '0';
                elsif ACLK_EN = '1' then
                    if next_beat = '1' then
                        data_valid <= '1';
                    elsif ready_for_data then
                        data_valid <= '0';
                    end if;
                end if;
            end if;
        end process;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    data_nvalid <= (others=>'0');
                elsif ACLK_EN = '1' then
                    if first_pad then
                        data_nvalid <= TO_UNSIGNED(1,PAD_ALIGN+1);
                    elsif next_pad then
                        data_nvalid <= data_nvalid + 1;
                    end if;
                end if;
            end if;
        end process;
    
    end generate bus_narrow_gen;

    -- end of RDATA PREPROCESSOR
    -- ==================================================================

end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_store is
    generic (
        C_TARGET_ADDR          : INTEGER := 16#00000000#;
        NUM_WRITE_OUTSTANDING  : INTEGER := 2;
        MAX_WRITE_BURST_LENGTH : INTEGER := 16;
        BUS_ADDR_WIDTH         : INTEGER := 32;
        BUS_DATA_WIDTH         : INTEGER := 32;
        USER_DW                : INTEGER := 16;
        USER_AW                : INTEGER := 32;
        USER_MAXREQS           : INTEGER := 16;
        BUFFER_IMPL            : STRING  := "auto"); 
    port (
        ACLK                   : in  STD_LOGIC;
        ARESET                 : in  STD_LOGIC;
        ACLK_EN                : in  STD_LOGIC;

        out_AXI_AWADDR         : out UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
        out_AXI_AWLEN          : out UNSIGNED(31 downto 0);
        out_AXI_AWVALID        : out STD_LOGIC;
        in_AXI_AWREADY         : in  STD_LOGIC;
        out_AXI_WDATA          : out UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
        out_AXI_WSTRB          : out UNSIGNED(BUS_DATA_WIDTH/8-1 downto 0);
        out_AXI_WVALID         : out STD_LOGIC;
        in_AXI_WREADY          : in  STD_LOGIC;
        in_AXI_BVALID          : in  STD_LOGIC;
        out_AXI_BREADY         : out STD_LOGIC;
    
        in_HLS_AWADDR          : in  UNSIGNED(USER_AW-1 downto 0);
        in_HLS_AWLEN           : in  UNSIGNED(31 downto 0); 
        in_HLS_AWVALID         : in  STD_LOGIC;
        out_HLS_AWREADY        : out STD_LOGIC;
        in_HLS_WDATA           : in  UNSIGNED(USER_DW-1 downto 0);
        in_HLS_WSTRB           : in  UNSIGNED(USER_DW/8-1 downto 0);
        in_HLS_WVALID          : in  STD_LOGIC;
        out_HLS_WREADY         : out STD_LOGIC;
        out_HLS_BVALID         : out STD_LOGIC;
        in_HLS_BREADY          : in  STD_LOGIC);
end entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_store;

architecture behave of design_1_v_frmbuf_wr_0_1_mm_video_m_axi_store is
    ------------------------Task and function--------------
    function max (x : INTEGER; 
                  y : INTEGER) return INTEGER is
        variable r : INTEGER;
    begin
        r := y;
        if (x > y) then
            r := x;
        end if;
        return r;
    end function max;

    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;
    ------------------------Parameter----------------------
    constant USER_DATA_WIDTH  : INTEGER := calc_data_width(USER_DW);
    constant USER_DATA_BYTES  : INTEGER := USER_DATA_WIDTH / 8;
    constant USER_ADDR_ALIGN  : INTEGER := log2(USER_DATA_BYTES);
    constant BUS_DATA_BYTES   : INTEGER := BUS_DATA_WIDTH / 8;
    constant BUS_ADDR_ALIGN   : INTEGER := log2(BUS_DATA_BYTES);
    constant WBUFF_DEPTH      : INTEGER := max(MAX_WRITE_BURST_LENGTH*BUS_DATA_WIDTH / USER_DATA_WIDTH, 1);
    constant TARGET_ADDR      : INTEGER := (C_TARGET_ADDR/BUS_DATA_BYTES)*BUS_DATA_BYTES;
    ------------------------Local signal-------------------
    signal next_wreq      : STD_LOGIC;
    signal ready_for_wreq : STD_LOGIC;
    signal wreq_ready     : STD_LOGIC;

    signal in_wreq_pack   : UNSIGNED(USER_AW+31 downto 0);
    signal wreq_pack      : UNSIGNED(USER_AW+31 downto 0);
    signal wreq_addr      : UNSIGNED(USER_AW-1 downto 0);
    signal wreq_len       : UNSIGNED(31 downto 0);
    signal wreq_valid     : STD_LOGIC;

    signal tmp_addr       : UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
    signal tmp_len        : UNSIGNED(31 downto 0);
    signal tmp_valid      : STD_LOGIC;

    signal valid_length   : STD_LOGIC;

    signal beat_valid     : STD_LOGIC;
    signal beat_ready     : STD_LOGIC;
    signal beat_data      : UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
    signal beat_strb      : UNSIGNED(BUS_DATA_BYTES-1 downto 0);

    signal next_wdata     : STD_LOGIC;
    signal wdata_valid    : STD_LOGIC;
    signal in_wdata_pack  : UNSIGNED(USER_DW+USER_DW/8-1 downto 0);
    signal wdata_pack     : UNSIGNED(USER_DW+USER_DW/8-1 downto 0);
    signal tmp_wdata      : UNSIGNED(USER_DW-1 downto 0);
    signal tmp_wstrb      : UNSIGNED(USER_DW/8-1 downto 0);

    signal wrsp_ready     : STD_LOGIC;
    signal wrsp_valid     : STD_LOGIC;
    signal wrsp_read      : STD_LOGIC;
    signal wrsp_type      : UNSIGNED(0 downto 0);
    signal in_wrsp_type   : UNSIGNED(0 downto 0);

    signal ursp_ready     : STD_LOGIC;
    signal ursp_write     : STD_LOGIC;

    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo is
        generic (
            MEM_STYLE         : STRING  := "shiftreg";
            DATA_WIDTH        : INTEGER := 8;
            ADDR_WIDTH        : INTEGER := 4;
            DEPTH             : INTEGER := 16);
        port (
            clk               : in  STD_LOGIC;
            reset             : in  STD_LOGIC;
            clk_en            : in  STD_LOGIC;
            if_full_n         : out STD_LOGIC;
            if_write          : in  STD_LOGIC;
            if_din            : in  UNSIGNED(DATA_WIDTH-1 downto 0);
            if_empty_n        : out STD_LOGIC;
            if_read           : in  STD_LOGIC;
            if_dout           : out UNSIGNED(DATA_WIDTH-1 downto 0);
            if_num_data_valid : out UNSIGNED(ADDR_WIDTH downto 0));
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo;

begin
    -- Instantiation
    fifo_wreq : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
    generic map (
        DATA_WIDTH        => USER_AW + 32,
        ADDR_WIDTH        => log2(USER_MAXREQS),
        DEPTH             => USER_MAXREQS)
    port map (
        clk               => ACLK,
        reset             => ARESET,
        clk_en            => ACLK_EN,
        if_full_n         => out_HLS_AWREADY,
        if_write          => in_HLS_AWVALID,
        if_din            => in_wreq_pack,
        if_empty_n        => wreq_valid,
        if_read           => next_wreq,
        if_dout           => wreq_pack,
        if_num_data_valid => open);

    -- ===================================================================
    -- start of AWADDR PREPROCESSOR
    in_wreq_pack    <= in_HLS_AWLEN & in_HLS_AWADDR;
    next_wreq       <= wreq_valid and ready_for_wreq and wrsp_ready;
    ready_for_wreq  <= not tmp_valid or (in_AXI_AWREADY and wreq_ready);
    wreq_len        <= wreq_pack(USER_AW + 31 downto USER_AW);
    wreq_addr       <= wreq_pack(USER_AW - 1 downto 0);

    valid_length    <= '1' when wreq_len /= 0 and wreq_len(31) = '0' else '0';
    
    out_AXI_AWLEN   <= tmp_len;   -- Byte length
    out_AXI_AWADDR  <= tmp_addr;  -- Byte address
    out_AXI_AWVALID <= tmp_valid and wreq_ready;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                tmp_addr <= (others => '0');
                tmp_len   <= (others => '0');
            elsif ACLK_EN = '1' then
                if (next_wreq = '1') then
                    tmp_addr  <= TARGET_ADDR + SHIFT_LEFT(RESIZE(wreq_addr, BUS_ADDR_WIDTH), USER_ADDR_ALIGN);
                    tmp_len   <= SHIFT_LEFT(wreq_len, USER_ADDR_ALIGN) - 1;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                tmp_valid  <= '0';
            elsif ACLK_EN = '1' then
                if (next_wreq and valid_length) = '1' then
                    tmp_valid <= '1';
                elsif (in_AXI_AWREADY and wreq_ready) = '1' then
                    tmp_valid <= '0';
                end if;
            end if;
        end if;
    end process;

    -- end of AWADDR PREPROCESSOR
    -- ===================================================================

    buff_wdata : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
    generic map (
        MEM_STYLE         => BUFFER_IMPL,
        DATA_WIDTH        => USER_DW + USER_DW/8,
        ADDR_WIDTH        => log2(WBUFF_DEPTH),
        DEPTH             => WBUFF_DEPTH)
    port map (
        clk               => ACLK,
        reset             => ARESET,
        clk_en            => ACLK_EN,
        if_full_n         => out_HLS_WREADY,
        if_write          => in_HLS_WVALID,
        if_din            => in_wdata_pack,
        if_empty_n        => wdata_valid,
        if_read           => next_wdata,
        if_dout           => wdata_pack,
        if_num_data_valid => open);
    
    in_wdata_pack <= in_HLS_WSTRB & in_HLS_WDATA;
    tmp_wdata     <= wdata_pack(USER_DW-1 downto 0);
    tmp_wstrb     <= wdata_pack(USER_DW+USER_DW/8-1 downto USER_DW);
    
    -- ===================================================================
    -- start of WDATA PREPROCESSOR
    bus_equal_gen : if (USER_DATA_WIDTH = BUS_DATA_WIDTH) generate
    begin
        wreq_ready     <= '1';
        next_wdata     <= in_AXI_WREADY;
        out_AXI_WVALID <= wdata_valid;
        out_AXI_WDATA  <= tmp_wdata;
        out_AXI_WSTRB  <= tmp_wstrb;
    end generate bus_equal_gen;

    bus_wide_gen : if (USER_DATA_WIDTH < BUS_DATA_WIDTH) generate
        constant TOTAL_PADS     : INTEGER := BUS_DATA_WIDTH / USER_DATA_WIDTH;
        constant PAD_ALIGN      : INTEGER := log2(TOTAL_PADS);
        constant BEAT_LEN_WIDTH : INTEGER := 32 - BUS_ADDR_ALIGN;

        function decoder (din : UNSIGNED(PAD_ALIGN-1 downto 0)) return UNSIGNED is 
            variable dout : UNSIGNED(TOTAL_PADS-1 downto 0);
        begin
            dout := (others=>'0');
            if ( not (din = 0)) then
                dout(TO_INTEGER(din)-1 downto 0) := (others=>'1');
            end if;
            return dout;
        end function decoder;

        signal  tmp_addr_end    : UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);

        signal  offset_full_n   : STD_LOGIC;
        signal  offset_write    : STD_LOGIC;
        signal  start_offset    : UNSIGNED(PAD_ALIGN-1 downto 0);
        signal  end_offset      : UNSIGNED(PAD_ALIGN-1 downto 0);
        signal  beat_total      : UNSIGNED(BEAT_LEN_WIDTH-1 downto 0);
        signal  offset_info     : UNSIGNED(BEAT_LEN_WIDTH+2*PAD_ALIGN-1 downto 0);
        signal  offset_pack     : UNSIGNED(BEAT_LEN_WIDTH+2*PAD_ALIGN-1 downto 0);

        signal  offset_valid    : STD_LOGIC;
        signal  next_offset     : STD_LOGIC;
        signal  head_offset     : UNSIGNED(PAD_ALIGN-1 downto 0);
        signal  tail_offset     : UNSIGNED(PAD_ALIGN-1 downto 0);
        signal  beat_len        : UNSIGNED(BEAT_LEN_WIDTH-1 downto 0);
        signal  len_cnt         : UNSIGNED(BEAT_LEN_WIDTH-1 downto 0);

        signal  data_buf        : UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
        signal  strb_buf        : UNSIGNED(BUS_DATA_BYTES-1 downto 0);
        signal  data_valid      : STD_LOGIC;

        signal  add_head        : UNSIGNED(TOTAL_PADS-1 downto 0); 
        signal  add_tail        : UNSIGNED(TOTAL_PADS-1 downto 0); 
        signal  head_pad_sel    : UNSIGNED(TOTAL_PADS-1 downto 0); 
        signal  tail_pad_sel    : UNSIGNED(0 to TOTAL_PADS-1);

        signal  pad_oh          : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  pad_oh_reg      : UNSIGNED(TOTAL_PADS - 1 downto 0);

        signal  ready_for_data  : BOOLEAN;
        signal  first_beat      : BOOLEAN;
        signal  next_beat       : BOOLEAN;
        signal  last_beat       : BOOLEAN;
        
        signal  first_pad       : BOOLEAN;
        signal  next_pad        : BOOLEAN;
        signal  last_pad        : BOOLEAN;

    begin
        wreq_offset : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
        generic map (
            DATA_WIDTH        => 2*PAD_ALIGN + BEAT_LEN_WIDTH,
            ADDR_WIDTH        => log2(NUM_WRITE_OUTSTANDING),
            DEPTH             => NUM_WRITE_OUTSTANDING)
        port map (
            clk               => ACLK,
            reset             => ARESET,
            clk_en            => ACLK_EN,
            if_full_n         => offset_full_n,
            if_write          => offset_write,
            if_din            => offset_info,
            if_empty_n        => offset_valid,
            if_read           => next_offset,
            if_dout           => offset_pack,
            if_num_data_valid => open);            
        
        wreq_ready       <= '1' when offset_full_n = '1' or offset_write = '0' else '0';
        tmp_addr_end     <= tmp_addr + tmp_len;
        
        offset_info      <= start_offset & end_offset & beat_total;
        start_offset     <= tmp_addr(BUS_ADDR_ALIGN-1 downto USER_ADDR_ALIGN);
        end_offset       <= not(tmp_addr_end(BUS_ADDR_ALIGN-1 downto USER_ADDR_ALIGN));
        beat_total       <= RESIZE(SHIFT_RIGHT(tmp_len + tmp_addr(BUS_ADDR_ALIGN-1 downto 0), BUS_ADDR_ALIGN), BEAT_LEN_WIDTH);
        head_offset      <= offset_pack(BEAT_LEN_WIDTH+2*PAD_ALIGN-1 downto BEAT_LEN_WIDTH+PAD_ALIGN);
        tail_offset      <= offset_pack(BEAT_LEN_WIDTH+PAD_ALIGN-1 downto BEAT_LEN_WIDTH);
        beat_len         <= offset_pack(BEAT_LEN_WIDTH-1 downto 0);

        offset_write     <= tmp_valid and in_AXI_AWREADY;

        out_AXI_WDATA    <= data_buf;
        out_AXI_WSTRB    <= strb_buf;
        out_AXI_WVALID   <= data_valid;
        
        next_wdata       <= '1' when next_pad else '0';
        next_offset      <= '1' when last_beat and next_beat else '0';
        ready_for_data   <= data_valid = '0' or in_AXI_WREADY = '1';

        first_beat       <= len_cnt = 0 and offset_valid = '1';
        last_beat        <= len_cnt = beat_len and offset_valid = '1';
        next_beat        <= offset_valid = '1' and last_pad and ready_for_data;

        next_pad         <= offset_valid = '1' and wdata_valid = '1' and ready_for_data;
        last_pad         <= pad_oh(TOTAL_PADS - to_integer(tail_offset) - 1) = '1' when last_beat else
                            pad_oh(TOTAL_PADS - 1) = '1';

        head_pad_sel     <= decoder(head_offset);
        tail_pad_sel     <= decoder(tail_offset);

        pad_oh           <= (others => '0')                                                 when wdata_valid = '0' else
                            SHIFT_LEFT(TO_UNSIGNED(1, TOTAL_PADS), TO_INTEGER(head_offset)) when first_beat and first_pad else
                            TO_UNSIGNED(1, TOTAL_PADS)                                      when first_pad else
                            pad_oh_reg;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    pad_oh_reg <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_pad then
                        pad_oh_reg <= pad_oh(TOTAL_PADS - 2 downto 0) & '0';
                    end if;
                end if;
            end if;
        end process;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    first_pad <= true;
                elsif ACLK_EN = '1' then
                    if next_pad and not last_pad then
                        first_pad <= false;
                    elsif next_pad and last_pad then
                        first_pad <= true;
                    end if;
                end if;
            end if;
        end process;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    len_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_offset = '1' then
                        len_cnt <= (others => '0');
                    elsif next_beat then
                        len_cnt <= len_cnt + 1;
                    end if;
                end if;
            end if;
        end process;

        data_gen : for i in 0 to TOTAL_PADS - 1 generate
        begin
            add_head(i) <= '1' when head_pad_sel(i) = '1' and first_beat else
                           '0';
            add_tail(i) <= '1' when tail_pad_sel(i) = '1' and last_beat else
                            '0';

            process (ACLK)
            begin
                if (ACLK'event and ACLK = '1') then
                    if (ARESET = '1') then
                        data_buf((i+1)*USER_DATA_WIDTH - 1 downto i*USER_DATA_WIDTH) <= (others => '0'); 
                    elsif (ACLK_EN = '1') then
                        if (add_head(i) = '1' or add_tail(i) = '1') and ready_for_data then
                            data_buf((i+1)*USER_DATA_WIDTH - 1 downto i*USER_DATA_WIDTH) <= (others => '0');
                        elsif pad_oh(i) = '1' and ready_for_data then
                            data_buf((i+1)*USER_DATA_WIDTH - 1 downto i*USER_DATA_WIDTH) <= tmp_wdata;
                        end if;
                    end if;
                end if;
            end process;

            process (ACLK)
            begin
                if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                    if (ARESET = '1') then
                        strb_buf((i+1)*USER_DATA_BYTES - 1 downto i*USER_DATA_BYTES) <= (others => '0');
                    elsif (ACLK_EN = '1') then
                        if (add_head(i) = '1' or add_tail(i) = '1') and ready_for_data then
                            strb_buf((i+1)*USER_DATA_BYTES - 1 downto i*USER_DATA_BYTES) <= (others => '0');
                        elsif pad_oh(i) = '1' and ready_for_data then
                            strb_buf((i+1)*USER_DATA_BYTES - 1 downto i*USER_DATA_BYTES) <= tmp_wstrb;
                        end if;
                    end if;
                end if;
            end process;
        end generate data_gen;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    data_valid <= '0';
                elsif ACLK_EN = '1' then
                    if next_beat then
                        data_valid <= '1';
                    elsif ready_for_data then
                        data_valid <= '0';
                    end if;
                end if;
            end if;
        end process;

    end generate bus_wide_gen; 

    bus_narrow_gen : if (USER_DATA_WIDTH > BUS_DATA_WIDTH) generate
        constant TOTAL_SPLIT    : INTEGER := USER_DATA_WIDTH / BUS_DATA_WIDTH;
        constant SPLIT_ALIGN    : INTEGER := log2(TOTAL_SPLIT);
        constant BEAT_LEN_WIDTH : INTEGER := 32 - BUS_ADDR_ALIGN;

        
        signal  tmp_addr_end    : UNSIGNED(BUS_ADDR_WIDTH-1 downto 0); 
        signal  offset_full_n   : STD_LOGIC;
        signal  offset_write    : STD_LOGIC;
        signal  beat_total      : UNSIGNED(BEAT_LEN_WIDTH-1 downto 0);

        signal  offset_valid    : STD_LOGIC;
        signal  next_offset     : STD_LOGIC;
        signal  beat_len        : UNSIGNED(BEAT_LEN_WIDTH-1 downto 0);
        signal  len_cnt         : UNSIGNED(BEAT_LEN_WIDTH-1 downto 0);

        signal  data_buf        : UNSIGNED(USER_DATA_WIDTH - 1 downto 0);
        signal  strb_buf        : UNSIGNED(USER_DATA_BYTES - 1 downto 0);
        signal  data_valid      : STD_LOGIC;
        signal  split_cnt       : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  first_split     : BOOLEAN;
        signal  next_split      : BOOLEAN;
        signal  last_split      : BOOLEAN;
        signal  ready_for_data  : BOOLEAN;
    begin
        -- instantiation
        wreq_offset : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
        generic map (
            DATA_WIDTH        => BEAT_LEN_WIDTH,
            ADDR_WIDTH        => log2(NUM_WRITE_OUTSTANDING),
            DEPTH             => NUM_WRITE_OUTSTANDING)
        port map (
            clk               => ACLK,
            reset             => ARESET,
            clk_en            => ACLK_EN,
            if_full_n         => offset_full_n,
            if_write          => offset_write,
            if_din            => beat_total,
            if_empty_n        => offset_valid,
            if_read           => next_offset,
            if_dout           => beat_len,
            if_num_data_valid => open);    

        wreq_ready       <= offset_full_n and not offset_write;
        tmp_addr_end     <= tmp_addr + tmp_len;
        beat_total       <= RESIZE(SHIFT_RIGHT(tmp_len + tmp_addr(BUS_ADDR_ALIGN-1 downto 0), BUS_ADDR_ALIGN), BEAT_LEN_WIDTH);
        offset_write     <= tmp_valid and in_AXI_AWREADY;

        out_AXI_WDATA    <= data_buf;
        out_AXI_WSTRB    <= strb_buf;
        out_AXI_WVALID   <= data_valid;

        next_wdata      <= '1' when first_split else '0';
        next_offset     <= '1' when len_cnt = beat_len and offset_valid = '1' and last_split else '0';
        ready_for_data  <= data_valid = '0' or in_AXI_WREADY = '1';

        first_split     <= split_cnt = 0  and wdata_valid = '1' and offset_valid ='1' and ready_for_data;
        next_split      <= split_cnt /= 0 and ready_for_data;
        last_split      <= split_cnt = (TOTAL_SPLIT - 1) and ready_for_data;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    split_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if last_split then
                        split_cnt <= (others => '0');
                    elsif first_split or next_split then
                        split_cnt <= split_cnt + 1;
                    end if;
                end if;
            end if;
        end process ;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    len_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_offset = '1' then
                        len_cnt <= (others => '0');
                    elsif next_wdata = '1' or next_split then
                        len_cnt <= len_cnt + 1;
                    end if;
                end if;
            end if;
        end process ;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    data_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_wdata = '1' then
                        data_buf <= tmp_wdata;
                    elsif next_split then
                        data_buf <= SHIFT_RIGHT(data_buf, BUS_DATA_WIDTH);
                    end if;
                end if;
            end if;
        end process;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    strb_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_wdata = '1' then
                        strb_buf <= tmp_wstrb;
                    elsif next_split then
                        strb_buf <= SHIFT_RIGHT(strb_buf, BUS_DATA_BYTES);
                    end if;
                end if;
            end if;
        end process;

        process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    data_valid <= '0';
                elsif ACLK_EN = '1' then
                    if next_wdata = '1' then
                        data_valid <= '1';
                    elsif not (first_split or next_split) and ready_for_data then
                        data_valid <= '0';
                    end if;
                end if;
            end if;
        end process;

    end generate bus_narrow_gen;

    -- ===================================================================
    -- generate response for all request (including request with invalid length)
    fifo_wrsp : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
    generic map (
        DATA_WIDTH        => 1,
        ADDR_WIDTH        => log2(NUM_WRITE_OUTSTANDING),
        DEPTH             => NUM_WRITE_OUTSTANDING)
    port map (
        clk               => ACLK,
        reset             => ARESET,
        clk_en            => ACLK_EN,
        if_full_n         => wrsp_ready,
        if_write          => next_wreq,
        if_din            => in_wrsp_type,
        if_empty_n        => wrsp_valid,
        if_read           => wrsp_read,
        if_dout           => wrsp_type,  -- "1" for valid length request, "0" for invalid length request
        if_num_data_valid => open);

    user_resp : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
    generic map (
        DATA_WIDTH        => 1,
        ADDR_WIDTH        => log2(USER_MAXREQS),
        DEPTH             => USER_MAXREQS)
    port map (
        clk               => ACLK,
        reset             => ARESET,
        clk_en            => ACLK_EN,
        if_full_n         => ursp_ready,
        if_write          => ursp_write,
        if_din            => "0",
        if_empty_n        => out_HLS_BVALID,
        if_read           => in_HLS_BREADY,
        if_dout           => open,
        if_num_data_valid => open);

    out_AXI_BREADY <= wrsp_type(0) and ursp_ready;
    
    in_wrsp_type   <= "1" when valid_length = '1' else "0";
    ursp_write     <= wrsp_valid and (not wrsp_type(0) or in_AXI_BVALID);
    wrsp_read      <= ursp_ready and ursp_write;

end architecture behave;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_flushManager is 
    generic(
        NUM_READ_OUTSTANDING   : INTEGER := 2;
        NUM_WRITE_OUTSTANDING  : INTEGER := 2);
    port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        clk_en : in STD_LOGIC;
        flush : in STD_LOGIC;
        flush_done : out STD_LOGIC;
        in_AWVALID : in STD_LOGIC;
        out_AWVALID : out STD_LOGIC;
        in_AWREADY : in STD_LOGIC;
        out_AWREADY : out STD_LOGIC;
        in_WVALID : in STD_LOGIC;
        out_WVALID : out STD_LOGIC;
        in_BREADY : in STD_LOGIC;
        out_BREADY : out STD_LOGIC;
        in_BVALID : in STD_LOGIC;
        in_ARVALID : in STD_LOGIC;
        out_ARVALID : out STD_LOGIC;
        in_ARREADY : in STD_LOGIC;
        in_RREADY : in STD_LOGIC;
        out_RREADY : out STD_LOGIC;
        in_RVALID : in STD_LOGIC;
        in_RLAST : in STD_LOGIC);
end entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_flushManager;
architecture behave of design_1_v_frmbuf_wr_0_1_mm_video_m_axi_flushManager is 
    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;
    
    signal flushStart : std_logic := '0';
    signal flushReg : std_logic := '0';

    signal oneWBurstLaunch : std_logic;
    signal oneWBurstFinish : std_logic;
    signal flush_AWVALID : std_logic;
    signal flush_BREADY : std_logic;
    signal WBurstEmpty_n : std_logic;
    signal wFlushDone : std_logic;

    signal oneRBurstLaunch : std_logic;
    signal oneRBurstFinish : std_logic;
    signal flush_ARVALID : std_logic;
    signal flush_RREADY : std_logic;
    signal RBurstEmpty_n : std_logic;
    signal rFlushDone : std_logic;

    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo is
        generic (
            MEM_STYLE         : STRING  := "shiftreg";
            DATA_WIDTH        : INTEGER := 8;
            ADDR_WIDTH        : INTEGER := 4;
            DEPTH             : INTEGER := 16);
        port (
            clk               : in  STD_LOGIC;
            reset             : in  STD_LOGIC;
            clk_en            : in  STD_LOGIC;
            if_full_n         : out STD_LOGIC;
            if_write          : in  STD_LOGIC;
            if_din            : in  UNSIGNED(DATA_WIDTH-1 downto 0);
            if_empty_n        : out STD_LOGIC;
            if_read           : in  STD_LOGIC;
            if_dout           : out UNSIGNED(DATA_WIDTH-1 downto 0);
            if_num_data_valid : out UNSIGNED(ADDR_WIDTH downto 0));
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo;
begin
    WFlushManager : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
    generic map (
        DATA_WIDTH        => 1,
        DEPTH             => NUM_WRITE_OUTSTANDING,
        ADDR_WIDTH        => log2(NUM_WRITE_OUTSTANDING))
    port map (
        clk               => clk,
        reset             => reset,
        clk_en            => clk_en,
        if_full_n         => open,
        if_write          => oneWBurstLaunch,
        if_din            => "1",
        if_empty_n        => WBurstEmpty_n,
        if_read           => oneWBurstFinish,
        if_dout           => open,
        if_num_data_valid => open);

    RFlushManager : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
    generic map (
        DATA_WIDTH        => 1,
        DEPTH             => NUM_READ_OUTSTANDING,
        ADDR_WIDTH        => log2(NUM_READ_OUTSTANDING))
    port map (
        clk               => clk,
        reset             => reset,
        clk_en            => clk_en,
        if_full_n         => open,
        if_write          => oneRBurstLaunch,
        if_din            => "1",
        if_empty_n        => RBurstEmpty_n,
        if_read           => oneRBurstFinish,
        if_dout           => open,
        if_num_data_valid => open);
    
    
    oneWBurstLaunch <= flush_AWVALID and in_AWREADY;
    oneWBurstFinish <= flush_BREADY and in_BVALID;
    oneRBurstLaunch <= flush_ARVALID and in_ARREADY;
    oneRBurstFinish <= flush_RREADY and in_RLAST and in_RVALID;

    flush_AWVALID <= '0' when flush = '1' else in_AWVALID;
    out_AWVALID <= flush_AWVALID;

    out_AWREADY  <= '0' when flush = '1' else in_AWREADY;
    out_WVALID   <= '0' when wFlushDone = '1' else in_WVALID;

    flush_BREADY <= '1' when flush = '1' else in_BREADY;
    out_BREADY <= flush_BREADY;

    flush_ARVALID <= '0' when flush = '1' else in_ARVALID;
    out_ARVALID <= flush_ARVALID;

    flush_RREADY <= '1' when flush = '1' else in_RREADY;
    out_RREADY <= flush_RREADY;

    wFlushDone <= flushStart and (not WBurstEmpty_n);
    rFlushDone <= flushStart and (not RBurstEmpty_n);

    flush_done <= wFlushDone and rFlushDone;

    flushReg_proc : process (clk)
    begin
        if (clk'event and clk = '1') then
            if (reset = '1') then
                flushReg <= '0';
            elsif clk_en = '1' then
                flushReg <= flush;
            end if;
        end if;
    end process flushReg_proc;

    flushStart_proc : process (clk)
    begin
        if (clk'event and clk = '1') then
            if (reset = '1') then
                flushStart <= '0';
            elsif clk_en = '1' then
                if flush = '1' and flushReg = '0' then
                    flushStart <= '1';
                elsif flush = '0' and flushReg = '1' then
                    flushStart <= '0';
                end if;
            end if;
        end if;
    end process flushStart_proc;

end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_read is
    generic (
        C_M_AXI_ID_WIDTH        : INTEGER := 1;
        C_M_AXI_ARUSER_WIDTH    : INTEGER := 1;
        C_M_AXI_RUSER_WIDTH     : INTEGER := 1;
        C_USER_VALUE            : INTEGER := 0;
        C_PROT_VALUE            : INTEGER := 0;
        C_CACHE_VALUE           : INTEGER := 2#0011#;
        BUS_ADDR_WIDTH          : INTEGER := 32;
        BUS_DATA_WIDTH          : INTEGER := 32;
        NUM_READ_OUTSTANDING    : INTEGER := 2;
        MAX_READ_BURST_LENGTH   : INTEGER := 16);
    port (
        ACLK                    : in  STD_LOGIC;
        ARESET                  : in  STD_LOGIC;
        ACLK_EN                 : in  STD_LOGIC;
        out_BUS_ARID            : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        out_BUS_ARADDR          : out UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
        out_BUS_ARLEN           : out UNSIGNED(7 downto 0);
        out_BUS_ARSIZE          : out UNSIGNED(2 downto 0);
        out_BUS_ARBURST         : out UNSIGNED(1 downto 0);
        out_BUS_ARLOCK          : out UNSIGNED(1 downto 0);
        out_BUS_ARCACHE         : out UNSIGNED(3 downto 0);
        out_BUS_ARPROT          : out UNSIGNED(2 downto 0);
        out_BUS_ARQOS           : out UNSIGNED(3 downto 0);
        out_BUS_ARREGION        : out UNSIGNED(3 downto 0);
        out_BUS_ARUSER          : out UNSIGNED(C_M_AXI_ARUSER_WIDTH-1 downto 0);
        out_BUS_ARVALID         : out STD_LOGIC;
        in_BUS_ARREADY          : in  STD_LOGIC;
        in_BUS_RID              : in  UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        in_BUS_RDATA            : in  UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
        in_BUS_RRESP            : in  UNSIGNED(1 downto 0);
        in_BUS_RLAST            : in  STD_LOGIC;
        in_BUS_RUSER            : in  UNSIGNED(C_M_AXI_RUSER_WIDTH-1 downto 0);
        in_BUS_RVALID           : in  STD_LOGIC;
        out_BUS_RREADY          : out STD_LOGIC;
        in_HLS_ARVALID          : in  STD_LOGIC;
        out_HLS_ARREADY         : out STD_LOGIC;
        in_HLS_ARADDR           : in  UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
        in_HLS_ARLEN            : in  UNSIGNED(31 downto 0);
        out_HLS_RVALID          : out STD_LOGIC;
        in_HLS_RREADY           : in  STD_LOGIC;
        in_HLS_RBURST_READY     : in  STD_LOGIC;
        out_HLS_RLAST           : out UNSIGNED(1 downto 0);
        out_HLS_RDATA           : out UNSIGNED(BUS_DATA_WIDTH-1 downto 0));

end entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_read;

architecture behave of design_1_v_frmbuf_wr_0_1_mm_video_m_axi_read is
    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

    --common
    constant BUS_DATA_BYTES       : INTEGER := BUS_DATA_WIDTH / 8;
    constant NUM_READ_WIDTH       : INTEGER := log2(MAX_READ_BURST_LENGTH);
    constant RBUFFER_AWIDTH       : INTEGER := log2(MAX_READ_BURST_LENGTH*NUM_READ_OUTSTANDING);
    constant BUS_ADDR_ALIGN       : INTEGER := log2(BUS_DATA_BYTES);
    constant BOUNDARY_BEATS       : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0) := (others => '1');

    --AR channel
    signal  in_rreq_data          : UNSIGNED(BUS_ADDR_WIDTH + 31 downto 0);
    signal  rreq_data             : UNSIGNED(BUS_ADDR_WIDTH + 31 downto 0);
    signal  rreq_valid            : STD_LOGIC;
    signal  tmp_addr              : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  tmp_len               : UNSIGNED(31 downto 0);
    signal  start_addr            : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  end_addr              : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  beat_len              : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  araddr_tmp            : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  arlen_tmp             : UNSIGNED(7 downto 0);
    signal  sect_addr             : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr_buf         : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  start_to_4k           : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len              : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len_buf          : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_cnt              : UNSIGNED(BUS_ADDR_WIDTH - 13 downto 0);
    signal  ar2r_info             : UNSIGNED(0 downto 0);
    signal  fifo_rctl_r           : STD_LOGIC;
    signal  fifo_burst_w          : STD_LOGIC;
    signal  ARVALID_Dummy         : STD_LOGIC;
    signal  ready_for_sect        : STD_LOGIC;
    signal  next_rreq             : STD_LOGIC;
    signal  ready_for_rreq        : BOOLEAN;
    signal  rreq_handling         : BOOLEAN;
    signal  first_sect            : BOOLEAN;
    signal  last_sect             : BOOLEAN;
    signal  last_sect_buf         : BOOLEAN;
    signal  next_sect             : BOOLEAN;
    --R channel
    signal  in_data_pack          : UNSIGNED(BUS_DATA_WIDTH downto 0);
    signal  data_pack             : UNSIGNED(BUS_DATA_WIDTH downto 0);
    signal  tmp_data              : UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
    signal  tmp_last              : STD_LOGIC;
    signal  data_valid            : STD_LOGIC;
    signal  data_ready            : STD_LOGIC;
    signal  next_ctrl             : STD_LOGIC;
    signal  need_rlast            : STD_LOGIC;
    signal  next_burst            : STD_LOGIC;
    signal  burst_valid           : STD_LOGIC;
    signal  last_burst            : UNSIGNED(0 downto 0);
    signal  last_burst_tmp        : STD_LOGIC;
    signal  fifo_rctl_ready       : STD_LOGIC;

    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo is
        generic (
            MEM_STYLE         : STRING  := "shiftreg";
            DATA_WIDTH        : INTEGER := 8;
            ADDR_WIDTH        : INTEGER := 4;
            DEPTH             : INTEGER := 16);
        port (
            clk               : in  STD_LOGIC;
            reset             : in  STD_LOGIC;
            clk_en            : in  STD_LOGIC;
            if_full_n         : out STD_LOGIC;
            if_write          : in  STD_LOGIC;
            if_din            : in  UNSIGNED(DATA_WIDTH-1 downto 0);
            if_empty_n        : out STD_LOGIC;
            if_read           : in  STD_LOGIC;
            if_dout           : out UNSIGNED(DATA_WIDTH-1 downto 0);
            if_num_data_valid : out UNSIGNED(ADDR_WIDTH downto 0));
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo;

    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice is
        generic (
            DATA_WIDTH  : INTEGER := 8);
        port (
            clk        : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            s_data      : in  UNSIGNED(DATA_WIDTH-1 downto 0);
            s_valid     : in  STD_LOGIC;
            s_ready     : out STD_LOGIC;
            m_data      : out UNSIGNED(DATA_WIDTH-1 downto 0);
            m_valid     : out STD_LOGIC;
            m_ready     : in  STD_LOGIC);
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice;

begin
    --------------------------- AR channel begin -----------------------------------
    -- Instantiation
    rs_rreq : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice
        generic map (
            DATA_WIDTH      =>  BUS_ADDR_WIDTH+ 32)
        port map (
            clk            =>  ACLK,
            reset           =>  ARESET,
            s_data          =>  in_rreq_data,
            s_valid         =>  in_HLS_ARVALID,
            s_ready         =>  out_HLS_ARREADY,
            m_data          =>  rreq_data,
            m_valid         =>  rreq_valid,
            m_ready         =>  next_rreq);

    in_rreq_data   <= in_HLS_ARLEN & in_HLS_ARADDR;
    tmp_addr       <= rreq_data(BUS_ADDR_WIDTH - 1 downto 0);
    tmp_len        <= rreq_data(BUS_ADDR_WIDTH + 31 downto BUS_ADDR_WIDTH);

    ready_for_rreq <= (last_sect and next_sect) or (not rreq_handling);
    next_rreq      <= '1' when rreq_valid = '1' and ready_for_rreq else '0';

    start_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                start_addr <= (others => '0');
                end_addr   <= (others => '0');
                beat_len   <= (others => '0');
            elsif ACLK_EN = '1' then
                if (next_rreq = '1') then
                    start_addr <= tmp_addr;
                    end_addr   <= tmp_addr + tmp_len;
                    beat_len   <= RESIZE(SHIFT_RIGHT(tmp_len(11 downto 0) + tmp_addr(BUS_ADDR_ALIGN-1 downto 0), BUS_ADDR_ALIGN), 12-BUS_ADDR_ALIGN);
                end if;
            end if;
        end if;
    end process start_addr_proc;

    rreq_handling_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rreq_handling <= false;
            elsif ACLK_EN = '1' then
                if rreq_valid = '1' and not rreq_handling then
                    rreq_handling <= true;
                elsif rreq_valid = '0' and last_sect and next_sect then
                    rreq_handling <= false;
                end if;
            end if;
        end if;
    end process rreq_handling_proc;

    -- 4k boundary section
    first_sect <= (sect_cnt = start_addr(BUS_ADDR_WIDTH - 1 downto 12));
    last_sect  <= (sect_cnt = end_addr(BUS_ADDR_WIDTH -1 downto 12));
    next_sect  <= rreq_handling and ready_for_sect = '1';

    sect_addr  <= start_addr when first_sect else
                  sect_cnt & (11 downto 0 => '0');
    start_to_4k<= BOUNDARY_BEATS - start_addr(11 downto BUS_ADDR_ALIGN);
    sect_len   <= beat_len                            when     first_sect and     last_sect else
                  start_to_4k                         when     first_sect and not last_sect else
                  end_addr(11 downto BUS_ADDR_ALIGN)  when not first_sect and     last_sect else
                  BOUNDARY_BEATS;
    
    sect_cnt_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_cnt <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_rreq = '1' then
                    sect_cnt <= tmp_addr(BUS_ADDR_WIDTH - 1 downto 12);
                elsif next_sect then
                    sect_cnt <= sect_cnt + 1;
                end if;
            end if;
        end if;
    end process sect_cnt_proc;

    sect_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_addr_buf <= (others => '0');
                sect_len_buf <= (others => '0');
                last_sect_buf <= false;
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_addr_buf <= sect_addr;
                    sect_len_buf <= sect_len;
                    last_sect_buf <= last_sect;
                end if;
            end if;
        end if;
    end process sect_addr_proc;

    out_BUS_ARID      <= (others => '0');
    out_BUS_ARSIZE    <= TO_UNSIGNED(BUS_ADDR_ALIGN, out_BUS_ARSIZE'length);
    out_BUS_ARBURST   <= "01";
    out_BUS_ARLOCK    <= "00";
    out_BUS_ARCACHE   <= TO_UNSIGNED(C_CACHE_VALUE, out_BUS_ARCACHE'length);
    out_BUS_ARPROT    <= TO_UNSIGNED(C_PROT_VALUE, out_BUS_ARPROT'length);
    out_BUS_ARUSER    <= TO_UNSIGNED(C_USER_VALUE, out_BUS_ARUSER'length);
    out_BUS_ARQOS     <= "0000";
    out_BUS_ARREGION  <= "0000";

    must_one_burst : if (BUS_DATA_BYTES >= 4096/MAX_READ_BURST_LENGTH) generate
    begin
        out_BUS_ARADDR  <= sect_addr_buf(BUS_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
        out_BUS_ARLEN   <= RESIZE(sect_len_buf, 8);
        out_BUS_ARVALID <= ARVALID_Dummy;

        ready_for_sect <= '1' when not (ARVALID_Dummy = '1' and in_BUS_ARREADY = '0') and fifo_rctl_ready = '1' else '0';

        arvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    ARVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_sect then
                        ARVALID_Dummy <= '1';
                    elsif not next_sect and in_BUS_ARREADY = '1' then
                        ARVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process arvalid_proc;

        fifo_rctl_r  <= '1' when next_sect else '0';
        ar2r_info    <= "1" when last_sect else "0";

        fifo_burst_w <= '1' when next_sect else '0';
        araddr_tmp   <= sect_addr(BUS_ADDR_WIDTH - 1 downto 0);
        arlen_tmp    <= RESIZE(sect_len, 8);
    end generate must_one_burst;

    could_multi_bursts : if (BUS_DATA_BYTES < 4096/MAX_READ_BURST_LENGTH) generate
        signal  araddr_buf      : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
        signal  arlen_buf       : UNSIGNED(7 downto 0);
        signal  loop_cnt        : UNSIGNED(11 - NUM_READ_WIDTH - BUS_ADDR_ALIGN downto 0);
        signal  last_loop       : BOOLEAN;
        signal  next_loop       : BOOLEAN;
        signal  ready_for_loop  : BOOLEAN;
        signal  sect_handling   : BOOLEAN;
    begin
        out_BUS_ARADDR  <= araddr_buf;
        out_BUS_ARLEN   <= arlen_buf;
        out_BUS_ARVALID <= ARVALID_Dummy;

        last_loop      <= (loop_cnt = sect_len_buf(11 - BUS_ADDR_ALIGN downto NUM_READ_WIDTH));
        next_loop      <= sect_handling and ready_for_loop;
        ready_for_loop <= not (ARVALID_Dummy = '1' and in_BUS_ARREADY = '0') and fifo_rctl_ready = '1';
        ready_for_sect <= '1' when not (sect_handling and not (last_loop and next_loop)) else '0';

        sect_handling_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    sect_handling <= false;
                elsif ACLK_EN = '1' then
                    if rreq_handling and not sect_handling then
                        sect_handling <= true;
                    elsif not rreq_handling and last_loop and next_loop then
                        sect_handling <= false;
                    end if;
                end if;
            end if;
        end process sect_handling_proc;

        loop_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    loop_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_sect then
                        loop_cnt <= (others => '0');
                    elsif next_loop then
                        loop_cnt <= loop_cnt + 1;
                    end if;
                end if;
            end if;
        end process loop_cnt_proc;

        araddr_tmp <= sect_addr_buf(BUS_ADDR_WIDTH -1 downto 0) when loop_cnt = 0 else
                      araddr_buf + SHIFT_LEFT(RESIZE(arlen_buf, 32) + 1, BUS_ADDR_ALIGN);
        araddr_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    araddr_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_loop then
                        araddr_buf <= araddr_tmp(BUS_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
                    end if;
                end if;
            end if;
        end process araddr_buf_proc;

        arlen_tmp  <= (others => '0') when (NUM_READ_WIDTH = 0) else
                      RESIZE(sect_len_buf(NUM_READ_WIDTH-1 downto 0), 8) when last_loop else
                      TO_UNSIGNED(2**NUM_READ_WIDTH-1, 8);
        arlen_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    arlen_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_loop then
                        arlen_buf <= arlen_tmp;
                    end if;
                end if;
            end if;
        end process arlen_buf_proc;

        arvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    ARVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_loop then
                        ARVALID_Dummy <= '1';
                    elsif not next_loop and in_BUS_ARREADY = '1' then
                        ARVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process arvalid_proc;

        fifo_rctl_r  <= '1' when next_loop else '0';
        ar2r_info    <= "1" when last_loop and last_sect_buf else "0";
        fifo_burst_w <= '1' when next_loop else '0';
    end generate could_multi_bursts;
    --------------------------- AR channel end -------------------------------------

    --------------------------- R channel begin ------------------------------------
    -- Instantiation
    rs_rdata : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice
        generic map (
            DATA_WIDTH        => BUS_DATA_WIDTH + 1)
        port map (
            clk               => ACLK,
            reset             => ARESET,
            s_data            => in_data_pack,
            s_valid           => in_BUS_RVALID,
            s_ready           => out_BUS_RREADY,
            m_data            => data_pack,
            m_valid           => data_valid,
            m_ready           => data_ready);

    fifo_rctl : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
        generic map (
            DATA_WIDTH        => 1,
            DEPTH             => NUM_READ_OUTSTANDING,
            ADDR_WIDTH        => log2(NUM_READ_OUTSTANDING))
        port map (
            clk               => ACLK,
            reset             => ARESET,
            clk_en            => ACLK_EN,
            if_full_n         => fifo_rctl_ready,
            if_write          => fifo_rctl_r,
            if_din            => ar2r_info,
            if_empty_n        => need_rlast,
            if_read           => next_ctrl,
            if_dout           => open,
            if_num_data_valid => open);
    
    fifo_burst : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
        generic map (
            DATA_WIDTH        => 1,
            DEPTH             => NUM_READ_OUTSTANDING,
            ADDR_WIDTH        => log2(NUM_READ_OUTSTANDING))
        port map (
            clk               => ACLK,
            reset             => ARESET,
            clk_en            => ACLK_EN,
            if_full_n         => open,
            if_write          => fifo_rctl_r,
            if_din            => ar2r_info,
            if_empty_n        => burst_valid,
            if_read           => next_burst,
            if_dout           => last_burst,
            if_num_data_valid => open);


    in_data_pack   <= in_BUS_RLAST & in_BUS_RDATA;
    tmp_data       <= data_pack(BUS_DATA_WIDTH-1 downto 0);
    tmp_last       <= '1' when data_pack(BUS_DATA_WIDTH) = '1' else '0';

    next_ctrl      <= in_HLS_RBURST_READY and need_rlast;
    next_burst     <= tmp_last and data_valid and data_ready;

    out_HLS_RDATA  <= tmp_data;
    last_burst_tmp <= '1' when last_burst = "1" and burst_valid = '1' else '0';
    out_HLS_RLAST  <= tmp_last & ( tmp_last and last_burst_tmp );
    out_HLS_RVALID <= data_valid;
    data_ready     <= in_HLS_RREADY;
    --------------------------- R channel end --------------------------------------
end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_write is
    generic (
        CONSERVATIVE              : INTEGER := 0;
        C_M_AXI_ID_WIDTH          : INTEGER := 1;
        C_M_AXI_AWUSER_WIDTH      : INTEGER := 1;
        C_M_AXI_WUSER_WIDTH       : INTEGER := 1;
        C_M_AXI_BUSER_WIDTH       : INTEGER := 1;
        C_USER_VALUE              : INTEGER := 0;
        C_PROT_VALUE              : INTEGER := 0;
        C_CACHE_VALUE             : INTEGER := 2#0011#;
        BUS_ADDR_WIDTH            : INTEGER := 32;
        BUS_DATA_WIDTH            : INTEGER := 32;
        NUM_WRITE_OUTSTANDING     : INTEGER := 2;
        MAX_WRITE_BURST_LENGTH    : INTEGER := 16);
    port (
        ACLK                      : in  STD_LOGIC;
        ARESET                    : in  STD_LOGIC;
        ACLK_EN                   : in  STD_LOGIC;
        out_BUS_AWID              : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        out_BUS_AWADDR            : out UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
        out_BUS_AWLEN             : out UNSIGNED(7 downto 0);
        out_BUS_AWSIZE            : out UNSIGNED(2 downto 0);
        out_BUS_AWBURST           : out UNSIGNED(1 downto 0);
        out_BUS_AWLOCK            : out UNSIGNED(1 downto 0);
        out_BUS_AWCACHE           : out UNSIGNED(3 downto 0);
        out_BUS_AWPROT            : out UNSIGNED(2 downto 0);
        out_BUS_AWQOS             : out UNSIGNED(3 downto 0);
        out_BUS_AWREGION          : out UNSIGNED(3 downto 0);
        out_BUS_AWUSER            : out UNSIGNED(C_M_AXI_AWUSER_WIDTH-1 downto 0);
        out_BUS_AWVALID           : out STD_LOGIC;
        in_BUS_AWREADY            : in  STD_LOGIC;
        out_BUS_WID               : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        out_BUS_WDATA             : out UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
        out_BUS_WSTRB             : out UNSIGNED(BUS_DATA_WIDTH/8-1 downto 0);
        out_BUS_WLAST             : out STD_LOGIC;
        out_BUS_WUSER             : out UNSIGNED(C_M_AXI_WUSER_WIDTH-1 downto 0);
        out_BUS_WVALID            : out STD_LOGIC;
        in_BUS_WREADY             : in  STD_LOGIC;
        in_BUS_BID                : in  UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        in_BUS_BRESP              : in  UNSIGNED(1 downto 0);
        in_BUS_BUSER              : in  UNSIGNED(C_M_AXI_BUSER_WIDTH-1 downto 0);
        in_BUS_BVALID             : in  STD_LOGIC;
        out_BUS_BREADY            : out STD_LOGIC;
        in_HLS_AWVALID            : in  STD_LOGIC;
        out_HLS_AWREADY           : out STD_LOGIC;
        in_HLS_AWADDR             : in  UNSIGNED(BUS_ADDR_WIDTH-1 downto 0);
        in_HLS_AWLEN              : in  UNSIGNED(31 downto 0);
        in_HLS_WVALID             : in  STD_LOGIC;
        out_HLS_WREADY            : out STD_LOGIC;
        in_HLS_WSTRB              : in  UNSIGNED(BUS_DATA_WIDTH/8-1 downto 0);
        in_HLS_WDATA              : in  UNSIGNED(BUS_DATA_WIDTH-1 downto 0);
        out_HLS_BVALID            : out STD_LOGIC;
        in_HLS_BREADY             : in  STD_LOGIC;
        out_HLS_BRESP             : out UNSIGNED(1 downto 0));
end entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_write;

architecture behave of design_1_v_frmbuf_wr_0_1_mm_video_m_axi_write is
    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;
    --common
    constant BUS_DATA_BYTES       : INTEGER := BUS_DATA_WIDTH / 8;
    constant BUS_ADDR_ALIGN       : INTEGER := log2(BUS_DATA_BYTES);
    constant NUM_WRITE_WIDTH      : INTEGER := log2(MAX_WRITE_BURST_LENGTH);
    constant BOUNDARY_BEATS       : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0) := (others => '1');
    --AW channel
    signal  in_wreq_data          : UNSIGNED(BUS_ADDR_WIDTH + 31 downto 0);
    signal  wreq_data             : UNSIGNED(BUS_ADDR_WIDTH + 31 downto 0);
    signal  wreq_valid            : STD_LOGIC;
    signal  tmp_addr              : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  tmp_len               : UNSIGNED(31 downto 0);
    signal  start_addr            : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  end_addr              : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  beat_len              : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  awaddr_tmp            : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  awlen_tmp             : UNSIGNED(7 downto 0);
    signal  sect_addr             : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr_buf         : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  start_to_4k           : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len              : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len_buf          : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  aw2b_info             : UNSIGNED(0 downto 0);
    signal  sect_cnt              : UNSIGNED(BUS_ADDR_WIDTH - 13 downto 0);
    signal  fifo_burst_w          : STD_LOGIC;
    signal  fifo_resp_w           : STD_LOGIC;

    signal  AWADDR_Dummy          : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
    signal  AWLEN_Dummy           : UNSIGNED(7 downto 0);
    signal  AWVALID_Dummy         : STD_LOGIC;
    signal  AWREADY_Dummy         : STD_LOGIC;
    signal  ready_for_sect        : STD_LOGIC;
    signal  next_wreq             : STD_LOGIC;
    signal  ready_for_wreq        : BOOLEAN;
    signal  wreq_handling         : BOOLEAN;
    signal  first_sect            : BOOLEAN;
    signal  last_sect             : BOOLEAN;
    signal  last_sect_buf         : BOOLEAN;
    signal  next_sect             : BOOLEAN;
    --W channel
    signal  data_buf              : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
    signal  strb_buf              : UNSIGNED(BUS_DATA_BYTES - 1 downto 0);
    signal  next_data             : STD_LOGIC;
    signal  data_valid            : STD_LOGIC;
    signal  data_ready            : STD_LOGIC;
    signal  ready_for_data        : BOOLEAN;

    signal  len_cnt               : UNSIGNED(7 downto 0);
    signal  burst_len             : UNSIGNED(7 downto 0);
    signal  fifo_burst_ready      : STD_LOGIC;
    signal  next_burst            : STD_LOGIC;
    signal  burst_valid           : STD_LOGIC;
    signal  WVALID_Dummy          : STD_LOGIC;
    signal  WREADY_Dummy          : STD_LOGIC;
    signal  WLAST_Dummy           : STD_LOGIC;
    --B channel
    signal  next_resp             : STD_LOGIC;
    signal  last_resp             : UNSIGNED(0 downto 0);
    signal  fifo_resp_ready       : STD_LOGIC;
    signal  need_wrsp             : STD_LOGIC;
    signal  resp_valid            : STD_LOGIC;
    signal  resp_ready            : STD_LOGIC;


    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo is
        generic (
            MEM_STYLE         : STRING  := "shiftreg";
            DATA_WIDTH        : INTEGER := 8;
            ADDR_WIDTH        : INTEGER := 4;
            DEPTH             : INTEGER := 16);
        port (
            clk               : in  STD_LOGIC;
            reset             : in  STD_LOGIC;
            clk_en            : in  STD_LOGIC;
            if_full_n         : out STD_LOGIC;
            if_write          : in  STD_LOGIC;
            if_din            : in  UNSIGNED(DATA_WIDTH-1 downto 0);
            if_empty_n        : out STD_LOGIC;
            if_read           : in  STD_LOGIC;
            if_dout           : out UNSIGNED(DATA_WIDTH-1 downto 0);
            if_num_data_valid : out UNSIGNED(ADDR_WIDTH downto 0));
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo;

    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice is
        generic (
            DATA_WIDTH  : INTEGER := 8);
        port (
            clk         : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            s_data      : in  UNSIGNED(DATA_WIDTH-1 downto 0);
            s_valid     : in  STD_LOGIC;
            s_ready     : out STD_LOGIC;
            m_data      : out UNSIGNED(DATA_WIDTH-1 downto 0);
            m_valid     : out STD_LOGIC;
            m_ready     : in  STD_LOGIC);
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice;

    component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_throttl is
        generic (
            CONSERVATIVE  : INTEGER := 0;
            USED_FIX      : BOOLEAN := true;
            FIX_VALUE     : INTEGER := 4;
            ADDR_WIDTH    : INTEGER := 32;
            DATA_WIDTH    : INTEGER := 32;
            DEPTH         : INTEGER := 16;
            MAXREQS       : INTEGER := 16;
            AVERAGE_MODE  : BOOLEAN := false);
        port (
            clk               : in  STD_LOGIC;
            reset             : in  STD_LOGIC;
            clk_en            : in  STD_LOGIC;
            in_TOP_AWADDR     : in  UNSIGNED;
            in_TOP_AWLEN      : in  UNSIGNED;
            in_TOP_AWVALID    : in  STD_LOGIC;
            out_TOP_AWREADY   : out STD_LOGIC;
            out_BUS_AWADDR    : out UNSIGNED;
            out_BUS_AWLEN     : out UNSIGNED;
            out_BUS_AWVALID   : out STD_LOGIC;
            in_BUS_AWREADY    : in  STD_LOGIC;
            in_TOP_WDATA      : in  UNSIGNED;
            in_TOP_WSTRB      : in  UNSIGNED;
            in_TOP_WLAST      : in  STD_LOGIC;
            in_TOP_WVALID     : in  STD_LOGIC;
            out_TOP_WREADY    : out STD_LOGIC;
            out_BUS_WDATA     : out UNSIGNED;
            out_BUS_WSTRB     : out UNSIGNED;
            out_BUS_WLAST     : out STD_LOGIC;
            out_BUS_WVALID    : out STD_LOGIC;
            in_BUS_WREADY     : in  STD_LOGIC);
    end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_throttl;

begin
    --------------------------- AW channel begin -----------------------------------
    -- Instantiation
    rs_wreq : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice
        generic map (
            DATA_WIDTH      => BUS_ADDR_WIDTH + 32)
        port map (
            clk             =>  ACLK,
            reset           =>  ARESET,
            s_data          =>  in_wreq_data,
            s_valid         =>  in_HLS_AWVALID,
            s_ready         =>  out_HLS_AWREADY,
            m_data          =>  wreq_data,
            m_valid         =>  wreq_valid,
            m_ready         =>  next_wreq);

    in_wreq_data<= in_HLS_AWLEN & in_HLS_AWADDR;
    tmp_addr    <= wreq_data(BUS_ADDR_WIDTH - 1 downto 0);
    tmp_len     <= wreq_data(BUS_ADDR_WIDTH + 31 downto BUS_ADDR_WIDTH);

    ready_for_wreq <= not(wreq_handling and not(last_sect and next_sect));
    next_wreq      <= '1' when wreq_valid = '1' and ready_for_wreq else '0';

    start_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                start_addr <= (others => '0');
                end_addr   <= (others => '0');
                beat_len   <= (others => '0');
            elsif ACLK_EN = '1' then
                if (next_wreq = '1') then
                    start_addr <= tmp_addr;
                    end_addr   <= tmp_addr + tmp_len;
                    beat_len   <= RESIZE(SHIFT_RIGHT(tmp_len(11 downto 0) + tmp_addr(BUS_ADDR_ALIGN-1 downto 0), BUS_ADDR_ALIGN), 12-BUS_ADDR_ALIGN);
                end if;
            end if;
        end if;
    end process start_addr_proc;

    wreq_handling_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wreq_handling <= false;
            elsif ACLK_EN = '1' then
                if wreq_valid = '1' and not wreq_handling then
                    wreq_handling <= true;
                elsif wreq_valid = '0' and last_sect and next_sect then
                    wreq_handling <= false;
                end if;
            end if;
        end if;
    end process wreq_handling_proc;

    -- 4k boundary
    first_sect <= (sect_cnt = start_addr(BUS_ADDR_WIDTH - 1 downto 12));
    last_sect  <= (sect_cnt = end_addr(BUS_ADDR_WIDTH -1 downto 12));
    next_sect  <= wreq_handling and ready_for_sect = '1';

    sect_addr  <= start_addr when first_sect else
                  sect_cnt & (11 downto 0 => '0');
    start_to_4k<= BOUNDARY_BEATS - start_addr(11 downto BUS_ADDR_ALIGN);
    sect_len   <= beat_len                            when     first_sect and     last_sect else
                  start_to_4k                         when     first_sect and not last_sect else
                  end_addr(11 downto BUS_ADDR_ALIGN)  when not first_sect and     last_sect else
                  BOUNDARY_BEATS;

    sect_cnt_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_cnt <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_wreq = '1' then
                    sect_cnt <= tmp_addr(BUS_ADDR_WIDTH - 1 downto 12);
                elsif next_sect then
                    sect_cnt <= sect_cnt + 1;
                end if;
            end if;
        end if;
    end process sect_cnt_proc;

    sect_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_len_buf  <= (others => '0');
                sect_addr_buf <= (others => '0');
                last_sect_buf  <= false;
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_len_buf  <= sect_len;
                    sect_addr_buf <= sect_addr;
                    last_sect_buf  <= last_sect;
                end if;
            end if;
        end if;
    end process sect_addr_proc;

    -- burst converter
    out_BUS_AWID     <= (others => '0');
    out_BUS_AWSIZE   <= TO_UNSIGNED(BUS_ADDR_ALIGN, out_BUS_AWSIZE'length);
    out_BUS_AWBURST  <= "01";
    out_BUS_AWLOCK   <= "00";
    out_BUS_AWCACHE  <= TO_UNSIGNED(C_CACHE_VALUE, out_BUS_AWCACHE'length);
    out_BUS_AWPROT   <= TO_UNSIGNED(C_PROT_VALUE, out_BUS_AWPROT'length);
    out_BUS_AWUSER   <= TO_UNSIGNED(C_USER_VALUE, out_BUS_AWUSER'length);
    out_BUS_AWQOS    <= "0000";
    out_BUS_AWREGION <= "0000";

    must_one_burst : if (BUS_DATA_BYTES >= 4096/MAX_WRITE_BURST_LENGTH) generate
    begin
        AWADDR_Dummy  <= sect_addr_buf(BUS_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
        AWLEN_Dummy   <= RESIZE(sect_len_buf, 8);

        ready_for_sect <= '1' when not (AWVALID_Dummy = '1' and AWREADY_Dummy = '0') and fifo_burst_ready = '1' and fifo_resp_ready = '1' else '0';

        awvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    AWVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_sect then
                        AWVALID_Dummy <= '1';
                    elsif not next_sect and AWREADY_Dummy = '1' then
                        AWVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process awvalid_proc;

        fifo_resp_w  <= '1' when next_sect else '0';
        aw2b_info(0) <= '1' when last_sect else '0';

        fifo_burst_w <= '1' when next_sect else '0';
        awaddr_tmp   <= sect_addr(BUS_ADDR_WIDTH - 1 downto 0);
        awlen_tmp    <= RESIZE(sect_len, 8);
    end generate must_one_burst;

    could_multi_bursts : if (BUS_DATA_BYTES < 4096/MAX_WRITE_BURST_LENGTH) generate
        signal  awaddr_buf      : UNSIGNED(BUS_ADDR_WIDTH - 1 downto 0);
        signal  awlen_buf       : UNSIGNED(7 downto 0);
        signal  loop_cnt        : UNSIGNED(11 - NUM_WRITE_WIDTH - BUS_ADDR_ALIGN downto 0);
        signal  last_loop       : BOOLEAN;
        signal  next_loop       : BOOLEAN;
        signal  ready_for_loop  : BOOLEAN;
        signal  sect_handling   : BOOLEAN;
    begin
        AWADDR_Dummy  <= awaddr_buf;
        AWLEN_Dummy   <= awlen_buf;

        last_loop      <= (loop_cnt = sect_len_buf(11 - BUS_ADDR_ALIGN downto NUM_WRITE_WIDTH));
        next_loop      <= sect_handling and ready_for_loop;
        ready_for_loop <= not (AWVALID_Dummy = '1' and AWREADY_Dummy = '0') and fifo_resp_ready = '1' and fifo_burst_ready = '1';
        ready_for_sect <= '1' when not (sect_handling and not (last_loop and next_loop)) else '0';

        sect_handling_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    sect_handling <= false;
                elsif ACLK_EN = '1' then
                    if wreq_handling and not sect_handling then
                        sect_handling <= true;
                    elsif not wreq_handling and last_loop and next_loop then
                        sect_handling <= false;
                    end if;
                end if;
            end if;
        end process sect_handling_proc;

        loop_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    loop_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_sect then
                        loop_cnt <= (others => '0');
                    elsif next_loop then
                        loop_cnt <= loop_cnt + 1;
                    end if;
                end if;
            end if;
        end process loop_cnt_proc;

        awaddr_tmp <= sect_addr_buf(BUS_ADDR_WIDTH -1 downto 0) when loop_cnt = 0 else
                      awaddr_buf + SHIFT_LEFT(RESIZE(awlen_buf, 32) + 1, BUS_ADDR_ALIGN);
        awaddr_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    awaddr_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_loop then
                        awaddr_buf <= awaddr_tmp(BUS_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
                    end if;
                end if;
            end if;
        end process awaddr_buf_proc;

        awlen_tmp  <= (others => '0') when (NUM_WRITE_WIDTH = 0) else
                      RESIZE(sect_len_buf(NUM_WRITE_WIDTH-1 downto 0), 8) when last_loop else
                      TO_UNSIGNED(2**NUM_WRITE_WIDTH-1, 8);
        awlen_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    awlen_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_loop then
                        awlen_buf <= awlen_tmp;
                    end if;
                end if;
            end if;
        end process awlen_buf_proc;

        awvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    AWVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_loop then
                        AWVALID_Dummy <= '1';
                    elsif not next_loop and AWREADY_Dummy = '1' then
                        AWVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process awvalid_proc;

        fifo_resp_w  <= '1' when next_loop else '0';
        fifo_burst_w <= '1' when next_loop else '0';
        aw2b_info <= "1" when last_loop and last_sect_buf else "0";
    end generate could_multi_bursts;
    --------------------------- AW channel end -------------------------------------

    --------------------------- W channel begin ------------------------------------
    -- Instantiation

    fifo_burst : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
        generic map (
            DATA_WIDTH        => 8,
            DEPTH             => NUM_WRITE_OUTSTANDING,
            ADDR_WIDTH        => log2(NUM_WRITE_OUTSTANDING))
        port map (
            clk               => ACLK,
            reset             => ARESET,
            clk_en            => ACLK_EN,
            if_full_n         => fifo_burst_ready,
            if_write          => fifo_burst_w,
            if_din            => awlen_tmp,
            if_empty_n        => burst_valid,
            if_read           => next_burst,
            if_dout           => burst_len,
            if_num_data_valid => open);
    
    out_BUS_WID    <= (others => '0');
    out_BUS_WUSER  <= TO_UNSIGNED(C_USER_VALUE, out_BUS_WUSER'length);
    out_HLS_WREADY <= data_ready;

    data_valid     <= in_HLS_WVALID;
    data_ready     <= '1' when burst_valid = '1' and ready_for_data else '0';

    next_data      <= '1' when data_ready = '1' and data_valid = '1' else '0';
    next_burst     <= '1' when len_cnt = burst_len and next_data = '1' else '0';
    ready_for_data <= not (WVALID_Dummy = '1' and WREADY_Dummy = '0');

    data_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                data_buf <= (others => '0');
                strb_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_data = '1' then
                    data_buf <= in_HLS_WDATA;
                    strb_buf <= in_HLS_WSTRB;
                end if;
            end if;
        end if;
    end process data_buf_proc;

    wvalid_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                WVALID_Dummy <= '0';
            elsif ACLK_EN = '1' then
                if next_data = '1' then
                    WVALID_Dummy <= '1';
                elsif ready_for_data then
                    WVALID_Dummy <= '0';
                end if;
            end if;
        end if;
    end process wvalid_proc;

    wlast_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                WLAST_Dummy <= '0';
            elsif ACLK_EN = '1' then
                if next_burst = '1' then
                    WLAST_Dummy <= '1';
                elsif ready_for_data then
                    WLAST_Dummy <= '0';
                end if;
            end if;
        end if;
    end process wlast_proc;

    len_cnt_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                len_cnt <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_burst = '1' then
                    len_cnt <= (others => '0');
                elsif next_data = '1' then
                    len_cnt <= len_cnt + 1;
                end if;
            end if;
        end if;
    end process len_cnt_proc;

    --------------------------- W channel end --------------------------------------
    -- Write throttling instantiation
    wreq_throttl : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_throttl
        generic map (
            CONSERVATIVE      => CONSERVATIVE,
            USED_FIX          => false,
            ADDR_WIDTH        => BUS_ADDR_WIDTH,
            DATA_WIDTH        => BUS_DATA_WIDTH,
            DEPTH             => MAX_WRITE_BURST_LENGTH,
            MAXREQS           => NUM_WRITE_OUTSTANDING,
            AVERAGE_MODE      => false)
        port map (
            clk               => ACLK,
            reset             => ARESET,
            clk_en            => ACLK_EN,
            -- internal
            in_TOP_AWADDR     => AWADDR_Dummy,
            in_TOP_AWLEN      => AWLEN_Dummy,
            in_TOP_AWVALID    => AWVALID_Dummy,
            out_TOP_AWREADY   => AWREADY_Dummy,
            in_TOP_WDATA      => data_buf,
            in_TOP_WSTRB      => strb_buf,
            in_TOP_WLAST      => WLAST_Dummy,
            in_TOP_WVALID     => WVALID_Dummy,
            out_TOP_WREADY    => WREADY_Dummy,
            -- AXI BUS
            out_BUS_AWADDR    => out_BUS_AWADDR,
            out_BUS_AWLEN     => out_BUS_AWLEN,
            out_BUS_AWVALID   => out_BUS_AWVALID,
            in_BUS_AWREADY    => in_BUS_AWREADY,
            out_BUS_WDATA     => out_BUS_WDATA,
            out_BUS_WSTRB     => out_BUS_WSTRB,
            out_BUS_WLAST     => out_BUS_WLAST,
            out_BUS_WVALID    => out_BUS_WVALID,
            in_BUS_WREADY     => in_BUS_WREADY);

    --------------------------- B channel begin ------------------------------------
    -- Instantiation
    rs_resp : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice
        generic map (
            DATA_WIDTH        => 2)
        port map (
            clk               => ACLK,
            reset             => ARESET,
            s_data            => in_BUS_BRESP,
            s_valid           => in_BUS_BVALID,
            s_ready           => out_BUS_BREADY,
            m_data            => open,
            m_valid           => resp_valid,
            m_ready           => resp_ready);

    fifo_resp : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
        generic map (
            DATA_WIDTH        => 1,
            DEPTH             => NUM_WRITE_OUTSTANDING,
            ADDR_WIDTH        => log2(NUM_WRITE_OUTSTANDING))
        port map (
            clk               => ACLK,
            reset             => ARESET,
            clk_en            => ACLK_EN,
            if_full_n         => fifo_resp_ready,
            if_write          => fifo_resp_w,
            if_din            => aw2b_info,
            if_empty_n        => need_wrsp,
            if_read           => next_resp,
            if_dout           => last_resp,
            if_num_data_valid => open);

    resp_ready <= need_wrsp when in_HLS_BREADY = '1' or last_resp = "0" else '0';
    next_resp  <= resp_valid and resp_ready;
    
    out_HLS_BVALID <= resp_valid when last_resp = "1" else '0';
    out_HLS_BRESP  <= "00";
    --------------------------- B channel end --------------------------------------
end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_throttl is
    generic (
        CONSERVATIVE  : INTEGER := 0;
        USED_FIX      : BOOLEAN := false;
        FIX_VALUE     : INTEGER := 4;
        ADDR_WIDTH    : INTEGER := 32;
        DATA_WIDTH    : INTEGER := 32;
        DEPTH         : INTEGER := 16;
        MAXREQS       : INTEGER := 16;
        AVERAGE_MODE  : BOOLEAN := false);
    port (
        clk             : in  STD_LOGIC;
        reset           : in  STD_LOGIC;
        clk_en              : in  STD_LOGIC;
        in_TOP_AWADDR   : in  UNSIGNED(ADDR_WIDTH-1 downto 0);
        in_TOP_AWLEN    : in  UNSIGNED(7 downto 0);
        in_TOP_AWVALID  : in  STD_LOGIC;
        out_TOP_AWREADY : out STD_LOGIC;
        out_BUS_AWADDR  : out UNSIGNED(ADDR_WIDTH-1 downto 0);
        out_BUS_AWLEN   : out UNSIGNED(7 downto 0);
        out_BUS_AWVALID : out STD_LOGIC;
        in_BUS_AWREADY  : in  STD_LOGIC;
        in_TOP_WDATA    : in  UNSIGNED(DATA_WIDTH-1 downto 0);
        in_TOP_WSTRB    : in  UNSIGNED(DATA_WIDTH/8-1 downto 0);
        in_TOP_WLAST    : in  STD_LOGIC;
        in_TOP_WVALID   : in  STD_LOGIC;
        out_TOP_WREADY  : out STD_LOGIC;
        out_BUS_WDATA   : out UNSIGNED(DATA_WIDTH-1 downto 0);
        out_BUS_WSTRB   : out UNSIGNED(DATA_WIDTH/8-1 downto 0);
        out_BUS_WLAST   : out STD_LOGIC;
        out_BUS_WVALID  : out STD_LOGIC;
        in_BUS_WREADY   : in  STD_LOGIC);

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

    function gt_4 (x : INTEGER) return INTEGER is
        variable n : INTEGER;
    begin
        n := 4;
        if x > 4 then
            n := x;
        end if;
        return n;
    end function gt_4;

end entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_throttl;

architecture behav of design_1_v_frmbuf_wr_0_1_mm_video_m_axi_throttl is
begin

    conservative_gen : if (CONSERVATIVE = 0) generate
        type     switch_t   is array(boolean) of integer;
        constant switch         : switch_t  := (true => FIX_VALUE-1, false => 0);
        constant threshold      : INTEGER   := switch(USED_FIX);
        signal   req_en         : STD_LOGIC;
        signal   handshake      : STD_LOGIC;
        signal   load_init      : UNSIGNED(7 downto 0);
        signal   throttl_cnt    : UNSIGNED(8 downto 0);
    begin
        -- AW Channel
        out_BUS_AWADDR  <= in_TOP_AWADDR;
        out_BUS_AWLEN   <= in_TOP_AWLEN;

        -- W Channel
        out_BUS_WDATA   <= in_TOP_WDATA;
        out_BUS_WSTRB   <= in_TOP_WSTRB;
        out_BUS_WLAST   <= in_TOP_WLAST;
        out_BUS_WVALID  <= in_TOP_WVALID when (throttl_cnt > 0) else '0';
        out_TOP_WREADY  <= in_BUS_WREADY when (throttl_cnt > 0) else '0';

        fix_gen : if USED_FIX generate
            load_init <= TO_UNSIGNED(FIX_VALUE-1, 8);
            handshake <= '1';
        end generate;

        average_gen : if not USED_FIX and AVERAGE_MODE generate
            load_init <= in_TOP_AWLEN;
            handshake <= '1';
        end generate;

        no_fix_gen : if not USED_FIX and not AVERAGE_MODE generate
            load_init <= in_TOP_AWLEN;
            handshake <= in_TOP_WVALID and in_BUS_WREADY;
        end generate;

        out_BUS_AWVALID <= in_TOP_AWVALID and req_en;
        out_TOP_AWREADY <= in_BUS_AWREADY and req_en;
        req_en          <= '1'        when throttl_cnt = 0 else
                            handshake when throttl_cnt = 1 else '0';

        process (clk)
        begin
            if (clk'event and clk = '1') then
                if reset = '1' then
                    throttl_cnt <= (others => '0');
                elsif clk_en = '1' then
                    if in_TOP_AWLEN >= threshold and req_en = '1' and in_TOP_AWVALID = '1' and in_BUS_AWREADY = '1' then
                        throttl_cnt <= RESIZE(load_init, 9) + 1;--load
                    elsif throttl_cnt > 0 and handshake = '1' then
                        throttl_cnt <= throttl_cnt - 1;
                    end if;
                end if;
            end if;
        end process;
    end generate;

    aggressive_gen : if (CONSERVATIVE /= 0) generate

        component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice is
            generic (
                DATA_WIDTH  : integer := 8);
            port (
                clk         : in  std_logic;
                reset       : in  std_logic;
                s_data      : in  UNSIGNED(DATA_WIDTH-1 downto 0);
                s_valid     : in  std_logic;
                s_ready     : out std_logic;
                m_data      : out UNSIGNED(DATA_WIDTH-1 downto 0);
                m_valid     : out std_logic;
                m_ready     : in  std_logic);
        end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice;

        component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo is
            generic (
                MEM_STYLE         : STRING  := "shiftreg";
                DATA_WIDTH        : INTEGER := 8;
                ADDR_WIDTH        : INTEGER := 4;
                DEPTH             : INTEGER := 16);
            port (
                clk               : in  STD_LOGIC;
                reset             : in  STD_LOGIC;
                clk_en            : in  STD_LOGIC;
                if_full_n         : out STD_LOGIC;
                if_write          : in  STD_LOGIC;
                if_din            : in  UNSIGNED(DATA_WIDTH-1 downto 0);
                if_empty_n        : out STD_LOGIC;
                if_read           : in  STD_LOGIC;
                if_dout           : out UNSIGNED(DATA_WIDTH-1 downto 0);
                if_num_data_valid : out UNSIGNED(ADDR_WIDTH downto 0));
        end component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo;

        -- Instantiation for reg slice for AW channel
        signal   rs_req_ready   : STD_LOGIC;
        signal   rs_req_valid   : STD_LOGIC;
        signal   rs_req_in      : UNSIGNED(ADDR_WIDTH + 7 downto 0);
        signal   rs_req_out     : UNSIGNED(ADDR_WIDTH + 7 downto 0);

        constant CNT_WIDTH      : INTEGER := (log2(gt_4(DEPTH)) + 1);
        signal   data_in        : UNSIGNED(DATA_WIDTH + DATA_WIDTH/8 downto 0);
        signal   data_out       : UNSIGNED(DATA_WIDTH + DATA_WIDTH/8 downto 0);
        signal   req_in         : UNSIGNED(ADDR_WIDTH + 7 downto 0);
        signal   req_en         : STD_LOGIC;
        signal   data_en        : STD_LOGIC;
        signal   fifo_valid     : STD_LOGIC;
        signal   read_fifo      : STD_LOGIC;
        signal   req_fifo_valid : STD_LOGIC;
        signal   read_req       : STD_LOGIC;
        signal   data_push      : STD_LOGIC;
        signal   out_last_dup   : STD_LOGIC;
        signal   data_pop       : STD_LOGIC;
        signal   flying_req     : STD_LOGIC;
        signal   last_cnt       : UNSIGNED(CNT_WIDTH-1 downto 0);

        signal   out_data_ready_tmp : STD_LOGIC;
    begin
        --AW Channel
        req_in          <= in_TOP_AWLEN & in_TOP_AWADDR;
        out_BUS_AWADDR  <= rs_req_out(ADDR_WIDTH-1 downto 0);
        out_BUS_AWLEN   <= rs_req_out(ADDR_WIDTH+7 downto ADDR_WIDTH);
        rs_req_valid    <= req_fifo_valid and req_en;

        req_en          <= '1' when ((flying_req = '0' and data_en = '1') or (flying_req = '1' and (out_last_dup = '1' and data_pop = '1') and (last_cnt(CNT_WIDTH-1 downto 1) /= "0"))) else '0';
        read_req        <= rs_req_ready and req_en;

        process (clk)
        begin
            if (clk'event and clk = '1') then
                if reset = '1' then
                    flying_req <= '0';
                elsif clk_en = '1' then
                    if rs_req_valid = '1' and rs_req_ready = '1' then
                        flying_req <= '1';
                    elsif out_last_dup = '1' and data_pop = '1' then
                        flying_req <= '0';
                    end if;
                end if;
            end if;
        end process;

        req_fifo : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
            generic map (
                DATA_WIDTH        => ADDR_WIDTH + 8,
                DEPTH             => MAXREQS,
                ADDR_WIDTH        => log2(MAXREQS))
            port map (
                clk               => clk,
                reset             => reset,
                clk_en            => clk_en,
                if_full_n         => out_TOP_AWREADY,
                if_write          => in_TOP_AWVALID,
                if_din            => req_in,
                if_empty_n        => req_fifo_valid,
                if_read           => read_req,
                if_dout           => rs_req_in,
                if_num_data_valid => open);

        rs_req : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice
            generic map (
                DATA_WIDTH      =>  ADDR_WIDTH + 8)
            port map (
                clk             =>  clk,
                reset           =>  reset,
                s_data          =>  rs_req_in,
                s_valid         =>  rs_req_valid,
                s_ready         =>  rs_req_ready,
                m_data          =>  rs_req_out,
                m_valid         =>  out_BUS_AWVALID,
                m_ready         =>  in_BUS_AWREADY);

        --W Channel
        data_in         <= in_TOP_WLAST & in_TOP_WSTRB & in_TOP_WDATA;
        out_BUS_WDATA   <= data_out(DATA_WIDTH-1 downto 0);
        out_BUS_WSTRB   <= data_out(DATA_WIDTH+DATA_WIDTH/8-1 downto DATA_WIDTH);
        out_BUS_WLAST   <= data_out(DATA_WIDTH+DATA_WIDTH/8);
        out_last_dup    <= data_out(DATA_WIDTH+DATA_WIDTH/8);
        out_BUS_WVALID  <= fifo_valid and data_en and flying_req;
        out_TOP_WREADY  <= out_data_ready_tmp;

        data_en         <= '1' when last_cnt /= "0" else '0';
        data_push       <= in_TOP_WVALID and out_data_ready_tmp;
        data_pop        <= fifo_valid and read_fifo;
        read_fifo       <= in_BUS_WREADY and data_en and flying_req;

        process (clk)
        begin
            if (clk'event and clk = '1') then
                if reset = '1' then
                    last_cnt <= (others => '0');
                elsif clk_en = '1' then
                    if (in_TOP_WLAST and data_push) = '1' and (out_last_dup and data_pop) = '0' then
                        last_cnt <= last_cnt + 1;
                    elsif (in_TOP_WLAST and data_push) = '0' and (out_last_dup and data_pop) = '1' then
                        last_cnt <= last_cnt - 1;
                    end if;
                end if;
            end if;
        end process;

        data_fifo : design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo
        generic map (
            DATA_WIDTH        => DATA_WIDTH + DATA_WIDTH/8 + 1,
            ADDR_WIDTH        => log2(DEPTH),
            DEPTH             => DEPTH)
        port map (
            clk               => clk,
            reset             => reset,
            clk_en            => clk_en,
            if_full_n         => out_data_ready_tmp,
            if_write          => in_TOP_WVALID,
            if_din            => data_in,
            if_empty_n        => fifo_valid,
            if_read           => read_fifo,
            if_dout           => data_out,
            if_num_data_valid => open);

    end generate;

end architecture behav;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice is
    generic (
        DATA_WIDTH  : INTEGER := 8);
    port (
        -- system signals
        clk        : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        -- slave side
        s_data      : in  UNSIGNED(DATA_WIDTH-1 downto 0);
        s_valid     : in  STD_LOGIC;
        s_ready     : out STD_LOGIC;
        -- master side
        m_data      : out UNSIGNED(DATA_WIDTH-1 downto 0);
        m_valid     : out STD_LOGIC;
        m_ready     : in  STD_LOGIC);
end entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice;

architecture behave of design_1_v_frmbuf_wr_0_1_mm_video_m_axi_reg_slice is
    constant ZERO                     : UNSIGNED(1 downto 0) := "10";
    constant ONE                      : UNSIGNED(1 downto 0) := "11";
    constant TWO                      : UNSIGNED(1 downto 0) := "01";
    signal   data_p1                  : UNSIGNED(DATA_WIDTH-1 downto 0);
    signal   data_p2                  : UNSIGNED(DATA_WIDTH-1 downto 0);
    signal   load_p1                  : STD_LOGIC;
    signal   load_p2                  : STD_LOGIC;
    signal   load_p1_from_p2          : STD_LOGIC;
    signal   s_ready_t                : STD_LOGIC;
    signal   state                    : UNSIGNED(1 downto 0);
    signal   next_st                  : UNSIGNED(1 downto 0);
begin
    s_ready <= s_ready_t;
    m_data  <= data_p1;
    m_valid <= state(0);

    load_p1 <= '1' when (state = ZERO and s_valid = '1') or
                        (state = ONE  and s_valid = '1' and m_ready = '1') or
                        (state = TWO  and m_ready = '1')
               else '0';

    load_p2         <= s_valid and s_ready_t;
    load_p1_from_p2 <= '1' when state = TWO else '0';

    data_p1_proc : process (clk)
    begin
        if (clk'event and clk = '1') then
            if (load_p1 = '1') then
                if (load_p1_from_p2 = '1') then
                    data_p1 <= data_p2;
                else
                    data_p1 <= s_data;
                end if;
            end if;
        end if;
    end process;

    data_p2_proc : process (clk)
    begin
        if (clk'event and clk = '1') then
            if (load_p2 = '1') then
                data_p2 <= s_data;
            end if;
        end if;
    end process;

    s_ready_t_proc : process (clk)
    begin
        if (clk'event and clk = '1') then
            if (reset = '1') then
                s_ready_t <= '0';
            elsif (state = ZERO) then
                s_ready_t <= '1';
            elsif (state = ONE and next_st = TWO) then
                s_ready_t <= '0';
            elsif (state = TWO and next_st = ONE) then
                s_ready_t <= '1';
            end if;
        end if;
    end process;

    state_proc : process (clk)
    begin
        if (clk'event and clk = '1') then
            if (reset = '1') then
                state <= ZERO;
            else
                state <= next_st;
            end if;
        end if;
    end process;

    next_st_proc : process (state, s_valid, s_ready_t, m_ready)
    begin
        case state is
            when ZERO =>
                if (s_valid = '1' and s_ready_t = '1') then
                    next_st <= ONE;
                else
                    next_st <= ZERO;
                end if;
            when ONE =>
                if (s_valid = '0' and m_ready = '1') then
                    next_st <= ZERO;
                elsif (s_valid = '1' and m_ready = '0') then
                    next_st <= TWO;
                else
                    next_st <= ONE;
                end if;
            when TWO =>
                if (m_ready = '1') then
                    next_st <= ONE;
                else
                    next_st <= TWO;
                end if;
            when others =>
                next_st <= ZERO;
        end case;
    end process;

end architecture behave;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo is
    generic (
        MEM_STYLE         : STRING  := "shiftreg";
        DATA_WIDTH        : INTEGER := 8;
        ADDR_WIDTH        : INTEGER := 4;
        DEPTH             : INTEGER := 16);
    port (
        clk               : in  STD_LOGIC;
        reset             : in  STD_LOGIC;
        clk_en            : in  STD_LOGIC;
        if_full_n         : out STD_LOGIC;
        if_write          : in  STD_LOGIC;
        if_din            : in  UNSIGNED(DATA_WIDTH-1 downto 0);
        if_empty_n        : out STD_LOGIC;
        if_read           : in  STD_LOGIC;
        if_dout           : out UNSIGNED(DATA_WIDTH-1 downto 0);
        if_num_data_valid : out UNSIGNED(ADDR_WIDTH downto 0));
end entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo;

architecture behave of design_1_v_frmbuf_wr_0_1_mm_video_m_axi_fifo is

    signal push       : std_logic;
    signal pop        : std_logic;
    signal full_n     : std_logic := '1';
    signal empty_n    : std_logic := '0';
    signal dout_vld   : std_logic := '0';
    signal mOutPtr    : UNSIGNED(ADDR_WIDTH     downto 0) := (others => '0');
begin

    if_num_data_valid <= mOutPtr + 1 when dout_vld = '1' else (others=> '0');
    
    fifo_depth_1_gen: if (DEPTH = 1) generate
    begin
        if_full_n  <= not dout_vld;
        if_empty_n <= dout_vld;
        push       <= not dout_vld and if_write;
        pop        <= not dout_vld and if_write;
    end generate;
    
    fifo_depth_gt1_gen: if (DEPTH > 1) generate
    begin
        if_full_n  <= full_n;
        if_empty_n <= dout_vld;
        push       <= full_n and if_write;
        pop        <= empty_n and (not dout_vld or if_read);

        -- mOutPtr
        process (clk) begin
            if clk'event and clk = '1' then
                if reset = '1' then
                    mOutPtr <= (others => '0');
                elsif (clk_en = '1') then
                    if push = '1' and pop = '0' then
                        mOutPtr <= mOutPtr + 1;
                    elsif push = '0' and pop = '1' then
                        mOutPtr <= mOutPtr - 1;
                    end if;
                end if;
            end if;
        end process;

        -- full_n
        process (clk) begin
            if clk'event and clk = '1' then
                if reset = '1' then
                    full_n <= '1';
                elsif clk_en = '1' then
                    if push = '1' and pop = '0' then
                        if mOutPtr = DEPTH - 2 then
                            full_n <= '0';
                        else
                            full_n <= '1';
                        end if;
                    elsif push = '0' and pop = '1' then
                        full_n <= '1';
                    end if;
                end if;
            end if;
        end process;

        -- empty_n
        process (clk) begin
            if clk'event and clk = '1' then
                if reset = '1' then
                    empty_n <= '0';
                elsif clk_en = '1' then
                    if push = '1' and pop = '0' then
                        empty_n <= '1';
                    elsif push = '0' and pop = '1' then
                        if mOutPtr = 1 then
                            empty_n <= '0';
                        else
                            empty_n <= '1';
                        end if;
                    end if;
                end if;
            end if;
        end process;
    end generate;

    -- dout_vld
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                dout_vld <= '0';
            elsif clk_en = '1' then
                if pop = '1' then
                    dout_vld <= '1';
                elsif if_read = '1' then
                    dout_vld <= '0';
                end if;
            end if;
        end if;
    end process;

    -- shiftreg based fifo or depth == 1
    fifo_srl_gen: if ((MEM_STYLE = "shiftreg") or (DEPTH = 1)) generate
        component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_srl is
            generic (
                DATA_WIDTH  : integer := 32;
                ADDR_WIDTH  : integer := 6;
                DEPTH       : integer := 64);
            port (
                clk         : in  std_logic;
                reset       : in  std_logic;
                clk_en      : in  std_logic;
                we          : in  std_logic;
                din         : in  UNSIGNED(DATA_WIDTH-1 downto 0);
                raddr       : in  UNSIGNED(ADDR_WIDTH-1 downto 0);
                re          : in  std_logic;
                dout        : out UNSIGNED(DATA_WIDTH-1 downto 0));
        end component;
        signal raddr      : UNSIGNED(ADDR_WIDTH - 1 downto 0) := (others => '0');
    begin
        U_ffo_srl: design_1_v_frmbuf_wr_0_1_mm_video_m_axi_srl
        generic map (
            DATA_WIDTH  => DATA_WIDTH,
            ADDR_WIDTH  => ADDR_WIDTH,
            DEPTH       => DEPTH)
        port map (
            clk         => clk,
            reset       => reset,
            clk_en      => clk_en,
            we          => push,
            din         => if_din,
            re          => pop,
            raddr       => raddr,
            dout        => if_dout);

        process (clk) begin
            if clk'event and clk = '1' then
                if reset = '1' then
                    raddr <= (others => '0');
                elsif (clk_en = '1') then
                    if (push = '1' and pop = '0' and empty_n = '1') then
                        raddr <= raddr + 1;
                    elsif (push = '0' and pop = '1' and raddr /= 0) then
                        raddr <= raddr - 1;
                    end if;
                end if;
            end if;
        end process;
    end generate;

    -- mem based fifo (depth must be greater than 1)
    fifo_mem_gen: if ((MEM_STYLE /= "shiftreg") and (DEPTH > 1)) generate
        component design_1_v_frmbuf_wr_0_1_mm_video_m_axi_mem is
            generic (
                MEM_STYLE   : string  := "auto";
                DATA_WIDTH  : integer := 32;
                ADDR_WIDTH  : integer := 6;
                DEPTH       : integer := 64);
            port (
                clk         : in  std_logic;
                reset       : in  std_logic;
                clk_en      : in  std_logic;
                we          : in  std_logic;
                waddr       : in  UNSIGNED(ADDR_WIDTH-1 downto 0);
                din         : in  UNSIGNED(DATA_WIDTH-1 downto 0);
                re          : in  std_logic;
                raddr       : in  UNSIGNED(ADDR_WIDTH-1 downto 0);
                dout        : out UNSIGNED(DATA_WIDTH-1 downto 0));
        end component;

        signal waddr      : UNSIGNED(ADDR_WIDTH - 1 downto 0) := (others => '0');
        signal raddr      : UNSIGNED(ADDR_WIDTH - 1 downto 0) := (others => '0');
        signal wnext      : UNSIGNED(ADDR_WIDTH - 1 downto 0);
        signal rnext      : UNSIGNED(ADDR_WIDTH - 1 downto 0);
    begin
        U_ffo_mem: design_1_v_frmbuf_wr_0_1_mm_video_m_axi_mem
        generic map (
            MEM_STYLE   => MEM_STYLE,
            DATA_WIDTH  => DATA_WIDTH,
            ADDR_WIDTH  => ADDR_WIDTH,
            DEPTH       => DEPTH)
        port map (
            clk         => clk,
            reset       => reset,
            clk_en      => clk_en,
            we          => push,
            waddr       => waddr,
            din         => if_din,
            re          => pop,
            raddr       => rnext,
            dout        => if_dout);

        wnext <= waddr           when push = '0'        else
                 (others => '0') when waddr = DEPTH - 2 else
                 waddr + 1;
        rnext <= raddr           when pop = '0'         else
                 (others => '0') when raddr = DEPTH - 2 else
                 raddr + 1;

        process (clk) begin
            if clk'event and clk = '1' then
                if reset = '1' then
                    waddr <= (others => '0');
                elsif (clk_en = '1') then
                    waddr <= wnext;
                end if;
            end if;
        end process;

        process (clk) begin
            if clk'event and clk = '1' then
                if reset = '1' then
                    raddr <= (others => '0');
                elsif (clk_en = '1') then
                    raddr <= rnext;
                end if;
            end if;
        end process;
    end generate;

end architecture behave;   

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_srl is
    generic (
        DATA_WIDTH  : integer := 32;
        ADDR_WIDTH  : integer := 6;
        DEPTH       : integer := 64);
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        clk_en      : in  std_logic;
        we          : in  std_logic;
        din         : in  UNSIGNED(DATA_WIDTH-1 downto 0);
        raddr       : in  UNSIGNED(ADDR_WIDTH-1 downto 0);
        re          : in  std_logic;
        dout        : out UNSIGNED(DATA_WIDTH-1 downto 0));
end design_1_v_frmbuf_wr_0_1_mm_video_m_axi_srl;

architecture behav of design_1_v_frmbuf_wr_0_1_mm_video_m_axi_srl is
begin

    fifo_depth_1_gen: if (DEPTH = 1) generate
    begin
        process (clk)
        begin
            if (clk'event and clk = '1') then
                if reset = '1' then
                    dout <= (others => '0');
                elsif clk_en = '1' and we = '1' then
                    dout <= din;
                end if;
            end if;
        end process;
    end generate;

    fifo_depth_gt1_gen: if (DEPTH > 1) generate
        type SRL_ARRAY is array (0 to DEPTH-2) of UNSIGNED(DATA_WIDTH-1 downto 0);
        signal mem : SRL_ARRAY;
    begin
        process (clk)
        begin
            if (clk'event and clk = '1') then
                if clk_en = '1' and we = '1' then
                    for i in 0 to DEPTH - 3 loop
                        mem(i+1) <= mem(i);
                    end loop;
                    mem(0) <= din;
                end if;
            end  if;
        end process;

        process (clk)
        begin
            if (clk'event and clk = '1') then
                if reset = '1' then
                    dout <= (others => '0');
                elsif clk_en = '1' and re = '1' then
                    dout <= mem(to_integer(raddr));
                end if;
            end if;
        end process;
    end generate;

end architecture behav;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity design_1_v_frmbuf_wr_0_1_mm_video_m_axi_mem is
    generic (
        MEM_STYLE   : string  := "auto";
        DATA_WIDTH  : integer := 32;
        ADDR_WIDTH  : integer := 6;
        DEPTH       : integer := 64);
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        clk_en      : in  std_logic;
        we          : in  std_logic;
        waddr       : in  UNSIGNED(ADDR_WIDTH-1 downto 0);
        din         : in  UNSIGNED(DATA_WIDTH-1 downto 0);
        re          : in  std_logic;
        raddr       : in  UNSIGNED(ADDR_WIDTH-1 downto 0);
        dout        : out UNSIGNED(DATA_WIDTH-1 downto 0));
end design_1_v_frmbuf_wr_0_1_mm_video_m_axi_mem;

architecture behav of design_1_v_frmbuf_wr_0_1_mm_video_m_axi_mem is

    signal raddr_reg : UNSIGNED(ADDR_WIDTH - 1 downto 0) := (others => '0');
    -- depth must be larger than 1
    type MEM_ARRAY is array (0 to DEPTH - 2) of UNSIGNED(DATA_WIDTH - 1 downto 0);
    signal mem : MEM_ARRAY;
    -- read write collision attribute settings.
    attribute ram_style: string;
    attribute ram_style of mem: signal is MEM_STYLE;
    attribute rw_addr_collision : string;
    attribute rw_addr_collision of mem : signal is "yes";

begin

    process (clk) begin
        if clk'event and clk = '1' then
            if clk_en = '1' then
                raddr_reg <= raddr;
            end if;
        end if;
    end process;

    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                dout <= ( others=> '0');
            elsif (clk_en = '1' and re = '1') then
                dout <= mem(to_integer(raddr_reg));
            end if;
        end if;
    end process;

    process (clk) begin
        if clk'event and clk = '1' then
            if clk_en = '1' and we = '1' then
                mem(to_integer(waddr)) <= din;
            end if;
        end if;
    end process;
end architecture behav;
