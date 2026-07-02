module top;
integer a;
logic b;
reg c;
int d;
shortint e;
longint f;
byte g;
real h;
realtime i;

initial begin
$display("--------------default value-----------");
$display("a=%0b,logic=%0b,reg=%0b,int=%0b,shortint=%0b,longint=%0b,byte=%0b,real=%0f,reatime=%0f,",a,b,c,d,e,f,g,h,i);
#5 a=1;b=1;c=1;d=1;e=1;f=1;g=1;h=1;i=1;
$display("---------------default size-----------");
$display("a=%b,logic=%b,reg=%b,int=%b,shortint=%b,longint=%b,byte=%b,real=%f,reatime=%f,",a,b,c,d,e,f,g,h,i);

end 
endmodule
//output of the default value , the 4 state variables output is x.
// a=x,logic=x,reg=x,int=0,shortint=0,longint=0,byte=0,real=0.000000,reatime=0.000000,
 // output of the default size
 /*a=00000000000000000000000000000001,
 logic=1,reg=1,
 int=00000000000000000000000000000001,
 shortint=0000000000000001,
 longint=0000000000000000000000000000000000000000000000000000000000000001,
 byte=00000001,
 real=1.000000,
 reatime=1.000000,
*/
