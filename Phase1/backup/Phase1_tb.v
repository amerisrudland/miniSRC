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

// *****************************************************************************
// This file contains a Verilog test bench template that is freely editable to  
// suit user's needs .Comments are provided in each section to help the user    
// fill out necessary details.                                                  
// *****************************************************************************
// Generated on "03/04/2017 14:45:57"
                                                                                
// Verilog Test Bench template for design : Phase1
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1 ns/ 10 ps
module Phase1_tb();
// constants                                           
// general purpose registers
reg eachvec;
// test vector input registers
reg [31:0] c_sign_extended;
reg clk;
reg clr;
reg Cout;
reg Cout2;
reg HIout;
reg [31:0] INPORTin;
reg INPORTout;
reg InPortout1;
reg IR;
reg LOout;
reg MAR;
reg [31:0] Mdatain;
reg MDRout;
reg OUTPORTin;
reg PCout;
reg R0out;
reg R1out;
reg R2out;
reg R3out;
reg R4out;
reg R5out;
reg R6out;
reg R7out;
reg R8out;
reg R9out;
reg R10out;
reg R11out;
reg R12out;
reg R13out;
reg R14out;
reg R15out;
reg [2:0] Rctl;
reg read;
reg Rin0;
reg Rin1;
reg Rin2;
reg Rin3;
reg Rin4;
reg Rin5;
reg Rin6;
reg Rin7;
reg Rin8;
reg Rin9;
reg RinA;
reg RinB;
reg RinC;
reg RinD;
reg RinE;
reg RinF;
reg RinHI;
reg RinLO;
reg RinPC;
reg RinY;
reg RinZ;
reg RMDR;
reg Zhighout;
reg Zlowout;
// wires                                               
wire [31:0]  blah1;
wire [31:0]  blah2;
wire [31:0]  blah3;

// assign statements (if any)                          
Phase1 i1 (
// port map - connection between master ports and signals/registers   
	.blah1(blah1),
	.blah2(blah2),
	.blah3(blah3),
	.c_sign_extended(c_sign_extended),
	.clk(clk),
	.clr(clr),
	.Cout(Cout),
	.Cout2(Cout2),
	.HIout(HIout),
	.INPORTin(INPORTin),
	.INPORTout(INPORTout),
	.InPortout1(InPortout1),
	.IR(IR),
	.LOout(LOout),
	.MAR(MAR),
	.Mdatain(Mdatain),
	.MDRout(MDRout),
	.OUTPORTin(OUTPORTin),
	.PCout(PCout),
	.R0out(R0out),
	.R1out(R1out),
	.R2out(R2out),
	.R3out(R3out),
	.R4out(R4out),
	.R5out(R5out),
	.R6out(R6out),
	.R7out(R7out),
	.R8out(R8out),
	.R9out(R9out),
	.R10out(R10out),
	.R11out(R11out),
	.R12out(R12out),
	.R13out(R13out),
	.R14out(R14out),
	.R15out(R15out),
	.Rctl(Rctl),
	.read(read),
	.Rin0(Rin0),
	.Rin1(Rin1),
	.Rin2(Rin2),
	.Rin3(Rin3),
	.Rin4(Rin4),
	.Rin5(Rin5),
	.Rin6(Rin6),
	.Rin7(Rin7),
	.Rin8(Rin8),
	.Rin9(Rin9),
	.RinA(RinA),
	.RinB(RinB),
	.RinC(RinC),
	.RinD(RinD),
	.RinE(RinE),
	.RinF(RinF),
	.RinHI(RinHI),
	.RinLO(RinLO),
	.RinPC(RinPC),
	.RinY(RinY),
	.RinZ(RinZ),
	.RMDR(RMDR),
	.Zhighout(Zhighout),
	.Zlowout(Zlowout)
);
//legend
/*
default: 0
reg_load1: 1
reg_load2: 2
reg_load3: 3
t0: 4
t1: 5
t2: 6
t3: 7
t4: 8
t5: 9
*/
reg state;
reg presentState;
initial                                                
begin                                                  
// code that executes only once                        
// insert code here --> begin  
	state <= 0;
	presentState <= 0;
	Cout <= 0;
	INPORTin <= 32'b0;
	INPORTout <= 0;
	Mdatain <= 32'b0;
	RMDR <= 0;
	Rctl <= 3'b0;
	Rin0 <= 0;
	Rin1 <= 0;
	Rin2 <= 0;
	Rin3 <= 0;
	Rin4 <= 0;
	Rin5 <= 0;
	Rin6 <= 0;
	Rin7 <= 0;
	Rin8 <= 0;
	Rin9 <= 0;
	RinA <= 0;
	RinB <= 0;
	RinC <= 0;
	RinD <= 0;
	RinE <= 0;
	RinF <= 0;
	RinHI <= 0;
	RinLO <= 0;
	RinPC <= 0;
	RinY <= 0;
	RinZ <= 0;
	c_sign_extended <= 32'b0;
	clk <= 0;
	clr <= 0;
	read <= 0;    
	Zhighout <= 0;
	Zlowout <= 0;	
	Cout2 <= 0; // right one
	HIout <= 0;
	InPortout1 <= 0; // right one
	LOout <= 0;
	MDRout <= 0;
	OUTPORTin <= 0;
	PCout <= 0;
	R0out <= 0;
	R1out <= 0;
	R2out <= 0;
	R3out <= 0;
	R4out <= 0;
	R5out <= 0;
	R6out <= 0;
	R7out <= 0;
	R8out <= 0;
	R9out <= 0;
	R10out <= 0;
	R11out <= 0;
	R12out <= 0;
	R13out <= 0;
	R14out <= 0;
	R15out <= 0;
