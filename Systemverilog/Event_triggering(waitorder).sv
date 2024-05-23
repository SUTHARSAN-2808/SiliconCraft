//wait order
module wait_order1;
  event e1,e2,e3;
  
  task a;
    #5
    ->e1;
    $display($time,"Process 1 executed");
  endtask
  
    task b;
    #15
    ->e2;
      $display($time,"Process 2 executed");
  endtask
  
    task c;
    #10
    ->e3;
      $display($time,"Process 3 executed");
  endtask
  
  task wait_process;
    $display("Process started");
    wait_order(e1,e3,e2)
    $display("In order");
    else
      $display("Out of order");
  endtask
  
  initial begin
    fork
      a;
      b;
      c;
      wait_process;
    join
  end
endmodule
