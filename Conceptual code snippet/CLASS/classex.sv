class my_class;
  int a;
endclass
module top;
 my_class cll;
  initial begin 
     cll=new();
	 cll.a=10;
	 $display("%0d",cll.a);
  end 
endmodule 
