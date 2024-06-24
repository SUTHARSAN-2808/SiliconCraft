
class monitor;
  transaction t;
  virtual inter vi;
  mailbox m;
  
  function new(virtual inter vi,mailbox m);
    this.vi=vi;
    this.m=m;
  endfunction
  
  task mon;
    #10
    forever  #10 begin
    t=new();
    t.a=vi.a;
    t.b=vi.b;
    t.cin=vi.cin;
    t.sum=vi.sum;
    t.cout=vi.cout;
    m.put(t);
    end
    
  endtask
endclass
