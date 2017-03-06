`timescale 1ns/10ps
module reg64(
	input Clk, clr, Rin,
	input [63:0] D,
	output reg [31:0] Zhi, Zlo
	);
	always@(posedge Clk)
	begin
		if (Rin==1)
		begin
			Zhi = D[63:32];
			Zlo = D[31:0];
		end
		if (clr)
		begin
			Zhi = 32'b0;
			Zlo = 32'b0;
		end
		
	end
endmodule