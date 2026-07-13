module pass_by_ref;
int x1,y1,z;
function automatic int sum ( ref int x, ref int y );
       x=x+y;
	   $display("value of x=%0d",x);
	   return x+y;
endfunction
    initial begin 
	  x1=10;y1=20;
	 z= sum(x1,y1);
	  //$display(" sum=%0d",sum);
	  //z=sum(x,y);
	  $display("x=%0d",x1);
	  $display("y=%0d",y1);
	  $display("z=%0d",z);
	end 
endmodule

/*
 here the what ever changes will happen that will affect the global signal values unlike , pass by value.
