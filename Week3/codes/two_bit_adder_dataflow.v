`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2022 23:06:22
// Design Name: 
// Module Name: two_bitadder_tb
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


module two_bit_adder_dataflow;
//`include "two_bit_adder.v"
reg [1:0] A,B;
reg Cin;

wire [1:0] Sum;
wire Carry;
two_bit_adder DUT(A,B,Cin,Sum,Carry);

initial begin $dumpfile("two_bit_adder_dataflow.vcd");$dumpvars(); end

initial begin 
A=2'b00;B=2'b00;Cin=1'b0;
#30
A=2'b00;B=2'b01;Cin=1'b0;
#30
A=2'b00;B=2'b10;Cin=1'b0;
#30
A=2'b00;B=2'b11;Cin=1'b0;
#30
A=2'b01;B=2'b00;Cin=1'b0;
#30
A=2'b01;B=2'b01;Cin=1'b0;
#30
A=2'b01;B=2'b10;Cin=1'b0;
#30
A=2'b01;B=2'b11;Cin=1'b0;
#30
A=2'b10;B=2'b00;Cin=1'b0;
#30
A=2'b10;B=2'b01;Cin=1'b0;
#30
A=2'b10;B=2'b10;Cin=1'b0;
#30
A=2'b10;B=2'b11;Cin=1'b0;
#30
A=2'b11;B=2'b00;Cin=1'b0;
#30
A=2'b11;B=2'b01;Cin=1'b0;
#30
A=2'b11;B=2'b10;Cin=1'b0;
#30
A=2'b11;B=2'b11;Cin=1'b0;
#30
A=2'b00;B=2'b00;Cin=1'b1;
#30
A=2'b00;B=2'b01;Cin=1'b1;
#30
A=2'b00;B=2'b10;Cin=1'b1;
#30
A=2'b00;B=2'b11;Cin=1'b1;
#30
A=2'b01;B=2'b00;Cin=1'b1;
#30
A=2'b01;B=2'b01;Cin=1'b1;
#30
A=2'b01;B=2'b10;Cin=1'b1;
#30
A=2'b01;B=2'b11;Cin=1'b1;
#30
A=2'b10;B=2'b00;Cin=1'b1;
#30
A=2'b10;B=2'b01;Cin=1'b1;
#30
A=2'b10;B=2'b10;Cin=1'b1;
#30
A=2'b10;B=2'b11;Cin=1'b1;
#30
A=2'b11;B=2'b00;Cin=1'b1;
#30
A=2'b11;B=2'b01;Cin=1'b1;
#30
A=2'b11;B=2'b10;Cin=1'b1;
#30
A=2'b11;B=2'b11;Cin=1'b1;
end
initial begin $monitor(" time=%0d A=%2b B=%2b Cin=%b Sum=%2b Carry=%b",$time,A,B,Cin,Sum,Carry);end
endmodule : two_bit_adder_dataflow
