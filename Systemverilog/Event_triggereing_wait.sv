//event triggering using wait
module event_triggering;
  event c;
  
  task a();
    $display($time," Process 1 is starting");
    ->c;
    $display($time," Event is triggered");
  endtask
  
  task b();
    #4 $display($time, " Event is going to trigger");
    wait(c.triggered);
    $display($time,"Event is triggered");
  endtask
  
  initial begin
    fork
      a();
      b();
    join
  end
endmodule
  
