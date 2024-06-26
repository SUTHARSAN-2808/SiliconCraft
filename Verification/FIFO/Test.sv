`include "environment.sv"

class test;
  environment env;
 // transaction t;
  mailbox mail;
  virtual inter vi;
  
  function new(virtual inter vi,mailbox mail);
   this.vi=vi;
    this.mail=mail;
  endfunction
  
  task memory;
   // t=new();
    env=new(mail,vi);
  endtask
  
  task run;
    fork
     env.memory;
      env.run;
    join
  endtask
endclass
