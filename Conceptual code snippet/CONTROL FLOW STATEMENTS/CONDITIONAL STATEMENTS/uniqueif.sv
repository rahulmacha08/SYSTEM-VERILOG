// we will be writing the 2 testcases of unique , i mean two warning methods
// ----- case 1(if we have multiple true conditions------)

module uniqueif;
int a ,b,c;
initial begin
 a=10;
 b=20;
 c=30;
     unique if(a<b) $info("a is less than b");
	 else if(a<b) $info("a is less than c");
end 
endmodule 

/* output if the case 1
  Warning: (vsim-8360) The if/case statement is not unique.
#    Time: 0 ns  Iteration: 0  Process: /uniqueif/#INITIAL#5 File: uniqueif.sv Line: 9
   */
 // --------case2(if none of the condition is true-------) 
module uniqueiff;
int a ,b,c;
initial begin
 a=10;
 b=20;
 c=30;
     unique if(a>b) $info("a is greater than b");
	 else if(a>b) $info("a is greater than c");
end 
endmodule   
/*  the output of the case2
warning: (vsim-8315) No condition is true in the unique/priority if/case statement.
#    Time: 0 ns  Iteration: 0  Process: /uniqueiff/#INITIAL#22 File: uniqueif.sv Line: 26
      */
