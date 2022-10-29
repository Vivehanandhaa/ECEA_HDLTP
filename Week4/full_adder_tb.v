`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 02:08:53
// Design Name: 
// Module Name: full_adder_tb
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
module full_add_tb;
  reg a,b,cin;
  wire sum,cout;
  full_add f1(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
  initial begin $dumpfile("full_tb.vcd");$dumpvars(); end
  initial begin a=1'b1;  #4; a=1'b0;#10 $stop();end
  initial begin b=1'b1; forever #2 b=~b;end
  initial begin cin=1'b1;forever #1 cin=~cin; #10 $stop();end
 initial begin $monitor(" time=%0d A=%b B=%b Cin=%b Sum=%b Cout=%b",$time,a,b,cin,sum,cout);end
endmodule : full_add_tb