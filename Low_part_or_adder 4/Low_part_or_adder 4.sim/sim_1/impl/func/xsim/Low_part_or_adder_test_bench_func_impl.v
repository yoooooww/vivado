// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Fri Apr 12 02:14:34 2024
// Host        : DESKTOP-MU57QG1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/lolwa/Low_part_or_adder 4/Low_part_or_adder
//               4.sim/sim_1/impl/func/xsim/Low_part_or_adder_test_bench_func_impl.v}
// Design      : Low_part_or_adder
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

(* ECO_CHECKSUM = "dacec046" *) (* SIZE = "4" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module Low_part_or_adder
   (A,
    B,
    C_in,
    Sum,
    C_out);
  input [3:0]A;
  input [3:0]B;
  input C_in;
  output [3:0]Sum;
  output C_out;

  wire [3:0]A;
  wire [3:0]A_IBUF;
  wire [3:0]B;
  wire [3:0]B_IBUF;
  wire C_out;
  wire C_out_OBUF;
  wire [3:0]Sum;
  wire [3:0]Sum_OBUF;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  OBUF C_out_OBUF_inst
       (.I(C_out_OBUF),
        .O(C_out));
  OBUF \Sum_OBUF[0]_inst 
       (.I(Sum_OBUF[0]),
        .O(Sum[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[0]_inst_i_1 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .O(Sum_OBUF[0]));
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Sum_OBUF[2]_inst_i_1 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .O(Sum_OBUF[2]));
  OBUF \Sum_OBUF[3]_inst 
       (.I(Sum_OBUF[3]),
        .O(Sum[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \Sum_OBUF[3]_inst_i_1 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(A_IBUF[3]),
        .I3(B_IBUF[3]),
        .O(Sum_OBUF[3]));
  Full_Adder t1
       (.A_IBUF(A_IBUF[3:2]),
        .B_IBUF(B_IBUF[3:2]),
        .C_out_OBUF(C_out_OBUF));
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