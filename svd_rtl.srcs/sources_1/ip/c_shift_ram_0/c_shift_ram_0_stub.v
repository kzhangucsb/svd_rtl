// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Feb 19 13:47:52 2019
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/zkq/Xilinx/svd_rtl/svd_rtl.srcs/sources_1/ip/c_shift_ram_0/c_shift_ram_0_stub.v
// Design      : c_shift_ram_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *)
module c_shift_ram_0(D, CLK, Q)
/* synthesis syn_black_box black_box_pad_pin="D[0:0],CLK,Q[0:0]" */;
  input [0:0]D;
  input CLK;
  output [0:0]Q;
endmodule
