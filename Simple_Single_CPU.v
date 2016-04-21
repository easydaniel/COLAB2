//Subject:     CO project 2 - Simple Single CPU
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:
//----------------------------------------------
//Date:
//----------------------------------------------
//Description:
//--------------------------------------------------------------------------------
module Simple_Single_CPU(
    clk_i,
		rst_i
		);

//I/O port
input         clk_i;
input         rst_i;

//Internal Signles
wire [32-1:0] pc_in_i;
wire [32-1:0] pc_out_i;
wire [32-1:0] add_one_src;
wire [32-1:0] add_one_res;
wire [32-1:0] add_two_res;
wire [32-1:0] instr_o;
wire [32-1:0] shift_in;
wire [32-1:0] shift_out;
wire [32-1:0] alu_src;
wire [32-1:0] alu_res;
wire [32-1:0] RSdata_o;
wire [32-1:0] RTdata_o;
wire [5-1:0]  RDaddr_res;
wire [4-1:0]  ctrl_i;
wire          PC_sel;
reg           RegWrite_o;
reg  [3-1:0]  ALU_op_o;
reg           RegDst_o;
reg           Branch_o;
reg           zero_o;


assign add_one_src = 32'd4;
assign PC_sel      = (Branch_o & zero_o);

//Greate componentes
ProgramCounter PC(
      .clk_i(clk_i),
	    .rst_i (rst_i),
	    .pc_in_i(pc_in_i),
	    .pc_out_o(pc_out_i)
	    );

Adder Adder1(
      .src1_i(pc_out_i),
	    .src2_i(add_one_src),
	    .sum_o(add_one_res)
	    );

Instr_Memory IM(
      .pc_addr_i(pc_out_i),
	    .instr_o(instr_o)
	    );

MUX_2to1 #(.size(5)) Mux_Write_Reg(
        .data0_i(instr_o[19:14]),
        .data1_i(instr_o[13:8]),
        .select_i(RegDst_o),
        .data_o(RDaddr_res)
        );

Reg_File RF(
        .clk_i(clk_i),
	      .rst_i(rst_i) ,
        .RSaddr_i(instr_o[24:19]) ,
        .RTaddr_i(instr_o[19:14]) ,
        .RDaddr_i(RDaddr_res) ,
        .RDdata_i(alu_res)  ,
        .RegWrite_i(RegWrite_o),
        .RSdata_o(RSdata_o) ,
        .RTdata_o(RTdata_o)
        );

Decoder Decoder(
      .instr_op_i(instr_o[31:25]),
	    .RegWrite_o(RegWrite_o),
	    .ALU_op_o(ALU_op_o),
	    .ALUSrc_o(ALUSrc_o),
	    .RegDst_o(RegDst_o),
		  .Branch_o(Branch_o)
	    );

ALU_Ctrl AC(
        .funct_i(instr_o[5:0]),
        .ALUOp_i(ALU_op_o),
        .ALUCtrl_o(ctrl_i)
        );

Sign_Extend SE(
        .data_i(instr_o[15:0]),
        .data_o(shift_in)
        );

MUX_2to1 #(.size(32)) Mux_ALUSrc(
        .data0_i(RTdata_o),
        .data1_i(shift_in),
        .select_i(ALUSrc_o),
        .data_o(alu_src)
        );

ALU ALU(
      .src1_i(RSdata_o),
	    .src2_i(alu_src),
	    .ctrl_i(ctrl_i),
	    .result_o(alu_res),
      .zero_o(zero_o)
	    );

Adder Adder2(
      .src1_i(add_one_res),
	    .src2_i(shift_out),
	    .sum_o(add_two_res)
	    );

Shift_Left_Two_32 Shifter(
        .data_i(shift_in),
        .data_o(shift_out)
        );

MUX_2to1 #(.size(32)) Mux_PC_Source(
        .data0_i(add_one_res),
        .data1_i(add_two_res),
        .select_i(PC_sel),
        .data_o(pc_in_i)
        );

endmodule
