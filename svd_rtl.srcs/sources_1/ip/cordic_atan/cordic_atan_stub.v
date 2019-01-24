// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Jan 20 15:06:46 2019
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/zkq/Xilinx/svd_rtl/svd_rtl.srcs/sources_1/ip/cordic_atan/cordic_atan_stub.v
// Design      : cordic_atan
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cordic_v6_0_14,Vivado 2018.3" *)
module cordic_atan(aclk, aresetn, s_axis_cartesian_tvalid, 
  s_axis_cartesian_tuser, s_axis_cartesian_tdata, m_axis_dout_tvalid, m_axis_dout_tuser, 
  m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_cartesian_tvalid,s_axis_cartesian_tuser[0:0],s_axis_cartesian_tdata[63:0],m_axis_dout_tvalid,m_axis_dout_tuser[0:0],m_axis_dout_tdata[31:0]" */;
  input aclk;
  input aresetn;
  input s_axis_cartesian_tvalid;
  input [0:0]s_axis_cartesian_tuser;
  input [63:0]s_axis_cartesian_tdata;
  output m_axis_dout_tvalid;
  output [0:0]m_axis_dout_tuser;
  output [31:0]m_axis_dout_tdata;
endmodule
