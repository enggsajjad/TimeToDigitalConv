module cu_hmi(clk,res,din,din_rdy,in_value,address,reset,res_dac,inc_dac1,
                 inc_dac2,read,fpga_sel,fpga_sel_status, restest, startup);

input clk;
input res;
input [7:0] din;
input din_rdy;
input [2:0] in_value;
output [5:0] address;
output reset;
output res_dac;
output inc_dac1;
output inc_dac2;
output read;
output fpga_sel;
output [7:0] fpga_sel_status;
output restest;
output startup;

//Registres
reg [5:0] shift ;
reg [7:0] data_reg ;
reg [2:0] sel_fpga_reg;
reg [5:0]	 address;
reg [3:0] cstate;
reg [3:0] nstate;
reg reset;
reg res_dac;
reg inc_dac1;
reg inc_dac2;
reg read;
reg load_selfpga;
reg load_addrs;
reg restest;
reg startup;
//wires
wire sync1;
wire [1:0] opcode;
wire [2:0] cmdreg;

parameter IDLE=0, CHECK=1, ADDRS=2, CMD=3, SELFPGA=4, 
		RESET=5, RES_DAC=6,INC_DAC1=7, INC_DAC2=8, RES_TEST=9, READ=10, STARTUP = 11;

always @(posedge clk or posedge res)
if (res)
	shift<=0;
else 
	shift<={shift[4:0], din_rdy};

assign sync1=(~shift[3]&(shift[2]))?1:0;

always @ (posedge clk or posedge res)
if (res)
   data_reg<=0;
else if (sync1)
	data_reg<=din;
else
	data_reg<=data_reg;

assign opcode = data_reg[7:6];
assign cmdreg  = data_reg[2:0];

always @(posedge clk or posedge res)
if (res)
cstate<=0;
else 
cstate<=nstate;

always @(cstate or opcode or cmdreg or sync1)
begin
case(cstate)
IDLE:		begin	
		 	if (sync1)
		 		nstate = CHECK;
	   	else
	 			nstate = IDLE;
			end

CHECK: 	begin 
	   	if (opcode==2'b10)
				nstate =ADDRS;
	   	else if (opcode==2'b01)
				nstate =CMD;
	   	else if (opcode==2'b11)
				nstate =SELFPGA;
	   	else 
	 			nstate = IDLE;
			end
ADDRS: 	begin
	     		nstate=READ;
	  		end

CMD: 	begin 	 
			if (cmdreg==3'b001)			//1
				nstate =RESET;
	   	else if (cmdreg==3'b010)	//2
				nstate =RES_DAC;
	   	else if (cmdreg==3'b011)	//3
				nstate =INC_DAC1;
	   	else if (cmdreg==3'b100)	//4
	   		nstate =INC_DAC2;
      	else if (cmdreg==3'b101)	//5
	   		nstate =RES_TEST;
	   	else if (cmdreg==3'b110)	//6
	   		nstate =STARTUP;
			else 
	 			nstate = IDLE;
			end

SELFPGA:	begin
	  		nstate=IDLE;
	  		end

RESET: 	begin
	  		nstate=IDLE;
	  		end

RES_DAC:	begin
	  		nstate=IDLE;
	  		end

INC_DAC1: begin
	  		 nstate=IDLE;
	  		end

INC_DAC2: begin
	  		 nstate=IDLE;
	  		 end

RES_TEST: begin
	  		 nstate=IDLE;
	  		 end
STARTUP: begin
	  		 nstate=IDLE;
   		 end
READ: 	begin
	  		nstate=IDLE;
	  		end

default:	nstate=IDLE;

endcase
end

///output 
always @(cstate)
begin
reset=0;
res_dac=0;
inc_dac1=0;
inc_dac2=0;
read=0;
load_selfpga=0;
load_addrs=0;
restest=0;
startup=0;

case(cstate)

ADDRS:  	begin
	   	load_addrs=1;
			end

SELFPGA:	begin	
	      load_selfpga=1;
			end
	  
RESET:  	begin
	   	reset=1;
	   	end

RES_DAC: begin
         res_dac=1;
         end

INC_DAC1: begin
	     	inc_dac1=1;
	     	end

INC_DAC2: begin
	  		 inc_dac2=1;
	  		 end

RES_TEST: begin
	  		 restest=1;
	  		 end
STARTUP: begin
	  		 startup=1;
	  		 end
READ: 	 begin
	  		 read=1;
	  	    end

endcase
end

always @(posedge clk or posedge res)
if(res)
	sel_fpga_reg<=3'b111;
else if (load_selfpga)
	sel_fpga_reg<=data_reg[2:0];
else
	sel_fpga_reg<=sel_fpga_reg;


assign fpga_sel = (sel_fpga_reg == in_value)?1:0;

assign fpga_sel_status = {fpga_sel,sel_fpga_reg,1'b0, in_value};


always @(posedge clk or posedge res)
if(res)
	address <= 0;
else if (load_addrs)
	address <= data_reg[5:0];
endmodule