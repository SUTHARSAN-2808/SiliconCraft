module sync_ram3_tb;
  reg clk,reset,rd,wr;
  reg[4:0]datain;
  reg[7:0]addr;
  wire[4:0]dataout;
  sync_ram3 aa(.clk(clk),.reset(reset),.datain(datain),.dataout(dataout),.wr(wr),.rd(rd),.addr(addr));
  always #5clk=~clk;
  initial begin
    clk=0;
    reset=1;
    #5 reset=0;
  end
  initial begin
    #4wr=1;datain=01101;addr=1010111;rd=0;
    #5wr=0;rd=1;
      #10wr=1;datain=5'b10101;addr=1111111;rd=0;
    #7wr=0;rd=1;
    #20 $finish;
  end
  initial begin
    $monitor("clk=%d reset=%d datain=%b wr=%d rd=%d addr=%d dataout=%b",clk,reset,datain,wr,rd,addr,dataout);
  end
endmodule
  
