`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 01:02:26
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
    reg A,B;
    wire S,C;
    half_adder uut(.A(A),.B(B),.S(S),.C(C));
    initial
    begin
    A=1'b0;B=1'b0;#30
    A=1'b0;B=1'b1;#30
    A=1'b1;B=1'b0;#30
    A=1'b1;B=1'b1;#30
    #100;
    end
    endmodule