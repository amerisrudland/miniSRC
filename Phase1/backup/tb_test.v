`timescale 1ns/10ps
module datapath_tb;
	reg PCout_tb, Zlowout_tb, MDRout_tb, R2out_tb, R3out_tb;
	reg MARin_tb, Zin_tb, PCin_tb, MDRin_tb, IRin_tb, Yin_tb;
	reg IncPC_tb, Read_tb, ADD_tb, R1in_b, R2in_tb, R3in_tb;
	reg [31:0] Mdatain_tb, BusMuxOut_tb;
	wire clk;
	wire state, presentState;
initial
	begin
		assign clk = 1;
		#10 	clk = !clk;
		#10 	clk = !clk;
	end

always @(posedge clk & clk=1)
begin
	case (state)
		Default:	presentState = Reg_load1;
		Reg_load1:	presentState = Reg_load2;
		Reg_load2:	presentState = Reg_load3;
		Reg_load3: 	presentState = T0;
		T0:			presentState = T1;
		T1:			presentState = T2;
		T2: 			presentState = T3;
		T3:			presentState = T4;
		T4:			presentState = T5;
	endcase
end

always @(presentState)
begin
	case(presentState)
		Default:
			begin
				assign PCout_tb = 0;
				assign Zlowout_tb = 0;
				assign MDRout_tb = 0;
				assign R2out_tb = 0;
				assign R3out_tb = 0;
				assign MARin_tb = 0;
				assign Zin_tb = 0;
				assign PCin_tb = 0;
				assign MDRin_tb = 0;
				assign IRin_tb = 0;
				assign Yin_tb = 0;
				assign R1in_b = 0;
				assign IncPC_tb = 0;
				assign Read_tb = 0;
				assign ADD_tb = 0;
				