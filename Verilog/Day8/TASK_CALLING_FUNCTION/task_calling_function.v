module task_calling_function;
  function [1:0] logical;//Function declaration 
    input [4:0] a,b;   
      logical=a & b;
    $display("result=%b",logical);
  endfunction 
  task operation;//Task declaration
    logical(10,11);//function calling
  endtask
  initial begin
     operation;//task calling   
  end
endmodule
    
