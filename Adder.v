//Subject:     CO project 2 - Adder
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:
//----------------------------------------------
//Date:
//----------------------------------------------
//Description:
//--------------------------------------------------------------------------------

module Adder(
  src1_i,
	src2_i,
	sum_o
	);

//I/O ports
input  [32-1:0]  src1_i;
input  [32-1:0]	 src2_i;
output [32-1:0]	 sum_o;

//Internal Signals
wire    [32-1:0]	 sum_o;

//Parameter

//Main function
assign sum_o[0] = src1_i[0] ^ src2_i[0];
assign sum_o[1] = (src1_i[1] ^ src2_i[1]) ^ (src1_i[0] & src2_i[0]);
assign sum_o[2] = (src1_i[2] ^ src2_i[2]) ^ (src1_i[1] & src2_i[1]);
assign sum_o[3] = (src1_i[3] ^ src2_i[3]) ^ (src1_i[2] & src2_i[2]);
assign sum_o[4] = (src1_i[4] ^ src2_i[4]) ^ (src1_i[3] & src2_i[3]);
assign sum_o[5] = (src1_i[5] ^ src2_i[5]) ^ (src1_i[4] & src2_i[4]);
assign sum_o[6] = (src1_i[6] ^ src2_i[6]) ^ (src1_i[5] & src2_i[5]);
assign sum_o[7] = (src1_i[7] ^ src2_i[7]) ^ (src1_i[6] & src2_i[6]);
assign sum_o[8] = (src1_i[8] ^ src2_i[8]) ^ (src1_i[7] & src2_i[7]);
assign sum_o[9] = (src1_i[9] ^ src2_i[9]) ^ (src1_i[8] & src2_i[8]);
assign sum_o[10] = (src1_i[10] ^ src2_i[10]) ^ (src1_i[9] & src2_i[9]);
assign sum_o[11] = (src1_i[11] ^ src2_i[11]) ^ (src1_i[10] & src2_i[10]);
assign sum_o[12] = (src1_i[12] ^ src2_i[12]) ^ (src1_i[11] & src2_i[11]);
assign sum_o[13] = (src1_i[13] ^ src2_i[13]) ^ (src1_i[12] & src2_i[12]);
assign sum_o[14] = (src1_i[14] ^ src2_i[14]) ^ (src1_i[13] & src2_i[13]);
assign sum_o[15] = (src1_i[15] ^ src2_i[15]) ^ (src1_i[14] & src2_i[14]);
assign sum_o[16] = (src1_i[16] ^ src2_i[16]) ^ (src1_i[15] & src2_i[15]);
assign sum_o[17] = (src1_i[17] ^ src2_i[17]) ^ (src1_i[16] & src2_i[16]);
assign sum_o[18] = (src1_i[18] ^ src2_i[18]) ^ (src1_i[17] & src2_i[17]);
assign sum_o[19] = (src1_i[19] ^ src2_i[19]) ^ (src1_i[18] & src2_i[18]);
assign sum_o[20] = (src1_i[20] ^ src2_i[20]) ^ (src1_i[19] & src2_i[19]);
assign sum_o[21] = (src1_i[21] ^ src2_i[21]) ^ (src1_i[20] & src2_i[20]);
assign sum_o[22] = (src1_i[22] ^ src2_i[22]) ^ (src1_i[21] & src2_i[21]);
assign sum_o[23] = (src1_i[23] ^ src2_i[23]) ^ (src1_i[22] & src2_i[22]);
assign sum_o[24] = (src1_i[24] ^ src2_i[24]) ^ (src1_i[23] & src2_i[23]);
assign sum_o[25] = (src1_i[25] ^ src2_i[25]) ^ (src1_i[24] & src2_i[24]);
assign sum_o[26] = (src1_i[26] ^ src2_i[26]) ^ (src1_i[25] & src2_i[25]);
assign sum_o[27] = (src1_i[27] ^ src2_i[27]) ^ (src1_i[26] & src2_i[26]);
assign sum_o[28] = (src1_i[28] ^ src2_i[28]) ^ (src1_i[27] & src2_i[27]);
assign sum_o[29] = (src1_i[29] ^ src2_i[29]) ^ (src1_i[28] & src2_i[28]);
assign sum_o[30] = (src1_i[30] ^ src2_i[30]) ^ (src1_i[29] & src2_i[29]);
assign sum_o[31] = (src1_i[31] ^ src2_i[31]) ^ (src1_i[30] & src2_i[30]);


endmodule
