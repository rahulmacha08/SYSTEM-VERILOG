// we will be writing the 2 testcases of unique , i mean two warning methods
// ----- case 1(if we have multiple true conditions no warning will come but the first condition will come ------)

module priorityif;
int a ,b,c;
initial begin
 a=10;
 b=20;
 c=30;
     priority if(a<b) $info("a is less than b");
	 else if(a<b) $info("a is less than c");
end 
endmodule 

/* output if the case 1
   Info: a is less than b
#    Time: 0 ns  Scope: priorityif File: priorityif.sv Line: 10
   */
 // --------case2(if none of the condition is true  the warrning will come -------) 
module priorityiff;
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
Warning: (vsim-8315) No condition is true in the unique/priority if/case statement.
#    Time: 0 ns  Iteration: 0  Process: /priorityiff/#INITIAL#22 File: priorityif.sv Line: 26

      */
