`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/26 20:57:47
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


module Error_Tolerant_Adder#(parameter SIZE=16)(A,B,Sum,C_in,C_out);
input [SIZE-1:0] A,B;
input C_in;
output [SIZE-1:0] Sum;
output C_out;
wire [SIZE:0] C;
assign C[0] = C_in;
carry_generator t1(A[1:0],B[1:0],0,C[1:0]);
carry_generator t2(A[3:2],B[3:2],0,C[3:2]);
carry_generator t3(A[5:4],B[5:4],0,C[5:4]);
carry_generator t4(A[7:6],B[7:6],0,C[7:6]);
carry_generator t5(A[9:8],B[9:8],0,C[9:8]);
carry_generator t6(A[11:10],B[11:10],0,C[11:10]);
carry_generator t7(A[13:12],B[13:12],0,C[13:12]);
carry_generator t8(A[15:14],B[15:14],0,C[15:14]);
sum_generator t9(A[1:0],B[1:0],0,Sum[1:0]);
sum_generator t10(A[3:2],B[3:2],C[1],Sum[3:2]);
sum_generator t11(A[5:4],B[5:4],C[3],Sum[5:4]);
sum_generator t12(A[7:6],B[7:6],C[5],Sum[7:6]);
sum_generator t13(A[9:8],B[9:8],C[7],Sum[9:8]);
sum_generator t14(A[11:10],B[11:10],C[9],Sum[11:10]);
sum_generator t15(A[13:12],B[13:12],C[11],Sum[13:12]);
sum_generator t16(A[15:14],B[15:14],C[13],Sum[15:14]);
assign C_out=C[15];
endmodule
