module calling_task_in_function;
  
  initial begin
    $display("In initial begin");
   #1 func;
  end
  
  function func();
    fork
    $display("In func");
     taskk;
    join_none
  endfunction
  
  task taskk;
   #2 $display("In task");
  endtask
endmodule
