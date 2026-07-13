class name;
     int a;
	 int z;
	 static int b;
	 function static void display1();
	   a++;
	   $display("value of a %0d",a);
	 endfunction
	   static function void display2();
	   int b;
	   b++;
	   $display("value of b %0d",b);
	   endfunction
	   function static  diss();
	     a=1;
		 b=2;
		 //$display("---excuted");
		 z= a+b;
		 $display("value of z is %0b",z);
	   endfunction 
endclass 

module top;
name n1,n2,n3;
int result;
 initial begin 
       n1=new();
	   n2=new();
	   n3=new();
      repeat(5) begin 
	      n1.display1();
		  n2.display2();
		  n3.diss();
	  end 
	   result = n3.diss();
 end 
endmodule 
