
module cntr_reg_interface( 
										sel_cntr_bytes1, 
										sel_cntr_bytes2,
										sel_cntr_bytes3, 
										sel_cntr_bytes4,
										cntr1_val_reg, 
										cntr2_val_reg, 
     				                         cntr3_val_reg,
										cntr4_val_reg,
										cntr1_in_byte,
										cntr2_in_byte,
										cntr3_in_byte,
										cntr4_in_byte
										);
   
	 input [26:0] cntr1_val_reg;
	 input [26:0] cntr2_val_reg;
	 input [26:0] cntr3_val_reg;
	 input [26:0] cntr4_val_reg;
	 input [3:0] sel_cntr_bytes1;
	 input [3:0] sel_cntr_bytes2;
	 input [3:0] sel_cntr_bytes3;
	 input [3:0] sel_cntr_bytes4;

 
	 output [7:0] cntr1_in_byte;
	 output [7:0] cntr2_in_byte;
	 output [7:0] cntr3_in_byte;
	 output [7:0] cntr4_in_byte;

assign 	cntr1_in_byte=(sel_cntr_bytes1[0]==0)?cntr1_val_reg[7:0]:8'hzz;
assign 	cntr1_in_byte=(sel_cntr_bytes1[1]==0)?cntr1_val_reg[15:8]:8'hzz;
assign 	cntr1_in_byte=(sel_cntr_bytes1[2]==0)?cntr1_val_reg[23:16]:8'hzz;
assign 	cntr1_in_byte=(sel_cntr_bytes1[3]==0)?{5'b00000,cntr1_val_reg[26:24]}:8'hzz;


assign 	cntr2_in_byte=(sel_cntr_bytes2[0]==0)?cntr2_val_reg[7:0]:8'hzz;
assign 	cntr2_in_byte=(sel_cntr_bytes2[1]==0)?cntr2_val_reg[15:8]:8'hzz;
assign 	cntr2_in_byte=(sel_cntr_bytes2[2]==0)?cntr2_val_reg[23:16]:8'hzz;
assign 	cntr2_in_byte=(sel_cntr_bytes2[3]==0)?{5'b00000,cntr2_val_reg[26:24]}:8'hzz;


assign 	cntr3_in_byte=(sel_cntr_bytes3[0]==0)?cntr3_val_reg[7:0]:8'hzz;
assign 	cntr3_in_byte=(sel_cntr_bytes3[1]==0)?cntr3_val_reg[15:8]:8'hzz;
assign 	cntr3_in_byte=(sel_cntr_bytes3[2]==0)?cntr3_val_reg[23:16]:8'hzz;
assign 	cntr3_in_byte=(sel_cntr_bytes3[3]==0)?{5'b00000,cntr3_val_reg[26:24]}:8'hzz;



assign 	cntr4_in_byte=(sel_cntr_bytes4[0]==0)?cntr4_val_reg[7:0]:8'hzz;
assign 	cntr4_in_byte=(sel_cntr_bytes4[1]==0)?cntr4_val_reg[15:8]:8'hzz;
assign 	cntr4_in_byte=(sel_cntr_bytes4[2]==0)?cntr4_val_reg[23:16]:8'hzz;
assign 	cntr4_in_byte=(sel_cntr_bytes4[3]==0)?{5'b00000,cntr4_val_reg[26:24]}:8'hzz;

endmodule



