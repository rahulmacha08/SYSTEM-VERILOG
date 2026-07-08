module top;
    int que1[$];
	string que2[$];
	initial begin 
	    que1={1,2,3,4,5};
		que2={"vlsi","first","hyd"};
		$display("size=%0d",que1.size());
		$display("size=%0d",que2.size());
	    // pushing from front
		que1.push_front(0);
		que2.push_front("sv");
    	$display("size=%p",que1);
		$display("size=%p",que2);
        // pushing from  back 
        que1.push_back(6);
		que2.push_back("punjagutta");
    	$display("size=%p",que1);
		$display("size=%p",que2);

        //inserting the value
        que1.insert(2,33);
		que2.insert(2,"FIRST");
    	$display("size=%p",que1);
		$display("size=%p",que2);
		 //deleting particular index
		que1.delete(3);
		que2.delete(3);
    	$display("size=%p",que1);
		$display("size=%p",que2);
        que1.delete();
		que2.delete();
    	$display("size=%p",que1);
		$display("size=%p",que2);
	end  
endmodule 
 /* 
 outputs of the code is 
  size=5
# size=3
# size='{0, 1, 2, 3, 4, 5}
# size='{"sv", "vlsi", "first", "hyd"}
# size='{0, 1, 2, 3, 4, 5, 6}
# size='{"sv", "vlsi", "first", "hyd", "punjagutta"}
# size='{0, 1, 33, 2, 3, 4, 5, 6}
# size='{"sv", "vlsi", "FIRST", "first", "hyd", "punjagutta"}
# size='{0, 1, 33, 3, 4, 5, 6}
# size='{"sv", "vlsi", "FIRST", "hyd", "punjagutta"}
# size='{}
# size='{}   */

