`timescale 1ns / 1ps
module controlUnit(OpCode, RegDst, ALUSrc, MemToReg, RegWrite, MemWrite, MemRead, BranchEq, BranchGr, Jump, ExtOp, AluOp, clk
    );
    input[5:0] OpCode;
    input clk;
    output reg RegDst;
    output reg ALUSrc;
    output reg MemToReg;
    output reg RegWrite;
    output reg MemWrite;
    output reg MemRead;
    output reg BranchEq;
    output reg BranchGr;
    output reg Jump;
    output reg ExtOp;
    output reg[2:0] AluOp;

    always @(clk)
        begin
		  case(OpCode)
			6'b000000:          //R-type
			begin
				RegDst = 1;
            ALUSrc = 0;
            MemToReg = 0;
            RegWrite = 1;
            MemWrite = 0;
            MemRead = 0;
            BranchEq = 0;
            BranchGr = 0;
            Jump = 0;
            ExtOp = 0;
            AluOp=4;
			end
		  6'b 000001:            //addi
		  begin
				RegDst = 0;
            ALUSrc = 1;
            MemToReg = 0;
            RegWrite = 1;
            MemWrite = 0;
            MemRead = 0;
            BranchEq = 0;
            BranchGr = 0;
            Jump = 0;
            ExtOp = 0;
            AluOp=2;
			end
			
			6'b000010:              //orri
			begin
				RegDst = 0;
            ALUSrc = 1;
            MemToReg = 0;
            RegWrite = 1;
            MemWrite = 0;
            MemRead = 0;
            BranchEq = 0;
            BranchGr = 0;
            Jump = 0;
            ExtOp = 0;
            AluOp = 1;
			end
			6'b000011:           //andi
			begin
				 RegDst = 0;
            ALUSrc = 1;
            MemToReg = 0;
            RegWrite = 1;
            MemWrite = 0;
            MemRead = 0;
            BranchEq = 0;
            BranchGr = 0;
            Jump = 0;
            ExtOp = 0;
            AluOp = 0;
			end
			6'b000100:           //lw
			begin
				RegDst = 0;
            ALUSrc = 1;
            MemToReg = 1;
            RegWrite = 1;
            MemWrite = 0;
            MemRead = 1;
            BranchEq = 0;
            BranchGr = 0;
            Jump = 0;
            ExtOp = 1;
            AluOp=2;
			end
			
			6'b000101:                  //sw
			begin
				RegDst = 0;
            ALUSrc = 1;
            MemToReg = 0;
            RegWrite = 0;
            MemWrite = 1;
            MemRead = 0;
            BranchEq = 0;
            BranchGr = 0;
            Jump = 0;
            ExtOp = 1;
            AluOp = 2;
			end
			6'b000110:                    //beq
			begin
				RegDst = 0;
            ALUSrc = 0;
            MemToReg = 0;
            RegWrite = 0;
            MemWrite = 0;
            MemRead = 0;
            BranchEq = 1;
            BranchGr = 0;
            Jump = 0;
            ExtOp = 1;
            AluOp=3;
			end
			6'b000111:                //bgt
			begin
				RegDst = 0;
            ALUSrc = 0;
            MemToReg = 0;
            RegWrite = 0;
            MemWrite = 0;
            MemRead = 0;
            BranchEq = 0;
            BranchGr = 1;
            Jump = 0;
            ExtOp = 1;
            AluOp=3;
			end
			
			6'b001000:              //jump
			begin
				RegDst = 0;
            ALUSrc = 0;
            MemToReg = 0;
            RegWrite = 0;
            MemWrite = 0;
            MemRead = 0;
            BranchEq = 0;
            BranchGr = 0;
            Jump = 1;
            ExtOp = 0;
            AluOp = 0;
			end
		  endcase

    end

endmodule
