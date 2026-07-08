module top;
   int arr[6];
   int res; // for storing the reduction operators
   int q[$]; // for stroring the value in qeueu
  
     initial begin 
	 $display("--------array ordering methods-----------");
	    arr={1,7,2,1,10,6};
		$display("%p",arr);
	      
		  // array ordering methods
	     arr.sort();
         $display("%p",arr);
         arr.rsort();
		 $display("%p",arr);
         arr.reverse();
		 $display("%p",arr);
         arr.shuffle();
		$display("%p",arr);
	    end
     //for reduction methods
	   initial begin 
	    $display("------------- array reduction methods------");
	   arr={1,7,2,1,10,6};
	   $display("%p",arr);
       res = arr.sum();
	   $display("sum=%0d",res);
        res = arr.product();
	   $display("product=%0d",res);
          res = arr.and();
	   $display("and =%0d",res);
        res = arr.or();
	   $display("or=%0d",res);
         res = arr.xor();
	   $display("xor=%0d",res);
	  end
	  // for array locator methods 
	  initial begin 
	   $display("--------array locator methods-----------");
	    arr={1,7,2,1,10,6};
		$display("%p",arr);
        q =arr.find with (item>2);
		$display("%p",q);
        q =arr.find_first with (item>2);
		$display("%p",q);
        q =arr.find_last with (item>2);
		$display("%p",q);
        q =arr.min();
		$display("%p",q);
        q =arr.max();
		$display("%p",q);
         q =arr.unique();
		$display("%p",q);

		// array index finder
		$display("---------index finder-----");
          q =arr.find_index with (item>2);
		$display("%p",q);
        q =arr.find_first_index with (item>2);
		$display("%p",q);
        q =arr.find_last_index with (item>2);
		$display("%p",q);
		 q =arr.unique_index();
		$display("%p",q);
	  end 
	   initial begin 
	       	 $display("--------array itrator methods-----------");
	    arr={1,7,2,1,10,6};
		$display("%p",arr);
       q=arr.find with (item==item.index);
        $display("%p",q);
         q=arr.find with (item<item.index);
        $display("%p",q);
          q=arr.find with (item>item.index);
        $display("%p",q);

	   end 
endmodule   

/* outputs of the codes is 
--------array ordering methods-----------
# '{1, 7, 2, 1, 10, 6}
# '{1, 1, 2, 6, 7, 10}
# '{10, 7, 6, 2, 1, 1}
# '{1, 1, 2, 6, 7, 10}
# '{1, 6, 1, 10, 7, 2}
# ------------- array reduction methods------
# '{1, 7, 2, 1, 10, 6}
# sum=27
# product=840
# and =0
# or=15
# xor=9
# --------array locator methods-----------
# '{1, 7, 2, 1, 10, 6}
# '{7, 10, 6}
# '{7}
# '{6}
# '{1}
# '{10}
# '{1, 2, 6, 7, 10}
# ---------index finder-----
# '{1, 4, 5}
# '{1}
# '{5}
# '{0, 2, 5, 1, 4}
# --------array itrator methods-----------
# '{1, 7, 2, 1, 10, 6}
# '{2}
# '{1}
# '{1, 7, 10, 6}   */ 

