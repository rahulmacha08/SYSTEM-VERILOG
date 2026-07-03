module top;
string n1="rahul";
string n2="macha";
 initial begin 
     $display("%d",n1.len);
	 $display("%s",n2.toupper);
	 n1.putc(0,"R");
	 $display("%s",n1);
	 $display("%d",n1.compare(n2));
	 $display("%s",n2.substr(1,3));
	 $display("%d",n2.getc(2));
 end 
endmodule 

//outputs of the code
/*
           5
# MACHA
# Rahul
#         -27
# ach
#   99
*/
