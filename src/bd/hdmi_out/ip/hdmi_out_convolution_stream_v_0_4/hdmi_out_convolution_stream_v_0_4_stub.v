// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu May 16 18:24:10 2024
// Host        : m210-30 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               p:/24spring/engs128/workspace/Nestor_Jason/Zybo-hdmi-out-master/Zybo-hdmi-out-master/src/bd/hdmi_out/ip/hdmi_out_convolution_stream_v_0_4/hdmi_out_convolution_stream_v_0_4_stub.v
// Design      : hdmi_out_convolution_stream_v_0_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "convolution_stream_v1_0,Vivado 2022.1" *)
module hdmi_out_convolution_stream_v_0_4(s_axis_tready, s_axis_tvalid, s_axis_tdata, 
  s_axis_tlast, s_axis_tuser, axis_aclk, m_axis_tready, m_axis_tvalid, m_axis_tdata, 
  m_axis_tlast, m_axis_tuser, s00_axi_aclk, s00_axi_aresetn, s00_axi_awaddr, s00_axi_awprot, 
  s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, 
  s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, 
  s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, 
  s00_axi_rvalid, s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="s_axis_tready,s_axis_tvalid,s_axis_tdata[23:0],s_axis_tlast,s_axis_tuser[0:0],axis_aclk,m_axis_tready,m_axis_tvalid,m_axis_tdata[23:0],m_axis_tlast,m_axis_tuser[0:0],s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[6:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[6:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  output s_axis_tready;
  input s_axis_tvalid;
  input [23:0]s_axis_tdata;
  input s_axis_tlast;
  input [0:0]s_axis_tuser;
  input axis_aclk;
  input m_axis_tready;
  output m_axis_tvalid;
  output [23:0]m_axis_tdata;
  output m_axis_tlast;
  output [0:0]m_axis_tuser;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [6:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [6:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
