//with virtual tasks and functions
  class base;
  virtual function display;
    $display("Outside extended class");
  endfunction
endclass

class extended extends base;
  function display;
    $display("Inside extended class");
  endfunction
endclass

module new1;
  initial begin
    base b;
    extended e;
    e=new();
    b=e;
    b.display();
  end
endmodule
