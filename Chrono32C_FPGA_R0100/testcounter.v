module testcounter(clk,reset,res_test,startup,teststart,teststop,testing);
	input clk;//25MHz
	input reset;// Reset from UC
	input res_test;
	input startup;

	output teststart;
	output teststop;
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

	assign teststart = (test_cntr==800000)?1:0;
	assign teststop = (test_cntr==800400)?1:0;

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

	assign teststart = (test_cntr==100)?1:0;
	assign teststop = (test_cntr==500)?1:0;
*/





/*
	reg [25:0] test1;
	reg [3:0] test2;



reg teststart=1;
reg teststop=1;
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
	teststart<=1;
else if (test1==26'h000000a)
	teststart<=0;
else if (test1==26'h00fffff)
	teststart<=1;

always @(negedge clk or posedge rst)
if(rst)
	teststop<=1;

else if (test1==26'h000000f)
	teststop<=0;
else if (test1==26'h07fffff)
	teststop<=1;

*/


endmodule
