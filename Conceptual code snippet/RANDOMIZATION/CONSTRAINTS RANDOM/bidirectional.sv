class car;
    rand bit[3:0] a,b;
	constraint c_name{ solve a before b;}
	function void disp();
	   $display("the  value of the a and b  are %0d , %0d",a,b);
	endfunction
endclass

module top;
   car c1 =new();
   initial begin 
       repeat(10) begin 
	       c1.randomize();
		   c1.disp();
	   end 
   end 
endmodule 
