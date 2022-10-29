`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 21:10:02
// Design Name: 
// Module Name: encoder_8_3_tb
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


module encoder_8_3_tb;
reg [7:0] i;
wire [2:0] o;
encoder_8_3 uut (.o(o),.i(i));
initial begin
i=8'h01;
#30 i=8'h02;
#30 i=8'h04;
#30 i=8'h08;
#30 i=8'h10;
#30 i=8'h20;
#30 i=8'h40;
#30 i=8'h80;
end
endmodule
