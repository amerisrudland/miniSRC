`timescale 1ns/10ps
module arrayMultiplier_tb;
	reg [7:0] M, Q;
	reg [15:0] P;
	
	arrayMultiplier DUT (M, Q, P);
	
	initial
	begin
		M <= 00001011;
		Q <= 00000101;
		#100
		M <= 00000111;
		Q <= 00001100;
	end
	endmodule