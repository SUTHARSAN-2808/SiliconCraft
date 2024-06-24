
class scoreboard;
  transaction t;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail=mail;
  endfunction
  
  task sco;
  //  #10
    forever  #10 begin
    mail.get(t);
      if(t.sum==1'b1 && t.cout==1'b0)begin
      $display("a=%d b=%d cin=%d sum=%d cout=%d",t.a,t.b,t.cin,t.sum,t.cout);
      $display("Sum is high");
      end
    else begin
      $display("a=%d b=%d cin=%d sum=%d cout=%d",t.a,t.b,t.cin,t.sum,t.cout);
      $display("Carry is high");
    end
    end
  endtask
  
endclass
