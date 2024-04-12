`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/13 21:45:37
// Design Name: 
// Module Name: Carry_genertor
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


module carry_generator(A, B, Cin, Cout);
  input [1:0] A, B;
  input Cin;
  output [1:0] Cout;
  wire [1:0] P, G; 
  assign P = A ^ B; 
  assign G = A & B; 
  assign Cout[1] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
 
endmodule