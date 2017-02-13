module rol(
	input [31:0] A, B,
	output reg [64:0] C);
	assign C = 64'b0;
	always@(A, B)
	begin
		integer amnt = B;
		reg [31:amnt] temp = A[31:amnt];
		C [(31-amnt-1):0] = A[31:amnt];
		C [31:amnt] = temp;
	end