/* Generated by Yosys 0.38 (git sha1 543faed9c8c, clang++ 17.0.6 -fPIC -Os) */

module FourBitFullAdder(A, B, Cin, virtual_clk, VDD, GND, Sum, Cout);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  input [3:0] A;
  wire [3:0] A;
  input [3:0] B;
  wire [3:0] B;
  input Cin;
  wire Cin;
  output Cout;
  wire Cout;
  input GND;
  wire GND;
  output [3:0] Sum;
  wire [3:0] Sum;
  input VDD;
  wire VDD;
  input virtual_clk;
  wire virtual_clk;
  sky130_fd_sc_hd__or2_2 _15_ (
    .A(B[0]),
    .B(A[0]),
    .X(_00_)
  );
  sky130_fd_sc_hd__nand2_2 _16_ (
    .A(B[0]),
    .B(A[0]),
    .Y(_01_)
  );
  sky130_fd_sc_hd__nand2_2 _17_ (
    .A(_00_),
    .B(_01_),
    .Y(_02_)
  );
  sky130_fd_sc_hd__xnor2_2 _18_ (
    .A(Cin),
    .B(_02_),
    .Y(Sum[0])
  );
  sky130_fd_sc_hd__or2_2 _19_ (
    .A(B[1]),
    .B(A[1]),
    .X(_03_)
  );
  sky130_fd_sc_hd__nand2_2 _20_ (
    .A(B[1]),
    .B(A[1]),
    .Y(_04_)
  );
  sky130_fd_sc_hd__nand2_2 _21_ (
    .A(_03_),
    .B(_04_),
    .Y(_05_)
  );
  sky130_fd_sc_hd__a21bo_2 _22_ (
    .A1(Cin),
    .A2(_00_),
    .B1_N(_01_),
    .X(_06_)
  );
  sky130_fd_sc_hd__xnor2_2 _23_ (
    .A(_05_),
    .B(_06_),
    .Y(Sum[1])
  );
  sky130_fd_sc_hd__or2_2 _24_ (
    .A(B[2]),
    .B(A[2]),
    .X(_07_)
  );
  sky130_fd_sc_hd__nand2_2 _25_ (
    .A(B[2]),
    .B(A[2]),
    .Y(_08_)
  );
  sky130_fd_sc_hd__nand2_2 _26_ (
    .A(_07_),
    .B(_08_),
    .Y(_09_)
  );
  sky130_fd_sc_hd__a21bo_2 _27_ (
    .A1(_03_),
    .A2(_06_),
    .B1_N(_04_),
    .X(_10_)
  );
  sky130_fd_sc_hd__xnor2_2 _28_ (
    .A(_09_),
    .B(_10_),
    .Y(Sum[2])
  );
  sky130_fd_sc_hd__and2_2 _29_ (
    .A(B[3]),
    .B(A[3]),
    .X(_11_)
  );
  sky130_fd_sc_hd__nor2_2 _30_ (
    .A(B[3]),
    .B(A[3]),
    .Y(_12_)
  );
  sky130_fd_sc_hd__nor2_2 _31_ (
    .A(_11_),
    .B(_12_),
    .Y(_13_)
  );
  sky130_fd_sc_hd__a21boi_2 _32_ (
    .A1(_07_),
    .A2(_10_),
    .B1_N(_08_),
    .Y(_14_)
  );
  sky130_fd_sc_hd__xnor2_2 _33_ (
    .A(_13_),
    .B(_14_),
    .Y(Sum[3])
  );
  sky130_fd_sc_hd__o21bai_2 _34_ (
    .A1(_12_),
    .A2(_14_),
    .B1_N(_11_),
    .Y(Cout)
  );
endmodule
