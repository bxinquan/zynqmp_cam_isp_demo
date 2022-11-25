-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity design_1_v_frm_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_axis_video_TVALID : IN STD_LOGIC;
    img_din : OUT STD_LOGIC_VECTOR (59 downto 0);
    img_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    img_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    img_full_n : IN STD_LOGIC;
    img_write : OUT STD_LOGIC;
    sof_2 : IN STD_LOGIC_VECTOR (0 downto 0);
    axi_last_V_2 : IN STD_LOGIC_VECTOR (0 downto 0);
    axi_data_V_2 : IN STD_LOGIC_VECTOR (59 downto 0);
    div_cast : IN STD_LOGIC_VECTOR (10 downto 0);
    cond : IN STD_LOGIC_VECTOR (0 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (2 downto 0);
    icmp_ln235 : IN STD_LOGIC_VECTOR (0 downto 0);
    s_axis_video_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    s_axis_video_TREADY : OUT STD_LOGIC;
    s_axis_video_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
    s_axis_video_TSTRB : IN STD_LOGIC_VECTOR (7 downto 0);
    s_axis_video_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    s_axis_video_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    s_axis_video_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    s_axis_video_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    eol_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    eol_out_ap_vld : OUT STD_LOGIC;
    axi_data_V_3_out : OUT STD_LOGIC_VECTOR (59 downto 0);
    axi_data_V_3_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of design_1_v_frm_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_1D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011101";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_32 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110010";
    constant ap_const_lv32_3B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111011";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv32_31 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal icmp_ln207_fu_245_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln210_fu_257_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op38_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln207_reg_467 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal img_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal s_axis_video_TDATA_blk_n : STD_LOGIC;
    signal eol_reg_205 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_phi_mux_eol_phi_fu_208_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_phi_mux_sof_phi_fu_219_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_fu_112 : STD_LOGIC_VECTOR (10 downto 0);
    signal j_2_fu_251_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_allocacmp_j_1 : STD_LOGIC_VECTOR (10 downto 0);
    signal axi_data_V_fu_116 : STD_LOGIC_VECTOR (59 downto 0);
    signal tmp_data_V_fu_271_p1 : STD_LOGIC_VECTOR (59 downto 0);
    signal axi_last_V_fu_120 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_s_fu_296_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal trunc_ln674_fu_306_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_2_fu_317_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_361_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_3_fu_341_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_361_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_4_fu_351_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_361_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_361_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_361_p5 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_361_p6 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_361_p7 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_361_p8 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_5_fu_382_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln235_4_fu_399_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln235_3_fu_392_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_361_p10 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln235_1_fu_334_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln235_fu_327_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln235_2_fu_310_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_317 : BOOLEAN;
    signal ap_condition_320 : BOOLEAN;
    signal ap_condition_324 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component design_1_v_frm_wr_0_0_mux_83_10_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (9 downto 0);
        din1 : IN STD_LOGIC_VECTOR (9 downto 0);
        din2 : IN STD_LOGIC_VECTOR (9 downto 0);
        din3 : IN STD_LOGIC_VECTOR (9 downto 0);
        din4 : IN STD_LOGIC_VECTOR (9 downto 0);
        din5 : IN STD_LOGIC_VECTOR (9 downto 0);
        din6 : IN STD_LOGIC_VECTOR (9 downto 0);
        din7 : IN STD_LOGIC_VECTOR (9 downto 0);
        din8 : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (9 downto 0) );
    end component;


    component design_1_v_frm_wr_0_0_flow_control_loop_pipe_sequential_init IS
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
    mux_83_10_1_1_U19 : component design_1_v_frm_wr_0_0_mux_83_10_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        din4_WIDTH => 10,
        din5_WIDTH => 10,
        din6_WIDTH => 10,
        din7_WIDTH => 10,
        din8_WIDTH => 3,
        dout_WIDTH => 10)
    port map (
        din0 => tmp_1_fu_361_p1,
        din1 => tmp_1_fu_361_p2,
        din2 => tmp_1_fu_361_p3,
        din3 => tmp_1_fu_361_p4,
        din4 => tmp_1_fu_361_p5,
        din5 => tmp_1_fu_361_p6,
        din6 => tmp_1_fu_361_p7,
        din7 => tmp_1_fu_361_p8,
        din8 => p_read2,
        dout => tmp_1_fu_361_p10);

    flow_control_loop_pipe_sequential_init_U : component design_1_v_frm_wr_0_0_flow_control_loop_pipe_sequential_init
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    axi_data_V_fu_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_const_boolean_1 = ap_condition_320)) then 
                    axi_data_V_fu_116 <= tmp_data_V_fu_271_p1;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    axi_data_V_fu_116 <= axi_data_V_2;
                end if;
            end if; 
        end if;
    end process;

    axi_last_V_fu_120_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_const_boolean_1 = ap_condition_320)) then 
                    axi_last_V_fu_120 <= s_axis_video_TLAST;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    axi_last_V_fu_120 <= axi_last_V_2;
                end if;
            end if; 
        end if;
    end process;

    eol_reg_205_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_init = ap_const_logic_1))) then 
                    eol_reg_205 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_324)) then 
                    eol_reg_205 <= axi_last_V_fu_120;
                end if;
            end if; 
        end if;
    end process;

    j_fu_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln207_fu_245_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1))) then 
                    j_fu_112 <= j_2_fu_251_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_112 <= ap_const_lv11_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln207_reg_467 <= icmp_ln207_fu_245_p2;
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
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, s_axis_video_TVALID, ap_predicate_op38_read_state1, img_full_n, icmp_ln207_reg_467, ap_start_int)
    begin
                ap_block_pp0_stage0_01001 <= (((icmp_ln207_reg_467 = ap_const_lv1_0) and (img_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_predicate_op38_read_state1 = ap_const_boolean_1) and (s_axis_video_TVALID = ap_const_logic_0) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, s_axis_video_TVALID, ap_predicate_op38_read_state1, img_full_n, icmp_ln207_reg_467, ap_start_int)
    begin
                ap_block_pp0_stage0_11001 <= (((icmp_ln207_reg_467 = ap_const_lv1_0) and (img_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_predicate_op38_read_state1 = ap_const_boolean_1) and (s_axis_video_TVALID = ap_const_logic_0) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, s_axis_video_TVALID, ap_predicate_op38_read_state1, img_full_n, icmp_ln207_reg_467, ap_start_int)
    begin
                ap_block_pp0_stage0_subdone <= (((icmp_ln207_reg_467 = ap_const_lv1_0) and (img_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_predicate_op38_read_state1 = ap_const_boolean_1) and (s_axis_video_TVALID = ap_const_logic_0) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(s_axis_video_TVALID, ap_predicate_op38_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_predicate_op38_read_state1 = ap_const_boolean_1) and (s_axis_video_TVALID = ap_const_logic_0));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(img_full_n, icmp_ln207_reg_467)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((icmp_ln207_reg_467 = ap_const_lv1_0) and (img_full_n = ap_const_logic_0));
    end process;


    ap_condition_317_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln207_reg_467, ap_block_pp0_stage0)
    begin
                ap_condition_317 <= ((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln207_reg_467 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_320_assign_proc : process(icmp_ln207_fu_245_p2, or_ln210_fu_257_p2, ap_start_int)
    begin
                ap_condition_320 <= ((or_ln210_fu_257_p2 = ap_const_lv1_0) and (icmp_ln207_fu_245_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1));
    end process;


    ap_condition_324_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln207_reg_467, ap_block_pp0_stage0_11001)
    begin
                ap_condition_324 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln207_reg_467 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln207_fu_245_p2, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln207_fu_245_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_phi_mux_eol_phi_fu_208_p4_assign_proc : process(ap_CS_fsm_pp0_stage0, eol_reg_205, ap_loop_init, axi_last_V_fu_120, ap_condition_317)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
            if ((ap_loop_init = ap_const_logic_1)) then 
                ap_phi_mux_eol_phi_fu_208_p4 <= ap_const_lv1_0;
            elsif ((ap_const_boolean_1 = ap_condition_317)) then 
                ap_phi_mux_eol_phi_fu_208_p4 <= axi_last_V_fu_120;
            else 
                ap_phi_mux_eol_phi_fu_208_p4 <= eol_reg_205;
            end if;
        else 
            ap_phi_mux_eol_phi_fu_208_p4 <= eol_reg_205;
        end if; 
    end process;


    ap_phi_mux_sof_phi_fu_219_p4_assign_proc : process(ap_CS_fsm_pp0_stage0, sof_2, ap_loop_init, ap_condition_317)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
            if ((ap_loop_init = ap_const_logic_1)) then 
                ap_phi_mux_sof_phi_fu_219_p4 <= sof_2;
            elsif ((ap_const_boolean_1 = ap_condition_317)) then 
                ap_phi_mux_sof_phi_fu_219_p4 <= ap_const_lv1_0;
            else 
                ap_phi_mux_sof_phi_fu_219_p4 <= sof_2;
            end if;
        else 
            ap_phi_mux_sof_phi_fu_219_p4 <= sof_2;
        end if; 
    end process;


    ap_predicate_op38_read_state1_assign_proc : process(icmp_ln207_fu_245_p2, or_ln210_fu_257_p2)
    begin
                ap_predicate_op38_read_state1 <= ((or_ln210_fu_257_p2 = ap_const_lv1_0) and (icmp_ln207_fu_245_p2 = ap_const_lv1_0));
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_j_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, j_fu_112)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_1 <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_j_1 <= j_fu_112;
        end if; 
    end process;

    axi_data_V_3_out <= axi_data_V_fu_116;

    axi_data_V_3_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln207_fu_245_p2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln207_fu_245_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            axi_data_V_3_out_ap_vld <= ap_const_logic_1;
        else 
            axi_data_V_3_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    eol_out <= eol_reg_205;

    eol_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln207_fu_245_p2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln207_fu_245_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            eol_out_ap_vld <= ap_const_logic_1;
        else 
            eol_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln207_fu_245_p2 <= "1" when (ap_sig_allocacmp_j_1 = div_cast) else "0";

    img_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, img_full_n, icmp_ln207_reg_467, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln207_reg_467 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            img_blk_n <= img_full_n;
        else 
            img_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_din <= (((((select_ln235_4_fu_399_p3 & select_ln235_3_fu_392_p3) & tmp_1_fu_361_p10) & select_ln235_1_fu_334_p3) & select_ln235_fu_327_p3) & select_ln235_2_fu_310_p3);

    img_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln207_reg_467, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln207_reg_467 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            img_write <= ap_const_logic_1;
        else 
            img_write <= ap_const_logic_0;
        end if; 
    end process;

    j_2_fu_251_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j_1) + unsigned(ap_const_lv11_1));
    or_ln210_fu_257_p2 <= (ap_phi_mux_sof_phi_fu_219_p4 or ap_phi_mux_eol_phi_fu_208_p4);

    s_axis_video_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, s_axis_video_TVALID, ap_predicate_op38_read_state1, ap_block_pp0_stage0, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op38_read_state1 = ap_const_boolean_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            s_axis_video_TDATA_blk_n <= s_axis_video_TVALID;
        else 
            s_axis_video_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    s_axis_video_TREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_predicate_op38_read_state1, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op38_read_state1 = ap_const_boolean_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            s_axis_video_TREADY <= ap_const_logic_1;
        else 
            s_axis_video_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    select_ln235_1_fu_334_p3 <= 
        tmp_2_fu_317_p4 when (cond(0) = '1') else 
        tmp_s_fu_296_p4;
    select_ln235_2_fu_310_p3 <= 
        tmp_s_fu_296_p4 when (cond(0) = '1') else 
        trunc_ln674_fu_306_p1;
    select_ln235_3_fu_392_p3 <= 
        tmp_5_fu_382_p4 when (icmp_ln235(0) = '1') else 
        tmp_4_fu_351_p4;
    select_ln235_4_fu_399_p3 <= 
        tmp_3_fu_341_p4 when (icmp_ln235(0) = '1') else 
        tmp_5_fu_382_p4;
    select_ln235_fu_327_p3 <= 
        trunc_ln674_fu_306_p1 when (cond(0) = '1') else 
        tmp_2_fu_317_p4;
    tmp_1_fu_361_p1 <= axi_data_V_fu_116(59 downto 50);
    tmp_1_fu_361_p2 <= axi_data_V_fu_116(39 downto 30);
    tmp_1_fu_361_p3 <= axi_data_V_fu_116(29 downto 20);
    tmp_1_fu_361_p4 <= axi_data_V_fu_116(29 downto 20);
    tmp_1_fu_361_p5 <= axi_data_V_fu_116(29 downto 20);
    tmp_1_fu_361_p6 <= axi_data_V_fu_116(29 downto 20);
    tmp_1_fu_361_p7 <= axi_data_V_fu_116(29 downto 20);
    tmp_1_fu_361_p8 <= axi_data_V_fu_116(29 downto 20);
    tmp_2_fu_317_p4 <= axi_data_V_fu_116(19 downto 10);
    tmp_3_fu_341_p4 <= axi_data_V_fu_116(59 downto 50);
    tmp_4_fu_351_p4 <= axi_data_V_fu_116(39 downto 30);
    tmp_5_fu_382_p4 <= axi_data_V_fu_116(49 downto 40);
    tmp_data_V_fu_271_p1 <= s_axis_video_TDATA(60 - 1 downto 0);
    tmp_s_fu_296_p4 <= axi_data_V_fu_116(29 downto 20);
    trunc_ln674_fu_306_p1 <= axi_data_V_fu_116(10 - 1 downto 0);
end behav;