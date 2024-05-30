// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed May 15 14:51:26 2024
// Host        : m210-21 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top hdmi_out_auto_pc_0 -prefix
//               hdmi_out_auto_pc_0_ hdmi_out_auto_pc_0_sim_netlist.v
// Design      : hdmi_out_auto_pc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hdmi_out_auto_pc_0_axi_data_fifo_v2_1_25_axic_fifo
   (empty,
    SR,
    din,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rlast,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    aresetn_0,
    E,
    m_axi_arvalid,
    aclk,
    rd_en,
    s_axi_rready,
    m_axi_rvalid,
    m_axi_rlast,
    command_ongoing_reg_0,
    S_AXI_AREADY_I_reg_0,
    s_axi_arvalid,
    aresetn,
    command_ongoing,
    command_ongoing_reg_1,
    m_axi_arready,
    cmd_push_block,
    need_to_split_q,
    Q,
    split_ongoing_reg,
    access_is_incr_q);
  output empty;
  output [0:0]SR;
  output [0:0]din;
  output m_axi_rready;
  output s_axi_rvalid;
  output s_axi_rlast;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output aresetn_0;
  output [0:0]E;
  output m_axi_arvalid;
  input aclk;
  input rd_en;
  input s_axi_rready;
  input m_axi_rvalid;
  input m_axi_rlast;
  input command_ongoing_reg_0;
  input S_AXI_AREADY_I_reg_0;
  input s_axi_arvalid;
  input aresetn;
  input command_ongoing;
  input command_ongoing_reg_1;
  input m_axi_arready;
  input cmd_push_block;
  input need_to_split_q;
  input [3:0]Q;
  input [3:0]split_ongoing_reg;
  input access_is_incr_q;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire access_is_incr_q;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push_block;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire command_ongoing_reg_1;
  wire [0:0]din;
  wire empty;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire need_to_split_q;
  wire rd_en;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [3:0]split_ongoing_reg;

  hdmi_out_auto_pc_0_axi_data_fifo_v2_1_25_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .S_AXI_AREADY_I_reg_0(S_AXI_AREADY_I_reg_0),
        .access_is_incr_q(access_is_incr_q),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .cmd_push_block(cmd_push_block),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(command_ongoing_reg),
        .command_ongoing_reg_0(command_ongoing_reg_0),
        .command_ongoing_reg_1(command_ongoing_reg_1),
        .din(din),
        .empty(empty),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .need_to_split_q(need_to_split_q),
        .rd_en(rd_en),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .split_ongoing_reg(split_ongoing_reg));
endmodule

