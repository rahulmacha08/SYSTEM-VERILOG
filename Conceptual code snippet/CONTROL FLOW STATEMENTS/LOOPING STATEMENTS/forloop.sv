module top;
  int arr[5];
  initial begin 
      arr={5,6,7,8,9};
	  for(int i=0,j=1,k=2;i< 5;i++,j++,k++) begin 
	    $display("arr(%0d)=%0d,%0d,",i,j,k);
	  end 
  end 
endmodule
