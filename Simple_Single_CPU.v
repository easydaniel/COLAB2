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
wire [32-1:0]  pc_in_i;
wire [32-1:0]  pc_out_i;
wire [32-1:0]  add_one_src;
wire [32-1:0]  add_one_res;
wire [32-1:0]  add_two_res;
wire [32-1:0]  instr_o;
wire [32-1:0]  shift_in;
wire [32-1:0]  shift_out;
wire [32-1:0]  alu_src;
wire [32-1:0]  alu_res;
wire [32-1:0]  RSdata_o;
wire [32-1:0]  RTdata_o;
wire [5-1:0]   RDaddr_res;
wire [4-1:0]   ctrl_i;
wire           RegWrite_o;
wire  [3-1:0]  ALU_op_o;
wire           RegDst_o;
wire           Branch_o;
wire           zero_o;
wire           Zero_ext_o;


//Greate componentes
ProgramCounter PC(
      .clk_i(clk_i),
	    .rst_i (rst_i),
	    .pc_in_i(pc_in_i),
	    .pc_out_o(pc_out_i)
	    );

Adder Adder1(
      .src1_i(pc_out_i),
	    .src2_i(32'd4),
	    .sum_o(add_one_res)
	    );

Instr_Memory IM(
      .pc_addr_i(pc_out_i),
	    .instr_o(instr_o)
	    );

MUX_2to1 #(.size(5)) Mux_Write_Reg(
        .data0_i(instr_o[20:16]),
        .data1_i(instr_o[15:11]),
        .select_i(RegDst_o),
        .data_o(RDaddr_res)
        );

Reg_File RF(
        .clk_i(clk_i),
	      .rst_i(rst_i) ,
        .RSaddr_i(instr_o[25:21]) ,
        .RTaddr_i(instr_o[20:16]) ,
        .RDaddr_i(RDaddr_res) ,
        .RDdata_i(alu_res)  ,
        .RegWrite_i(RegWrite_o),
        .RSdata_o(RSdata_o) ,
        .RTdata_o(RTdata_o)
        );

Decoder Decoder(
      .instr_op_i(instr_o[31:26]),
	    .RegWrite_o(RegWrite_o),
	    .ALU_op_o(ALU_op_o),
	    .ALUSrc_o(ALUSrc_o),
	    .RegDst_o(RegDst_o),
		  .Branch_o(Branch_o),
      .Zero_ext_o(Zero_ext_o)
	    );

ALU_Ctrl AC(
        .funct_i(instr_o[5:0]),
        .ALUOp_i(ALU_op_o),
        .ALUCtrl_o(ctrl_i)
        );

Sign_Extend SE(
        .data_i(instr_o[15:0]),
        .zero_ext_i(Zero_ext_o),
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
      .shmat_i(instr_o[10:6]),
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
        .select_i(Branch_o & zero_o),
        .data_o(pc_in_i)
        );

endmodule
