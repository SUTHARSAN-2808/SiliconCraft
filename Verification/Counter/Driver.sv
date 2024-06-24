class driver;
  
  transaction t;
  mailbox mail;
  virtual inter vi;
  
  function new(virtual inter vi, mailbox mail);
    this.vi=vi;
    this.mail=mail;
  endfunction
  
  task drive;
    t=new();
    mail.get(t);
    
    vi.reset=1'b1;
    #3 
    vi.reset=1'b0;
    vi.d=1'd1;
    #100
    vi.d=1'b0;
  
    t.out=vi.out;
    #195
    $display("---------------------------------------------");
    $display($time,"Entire process completed");
      $display("--------------------------------------------");
   
  
  endtask
endclass
