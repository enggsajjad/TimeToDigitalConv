
module Registers26bit_interface( 
										tc, 
										reset,
										sel_flag, 
										sel_cntr_tbuf1, 
										sel_cntr_tbuf2,
										sel_cntr_tbuf3, 
										sel_cntr_tbuf4,
										sel_cntr_tbuf5, 
										sel_cntr_tbuf6,
										sel_cntr_tbuf7, 
										sel_cntr_tbuf8,
										counter1, 
										counter2, 
                              counter3,
										counter4,
										counter5, 
										counter6, 
                              counter7,
										counter8,
										count1,
										count2,
										count3,
										count4,
										count5,
										count6,
										count7,
										count8,
										tc_flag
										);
   
	 input [7:0] tc;
	 input reset;


	 input [26:0] counter1;
	 input [26:0] counter2;
	 input [26:0] counter3;
	 input [26:0] counter4;
	 input [26:0] counter5;
	 input [26:0] counter6;
	 input [26:0] counter7;
	 input [26:0] counter8;

	 input [3:0] sel_cntr_tbuf1;
	 input [3:0] sel_cntr_tbuf2;
	 input [3:0] sel_cntr_tbuf3;
	 input [3:0] sel_cntr_tbuf4;
	 input [3:0] sel_cntr_tbuf5;
	 input [3:0] sel_cntr_tbuf6;
	 input [3:0] sel_cntr_tbuf7;
	 input [3:0] sel_cntr_tbuf8;

	 input sel_flag;
	
   
	 
	 output [7:0] count1;
	 output [7:0] count2;
	 output [7:0] count3;
	 output [7:0] count4;
	 output [7:0] count5;
	 output [7:0] count6;
	 output [7:0] count7;
	 output [7:0] count8;

	output [7:0] tc_flag;

reg tc1_reg;
reg tc2_reg;
reg tc3_reg;
reg tc4_reg;
reg tc5_reg;
reg tc6_reg;
reg tc7_reg;
reg tc8_reg;


assign 	count1=(sel_cntr_tbuf1[0]==0)?counter1[7:0]:8'hzz;
assign 	count1=(sel_cntr_tbuf1[1]==0)?counter1[15:8]:8'hzz;
assign 	count1=(sel_cntr_tbuf1[2]==0)?counter1[23:16]:8'hzz;
assign 	count1=(sel_cntr_tbuf1[3]==0)?{5'b00000,counter1[26:24]}:8'hzz;


assign 	count2=(sel_cntr_tbuf2[0]==0)?counter2[7:0]:8'hzz;
assign 	count2=(sel_cntr_tbuf2[1]==0)?counter2[15:8]:8'hzz;
assign 	count2=(sel_cntr_tbuf2[2]==0)?counter2[23:16]:8'hzz;
assign 	count2=(sel_cntr_tbuf2[3]==0)?{5'b00000,counter2[26:24]}:8'hzz;


assign 	count3=(sel_cntr_tbuf3[0]==0)?counter3[7:0]:8'hzz;
assign 	count3=(sel_cntr_tbuf3[1]==0)?counter3[15:8]:8'hzz;
assign 	count3=(sel_cntr_tbuf3[2]==0)?counter3[23:16]:8'hzz;
assign 	count3=(sel_cntr_tbuf3[3]==0)?{5'b00000,counter3[26:24]}:8'hzz;



assign 	count4=(sel_cntr_tbuf4[0]==0)?counter4[7:0]:8'hzz;
assign 	count4=(sel_cntr_tbuf4[1]==0)?counter4[15:8]:8'hzz;
assign 	count4=(sel_cntr_tbuf4[2]==0)?counter4[23:16]:8'hzz;
assign 	count4=(sel_cntr_tbuf4[3]==0)?{5'b00000,counter4[26:24]}:8'hzz;


assign 	count5=(sel_cntr_tbuf5[0]==0)?counter5[7:0]:8'hzz;
assign 	count5=(sel_cntr_tbuf5[1]==0)?counter5[15:8]:8'hzz;
assign 	count5=(sel_cntr_tbuf5[2]==0)?counter5[23:16]:8'hzz;
assign 	count5=(sel_cntr_tbuf5[3]==0)?{5'b00000,counter5[26:24]}:8'hzz;


assign 	count6=(sel_cntr_tbuf6[0]==0)?counter6[7:0]:8'hzz;
assign 	count6=(sel_cntr_tbuf6[1]==0)?counter6[15:8]:8'hzz;
assign 	count6=(sel_cntr_tbuf6[2]==0)?counter6[23:16]:8'hzz;
assign 	count6=(sel_cntr_tbuf6[3]==0)?{5'b00000,counter6[26:24]}:8'hzz;


assign 	count7=(sel_cntr_tbuf7[0]==0)?counter7[7:0]:8'hzz;
assign 	count7=(sel_cntr_tbuf7[1]==0)?counter7[15:8]:8'hzz;
assign 	count7=(sel_cntr_tbuf7[2]==0)?counter7[23:16]:8'hzz;
assign 	count7=(sel_cntr_tbuf7[3]==0)?{5'b00000,counter7[26:24]}:8'hzz;


assign 	count8=(sel_cntr_tbuf8[0]==0)?counter8[7:0]:8'hzz;
assign 	count8=(sel_cntr_tbuf8[1]==0)?counter8[15:8]:8'hzz;
assign 	count8=(sel_cntr_tbuf8[2]==0)?counter8[23:16]:8'hzz;
assign 	count8=(sel_cntr_tbuf8[3]==0)?{5'b00000,counter8[26:24]}:8'hzz;


always @(posedge tc[0] or posedge reset)
if (reset)
tc1_reg<=0;
else
tc1_reg<=1;

always @(posedge tc[1] or posedge reset)
if (reset)
tc2_reg<=0;
else
tc2_reg<=1;

always @(posedge tc[2] or posedge reset)
if (reset)
tc3_reg<=0;
else
tc3_reg<=1;

always @(posedge tc[3] or posedge reset)
if (reset)
tc4_reg<=0;
else
tc4_reg<=1;


always @(posedge tc[4] or posedge reset)
if (reset)
tc5_reg<=0;
else
tc5_reg<=1;

always @(posedge tc[5] or posedge reset)
if (reset)
tc6_reg<=0;
else
tc6_reg<=1;


always @(posedge tc[6] or posedge reset)
if (reset)
tc7_reg<=0;
else
tc7_reg<=1;

always @(posedge tc[7] or posedge reset)
if (reset)
tc8_reg<=0;
else
tc8_reg<=1;

assign tc_flag=(sel_flag==0)? 8'haa:8'hzz;//{tc4_reg,tc3_reg,tc2_reg,tc1_reg}:4'hz;


endmodule



