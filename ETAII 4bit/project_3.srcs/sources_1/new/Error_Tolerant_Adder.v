`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/27 02:17:35
// Design Name: 
// Module Name: Error_Tolerant_Adder
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


module Error_Tolerant_Adder#(parameter SIZE=4)(A,B,Sum,C_in,C_out);
input [SIZE-1:0] A,B;
input C_in;
output [SIZE-1:0] Sum;
output C_out;
wire [SIZE:0] C;
assign C[0] = C_in;
carry_generator t1(A[1:0],B[1:0],0,C[1:0]);
carry_generator t2(A[3:2],B[3:2],0,C[3:2]);
sum_generator t3(A[1:0],B[1:0],0,Sum[1:0]);
sum_generator t4(A[3:2],B[3:2],C[1],Sum[3:2]);
assign C_out=C[3];
endmodule
