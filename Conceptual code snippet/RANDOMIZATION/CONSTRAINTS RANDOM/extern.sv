class mar;
    rand bit[3:0] a;
	constraint c_name;
	function void dis();
	  $display("value of a is %0d",a);
	endfunction
endclass
  // extern example
   constraint mar :: c_name{a inside{[10:50]};} 
module top;
   mar m1=new();
   initial begin 
        repeat(5) begin
		m1.randomize();
		m1.dis();
   end 
   end
endmodule 
