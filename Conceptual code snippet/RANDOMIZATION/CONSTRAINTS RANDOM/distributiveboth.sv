class marvel;
    rand bit[31:0] ironman;
	constraint c_name{ ironman dist{[0:7] :=40,
	                                [8:15] := 50,
									[16:23] :/ 60,
									[24:32] :/ 70 };}
 function void disp();
    $display("value of the ironman is %0d", ironman );
 endfunction
endclass

module top;
   marvel f4=new();
   initial begin 
       repeat(32) begin 
	       f4.randomize();
		   f4.disp();
	   end 
   end 
endmodule 
