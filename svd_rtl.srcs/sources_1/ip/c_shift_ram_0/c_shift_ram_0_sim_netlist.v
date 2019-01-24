// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Jan 20 13:28:18 2019
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top c_shift_ram_0 -prefix
//               c_shift_ram_0_ c_shift_ram_1_sim_netlist.v
// Design      : c_shift_ram_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_1,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_shift_ram_0
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "3" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_shift_ram_0_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "3" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "virtexuplus" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_shift_ram_0_c_shift_ram_v12_0_12
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "3" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_shift_ram_0_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
R80NnScBgIZD14acGTeYZyZzlDoMDRJH97QvrM1z3/BPxjYOI5xO+RmLRE3ogivikKxeQqDB3hYo
CtT6MXJE8w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pzFf5UkhQCihEthT9/vXIu9qyyEco3ugn72RSG7p68vod9TXq7nS9azLrnGkzXHs3PQFBkq+3+ZG
PNN41vDN58/lK8pIjiAlp2V0xXr8ZRf/QoS3nU9pnZ3CEwxt9CGwUMks2MBnm+VSjWWRxbkUaTxZ
+kjzVWvQpUuyFFsOEs8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xDcafb3KrEW7vk1Eyiww/9CKbzlKF9C0uKrVBz5bHy5+6GMNsnwfCSkgxU14+VriR3jhdDN7viwB
M3a2pKPouTEOz066rknyw5X/sQ4hniBD3iUl4NQWkHTGym3kv31ZUeZYdl5ODPvzfUJOWUvkAXp/
gf4rtgV5FBbGm8qJS4jxuFSsv4rhcb7t+cae5sULvX9h7Uh0lEoAlNX3YmEW0fWj4bhIgTdzT2gk
C1ytdGU/UAnitwmujc/k+32KWV0i/o3dHRhIc31iawLLSmuBJYefDEaLG6KE8nGHeuho45Se0dhe
7kIaZp4SW1wGf7C0xxqwh1cgZ7+6eWgYBqVY1g==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OrzITnToGC+ryHZVkpDHCj6CgE4vEVrPZ7Z829783FsE2zjugDCdpipuFZ7ikbeX4Bc52TEJ4mFm
0OxylPcCXPIE74pJ186gBXkmldW4bGFMhTmUHJ94bRAsyJjr329fm+j77y2NmfbHMVOsljahWWK4
OMppytgOrZcnsnsORsbXvvikZALiCB2t+Qc4RdHc3/98o+DDvRf+gwTZNX0GMOitJmVVvqxqw6No
K3aHL26WS+5291/TUz7aF7ySSp+k84h+0omwPrcy0Xc3URWaoYbqLrWiEi22RgQYitI1tEsa+afh
tv3h9WNr+65gWTbdbwWyOz1NeXJSaNV/mc+/Lg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
riYGAyaVfIXieMgcJVFsucQ9kUNBkyzgx5CLlDibSmqSJjCaDvK63ymwoZpsGDT9Rugub8H1Y8xX
XUpLlzZGCXrlWs6NgjXfNxVpLlkmz7GswYkQ6KhUkZhRuPh0HrpJPt1ne+1pTM6fzi5LXsyTv6sn
TisWpJPdsnmBDHgM6jupb4Iv3OG7/q/NPck9K59oFLN+AyKeQ/8pEy2j7xpMiFTRlE1OTJj2mjHF
yWQWyURMafr1KK5t9Wu7YuocfKiTo0f6okHNafEo/nNpObW1D/liUJlS5GVguNNbnFjSuun9SM4T
MXhUoU0rVPqSkeCGnTpMMYK0MY5IwmbyZXn/fQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
HyAIbEI1uxEAA90t6+VWFTmyUje1JDZQZoMv6A5VyFWA8tJ80b/Pwhc93aHby8xZos0WjlEANrxF
3hJ/l8XJYMVZWlVytBIRAZYGbhnMBOGo/5sjE6O2Ap0308iwfA50rb1ZITdKRqNiW+PlWkaGC+3R
QMUfNUa7cSm841V7mmc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GUEL70ZQ78wO25wq2V+5JNZcUKzj485nYHAlIxulC+dFYZ1T3bS7X0juNGn/cdIyRbeWgA5z1viA
KyiSR064Z0BmWFsIYHfLEP1CENE6B/DkEgUM//4pBnGxH0CUe8wWHQBcyJQAxQHemECYQ5/QfTqT
96OTv0jwZ8yRjX1vKXS1qZKREGwNAsV3Kgrd9M5oaNz3PuISlyOOLoxPx9Qvu0Z0QYAzZbksLAI6
oekHTbR7CXs/P7+GCnbyf0lD6RFUyKASz8PAAvPi/+knG0A5BGQv9W8rEQ1GlCyJMbWqS7UMYIM5
Aany0Gd6zUtHqzCJMTpR0Gv6o8IS9bMCD8CICQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zt4U6CczFaCd1NouNYqsok06W3GBRtZ/nWwCdogXBGWvcbEn2uJNw3TAhSx9e+fVTayV988saNQ0
2QY2b1ZbiOzF6nyIfUu5NHiuZpqxhiyvDdjOHujE4w30M4545j1O9Zm40pfZFwT/NABrJ5amZ72x
5TmH3WFpYUTiTV9JexV/mT6QXvpI3OEk6FSujqmBes3QVOAknPjFcUQU0V9aSaCJ0zHA0o2lAr8V
hxKQu+nwFzpTNUOepb4Yk0Z9E+S/kJ+AN+XysHzVXHYWXG3zb1JcsBVyezUPrpq2UxbzTvEaBJaF
XsHGEUP+jB3t9f+ALRjvccZCa+Kl1WGW92Pucg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BCEYdKLLKcINEDX9vujxdw9wkdgssaXdjzMt72+mpc6EqFOqmCuGGvHuj6fKFsigpiHHtLUrsgTE
sYAS5Kb8MFfl5+J5UjdcN7gO/J1rVv0Up8FnD1X7PxktBg52/sKletPaY34BBQaU2qCwDJm3Xsj2
jPf27YVZfYD3cdRP0oM2gTsOTq7Dg64fqIfbQgXLznJGxbXmDM5FvUSXtEwH8MwrLb3E6Q48kztI
IkKe/oMZfaLnDKo4oazcQ35gPRxXI3cRPVGSGKiAshJtKCpLvvaJDTDMU52SZ+ILR1AHFMPFb/AA
+76OGM/7JyHFfnMZemO57W4v3iyc41nY0y4/RA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4224)
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
