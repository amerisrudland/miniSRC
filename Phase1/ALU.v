module ALU (
	input [31:0] A, B,
	input [2:0] ctl, //control signal - may want to change this later
	output reg [63:0] C
	);
	always@(ctl)
	begin
		case (ctl)
			01:		C = A+B;
			02:		C = A-B;
			03:		C = boothMultiply product (A,B);
			04:		C = A/B;
			05:		C = shr result(A,B);
			06:		C = shl result(A,B);
			07:		C = rotater result(A,B);
		//	08:		C = rol result(A,B);
			09:		C = A&B;
			10:		C = A|B;
			11:		C = !A; // is this a thing?
			12:		C = ~A; // pretty sure this is negate
		endcase
	end
endmodule