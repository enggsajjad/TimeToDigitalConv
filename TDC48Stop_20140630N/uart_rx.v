module uart_rx(clk,rst,enable,ser_in,dout_byte,dout_byte_rdy);
       
// inputs
input clk;
input rst;
input enable;
input ser_in;
// outputs
output [7:0] dout_byte;
output dout_byte_rdy;
//registers
reg [2:0] ser_in_reg;
reg [3:0] bit_count;
reg [3:0] sample_count;
reg [9:0] dout_byte_temp;
reg [7:0] dout_byte;
reg start;
reg [2:0] state;
reg [2:0] nstate;
reg rst1;
reg rst2;
reg load_data;
wire startbitsync;

parameter idle=0,start_bit=1, data_bits=2, stop_bit=3, load=4; 

initial
start=0;
        
 // detect input data
always @(posedge clk or posedge rst)
begin
    if (rst)
       ser_in_reg <= 0;
    else if (enable)
       ser_in_reg <= {ser_in_reg[1:0],ser_in};
end

assign startbitsync = ser_in_reg[2]&(~ser_in_reg[1]) ? 1'b1 : 1'b0;

always @(posedge startbitsync or posedge rst1)
if (rst1)
	start <= 0;
else
	start <= 1;

// output logic
always @(posedge clk or posedge rst)
begin
	if(rst)
	   sample_count <= 0; 
  else if (rst2)
		sample_count <= 4'd0;
	else if (enable)
   	sample_count <= sample_count+1;
  else 
	   sample_count <= sample_count;   	
end

always @(posedge clk or posedge rst)
begin
	if(rst)
     bit_count <=4'd0;
	else if(rst2)
     bit_count <=4'd0; 	   
  else if(enable)
	  begin
		if(sample_count ==15)
     	bit_count <= bit_count+1;
	  else
      bit_count <= bit_count;	
    end
end
// output logic
always @(posedge clk or posedge rst)
begin
    if (rst)
   		dout_byte_temp <= 0;
    else if (enable &(sample_count == 5))
      dout_byte_temp <= {ser_in_reg[2],dout_byte_temp[9:1]}; 
	 	else
	    dout_byte_temp <= dout_byte_temp; 
end
// output logic
always @(posedge clk or posedge rst)
begin
	if (rst)
	    dout_byte <= 0;
	else if(load_data)
		  dout_byte<=dout_byte_temp[8:1];
	else
	   dout_byte<=dout_byte;
end

assign dout_byte_rdy = load_data ;

always @(posedge clk or posedge rst)
if (rst)
	state<=0;
else if (enable)
	state<=nstate;

always @(state or start or bit_count or sample_count)
begin
load_data=0;
rst1=0;
rst2=0;

case (state)
idle:	begin
				if(start)
					nstate=start_bit;
				else
	 				begin
					nstate=idle;
					rst2=1;
					end
			end
start_bit:	begin
						if (bit_count==1)
							nstate=data_bits;
						else
				   		nstate=start_bit;
		      	end
data_bits:	begin
						if (bit_count==9)
							nstate=stop_bit;
						else
							nstate=data_bits;
						end
stop_bit:		begin
						if ((bit_count==9)&(sample_count==14))
							nstate=load;
						else
							nstate=stop_bit;
						end
load:				begin
						load_data=1;
						rst1=1;
						nstate=idle;
						end
default:		nstate=idle;
endcase
end
endmodule