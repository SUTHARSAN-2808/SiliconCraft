//Dynamic casting
class base;
  int addr;
  function disp();
    $display(addr);
  endfunction
endclass

class child extends base;
  int data;
  function disp();
    super.disp();
    $display(data);
  endfunction
endclass

module d_casting;
  child c=new();
  child c1;
  base b;
  initial begin
    c.addr=7;
    c.data=9;
    b=c;
    $cast(c1,b);
    c1.disp();
  end
endmodule
    
