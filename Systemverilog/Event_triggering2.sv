module event_triggering2;
  event e2;
  task a;
    #5 $display($time,"process 1 started");
    ->e2;
    $display($time,"process 1 finished");
  endtask
  
    task b;
       $display($time,"process 2 started");
    @e2;
      $display($time,"process 2 finished");
  endtask
  
  initial begin
    fork
      a;
      b;
    join
  end
endmodule
