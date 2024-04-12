`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/25 16:19:52
// Design Name: 
// Module Name: Ripple_Carry_Adder
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


module Ripple_Carry_Adder(A,B,C_in,Sum,C_out);
input [3:0] A, B;
input C_in;
output [3:0] Sum;
output C_out;
wire [3:0] C;
genvar i;
generate
for(i=0;i<4;i=i+1)
begin
Full_Adder fa(A[i],B[i],C[i-1],Sum[i],C[i]);
end
endgenerate
assign C_out=C[3];
endmodule
