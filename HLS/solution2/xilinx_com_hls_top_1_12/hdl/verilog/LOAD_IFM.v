// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module LOAD_IFM (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_dma_I_TDATA,
        input_dma_I_TVALID,
        input_dma_I_TREADY,
        input_dma_I_TLAST,
        IFM_0_V_address0,
        IFM_0_V_ce0,
        IFM_0_V_we0,
        IFM_0_V_d0,
        IFM_1_V_address0,
        IFM_1_V_ce0,
        IFM_1_V_we0,
        IFM_1_V_d0,
        IFM_2_V_address0,
        IFM_2_V_ce0,
        IFM_2_V_we0,
        IFM_2_V_d0,
        IFM_3_V_address0,
        IFM_3_V_ce0,
        IFM_3_V_we0,
        IFM_3_V_d0,
        IFM_4_V_address0,
        IFM_4_V_ce0,
        IFM_4_V_we0,
        IFM_4_V_d0,
        IFM_5_V_address0,
        IFM_5_V_ce0,
        IFM_5_V_we0,
        IFM_5_V_d0,
        IFM_6_V_address0,
        IFM_6_V_ce0,
        IFM_6_V_we0,
        IFM_6_V_d0,
        custom_Tr,
        custom_Tc
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] input_dma_I_TDATA;
input   input_dma_I_TVALID;
output   input_dma_I_TREADY;
input   input_dma_I_TLAST;
output  [7:0] IFM_0_V_address0;
output   IFM_0_V_ce0;
output   IFM_0_V_we0;
output  [31:0] IFM_0_V_d0;
output  [7:0] IFM_1_V_address0;
output   IFM_1_V_ce0;
output   IFM_1_V_we0;
output  [31:0] IFM_1_V_d0;
output  [7:0] IFM_2_V_address0;
output   IFM_2_V_ce0;
output   IFM_2_V_we0;
output  [31:0] IFM_2_V_d0;
output  [7:0] IFM_3_V_address0;
output   IFM_3_V_ce0;
output   IFM_3_V_we0;
output  [31:0] IFM_3_V_d0;
output  [7:0] IFM_4_V_address0;
output   IFM_4_V_ce0;
output   IFM_4_V_we0;
output  [31:0] IFM_4_V_d0;
output  [7:0] IFM_5_V_address0;
output   IFM_5_V_ce0;
output   IFM_5_V_we0;
output  [31:0] IFM_5_V_d0;
output  [7:0] IFM_6_V_address0;
output   IFM_6_V_ce0;
output   IFM_6_V_we0;
output  [31:0] IFM_6_V_d0;
input  [31:0] custom_Tr;
input  [31:0] custom_Tc;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_dma_I_TREADY;
reg IFM_0_V_ce0;
reg IFM_0_V_we0;
reg IFM_1_V_ce0;
reg IFM_1_V_we0;
reg IFM_2_V_ce0;
reg IFM_2_V_we0;
reg IFM_3_V_ce0;
reg IFM_3_V_we0;
reg IFM_4_V_ce0;
reg IFM_4_V_we0;
reg IFM_5_V_ce0;
reg IFM_5_V_we0;
reg IFM_6_V_ce0;
reg IFM_6_V_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    input_dma_I_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond_flatten5_fu_287_p2;
wire   [63:0] bound_fu_258_p2;
reg   [63:0] bound_reg_499;
wire   [65:0] tmp_fu_264_p3;
reg   [65:0] tmp_reg_504;
wire   [0:0] tmp_26_mid_fu_272_p2;
reg   [0:0] tmp_26_mid_reg_509;
wire   [65:0] indvar_flatten_next5_fu_292_p2;
reg    ap_block_state2;
wire   [2:0] i_mid2_fu_372_p3;
wire   [30:0] j_mid2_fu_418_p3;
wire   [30:0] m_2_fu_465_p2;
wire   [63:0] indvar_flatten_next_fu_477_p3;
reg   [65:0] indvar_flatten5_reg_195;
reg   [2:0] i_reg_206;
reg   [63:0] indvar_flatten_reg_217;
reg   [30:0] j_reg_228;
reg   [30:0] m_reg_239;
wire  signed [63:0] tmp_27_cast_fu_455_p1;
wire   [31:0] tmp_42_fu_430_p1;
wire   [0:0] tmp_mid2_fu_337_p3;
wire   [2:0] tmp_t_mid2_fu_357_p3;
wire   [31:0] bound_fu_258_p0;
wire   [31:0] bound_fu_258_p1;
wire   [31:0] m_cast_fu_278_p1;
wire   [0:0] exitcond_flatten_fu_304_p2;
wire   [2:0] i_5_fu_298_p2;
wire   [0:0] tmp_mid1_fu_325_p2;
wire   [0:0] tmp_22_fu_331_p2;
wire   [2:0] tmp_t_mid1_fu_345_p2;
wire   [2:0] tmp_t_fu_351_p2;
wire   [0:0] tmp_s_fu_282_p2;
wire   [30:0] j_mid_fu_309_p3;
wire   [0:0] tmp_26_mid1_fu_365_p3;
wire   [30:0] m_mid_fu_317_p3;
wire   [8:0] tmp_38_fu_394_p1;
wire   [30:0] j_4_fu_380_p2;
wire   [8:0] tmp_39_fu_398_p3;
wire   [8:0] tmp_40_fu_406_p1;
wire   [30:0] m_mid2_fu_386_p3;
wire  signed [8:0] grp_fu_485_p3;
wire   [63:0] indvar_flatten_op_fu_471_p2;
wire   [4:0] grp_fu_485_p0;
wire  signed [8:0] grp_fu_485_p1;
wire   [8:0] grp_fu_485_p2;
wire    ap_CS_fsm_state3;
reg   [2:0] ap_NS_fsm;
wire   [63:0] bound_fu_258_p00;
wire   [63:0] bound_fu_258_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

