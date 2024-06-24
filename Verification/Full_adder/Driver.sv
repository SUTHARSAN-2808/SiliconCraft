
class driver;
  virtual inter vi;
  transaction t;
  mailbox m;
  
  function new(virtual inter vi,mailbox m);
    this.vi=vi;
    this.m=m;
  endfunction
  
  task dri;
    repeat(5) begin
     // #10
    t=new();
    m.get(t);
    vi.a=t.a;
    vi.b=t.b;
    vi.cin=t.cin;
    #10
    t.sum=vi.sum;
    t.cout=vi.cout;
   // $display("a=%d b=%d cin=%d sum=%d cout=%d",vi.a,vi.b,vi.cin,t.sum,t.cout);
     #20;
    end
      endtask
endclass
