`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2022 00:40:49
// Design Name: 
// Module Name: two_bit_adder_tb
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

// Code your testbench here
module two_bit_adder_tb;
  reg [1:0]A,B;
  reg Cin;
  wire [1:0]Sum;
  wire Carry;
 
// instantiate the DUT block  
 two_bit_adder_tb f1 (.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Carry(Carry));
 
// this particular line is added to dump the file on online simulator
  initial begin $dumpfile("two_bit_adder.vcd");$dumpvars(); end

// insert all the inputs 
  initial begin 
  A=00;B=01;Cin=0; 
  #100; 
  A=00;B=01;Cin=0;
  #100 ;
  end
// monitor all the input and output ports at times 
// when any of the input changes its state

 initial begin $monitor(" time=%0d A=%b B=%b Cin=%b Sum=%b Carry=%b",$time,A,B,Cin,Sum,Carry);end
endmodule : two_bit_adder_tb
module tb_fluled();
        reg SW;
        reg CLK;
        wire  [3:0] DATA;

        initial begin
          CLK=0;
          SW=0;
          #100;
        end
      
        always #20 CLK=~CLK;
        always #30 SW=~SW;

         fluled uut(
            .CLK(CLK),
            .SW(SW),
            .DATA(DATA)
        );
endmodule