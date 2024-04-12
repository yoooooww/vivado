`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/01 22:20:10
// Design Name: 
// Module Name: Carry_Adder
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


module Carry_Adder(A,B,C_in,Sum,C_out);
input [15:0] A, B;
input C_in;
output [15:0] Sum;
output C_out;
wire [15:0] C;
genvar i;
generate
for(i=0;i<16;i=i+1)
begin
Full_Adder fa(A[i],B[i],C[i-1],Sum[i],C[i]);
end
endgenerate
assign C_out=C[15];
endmodule
