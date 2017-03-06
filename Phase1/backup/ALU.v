module ALU (
	input [31:0] A, B,
	input [2:0] ctl, //control signal - may want to change this later
	output reg [63:0] z
	);
	wire [31:0] shiftright_out;
	shiftr shiftright (A,B,shiftright_out);
	wire [31:0] shiftleft_out;
	shiftl shiftleft (A,B,shiftleft_out);
	wire [31:0] ror_out;
	rotater ror (A,B,ror_out);
	wire [31:0] rol_out;
	rol_2 rol (A,B,rol_out);
	always@(ctl)
	begin
		//reg [63:0] C;
		case (ctl)
			01:		z = A+B;
			02:		z = A-B;
			03:		z = A*B;//boothMultiply(A,B);
			04:		z = A/B;
			05:		begin 
							z[31:0] = shiftright_out;
							z[63:32] = 0;
						end
			06:		begin
							z[31:0] = shiftleft_out;
							z[63:32] = 0;
						end
			07:		z = ror_out;
			08:		z = rol_out;
			09:		z = A&B;
			10:		z = A|B;
			11:		z = !(A); // is this a thing?
			12:		z = ~A; // pretty sure this is negate
		endcase
	end
endmodule
