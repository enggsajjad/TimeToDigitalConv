module sel_vernier(Vin,sel_ver,Vout);
    input [39:0] Vin;
    input sel_ver;
    output [39:0] Vout;


assign Vout=(sel_ver==0)? Vin[39:0]:40'hzzzzzzzzzz;


endmodule
