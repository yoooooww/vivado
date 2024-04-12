`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/01 15:54:30
// Design Name: 
// Module Name: Carry_testbench
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


module Carry_testbench;
reg [7:0] t_a;
reg [7:0] t_b;
reg t_c_in;
wire [7:0] t_sum;
wire t_c_out;
Carry_Adder t12(.A(t_a),.B(t_b),.Sum(t_sum),.C_in(t_c_in),.C_out(t_c_out));
initial begin 
t_a=8'b01001100; t_b=8'b10001000; t_c_in=0;
#10
t_a=8'b01111111; t_b=8'b11111111; t_c_in=0;
#10
 repeat (20) begin
        t_a = $random % 256;
        t_b = $random % 256;
        #10;
    end

$stop;
end
endmodule
