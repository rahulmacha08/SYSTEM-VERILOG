module jumping_statements;
 int arr[9];
   initial begin 
       arr={11,12,13,14,15,16,17,18,19};
	    $display("-------continue block-------");
	   for(int i=0; i<$size(arr); i++) begin
	     if(i==3) continue;
		 $display("arr(%0d)=%0d",i,arr[i]);
	   end 
	   	$display("------break block--------");

	    for(int i=0; i<$size(arr); i++) begin 
		 if(i==7) break;
         $display("arr(%0d)=%0d",i,arr[i]);
		end 
   end 
endmodule
/*  code output
 -------continue block-------
# arr(0)=11
# arr(1)=12
# arr(2)=13
# arr(4)=15
# arr(5)=16
# arr(6)=17
# arr(7)=18
# arr(8)=19
# ------break block--------
# arr(0)=11
# arr(1)=12
# arr(2)=13
# arr(3)=14
# arr(4)=15
# arr(5)=16
# arr(6)=17
   */  
