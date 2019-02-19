`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2019 05:44:04 PM
// Design Name: 
// Module Name: svd_tb
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


module svd_tb#(
parameter
	DATA_WIDTH = 27,
	PROD_WIDTH = 48,
	DATA_PARA  = 128,
	COL_A_MAX  = 6,
	COL_U_MAX  = 2
)();


wire [32:0] ind_tdata;
reg  ind_tvalid   ;
wire ind_tready   ;

wire [31:0]                     mat_a_wr_addr;
wire                            mat_a_wr_clk ;
wire [DATA_WIDTH*DATA_PARA-1:0] mat_a_wr_din ;
wire                            mat_a_wr_we  ;
wire [31:0]                     mat_a_rd_addr;
wire                            mat_a_rd_clk ;
reg  [DATA_WIDTH*DATA_PARA-1:0] mat_a_rd_dout;
wire                            mat_a_rd_en  ;

// wire [31:0]                     mat_u_wr_addr;
// wire                            mat_u_wr_clk ;
// wire [DATA_WIDTH*DATA_PARA-1:0] mat_u_wr_din ;
// wire                            mat_u_wr_we  ;
// wire [31:0]                     mat_u_rd_addr;
// wire                            mat_u_rd_clk ;
// reg  [DATA_WIDTH*DATA_PARA-1:0] mat_u_rd_dout;
// wire                            mat_u_rd_en  ;

reg [15:0]                      amp_wr_addr  ;
wire                            amp_wr_clk   ;
reg [PROD_WIDTH-1:0]            amp_wr_din   ;
reg                             amp_wr_we    ;
wire done;
wire [31:0] col_a        ;
wire [31:0] col_u        ;

reg clk;
reg rst_n;

reg  [DATA_WIDTH*DATA_PARA-1:0] mat_a_mem [0:4095];
// reg  [DATA_WIDTH*DATA_PARA-1:0] mat_u_mem [0:1023];
reg  [PROD_WIDTH-1:0] amp_mem [0:255];
reg  [31:0] ind_mem[0:32639];
reg  [31:0] ind_mem_sort[0:1791];
reg  [15:0] ind_cnt;
reg  [15:0] itr_cnt;

reg  [31:0] mat_a_rd_addr_r1;
reg  [31:0] mat_a_rd_addr_r2;
reg  [31:0] mat_u_rd_addr_r1;
reg  [31:0] mat_u_rd_addr_r2;

assign col_a = 3;
assign col_u = 1;

always_ff @(posedge mat_a_rd_clk) begin 
	mat_a_rd_addr_r1 <= mat_a_rd_addr;
	mat_a_rd_addr_r2 <= mat_a_rd_addr_r1;
	mat_a_rd_dout    <= mat_a_mem[mat_a_rd_addr_r2];
end

always_ff @(posedge mat_a_wr_clk) begin 
	if (mat_a_wr_we) begin
		mat_a_mem[mat_a_wr_addr] <= mat_a_wr_din;
	end
end

always_ff @(posedge amp_wr_clk) begin 
	if (amp_wr_we) begin
		amp_mem[amp_wr_addr] <= amp_wr_din;
	end
end

// always_ff @(posedge mat_u_rd_clk) begin 
// 	mat_u_rd_addr_r1 <= mat_u_rd_addr;
// 	mat_u_rd_addr_r2 <= mat_u_rd_addr_r1;
// 	mat_u_rd_dout    <= mat_u_mem[mat_a_rd_addr_r2];
// end

// always_ff @(posedge mat_u_wr_clk) begin 
// 	if (mat_u_wr_we) begin
// 		mat_u_mem[mat_a_wr_addr] <= mat_u_wr_din;
// 	end
// end

assign ind_tdata = {(itr_cnt >= 7), (itr_cnt >= 7) ? ind_mem_sort[ind_cnt] : ind_mem[ind_cnt]};

always_ff @(posedge clk or negedge rst_n) begin 
	if(~rst_n) begin
		ind_tvalid <= 0;
		ind_cnt <= 0;
		itr_cnt <= 0;
	end else begin
		if ((ind_cnt == 0) && (itr_cnt == 0)) begin
			ind_tvalid <= 1;
		end
		if (ind_tready & ind_tvalid) begin
			ind_cnt <= ind_cnt + 1;
			if (ind_cnt == (itr_cnt >= 7 ? 1791: 8127)) begin 
				ind_cnt <= 0;
				itr_cnt <= itr_cnt + 1;
			end
			if ((itr_cnt == 7) && (ind_cnt == 1791)) begin 
				ind_tvalid <= 0;
			end
			
		end
	end
end

initial begin
	rst_n = 0;
	clk = 0;
	#2 clk = ~clk;
	#2 clk = ~clk;
	rst_n = 1;
	while(1) begin
		#2 clk = ~clk;
	end
end

initial begin
	$readmemb("/home/zkq/Documents/MATLAB/testcode/mat_a.bintext", mat_a_mem);
	// $readmemb("/home/zkq/Documents/MATLAB/testcode/mat_u.bintext", mat_u_mem);
	$readmemh("/home/zkq/Documents/py/parajacobi_128.mem",ind_mem);
	$readmemh("/home/zkq/Documents/py/bitonicsort_128.mem",ind_mem_sort);
	# 2000 while(1) begin
		#10 if (done) begin
			$writememb("/home/zkq/Documents/MATLAB/testcode/mat_a_result.bintext", mat_a_mem);
			$writememb("/home/zkq/Documents/MATLAB/testcode/amp_result.bintext", amp_mem);
			$finish();
		end 
	end
end

svd_top #(
	.DATA_WIDTH(DATA_WIDTH ),
	.PROD_WIDTH(PROD_WIDTH ),
	.DATA_PARA (DATA_PARA  ),
	.COL_A_MAX (COL_A_MAX  ),
	.COL_U_MAX (COL_U_MAX  )
)svd_inst(
	// axi-s index input
	.ind_tdata     (ind_tdata),
	.ind_tvalid    (ind_tvalid),
	.ind_tready    (ind_tready),

	.mat_a_wr_addr (mat_a_wr_addr),
	.mat_a_wr_clk  (mat_a_wr_clk),
	.mat_a_wr_din  (mat_a_wr_din),
	.mat_a_wr_we   (mat_a_wr_we),
	.mat_a_rd_addr (mat_a_rd_addr),
	.mat_a_rd_clk  (mat_a_rd_clk),
	.mat_a_rd_dout (mat_a_rd_dout),
	.mat_a_rd_en   (mat_a_rd_en),

	// .mat_u_wr_addr (mat_u_wr_addr),
	// .mat_u_wr_clk  (mat_u_wr_clk),
	// .mat_u_wr_din  (mat_u_wr_din),
	// .mat_u_wr_we   (mat_u_wr_we),
	// .mat_u_rd_addr (mat_u_rd_addr),
	// .mat_u_rd_clk  (mat_u_rd_clk),
	// .mat_u_rd_dout (mat_u_rd_dout),
	// .mat_u_rd_en   (mat_u_rd_en),

	.amp_wr_addr   (amp_wr_addr),
	.amp_wr_clk    (amp_wr_clk),
	.amp_wr_din    (amp_wr_din),
	.amp_wr_we     (amp_wr_we),
	
	.col_a         (col_a),
	.col_u         (col_u),
	.done          (done),
	
	.clk           (clk),
	.rst_n         (rst_n)
);

endmodule
