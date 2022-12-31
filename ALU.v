`timescale 1ns / 1ps
module ALU(a,b,sel,out);
	 input [24:0] a;
	 input [24:0] b;
	 input [2:0] sel;
	 output reg [24:0] out;
	 
	 always @(sel,a,b)
	 begin
		case(sel)
			3'b 000: out = a&b;
			3'b 001: out = a|b;
			3'b 010: out = a+b;
			3'b 011: out = a-b;
			3'b 100: out = a*b;
			3'b 101: out = a/b;
			3'b 110: out = (a<<b);
			3'b 111: out = (a>>>b);
		endcase
	 end


endmodule
