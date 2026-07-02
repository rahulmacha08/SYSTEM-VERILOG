module tb;
typedef enum{SS,DD,VERILOG=3,SV,UVM=5,RR}snips;
snips s1,s2;
 initial begin 
 s1=VERILOG;
 s2 = SV;

      $display("value =%0d name=%0s",s1.num(),s1.num());
      $display("value =%0d name=%0s",s1.first(),s1.first());
      $display("value =%0d name=%0s",s2.next(3),s2.next(3));
      $display("value =%0d name=%0s",s2.name(),s2.name()); 
 end 
endmodule  

