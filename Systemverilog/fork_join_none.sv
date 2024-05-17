module fork_join_none;

    
    task a();
      $display($time,"-----------");
      $display($time,"Process 1 started");
      #10 $display($time,"Process 1 finished");
    endtask
    
    task b();
      $display($time,"Process 2 started");
      #15 $display($time,"Process 2 finished");
    endtask
    

  
  initial begin
    fork
      a();
      b();
    join_none
    $display($time,"Process completed");
  end
  
endmodule
