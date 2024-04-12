`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/01 15:52:57
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
input [7:0] A, B;
input C_in;
output [7:0] Sum;
output C_out;
wire [7:0] C;
genvar i;
generate
for(i=0;i<8;i=i+1)
begin
Full_Adder fa(A[i],B[i],C[i-1],Sum[i],C[i]);
end
endgenerate
assign C_out=C[7];
endmodule
