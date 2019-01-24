// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Jan 20 12:34:53 2019
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/zkq/Xilinx/svd_rtl/svd_rtl.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [26:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [26:0]B;
  wire CLK;
  wire [47:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "27" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "27" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "67" *) 
  (* C_OUT_LOW = "20" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "27" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "27" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "4" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "67" *) 
(* C_OUT_LOW = "20" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtexuplus" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [26:0]A;
  input [26:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [47:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [26:0]A;
  wire [26:0]B;
  wire CLK;
  wire [33:0]\^P ;
  wire [47:0]PCASC;
  wire [46:33]NLW_i_mult_P_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign P[47] = \^P [33];
  assign P[46] = \^P [33];
  assign P[45] = \^P [33];
  assign P[44] = \^P [33];
  assign P[43] = \^P [33];
  assign P[42] = \^P [33];
  assign P[41] = \^P [33];
  assign P[40] = \^P [33];
  assign P[39] = \^P [33];
  assign P[38] = \^P [33];
  assign P[37] = \^P [33];
  assign P[36] = \^P [33];
  assign P[35] = \^P [33];
  assign P[34] = \^P [33];
  assign P[33:0] = \^P [33:0];
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "27" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "27" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "67" *) 
  (* C_OUT_LOW = "20" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P({\^P [33],NLW_i_mult_P_UNCONNECTED[46:33],\^P [32:0]}),
        .PCASC(PCASC),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Llc8bgjSZ+U4lT15wAKbYO13Fe0KSELK/XB5QgpEuqmhEdg/FEBnm4fZeRbFAT6k7MF6iSOhk+7+
Ko/aGe/wjyGVwEu0Yf5avF/TybFOibABRoCMyCFx5RYEa85/SjWgONjzNWpjhZBPu7vDn0SEIcwm
7Kt0nPDXey604E4bq9UAZxFxbqGIXRG0N/Mq7TnfuWCkUNesj+IqpOMp3Ej9E1yXoGg8x8Hv+Ktp
bEZ2hP/TE2uYTm7aaHCyq/+lBkVi2Mk9X6r++tn7a4oTKzp0E/jgHdXAkGyDIbHtDo++Y2d5zSg5
737GTZs/FsGVBG1d4ZST8IjOVov4usPnv2c5Bw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
J28GussZDoy1idoIOLTRiXE3FMKnvhPgnAEj6B/vHAbWDYdKW1CMfBsal5ZF5FUrwIHuL8noDk4i
HOpCsgZRDBw/b6sCkMjJjDHJ4QhBLvLozwxFRAETxWbrpSm3LO//MJb6wc5SkgZIlaB9LMuOj6AC
ch3t3KqFe4b3Lnlyi7wa6zMIhu5EQuatlUpCEANtNKfVKSWLxvOGhL5aIrGaMR1w18YIERhO4zz0
LjfRtXgH7R7WJhK+I8SeBPZhwZpDpMW6/RjCkcTaCZcQE43xyE6LjFtQPNAOtFl4fnIk4yNwQfhK
mFE+sJnstYgrb2R4NUachP1V5mbWvU0v46HBsw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12800)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
