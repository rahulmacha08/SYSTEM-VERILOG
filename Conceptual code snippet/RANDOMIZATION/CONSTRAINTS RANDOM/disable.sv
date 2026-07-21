class car;
rand logic[4:0] a;
  static constraint name{ a inside{[20:30]};}
  // function void disp();
   // $display("the value of the a is %0d",a);
   //endfunction
endclass

module top;
    car c1=new();
	 car c2 = new();
	initial begin
	   c2.constraint_mode(0);
	   repeat(10) begin 
	   c1.randomize();
	   c2.randomize();
	    //c1.disp();
	   $display(" the value  of the a is %d , %0d",c1.a,c2.a);
	   end 
	end 
endmodule 
