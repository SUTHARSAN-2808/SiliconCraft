class parent;
  bit[11:0] data_p;
  function void disp_p();
    $display("parent class=%d",data_p);
  endfunction
endclass

class child1 extends parent;
  bit[11:0] data_child1;
  function void disp_c1();
    $display("Child1 class=%d",data_child1);
  endfunction
endclass

class child2 extends parent;
  bit [11:0] data_child2;
  function void disp_c2();
    $display("child2_class=%d",data_child2);
  endfunction
endclass

class new1 extends child1;
  bit[11:0] data_new1;
  function void disp_n1();
    $display("new1 class=%d",data_new1);
  endfunction
endclass

class new2 extends new1;
  bit[11:0] data_new2;
  function void disp_n2();
    $display("new1 class=%d",data_new2);
  endfunction
endclass

module multilevel_inheritance;
  initial begin
    new2 n1=new();
    n1.data_p=11;
    n1.data_child1=12;
    n1.data_new1=13;
    n1.data_new2=14;
 //  n1.data_child2=15;
    n1.disp_p();
    n1.disp_c1();
    n1.disp_n1();
    n1.disp_n2();
    //n1.disp_c2();
    
  end
  endmodule




  
