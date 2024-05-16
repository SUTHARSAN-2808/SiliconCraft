//External task
class ext;
  int data;
  extern task disp();
 
endclass

task ext::disp();
  $display(data);
endtask

module sc1;
  initial begin
    ext t=new();
    t.data=99;
    t.disp();
  end
endmodule
