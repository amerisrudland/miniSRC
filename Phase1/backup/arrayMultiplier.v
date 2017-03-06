module arrayMultiplier(
	input [7:0] M, Q,
	output reg [15:0] P
	);
	integer i;
	reg [15:0] Partial = 16'b0;
	reg [15:0] temp = 16'b0;
	always @(M, Q)
	begin
		
		for (i = 0; i < 16; i = i + 1)
		begin
			if (Q[i] == 1)
			begin
				temp = M; //need to shift according to i
				temp = shl(temp, i);
			end
			else
				temp = 16'b0;
			Partial = Partial + temp;
		end
		P = Partial;
	end
endmodule