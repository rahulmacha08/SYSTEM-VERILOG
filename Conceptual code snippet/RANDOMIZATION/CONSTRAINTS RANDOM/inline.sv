class inline;
     rand bit[7:0] bat;
	 constraint bat_man{bat inside{[20:50]};}
	// constraint batman{soft bat==45;}
	 function void fn();
	    $display("the value of the bat is %0d", bat);
	 endfunction
endclass

module dc;
   inline c1=new();
   initial begin 
        repeat(10) begin 
		  c1.randomize() with{bat<50;};
		  c1.fn();
		end 
   end 
endmodule 
