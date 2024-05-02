//Deep copy
class error_trans;
  bit[11:0] error,data;
  function new(bit[11:0] error,data);
    this.error=error;
    this.data=data;
  endfunction
endclass

class trans;
  bit[11:0] a,b;
  error_trans er;
  function new();
    a=11;
    b=22;
    er=new(33,44);
  endfunction
  
  function deep_copy(trans tr);
  this.a=tr.a;
  this.b=tr.b;
  this.er.error=tr.er.error;
  this.er.data=tr.er.data;
  endfunction
  
  function disp();
    $display(a,b);
    $display(er.error,er.data);
  endfunction
endclass

module shd;
 
  initial begin
    trans s1,s2;
    s1=new();
    s1.disp();
    s2=new();
    s2.deep_copy(s1);
    s2.disp();
    s2.a=34;
    s2.b=24;
    s2.er.error=342;
    s2.er.data=3443;
    s1.disp();
    s2.disp();
  end
endmodule
