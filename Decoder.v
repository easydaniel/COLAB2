//Subject:     CO project 2 - Decoder
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:
//----------------------------------------------
//Date:
//----------------------------------------------
//Description:
//--------------------------------------------------------------------------------

module Decoder(
    instr_op_i,
	RegWrite_o,
	ALU_op_o,
	ALUSrc_o,
	RegDst_o,
	Branch_o
	);

//I/O ports
input  [6-1:0] instr_op_i;

output         RegWrite_o;
output [3-1:0] ALU_op_o;
output         ALUSrc_o;
output         RegDst_o;
output         Branch_o;

//Internal Signals
reg    [3-1:0] ALU_op_o;
reg            ALUSrc_o;
reg            RegWrite_o;
reg            RegDst_o;
reg            Branch_o;

//Parameter


//Main function
// op code
// 000: load/save word
// 001: branch equal
// 010: r type
// 011: ADD
// 100: SLT
// 101: LUI
// 110: OR
// 111: AND

always @(instr_op_i) begin
    case (instr_op_i)
        0: begin // r type
            ALU_op_o <= 3'b010;
            ALUSrc_o <= 0;
            RegWrite_o <= 1;
            RegDst_o <= 1;
            Branch_o <= 0;
        end
        4: begin // branch
            ALU_op_o <= 3'b001;
            ALUSrc_o <= 0;
            RegWrite_o <= 0;
            RegDst_o <= 0; //x
            Branch_o <= 1;
        end
        8: begin // addi
            ALU_op_o <= 3'b011;
            ALUSrc_o <= 0;
            RegWrite_o <= 1;
            RegDst_o <= 0;
            Branch_o <= 0;
        end
        9: begin // sltiu
            ALU_op_o <= 3'b100;
            ALUSrc_o <= 0;
            RegWrite_o <= 0;
            RegDst_o <= 1;
            Branch_o <= 0;
        end
        default: begin
            ALU_op_o <= 3'b000;
            ALUSrc_o <= 0;
            RegWrite_o <= 0;
            RegDst_o <= 0;
            Branch_o <= 0;
        end
    endcase
end
endmodule
