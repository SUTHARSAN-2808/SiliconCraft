
`include "transaction.sv"
class generator;
  transaction t;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail=mail;
  endfunction
  
  task gen;
   
    repeat(10)begin
      t=new();
      t.randomize();
     // t.datain=4'b1100;
    mail.put(t);
    end
  endtask
endclass

