`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/12 22:37:35
// Design Name: 
// Module Name: Low_part_OR_Adder
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


module Low_part_OR_Adder#(parameter SIZE= 8)(A,B,C_in,Sum,C_out);
input [SIZE-1:0] A,B;
input C_in;
output [SIZE-1:0] Sum;
output C_out;
wire G;
assign Sum[SIZE-2:0]=A[SIZE-2:0]^B[SIZE-2:0];
assign G=A[SIZE-2]&B[SIZE-2];
Full_Adder(A[SIZE-1],B[SIZE-1],G,Sum[SIZE-1],C_out);

endmodule
