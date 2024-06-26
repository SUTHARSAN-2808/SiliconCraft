`include "generator.sv"
`include "driver.sv"

class environment;
  //transaction t;
  mailbox mail;
  generator g;
  driver d;
  virtual inter vi;
  
  function new(mailbox mail,virtual inter vi);
   this.mail=mail; 
    this.vi=vi;
  endfunction
  
  task memory;
  // t=new();
    g=new(mail);
    d=new(mail,vi);
  endtask
  
  task run;
    fork
      g.gen;
      d.run;
    join
  endtask
  
endclass
