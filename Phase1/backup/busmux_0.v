// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
// CREATED		"Tue Feb 28 20:14:26 2017"


module busmux_0(BusMuxinHI,BusMuxinInPort,BusMuxinLO,BusMuxinMDR,BusMuxinPC,BusMuxinR0,BusMuxinR1,BusMuxinR2,BusMuxinR3,BusMuxinR4,BusMuxinR5,BusMuxinR6,BusMuxinR7,BusMuxinR8,BusMuxinR9,BusMuxinRA,BusMuxinRB,BusMuxinRC,BusMuxinRD,BusMuxinRE,BusMuxinRF,BusMuxinZhi,BusMuxinZlo,C_sign_extended,S,BusMuxOut);
input [31:0] BusMuxinHI;
input [31:0] BusMuxinInPort;
input [31:0] BusMuxinLO;
input [31:0] BusMuxinMDR;
input [31:0] BusMuxinPC;
input [31:0] BusMuxinR0;
input [31:0] BusMuxinR1;
input [31:0] BusMuxinR2;
input [31:0] BusMuxinR3;
input [31:0] BusMuxinR4;
input [31:0] BusMuxinR5;
input [31:0] BusMuxinR6;
input [31:0] BusMuxinR7;
input [31:0] BusMuxinR8;
input [31:0] BusMuxinR9;
input [31:0] BusMuxinRA;
input [31:0] BusMuxinRB;
input [31:0] BusMuxinRC;
input [31:0] BusMuxinRD;
input [31:0] BusMuxinRE;
input [31:0] BusMuxinRF;
input [31:0] BusMuxinZhi;
input [31:0] BusMuxinZlo;
input [31:0] C_sign_extended;
input [4:0] S;
output [31:0] BusMuxOut;

busmux	lpm_instance(.BusMuxinHI(BusMuxinHI),.BusMuxinInPort(BusMuxinInPort),.BusMuxinLO(BusMuxinLO),.BusMuxinMDR(BusMuxinMDR),.BusMuxinPC(BusMuxinPC),.BusMuxinR0(BusMuxinR0),.BusMuxinR1(BusMuxinR1),.BusMuxinR2(BusMuxinR2),.BusMuxinR3(BusMuxinR3),.BusMuxinR4(BusMuxinR4),.BusMuxinR5(BusMuxinR5),.BusMuxinR6(BusMuxinR6),.BusMuxinR7(BusMuxinR7),.BusMuxinR8(BusMuxinR8),.BusMuxinR9(BusMuxinR9),.BusMuxinRA(BusMuxinRA),.BusMuxinRB(BusMuxinRB),.BusMuxinRC(BusMuxinRC),.BusMuxinRD(BusMuxinRD),.BusMuxinRE(BusMuxinRE),.BusMuxinRF(BusMuxinRF),.BusMuxinZhi(BusMuxinZhi),.BusMuxinZlo(BusMuxinZlo),.C_sign_extended(C_sign_extended),.S(S),.BusMuxOut(BusMuxOut));

endmodule
