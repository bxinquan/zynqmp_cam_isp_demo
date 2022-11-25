-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity design_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    bytePlanes1_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    bytePlanes1_num_data_valid : IN STD_LOGIC_VECTOR (9 downto 0);
    bytePlanes1_fifo_cap : IN STD_LOGIC_VECTOR (9 downto 0);
    bytePlanes1_empty_n : IN STD_LOGIC;
    bytePlanes1_read : OUT STD_LOGIC;
    m_axi_mm_video_AWVALID : OUT STD_LOGIC;
    m_axi_mm_video_AWREADY : IN STD_LOGIC;
    m_axi_mm_video_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_mm_video_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mm_video_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_mm_video_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_mm_video_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_mm_video_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_mm_video_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mm_video_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_mm_video_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mm_video_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mm_video_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mm_video_WVALID : OUT STD_LOGIC;
    m_axi_mm_video_WREADY : IN STD_LOGIC;
    m_axi_mm_video_WDATA : OUT STD_LOGIC_VECTOR (255 downto 0);
    m_axi_mm_video_WSTRB : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_mm_video_WLAST : OUT STD_LOGIC;
    m_axi_mm_video_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mm_video_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mm_video_ARVALID : OUT STD_LOGIC;
    m_axi_mm_video_ARREADY : IN STD_LOGIC;
    m_axi_mm_video_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_mm_video_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mm_video_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_mm_video_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_mm_video_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_mm_video_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_mm_video_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mm_video_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_mm_video_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mm_video_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mm_video_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mm_video_RVALID : IN STD_LOGIC;
    m_axi_mm_video_RREADY : OUT STD_LOGIC;
    m_axi_mm_video_RDATA : IN STD_LOGIC_VECTOR (255 downto 0);
    m_axi_mm_video_RLAST : IN STD_LOGIC;
    m_axi_mm_video_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mm_video_RFIFONUM : IN STD_LOGIC_VECTOR (8 downto 0);
    m_axi_mm_video_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mm_video_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_mm_video_BVALID : IN STD_LOGIC;
    m_axi_mm_video_BREADY : OUT STD_LOGIC;
    m_axi_mm_video_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_mm_video_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mm_video_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sext_ln1086 : IN STD_LOGIC_VECTOR (26 downto 0);
    loopWidth : IN STD_LOGIC_VECTOR (10 downto 0) );
end;


