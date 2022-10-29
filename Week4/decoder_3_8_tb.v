`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 21:33:17
// Design Name: 
// Module Name: decoder_3_8_tb
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


module decoder_3_8_tb;
reg [2:0] i;
wire [7:0] o;
decoder_3_8 uut (.o(o),.i(i));
initial begin
i=3'b000;#30
i=3'b001;#30
i=3'b010;#30
i=3'b011;#30
i=3'b100;#30
i=3'b101;#30
i=3'b110;#30
i=3'b111;
end
endmodule
