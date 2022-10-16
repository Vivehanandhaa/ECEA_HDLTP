`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2022 21:35:46
// Design Name: 
// Module Name: two_bit_adder
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
module half_adder(S,C,X,Y);
input X,Y;
output S,C;
xor a1(S,X,Y);
and a2(C,X,Y);
endmodule
module two_bit_adder(A,B,Cin,Sum,Carry);
input [1:0]A,B;
input Cin;
output [1:0]Sum;
output Carry;
wire C1,C2,C3,C4,S0,S1;
half_adder h1(S0,C0,A[0],B[0]);
half_adder h2(Sum[0],C1,Cin,S0);
or o1(C2,C1,C0);
half_adder h3(S1,C3,A[1],B[1]);
half_adder h4(Sum[1],C4,C2,S1);
or o2(Carry,C3,C4);
endmodule
