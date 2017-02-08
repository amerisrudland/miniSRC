`timescale 1ns/10ps
module mdr (
	output reg [31:0] mdr_out,
	input [31:0] BusMuxOut, Mdatain,
	input clr, Clk, read, MDRin
	);
	reg [31:0] MDMuxOut;
	always @(read)
	begin
		case(read)
			0:	MDMuxOut=BusMuxOut;
			1: MDMuxOut=Mdatain;
		endcase
	end
	
	always@(posedge Clk)
	begin
		if (clr)
			mdr_out <= 32'b0;
		else if (MDRin==1)
			mdr_out <= MDMuxOut;
	end
	
endmodule