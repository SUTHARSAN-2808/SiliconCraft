`include "test.sv"
`include "interface.sv"

module testbench;
  test tt;
  inter in();
  mailbox mail;
  
  sync_fifo sf(.clk(in.clk),
               .reset(in.reset),
               .datain(in.datain),
               .wen(in.wen),
                .full(in.full),
               .empty(in.empty),
               .dataout(in.dataout));
  
  initial begin
    mail=new();
    tt=new(in,mail);
    fork
      tt.run;
      tt.memory;
    join
  end
  
  always #5 in.clk=~in.clk;
  initial begin
    
    in.clk=1'b1;
    
    $monitor("time =%d clk=%d reset=%d  datain=%d wen=%d ren=%d dataout=%d",$time,in.clk,in.reset,in.datain,in.wen, in.ren,in.full,in.empty,in.dataout);
    #100 $finish;
  end
endmodule
