module top;
int arr[];
initial begin 
       arr=new[3];
	   arr={10,20,30};
	   $display("%p",arr);
	   $display("size=%0d",arr.size());
      #5  arr.delete(); 
	   arr={10,20,30,40};
	   $display("size=%0d",arr.size());
	  // now we are increasing the array size without deleteing the array which we gave 
       arr=new[10](arr);
	   //arr={5,4};
	   $display("%p",arr);
	   $display("size=%0d",arr.size);
end
endmodule

/* outputs of the code
'{10, 20, 30}
# size=3
# size=4
# '{10, 20, 30, 40, 0, 0, 0, 0, 0, 0}
# size=10  */

