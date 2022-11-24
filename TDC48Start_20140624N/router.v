module router(rx_pc,rx_uc,rx_pr,tx,rx_stop,sel0,sel1,rx,tx_pc,tx_uc,tx_pr,tx_stop,dev_sel);
   
	 	input rx_pc;
		input rx_uc;
		input rx_pr;
		input tx;
		input rx_stop;
		input sel0;
		input sel1;
		input dev_sel;

   		output rx;
		output tx_pc;
		output tx_uc;
		output tx_pr;
		output tx_stop;
		
		//reg tx_pc1;
		//reg tx_pr1;
		reg tx_uc1;
		reg rx;
		reg tx_stop;
		reg tx_pc;
		reg tx_pr;

		wire [1:0] SEL;

		assign SEL = {sel1,sel0};
		
		///DEMUX     ////
		always @(rx_uc or SEL)
		begin
			case (SEL)
				2'b00: 
					begin
					rx = rx_uc;
					tx_pc = 1'b1;
					tx_pr = 1'b1;
					tx_stop = 1'b1;
					end
				2'b01: 
					begin
					rx = 1'b1;
					tx_pc = rx_uc;
					tx_pr = 1'b1;
					tx_stop = 1'b1;
					end
				2'b10: 
					begin
					rx = 1'b1;
					tx_pc = 1'b1;
					tx_pr = rx_uc;
					tx_stop = 1'b1;
					end
				2'b11: 
					begin
					rx = 1'b1;
					tx_pc = 1'b1;
					tx_pr = 1'b1;
					tx_stop = rx_uc;
					end
			endcase
		end

		/// MUX   ///
		always @(tx or rx_pc or rx_pr or rx_stop or SEL)
		begin
			case (SEL)
				2'b00: 
					begin
					tx_uc1 = tx;
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
					tx_uc1 = rx_stop;
					end
			endcase
		end

		assign tx_uc=(dev_sel)?tx_uc1:1'bz;

	
endmodule