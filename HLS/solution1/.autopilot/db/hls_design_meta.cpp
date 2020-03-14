#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("input_dma_W_TDATA", 56, hls_in, 0, "axis", "in_data", 1),
	Port_Property("input_dma_W_TVALID", 1, hls_in, 1, "axis", "in_vld", 1),
	Port_Property("input_dma_W_TREADY", 1, hls_out, 1, "axis", "in_acc", 1),
	Port_Property("input_dma_W_TLAST", 1, hls_in, 1, "axis", "in_data", 1),
	Port_Property("input_dma_I_TDATA", 56, hls_in, 2, "axis", "in_data", 1),
	Port_Property("input_dma_I_TVALID", 1, hls_in, 3, "axis", "in_vld", 1),
	Port_Property("input_dma_I_TREADY", 1, hls_out, 3, "axis", "in_acc", 1),
	Port_Property("input_dma_I_TLAST", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("input_dma_B_TDATA", 32, hls_in, 4, "axis", "in_data", 1),
	Port_Property("input_dma_B_TVALID", 1, hls_in, 5, "axis", "in_vld", 1),
	Port_Property("input_dma_B_TREADY", 1, hls_out, 5, "axis", "in_acc", 1),
	Port_Property("input_dma_B_TLAST", 1, hls_in, 5, "axis", "in_data", 1),
	Port_Property("output_dma_O_TDATA", 56, hls_out, 6, "axis", "out_data", 1),
	Port_Property("output_dma_O_TVALID", 1, hls_out, 7, "axis", "out_vld", 1),
	Port_Property("output_dma_O_TREADY", 1, hls_in, 7, "axis", "out_acc", 1),
	Port_Property("output_dma_O_TLAST", 1, hls_out, 7, "axis", "out_data", 1),
	Port_Property("s_axi_CRTL_BUS_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_AWADDR", 7, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_ARADDR", 7, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTL_BUS_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "top";