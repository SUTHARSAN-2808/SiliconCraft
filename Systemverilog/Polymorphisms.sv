//polymorphisms

class  base;
  virtual function display();
    $display("inside base class");
  endfunction
endclass

class ex1 extends base;
  function display();
    $display("inside ex1 class");
  endfunction
endclass

class ex2 extends base;
  function display();
    $display("inside ex2 class");
  endfunction
endclass

module new1;
  initial begin
    ex1 e1=new();
    ex2 e2=new();
    base b[2];
    b[0]=e1;
    b[1]=e2;
    b[0].display();
    b[1].display();
  end
endmodule
