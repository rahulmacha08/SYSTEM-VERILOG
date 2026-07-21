class cl;
  rand bit[4:0] a,b,c;
  constraint c_name{ unique {a,b,c};}
  function void disp();
    $display("value of the a is %0d, b is %0d , cis %0d",a,b,c);
  endfunction
endclass

module top;
 cl c1= new();
    initial begin 
         repeat(10) begin 
		     c1.randomize();
			 c1.disp();
		 end 
     end 
endmodule 
