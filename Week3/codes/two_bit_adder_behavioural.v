`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2022 23:56:42
// Design Name: 
// Module Name: two_bitadder_behavioral
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


module two_bitadder_behavioral(
  input [1:0]A,
  input clk_in,
  input Cin,
  input [1:0]B,
  output reg [1:0]Sum,
  output reg Carry);
  always@(negedge clk_in);
  begin
 reg sum1=0;
 reg cout=0;
 reg sum2=0;
  
 
            
end
endmodule