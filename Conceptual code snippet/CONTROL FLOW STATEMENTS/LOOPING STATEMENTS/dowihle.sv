module dowhile;
int a=3;
  initial begin 
      do begin
	    $display("%0d",a);
		end 
		while(a<3);
		begin
		a++;
		   $display("a=%0d",a);
		end
  end 
endmodule
