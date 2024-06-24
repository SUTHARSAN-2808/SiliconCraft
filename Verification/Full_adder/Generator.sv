
class generator;
  transaction t;
  mailbox m;
  
  function new(mailbox m);
    this.m=m;
  endfunction
  
  task gene;
    repeat(5)begin
     // #10
    t=new();
    t.randomize();
    m.put(t);
      #30;
   
   // $display("packe is sent to driver");
   end
  endtask
    
endclass


