module sync_ram_tb;
  reg [7:0]datain;
  reg[7:0]addr;
  reg clk,wr,rd,reset;
  wire [7:0]dataout;
  sync_ram aa(.datain(datain),.dataout(dataout),.clk(clk),.reset(reset),.addr(addr),.wr(wr),.rd(rd));
  always #5clk=~clk;
  initial begin
    clk=0;
    reset=1;
    #5 reset=0;
  end
  initial begin
    #3 wr=1;rd=0;datain=8'h20;addr=8'h34;
   #10 wr=0;rd=1;
   #25 $finish;
  end
  initial begin
    $monitor("clk=%d reset=%d wr=%d rd=%d addr=%b datain=%b dataout=%b   ",clk,reset,wr,rd,addr,datain,dataout);
  end
  initial begin
    $dumpfile("sync_ram.vcd");
    $dumpvars(1);
    
    
  end
endmodule
  
    
