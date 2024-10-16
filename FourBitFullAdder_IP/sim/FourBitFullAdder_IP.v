//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Wed Oct 16 14:30:12 2024
//Host        : DESKTOP-5KHITUL running 64-bit major release  (build 9200)
//Command     : generate_target FourBitFullAdder_IP.bd
//Design      : FourBitFullAdder_IP
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "FourBitFullAdder_IP,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FourBitFullAdder_IP,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "FourBitFullAdder_IP.hwdef" *) 
module FourBitFullAdder_IP
   (A_0,
    B_0,
    Cin_0,
    Cout_0,
    Sum_0);
  input [3:0]A_0;
  input [3:0]B_0;
  input Cin_0;
  output Cout_0;
  output [3:0]Sum_0;

  wire [3:0]A_0_1;
  wire [3:0]B_0_1;
  wire Cin_0_1;
  wire FourBitFullAdder_Cout;
  wire [3:0]FourBitFullAdder_Sum;

  assign A_0_1 = A_0[3:0];
  assign B_0_1 = B_0[3:0];
  assign Cin_0_1 = Cin_0;
  assign Cout_0 = FourBitFullAdder_Cout;
  assign Sum_0[3:0] = FourBitFullAdder_Sum;
  FourBitFullAdder_IP_FourBitFullAdder_0_0 FourBitFullAdder
       (.A(A_0_1),
        .B(B_0_1),
        .Cin(Cin_0_1),
        .Cout(FourBitFullAdder_Cout),
        .Sum(FourBitFullAdder_Sum));
endmodule
