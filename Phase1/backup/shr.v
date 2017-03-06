module shr (
	input [31:0] A, amnt,
	output reg [63:0] C);
	always @* begin
		C = 64'b0;
	end
	always @(A, amnt)
	begin
		C = C >> amnt;
	end

endmodule

