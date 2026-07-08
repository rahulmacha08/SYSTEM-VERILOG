module top;
int que[$:4];

initial begin 
  que={1,2,3,4,5};
  $display("the no.of elements are %p",que);

  foreach(que[i]) begin
     $display("que[%0d]=%0d",i,que[i]);
 end
    //trying methods
	$display("queue =%0d",que.size());
	que.push_front(11);
	$display("%p,size=%0d",que,que.size());
    que.delete(1);
	que.insert(1,3);
	$info("%p,size=%0d",que,que.size());
end
endmodule 

// here the in the bounded queue the like interting and pushing values in front or back is not happening
/*
 the no.of elements are '{1, 2, 3, 4, 5}
# que[0]=1
# que[1]=2
# que[2]=3
# que[3]=4
# que[4]=5
# queue =5
# ** Warning: boundedque.sv(13): Queue operation would exceed max. right index of 4.
#    Time: 0 ns  Iteration: 0  Instance: /top
# '{1, 2, 3, 4, 5},size=5
# ** Warning: boundedque.sv(15): Queue operation would exceed max. right index of 4.
#    Time: 0 ns  Iteration: 0  Instance: /top
# '{1, 2, 3, 4, 5},size=5  */

