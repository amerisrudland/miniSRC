module shr (
	input [31:0] A, amnt,
	output reg [63:0] C);
	assign C = 64'b0;
	always @(A, amnt)
	begin
		integer shift = amnt;
		C = C >> amnt;
	end