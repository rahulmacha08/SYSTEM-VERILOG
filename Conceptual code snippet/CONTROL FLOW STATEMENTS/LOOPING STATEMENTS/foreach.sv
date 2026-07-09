module for_each;
  int arr[5];
  initial begin 
     arr={2,3,4,5,6};
	 foreach(arr[i]) begin
	  $display("arr(%0d)=%d",i,arr[i]);
	 end 
  end 
endmodule 
