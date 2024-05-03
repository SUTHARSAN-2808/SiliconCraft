//super keyword
class parent;
  bit[11:0] a;
  function void disp();
    $display(a);
  endfunction
endclass

class child extends parent;
  bit[11:0] b;
  function void disp();
    super.a=9;
    super.disp();
    $display(b);
  endfunction
endclass

module usesuper;
  initial begin
    child new1;
    new1=new();
    new1.b=4;
    new1.disp();
  end
endmodule