top_mac_muladd_5ncud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 9 ),
    .dout_WIDTH( 9 ))
top_mac_muladd_5ncud_U62(
    .din0(grp_fu_485_p0),
    .din1(grp_fu_485_p1),
    .din2(grp_fu_485_p2),
    .dout(grp_fu_485_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_206 <= i_mid2_fu_372_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_206 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten5_reg_195 <= indvar_flatten_next5_fu_292_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten5_reg_195 <= 66'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten_reg_217 <= indvar_flatten_next_fu_477_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_217 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_228 <= j_mid2_fu_418_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_reg_228 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        m_reg_239 <= m_2_fu_465_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        m_reg_239 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bound_reg_499 <= bound_fu_258_p2;
        tmp_26_mid_reg_509 <= tmp_26_mid_fu_272_p2;
        tmp_reg_504[65 : 2] <= tmp_fu_264_p3[65 : 2];
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        IFM_0_V_ce0 = 1'b1;
    end else begin
        IFM_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (i_mid2_fu_372_p3 == 3'd0))) begin
        IFM_0_V_we0 = 1'b1;
    end else begin
        IFM_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        IFM_1_V_ce0 = 1'b1;
    end else begin
        IFM_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (i_mid2_fu_372_p3 == 3'd1))) begin
        IFM_1_V_we0 = 1'b1;
    end else begin
        IFM_1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        IFM_2_V_ce0 = 1'b1;
    end else begin
        IFM_2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (i_mid2_fu_372_p3 == 3'd2))) begin
        IFM_2_V_we0 = 1'b1;
    end else begin
        IFM_2_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        IFM_3_V_ce0 = 1'b1;
    end else begin
        IFM_3_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(i_mid2_fu_372_p3 == 3'd0) & ~(i_mid2_fu_372_p3 == 3'd1) & ~(i_mid2_fu_372_p3 == 3'd2) & ~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        IFM_3_V_we0 = 1'b1;
    end else begin
        IFM_3_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        IFM_4_V_ce0 = 1'b1;
    end else begin
        IFM_4_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (tmp_mid2_fu_337_p3 == 1'd0) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (tmp_t_mid2_fu_357_p3 == 3'd4))) begin
        IFM_4_V_we0 = 1'b1;
    end else begin
        IFM_4_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        IFM_5_V_ce0 = 1'b1;
    end else begin
        IFM_5_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (tmp_mid2_fu_337_p3 == 1'd0) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (tmp_t_mid2_fu_357_p3 == 3'd5))) begin
        IFM_5_V_we0 = 1'b1;
    end else begin
        IFM_5_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        IFM_6_V_ce0 = 1'b1;
    end else begin
        IFM_6_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(tmp_t_mid2_fu_357_p3 == 3'd4) & ~(tmp_t_mid2_fu_357_p3 == 3'd5) & ~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (tmp_mid2_fu_337_p3 == 1'd0) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        IFM_6_V_we0 = 1'b1;
    end else begin
        IFM_6_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        input_dma_I_TDATA_blk_n = input_dma_I_TVALID;
    end else begin
        input_dma_I_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        input_dma_I_TREADY = 1'b1;
    end else begin
        input_dma_I_TREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (exitcond_flatten5_fu_287_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0)) & (exitcond_flatten5_fu_287_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign IFM_0_V_address0 = tmp_27_cast_fu_455_p1;

assign IFM_0_V_d0 = tmp_42_fu_430_p1;

assign IFM_1_V_address0 = tmp_27_cast_fu_455_p1;

assign IFM_1_V_d0 = tmp_42_fu_430_p1;

assign IFM_2_V_address0 = tmp_27_cast_fu_455_p1;

assign IFM_2_V_d0 = tmp_42_fu_430_p1;

assign IFM_3_V_address0 = tmp_27_cast_fu_455_p1;

assign IFM_3_V_d0 = tmp_42_fu_430_p1;

assign IFM_4_V_address0 = tmp_27_cast_fu_455_p1;

assign IFM_4_V_d0 = {{input_dma_I_TDATA[63:32]}};

assign IFM_5_V_address0 = tmp_27_cast_fu_455_p1;

assign IFM_5_V_d0 = {{input_dma_I_TDATA[63:32]}};

assign IFM_6_V_address0 = tmp_27_cast_fu_455_p1;

assign IFM_6_V_d0 = {{input_dma_I_TDATA[63:32]}};

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state2 = ((exitcond_flatten5_fu_287_p2 == 1'd0) & (input_dma_I_TVALID == 1'b0));
end

assign bound_fu_258_p0 = bound_fu_258_p00;

assign bound_fu_258_p00 = custom_Tr;

assign bound_fu_258_p1 = bound_fu_258_p10;

assign bound_fu_258_p10 = custom_Tc;

assign bound_fu_258_p2 = (bound_fu_258_p0 * bound_fu_258_p1);

assign exitcond_flatten5_fu_287_p2 = ((indvar_flatten5_reg_195 == tmp_reg_504) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_304_p2 = ((indvar_flatten_reg_217 == bound_reg_499) ? 1'b1 : 1'b0);

assign grp_fu_485_p0 = 9'd13;

assign grp_fu_485_p1 = ((tmp_26_mid1_fu_365_p3[0:0] === 1'b1) ? tmp_39_fu_398_p3 : tmp_40_fu_406_p1);

assign grp_fu_485_p2 = m_mid2_fu_386_p3[8:0];

assign i_5_fu_298_p2 = (3'd1 + i_reg_206);

assign i_mid2_fu_372_p3 = ((exitcond_flatten_fu_304_p2[0:0] === 1'b1) ? i_5_fu_298_p2 : i_reg_206);

assign indvar_flatten_next5_fu_292_p2 = (indvar_flatten5_reg_195 + 66'd1);

assign indvar_flatten_next_fu_477_p3 = ((exitcond_flatten_fu_304_p2[0:0] === 1'b1) ? 64'd1 : indvar_flatten_op_fu_471_p2);

assign indvar_flatten_op_fu_471_p2 = (indvar_flatten_reg_217 + 64'd1);

assign j_4_fu_380_p2 = (31'd1 + j_mid_fu_309_p3);

assign j_mid2_fu_418_p3 = ((tmp_26_mid1_fu_365_p3[0:0] === 1'b1) ? j_mid_fu_309_p3 : j_4_fu_380_p2);

assign j_mid_fu_309_p3 = ((exitcond_flatten_fu_304_p2[0:0] === 1'b1) ? 31'd0 : j_reg_228);

assign m_2_fu_465_p2 = (m_mid2_fu_386_p3 + 31'd1);

assign m_cast_fu_278_p1 = m_reg_239;

assign m_mid2_fu_386_p3 = ((tmp_26_mid1_fu_365_p3[0:0] === 1'b1) ? m_mid_fu_317_p3 : 31'd0);

assign m_mid_fu_317_p3 = ((exitcond_flatten_fu_304_p2[0:0] === 1'b1) ? 31'd0 : m_reg_239);

assign tmp_22_fu_331_p2 = ((i_reg_206 == 3'd3) ? 1'b1 : 1'b0);

assign tmp_26_mid1_fu_365_p3 = ((exitcond_flatten_fu_304_p2[0:0] === 1'b1) ? tmp_26_mid_reg_509 : tmp_s_fu_282_p2);

assign tmp_26_mid_fu_272_p2 = (($signed(custom_Tc) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign tmp_27_cast_fu_455_p1 = grp_fu_485_p3;

assign tmp_38_fu_394_p1 = j_reg_228[8:0];

assign tmp_39_fu_398_p3 = ((exitcond_flatten_fu_304_p2[0:0] === 1'b1) ? 9'd0 : tmp_38_fu_394_p1);

assign tmp_40_fu_406_p1 = j_4_fu_380_p2[8:0];

assign tmp_42_fu_430_p1 = input_dma_I_TDATA[31:0];

assign tmp_fu_264_p3 = {{bound_fu_258_p2}, {2'd0}};

assign tmp_mid1_fu_325_p2 = ((i_5_fu_298_p2 == 3'd3) ? 1'b1 : 1'b0);

assign tmp_mid2_fu_337_p3 = ((exitcond_flatten_fu_304_p2[0:0] === 1'b1) ? tmp_mid1_fu_325_p2 : tmp_22_fu_331_p2);

assign tmp_s_fu_282_p2 = (($signed(m_cast_fu_278_p1) < $signed(custom_Tc)) ? 1'b1 : 1'b0);

assign tmp_t_fu_351_p2 = (i_reg_206 ^ 3'd4);

assign tmp_t_mid1_fu_345_p2 = ($signed(3'd5) + $signed(i_reg_206));

assign tmp_t_mid2_fu_357_p3 = ((exitcond_flatten_fu_304_p2[0:0] === 1'b1) ? tmp_t_mid1_fu_345_p2 : tmp_t_fu_351_p2);

always @ (posedge ap_clk) begin
    tmp_reg_504[1:0] <= 2'b00;
end

endmodule //LOAD_IFM
