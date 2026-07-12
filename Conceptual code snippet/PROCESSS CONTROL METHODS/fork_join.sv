module top;
initial begin 
         fork
		  #0 $info("st-1");
		  #2 $info("st-2");
		   forever begin 
		   $display("----in forever---");
		   #30 $finish;
		   end 
		 join 
		 #3 $info("st-3");
 end 
   final  $info("st-3");
endmodule 
  
