`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/01 15:59:39
// Design Name: 
// Module Name: Ripple_Carry_Adder_testbench
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


module Ripple_Carry_Adder_testbench;
reg [3:0] t_a;
reg [3:0] t_b;
reg t_c_in;
wire [3:0] t_sum;
wire t_c_out;
Ripple_Carry_Adder t12(.A(t_a),.B(t_b),.Sum(t_sum),.C_in(t_c_in),.C_out(t_c_out));
initial begin 
t_a=4'b1100; t_b=4'b1000; t_c_in=0;
#10
repeat (20) begin
        t_a = $random % 8;
        t_b = $random % 8;
        #10;
    end
$stop;
end
endmodule