end
always
begin
	clk <= 1;
	#10 	clk <= !clk;
	#10 	clk <= !clk;       
end	
// --> end                                             
                    
                                                   
always@(posedge clk)                                                      
begin                                                  
// code executes for every event on sensitivity list   
// insert code here --> begin   
	case (state)
		0:	presentState = 1;
		1:	presentState = 2;
		2:	presentState = 3;
		3: presentState = 4;
		4:	presentState = 5;
		5:	presentState = 6;
		6: presentState = 7;
		7:	presentState = 8;
		8:	presentState = 9;
	endcase
end
                       
always @(presentState)
begin
	case(presentState)
		0:
			begin
				PCout <= 0;
				Zlowout <= 0;
				MDRout <= 0;
				R2out <= 0;
				R3out <= 0;
				MAR <= 0;
				RinZ <= 0;
				RinPC <= 0;
				RMDR <= 0;
				IR <= 0;
				RinY <= 0;
				Rin1 <= 0;
				//assign IncPC_tb = 0; ///unnecessary for phase 1
				read <= 0;
				Rctl <= 0;
				clr <= 1;
				#3 //assign clear to 1 for like 3-5 ns then set to 0
				clr <= 0;
				
			end
			
		1:
			begin
				Mdatain <= 32'b0010010; // hex 12
				read <= 0;
				RMDR <= 0;
				MDRout <= 0;
				Rin2 <= 0;
				#10
				read <= 1;
				RMDR <= 1;
				MDRout <= 1;
				Rin2 <= 1;
				#10
				read <= 0;
				RMDR <= 0;
				MDRout <= 0;
			end
		2:
			begin
				Mdatain <= 32'b0010100; // hex 14
				read <= 0;
				RMDR <= 0;
				MDRout <= 0;
				Rin2 <= 0;
				#10
				read <= 1;
				RMDR <= 1;
				MDRout <= 1;
				Rin2 <= 1;
				#10
				read <= 0;
				RMDR <= 0;
				MDRout <= 0;
			end
		3:
			begin	
				Mdatain <= 32'b0010110; // hex 16
				read <= 0;
				RMDR <= 0;
				MDRout <= 0;
				Rin3 <= 0;
				#10
				read <= 1;
				RMDR <= 1;
				MDRout <= 1;
				Rin3 <= 1;
				#10
				read <= 0;
				RMDR <= 0;
				MDRout <= 0;
			end
		4:
			begin
				PCout <= 1;
				MAR <= 1;
				//assign Inc_PC = 1;
				RinZ <= 1;
			end
		5:
			begin
				Zlowout <= 1;
				RinPC <= 1;
				read <= 1;
				RMDR <= 1;
				Mdatain <= 32'b00101001010011000000000000000000; // hex 294c0000, opcode for add r1, r2, r3
			end
		//T2 - 6
		
		//T3 - 7
		
		//t4 - 8
		
		//t5 - 9
				
				//NOTES:
				// All incPC is not needed for phase 1
				// remember instead of ADD = 1, assign ctl = 01
				// When finished:
				// try compiling. Will probably need to
				// 1) initialize state and presentState as strings
				// 2) put quotations around every assignment and case (ex. "Default")
				//    because they are strings
				// 3) research more about strings, cases, and comparisons in Verilog
				// 	online; we lost the commented modifications when we rewrote .vt
	endcase                                                       
// --> end                                             
end                                                                
endmodule  

