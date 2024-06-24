`include "Transaction.sv" 
class generator;
  
  transaction t;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail=mail;
  endfunction
  
  task gen;
    t=new();
    mail.put(t);
    $display("Generator block initiated");
  endtask
  
endclass
