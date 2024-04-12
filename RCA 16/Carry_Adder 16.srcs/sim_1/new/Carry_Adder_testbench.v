`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/01 22:23:56
// Design Name: 
// Module Name: Carry_Adder_testbench
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
reg [15:0] t_a;
reg [15:0] t_b;
reg t_c_in;
wire [15:0] t_sum;
wire t_c_out;
Carry_Adder t12(.A(t_a),.B(t_b),.Sum(t_sum),.C_in(t_c_in),.C_out(t_c_out));
initial begin 
t_a=1; t_b=65534; t_c_in=0;
#10
    repeat (50) begin
        t_a = $random % 65536; 
        t_b = $random % 65536;
       #5;
       end
$stop;
end
endmodule
