module ALU (
	input [31:0] A, B,
	input [2:0] ctl, //control signal - may want to change this later
	output reg [31:0] zHI,
	output reg [31:0] zLo
	);
	always@(ctl)
	begin
		reg [63:0] C;
		case (ctl)
			01:		C = A+B;
			02:		C = A-B;
			03:		C = A*B;//boothMultiply(A,B);
			04:		C = A/B;
			05:		C = shr(A,B);
			06:		C = shl(A,B);
			07:		C = rotater(A,B);//ror(A,B);
			08:		C = rol(A,B);
			09:		C = A&B;
			10:		C = A|B;
			11:		C = !(A); // is this a thing?
			12:		C = ~A; // pretty sure this is negate
		endcase
		zHI = C[63:32];
		zLo = C[31:0];
	end
endmodule
