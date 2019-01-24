`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2019 04:12:49 PM
// Design Name: 
// Module Name: svd_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module svd_top #(
parameter
	DATA_WIDTH = 27,
	PROD_WIDTH = 48,
	DATA_PARA  = 64,
	COL_A_MAX  = 16384,
	COL_U_MAX  = 256
)(
	// axi-s index input
	input  [32:0] ind_tdata,
	input  ind_tvalid,
	output ind_tready,
	// memory-A
	output [31:0]                     mat_a_wr_addr,
	output                            mat_a_wr_clk,
	output [DATA_WIDTH*DATA_PARA-1:0] mat_a_wr_din,
	output                            mat_a_wr_we,
	output [31:0]                     mat_a_rd_addr,
	output                            mat_a_rd_clk,
	input  [DATA_WIDTH*DATA_PARA-1:0] mat_a_rd_dout,
	output                            mat_a_rd_en,
	// memory_u 
	output [31:0]                     mat_u_wr_addr,
	output                            mat_u_wr_clk,
	output [DATA_WIDTH*DATA_PARA-1:0] mat_u_wr_din,
	output                            mat_u_wr_we,
	output [31:0]                     mat_u_rd_addr,
	output                            mat_u_rd_clk,
	input  [DATA_WIDTH*DATA_PARA-1:0] mat_u_rd_dout,
	output                            mat_u_rd_en,
	// memory_amp
	output reg [15:0]                 amp_wr_addr,
	output                            amp_wr_clk,
	output reg [PROD_WIDTH-1:0]       amp_wr_din,
	output reg                        amp_wr_we,
	// data size
	input  [15:0] col_a,
	input  [15:0] col_u,
	// clk
	input  clk,
	input  rst_n
);

reg signed [15:0] cnt_memload;


wire [15:0] col_max;

wire mat_a_valid;
wire mat_u_valid;
wire mat_even;
wire mat_a_last;
wire mat_u_last;
wire mat_sort;

wire [DATA_WIDTH-1:0] mat_a_data [DATA_PARA-1:0];
wire [DATA_WIDTH-1:0] mat_u_data [DATA_PARA-1:0];
reg  [DATA_WIDTH-1:0] mat_a_data_r [DATA_PARA-1:0];
reg  [DATA_WIDTH-1:0] mat_u_data_r [DATA_PARA-1:0];

wire [PROD_WIDTH-1:0] prod_a_a [DATA_PARA-1:0];
wire [PROD_WIDTH-1:0] prod_a_b [DATA_PARA-1:0];
wire [PROD_WIDTH-1:0] sum_a_a;
wire [PROD_WIDTH-1:0] sum_a_b;
wire sum_a_valid;
wire sum_even;
wire sum_a_last;
wire sum_sort;

wire [PROD_WIDTH-1:0] autocorr_a;
wire [PROD_WIDTH-1:0] autocorr_b;
reg  [PROD_WIDTH-1:0] autocorr_b_r;
wire [PROD_WIDTH-1:0] autocorr_bma;
wire [PROD_WIDTH-1:0] corr_a_b;
wire [31:0]           ind_corr;
wire autocorr_a_valid;
wire autocorr_b_valid;
reg  autocorr_b_valid_r;
wire corr_a_b_valid;
reg  corr_sort;
wire corr_reverse;


wire [4:0] angle_nc;
wire signed [DATA_WIDTH-1:0] angle;
wire signed [DATA_WIDTH-1:0] angle_div2;
wire angle_reverse;
wire angle_valid;


wire [4:0] sn_nc;
wire [4:0] cs_nc;
wire signed [DATA_WIDTH-1:0] sn;
wire signed [DATA_WIDTH-1:0] cs;
wire sn_cs_valid;

reg  signed [DATA_WIDTH-1:0] sn_r;
reg  signed [DATA_WIDTH-1:0] cs_r;
reg  sn_cs_valid_r;

reg  signed [15:0] cnt_memstore;

wire [DATA_WIDTH*DATA_PARA-1:0] mat_a_fifo_dout;
wire [DATA_WIDTH*DATA_PARA-1:0] mat_u_fifo_dout;
wire [DATA_WIDTH-1:0] mat_a_fifo_data [DATA_PARA-1:0];
wire [DATA_WIDTH-1:0] mat_u_fifo_data [DATA_PARA-1:0];
reg  mat_a_fifo_tready;
wire mat_a_fifo_tlast;
reg  mat_u_fifo_tready;
wire mat_u_fifo_tlast;
wire mat_fifo_tlast;

wire [DATA_WIDTH-1:0] mat_a_rot_1 [DATA_PARA-1:0];
wire [DATA_WIDTH-1:0] mat_a_rot_2 [DATA_PARA-1:0];
wire [DATA_WIDTH-1:0] mat_u_rot_1 [DATA_PARA-1:0];
wire [DATA_WIDTH-1:0] mat_u_rot_2 [DATA_PARA-1:0];
wire [15:0] cnt_memstore_rot;
wire mat_rot_tlast;

reg  [DATA_WIDTH-1:0] mat_a_rot_sum_1 [DATA_PARA-1:0];
reg  [DATA_WIDTH-1:0] mat_a_rot_sum_2 [DATA_PARA-1:0];
reg  [DATA_WIDTH-1:0] mat_u_rot_sum_1 [DATA_PARA-1:0];
reg  [DATA_WIDTH-1:0] mat_u_rot_sum_2 [DATA_PARA-1:0];
reg  [15:0] cnt_memstore_rot_sum;
reg  mat_rot_sum_tlast;
//reg  [15:0] cnt_memstore_rot_sum_r;

reg  [DATA_WIDTH-1:0] mat_a_din_data [DATA_PARA-1:0];
reg  [DATA_WIDTH-1:0] mat_u_din_data [DATA_PARA-1:0];
reg  [31:0]           ind_memstore;


genvar i;

//clock
assign mat_a_wr_clk = clk;
assign mat_a_rd_clk = clk;
assign mat_u_wr_clk = clk;
assign mat_u_rd_clk = clk;
assign amp_wr_clk   = clk;

// load counter
assign col_max = (col_a > col_u) ? (col_a * 2) : (col_u * 2);
assign ind_tready = (cnt_memload >= $signed(col_max - 1));

always_ff @(posedge clk or negedge rst_n) begin : proc_cnt_memload
	if(~rst_n) begin
		cnt_memload <= -1;
	end else begin
		if (cnt_memload == -1) begin
			if (ind_tvalid) begin
				cnt_memload <= 0;
			end
		end else begin
			cnt_memload <= cnt_memload + 1;
			if (cnt_memload >= (col_max - 1)) begin
				if (ind_tvalid) begin
					cnt_memload <= 0;
				end else begin
					cnt_memload <= -1;
				end
			end
		end
	end
end

// fetch data from memory
assign mat_a_rd_addr = ((~cnt_memload[0]) ? ind_tdata[31:16] : ind_tdata[15:0]) * COL_A_MAX + cnt_memload[15:1];
assign mat_u_rd_addr = ((~cnt_memload[0]) ? ind_tdata[31:16] : ind_tdata[15:0]) * COL_U_MAX + cnt_memload[15:1];
assign mat_a_rd_en   = (cnt_memload != -1) & (cnt_memload[15:1] < col_a);
assign mat_u_rd_en   = (cnt_memload != -1) & (cnt_memload[15:1] < col_u);

c_shift_ram_0 mat_a_valid_shift (mat_a_rd_en, clk, mat_a_valid);
c_shift_ram_0 mat_u_valid_shift (mat_u_rd_en, clk, mat_u_valid);
c_shift_ram_0 mat_even_shift    (cnt_memload[0], clk, mat_even);
c_shift_ram_0 mat_sort_shift    (ind_tdata[32] , clk, mat_sort);
c_shift_ram_0 mat_a_last_shift  ((cnt_memload == col_a * 2 - 1) , clk, mat_a_last);
c_shift_ram_0 mat_u_last_shift  ((cnt_memload == col_u * 2 - 1) , clk, mat_u_last);

for (i = 0; i < DATA_PARA; i = i + 1) begin
	assign mat_a_data[i] = mat_a_rd_dout[(i+1)*DATA_WIDTH-1 : i*DATA_WIDTH];
	assign mat_u_data[i] = mat_u_rd_dout[(i+1)*DATA_WIDTH-1 : i*DATA_WIDTH];
	always_ff @(posedge clk) begin : proc_mat_data_r
		mat_a_data_r[i] <= mat_a_data[i];
		mat_u_data_r[i] <= mat_u_data[i];
	end
end

// data fifo
axis_data_fifo_w27 fifo_mat_a(
	.s_axis_aclk    (clk), 
	.s_axis_aresetn (rst_n), 
	.s_axis_tvalid  (mat_a_valid), 
	.s_axis_tready  (), 
	.s_axis_tdata   (mat_a_rd_dout), 
	.s_axis_tlast   (mat_a_last), 
	.m_axis_tvalid  (), 
	.m_axis_tready  (mat_a_fifo_tready),
	.m_axis_tdata   (mat_a_fifo_dout),
	.m_axis_tlast   (mat_a_fifo_tlast) 
);

axis_data_fifo_w27 fifo_mat_u(
	.s_axis_aclk    (clk), 
	.s_axis_aresetn (rst_n), 
	.s_axis_tvalid  (mat_u_valid), 
	.s_axis_tready  (), 
	.s_axis_tdata   (mat_u_rd_dout),
	.s_axis_tlast   (mat_u_last),  
	.m_axis_tvalid  (), 
	.m_axis_tready  (mat_u_fifo_tready),
	.m_axis_tdata   (mat_u_fifo_dout),
	.m_axis_tlast   (mat_u_fifo_tlast)
);

//index fifo 

axis_data_fifo_32 fifo_ind_1(
	.s_axis_aclk    (clk), 
	.s_axis_aresetn (rst_n), 
	.s_axis_tvalid  (ind_tready), 
	.s_axis_tready  (), 
	.s_axis_tdata   (ind_tdata),
	.m_axis_tvalid  (), 
	.m_axis_tready  (autocorr_b_r),
	.m_axis_tdata   (ind_corr)
);
axis_data_fifo_32 fifo_ind_2(
	.s_axis_aclk    (clk), 
	.s_axis_aresetn (rst_n), 
	.s_axis_tvalid  (ind_tready), 
	.s_axis_tready  (), 
	.s_axis_tdata   (ind_tdata),
	.m_axis_tvalid  (), 
	.m_axis_tready  (mat_rot_sum_tlast),
	.m_axis_tdata   (ind_memstore)
);
// get sum of product
for (i = 0; i < DATA_PARA; i = i + 1) begin
	mult_gen_0 multi_a_a(clk, mat_a_data[i], mat_a_data[i],   prod_a_a[i]);
	mult_gen_0 multi_a_b(clk, mat_a_data[i], mat_a_data_r[i], prod_a_b[i]);
end

sum_64 #(PROD_WIDTH) sum_64_a_a (clk, prod_a_a, sum_a_a);
sum_64 #(PROD_WIDTH) sum_64_a_b (clk, prod_a_b, sum_a_b);

c_shift_ram_1 sum_valid_shift (mat_a_valid, clk, sum_a_valid);
c_shift_ram_1 sum_even_shift  (mat_even,    clk, sum_even);
c_shift_ram_1 sum_last_shift  (mat_a_last,  clk, sum_a_last);
c_shift_ram_1 sum_sort_shift  (mat_sort,    clk, sum_sort);

accummulator #(PROD_WIDTH) acc_a (clk, sum_a_valid & ~sum_even, rst_n, sum_a_last, sum_a_a, autocorr_a, autocorr_a_valid);
accummulator #(PROD_WIDTH) acc_b (clk, sum_a_valid &  sum_even, rst_n, sum_a_last, sum_a_a, autocorr_b, autocorr_b_valid);
accummulator #(PROD_WIDTH) acc_c (clk, sum_a_valid &  sum_even, rst_n, sum_a_last, sum_a_b, corr_a_b,   corr_a_b_valid);
always_ff @(posedge clk) begin corr_sort <= sum_sort; end
assign corr_reverse = corr_sort & (autocorr_b > autocorr_a);
assign autocorr_bma = autocorr_b - autocorr_a;
always_ff @(posedge clk or negedge rst_n) begin : proc_autocorr_b_r
	if(~rst_n) begin
		autocorr_b_valid_r <= 0;
		autocorr_b_r <= 0;
	end else begin
		autocorr_b_valid_r <= autocorr_b_valid;
		autocorr_b_r <= corr_reverse ? autocorr_a : autocorr_b;
	end
end

// write amplitude
always_comb begin : proc_amp_wr
	if (autocorr_a_valid) begin
		amp_wr_addr = ind_corr[31:16];
		amp_wr_din  = corr_reverse ? autocorr_b : autocorr_a;
		amp_wr_we   = 1;
	end else if (autocorr_b_valid_r) begin
		amp_wr_addr = ind_corr[15:0];
		amp_wr_din  = autocorr_b_r;
		amp_wr_we   = 1;
	end else begin
		amp_wr_addr = 0;
		amp_wr_din  = 0;
		amp_wr_we   = 0;
	end
end

// angle 

cordic_atan cordic_atan_inst (
	.aclk                    (clk), 
	.aresetn                 (rst_n), 
	.s_axis_cartesian_tvalid (autocorr_b_valid), 
	.s_axis_cartesian_tuser  (corr_reverse),
	.s_axis_cartesian_tdata  ({5'h0, autocorr_bma[PROD_WIDTH-1:PROD_WIDTH-27], 5'h0, corr_a_b[PROD_WIDTH-2:PROD_WIDTH-28]}), 
	.m_axis_dout_tvalid      (angle_valid), 
	.m_axis_dout_tuser       (angle_reverse),
	.m_axis_dout_tdata       ({angle_nc, angle})
);

assign angle_div2 = angle_reverse ? (angle / 2 + (1 << (DATA_WIDTH - 4))) : (angle / 2);

cordic_sincos cordic_sincos_inst(
	.aclk                    (clk), 
	.s_axis_phase_tvalid     (angle_valid), 
  	.s_axis_phase_tdata      ({5'h0, angle_div2}), 
  	.m_axis_dout_tvalid      (sn_cs_valid), 
  	.m_axis_dout_tdata       ({cs_nc, cs, sn_nc, sn})
);

always_ff @(posedge clk) begin : proc_sn_cs
	if(sn_cs_valid) begin
		sn_r <= sn;
		cs_r <= cs;
	end
end

always_ff @(posedge clk or negedge rst_n) begin : proc_sn_cs_valid_r
	if(~rst_n) begin
		sn_cs_valid_r <= 0;
	end else begin
		sn_cs_valid_r <= sn_cs_valid;
	end
end

// store counter
assign mat_fifo_tlast = (mat_a_fifo_tlast | ~mat_a_fifo_tready) & (mat_u_fifo_tlast | ~mat_u_fifo_tready);
always_ff @(posedge clk or negedge rst_n) begin : proc_cnt_memstore
	if(~rst_n) begin
		cnt_memstore <= -1;
		mat_a_fifo_tready <= 0;
		mat_u_fifo_tready <= 0;
	end else begin
		if (cnt_memstore == -1) begin
			if (sn_cs_valid) begin
				cnt_memstore <= 0;
				mat_a_fifo_tready <= 1;
				mat_u_fifo_tready <= 1;
			end
		end else begin
			cnt_memstore <= cnt_memstore + 1;
			if (mat_a_fifo_tlast) begin
				mat_a_fifo_tready <= 0;
			end
			if (mat_u_fifo_tlast) begin
				mat_u_fifo_tready <= 0;
			end
			if (mat_fifo_tlast) begin
				if (sn_cs_valid) begin
					cnt_memstore <= 0;
					mat_a_fifo_tready <= 1;
					mat_u_fifo_tready <= 1;
				end else begin
					cnt_memstore <= -1;
					mat_a_fifo_tready <= 0;
					mat_u_fifo_tready <= 0;
				end
			end
		end
	end
end

// rotate
for (i = 0; i < DATA_PARA; i = i + 1) begin
	assign mat_a_fifo_data[i] = mat_a_fifo_dout[(i+1)*DATA_WIDTH-1:i*DATA_WIDTH];
	assign mat_u_fifo_data[i] = mat_u_fifo_dout[(i+1)*DATA_WIDTH-1:i*DATA_WIDTH];

	mult_gen_1 multi_rot_a1(
		.CLK(clk), 
		.A(mat_a_fifo_data[i]), 
		.B(cnt_memstore[0] ? cs_r : sn_r),
		.P(mat_a_rot_1[i])
	);
	mult_gen_1 multi_rot_a2(
		.CLK(clk), 
		.A(mat_a_fifo_data[i]), 
		.B(cnt_memstore[0] ? -sn_r : cs_r),
		.P(mat_a_rot_2[i])
	);
	mult_gen_1 multi_rot_u1(
		.CLK(clk), 
		.A(mat_u_fifo_data[i]), 
		.B(cnt_memstore[0] ? cs_r : sn_r),
		.P(mat_u_rot_1[i])
	);
	mult_gen_1 multi_rot_u2(
		.CLK(clk), 
		.A(mat_u_fifo_data[i]), 
		.B(cnt_memstore[0] ? -sn_r : cs_r),
		.P(mat_u_rot_2[i])
	);
	always_ff @(posedge clk) begin : proc_mat_a_rot_sum
		mat_a_rot_sum_1[i] <= mat_a_rot_1[i];
		mat_u_rot_sum_1[i] <= mat_u_rot_1[i];
		if(cnt_memstore_rot[0] == 0) begin
			mat_a_rot_sum_2[i] <= mat_a_rot_2[i];
			mat_u_rot_sum_2[i] <= mat_u_rot_2[i];
		end else begin
			mat_a_rot_sum_2[i] <= mat_a_rot_2[i] + mat_a_rot_sum_2[i];
			mat_u_rot_sum_2[i] <= mat_u_rot_2[i] + mat_u_rot_sum_2[i];
		end
	end
end

c_shift_ram_2 cnt_memstore_shift  ({mat_fifo_tlast, cnt_memstore} , clk, {mat_rot_tlast, cnt_memstore_rot});
always_ff @(posedge clk or negedge rst_n) begin : proc_cnt_memstore_rot_sum
	if(~rst_n) begin
		cnt_memstore_rot_sum <= -1;
		mat_rot_sum_tlast    <= 0;
	end else begin
		cnt_memstore_rot_sum <= cnt_memstore_rot;
		mat_rot_sum_tlast    <= mat_rot_tlast;
	end
end

//write back
assign mat_a_wr_addr = ((~cnt_memstore_rot_sum[0]) ? ind_memstore[31:16] : ind_memstore[15:0]) * COL_A_MAX + cnt_memstore_rot_sum[15:1];
assign mat_u_wr_addr = ((~cnt_memstore_rot_sum[0]) ? ind_memstore[31:16] : ind_memstore[15:0]) * COL_U_MAX + cnt_memstore_rot_sum[15:1];
assign mat_a_wr_we   = (cnt_memstore_rot_sum != -1) & (cnt_memstore_rot_sum[15:1] < col_a);
assign mat_u_wr_we   = (cnt_memstore_rot_sum != -1) & (cnt_memstore_rot_sum[15:1] < col_u);
for (i = 0; i < DATA_PARA; i = i + 1) begin
	always_comb begin : proc_mat_wr_din
		if (~cnt_memstore_rot_sum[0]) begin
			mat_a_din_data[i] = mat_a_rot_sum_1[i] + mat_a_rot_1[i];
			mat_u_din_data[i] = mat_u_rot_sum_1[i] + mat_u_rot_1[i];
		end else begin
			mat_a_din_data[i] = mat_a_rot_sum_2[i];
			mat_u_din_data[i] = mat_u_rot_sum_2[i];
		end
	end
	assign mat_a_wr_din[(i+1)*DATA_WIDTH-1 : i*DATA_WIDTH] = mat_a_din_data[i];
	assign mat_u_wr_din[(i+1)*DATA_WIDTH-1 : i*DATA_WIDTH] = mat_u_din_data[i];
end
endmodule
