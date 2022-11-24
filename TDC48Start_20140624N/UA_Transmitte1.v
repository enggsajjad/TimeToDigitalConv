module UA_Transmitter1(clk,rst,enable,din_rdy,din_byte,ser_out,uart_ready);

input clk;
input rst;
input enable;
input din_rdy;
input [7:0] din_byte;

output ser_out;
output uart_ready;

wire ser_out;

reg [8:0] data_buf;
reg [7:0] datareg;
reg [3:0] shift_count;
reg [3:0] sample_count;
reg rst_din_rdy;
reg ld_shift;
reg ld_data;
reg rst_sample_count;
reg din_rdyreg;
reg [1:0] state;
reg [1:0] nstate;

parameter idle=0, load_data=1, wait_txdone=2, shift=3;

initial
din_rdyreg=0;
 
always@(posedge din_rdy or posedge rst_din_rdy)	
	if(rst_din_rdy)
		din_rdyreg <= 0;
	else 
		din_rdyreg <= 1;
	
assign ser_out = data_buf[0];

// register the incoming data 
always @(posedge clk or posedge rst)
begin
	if(rst)
		datareg <= 0;
	else if(ld_data) 
		datareg <= din_byte; 
end

always @(posedge clk or posedge rst)
begin
	if(rst)
		data_buf <= 9'h1ff;
	else if(ld_shift) ///din_rdy
		data_buf <= {datareg,1'b0};	// at just arriving the start_bit_sig, we load data into data_bffer
	else if ((sample_count==15)&(enable))
	     data_buf <= {1'b1,data_buf[8:1]};
	else 
	     data_buf <= data_buf;		     
end
	 
// counter that count shift in data buffer logic
always @(posedge clk or posedge rst)
begin
	if(rst)
		shift_count <= 4'ha;
	else if(rst_sample_count)	 //din ready synced
		shift_count <= 0;
	else if ((sample_count==15)&&(enable))
		begin
		if (shift_count==4'ha)
			shift_count <= shift_count;
		else
	     	shift_count<=shift_count+1;
		end
	else
		shift_count <= shift_count;
end

// counter that count shift in data buffer logic
always @(posedge clk or posedge rst)
begin
	if(rst)
		sample_count <= 0;
	else if(rst_sample_count)	 //din ready synced
		sample_count <= 0;
	else  if (enable)
		sample_count<=sample_count+1;
	else
		sample_count<=sample_count;
	
end

assign uart_ready = ((shift_count==9)&&(sample_count==15))?0:1;

always @(posedge clk or posedge rst)
if (rst)
state<=0;
else 
state<=nstate;

always @(state or din_rdyreg or uart_ready)
begin
ld_data=0;
rst_din_rdy=0;
ld_shift=0;
rst_sample_count=0;

case (state)
idle: 		if(din_rdyreg)
				begin
					nstate=load_data;
				end
	 			else
	 				nstate=idle;

load_data:	begin
				rst_din_rdy=1;
				ld_data=1;
				nstate=wait_txdone;
		      end

wait_txdone:if(uart_ready)
					nstate=shift;
				else
					nstate=wait_txdone;
				
shift:		begin
				ld_shift=1;
				rst_sample_count=1;
				nstate=idle;
				end	

default:		nstate=idle;

endcase
end

endmodule
