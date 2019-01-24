-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Jan 21 18:30:21 2019
-- Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/zkq/Xilinx/svd_rtl/svd_rtl.srcs/sources_1/ip/axis_data_fifo_w27/axis_data_fifo_w27_stub.vhdl
-- Design      : axis_data_fifo_w27
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-fsgd2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity axis_data_fifo_w27 is
  Port ( 
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 1727 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 1727 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );

end axis_data_fifo_w27;

architecture stub of axis_data_fifo_w27 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axis_aresetn,s_axis_aclk,s_axis_tvalid,s_axis_tready,s_axis_tdata[1727:0],s_axis_tlast,m_axis_tvalid,m_axis_tready,m_axis_tdata[1727:0],m_axis_tlast";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_data_fifo_v2_0_0_top,Vivado 2018.3";
begin
end;
