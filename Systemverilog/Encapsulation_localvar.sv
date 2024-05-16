class new1;
  local int addr;
  
  function new(bit [4:0] raddr);
   addr=raddr+9;
  endfunction
  
  function disp();
    $display(addr);
  endfunction
endclass

module localvar;
  initial begin
    new1 n=new(6);
   // n.addr=8;
    n.disp();
  end
endmodule
