module top;
  
  int a[int];  // here starting int is datattype and the nexrt int is index type. same goes to down two also
  int b[string];
  string c[string];

  initial begin
   a={1:10,3:12,2:15};
   b={"ab":10,"cd":12,"ef":15};
   c={"ih":"ag","ki":"ab","kl":"ib"};
   $display("%p",a);
   $display("%p",b);
   $display("%p",c);
   foreach(a[i])begin 
    $display("a[%0d]=%0d",i,a[i]);
   end 
   //trying methods 
   $display("-----------size---------");
   $display("arr[a]=%0d",a.size());
   $display("arr[b]=%0d",b.size());
   $display("arr[c]=%0d",c.size());
   //trying num method
   $display("------------num-----------");
   $display("arr[a]=%0d",a.num());
   $display("arr[b]=%0d",b.num());
   $display("arr[c]=%0d",c.num());
   //trying exist method 
   $display("---------checking exists");

   $display("arr[a]=%0d",a.exists(2));
   $display("arr[b]=%0d",b.exists("ef"));
   $display("arr[c]=%0d",c.exists("ab"));
   //trying delete index
   $display("---------delecting perticular index--------");
   a.delete(1);
   $display("%p",a);
  end 
endmodule 
