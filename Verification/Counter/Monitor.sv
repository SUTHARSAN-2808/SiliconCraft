class monitor;
  mailbox mail;
  transaction t;
  virtual inter vi;
  
  function new(virtual inter vi,mailbox mail);
    this.vi=vi;
    this.mail=mail;
  endfunction
  
  task mon;
  forever #6 begin
    t=new();
    t.clk=vi.clk;
    t.reset=vi.reset;
    t.d=vi.d;
    t.out=vi.out;
      mail.put(t);
  end
  endtask
  
  
endclass
