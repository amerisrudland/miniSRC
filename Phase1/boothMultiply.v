module boothMultiply(
	input [31:0] A,B,
	output reg [63:0] product);
	//Make partial products
	// temp register to hold a partial product
	reg [63:0] temp;
	integer i;
	always@ (A,B)
	begin
		reg [31:0] Q;
		Q[0] = 0 - A[0];
		for (i=1; i < 32; i=i+1) begin
				Q[i] = A[i-1]-A[i];

			end
		product = 64'b0;

		for (i=0; i < 32; i=i+1)
		begin
			if (Q[i] ==-1)
			begin
				temp = 64'b1; //negate for sign extend
				temp[31:0] = -A;
				temp = temp << i;
			end
			else if (Q[i] == 0)
				temp = 64'b0;
			else // Q[i] = 1
			begin
				temp[31:0] = A;
				temp = temp << i;
			end
			// Add partial products
			product = product + temp;
		end
	end
		endmodule