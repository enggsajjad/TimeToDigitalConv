module testcounter(clk,reset,res_test,startup,tst_start_pulse,tst_stop_pulse,testing);
	input clk;//25MHz
	input reset;// Reset from UC
	input res_test;
	input startup;

	output tst_start_pulse;
	output tst_stop_pulse;
	output testing;


	reg [19:0] test_cntr;
	wire rst;
	reg testing;

	assign rst=0;
	
	always  @(posedge clk or posedge rst)
	if(rst)
		test_cntr<=0;
	else if (res_test)
		test_cntr<=0;
	else	 if (test_cntr==20'hffffe)
		test_cntr<=test_cntr;
	else
		test_cntr<=test_cntr+1;

	assign tst_start_pulse = (test_cntr==800000)?1:0;
	assign tst_stop_pulse = (test_cntr==800400)?1:0;

	always @(posedge clk or posedge rst)
	if(rst)
		testing<=0;
	else if(reset)
		testing<=0;
	else if (startup)
		testing<=1;
	else 
		testing<=testing;


/*	reg [10:0] test_cntr;
	wire reset;

	assign reset=0;
	always  @(posedge clk or posedge reset)
	if(reset)
		test_cntr<=0;
	else if (res_test)
	   test_cntr<=0;
	else	 if (test_cntr==11'h7ff)
		test_cntr<=test_cntr;
	else
		test_cntr<=test_cntr+1;

	assign tst_start_pulse = (test_cntr==100)?1:0;
	assign tst_stop_pulse = (test_cntr==500)?1:0;
*/





/*
	reg [25:0] test1;
	reg [3:0] test2;



reg tst_start_pulse=1;
reg tst_stop_pulse=1;
wire rst;

 always  @(posedge clk or posedge reset)
 if(reset)
 	test1<=0;
 else	 if (test1==26'h3ffffff)
  test1<=test1;
 else
 	test1<=test1+1;




assign rst=0;

always @(negedge clk or posedge rst)
if(rst)
	tst_start_pulse<=1;
else if (test1==26'h000000a)
	tst_start_pulse<=0;
else if (test1==26'h00fffff)
	tst_start_pulse<=1;

always @(negedge clk or posedge rst)
if(rst)
	tst_stop_pulse<=1;

else if (test1==26'h000000f)
	tst_stop_pulse<=0;
else if (test1==26'h07fffff)
	tst_stop_pulse<=1;

*/


endmodule
