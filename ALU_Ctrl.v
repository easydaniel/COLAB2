//Subject:     CO project 2 - ALU Controller
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:
//----------------------------------------------
//Date:
//----------------------------------------------
//Description:
//--------------------------------------------------------------------------------

module ALU_Ctrl(
          funct_i,
          ALUOp_i,
          ALUCtrl_o
          );

//I/O ports
input      [6-1:0] funct_i;
input      [3-1:0] ALUOp_i;

output     [4-1:0] ALUCtrl_o;

//Internal Signals
reg        [4-1:0] ALUCtrl_o;

//Parameter

// ALUOp_i
// 3'b000 -> lw,sw
// 3'b001 -> beq
// 3'b010 -> R-Type
// 3'b011 -> addi
// 3'b100 -> sltiu
// 3'b101 -> lui
// 3'b110 -> ori
// 3'b111 -> andi

// ALUCtrl_o
// 4'bxxxx default case

//Select exact operation
always @ (*) begin
  case (ALUOp_i)
    3'b000: ALUCtrl_o = 4'b0010;
    3'b001: ALUCtrl_o = 4'b0110;
    3'b010: begin
      case (funct_i)
          6'b100000: ALUCtrl_o = 4'b0010;
          6'b100010: ALUCtrl_o = 4'b0110;
          6'b100100: ALUCtrl_o = 4'b0000;
          6'b100101: ALUCtrl_o = 4'b0001;
          6'b101010: ALUCtrl_o = 4'b0111;
          6'b000011: ALUCtrl_o = 4'b0111; // SRA
          6'b000111: ALUCtrl_o = 4'b0111; // SRAV
          default:   ALUCtrl_o = 4'bxxxx;
      endcase
    end
    3'b011: ALUCtrl_o = 4'b0010;
    3'b100: ALUCtrl_o = 4'b0111;
    3'b110: ALUCtrl_o = 4'b0001;
    3'b111: ALUCtrl_o = 4'b0000;
    default: ALUCtrl_o = 4'bxxxx;
  endcase
end

endmodule
