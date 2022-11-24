module router(rx_pc,rx_uc,rx_pr,rx_fpga,sel0,sel1,tx_fpga,tx_pc,tx_uc,tx_pr,selfpga, fpga_addr);
   
	 	input rx_pc;
		input rx_uc;
		input rx_pr;
		input rx_fpga;
		input sel0;
		input sel1;
		input selfpga;
		input [2:0] fpga_addr;

   	output tx_fpga;
		output tx_pc;
		output tx_uc;
		output tx_pr;
		
		reg tx_pc1;
		reg tx_pr1;
		reg tx_uc1;
		reg tx_fpga;

		wire [1:0] SEL;

		assign SEL = {sel1,sel0};
		
		///DEMUX     ////
		always @(rx_uc or SEL)
		begin
			case (SEL)
				2'b00: 
					begin
					tx_fpga = rx_uc;
					tx_pc1 = 1'b1;
					tx_pr1 = 1'b1;
					end
				2'b01: 
					begin
					tx_fpga = 1'b1;
					tx_pc1 = rx_uc;
					tx_pr1 = 1'b1;
					end
				2'b10: 
					begin
					tx_fpga = 1'b1;
					tx_pc1 = 1'b1;
					tx_pr1 = rx_uc;
					end
				2'b11: 
					begin
					tx_fpga = 1'b1;
					tx_pc1 = 1'b1;
					tx_pr1 = 1'b1;
					end
			endcase
		end

		/// MUX   ///
		always @(rx_fpga or rx_pc or rx_pr or SEL)
		begin
			case (SEL)
				2'b00: 
					begin
					tx_uc1 = rx_fpga;
					end
				2'b01: 
					begin
					tx_uc1 = rx_pc;
					end
				2'b10: 
					begin
					tx_uc1 = rx_pr;
					end
				2'b11: 
					begin
					tx_uc1 = 1'b1;
					end
			endcase
		end

		assign tx_uc=(selfpga)?tx_uc1:1'bz;

		assign tx_pc=(fpga_addr==3'b111)?tx_pc1:1'bz;
		assign tx_pr=(fpga_addr==3'b111)?tx_pr1:1'bz;

		/*//FPGA Receiver (UC or PC) 
		assign rx1 = (sel0)?rx_uc:rx_pc;
		//FPGA Transmitter (UC or PC )
		assign tx_uc=((sel0)& selfpga)?tx1:1'bz;
		assign tx_pc=((!sel0)&selfpga)?tx1:1'bz;
		//Select b/w uart and printer Reciever
		assign tx_pr = (sel1==0)?rx1:1'b1;
		assign tx_fpga    = (sel1==1)?rx1:1'b1;
		//Select b/w uart and printer Transmitter
		assign tx1 = (sel1==0)?rx_pr:rx_fpga;
		*/
		
endmodule