//Abstract class
virtual class baseclass;
  bit[11:0]data;
  function new();
    data=5;
  endfunction
  function  void display();
    $display(data);
  endfunction
endclass

class child extends baseclass;
  function display();
    $display(data);
  endfunction
endclass

    module ab;
  initial begin
    child bc;
    bc=new();
    bc.display();
  end
endmodule
