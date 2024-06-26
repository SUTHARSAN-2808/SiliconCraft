class driver;
  virtual inter vi;
  mailbox mail;
  transaction t;
  
  function new(mailbox mail,virtual inter vi);
    this.vi=vi;
    this.mail=mail;
  endfunction
  
  task reset();
   vi.reset<=1'b1;
    vi.wen<=1'b0;
    vi.ren<=1'b0;
    vi.datain<=1'b0;
    repeat (5)@(posedge vi.clk)begin
      vi.reset<=1'b0;
      $display("Reset Done");
    end
  endtask
    
  task write();
    @(posedge vi.clk)begin
    vi.wen<=1'b1;
      vi.ren<=1'b0;
    vi.reset<=1'b0;
    vi.datain<=t.datain;    
      $display($time,"Datain=%d",vi.datain);     
    end
  endtask
     
  task read();
    @(posedge vi.clk)begin
    vi.wen<=1'b0;
      vi.ren<=1'b1;
    vi.reset<=1'b0;
    vi.dataout<=t.datain;
      $display($time,"Dataout=%d",vi.dataout);
    end    
  endtask
  
  task run();
    repeat (10)begin
    t=new();
      #10
    mail.get(t);
    //  $display($time,"Write operation occurs");
      write();
      #10
      //$display($time,"read operation occurs");
      read();
    end
  endtask  
endclass
