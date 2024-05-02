
class deepelement;
  bit[11:0]a,b;
  function new();
    a=3;
    b=5;
  endfunction
endclass

class shallowelement;
  bit[11:0] c,d;
  deepelement dp;
  function new();
    c=7;
    d=9;
    dp=new();
  endfunction
  
  function deep_copy(shallowelement sh);
    this.c=sh.c;
    this.d=sh.d;
    this.dp.a=sh.dp.a;
    this.dp.b=sh.dp.b;
  endfunction
  
  function disp();
    $display(c,d);
    $display(dp.a,dp.b);
  endfunction
endclass

module deepcopy;
  initial begin
    shallowelement s1,s2;
    s1=new();
    s1.disp();
    s2=new();
    s2.deep_copy(s1);
    s2.disp();
    s2.c=90;
    s2.d=80;
    s2.dp.a=70;
    s2.dp.b=60;
    s1.disp();
    s2.disp();
  end
endmodule
    
  
