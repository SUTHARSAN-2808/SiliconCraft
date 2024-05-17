module fork_join;

    
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
    join
  end
  
endmodule
