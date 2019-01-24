// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Jan 23 16:18:04 2019
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/zkq/Xilinx/svd_rtl/svd_rtl.srcs/sources_1/ip/c_shift_ram_1/c_shift_ram_1_sim_netlist.v
// Design      : c_shift_ram_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_1,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_shift_ram_1
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
  (* c_depth = "7" *) 
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
  c_shift_ram_1_c_shift_ram_v12_0_12 U0
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
(* C_DEPTH = "7" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "virtexuplus" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_shift_ram_1_c_shift_ram_v12_0_12
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
  (* c_depth = "7" *) 
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
  c_shift_ram_1_c_shift_ram_v12_0_12_viv i_synth
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
ORsEEVaypHOhM5hR4+PzhIpw7sw/xY7/X0Nf0RwYUKPFXSF93Tzt169O6sZjZOVTpmroTLffHImN
d/h5Gtmmd1zs/DOyf3eaRd0ccCCHJJ2x/c1gam2qWDiEWNL5RfA3yRF53aEF8BI17hcQkdP6ZXRi
G+WGQDuf/VsnHSozG9mBv3/Ni8bFqXfZlhOshBgMoVUNbSQbRMtUDAiZhaIJetvkqUw5uRXq1ke4
bfPHumfcE5QCRIwyOSqATt/5TWCz6tFWBgT8aWErehN4YZawGtCgP3Zeiy7svucWtG1D9yG+TCgs
A9goSIlGn9zPxEUe4ARmmJpqxQBzBaTz52XiAg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m3H/tGyUw68vPM+oyxab5jIAbatiQpgzMMgh4XAUQ4hbj+ZHDBGkxUmf84tUI633tL6AyKWsAOBZ
SAN7w8QvLKTPLGWx4+MDYkMC3LQXIckGHiVEW3pbB24NpsUkPQr5PTEHoS5gx8u3rERrktJKaRqy
dKlVn7jkwinf9IX3/Ea+qJ6JiiryA+ZBsdkrl26vKPxSjwOD9uLuDSjc2MYxe0GW7bKGSDCcLtHx
jiEHWFAQRYcn8NSEdefhUHOJHKmoAxqpqV6tZXa3gbaDC44rI7VmA3NlyqPXVQZoxN5VXLmsQzFR
vHSX+Of2Xyh8VordQLuhcg1xgKUBc+FQAEjdHg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4512)
`pragma protect data_block
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
dTLOqwL5B8ad
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
