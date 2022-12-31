`timescale 1ns / 1ps
module alucontrol(func , aluop , ctr);
	input [5:0] func;
	input [2:0] aluop;
	output reg [2:0] ctr;
	always @ (func , aluop , ctr)
	begin
		if( aluop[2] == 0)
			ctr=aluop;
		else
			ctr[0] = func[2] & (~func[3]) & (~func[4]) & (~func[5]);
			ctr[1] = func[0] & (~func[3]) & (~func[4]) & (~func[5]);
			ctr[2] = func[1] & (~func[3]) & (~func[4]) & (~func[5]);

	end


endmodule
