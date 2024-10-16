// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct 16 14:30:55 2024
// Host        : DESKTOP-5KHITUL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Victo/FourBitFullAdderIP_Test/FourBitFullAdderIP_Test.gen/sources_1/bd/FourBitFullAdder_IP/ip/FourBitFullAdder_IP_FourBitFullAdder_0_0/FourBitFullAdder_IP_FourBitFullAdder_0_0_sim_netlist.v
// Design      : FourBitFullAdder_IP_FourBitFullAdder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FourBitFullAdder_IP_FourBitFullAdder_0_0,FourBitFullAdder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "FourBitFullAdder,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module FourBitFullAdder_IP_FourBitFullAdder_0_0
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input [3:0]A;
  input [3:0]B;
  input Cin;
  output [3:0]Sum;
  output Cout;

  wire [3:0]A;
  wire [3:0]B;
  wire Cin;
  wire Cout;
  wire [3:0]Sum;
  wire \inst/carry_1__2 ;
  wire \inst/carry_21__0 ;

  LUT3 #(
    .INIT(8'hE8)) 
    Cout_INST_0
       (.I0(\inst/carry_1__2 ),
        .I1(B[2]),
        .I2(A[2]),
        .O(Cout));
  LUT3 #(
    .INIT(8'h96)) 
    \Sum[0]_INST_0 
       (.I0(Cin),
        .I1(A[0]),
        .I2(B[0]),
        .O(Sum[0]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Sum[1]_INST_0 
       (.I0(A[0]),
        .I1(B[0]),
        .I2(Cin),
        .I3(A[1]),
        .I4(B[1]),
        .O(Sum[1]));
  LUT6 #(
    .INIT(64'h11171777EEE8E888)) 
    \Sum[2]_INST_0 
       (.I0(A[1]),
        .I1(B[1]),
        .I2(A[0]),
        .I3(B[0]),
        .I4(Cin),
        .I5(\inst/carry_21__0 ),
        .O(Sum[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum[2]_INST_0_i_1 
       (.I0(B[2]),
        .I1(A[2]),
        .O(\inst/carry_21__0 ));
  LUT5 #(
    .INIT(32'h99969666)) 
    \Sum[3]_INST_0 
       (.I0(B[3]),
        .I1(A[3]),
        .I2(\inst/carry_1__2 ),
        .I3(B[2]),
        .I4(A[2]),
        .O(Sum[3]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Sum[3]_INST_0_i_1 
       (.I0(Cin),
        .I1(B[0]),
        .I2(A[0]),
        .I3(B[1]),
        .I4(A[1]),
        .O(\inst/carry_1__2 ));
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
