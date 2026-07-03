module top;
string n1=" AA";
string n2 = "ac";
initial begin 
       if(n1==n2)
	   //equality operator
	   $display("n1=%s is equal to n2=%s",n1,n2);
	   if(n1!=n2)
	   //inequality operator
       $display("n1=%s is equal not to n2=%s",n1,n2);
	   if(n1<n2)
	   //realational operators
	   $display("n1=%s n1 is less than n2=%s",n1,n2);
	   if(n1>n2)
	   $display("n1=%s greater than n2=%s",n1,n2);
       //concatination
      $display("adding =%s",{n1," ",n2});
       //repetion
	  $display("%s,",{3{n1}});
	  //indexing
      $display("n1[1]=%s ,n2[0]=%s ",n1[1],n2[0]);
end 
endmodule

//outputs of the code
/* 
n1= AA is equal not to n2=ac
# n1= AA n1 is less than n2=ac
# adding = AA ac
#  AA AA AA,
# n1[1]=A ,n2[0]=a
*/
