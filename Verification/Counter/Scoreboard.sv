class scoreboard;
  mailbox mail;
  transaction t;
  
  function new(mailbox mail);
    this.mail=mail;
  endfunction
  
  task score;
   forever #6 begin
    mail.get(t);
     if(t.out>4'b0011)
        $display("++++++++++++TARGET PASSED +++++++++++++++++");
      else
       $display("++++++++++++TARGET FAILED +++++++++++++++++");
   end
  endtask
endclass
