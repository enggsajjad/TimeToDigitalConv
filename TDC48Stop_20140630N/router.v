module router(rx_uc,tx,rx,tx_uc,dev_sel);
   
		input rx_uc;
		input tx;
		input dev_sel;

   		output rx;
		output tx_uc;
		
		wire tx_uc1;
		wire rx;

		
		assign rx = rx_uc;
		assign tx_uc1 = tx;
					
		assign tx_uc=(dev_sel)?tx_uc1:1'bz;
		
endmodule