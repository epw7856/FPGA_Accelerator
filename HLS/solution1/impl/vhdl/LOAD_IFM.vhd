-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity LOAD_IFM is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_dma_I_TDATA : IN STD_LOGIC_VECTOR (55 downto 0);
    input_dma_I_TVALID : IN STD_LOGIC;
    input_dma_I_TREADY : OUT STD_LOGIC;
    input_dma_I_TLAST : IN STD_LOGIC;
    IFM_0_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    IFM_0_V_ce0 : OUT STD_LOGIC;
    IFM_0_V_we0 : OUT STD_LOGIC;
    IFM_0_V_d0 : OUT STD_LOGIC_VECTOR (25 downto 0);
    IFM_1_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    IFM_1_V_ce0 : OUT STD_LOGIC;
    IFM_1_V_we0 : OUT STD_LOGIC;
    IFM_1_V_d0 : OUT STD_LOGIC_VECTOR (25 downto 0);
    IFM_2_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    IFM_2_V_ce0 : OUT STD_LOGIC;
    IFM_2_V_we0 : OUT STD_LOGIC;
    IFM_2_V_d0 : OUT STD_LOGIC_VECTOR (25 downto 0);
    IFM_3_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    IFM_3_V_ce0 : OUT STD_LOGIC;
    IFM_3_V_we0 : OUT STD_LOGIC;
    IFM_3_V_d0 : OUT STD_LOGIC_VECTOR (25 downto 0);
    IFM_4_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    IFM_4_V_ce0 : OUT STD_LOGIC;
    IFM_4_V_we0 : OUT STD_LOGIC;
    IFM_4_V_d0 : OUT STD_LOGIC_VECTOR (25 downto 0);
    IFM_5_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    IFM_5_V_ce0 : OUT STD_LOGIC;
    IFM_5_V_we0 : OUT STD_LOGIC;
    IFM_5_V_d0 : OUT STD_LOGIC_VECTOR (25 downto 0);
    IFM_6_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    IFM_6_V_ce0 : OUT STD_LOGIC;
    IFM_6_V_we0 : OUT STD_LOGIC;
    IFM_6_V_d0 : OUT STD_LOGIC_VECTOR (25 downto 0);
    custom_Tr : IN STD_LOGIC_VECTOR (31 downto 0);
    custom_Tc : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of LOAD_IFM is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv66_0 : STD_LOGIC_VECTOR (65 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv66_1 : STD_LOGIC_VECTOR (65 downto 0) := "000000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_1A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011010";
    constant ap_const_lv32_33 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110011";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv9_D : STD_LOGIC_VECTOR (8 downto 0) := "000001101";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal input_dma_I_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal exitcond_flatten5_fu_284_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bound_fu_255_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_reg_496 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_261_p3 : STD_LOGIC_VECTOR (65 downto 0);
    signal tmp_reg_501 : STD_LOGIC_VECTOR (65 downto 0);
    signal tmp_43_mid_fu_269_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_43_mid_reg_506 : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_next5_fu_289_p2 : STD_LOGIC_VECTOR (65 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal i_mid2_fu_369_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_mid2_fu_415_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal m_2_fu_462_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal indvar_flatten_next_fu_474_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal indvar_flatten5_reg_192 : STD_LOGIC_VECTOR (65 downto 0);
    signal i_reg_203 : STD_LOGIC_VECTOR (2 downto 0);
    signal indvar_flatten_reg_214 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_reg_225 : STD_LOGIC_VECTOR (30 downto 0);
    signal m_reg_236 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_46_cast_fu_452_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_64_fu_427_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_mid2_fu_334_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_t_mid2_fu_354_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal bound_fu_255_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bound_fu_255_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal m_cast_fu_275_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_flatten_fu_301_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_5_fu_295_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_mid1_fu_322_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_40_fu_328_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_t_mid1_fu_342_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_t_fu_348_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_s_fu_279_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_mid_fu_306_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_43_mid1_fu_362_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal m_mid_fu_314_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_60_fu_391_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal j_4_fu_377_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_61_fu_395_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_62_fu_403_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal m_mid2_fu_383_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_482_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal indvar_flatten_op_fu_468_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_482_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_482_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_482_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal bound_fu_255_p00 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_fu_255_p10 : STD_LOGIC_VECTOR (63 downto 0);

    component top_mac_muladd_5ncud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (4 downto 0);
        din1 : IN STD_LOGIC_VECTOR (8 downto 0);
        din2 : IN STD_LOGIC_VECTOR (8 downto 0);
        dout : OUT STD_LOGIC_VECTOR (8 downto 0) );
    end component;



begin
    top_mac_muladd_5ncud_U62 : component top_mac_muladd_5ncud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 5,
        din1_WIDTH => 9,
        din2_WIDTH => 9,
        dout_WIDTH => 9)
    port map (
        din0 => grp_fu_482_p0,
        din1 => grp_fu_482_p1,
        din2 => grp_fu_482_p2,
        dout => grp_fu_482_p3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_reg_203_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_reg_203 <= i_mid2_fu_369_p3;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_203 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    indvar_flatten5_reg_192_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                indvar_flatten5_reg_192 <= indvar_flatten_next5_fu_289_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten5_reg_192 <= ap_const_lv66_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_214_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                indvar_flatten_reg_214 <= indvar_flatten_next_fu_474_p3;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten_reg_214 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;

    j_reg_225_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_reg_225 <= j_mid2_fu_415_p3;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                j_reg_225 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    m_reg_236_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                m_reg_236 <= m_2_fu_462_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                m_reg_236 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                bound_reg_496 <= bound_fu_255_p2;
                tmp_43_mid_reg_506 <= tmp_43_mid_fu_269_p2;
                    tmp_reg_501(65 downto 2) <= tmp_fu_261_p3(65 downto 2);
            end if;
        end if;
    end process;
    tmp_reg_501(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    IFM_0_V_address0 <= tmp_46_cast_fu_452_p1(8 - 1 downto 0);

    IFM_0_V_ce0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            IFM_0_V_ce0 <= ap_const_logic_1;
        else 
            IFM_0_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_0_V_d0 <= tmp_64_fu_427_p1;

    IFM_0_V_we0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2, i_mid2_fu_369_p3)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (i_mid2_fu_369_p3 = ap_const_lv3_0))) then 
            IFM_0_V_we0 <= ap_const_logic_1;
        else 
            IFM_0_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_1_V_address0 <= tmp_46_cast_fu_452_p1(8 - 1 downto 0);

    IFM_1_V_ce0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            IFM_1_V_ce0 <= ap_const_logic_1;
        else 
            IFM_1_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_1_V_d0 <= tmp_64_fu_427_p1;

    IFM_1_V_we0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2, i_mid2_fu_369_p3)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (i_mid2_fu_369_p3 = ap_const_lv3_1))) then 
            IFM_1_V_we0 <= ap_const_logic_1;
        else 
            IFM_1_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_2_V_address0 <= tmp_46_cast_fu_452_p1(8 - 1 downto 0);

    IFM_2_V_ce0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            IFM_2_V_ce0 <= ap_const_logic_1;
        else 
            IFM_2_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_2_V_d0 <= tmp_64_fu_427_p1;

    IFM_2_V_we0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2, i_mid2_fu_369_p3)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (i_mid2_fu_369_p3 = ap_const_lv3_2))) then 
            IFM_2_V_we0 <= ap_const_logic_1;
        else 
            IFM_2_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_3_V_address0 <= tmp_46_cast_fu_452_p1(8 - 1 downto 0);

    IFM_3_V_ce0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            IFM_3_V_ce0 <= ap_const_logic_1;
        else 
            IFM_3_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_3_V_d0 <= tmp_64_fu_427_p1;

    IFM_3_V_we0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2, i_mid2_fu_369_p3)
    begin
        if ((not((i_mid2_fu_369_p3 = ap_const_lv3_0)) and not((i_mid2_fu_369_p3 = ap_const_lv3_1)) and not((i_mid2_fu_369_p3 = ap_const_lv3_2)) and not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            IFM_3_V_we0 <= ap_const_logic_1;
        else 
            IFM_3_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_4_V_address0 <= tmp_46_cast_fu_452_p1(8 - 1 downto 0);

    IFM_4_V_ce0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            IFM_4_V_ce0 <= ap_const_logic_1;
        else 
            IFM_4_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_4_V_d0 <= input_dma_I_TDATA(51 downto 26);

    IFM_4_V_we0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2, tmp_mid2_fu_334_p3, tmp_t_mid2_fu_354_p3)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (tmp_mid2_fu_334_p3 = ap_const_lv1_0) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_t_mid2_fu_354_p3 = ap_const_lv3_4))) then 
            IFM_4_V_we0 <= ap_const_logic_1;
        else 
            IFM_4_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_5_V_address0 <= tmp_46_cast_fu_452_p1(8 - 1 downto 0);

    IFM_5_V_ce0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            IFM_5_V_ce0 <= ap_const_logic_1;
        else 
            IFM_5_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_5_V_d0 <= input_dma_I_TDATA(51 downto 26);

    IFM_5_V_we0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2, tmp_mid2_fu_334_p3, tmp_t_mid2_fu_354_p3)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (tmp_mid2_fu_334_p3 = ap_const_lv1_0) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_t_mid2_fu_354_p3 = ap_const_lv3_5))) then 
            IFM_5_V_we0 <= ap_const_logic_1;
        else 
            IFM_5_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_6_V_address0 <= tmp_46_cast_fu_452_p1(8 - 1 downto 0);

    IFM_6_V_ce0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            IFM_6_V_ce0 <= ap_const_logic_1;
        else 
            IFM_6_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    IFM_6_V_d0 <= input_dma_I_TDATA(51 downto 26);

    IFM_6_V_we0_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2, tmp_mid2_fu_334_p3, tmp_t_mid2_fu_354_p3)
    begin
        if ((not((tmp_t_mid2_fu_354_p3 = ap_const_lv3_4)) and not((tmp_t_mid2_fu_354_p3 = ap_const_lv3_5)) and not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (tmp_mid2_fu_334_p3 = ap_const_lv1_0) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            IFM_6_V_we0 <= ap_const_logic_1;
        else 
            IFM_6_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_block_state2_assign_proc : process(input_dma_I_TVALID, exitcond_flatten5_fu_284_p2)
    begin
                ap_block_state2 <= ((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bound_fu_255_p0 <= bound_fu_255_p00(32 - 1 downto 0);
    bound_fu_255_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(custom_Tr),64));
    bound_fu_255_p1 <= bound_fu_255_p10(32 - 1 downto 0);
    bound_fu_255_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(custom_Tc),64));
    bound_fu_255_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bound_fu_255_p0) * unsigned(bound_fu_255_p1), 64));
    exitcond_flatten5_fu_284_p2 <= "1" when (indvar_flatten5_reg_192 = tmp_reg_501) else "0";
    exitcond_flatten_fu_301_p2 <= "1" when (indvar_flatten_reg_214 = bound_reg_496) else "0";
    grp_fu_482_p0 <= ap_const_lv9_D(5 - 1 downto 0);
    grp_fu_482_p1 <= 
        tmp_61_fu_395_p3 when (tmp_43_mid1_fu_362_p3(0) = '1') else 
        tmp_62_fu_403_p1;
    grp_fu_482_p2 <= m_mid2_fu_383_p3(9 - 1 downto 0);
    i_5_fu_295_p2 <= std_logic_vector(unsigned(ap_const_lv3_1) + unsigned(i_reg_203));
    i_mid2_fu_369_p3 <= 
        i_5_fu_295_p2 when (exitcond_flatten_fu_301_p2(0) = '1') else 
        i_reg_203;
    indvar_flatten_next5_fu_289_p2 <= std_logic_vector(unsigned(indvar_flatten5_reg_192) + unsigned(ap_const_lv66_1));
    indvar_flatten_next_fu_474_p3 <= 
        ap_const_lv64_1 when (exitcond_flatten_fu_301_p2(0) = '1') else 
        indvar_flatten_op_fu_468_p2;
    indvar_flatten_op_fu_468_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_214) + unsigned(ap_const_lv64_1));

    input_dma_I_TDATA_blk_n_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2)
    begin
        if (((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            input_dma_I_TDATA_blk_n <= input_dma_I_TVALID;
        else 
            input_dma_I_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    input_dma_I_TREADY_assign_proc : process(input_dma_I_TVALID, ap_CS_fsm_state2, exitcond_flatten5_fu_284_p2)
    begin
        if ((not(((exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (input_dma_I_TVALID = ap_const_logic_0))) and (exitcond_flatten5_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            input_dma_I_TREADY <= ap_const_logic_1;
        else 
            input_dma_I_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    j_4_fu_377_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(j_mid_fu_306_p3));
    j_mid2_fu_415_p3 <= 
        j_mid_fu_306_p3 when (tmp_43_mid1_fu_362_p3(0) = '1') else 
        j_4_fu_377_p2;
    j_mid_fu_306_p3 <= 
        ap_const_lv31_0 when (exitcond_flatten_fu_301_p2(0) = '1') else 
        j_reg_225;
    m_2_fu_462_p2 <= std_logic_vector(unsigned(m_mid2_fu_383_p3) + unsigned(ap_const_lv31_1));
    m_cast_fu_275_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(m_reg_236),32));
    m_mid2_fu_383_p3 <= 
        m_mid_fu_314_p3 when (tmp_43_mid1_fu_362_p3(0) = '1') else 
        ap_const_lv31_0;
    m_mid_fu_314_p3 <= 
        ap_const_lv31_0 when (exitcond_flatten_fu_301_p2(0) = '1') else 
        m_reg_236;
    tmp_40_fu_328_p2 <= "1" when (i_reg_203 = ap_const_lv3_3) else "0";
    tmp_43_mid1_fu_362_p3 <= 
        tmp_43_mid_reg_506 when (exitcond_flatten_fu_301_p2(0) = '1') else 
        tmp_s_fu_279_p2;
    tmp_43_mid_fu_269_p2 <= "1" when (signed(custom_Tc) > signed(ap_const_lv32_0)) else "0";
        tmp_46_cast_fu_452_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(grp_fu_482_p3),64));

    tmp_60_fu_391_p1 <= j_reg_225(9 - 1 downto 0);
    tmp_61_fu_395_p3 <= 
        ap_const_lv9_0 when (exitcond_flatten_fu_301_p2(0) = '1') else 
        tmp_60_fu_391_p1;
    tmp_62_fu_403_p1 <= j_4_fu_377_p2(9 - 1 downto 0);
    tmp_64_fu_427_p1 <= input_dma_I_TDATA(26 - 1 downto 0);
    tmp_fu_261_p3 <= (bound_fu_255_p2 & ap_const_lv2_0);
    tmp_mid1_fu_322_p2 <= "1" when (i_5_fu_295_p2 = ap_const_lv3_3) else "0";
    tmp_mid2_fu_334_p3 <= 
        tmp_mid1_fu_322_p2 when (exitcond_flatten_fu_301_p2(0) = '1') else 
        tmp_40_fu_328_p2;
    tmp_s_fu_279_p2 <= "1" when (signed(m_cast_fu_275_p1) < signed(custom_Tc)) else "0";
    tmp_t_fu_348_p2 <= (i_reg_203 xor ap_const_lv3_4);
    tmp_t_mid1_fu_342_p2 <= std_logic_vector(signed(ap_const_lv3_5) + signed(i_reg_203));
    tmp_t_mid2_fu_354_p3 <= 
        tmp_t_mid1_fu_342_p2 when (exitcond_flatten_fu_301_p2(0) = '1') else 
        tmp_t_fu_348_p2;
end behav;
