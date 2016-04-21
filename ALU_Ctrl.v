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

// 0 -> lw,sw
// 1 -> branch
// 2 -> R-Type

// 4'b1111 default case

//Select exact operation
always @ (ALUOp_i or funct_i) begin
  case (ALUOp_i)
    3'b000: ALUCtrl_o <= 4'b0010;
    3'b001: ALUCtrl_o <= 4'b0110;
    3'b010: begin
      case (funct_i)
        6'b100000: ALUCtrl_o <= 4'b0010;
        6'b100010: ALUCtrl_o <= 4'b0110;
        6'b100100: ALUCtrl_o <= 4'b0000;
        6'b100101: ALUCtrl_o <= 4'b0001;
        6'b101010: ALUCtrl_o <= 4'b0111;
        default:   ALUCtrl_o <= 4'b1111;
      endcase
    end
    default: ALUCtrl_o <= 4'b1111;
  endcase
end

endmodule
