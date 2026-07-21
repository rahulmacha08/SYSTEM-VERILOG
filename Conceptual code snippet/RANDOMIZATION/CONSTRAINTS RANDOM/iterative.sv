class car;
     rand int arr[6];
	 constraint c_name{ foreach(arr[i])
	                      arr[i]==i+1 
						   ;}
	function void dis();
	      $display("the value of the arr is %0p", arr);
	endfunction
endclass

module top;
   car c1 = new();
   initial begin 
       repeat(10) begin 
	        c1.randomize();
			c1.dis();
	   end 
   end 
endmodule
