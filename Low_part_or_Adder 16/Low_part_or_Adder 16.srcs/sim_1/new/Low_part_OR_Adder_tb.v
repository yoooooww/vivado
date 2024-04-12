`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/12 02:32:33
// Design Name: 
// Module Name: Low_part_OR_Adder_tb
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


module Low_part_OR_Adder_tb;

// Parameters
parameter SIZE = 16;

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

initial begin
       repeat (20) begin
        A_tb = $random % 65536;
        B_tb = $random % 65536;
        C_in_tb = 0;
        #10;
    end

end

endmodule

