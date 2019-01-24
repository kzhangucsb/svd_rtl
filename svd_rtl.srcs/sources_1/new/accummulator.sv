`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2019 01:07:22 PM
// Design Name: 
// Module Name: accummulator
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

module sum_64 #(
parameter
	DATA_WIDTH = 48
)(
	input  clk,
	input  [DATA_WIDTH-1:0] din [63:0],
	output reg [DATA_WIDTH-1:0] dout
);

reg [DATA_WIDTH-1:0] sum_l1 [15:0];
reg [DATA_WIDTH-1:0] sum_l2 [3:0];

genvar i;

for (i = 0; i < 16; i = i + 1) begin
	always_ff @(posedge clk) begin : proc_sum_l1
		sum_l1[i] <= din[i*4] + din[i*4+1] + din[i*4+2] + din[i*4+3];
	end
end

for (i = 0; i < 4; i = i + 1) begin
	always_ff @(posedge clk) begin : proc_sum_l2
		sum_l2[i] <= sum_l1[i*4] + sum_l1[i*4+1] + sum_l1[i*4+2] + sum_l1[i*4+3];
	end
end

always_ff @(posedge clk) begin : proc_dout
	dout <= sum_l2[0] + sum_l2[1] + sum_l2[2] + sum_l2[3];
end

endmodule // sum_64

module accummulator #(
parameter
	DATA_WIDTH = 48
)(
	input clk,    // Clock
	input clk_en, // Clock Enable
	input rst_n,  // Asynchronous reset active low
	input last,  // synchronous clear
	input  [DATA_WIDTH-1:0] din,
	output reg [DATA_WIDTH-1:0] dout,
	output reg dout_valid
);

always_ff @(posedge clk or negedge rst_n) begin : proc_dout_valid
	if(~rst_n) begin
		dout_valid <= 0;
	end else begin
		dout_valid <= last;
	end
end

always_ff @(posedge clk or negedge rst_n) begin : proc_dout
	if(~rst_n) begin
		dout <= 0;
	end else begin
		case ({clk_en, dout_valid})
			2'b00: dout <= dout;
			2'b10: dout <= dout + din;
			2'b01: dout <= 0;
			2'b11: dout <= din;
		endcase // {clk_en, dout_valid}
	end
end



endmodule
