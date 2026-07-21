class mod;
   rand bit[3:0] a;
   constraint con_a{a inside{[10:20]};}
   function void dis();
    $display("value of a is %0d",a);
   endfunction
endclass
module top;
   mod m1= new();
   initial begin 
      repeat(10) begin
      m1.randomize();
	  m1.dis();
	  end 
   end 
endmodule 
