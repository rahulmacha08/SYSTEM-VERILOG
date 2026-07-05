module top;
    //logic[2:0]a; for 1d array
	//logic[2:0][2:0]a;  for 2D array
	logic[2:0][2:0][2:0]a;
   initial begin 
      a=2048;
	      foreach(a[i])begin 
		  $display("a[%0d]=%d",i,a[i]);
		  end 
   end 
endmodule 
