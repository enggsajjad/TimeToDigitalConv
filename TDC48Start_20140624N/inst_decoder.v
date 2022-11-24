module inst_decoder(clk,res,din_rdy,din,dev_addr,
			cmd_reset,cmd_rst_dac,cmd_inc_dac,/*inc_dac2,*/cmd_read,cmd_dev_sel,cmd_rst_test, cmd_startup,
			pkt_addr,dev_sel_byte);

input clk;
input res;
input din_rdy;
input [7:0] din;
input [3:0] dev_addr;

output cmd_reset;
output cmd_rst_dac;
output cmd_inc_dac;
//output inc_dac2;
output cmd_read;
output cmd_dev_sel;
output cmd_rst_test;
output cmd_startup;
output [4:0] pkt_addr;
output [7:0] dev_sel_byte;


//Registres
reg [5:0] shift ;
reg [7:0] data_reg ;
reg [3:0] dev_addr_reg;
reg [4:0]	 pkt_addr;
reg [3:0] cstate;
reg [3:0] nstate;
reg cmd_reset;
reg cmd_rst_dac;
reg cmd_inc_dac;
//reg inc_dac2;
reg cmd_read;
reg load_dev_addr;
reg load_pkt_addr;
reg cmd_rst_test;
reg cmd_startup;
//wires
wire sync1;
wire [1:0] opcode;
wire [2:0] cmdreg;

parameter IDLE=0, CHECK=1, ADDRS=2, CMD=3, SELFPGA=4, 
		RESET=5, RES_DAC=6,INC_DAC1=7, /*INC_DAC2=8,*/ RES_TEST=9, READ=10, STARTUP = 11;

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
	   	/*else if (cmdreg==3'b011)	//3
				nstate =INC_DAC1;*/
	   	else if (cmdreg==3'b100)	//4
	   		nstate =INC_DAC1;
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

/*INC_DAC2: begin
	  		 nstate=IDLE;
	  		 end*/

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
cmd_reset=0;
cmd_rst_dac=0;
cmd_inc_dac=0;
//inc_dac2=0;
cmd_read=0;
load_dev_addr=0;
load_pkt_addr=0;
cmd_rst_test=0;
cmd_startup=0;

case(cstate)

ADDRS:  	begin
	   	load_pkt_addr=1;
			end

SELFPGA:	begin	
	      load_dev_addr=1;
			end
	  
RESET:  	begin
	   	cmd_reset=1;
	   	end

RES_DAC: begin
         cmd_rst_dac=1;
         end

INC_DAC1: begin
	     cmd_inc_dac=1;
	     end

/*INC_DAC2: begin
	  		 inc_dac2=1;
	  		 end*/

RES_TEST: begin
	  	cmd_rst_test=1;
	  	end
STARTUP: begin
	  	cmd_startup=1;
	  	end
READ: 	begin
	  	cmd_read=1;
	  	end

endcase
end

always @(posedge clk or posedge res)
if(res)
	dev_addr_reg<=4'b0000;
	//dev_addr_reg<=4'b1111;
else if (load_dev_addr)
	dev_addr_reg<=data_reg[3:0];
else
	dev_addr_reg<=dev_addr_reg;


assign cmd_dev_sel = (dev_addr_reg == dev_addr)?1:0;

//assign dev_sel_byte = {cmd_dev_sel,dev_addr_reg,1'b0, dev_addr};
assign dev_sel_byte = {4'b1100,dev_addr_reg};

always @(posedge clk or posedge res)
if(res)
	pkt_addr <= 0;
else if (load_pkt_addr)
	pkt_addr <= data_reg[4:0];
endmodule