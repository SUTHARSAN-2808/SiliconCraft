class new1;
 protected int addr;
  function new(int raddr);
    addr=raddr+10;
  endfunction
endclass

class new2 extends new1;
  function new(int raddr);
    super.new(raddr);
  endfunction
  
  function incraddr();
    addr++;
  endfunction
  
  function disp();
    $display(addr);
  endfunction
endclass

module protectedvar;
  initial begin
    new2 n2=new(8);
    n2.incraddr();
    n2.disp();
  end
endmodule
