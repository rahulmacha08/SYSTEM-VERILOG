
module uniquecase;
logic [2:0]a;
logic [2:0]y;
initial begin
 a=3'b111;
    case(a)
       3'b000:y= 3'b000;
	   3'b101:y= 3'b101;
       3'b000:y= 3'b000;
	   endcase
   $monitor("a=%0d y=%0d",a,y);	   
end 
endmodule
