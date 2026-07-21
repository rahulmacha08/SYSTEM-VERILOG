class ifelse;
    rand enum{HIGH,MEDIUM,LOW} range;
	rand bit[7:0] value;
	constraint range_name{if(range==HIGH) {value inside{[100:150]};}
	                                  else if(range==MEDIUM) {value inside{[50:100]};}
									  else {value inside{[0:50]}}
									;}
	function void disp();
	 $display("the value of the range=%0s,value is %0d",range,value);
	endfunction
endclass

module top;
ifelse c1 = new();
initial begin 
        repeat(20) begin 
	      c1.randomize();
		  c1.disp();
		end 
   end 
endmodule 
