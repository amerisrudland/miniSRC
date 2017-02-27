module ror(
	input [31:0] A, B,
	output reg [64:0] C);
	always @* begin
		C = 64'b0;
	end
	always@(A, B)
	begin
		integer amnt = B;
		reg [(amnt-1):0] temp = A[(amnt-1):0];
		C [(31-amnt-1):0] = A[31:amnt];
		C [31:amnt] = temp;
	end
endmodule