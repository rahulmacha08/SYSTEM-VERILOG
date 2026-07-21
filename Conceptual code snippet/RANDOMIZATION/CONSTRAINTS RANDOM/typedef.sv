  typedef class car1;

class car2;
 car1 c1=new();
 rand bit[3:0] a;
endclass

class car1;
    rand bit[3:0] b;
endclass

module top;
  car2 c2=new();
    initial begin 
	  c2.a=10;
	  c2.c1.b=5;
	  $display("the value of the a=%0d,b=%0d",c2.a,c2.c1.b);
	end 
endmodule
