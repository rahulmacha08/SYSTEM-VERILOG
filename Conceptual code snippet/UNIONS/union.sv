module top;
      typedef union{logic[2:0]data; bit[2:0] op;int ib;}faa;
	  faa f1,f2;
	  initial begin 
	  f1.data =20;
      $display("%0p",f1);
	  end
endmodule

//output of the code 
//'{data:4, op:p, ib:64}

