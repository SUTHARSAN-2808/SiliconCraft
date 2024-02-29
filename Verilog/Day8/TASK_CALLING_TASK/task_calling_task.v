module task_calling_task;
  initial begin
    arithmetic;
  end
  task arithmetic;
    begin
    mul(3,6);
    div(9,3);
    end
  endtask
  task mul;
    input [4:0] a,b;
    output [4:0] c;
    c=a*b;
    $display(c);
  endtask
  task div;
    input [4:0] d,e;
    output [4:0] f;
    f=d/e;
    $display(f);
  endtask
endmodule
  
    

