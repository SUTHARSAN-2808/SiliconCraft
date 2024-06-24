`include "Transaction.sv"
`include "Driver.sv"
`include "Generator.sv"
`include "Monitor.sv"
`include "Scoreboard.sv"

class environment;
  driver d;
  monitor mo;
  scoreboard s;
  generator g;
  virtual inter vi;
  mailbox m;
  transaction t;
  
  function new(virtual inter vi,mailbox m);
    this.vi=vi;
    this.m=m;
  endfunction
  
  task memory;
  t=new();
    mo=new(vi,m);
    s=new(m);
    g=new(m);
    d=new(vi,m);
  endtask
  
  task run;
    fork
    s.sco;
    mo.mon;
    g.gene;
    d.dri;
    join
  endtask
  
endclass
