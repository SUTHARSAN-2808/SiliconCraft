class base;
  int addr ,data;
  virtual function display();
    $display("b",addr,data);
  endfunction
endclass

class child1 extends base;
  function display();
    $display("child1",addr,data);
  endfunction
endclass

class child2 extends base;
  function display();
    $display("child2",addr,data);
  endfunction
endclass

module new1;
  initial begin
    child1 c1=new();
    child2 c2=new();
    base b[2];
    c1.addr=23;
    c1.data=234;
    c2.addr=654;
    c2.data=524;
    b[0]=c1;
    b[1]=c2;
    b[0].display;
    b[1].display();
    b[0].addr=1;
    b[0].data=2;
    b[0].display();
  end
endmodule


