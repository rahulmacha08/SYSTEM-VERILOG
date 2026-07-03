module top;
      struct {logic[1:0]data;bit op;int ib;}faa;
	  initial begin 
	  faa.data = 11;
	  faa.op=1;
      $display("%p",faa);
	  end
endmodule

//outputs 
 //'{data:3, op:1, ib:0}
// structures are packed in nature hat means they dont share the same memories as unions

