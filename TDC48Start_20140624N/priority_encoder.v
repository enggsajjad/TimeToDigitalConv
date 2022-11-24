module priority_encoder(dataIn,sel, dataOutz);
    	input [39:0] dataIn;
   	output [7:0] dataOutz;
	input sel;

	
	reg [7:0] dataOut;

always @( dataIn )
casex (dataIn) //synopsis full parallel case
	40'b0000_0000_0000_0000_0000_0000_0000_0000_0000_0000: dataOut = 8'h00;
	40'b0000_0000_0000_0000_0000_0000_0000_0000_0000_0001: dataOut = 8'h01;
	40'b0000_0000_0000_0000_0000_0000_0000_0000_0000_001x: dataOut = 8'h02;
	40'b0000_0000_0000_0000_0000_0000_0000_0000_0000_01xx: dataOut = 8'h03;

	40'b0000_0000_0000_0000_0000_0000_0000_0000_0000_1xxx: dataOut = 8'h04;
	40'b0000_0000_0000_0000_0000_0000_0000_0000_0001_xxxx: dataOut = 8'h05;
	40'b0000_0000_0000_0000_0000_0000_0000_0000_001x_xxxx: dataOut = 8'h06;
	40'b0000_0000_0000_0000_0000_0000_0000_0000_01xx_xxxx: dataOut = 8'h07;

	40'b0000_0000_0000_0000_0000_0000_0000_0000_1xxx_xxxx: dataOut = 8'h08;
	40'b0000_0000_0000_0000_0000_0000_0000_0001_xxxx_xxxx: dataOut = 8'h09;
	40'b0000_0000_0000_0000_0000_0000_0000_001x_xxxx_xxxx: dataOut = 8'h0a;
	40'b0000_0000_0000_0000_0000_0000_0000_01xx_xxxx_xxxx: dataOut = 8'h0b;

	40'b0000_0000_0000_0000_0000_0000_0000_1xxx_xxxx_xxxx: dataOut = 8'h0c;
	40'b0000_0000_0000_0000_0000_0000_0001_xxxx_xxxx_xxxx: dataOut = 8'h0d;
	40'b0000_0000_0000_0000_0000_0000_001x_xxxx_xxxx_xxxx: dataOut = 8'h0e;
	40'b0000_0000_0000_0000_0000_0000_01xx_xxxx_xxxx_xxxx: dataOut = 8'h0f;
	/**************************************/
	40'b0000_0000_0000_0000_0000_0000_1xxx_xxxx_xxxx_xxxx: dataOut = 8'h10;
	40'b0000_0000_0000_0000_0000_0001_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h11;
	40'b0000_0000_0000_0000_0000_001x_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h12;
	40'b0000_0000_0000_0000_0000_01xx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h13;

	40'b0000_0000_0000_0000_0000_1xxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h14;
	40'b0000_0000_0000_0000_0001_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h15;
	40'b0000_0000_0000_0000_001x_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h16;
	40'b0000_0000_0000_0000_01xx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h17;

	40'b0000_0000_0000_0000_1xxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h18;
	40'b0000_0000_0000_0001_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h19;
	40'b0000_0000_0000_001x_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h1a;
	40'b0000_0000_0000_01xx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h1b;

	40'b0000_0000_0000_1xxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h1c;
	40'b0000_0000_0001_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h1d;
	40'b0000_0000_001x_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h1e;
	40'b0000_0000_01xx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h1f;

	40'b0000_0000_1xxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h20;
	40'b0000_0001_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h21;
	40'b0000_001x_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h22;
	40'b0000_01xx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h23;

	40'b0000_1xxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h24;
	40'b0001_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h25;
	40'b001x_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h26;
	40'b01xx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx: dataOut = 8'h27;
	
	default: dataOut = 8'hxx;
endcase

assign dataOutz=(sel==0)? dataOut:8'hzz;
endmodule
