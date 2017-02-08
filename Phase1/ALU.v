module ALU (
	input [31:0] A, B,
	input [3:0] ctl, //control signal - may want to change this later
	output reg [63:0] C
	);
	always@(ctl)
	begin
		case (ctl)
			01:		C = A+B;
			02:		C = A-B;
			03:		C = boothMultiply(A,B);
			04:		C = div(A,B);
			05:		C = shr(A,B);
			06:		C = shl(A,B);
			07:		C = ror(A,B);
			08:		C = rol(A,B);
			09:		C = A&B;
			10:		C = A|B;
			11:		C = not(A); // is this a thing?
			12:		C = ~A; // pretty sure this is negate
			
		