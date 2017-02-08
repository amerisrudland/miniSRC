`timescale 1ns/10ps
module bus32_to_5_encoder(
	input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out, 
	input HIout, LOout, Zhighout, Zlowout, PCout, MDRout, InPortout, Cout,
	output reg [4:0] S
	);
	reg [23:0] in = ({R0out,R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out, HIout, LOout, Zhighout, Zlowout, PCout, MDRout, InPortout, Cout});
	always@(in)
	begin
		casex(in)
			24'b1xxxxxxxxxxxxxxxxxxxxxxx:		S=00000;
			24'b01xxxxxxxxxxxxxxxxxxxxxx:		S=00001;
			24'b001xxxxxxxxxxxxxxxxxxxxx:		S=00010;
			24'b0001xxxxxxxxxxxxxxxxxxxx:		S=00011;
			24'b00001xxxxxxxxxxxxxxxxxxx:		S=00100;
			24'b000001xxxxxxxxxxxxxxxxxx:		S=00101;
			24'b0000001xxxxxxxxxxxxxxxxx:		S=00110;
			24'b00000001xxxxxxxxxxxxxxxx:		S=00111;
			24'b000000001xxxxxxxxxxxxxxx:		S=01000;
			24'b0000000001xxxxxxxxxxxxxx:		S=01001;
			24'b00000000001xxxxxxxxxxxxx:		S=01010;
			24'b000000000001xxxxxxxxxxxx:		S=01011;
			24'b0000000000001xxxxxxxxxxx:		S=01100;
			24'b00000000000001xxxxxxxxxx:		S=01101;
			24'b000000000000001xxxxxxxxx:		S=01110;
			24'b0000000000000001xxxxxxxx:		S=01111;
			24'b00000000000000001xxxxxxx:		S=10000;
			24'b000000000000000001xxxxxx:		S=10001;
			24'b0000000000000000001xxxxx:		S=10010;
			24'b00000000000000000001xxxx:		S=10011;
			24'b000000000000000000001xxx:		S=10100;
			24'b0000000000000000000001xx:		S=10101;
			24'b00000000000000000000001x:		S=10110;
			24'b000000000000000000000001:		S=10111;
		endcase
	end
endmodule