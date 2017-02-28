module shl (
	input [31:0] A, amnt,
	output reg [63:0] C);
	always @* begin
		C = 64'b0;
	end
	always @(A, amnt)
	begin
		integer shift = amnt;
		C = C << amnt;
	end

endmodule

