`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/01 22:20:23
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(a,b,c_in,sum,c_out);
input a;
input b;
input c_in;
output sum;
output c_out;
assign sum=a^b^c_in;
assign c_out= a&b | {(a^b)&c_in};
endmodule
