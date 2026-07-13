module pass_by_value;
int x,y,z;
function automatic int sum ( int x,y );
       x=x+y;
	   $display("value of x=%0d",x);
	   return x+y;
endfunction
    initial begin 
	  x=10;
	  y=40;
	  z=sum(x,y);
	  $display("x=%0d",x);
	  $display("y=%0d",y);
	  $display("z=%0d",z);
	end 
endmodule 
