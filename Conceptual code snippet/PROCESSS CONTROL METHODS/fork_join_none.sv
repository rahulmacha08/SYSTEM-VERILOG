module top;
initial begin

    $display("%0t P0",$time);

    fork

        begin
            #5;
            $display("%0t A",$time);
        end

        begin
            #2;
            $display("%0t B",$time);
        end

    join_none

    $display("%0t P1",$time);

    #3;

    $display("%0t P2",$time);

end
endmodule 
