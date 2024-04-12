// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Fri Apr 12 02:36:02 2024
// Host        : DESKTOP-MU57QG1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/lolwa/Low_part_or_Adder 16/Low_part_or_Adder
//               16.sim/sim_1/synth/func/xsim/Low_part_OR_Adder_tb_func_synth.v}
// Design      : Low_part_OR_Adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Full_Adder
   (C_out_OBUF,
    A_IBUF,
    B_IBUF);
  output C_out_OBUF;
  input [1:0]A_IBUF;
  input [1:0]B_IBUF;

  wire [1:0]A_IBUF;
  wire [1:0]B_IBUF;
  wire C_out_OBUF;

  LUT4 #(
    .INIT(16'hF880)) 
    c_out
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[1]),
        .O(C_out_OBUF));
endmodule

(* SIZE = "16" *) 
(* NotValidForBitStream *)
module Low_part_OR_Adder
   (A,
    B,
    C_in,
    Sum,
    C_out);
  input [15:0]A;
  input [15:0]B;
  input C_in;
  output [15:0]Sum;
  output C_out;

  wire [15:0]A;
  wire [15:0]A_IBUF;
  wire [15:0]B;
  wire [15:0]B_IBUF;
  wire C_out;
  wire C_out_OBUF;
  wire [15:0]Sum;
  wire [15:0]Sum_OBUF;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[10]_inst 
       (.I(A[10]),
        .O(A_IBUF[10]));
  IBUF \A_IBUF[11]_inst 
       (.I(A[11]),
        .O(A_IBUF[11]));
  IBUF \A_IBUF[12]_inst 
       (.I(A[12]),
        .O(A_IBUF[12]));
  IBUF \A_IBUF[13]_inst 
       (.I(A[13]),
        .O(A_IBUF[13]));
  IBUF \A_IBUF[14]_inst 
       (.I(A[14]),
        .O(A_IBUF[14]));
  IBUF \A_IBUF[15]_inst 
       (.I(A[15]),
        .O(A_IBUF[15]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  IBUF \A_IBUF[8]_inst 
       (.I(A[8]),
        .O(A_IBUF[8]));
  IBUF \A_IBUF[9]_inst 
       (.I(A[9]),
        .O(A_IBUF[9]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[10]_inst 
       (.I(B[10]),
        .O(B_IBUF[10]));
  IBUF \B_IBUF[11]_inst 
       (.I(B[11]),
        .O(B_IBUF[11]));
  IBUF \B_IBUF[12]_inst 
       (.I(B[12]),
        .O(B_IBUF[12]));
  IBUF \B_IBUF[13]_inst 
       (.I(B[13]),
        .O(B_IBUF[13]));
  IBUF \B_IBUF[14]_inst 
       (.I(B[14]),
        .O(B_IBUF[14]));
  IBUF \B_IBUF[15]_inst 
       (.I(B[15]),
        .O(B_IBUF[15]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  IBUF \B_IBUF[8]_inst 
       (.I(B[8]),
        .O(B_IBUF[8]));
  IBUF \B_IBUF[9]_inst 
       (.I(B[9]),
        .O(B_IBUF[9]));
  OBUF C_out_OBUF_inst
       (.I(C_out_OBUF),
        .O(C_out));
  Full_Adder Full_Adder
       (.A_IBUF(A_IBUF[15:14]),
        .B_IBUF(B_IBUF[15:14]),
        .C_out_OBUF(C_out_OBUF));
  OBUF \Sum_OBUF[0]_inst 
       (.I(Sum_OBUF[0]),
        .O(Sum[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[0]_inst_i_1 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .O(Sum_OBUF[0]));
  OBUF \Sum_OBUF[10]_inst 
       (.I(Sum_OBUF[10]),
        .O(Sum[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[10]_inst_i_1 
       (.I0(B_IBUF[10]),
        .I1(A_IBUF[10]),
        .O(Sum_OBUF[10]));
  OBUF \Sum_OBUF[11]_inst 
       (.I(Sum_OBUF[11]),
        .O(Sum[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[11]_inst_i_1 
       (.I0(B_IBUF[11]),
        .I1(A_IBUF[11]),
        .O(Sum_OBUF[11]));
  OBUF \Sum_OBUF[12]_inst 
       (.I(Sum_OBUF[12]),
        .O(Sum[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[12]_inst_i_1 
       (.I0(B_IBUF[12]),
        .I1(A_IBUF[12]),
        .O(Sum_OBUF[12]));
  OBUF \Sum_OBUF[13]_inst 
       (.I(Sum_OBUF[13]),
        .O(Sum[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[13]_inst_i_1 
       (.I0(B_IBUF[13]),
        .I1(A_IBUF[13]),
        .O(Sum_OBUF[13]));
  OBUF \Sum_OBUF[14]_inst 
       (.I(Sum_OBUF[14]),
        .O(Sum[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[14]_inst_i_1 
       (.I0(B_IBUF[14]),
        .I1(A_IBUF[14]),
        .O(Sum_OBUF[14]));
  OBUF \Sum_OBUF[15]_inst 
       (.I(Sum_OBUF[15]),
        .O(Sum[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \Sum_OBUF[15]_inst_i_1 
       (.I0(B_IBUF[14]),
        .I1(A_IBUF[14]),
        .I2(A_IBUF[15]),
        .I3(B_IBUF[15]),
        .O(Sum_OBUF[15]));
  OBUF \Sum_OBUF[1]_inst 
       (.I(Sum_OBUF[1]),
        .O(Sum[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[1]_inst_i_1 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .O(Sum_OBUF[1]));
  OBUF \Sum_OBUF[2]_inst 
       (.I(Sum_OBUF[2]),
        .O(Sum[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[2]_inst_i_1 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .O(Sum_OBUF[2]));
  OBUF \Sum_OBUF[3]_inst 
       (.I(Sum_OBUF[3]),
        .O(Sum[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[3]_inst_i_1 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[3]),
        .O(Sum_OBUF[3]));
  OBUF \Sum_OBUF[4]_inst 
       (.I(Sum_OBUF[4]),
        .O(Sum[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[4]_inst_i_1 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .O(Sum_OBUF[4]));
  OBUF \Sum_OBUF[5]_inst 
       (.I(Sum_OBUF[5]),
        .O(Sum[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[5]_inst_i_1 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[5]),
        .O(Sum_OBUF[5]));
  OBUF \Sum_OBUF[6]_inst 
       (.I(Sum_OBUF[6]),
        .O(Sum[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[6]_inst_i_1 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[6]),
        .O(Sum_OBUF[6]));
  OBUF \Sum_OBUF[7]_inst 
       (.I(Sum_OBUF[7]),
        .O(Sum[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[7]_inst_i_1 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[7]),
        .O(Sum_OBUF[7]));
  OBUF \Sum_OBUF[8]_inst 
       (.I(Sum_OBUF[8]),
        .O(Sum[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[8]_inst_i_1 
       (.I0(B_IBUF[8]),
        .I1(A_IBUF[8]),
        .O(Sum_OBUF[8]));
  OBUF \Sum_OBUF[9]_inst 
       (.I(Sum_OBUF[9]),
        .O(Sum[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[9]_inst_i_1 
       (.I0(B_IBUF[9]),
        .I1(A_IBUF[9]),
        .O(Sum_OBUF[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
