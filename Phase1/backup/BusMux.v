`timescale 1ns/10ps
module BusMux (
	output reg	[31:0] BusMuxOut,
	input		[31:0] BusMuxinR0, BusMuxinR1, BusMuxinR2, BusMuxinR3, BusMuxinR4, BusMuxinR5, BusMuxinR6, BusMuxinR7, BusMuxinR8, BusMuxinR9, BusMuxinRA, BusMuxinRB, BusMuxinRC, BusMuxinRD, BusMuxinRE, BusMuxinRF, 
	input 	[31:0] BusMuxinHI, BusMuxinLO, BusMuxinZhi, BusMuxinZlo, BusMuxinPC, BusMuxinMDR, BusMuxinInPort, C_sign_extended,
	input		[4:0] S
	);
	always@* //might need to change this always condition
	begin
		case(S)
			00000:	BusMuxOut=BusMuxinR0;
			00001:	BusMuxOut=BusMuxinR1;
			00010:	BusMuxOut=BusMuxinR2;
			00011:	BusMuxOut=BusMuxinR3;
			00100:	BusMuxOut=BusMuxinR4;
			00101:	BusMuxOut=BusMuxinR5;
			00110:	BusMuxOut=BusMuxinR6;
			00111:	BusMuxOut=BusMuxinR7;
			01000:	BusMuxOut=BusMuxinR8;
			01001:	BusMuxOut=BusMuxinR9;
			01010:	BusMuxOut=BusMuxinRA;
			01011:	BusMuxOut=BusMuxinRB;
			01100:	BusMuxOut=BusMuxinRC;
			01101:	BusMuxOut=BusMuxinRD;
			01110:	BusMuxOut=BusMuxinRE;
			01111:	BusMuxOut=BusMuxinRF;
			10000:	BusMuxOut=BusMuxinHI;
			10001:	BusMuxOut=BusMuxinLO;
			10010:	BusMuxOut=BusMuxinZhi;
			10011:	BusMuxOut=BusMuxinZlo;
			10100:	BusMuxOut=BusMuxinPC;
			10101:	BusMuxOut=BusMuxinMDR;
			10110:	BusMuxOut=BusMuxinInPort;
			10111:	BusMuxOut=C_sign_extended;
		endcase
	end

endmodule