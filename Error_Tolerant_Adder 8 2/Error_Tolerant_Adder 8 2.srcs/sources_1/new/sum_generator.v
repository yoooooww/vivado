`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/26 20:56:09
// Design Name: 
// Module Name: sum_generator
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


module sum_generator(A, B, C_in, Sum, C_out);
input [1:0] A, B;
input C_in;
output [1:0] Sum;
output C_out;
wire C_mid; 

Full_Adder fa1(A[0], B[0], C_in, Sum[0], C_mid);
Full_Adder fa2(A[1], B[1], C_mid, Sum[1], C_out);
endmodule
