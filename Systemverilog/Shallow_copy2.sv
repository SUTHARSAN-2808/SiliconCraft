class error_trans;
  bit[5:0] error;
  bit[6:0] data;
  function new( bit[5:0] error,bit[6:0] data);
    this.error=error;
    this.data=data;
  endfunction
endclass

class trans;
  bit [31:0] a,b;
  error_trans er;
  function new();
    a=55;
    b=66;
    er=new('hd1,324);
  endfunction


function void disp();
  $display(a,",",b);
  $display(er.error,",",er.data);
  
endfunction
endclass

module sh;
  initial begin
    trans t1,t2;
    t1=new();
    t1.disp();
    t2= new t1;
    t2.disp();
    t2.a=36;
    t2.b=49;
    t2.er.error=10;
    t2.er.data=20;
    t1.disp();
    t2.disp();
  end
endmodule
    
  
