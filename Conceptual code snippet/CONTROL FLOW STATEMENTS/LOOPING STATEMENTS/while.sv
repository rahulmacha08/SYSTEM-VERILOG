module top;
int count=0;
initial begin 
  count=0;
   while(count<10)begin 
    count++;
	$display("count=%0d",count);
   end 
end 
endmodule
