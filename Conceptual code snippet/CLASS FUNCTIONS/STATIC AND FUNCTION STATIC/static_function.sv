class my;
  static int a;
   static function void fun_dis();
   a++;
   $display("value of the function inside class %0d",a);
   endfunction
endclass
module static_function;
 my cla1,cla2;
 initial begin 
      cla1=new();
	  cla2=new();
	  repeat(3)begin 
	  cla1.fun_dis(); 
	  cla2.fun_dis();
	  end
 end
endmodule
