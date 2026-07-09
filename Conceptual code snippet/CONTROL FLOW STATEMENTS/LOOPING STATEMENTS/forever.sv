module for_ever;
 int a;
 initial 
   fork
       forever begin 
	      #5 a=10;
		  $info("%0d",a);
		 // break;
	     // $finish;
	   end 
	   #20 $finish; 
 join 
endmodule
