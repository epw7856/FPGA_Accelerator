// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _OFM_STORE_HH_
#define _OFM_STORE_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "top_mac_muladd_5ncud.h"

namespace ap_rtl {

struct OFM_STORE : public sc_module {
    // Port declarations 77
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<56> > output_dma_O_TDATA;
    sc_out< sc_logic > output_dma_O_TVALID;
    sc_in< sc_logic > output_dma_O_TREADY;
    sc_out< sc_logic > output_dma_O_TLAST;
    sc_in< sc_lv<32> > input_dma_B_TDATA;
    sc_in< sc_logic > input_dma_B_TVALID;
    sc_out< sc_logic > input_dma_B_TREADY;
    sc_in< sc_logic > input_dma_B_TLAST;
    sc_out< sc_lv<8> > OFM_0_V_address0;
    sc_out< sc_logic > OFM_0_V_ce0;
    sc_in< sc_lv<26> > OFM_0_V_q0;
    sc_out< sc_lv<8> > OFM_0_V_address1;
    sc_out< sc_logic > OFM_0_V_ce1;
    sc_out< sc_logic > OFM_0_V_we1;
    sc_out< sc_lv<26> > OFM_0_V_d1;
    sc_out< sc_lv<8> > OFM_1_V_address0;
    sc_out< sc_logic > OFM_1_V_ce0;
    sc_in< sc_lv<26> > OFM_1_V_q0;
    sc_out< sc_lv<8> > OFM_1_V_address1;
    sc_out< sc_logic > OFM_1_V_ce1;
    sc_out< sc_logic > OFM_1_V_we1;
    sc_out< sc_lv<26> > OFM_1_V_d1;
    sc_out< sc_lv<8> > OFM_2_V_address0;
    sc_out< sc_logic > OFM_2_V_ce0;
    sc_in< sc_lv<26> > OFM_2_V_q0;
    sc_out< sc_lv<8> > OFM_2_V_address1;
    sc_out< sc_logic > OFM_2_V_ce1;
    sc_out< sc_logic > OFM_2_V_we1;
    sc_out< sc_lv<26> > OFM_2_V_d1;
    sc_out< sc_lv<8> > OFM_3_V_address0;
    sc_out< sc_logic > OFM_3_V_ce0;
    sc_in< sc_lv<26> > OFM_3_V_q0;
    sc_out< sc_lv<8> > OFM_3_V_address1;
    sc_out< sc_logic > OFM_3_V_ce1;
    sc_out< sc_logic > OFM_3_V_we1;
    sc_out< sc_lv<26> > OFM_3_V_d1;
    sc_out< sc_lv<8> > OFM_4_V_address0;
    sc_out< sc_logic > OFM_4_V_ce0;
    sc_in< sc_lv<26> > OFM_4_V_q0;
    sc_out< sc_lv<8> > OFM_4_V_address1;
    sc_out< sc_logic > OFM_4_V_ce1;
    sc_out< sc_logic > OFM_4_V_we1;
    sc_out< sc_lv<26> > OFM_4_V_d1;
    sc_out< sc_lv<8> > OFM_5_V_address0;
    sc_out< sc_logic > OFM_5_V_ce0;
    sc_in< sc_lv<26> > OFM_5_V_q0;
    sc_out< sc_lv<8> > OFM_5_V_address1;
    sc_out< sc_logic > OFM_5_V_ce1;
    sc_out< sc_logic > OFM_5_V_we1;
    sc_out< sc_lv<26> > OFM_5_V_d1;
    sc_out< sc_lv<8> > OFM_6_V_address0;
    sc_out< sc_logic > OFM_6_V_ce0;
    sc_in< sc_lv<26> > OFM_6_V_q0;
    sc_out< sc_lv<8> > OFM_6_V_address1;
    sc_out< sc_logic > OFM_6_V_ce1;
    sc_out< sc_logic > OFM_6_V_we1;
    sc_out< sc_lv<26> > OFM_6_V_d1;
    sc_out< sc_lv<8> > OFM_7_V_address0;
    sc_out< sc_logic > OFM_7_V_ce0;
    sc_in< sc_lv<26> > OFM_7_V_q0;
    sc_out< sc_lv<8> > OFM_7_V_address1;
    sc_out< sc_logic > OFM_7_V_ce1;
    sc_out< sc_logic > OFM_7_V_we1;
    sc_out< sc_lv<26> > OFM_7_V_d1;
    sc_out< sc_lv<3> > BIAS_V_address0;
    sc_out< sc_logic > BIAS_V_ce0;
    sc_out< sc_logic > BIAS_V_we0;
    sc_out< sc_lv<26> > BIAS_V_d0;
    sc_in< sc_lv<26> > BIAS_V_q0;
    sc_in< sc_lv<32> > custom_Tr;
    sc_in< sc_lv<32> > custom_Tc;


