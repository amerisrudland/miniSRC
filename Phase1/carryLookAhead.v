module carryLookAhead (
	input [15:0] A, B,
	output reg [15:0] C
	);
	reg c4, c8, c12, c16;
	reg c0 = 0;
	always@*
	begin
		c4 = level2logic([3:0]A, [3:0]B, c0);
		C[3:0] = partialSum([3:0]A, [3:0]B, c0);
		c8 = level2logic([7:4]A, [7:4]B, c4);
		c12 = level2logic([11:8]A, [11:8]B, c8);
		c16 = level2logic([15:12]A, [15:12]B, c12);
		
	end
		
		function level2logic
		input [3:0]A, [3:0]B, carry;
		begin
			level2logic = G(A, B)|P(A, B, carry)&carry;
			// sum????
		end
		endfunction
		
		function partialSum
		input [3:0]A, [3:0]B, carry;
		begin
		integer i;
		for (i=0; i < 4; i = i + 1)
			partialSum[i] = xor (A[i], B[i], ;
			// sum????
		end
		endfunction
		
		function G
		input [3:0]A, [3:0]B;
		begin
			G = ([3]A&[3]B)|
				([2]A&[2]B&([3]A|[3]B))|
				([1]A&[1]B&([3]A|[3]B)&([2]A|[2]B))|
				([0]A&[0]B&([3]A|[3]B)&([2]A|[2]B)&([1]A|[1]B));
			//sum??
		end
		endfunction
		
		function P
		input [3:0]A, [3:0]B, carry;
		begin
			P = ([3]A|[3]B)&
				([2]A||[2]B)&
				([1]A|[1]B)&([0]A|[0]B);

			//sum??
		end
		endfunction
		