module hdmi_out_auto_pc_0_axi_data_fifo_v2_1_25_fifo_gen
   (empty,
    SR,
    din,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rlast,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    aresetn_0,
    E,
    m_axi_arvalid,
    aclk,
    rd_en,
    s_axi_rready,
    m_axi_rvalid,
    m_axi_rlast,
    command_ongoing_reg_0,
    S_AXI_AREADY_I_reg_0,
    s_axi_arvalid,
    aresetn,
    command_ongoing,
    command_ongoing_reg_1,
    m_axi_arready,
    cmd_push_block,
    need_to_split_q,
    Q,
    split_ongoing_reg,
    access_is_incr_q);
  output empty;
  output [0:0]SR;
  output [0:0]din;
  output m_axi_rready;
  output s_axi_rvalid;
  output s_axi_rlast;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output aresetn_0;
  output [0:0]E;
  output m_axi_arvalid;
  input aclk;
  input rd_en;
  input s_axi_rready;
  input m_axi_rvalid;
  input m_axi_rlast;
  input command_ongoing_reg_0;
  input S_AXI_AREADY_I_reg_0;
  input s_axi_arvalid;
  input aresetn;
  input command_ongoing;
  input command_ongoing_reg_1;
  input m_axi_arready;
  input cmd_push_block;
  input need_to_split_q;
  input [3:0]Q;
  input [3:0]split_ongoing_reg;
  input access_is_incr_q;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_i_5_n_0;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire \USE_READ.USE_SPLIT_R.rd_cmd_split ;
  wire access_is_incr_q;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire cmd_push_block;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire command_ongoing_reg_1;
  wire [0:0]din;
  wire empty;
  wire full;
  wire last_split__1;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire need_to_split_q;
  wire rd_en;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [3:0]split_ongoing_reg;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  LUT6 #(
    .INIT(64'h5575FF7500000000)) 
    S_AXI_AREADY_I_i_1
       (.I0(command_ongoing_reg_0),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .I2(last_split__1),
        .I3(S_AXI_AREADY_I_reg_0),
        .I4(s_axi_arvalid),
        .I5(aresetn),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5DFF)) 
    S_AXI_AREADY_I_i_3
       (.I0(command_ongoing),
        .I1(full),
        .I2(cmd_push_block),
        .I3(m_axi_arready),
        .O(S_AXI_AREADY_I_i_3_n_0));
  LUT6 #(
    .INIT(64'h82000082FFFFFFFF)) 
    S_AXI_AREADY_I_i_4
       (.I0(S_AXI_AREADY_I_i_5_n_0),
        .I1(Q[2]),
        .I2(split_ongoing_reg[2]),
        .I3(Q[3]),
        .I4(split_ongoing_reg[3]),
        .I5(access_is_incr_q),
        .O(last_split__1));
  LUT4 #(
    .INIT(16'h9009)) 
    S_AXI_AREADY_I_i_5
       (.I0(Q[0]),
        .I1(split_ongoing_reg[0]),
        .I2(Q[1]),
        .I3(split_ongoing_reg[1]),
        .O(S_AXI_AREADY_I_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \S_AXI_ASIZE_Q[2]_i_1 
       (.I0(aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2022A0A0)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_arready),
        .I2(cmd_push_block),
        .I3(full),
        .I4(command_ongoing),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'h8AFFAAAA00000000)) 
    command_ongoing_i_1
       (.I0(command_ongoing),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .I2(last_split__1),
        .I3(command_ongoing_reg_1),
        .I4(command_ongoing_reg_0),
        .I5(aresetn),
        .O(command_ongoing_reg));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "1" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "1" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  hdmi_out_auto_pc_0_fifo_generator_v13_2_7 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(\USE_READ.USE_SPLIT_R.rd_cmd_split ),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_gen_inst_i_1
       (.I0(need_to_split_q),
        .I1(last_split__1),
        .O(din));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_2
       (.I0(command_ongoing),
        .I1(full),
        .I2(cmd_push_block),
        .O(cmd_push));
  LUT3 #(
    .INIT(8'hB0)) 
    m_axi_arvalid_INST_0
       (.I0(cmd_push_block),
        .I1(full),
        .I2(command_ongoing),
        .O(m_axi_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    m_axi_rready_INST_0
       (.I0(s_axi_rready),
        .I1(m_axi_rvalid),
        .I2(empty),
        .O(m_axi_rready));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_rlast_INST_0
       (.I0(m_axi_rlast),
        .I1(\USE_READ.USE_SPLIT_R.rd_cmd_split ),
        .O(s_axi_rlast));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_rvalid_INST_0
       (.I0(m_axi_rvalid),
        .I1(empty),
        .O(s_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    split_ongoing_i_1
       (.I0(m_axi_arready),
        .I1(cmd_push_block),
        .I2(full),
        .I3(command_ongoing),
        .O(E));
endmodule

module hdmi_out_auto_pc_0_axi_protocol_converter_v2_1_26_a_axi3_conv
   (empty,
    E,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rlast,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_araddr,
    m_axi_arvalid,
    m_axi_arlen,
    m_axi_arlock,
    aclk,
    rd_en,
    s_axi_arlock,
    s_axi_rready,
    m_axi_rvalid,
    s_axi_arsize,
    s_axi_arlen,
    m_axi_rlast,
    s_axi_arvalid,
    aresetn,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    m_axi_arready);
  output empty;
  output [0:0]E;
  output m_axi_rready;
  output s_axi_rvalid;
  output s_axi_rlast;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [31:0]m_axi_araddr;
  output m_axi_arvalid;
  output [3:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  input aclk;
  input rd_en;
  input [0:0]s_axi_arlock;
  input s_axi_rready;
  input m_axi_rvalid;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input m_axi_rlast;
  input s_axi_arvalid;
  input aresetn;
  input [31:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input m_axi_arready;

  wire [0:0]E;
  wire M_AXI_AADDR_I1__0;
  wire [31:0]S_AXI_AADDR_Q;
  wire [3:0]S_AXI_ALEN_Q;
  wire \S_AXI_ALOCK_Q_reg_n_0_[0] ;
  wire S_AXI_AREADY_I_i_2_n_0;
  wire \USE_R_CHANNEL.cmd_queue_n_1 ;
  wire \USE_R_CHANNEL.cmd_queue_n_6 ;
  wire \USE_R_CHANNEL.cmd_queue_n_7 ;
  wire \USE_R_CHANNEL.cmd_queue_n_8 ;
  wire access_is_incr;
  wire access_is_incr_q;
  wire aclk;
  wire [11:5]addr_step;
  wire [11:5]addr_step_q;
  wire \addr_step_q[6]_i_1_n_0 ;
  wire \addr_step_q[7]_i_1_n_0 ;
  wire \addr_step_q[8]_i_1_n_0 ;
  wire \addr_step_q[9]_i_1_n_0 ;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block;
  wire cmd_split_i;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire empty;
  wire first_split__2;
  wire [11:4]first_step;
  wire [11:0]first_step_q;
  wire \first_step_q[0]_i_1_n_0 ;
  wire \first_step_q[10]_i_2_n_0 ;
  wire \first_step_q[11]_i_2_n_0 ;
  wire \first_step_q[1]_i_1_n_0 ;
  wire \first_step_q[2]_i_1_n_0 ;
  wire \first_step_q[3]_i_1_n_0 ;
  wire \first_step_q[6]_i_2_n_0 ;
  wire \first_step_q[7]_i_2_n_0 ;
  wire \first_step_q[8]_i_2_n_0 ;
  wire \first_step_q[9]_i_2_n_0 ;
  wire incr_need_to_split__0;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire need_to_split_q;
  wire [31:0]next_mi_addr;
  wire \next_mi_addr[11]_i_2_n_0 ;
  wire \next_mi_addr[11]_i_3_n_0 ;
  wire \next_mi_addr[11]_i_4_n_0 ;
  wire \next_mi_addr[11]_i_5_n_0 ;
  wire \next_mi_addr[15]_i_2_n_0 ;
  wire \next_mi_addr[15]_i_3_n_0 ;
  wire \next_mi_addr[15]_i_4_n_0 ;
  wire \next_mi_addr[15]_i_5_n_0 ;
  wire \next_mi_addr[15]_i_6_n_0 ;
  wire \next_mi_addr[15]_i_7_n_0 ;
  wire \next_mi_addr[15]_i_8_n_0 ;
  wire \next_mi_addr[15]_i_9_n_0 ;
  wire \next_mi_addr[19]_i_2_n_0 ;
  wire \next_mi_addr[19]_i_3_n_0 ;
  wire \next_mi_addr[19]_i_4_n_0 ;
  wire \next_mi_addr[19]_i_5_n_0 ;
  wire \next_mi_addr[23]_i_2_n_0 ;
  wire \next_mi_addr[23]_i_3_n_0 ;
  wire \next_mi_addr[23]_i_4_n_0 ;
  wire \next_mi_addr[23]_i_5_n_0 ;
  wire \next_mi_addr[27]_i_2_n_0 ;
  wire \next_mi_addr[27]_i_3_n_0 ;
  wire \next_mi_addr[27]_i_4_n_0 ;
  wire \next_mi_addr[27]_i_5_n_0 ;
  wire \next_mi_addr[31]_i_2_n_0 ;
  wire \next_mi_addr[31]_i_3_n_0 ;
  wire \next_mi_addr[31]_i_4_n_0 ;
  wire \next_mi_addr[31]_i_5_n_0 ;
  wire \next_mi_addr[3]_i_2_n_0 ;
  wire \next_mi_addr[3]_i_3_n_0 ;
  wire \next_mi_addr[3]_i_4_n_0 ;
  wire \next_mi_addr[3]_i_5_n_0 ;
  wire \next_mi_addr[7]_i_2_n_0 ;
  wire \next_mi_addr[7]_i_3_n_0 ;
  wire \next_mi_addr[7]_i_4_n_0 ;
  wire \next_mi_addr[7]_i_5_n_0 ;
  wire \next_mi_addr_reg[11]_i_1_n_0 ;
  wire \next_mi_addr_reg[11]_i_1_n_1 ;
  wire \next_mi_addr_reg[11]_i_1_n_2 ;
  wire \next_mi_addr_reg[11]_i_1_n_3 ;
  wire \next_mi_addr_reg[11]_i_1_n_4 ;
  wire \next_mi_addr_reg[11]_i_1_n_5 ;
  wire \next_mi_addr_reg[11]_i_1_n_6 ;
  wire \next_mi_addr_reg[11]_i_1_n_7 ;
  wire \next_mi_addr_reg[15]_i_1_n_0 ;
  wire \next_mi_addr_reg[15]_i_1_n_1 ;
  wire \next_mi_addr_reg[15]_i_1_n_2 ;
  wire \next_mi_addr_reg[15]_i_1_n_3 ;
  wire \next_mi_addr_reg[15]_i_1_n_4 ;
  wire \next_mi_addr_reg[15]_i_1_n_5 ;
  wire \next_mi_addr_reg[15]_i_1_n_6 ;
  wire \next_mi_addr_reg[15]_i_1_n_7 ;
  wire \next_mi_addr_reg[19]_i_1_n_0 ;
  wire \next_mi_addr_reg[19]_i_1_n_1 ;
  wire \next_mi_addr_reg[19]_i_1_n_2 ;
  wire \next_mi_addr_reg[19]_i_1_n_3 ;
  wire \next_mi_addr_reg[19]_i_1_n_4 ;
  wire \next_mi_addr_reg[19]_i_1_n_5 ;
  wire \next_mi_addr_reg[19]_i_1_n_6 ;
  wire \next_mi_addr_reg[19]_i_1_n_7 ;
  wire \next_mi_addr_reg[23]_i_1_n_0 ;
  wire \next_mi_addr_reg[23]_i_1_n_1 ;
  wire \next_mi_addr_reg[23]_i_1_n_2 ;
  wire \next_mi_addr_reg[23]_i_1_n_3 ;
  wire \next_mi_addr_reg[23]_i_1_n_4 ;
  wire \next_mi_addr_reg[23]_i_1_n_5 ;
  wire \next_mi_addr_reg[23]_i_1_n_6 ;
  wire \next_mi_addr_reg[23]_i_1_n_7 ;
  wire \next_mi_addr_reg[27]_i_1_n_0 ;
  wire \next_mi_addr_reg[27]_i_1_n_1 ;
  wire \next_mi_addr_reg[27]_i_1_n_2 ;
  wire \next_mi_addr_reg[27]_i_1_n_3 ;
  wire \next_mi_addr_reg[27]_i_1_n_4 ;
  wire \next_mi_addr_reg[27]_i_1_n_5 ;
  wire \next_mi_addr_reg[27]_i_1_n_6 ;
  wire \next_mi_addr_reg[27]_i_1_n_7 ;
  wire \next_mi_addr_reg[31]_i_1_n_1 ;
  wire \next_mi_addr_reg[31]_i_1_n_2 ;
  wire \next_mi_addr_reg[31]_i_1_n_3 ;
  wire \next_mi_addr_reg[31]_i_1_n_4 ;
  wire \next_mi_addr_reg[31]_i_1_n_5 ;
  wire \next_mi_addr_reg[31]_i_1_n_6 ;
  wire \next_mi_addr_reg[31]_i_1_n_7 ;
  wire \next_mi_addr_reg[3]_i_1_n_0 ;
  wire \next_mi_addr_reg[3]_i_1_n_1 ;
  wire \next_mi_addr_reg[3]_i_1_n_2 ;
  wire \next_mi_addr_reg[3]_i_1_n_3 ;
  wire \next_mi_addr_reg[3]_i_1_n_4 ;
  wire \next_mi_addr_reg[3]_i_1_n_5 ;
  wire \next_mi_addr_reg[3]_i_1_n_6 ;
  wire \next_mi_addr_reg[3]_i_1_n_7 ;
  wire \next_mi_addr_reg[7]_i_1_n_0 ;
  wire \next_mi_addr_reg[7]_i_1_n_1 ;
  wire \next_mi_addr_reg[7]_i_1_n_2 ;
  wire \next_mi_addr_reg[7]_i_1_n_3 ;
  wire \next_mi_addr_reg[7]_i_1_n_4 ;
  wire \next_mi_addr_reg[7]_i_1_n_5 ;
  wire \next_mi_addr_reg[7]_i_1_n_6 ;
  wire \next_mi_addr_reg[7]_i_1_n_7 ;
  wire [3:0]num_transactions_q;
  wire [3:0]p_0_in;
  wire \pushed_commands[3]_i_1_n_0 ;
  wire [3:0]pushed_commands_reg;
  wire pushed_new_cmd;
  wire rd_en;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [6:0]size_mask;
  wire [31:0]size_mask_q;
  wire split_ongoing;
  wire [3:3]\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED ;

  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[0]),
        .Q(S_AXI_AADDR_Q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[10]),
        .Q(S_AXI_AADDR_Q[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[11]),
        .Q(S_AXI_AADDR_Q[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[12]),
        .Q(S_AXI_AADDR_Q[12]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[13]),
        .Q(S_AXI_AADDR_Q[13]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[14]),
        .Q(S_AXI_AADDR_Q[14]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[15]),
        .Q(S_AXI_AADDR_Q[15]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[16]),
        .Q(S_AXI_AADDR_Q[16]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[17]),
        .Q(S_AXI_AADDR_Q[17]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[18]),
        .Q(S_AXI_AADDR_Q[18]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[19]),
        .Q(S_AXI_AADDR_Q[19]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[1]),
        .Q(S_AXI_AADDR_Q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[20]),
        .Q(S_AXI_AADDR_Q[20]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[21]),
        .Q(S_AXI_AADDR_Q[21]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[22]),
        .Q(S_AXI_AADDR_Q[22]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[23]),
        .Q(S_AXI_AADDR_Q[23]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[24]),
        .Q(S_AXI_AADDR_Q[24]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[25]),
        .Q(S_AXI_AADDR_Q[25]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[26]),
        .Q(S_AXI_AADDR_Q[26]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[27]),
        .Q(S_AXI_AADDR_Q[27]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[28]),
        .Q(S_AXI_AADDR_Q[28]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[29]),
        .Q(S_AXI_AADDR_Q[29]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[2]),
        .Q(S_AXI_AADDR_Q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[30]),
        .Q(S_AXI_AADDR_Q[30]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[31]),
        .Q(S_AXI_AADDR_Q[31]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[3]),
        .Q(S_AXI_AADDR_Q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[4]),
        .Q(S_AXI_AADDR_Q[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[5]),
        .Q(S_AXI_AADDR_Q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[6]),
        .Q(S_AXI_AADDR_Q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[7]),
        .Q(S_AXI_AADDR_Q[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[8]),
        .Q(S_AXI_AADDR_Q[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[9]),
        .Q(S_AXI_AADDR_Q[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arburst[0]),
        .Q(m_axi_arburst[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arburst[1]),
        .Q(m_axi_arburst[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[0]),
        .Q(m_axi_arcache[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[1]),
        .Q(m_axi_arcache[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[2]),
        .Q(m_axi_arcache[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[3]),
        .Q(m_axi_arcache[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[0]),
        .Q(S_AXI_ALEN_Q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[1]),
        .Q(S_AXI_ALEN_Q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[2]),
        .Q(S_AXI_ALEN_Q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[3]),
        .Q(S_AXI_ALEN_Q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlock),
        .Q(\S_AXI_ALOCK_Q_reg_n_0_[0] ),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arprot[0]),
        .Q(m_axi_arprot[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arprot[1]),
        .Q(m_axi_arprot[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arprot[2]),
        .Q(m_axi_arprot[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[0]),
        .Q(m_axi_arqos[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[1]),
        .Q(m_axi_arqos[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[2]),
        .Q(m_axi_arqos[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[3]),
        .Q(m_axi_arqos[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    S_AXI_AREADY_I_i_2
       (.I0(areset_d[0]),
        .I1(areset_d[1]),
        .O(S_AXI_AREADY_I_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_6 ),
        .Q(E),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arsize[0]),
        .Q(m_axi_arsize[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arsize[1]),
        .Q(m_axi_arsize[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arsize[2]),
        .Q(m_axi_arsize[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  hdmi_out_auto_pc_0_axi_data_fifo_v2_1_25_axic_fifo \USE_R_CHANNEL.cmd_queue 
       (.E(pushed_new_cmd),
        .Q(num_transactions_q),
        .SR(\USE_R_CHANNEL.cmd_queue_n_1 ),
        .S_AXI_AREADY_I_reg(\USE_R_CHANNEL.cmd_queue_n_6 ),
        .S_AXI_AREADY_I_reg_0(E),
        .access_is_incr_q(access_is_incr_q),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(\USE_R_CHANNEL.cmd_queue_n_8 ),
        .cmd_push_block(cmd_push_block),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(\USE_R_CHANNEL.cmd_queue_n_7 ),
        .command_ongoing_reg_0(S_AXI_AREADY_I_i_2_n_0),
        .command_ongoing_reg_1(command_ongoing_i_2_n_0),
        .din(cmd_split_i),
        .empty(empty),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .need_to_split_q(need_to_split_q),
        .rd_en(rd_en),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .split_ongoing_reg(pushed_commands_reg));
  LUT2 #(
    .INIT(4'h2)) 
    access_is_incr_q_i_1
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(access_is_incr));
  FDRE #(
    .INIT(1'b0)) 
    access_is_incr_q_reg
       (.C(aclk),
        .CE(E),
        .D(access_is_incr),
        .Q(access_is_incr_q),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \addr_step_q[10]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(addr_step[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \addr_step_q[11]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .O(addr_step[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[5]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(addr_step[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[6]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(\addr_step_q[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr_step_q[7]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(\addr_step_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[8]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(\addr_step_q[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr_step_q[9]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(\addr_step_q[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[10]),
        .Q(addr_step_q[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[11]),
        .Q(addr_step_q[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[5]),
        .Q(addr_step_q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[6]_i_1_n_0 ),
        .Q(addr_step_q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[7]_i_1_n_0 ),
        .Q(addr_step_q[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[8]_i_1_n_0 ),
        .Q(addr_step_q[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[9]_i_1_n_0 ),
        .Q(addr_step_q[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_1 ),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_8 ),
        .Q(cmd_push_block),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    command_ongoing_i_2
       (.I0(s_axi_arvalid),
        .I1(E),
        .O(command_ongoing_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_7 ),
        .Q(command_ongoing),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \first_step_q[0]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arsize[2]),
        .O(\first_step_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[10]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[10]_i_2_n_0 ),
        .O(first_step[10]));
  LUT6 #(
    .INIT(64'h2AAA800080000000)) 
    \first_step_q[10]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[3]),
        .I5(s_axi_arsize[0]),
        .O(\first_step_q[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[11]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[11]_i_2_n_0 ),
        .O(first_step[11]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \first_step_q[11]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[2]),
        .I5(s_axi_arsize[0]),
        .O(\first_step_q[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000514)) 
    \first_step_q[1]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arsize[2]),
        .O(\first_step_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000F3C6A)) 
    \first_step_q[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[2]),
        .O(\first_step_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \first_step_q[3]_i_1 
       (.I0(\first_step_q[7]_i_2_n_0 ),
        .I1(s_axi_arsize[2]),
        .O(\first_step_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \first_step_q[4]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(\first_step_q[8]_i_2_n_0 ),
        .O(first_step[4]));
  LUT6 #(
    .INIT(64'h0036FFFF00360000)) 
    \first_step_q[5]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .I5(\first_step_q[9]_i_2_n_0 ),
        .O(first_step[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \first_step_q[6]_i_1 
       (.I0(\first_step_q[6]_i_2_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\first_step_q[10]_i_2_n_0 ),
        .O(first_step[6]));
  LUT5 #(
    .INIT(32'h07531642)) 
    \first_step_q[6]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[2]),
        .O(\first_step_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \first_step_q[7]_i_1 
       (.I0(\first_step_q[7]_i_2_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\first_step_q[11]_i_2_n_0 ),
        .O(first_step[7]));
  LUT6 #(
    .INIT(64'h07FD53B916EC42A8)) 
    \first_step_q[7]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[2]),
        .I5(s_axi_arlen[3]),
        .O(\first_step_q[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[8]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[8]_i_2_n_0 ),
        .O(first_step[8]));
  LUT6 #(
    .INIT(64'h14EAEA6262C8C840)) 
    \first_step_q[8]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arlen[2]),
        .O(\first_step_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[9]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[9]_i_2_n_0 ),
        .O(first_step[9]));
  LUT6 #(
    .INIT(64'h4AA2A2A228808080)) 
    \first_step_q[9]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[2]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[1]),
        .I5(s_axi_arlen[3]),
        .O(\first_step_q[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[0]_i_1_n_0 ),
        .Q(first_step_q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(first_step[10]),
        .Q(first_step_q[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(first_step[11]),
        .Q(first_step_q[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[1]_i_1_n_0 ),
        .Q(first_step_q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[2]_i_1_n_0 ),
        .Q(first_step_q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[3]_i_1_n_0 ),
        .Q(first_step_q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(first_step[4]),
        .Q(first_step_q[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(first_step[5]),
        .Q(first_step_q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(first_step[6]),
        .Q(first_step_q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(first_step[7]),
        .Q(first_step_q[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(first_step[8]),
        .Q(first_step_q[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(first_step[9]),
        .Q(first_step_q[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    incr_need_to_split
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arlen[6]),
        .I5(s_axi_arlen[7]),
        .O(incr_need_to_split__0));
  FDRE #(
    .INIT(1'b0)) 
    incr_need_to_split_q_reg
       (.C(aclk),
        .CE(E),
        .D(incr_need_to_split__0),
        .Q(need_to_split_q),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[0]_INST_0 
       (.I0(next_mi_addr[0]),
        .I1(size_mask_q[0]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[0]),
        .O(m_axi_araddr[0]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[10]_INST_0 
       (.I0(next_mi_addr[10]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[10]),
        .O(m_axi_araddr[10]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[11]_INST_0 
       (.I0(next_mi_addr[11]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[11]),
        .O(m_axi_araddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[12]_INST_0 
       (.I0(next_mi_addr[12]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[12]),
        .O(m_axi_araddr[12]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[13]_INST_0 
       (.I0(next_mi_addr[13]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[13]),
        .O(m_axi_araddr[13]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[14]_INST_0 
       (.I0(next_mi_addr[14]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[14]),
        .O(m_axi_araddr[14]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[15]_INST_0 
       (.I0(next_mi_addr[15]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[15]),
        .O(m_axi_araddr[15]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[16]_INST_0 
       (.I0(next_mi_addr[16]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[16]),
        .O(m_axi_araddr[16]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[17]_INST_0 
       (.I0(next_mi_addr[17]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[17]),
        .O(m_axi_araddr[17]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[18]_INST_0 
       (.I0(next_mi_addr[18]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[18]),
        .O(m_axi_araddr[18]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[19]_INST_0 
       (.I0(next_mi_addr[19]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[19]),
        .O(m_axi_araddr[19]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[1]_INST_0 
       (.I0(next_mi_addr[1]),
        .I1(size_mask_q[1]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[1]),
        .O(m_axi_araddr[1]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[20]_INST_0 
       (.I0(next_mi_addr[20]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[20]),
        .O(m_axi_araddr[20]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[21]_INST_0 
       (.I0(next_mi_addr[21]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[21]),
        .O(m_axi_araddr[21]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[22]_INST_0 
       (.I0(next_mi_addr[22]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[22]),
        .O(m_axi_araddr[22]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[23]_INST_0 
       (.I0(next_mi_addr[23]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[23]),
        .O(m_axi_araddr[23]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[24]_INST_0 
       (.I0(next_mi_addr[24]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[24]),
        .O(m_axi_araddr[24]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[25]_INST_0 
       (.I0(next_mi_addr[25]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[25]),
        .O(m_axi_araddr[25]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[26]_INST_0 
       (.I0(next_mi_addr[26]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[26]),
        .O(m_axi_araddr[26]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[27]_INST_0 
       (.I0(next_mi_addr[27]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[27]),
        .O(m_axi_araddr[27]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[28]_INST_0 
       (.I0(next_mi_addr[28]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[28]),
        .O(m_axi_araddr[28]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[29]_INST_0 
       (.I0(next_mi_addr[29]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[29]),
        .O(m_axi_araddr[29]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[2]_INST_0 
       (.I0(next_mi_addr[2]),
        .I1(size_mask_q[2]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[2]),
        .O(m_axi_araddr[2]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[30]_INST_0 
       (.I0(next_mi_addr[30]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[30]),
        .O(m_axi_araddr[30]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[31]_INST_0 
       (.I0(next_mi_addr[31]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[31]),
        .O(m_axi_araddr[31]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[3]_INST_0 
       (.I0(next_mi_addr[3]),
        .I1(size_mask_q[3]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[3]),
        .O(m_axi_araddr[3]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[4]_INST_0 
       (.I0(next_mi_addr[4]),
        .I1(size_mask_q[4]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[4]),
        .O(m_axi_araddr[4]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[5]_INST_0 
       (.I0(next_mi_addr[5]),
        .I1(size_mask_q[5]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[5]),
        .O(m_axi_araddr[5]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[6]_INST_0 
       (.I0(next_mi_addr[6]),
        .I1(size_mask_q[6]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[6]),
        .O(m_axi_araddr[6]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[7]_INST_0 
       (.I0(next_mi_addr[7]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[7]),
        .O(m_axi_araddr[7]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[8]_INST_0 
       (.I0(next_mi_addr[8]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[8]),
        .O(m_axi_araddr[8]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[9]_INST_0 
       (.I0(next_mi_addr[9]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[9]),
        .O(m_axi_araddr[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[0]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[0]),
        .O(m_axi_arlen[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[1]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[1]),
        .O(m_axi_arlen[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[2]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[2]),
        .O(m_axi_arlen[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[3]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[3]),
        .O(m_axi_arlen[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_arlock[0]_INST_0 
       (.I0(\S_AXI_ALOCK_Q_reg_n_0_[0] ),
        .I1(need_to_split_q),
        .O(m_axi_arlock));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_2 
       (.I0(m_axi_araddr[11]),
        .I1(addr_step_q[11]),
        .I2(first_split__2),
        .I3(first_step_q[11]),
        .O(\next_mi_addr[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_3 
       (.I0(m_axi_araddr[10]),
        .I1(addr_step_q[10]),
        .I2(first_split__2),
        .I3(first_step_q[10]),
        .O(\next_mi_addr[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_4 
       (.I0(m_axi_araddr[9]),
        .I1(addr_step_q[9]),
        .I2(first_split__2),
        .I3(first_step_q[9]),
        .O(\next_mi_addr[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_5 
       (.I0(m_axi_araddr[8]),
        .I1(addr_step_q[8]),
        .I2(first_split__2),
        .I3(first_step_q[8]),
        .O(\next_mi_addr[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \next_mi_addr[11]_i_6 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .O(first_split__2));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_2 
       (.I0(next_mi_addr[15]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[15]),
        .O(\next_mi_addr[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_3 
       (.I0(next_mi_addr[14]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[14]),
        .O(\next_mi_addr[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_4 
       (.I0(next_mi_addr[13]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[13]),
        .O(\next_mi_addr[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_5 
       (.I0(next_mi_addr[12]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[12]),
        .O(\next_mi_addr[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_6 
       (.I0(next_mi_addr[15]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[15]),
        .O(\next_mi_addr[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_7 
       (.I0(next_mi_addr[14]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[14]),
        .O(\next_mi_addr[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_8 
       (.I0(next_mi_addr[13]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[13]),
        .O(\next_mi_addr[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_9 
       (.I0(next_mi_addr[12]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[12]),
        .O(\next_mi_addr[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_2 
       (.I0(next_mi_addr[19]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[19]),
        .O(\next_mi_addr[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_3 
       (.I0(next_mi_addr[18]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[18]),
        .O(\next_mi_addr[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_4 
       (.I0(next_mi_addr[17]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[17]),
        .O(\next_mi_addr[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_5 
       (.I0(next_mi_addr[16]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[16]),
        .O(\next_mi_addr[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_2 
       (.I0(next_mi_addr[23]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[23]),
        .O(\next_mi_addr[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_3 
       (.I0(next_mi_addr[22]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[22]),
        .O(\next_mi_addr[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_4 
       (.I0(next_mi_addr[21]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[21]),
        .O(\next_mi_addr[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_5 
       (.I0(next_mi_addr[20]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[20]),
        .O(\next_mi_addr[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_2 
       (.I0(next_mi_addr[27]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[27]),
        .O(\next_mi_addr[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_3 
       (.I0(next_mi_addr[26]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[26]),
        .O(\next_mi_addr[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_4 
       (.I0(next_mi_addr[25]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[25]),
        .O(\next_mi_addr[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_5 
       (.I0(next_mi_addr[24]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[24]),
        .O(\next_mi_addr[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_2 
       (.I0(next_mi_addr[31]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[31]),
        .O(\next_mi_addr[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_3 
       (.I0(next_mi_addr[30]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[30]),
        .O(\next_mi_addr[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_4 
       (.I0(next_mi_addr[29]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[29]),
        .O(\next_mi_addr[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_5 
       (.I0(next_mi_addr[28]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[28]),
        .O(\next_mi_addr[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_2 
       (.I0(S_AXI_AADDR_Q[3]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[3]),
        .I3(next_mi_addr[3]),
        .I4(first_split__2),
        .I5(first_step_q[3]),
        .O(\next_mi_addr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_3 
       (.I0(S_AXI_AADDR_Q[2]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[2]),
        .I3(next_mi_addr[2]),
        .I4(first_split__2),
        .I5(first_step_q[2]),
        .O(\next_mi_addr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_4 
       (.I0(S_AXI_AADDR_Q[1]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[1]),
        .I3(next_mi_addr[1]),
        .I4(first_split__2),
        .I5(first_step_q[1]),
        .O(\next_mi_addr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_5 
       (.I0(S_AXI_AADDR_Q[0]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[0]),
        .I3(next_mi_addr[0]),
        .I4(first_split__2),
        .I5(first_step_q[0]),
        .O(\next_mi_addr[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \next_mi_addr[3]_i_6 
       (.I0(split_ongoing),
        .I1(access_is_incr_q),
        .O(M_AXI_AADDR_I1__0));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_2 
       (.I0(m_axi_araddr[7]),
        .I1(addr_step_q[7]),
        .I2(first_split__2),
        .I3(first_step_q[7]),
        .O(\next_mi_addr[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_3 
       (.I0(m_axi_araddr[6]),
        .I1(addr_step_q[6]),
        .I2(first_split__2),
        .I3(first_step_q[6]),
        .O(\next_mi_addr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_4 
       (.I0(m_axi_araddr[5]),
        .I1(addr_step_q[5]),
        .I2(first_split__2),
        .I3(first_step_q[5]),
        .O(\next_mi_addr[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_5 
       (.I0(m_axi_araddr[4]),
        .I1(size_mask_q[0]),
        .I2(first_split__2),
        .I3(first_step_q[4]),
        .O(\next_mi_addr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[0] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_7 ),
        .Q(next_mi_addr[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[10] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_5 ),
        .Q(next_mi_addr[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[11] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_4 ),
        .Q(next_mi_addr[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[11]_i_1 
       (.CI(\next_mi_addr_reg[7]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[11]_i_1_n_0 ,\next_mi_addr_reg[11]_i_1_n_1 ,\next_mi_addr_reg[11]_i_1_n_2 ,\next_mi_addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_araddr[11:8]),
        .O({\next_mi_addr_reg[11]_i_1_n_4 ,\next_mi_addr_reg[11]_i_1_n_5 ,\next_mi_addr_reg[11]_i_1_n_6 ,\next_mi_addr_reg[11]_i_1_n_7 }),
        .S({\next_mi_addr[11]_i_2_n_0 ,\next_mi_addr[11]_i_3_n_0 ,\next_mi_addr[11]_i_4_n_0 ,\next_mi_addr[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[12] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_7 ),
        .Q(next_mi_addr[12]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[13] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_6 ),
        .Q(next_mi_addr[13]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[14] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_5 ),
        .Q(next_mi_addr[14]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[15] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_4 ),
        .Q(next_mi_addr[15]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[15]_i_1 
       (.CI(\next_mi_addr_reg[11]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[15]_i_1_n_0 ,\next_mi_addr_reg[15]_i_1_n_1 ,\next_mi_addr_reg[15]_i_1_n_2 ,\next_mi_addr_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\next_mi_addr[15]_i_2_n_0 ,\next_mi_addr[15]_i_3_n_0 ,\next_mi_addr[15]_i_4_n_0 ,\next_mi_addr[15]_i_5_n_0 }),
        .O({\next_mi_addr_reg[15]_i_1_n_4 ,\next_mi_addr_reg[15]_i_1_n_5 ,\next_mi_addr_reg[15]_i_1_n_6 ,\next_mi_addr_reg[15]_i_1_n_7 }),
        .S({\next_mi_addr[15]_i_6_n_0 ,\next_mi_addr[15]_i_7_n_0 ,\next_mi_addr[15]_i_8_n_0 ,\next_mi_addr[15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[16] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_7 ),
        .Q(next_mi_addr[16]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[17] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_6 ),
        .Q(next_mi_addr[17]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[18] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_5 ),
        .Q(next_mi_addr[18]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[19] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_4 ),
        .Q(next_mi_addr[19]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[19]_i_1 
       (.CI(\next_mi_addr_reg[15]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[19]_i_1_n_0 ,\next_mi_addr_reg[19]_i_1_n_1 ,\next_mi_addr_reg[19]_i_1_n_2 ,\next_mi_addr_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[19]_i_1_n_4 ,\next_mi_addr_reg[19]_i_1_n_5 ,\next_mi_addr_reg[19]_i_1_n_6 ,\next_mi_addr_reg[19]_i_1_n_7 }),
        .S({\next_mi_addr[19]_i_2_n_0 ,\next_mi_addr[19]_i_3_n_0 ,\next_mi_addr[19]_i_4_n_0 ,\next_mi_addr[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[1] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_6 ),
        .Q(next_mi_addr[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[20] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_7 ),
        .Q(next_mi_addr[20]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[21] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_6 ),
        .Q(next_mi_addr[21]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[22] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_5 ),
        .Q(next_mi_addr[22]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[23] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_4 ),
        .Q(next_mi_addr[23]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[23]_i_1 
       (.CI(\next_mi_addr_reg[19]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[23]_i_1_n_0 ,\next_mi_addr_reg[23]_i_1_n_1 ,\next_mi_addr_reg[23]_i_1_n_2 ,\next_mi_addr_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[23]_i_1_n_4 ,\next_mi_addr_reg[23]_i_1_n_5 ,\next_mi_addr_reg[23]_i_1_n_6 ,\next_mi_addr_reg[23]_i_1_n_7 }),
        .S({\next_mi_addr[23]_i_2_n_0 ,\next_mi_addr[23]_i_3_n_0 ,\next_mi_addr[23]_i_4_n_0 ,\next_mi_addr[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[24] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_7 ),
        .Q(next_mi_addr[24]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[25] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_6 ),
        .Q(next_mi_addr[25]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[26] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_5 ),
        .Q(next_mi_addr[26]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[27] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_4 ),
        .Q(next_mi_addr[27]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[27]_i_1 
       (.CI(\next_mi_addr_reg[23]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[27]_i_1_n_0 ,\next_mi_addr_reg[27]_i_1_n_1 ,\next_mi_addr_reg[27]_i_1_n_2 ,\next_mi_addr_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[27]_i_1_n_4 ,\next_mi_addr_reg[27]_i_1_n_5 ,\next_mi_addr_reg[27]_i_1_n_6 ,\next_mi_addr_reg[27]_i_1_n_7 }),
        .S({\next_mi_addr[27]_i_2_n_0 ,\next_mi_addr[27]_i_3_n_0 ,\next_mi_addr[27]_i_4_n_0 ,\next_mi_addr[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[28] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_7 ),
        .Q(next_mi_addr[28]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[29] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_6 ),
        .Q(next_mi_addr[29]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[2] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_5 ),
        .Q(next_mi_addr[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[30] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_5 ),
        .Q(next_mi_addr[30]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[31] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_4 ),
        .Q(next_mi_addr[31]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[31]_i_1 
       (.CI(\next_mi_addr_reg[27]_i_1_n_0 ),
        .CO({\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED [3],\next_mi_addr_reg[31]_i_1_n_1 ,\next_mi_addr_reg[31]_i_1_n_2 ,\next_mi_addr_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[31]_i_1_n_4 ,\next_mi_addr_reg[31]_i_1_n_5 ,\next_mi_addr_reg[31]_i_1_n_6 ,\next_mi_addr_reg[31]_i_1_n_7 }),
        .S({\next_mi_addr[31]_i_2_n_0 ,\next_mi_addr[31]_i_3_n_0 ,\next_mi_addr[31]_i_4_n_0 ,\next_mi_addr[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[3] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_4 ),
        .Q(next_mi_addr[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\next_mi_addr_reg[3]_i_1_n_0 ,\next_mi_addr_reg[3]_i_1_n_1 ,\next_mi_addr_reg[3]_i_1_n_2 ,\next_mi_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_araddr[3:0]),
        .O({\next_mi_addr_reg[3]_i_1_n_4 ,\next_mi_addr_reg[3]_i_1_n_5 ,\next_mi_addr_reg[3]_i_1_n_6 ,\next_mi_addr_reg[3]_i_1_n_7 }),
        .S({\next_mi_addr[3]_i_2_n_0 ,\next_mi_addr[3]_i_3_n_0 ,\next_mi_addr[3]_i_4_n_0 ,\next_mi_addr[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[4] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_7 ),
        .Q(next_mi_addr[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[5] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_6 ),
        .Q(next_mi_addr[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[6] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_5 ),
        .Q(next_mi_addr[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[7] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_4 ),
        .Q(next_mi_addr[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[7]_i_1 
       (.CI(\next_mi_addr_reg[3]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[7]_i_1_n_0 ,\next_mi_addr_reg[7]_i_1_n_1 ,\next_mi_addr_reg[7]_i_1_n_2 ,\next_mi_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_araddr[7:4]),
        .O({\next_mi_addr_reg[7]_i_1_n_4 ,\next_mi_addr_reg[7]_i_1_n_5 ,\next_mi_addr_reg[7]_i_1_n_6 ,\next_mi_addr_reg[7]_i_1_n_7 }),
        .S({\next_mi_addr[7]_i_2_n_0 ,\next_mi_addr[7]_i_3_n_0 ,\next_mi_addr[7]_i_4_n_0 ,\next_mi_addr[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[8] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_7 ),
        .Q(next_mi_addr[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[9] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_6 ),
        .Q(next_mi_addr[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[4]),
        .Q(num_transactions_q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[5]),
        .Q(num_transactions_q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[6]),
        .Q(num_transactions_q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[7]),
        .Q(num_transactions_q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pushed_commands[0]_i_1 
       (.I0(pushed_commands_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[1]_i_1 
       (.I0(pushed_commands_reg[0]),
        .I1(pushed_commands_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pushed_commands[2]_i_1 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[2]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \pushed_commands[3]_i_1 
       (.I0(E),
        .I1(aresetn),
        .O(\pushed_commands[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pushed_commands[3]_i_2 
       (.I0(pushed_commands_reg[2]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[1]),
        .I3(pushed_commands_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[0] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[0]),
        .Q(pushed_commands_reg[0]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[1] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[1]),
        .Q(pushed_commands_reg[1]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[2] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[2]),
        .Q(pushed_commands_reg[2]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[3] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[3]),
        .Q(pushed_commands_reg[3]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \size_mask_q[0]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(size_mask[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \size_mask_q[1]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(size_mask[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \size_mask_q[2]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(size_mask[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \size_mask_q[3]_i_1 
       (.I0(s_axi_arsize[2]),
        .O(size_mask[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \size_mask_q[4]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(size_mask[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \size_mask_q[5]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(size_mask[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \size_mask_q[6]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(size_mask[6]));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[0]),
        .Q(size_mask_q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[1]),
        .Q(size_mask_q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[2]),
        .Q(size_mask_q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(1'b1),
        .Q(size_mask_q[31]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[3]),
        .Q(size_mask_q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[4]),
        .Q(size_mask_q[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[5]),
        .Q(size_mask_q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[6]),
        .Q(size_mask_q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    split_ongoing_reg
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(cmd_split_i),
        .Q(split_ongoing),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
endmodule

module hdmi_out_auto_pc_0_axi_protocol_converter_v2_1_26_axi3_conv
   (m_axi_rready,
    s_axi_rvalid,
    S_AXI_AREADY_I_reg,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_araddr,
    m_axi_arvalid,
    m_axi_arlen,
    m_axi_arlock,
    s_axi_rlast,
    s_axi_rready,
    m_axi_rvalid,
    s_axi_arsize,
    s_axi_arlen,
    aclk,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    aresetn,
    m_axi_arready,
    m_axi_rlast);
  output m_axi_rready;
  output s_axi_rvalid;
  output S_AXI_AREADY_I_reg;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [31:0]m_axi_araddr;
  output m_axi_arvalid;
  output [3:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output s_axi_rlast;
  input s_axi_rready;
  input m_axi_rvalid;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input aclk;
  input [31:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  input aresetn;
  input m_axi_arready;
  input m_axi_rlast;

  wire S_AXI_AREADY_I_reg;
  wire \USE_READ.USE_SPLIT_R.rd_cmd_ready ;
  wire \USE_R_CHANNEL.cmd_queue/inst/empty ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;

  hdmi_out_auto_pc_0_axi_protocol_converter_v2_1_26_a_axi3_conv \USE_READ.USE_SPLIT_R.read_addr_inst 
       (.E(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty(\USE_R_CHANNEL.cmd_queue/inst/empty ),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .rd_en(\USE_READ.USE_SPLIT_R.rd_cmd_ready ),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
  hdmi_out_auto_pc_0_axi_protocol_converter_v2_1_26_r_axi3_conv \USE_READ.USE_SPLIT_R.read_data_inst 
       (.empty(\USE_R_CHANNEL.cmd_queue/inst/empty ),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .rd_en(\USE_READ.USE_SPLIT_R.rd_cmd_ready ),
        .s_axi_rready(s_axi_rready));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "2" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module hdmi_out_auto_pc_0_axi_protocol_converter_v2_1_26_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;

  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_wready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  hdmi_out_auto_pc_0_axi_protocol_converter_v2_1_26_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.S_AXI_AREADY_I_reg(s_axi_arready),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(\^m_axi_arlock ),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
endmodule

module hdmi_out_auto_pc_0_axi_protocol_converter_v2_1_26_r_axi3_conv
   (rd_en,
    m_axi_rlast,
    s_axi_rready,
    m_axi_rvalid,
    empty);
  output rd_en;
  input m_axi_rlast;
  input s_axi_rready;
  input m_axi_rvalid;
  input empty;

  wire empty;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire rd_en;
  wire s_axi_rready;

  LUT4 #(
    .INIT(16'h0080)) 
    cmd_ready_i
       (.I0(m_axi_rlast),
        .I1(s_axi_rready),
        .I2(m_axi_rvalid),
        .I3(empty),
        .O(rd_en));
endmodule

(* CHECK_LICENSE_TYPE = "hdmi_out_auto_pc_0,axi_protocol_converter_v2_1_26_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_26_axi_protocol_converter,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module hdmi_out_auto_pc_0
   (aclk,
    aresetn,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 1.42857e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_out_processing_system7_0_0_FCLK_CLK1, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 1.42857e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN hdmi_out_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 1.42857e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN hdmi_out_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire NLW_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_bready_UNCONNECTED;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_inst_s_axi_awready_UNCONNECTED;
  wire NLW_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_wready_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_inst_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "2" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  hdmi_out_auto_pc_0_axi_protocol_converter_v2_1_26_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(NLW_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[3:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(NLW_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_inst_m_axi_wvalid_UNCONNECTED),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b1),
        .s_axi_wready(NLW_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module hdmi_out_auto_pc_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h4/8v0FBgXUomE5kJVs58UlO/ao4SLHpniPXt+fomPPYB6tv3U0iBfOL5737ZNNEhgP1kkKeMvq+
VxOLW94g7JZT6mWc5ZuQ7jgK8Qpa6+1xpVVQBB6gVSEeHij7ZHqPdYaLC9rL/SR7notnBC1OujFi
++mTu5z/HJZtnN4VJQw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Su6POoQw092/hg4JN8GOCSrLUa435VAUaqUned4C4G61yBHlUmaG63UO+KxY5pgyMrDH6/XH2bPa
fona2wB0Y0sw6W61PXOfiew7cH42baMY0P9UBRjH25EZTf72W3O8r7DNj16ob9pPi7bkuCd3aab3
hdfeY613n+hUbAXTLQqbhjqGmO9kFeC/VmdSITa02RauMnpfVxz1wLu9iUQ0V+mPTp6hvfNXlD0F
7oONLZJg+c6/+uSw1WbEiltO2Lplqvbb0sYbZjtTSEQZSdF4DiUdA0SGK+L75aDYGx3Z/ajCRpBx
Mr39wb5wiDr6SJ/QQ/JmYc+HrTs/fbN9BJ/Grg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JbOromwhdJgnOFMOfO8mpnyFC1anQPoDL/XeHYQuoY4+0yjNmPGasGLGjanpoUgfOYngBHPrFFFH
rapGBPsHEbT6JXWHeRJexf2moVhmq1sHJ7n+Jx1rVNuyclUCC08Fg3sy6FdUQmptKSpqOw1x0DV8
R9ZlmwLTkoN8IV6D7sg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XbCcyKbk3pmZ92QhZ1iCj+9jpzUJAn91N3YYwVHN3gwcgTU0NRr0oD7EmkLoZ8hVAhh/9YMUp7DE
059wcAzCBsD2W3CWY+GHUSJS57Xt2yi9tZH7binajEyHpCqaFKKO9WxDTO9XnYLVswRvAii0DOJL
mY+z3Z0uDx55BVWqbbvDkA5gABsZLueFt15rXRJPRnAjzWXhYzjiqC1WQDy5UHl/LBDlsOMuouyd
gM4k7zzEZUOy4o1sI2isD+6T/wd+iOsXvq39rguDUtkw3SR4GJmk+rBu3rBh+EvBHKxaWqQjGGNV
qWyrqd89LjZFGnXZ2jvsgxldJWCellgTK1ZEfA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dG5h8R2Fe36rfzcvmeDU4OapeKO/Lhe0DkL+4c9AG4It+1yVmtHeEWL8eVWMvHdPTwqJqgkMQbh4
OO9/9XZMyYCWFJTHu4ossKo7zKccfTeBbKfgP+rDEckDTGIWXihj2YJ2N0p6q9Ynpsz9qOLdoXTY
gZXwoOe4MrZBJWZrDOqkD1hQ+cRUV9c8S6FlH+AyBNj5dlaAM0Jyq6a8TvcRmLoZfdi1zFWXeTUW
/XfWQRP+vnqqV8VPdyfaJJzaKnG1u9PnvSFauc3SzydGZfICacU2pPxqAaJWzDYwSns+vd4vCu7u
e01UXo4XXeFCvO/9mye0QnyrDHhuE0b1Svw/jQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K8hvyEyHvgdg02DFF2GnEdLUq6j/uKT5fsI+Nkpbw14CRrq5p+STF83Or85VDleAax2TYln4LhGn
6G6INbZ4BdMuA4nVtyx5xaogScfMwbjrTAn0bqxT20M++g4cn4gW2g3oEFMnXaYCsLaJ58t4/T42
ocO8oqJeCowKICP/eM+B+/jSusNp4JILdp522MKky1zANadPwlv8a7QrMrJQrnb/lF8qC10yXqfM
LbKfbAEBaHlel46y7YBqdIimfeAVng194wkXobD6WuMhQOpFkigBOLQzoKQWN1TWeY5/rSQt9pcT
xLm+NEQmtlL61OudMCIqm++dCQSgE4NFJj1fCw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gSLVZdmdCqRy/3LoTp5M48T1hUUfGQp8cxVz4NQ+P65mrZ0oJJXHSaNbzdvtYH41+27aGh3RBbLb
pzz+TmeVuEVneG5nGe1VY2ogM1D7tBMRUvNgXK2PkSRLnk9tYgnxoYi0cYLBxa3piqBh44cdYXif
bT0Uh2vFogmdeH5hxVNFk8FEhULNtR/T9r9ilPNDQALb08fQM461sjlhS2jgRgH0X8LZqnBOii+F
7+GguDMENTlzU0XSYWEcGFH9V5PdYMehb0WgZeiqTchxRuQFmLjDhI4J5dkci8RmkLCwz4KyjfOi
S8Nkg20qh9otuAisfQTh4Qx2lC7x7BHgmuwy0w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
kXlkvzJI7Tq1glqNfjqmCb8YU69bhN9hH5OsWvFNj7VseyX6/5l9Mgif4B1r1LeKz06I27dmB9g7
AuHBFZ0bPN86mURBL/HK/dTOGyLYAveWeOIK1kqX56i4H9UNIUObEphcz9wdT0OgXHTPMxiIpJhT
1o5oYJW49mDsAv5yxe4FvPo6rFgZAiEo34vJGDxzz4//zJq0z+GxJNCibpLydZBWaJWRfsDUs9pm
1O6hS3KPIL5Evg1JOFt1uwKb1xEA08ETT+qYwg6zmFfwQbs6O7modRmBtEd1n9mrqsgCAviiLPtN
LUFiLdrywPt7LArLCRz4h5uHJxz/21Pj5m1VZtZq9nFmsbp6Lw/0RF1+nN8o+RIu+/tmu74xkL/8
nNEc9mEFy912OKP6WDP4Ajzg4gl9xhtaYA5eGkNB/43YjgGsmTe+L0dyxHIwa734JNMb5zC5dRtR
V4pCnWZKmnDJDXvMftedQzqQvdFwJg5hLxrHfkPD8LqiOwVck/Nt6QSF

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ADtaDIjUIR6zZBfz+lPRaDMdXcoufPACX4aSe06/DoTgIDvM+UOlm8rH20gKO3r8YdsuLtUh7rhz
ekJB22nBPUdbl3FvlGdQIgiCyJ8XgZYvvuOo9I765yKjFxQsFmQE0Ih86fqCqvYmRnsZkpk1uQ7v
JpqhWGBX6tLgYu/txP+ShnzFfkWGhj29JhYII0zqJMBCjGeM89F+mlH+X/YL5Q/fZYyh9Cr2CJx6
ofJpBZ1SPlXwgafXVi0QAUVuQEBmZYVn9Kze++tMEr6qv62ANq23LevYQfCsYKoY5iyf5U7jJ5Qx
eC9nG5Es4y6lz5giep7veaXdBFBHd7VuD56v4w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zFwVPvNmX5sBruiGDSfENTp6EBfydwYKhxWi0YDKQ4j0gu6AMV8yJP6GXeJs/A9Zgb1UFE+sJifk
OngE9N2vVRp43pAVauHQf1hUkSWPDJuZ9yEQZbR7F3mmiBKu/Aehj7KcAjv07FWv46HzxRL9E2xx
gpDOzAyNSNubxORv7bVYUV0C4Fr+tZRA6douG4rxi56npPfzIAZjyU4wPvwabxrJ9L4ZRuZXciLk
lJGTIJZTH2uclPmuo57jlIXGo1ZtQZgRCDfn7W02AQ7MDKblx47m+E+sUKKYHZlvf30GkPcwlucZ
ZcUcGnYaRCZnrhwFl0qxxXn2pO15vG4MJXOHMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lq86c/0SMuvdLuij6dbfI/ah4/50WGATVNRwXobLfbnZqWOhhEk3VDQATTxe7ZLrUauwrLuMoKhS
j4kqT2raqDijA51Tz7ee+F/MUKvyxGDJqfBi5JJX9y81LCXav7HpdRiPTy6w5O3tQoQbugh61D0B
oJBwNvL22Oi10e+Bu7H1yQvsbksxPAA8VE8HK+OJzZETk0PfHS2ySL5WXLQf7duD6CWmpWdLMrZQ
ojOqvNL31LsO1gZhssTk4RgyZUrZ3CboBbLWDxq2L/SsF5YiRIUPDTe17rRcrxa1y6LzMD/ve/nR
mptJOGxlUgLpJaPAA7jH3b+EQGlrHzHOsG8fFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 72640)
`pragma protect data_block
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
CLrFZnTM0MMmhYfXiWkOaqD1EQMA0Q==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