architecture behav of design_1_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1086_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln1086_reg_144 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1086_fu_110_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal mm_video_blk_n_W : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal bytePlanes1_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal mem_pix_reg_153 : STD_LOGIC_VECTOR (255 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal x_fu_68 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln1086_fu_116_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_x_5 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component design_1_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component design_1_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    x_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln1086_fu_110_p2 = ap_const_lv1_0))) then 
                    x_fu_68 <= add_ln1086_fu_116_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    x_fu_68 <= ap_const_lv11_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                icmp_ln1086_reg_144 <= icmp_ln1086_fu_110_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1086_reg_144 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                mem_pix_reg_153 <= bytePlanes1_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln1086_fu_116_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_x_5) + unsigned(ap_const_lv11_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, bytePlanes1_empty_n, icmp_ln1086_reg_144)
    begin
                ap_block_pp0_stage0_01001 <= ((icmp_ln1086_reg_144 = ap_const_lv1_0) and (bytePlanes1_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, bytePlanes1_empty_n, icmp_ln1086_reg_144, m_axi_mm_video_WREADY)
    begin
                ap_block_pp0_stage0_11001 <= (((icmp_ln1086_reg_144 = ap_const_lv1_0) and (bytePlanes1_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((m_axi_mm_video_WREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, bytePlanes1_empty_n, icmp_ln1086_reg_144, m_axi_mm_video_WREADY)
    begin
                ap_block_pp0_stage0_subdone <= (((icmp_ln1086_reg_144 = ap_const_lv1_0) and (bytePlanes1_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((m_axi_mm_video_WREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(bytePlanes1_empty_n, icmp_ln1086_reg_144)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((icmp_ln1086_reg_144 = ap_const_lv1_0) and (bytePlanes1_empty_n = ap_const_logic_0));
    end process;

        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln1086_fu_110_p2)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln1086_fu_110_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1086_reg_144, ap_block_pp0_stage0_subdone)
    begin
        if (((icmp_ln1086_reg_144 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_x_5_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, x_fu_68, ap_loop_init)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_x_5 <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_x_5 <= x_fu_68;
        end if; 
    end process;


    bytePlanes1_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, bytePlanes1_empty_n, icmp_ln1086_reg_144, ap_block_pp0_stage0)
    begin
        if (((icmp_ln1086_reg_144 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            bytePlanes1_blk_n <= bytePlanes1_empty_n;
        else 
            bytePlanes1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    bytePlanes1_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1086_reg_144, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln1086_reg_144 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            bytePlanes1_read <= ap_const_logic_1;
        else 
            bytePlanes1_read <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln1086_fu_110_p2 <= "1" when (ap_sig_allocacmp_x_5 = loopWidth) else "0";
    m_axi_mm_video_ARADDR <= ap_const_lv32_0;
    m_axi_mm_video_ARBURST <= ap_const_lv2_0;
    m_axi_mm_video_ARCACHE <= ap_const_lv4_0;
    m_axi_mm_video_ARID <= ap_const_lv1_0;
    m_axi_mm_video_ARLEN <= ap_const_lv32_0;
    m_axi_mm_video_ARLOCK <= ap_const_lv2_0;
    m_axi_mm_video_ARPROT <= ap_const_lv3_0;
    m_axi_mm_video_ARQOS <= ap_const_lv4_0;
    m_axi_mm_video_ARREGION <= ap_const_lv4_0;
    m_axi_mm_video_ARSIZE <= ap_const_lv3_0;
    m_axi_mm_video_ARUSER <= ap_const_lv1_0;
    m_axi_mm_video_ARVALID <= ap_const_logic_0;
    m_axi_mm_video_AWADDR <= ap_const_lv32_0;
    m_axi_mm_video_AWBURST <= ap_const_lv2_0;
    m_axi_mm_video_AWCACHE <= ap_const_lv4_0;
    m_axi_mm_video_AWID <= ap_const_lv1_0;
    m_axi_mm_video_AWLEN <= ap_const_lv32_0;
    m_axi_mm_video_AWLOCK <= ap_const_lv2_0;
    m_axi_mm_video_AWPROT <= ap_const_lv3_0;
    m_axi_mm_video_AWQOS <= ap_const_lv4_0;
    m_axi_mm_video_AWREGION <= ap_const_lv4_0;
    m_axi_mm_video_AWSIZE <= ap_const_lv3_0;
    m_axi_mm_video_AWUSER <= ap_const_lv1_0;
    m_axi_mm_video_AWVALID <= ap_const_logic_0;
    m_axi_mm_video_BREADY <= ap_const_logic_0;
    m_axi_mm_video_RREADY <= ap_const_logic_0;
    m_axi_mm_video_WDATA <= mem_pix_reg_153;
    m_axi_mm_video_WID <= ap_const_lv1_0;
    m_axi_mm_video_WLAST <= ap_const_logic_0;
    m_axi_mm_video_WSTRB <= ap_const_lv32_FFFFFFFF;
    m_axi_mm_video_WUSER <= ap_const_lv1_0;

    m_axi_mm_video_WVALID_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            m_axi_mm_video_WVALID <= ap_const_logic_1;
        else 
            m_axi_mm_video_WVALID <= ap_const_logic_0;
        end if; 
    end process;


    mm_video_blk_n_W_assign_proc : process(ap_enable_reg_pp0_iter2, m_axi_mm_video_WREADY, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            mm_video_blk_n_W <= m_axi_mm_video_WREADY;
        else 
            mm_video_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

end behav;
