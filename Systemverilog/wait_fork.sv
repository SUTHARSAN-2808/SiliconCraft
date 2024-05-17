module wait_fork;
  
  task a();
    $display("1 started");
    #5 $display("1 finished");
  endtask
  
   task b();
     $display("2 started");
     #8 $display("2 finished");
  endtask
  
  initial begin
    fork 
      a();
      b();
    join_any
    wait fork;
    $display("completed");
  end
  
endmodule