    // Module declarations
    OFM_STORE(sc_module_name name);
    SC_HAS_PROCESS(OFM_STORE);

    ~OFM_STORE();

    sc_trace_file* mVcdFile;

    top_mac_muladd_5ncud<1,1,5,9,9,9>* top_mac_muladd_5ncud_U230;
    top_mac_muladd_5ncud<1,1,5,9,9,9>* top_mac_muladd_5ncud_U231;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > output_dma_O_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<1> > exitcond_flatten1_reg_1181;
    sc_signal< sc_logic > input_dma_B_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > exitcond1_fu_467_p2;
    sc_signal< sc_lv<66> > indvar_flatten1_reg_379;
    sc_signal< sc_lv<3> > i1_reg_390;
    sc_signal< sc_lv<64> > indvar_flatten_reg_401;
    sc_signal< sc_lv<31> > j_reg_412;
    sc_signal< sc_lv<31> > k_reg_423;
    sc_signal< sc_lv<4> > i_1_fu_473_p2;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<32> > tmp_fu_493_p2;
    sc_signal< sc_lv<32> > tmp_reg_1149;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > tmp_s_fu_498_p2;
    sc_signal< sc_lv<32> > tmp_s_reg_1155;
    sc_signal< sc_lv<64> > bound_fu_509_p2;
    sc_signal< sc_lv<64> > bound_reg_1160;
    sc_signal< sc_lv<66> > tmp_3_fu_515_p3;
    sc_signal< sc_lv<66> > tmp_3_reg_1166;
    sc_signal< sc_lv<1> > notrhs_mid_fu_523_p2;
    sc_signal< sc_lv<1> > notrhs_mid_reg_1171;
    sc_signal< sc_lv<1> > tmp_11_mid_fu_529_p2;
    sc_signal< sc_lv<1> > tmp_11_mid_reg_1176;
    sc_signal< sc_lv<1> > exitcond_flatten1_fu_552_p2;
    sc_signal< bool > ap_block_state4_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state5_pp1_stage0_iter1;
    sc_signal< sc_logic > ap_sig_ioackin_output_dma_O_TREADY;
    sc_signal< bool > ap_block_state5_io;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<66> > indvar_flatten_next1_fu_557_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<3> > tmp_4_mid2_v_fu_590_p3;
    sc_signal< sc_lv<3> > tmp_4_mid2_v_reg_1190;
    sc_signal< sc_lv<1> > sel_tmp_mid2_fu_635_p3;
    sc_signal< sc_lv<1> > sel_tmp_mid2_reg_1195;
    sc_signal< sc_lv<1> > sel_tmp6_mid2_fu_649_p3;
    sc_signal< sc_lv<1> > sel_tmp6_mid2_reg_1201;
    sc_signal< sc_lv<1> > sel_tmp8_mid2_fu_669_p3;
    sc_signal< sc_lv<1> > sel_tmp8_mid2_reg_1207;
    sc_signal< sc_lv<31> > j_mid2_fu_750_p3;
    sc_signal< sc_lv<1> > tmp_last_fu_769_p2;
    sc_signal< sc_lv<1> > tmp_last_reg_1218;
    sc_signal< sc_lv<31> > k_2_fu_790_p2;
    sc_signal< sc_lv<64> > indvar_flatten_next_fu_802_p3;
    sc_signal< sc_lv<64> > indvar_flatten_next2_fu_1055_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<31> > tmp_7_mid2_v_fu_1075_p3;
    sc_signal< sc_lv<1> > exitcond_flatten2_fu_1050_p2;
    sc_signal< sc_lv<31> > k_1_fu_1102_p2;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state4;
    sc_signal< sc_lv<4> > i_reg_368;
    sc_signal< sc_lv<3> > ap_phi_mux_i1_phi_fu_394_p4;
    sc_signal< sc_lv<64> > indvar_flatten2_reg_434;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<31> > j2_reg_445;
    sc_signal< sc_lv<31> > k3_reg_456;
    sc_signal< sc_lv<64> > tmp_2_fu_488_p1;
    sc_signal< sc_lv<64> > tmp_14_cast_fu_779_p1;
    sc_signal< sc_lv<64> > tmp_4_mid2_fu_598_p1;
    sc_signal< sc_lv<64> > tmp_21_cast_fu_1091_p1;
    sc_signal< bool > ap_block_pp1_stage0_01001;
    sc_signal< sc_logic > ap_reg_ioackin_output_dma_O_TREADY;
    sc_signal< sc_lv<32> > bound_fu_509_p0;
    sc_signal< sc_lv<32> > bound_fu_509_p1;
    sc_signal< sc_lv<32> > tmp_4_fu_534_p1;
    sc_signal< sc_lv<32> > k_cast_fu_543_p1;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_569_p2;
    sc_signal< sc_lv<3> > i_2_fu_563_p2;
    sc_signal< sc_lv<1> > notlhs_mid1_fu_603_p2;
    sc_signal< sc_lv<1> > notlhs_fu_609_p2;
    sc_signal< sc_lv<1> > sel_tmp_mid1_fu_623_p2;
    sc_signal< sc_lv<1> > sel_tmp_fu_629_p2;
    sc_signal< sc_lv<1> > sel_tmp3_fu_643_p2;
    sc_signal< sc_lv<1> > sel_tmp8_mid1_fu_657_p2;
    sc_signal< sc_lv<1> > sel_tmp4_fu_663_p2;
    sc_signal< sc_lv<1> > notrhs_fu_538_p2;
    sc_signal< sc_lv<1> > tmp_6_fu_547_p2;
    sc_signal< sc_lv<31> > j_mid_fu_574_p3;
    sc_signal< sc_lv<1> > tmp_11_mid1_fu_684_p3;
    sc_signal< sc_lv<31> > k_mid_fu_582_p3;
    sc_signal< sc_lv<31> > j_2_fu_691_p2;
    sc_signal< sc_lv<9> > tmp_11_fu_709_p1;
    sc_signal< sc_lv<9> > tmp_13_fu_713_p3;
    sc_signal< sc_lv<9> > tmp_22_fu_721_p1;
    sc_signal< sc_lv<32> > p_mid1_fu_705_p1;
    sc_signal< sc_lv<1> > notrhs_mid3_fu_677_p3;
    sc_signal< sc_lv<1> > notrhs_mid1_fu_733_p2;
    sc_signal< sc_lv<31> > k_mid2_fu_697_p3;
    sc_signal< sc_lv<32> > k_cast_mid2_cast_fu_746_p1;
    sc_signal< sc_lv<1> > notlhs_mid2_fu_615_p3;
    sc_signal< sc_lv<1> > tmp_5_fu_758_p2;
    sc_signal< sc_lv<1> > tmp6_fu_763_p2;
    sc_signal< sc_lv<1> > notrhs_mid2_fu_738_p3;
    sc_signal< sc_lv<9> > grp_fu_1108_p3;
    sc_signal< sc_lv<64> > indvar_flatten_op_fu_796_p2;
    sc_signal< sc_lv<26> > sel_tmp5_fu_810_p3;
    sc_signal< sc_lv<26> > sel_tmp7_fu_817_p3;
    sc_signal< sc_lv<26> > p_Val2_s_fu_824_p3;
    sc_signal< sc_lv<27> > tmp_14_fu_831_p1;
    sc_signal< sc_lv<27> > tmp_15_fu_835_p1;
    sc_signal< sc_lv<27> > p_Val2_2_fu_839_p2;
    sc_signal< sc_lv<26> > p_Val2_3_fu_853_p2;
    sc_signal< sc_lv<1> > newsignbit_fu_859_p3;
    sc_signal< sc_lv<1> > isneg_fu_845_p3;
    sc_signal< sc_lv<1> > tmp_16_fu_867_p2;
    sc_signal< sc_lv<1> > isneg_not_fu_885_p2;
    sc_signal< sc_lv<1> > brmerge_i_i1_fu_879_p2;
    sc_signal< sc_lv<1> > underflow_fu_873_p2;
    sc_signal< sc_lv<1> > brmerge_fu_891_p2;
    sc_signal< sc_lv<26> > p_Val2_3_mux_fu_897_p3;
    sc_signal< sc_lv<26> > p_Val2_3_45_fu_905_p3;
    sc_signal< sc_lv<26> > sel_tmp1_fu_921_p3;
    sc_signal< sc_lv<26> > sel_tmp2_fu_928_p3;
    sc_signal< sc_lv<26> > p_Val2_4_fu_935_p3;
    sc_signal< sc_lv<27> > tmp_17_fu_942_p1;
    sc_signal< sc_lv<27> > p_Val2_5_fu_946_p2;
    sc_signal< sc_lv<26> > p_Val2_6_fu_960_p2;
    sc_signal< sc_lv<1> > newsignbit_1_fu_966_p3;
    sc_signal< sc_lv<1> > isneg_1_fu_952_p3;
    sc_signal< sc_lv<1> > tmp_18_fu_974_p2;
    sc_signal< sc_lv<1> > isneg_1_not_fu_992_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_fu_986_p2;
    sc_signal< sc_lv<1> > underflow_1_fu_980_p2;
    sc_signal< sc_lv<1> > brmerge5_fu_998_p2;
    sc_signal< sc_lv<26> > p_Val2_6_mux_fu_1004_p3;
    sc_signal< sc_lv<26> > p_Val2_6_46_fu_1012_p3;
    sc_signal< sc_lv<26> > tmp_data_data2_V_fu_1020_p3;
    sc_signal< sc_lv<26> > tmp_data_data1_V_fu_913_p3;
    sc_signal< sc_lv<52> > tmp_data_fu_1028_p3;
    sc_signal< sc_lv<32> > k3_cast_fu_1041_p1;
    sc_signal< sc_lv<1> > tmp_9_fu_1045_p2;
    sc_signal< sc_lv<31> > j_1_fu_1061_p2;
    sc_signal< sc_lv<31> > k3_mid2_fu_1067_p3;
    sc_signal< sc_lv<9> > grp_fu_1117_p3;
    sc_signal< sc_lv<5> > grp_fu_1108_p0;
    sc_signal< sc_lv<9> > grp_fu_1108_p1;
    sc_signal< sc_lv<9> > grp_fu_1108_p2;
    sc_signal< sc_lv<5> > grp_fu_1117_p0;
    sc_signal< sc_lv<9> > grp_fu_1117_p1;
    sc_signal< sc_lv<9> > grp_fu_1117_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< sc_lv<64> > bound_fu_509_p00;
    sc_signal< sc_lv<64> > bound_fu_509_p10;
    sc_signal< bool > ap_condition_793;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_pp1_stage0;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<7> ap_ST_fsm_state8;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<66> ap_const_lv66_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<26> ap_const_lv26_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<66> ap_const_lv66_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<26> ap_const_lv26_1FFFFFF;
    static const sc_lv<26> ap_const_lv26_2000000;
    static const sc_lv<9> ap_const_lv9_D;
    static const sc_lv<32> ap_const_lv32_6;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_BIAS_V_address0();
    void thread_BIAS_V_ce0();
    void thread_BIAS_V_d0();
    void thread_BIAS_V_we0();
    void thread_OFM_0_V_address0();
    void thread_OFM_0_V_address1();
    void thread_OFM_0_V_ce0();
    void thread_OFM_0_V_ce1();
    void thread_OFM_0_V_d1();
    void thread_OFM_0_V_we1();
    void thread_OFM_1_V_address0();
    void thread_OFM_1_V_address1();
    void thread_OFM_1_V_ce0();
    void thread_OFM_1_V_ce1();
    void thread_OFM_1_V_d1();
    void thread_OFM_1_V_we1();
    void thread_OFM_2_V_address0();
    void thread_OFM_2_V_address1();
    void thread_OFM_2_V_ce0();
    void thread_OFM_2_V_ce1();
    void thread_OFM_2_V_d1();
    void thread_OFM_2_V_we1();
    void thread_OFM_3_V_address0();
    void thread_OFM_3_V_address1();
    void thread_OFM_3_V_ce0();
    void thread_OFM_3_V_ce1();
    void thread_OFM_3_V_d1();
    void thread_OFM_3_V_we1();
    void thread_OFM_4_V_address0();
    void thread_OFM_4_V_address1();
    void thread_OFM_4_V_ce0();
    void thread_OFM_4_V_ce1();
    void thread_OFM_4_V_d1();
    void thread_OFM_4_V_we1();
    void thread_OFM_5_V_address0();
    void thread_OFM_5_V_address1();
    void thread_OFM_5_V_ce0();
    void thread_OFM_5_V_ce1();
    void thread_OFM_5_V_d1();
    void thread_OFM_5_V_we1();
    void thread_OFM_6_V_address0();
    void thread_OFM_6_V_address1();
    void thread_OFM_6_V_ce0();
    void thread_OFM_6_V_ce1();
    void thread_OFM_6_V_d1();
    void thread_OFM_6_V_we1();
    void thread_OFM_7_V_address0();
    void thread_OFM_7_V_address1();
    void thread_OFM_7_V_ce0();
    void thread_OFM_7_V_ce1();
    void thread_OFM_7_V_d1();
    void thread_OFM_7_V_we1();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_01001();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state2();
    void thread_ap_block_state4_pp1_stage0_iter0();
    void thread_ap_block_state5_io();
    void thread_ap_block_state5_pp1_stage0_iter1();
    void thread_ap_condition_793();
    void thread_ap_condition_pp1_exit_iter0_state4();
    void thread_ap_done();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_i1_phi_fu_394_p4();
    void thread_ap_ready();
    void thread_ap_sig_ioackin_output_dma_O_TREADY();
    void thread_bound_fu_509_p0();
    void thread_bound_fu_509_p00();
    void thread_bound_fu_509_p1();
    void thread_bound_fu_509_p10();
    void thread_bound_fu_509_p2();
    void thread_brmerge5_fu_998_p2();
    void thread_brmerge_fu_891_p2();
    void thread_brmerge_i_i1_fu_879_p2();
    void thread_brmerge_i_i_fu_986_p2();
    void thread_exitcond1_fu_467_p2();
    void thread_exitcond_flatten1_fu_552_p2();
    void thread_exitcond_flatten2_fu_1050_p2();
    void thread_exitcond_flatten_fu_569_p2();
    void thread_grp_fu_1108_p0();
    void thread_grp_fu_1108_p1();
    void thread_grp_fu_1108_p2();
    void thread_grp_fu_1117_p0();
    void thread_grp_fu_1117_p1();
    void thread_grp_fu_1117_p2();
    void thread_i_1_fu_473_p2();
    void thread_i_2_fu_563_p2();
    void thread_indvar_flatten_next1_fu_557_p2();
    void thread_indvar_flatten_next2_fu_1055_p2();
    void thread_indvar_flatten_next_fu_802_p3();
    void thread_indvar_flatten_op_fu_796_p2();
    void thread_input_dma_B_TDATA_blk_n();
    void thread_input_dma_B_TREADY();
    void thread_isneg_1_fu_952_p3();
    void thread_isneg_1_not_fu_992_p2();
    void thread_isneg_fu_845_p3();
    void thread_isneg_not_fu_885_p2();
    void thread_j_1_fu_1061_p2();
    void thread_j_2_fu_691_p2();
    void thread_j_mid2_fu_750_p3();
    void thread_j_mid_fu_574_p3();
    void thread_k3_cast_fu_1041_p1();
    void thread_k3_mid2_fu_1067_p3();
    void thread_k_1_fu_1102_p2();
    void thread_k_2_fu_790_p2();
    void thread_k_cast_fu_543_p1();
    void thread_k_cast_mid2_cast_fu_746_p1();
    void thread_k_mid2_fu_697_p3();
    void thread_k_mid_fu_582_p3();
    void thread_newsignbit_1_fu_966_p3();
    void thread_newsignbit_fu_859_p3();
    void thread_notlhs_fu_609_p2();
    void thread_notlhs_mid1_fu_603_p2();
    void thread_notlhs_mid2_fu_615_p3();
    void thread_notrhs_fu_538_p2();
    void thread_notrhs_mid1_fu_733_p2();
    void thread_notrhs_mid2_fu_738_p3();
    void thread_notrhs_mid3_fu_677_p3();
    void thread_notrhs_mid_fu_523_p2();
    void thread_output_dma_O_TDATA();
    void thread_output_dma_O_TDATA_blk_n();
    void thread_output_dma_O_TLAST();
    void thread_output_dma_O_TVALID();
    void thread_p_Val2_2_fu_839_p2();
    void thread_p_Val2_3_45_fu_905_p3();
    void thread_p_Val2_3_fu_853_p2();
    void thread_p_Val2_3_mux_fu_897_p3();
    void thread_p_Val2_4_fu_935_p3();
    void thread_p_Val2_5_fu_946_p2();
    void thread_p_Val2_6_46_fu_1012_p3();
    void thread_p_Val2_6_fu_960_p2();
    void thread_p_Val2_6_mux_fu_1004_p3();
    void thread_p_Val2_s_fu_824_p3();
    void thread_p_mid1_fu_705_p1();
    void thread_sel_tmp1_fu_921_p3();
    void thread_sel_tmp2_fu_928_p3();
    void thread_sel_tmp3_fu_643_p2();
    void thread_sel_tmp4_fu_663_p2();
    void thread_sel_tmp5_fu_810_p3();
    void thread_sel_tmp6_mid2_fu_649_p3();
    void thread_sel_tmp7_fu_817_p3();
    void thread_sel_tmp8_mid1_fu_657_p2();
    void thread_sel_tmp8_mid2_fu_669_p3();
    void thread_sel_tmp_fu_629_p2();
    void thread_sel_tmp_mid1_fu_623_p2();
    void thread_sel_tmp_mid2_fu_635_p3();
    void thread_tmp6_fu_763_p2();
    void thread_tmp_11_fu_709_p1();
    void thread_tmp_11_mid1_fu_684_p3();
    void thread_tmp_11_mid_fu_529_p2();
    void thread_tmp_13_fu_713_p3();
    void thread_tmp_14_cast_fu_779_p1();
    void thread_tmp_14_fu_831_p1();
    void thread_tmp_15_fu_835_p1();
    void thread_tmp_16_fu_867_p2();
    void thread_tmp_17_fu_942_p1();
    void thread_tmp_18_fu_974_p2();
    void thread_tmp_21_cast_fu_1091_p1();
    void thread_tmp_22_fu_721_p1();
    void thread_tmp_2_fu_488_p1();
    void thread_tmp_3_fu_515_p3();
    void thread_tmp_4_fu_534_p1();
    void thread_tmp_4_mid2_fu_598_p1();
    void thread_tmp_4_mid2_v_fu_590_p3();
    void thread_tmp_5_fu_758_p2();
    void thread_tmp_6_fu_547_p2();
    void thread_tmp_7_mid2_v_fu_1075_p3();
    void thread_tmp_9_fu_1045_p2();
    void thread_tmp_data_data1_V_fu_913_p3();
    void thread_tmp_data_data2_V_fu_1020_p3();
    void thread_tmp_data_fu_1028_p3();
    void thread_tmp_fu_493_p2();
    void thread_tmp_last_fu_769_p2();
    void thread_tmp_s_fu_498_p2();
    void thread_underflow_1_fu_980_p2();
    void thread_underflow_fu_873_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif