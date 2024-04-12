`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/01 15:05:30
// Design Name: 
// Module Name: Low_part_or_Adder
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


module Low_part_or_adder_test_bench;
reg [3:0] t_a;
reg [3:0] t_b;
reg t_c_in;
wire [3:0] t_sum;
wire t_c_out;
Low_part_or_adder t1(.A(t_a),.B(t_b),.C_in(t_c_in),.Sum(t_sum),.C_out(t_c_out));
initial begin 
t_a=4'b0001; t_b=4'b0001; t_c_in=0;
#10
t_a=4'b0001; t_b=4'b0100; t_c_in=0;
#10
    repeat (20) begin
        t_a = $random % 8;
        t_b = $random % 8;
        t_c_in=0;
        #10;
    end

$stop;
end
endmodule
