`include "Environment.sv"

class test;
  transaction t;
  environment env;
  mailbox m;
  virtual inter vi;
  
  function new(virtual inter vi,mailbox m);
    this.vi=vi;
    this.m=m;
  endfunction
  
  task memory;
    t=new();
    env=new(vi,m);
  endtask
  
  task run;
    
    fork
    env.memory;
    env.run;
    join
    
  endtask
endclass
