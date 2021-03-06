`timescale 1ns/10ps
module shiftl_tb;
	reg [31:0] in_a, in_b;
	wire [31:0] out_c;
initial
	begin
		in_a <= 32'b0;
		in_b <= 32'b0;
		#300 	in_a <= 00000000000000000101001001110111;
				in_b <= 00000000000000000000000000000101;
		random_var <= 1'b0;
	end
shl shift_left(in_a, in_b, out_c);
endmodule
