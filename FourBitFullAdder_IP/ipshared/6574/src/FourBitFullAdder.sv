`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 01:28:59 PM
// Design Name: 
// Module Name: FourBitFullAdder
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


module FourBitFullAdder(
                        input logic [3:0] A,
                        input logic [3:0] B,
                        input logic Cin,
                        output logic [3:0] Sum,
                        output logic Cout
);
logic [3:0] carry;

assign Sum[0] = A[0]^B[0]^Cin;
assign carry[0] = (Cin & (A[0]^B[0]) ) | (A[0]&B[0]);

assign Sum[1] = A[1]^B[1]^carry[0];
assign carry[1] = (carry[0] & (A[1]^B[1]) ) | (A[1]&B[1]);

assign Sum[2] = A[2]^B[2]^carry[1];
assign carry[2] = (carry[1] & (A[2]^B[2]) ) | (A[2]&B[2]);

assign Sum[3] = A[3]^B[3]^carry[2];
assign Cout = (carry[2] & (A[2]^B[2]) ) | (A[2]&B[2]);

endmodule
