`include "Generator.sv"
`include "Driver.sv"
`include "Scoreboard.sv"
`include "Monitor.sv"
//`include "Transaction.sv"

class environment;
  
  generator g;
  driver d;
  monitor m;
  scoreboard sco;
  transaction t;
  mailbox mail;
  virtual inter vi;
  
  function new(virtual inter vi,mailbox mail);
    this.vi=vi;
    this.mail=mail;
  endfunction
  
  task memory;
    t=new();
    m=new(vi,mail);
    sco=new(mail);
    g=new(mail);
    d=new(vi,mail);
  endtask
  
  task run;
    fork
    g.gen;
    m.mon;
    sco.score;
    d.drive;
    join
  endtask
  
endclass
