// Questions to ask

`timescale 1ns/10ps
module reg32(
	input Clk, clr, Rin,
	input [31:0] D,
	output reg [31:0] Rout
	);
	always@(posedge Clk)
	begin
		if (Rin==1)
		begin
			Rout = D;
		end
		if (clr)
		begin
			Rout = 32'b0;
		end
		
	end
endmodule
