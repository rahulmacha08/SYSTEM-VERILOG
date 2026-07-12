module top;
initial begin
         fork
		  #6 $info("st-1");
		  #2 $info("st-2");
		 join_any 
		 #3 $info("st-3");
 end 
endmodule 

