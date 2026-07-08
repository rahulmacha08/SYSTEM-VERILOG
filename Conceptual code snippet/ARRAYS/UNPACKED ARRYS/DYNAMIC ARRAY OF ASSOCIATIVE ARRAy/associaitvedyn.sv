module top;
int arr[][string];

  initial begin 
      arr=new[3];
	  //arr[0]={0:10,1:20,2:30,3:40};
	  arr[1]={"ab":11,"cd":22,"ef":33};
	  arr[2]={"aa":5,"bb":6};
	  $display("%p",arr[0]);
	  $display("%p",arr[1]);
	  $display("%p",arr[2]);
	  foreach(arr[i,j]) begin
	    $display("arr[%0d][%s]=%0d",i,j,arr[i][j]);
	  end 

  end 
endmodule
