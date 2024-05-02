//Shallow copy

class deepelement;
  bit [8:0] start_addr;
  bit [11:0] end_addr;
  function new();
    start_addr=56;
    end_addr='hf4;
  endfunction
endclass

class shallowelement;
  bit[6:0] addr;
  bit[12:0] data;
  deepelement dp;
  
  function new();
    addr=34;
    data=23;
    dp=new();
  endfunction
  
  function void disp();
    $display(addr);
    $display(data);
    $display(dp.start_addr);
    $display(dp.end_addr);
  endfunction
endclass

module shallowcopy;
  initial begin
    
    shallowelement sh1,sh2;
    sh1=new();
    sh1.disp();
    sh2=new sh1;
    sh2.disp();
    sh2.data=89;
    sh2.addr=15;
    sh2.dp.start_addr=44;
    sh1.disp();
    sh2.disp();
  end
endmodule
