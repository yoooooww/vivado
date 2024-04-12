`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/11 00:46:19
// Design Name: 
// Module Name: Low_part_adder_testbench
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

module Low_part_OR_Adder_testbench;
parameter SIZE = 8;
// Testbench signals
reg [SIZE-1:0] A_tb, B_tb;
reg C_in_tb;
wire [SIZE-1:0] Sum_tb;
wire C_out_tb;
// Instance of the Low_part_OR_Adder
Low_part_OR_Adder #(.SIZE(SIZE)) UUT (
    .A(A_tb),
    .B(B_tb),
    .C_in(C_in_tb),
    .Sum(Sum_tb),
    .C_out(C_out_tb)
);
// Directed test scenarios
initial begin

       repeat (20) begin
        A_tb = $random % 256; 
        B_tb = $random % 256;
        C_in_tb = 0;
        #10;
    end
end

endmodule
