class kia;
 rand bit[3:0] a;
 rand bit rst;
  constraint c_name{(rst==1) -> a inside{[10:15]} ;}
  function void disp();
     $display("the value of the rst is %0d ,and a is %0d ",rst,a);
  endfunction 
endclass

module imp;
    kia car=new();
	initial begin 
         repeat(10) begin 
		    car.randomize();
			car.disp();
		 end 
 end 
endmodule 
