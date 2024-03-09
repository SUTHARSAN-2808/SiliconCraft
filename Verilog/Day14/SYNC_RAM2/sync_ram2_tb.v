module sync_ram2_tb;
  reg clk,reset,wr,rd;
  reg[3:0] datain;
  reg[5:0] addr;
  wire[3:0] dataout;
  sync_ram2 aa(.clk(clk),.reset(reset),.datain(datain),.dataout(dataout),.wr(wr),.rd(rd),.addr(addr));
  always #5clk=~clk;
  initial begin
    clk=0;
    reset=1;
    #5reset=0;
  end
  initial begin
    wr=1;datain=1001;addr=110011;rd=0;
    #10 rd=1;wr=0;
    #20wr=1;datain=1101;addr=111011;rd=0;
    #10 rd=1;wr=0;
    #40$finish;
  end
  initial begin
    $monitor("clk=%d reset=%d datain=%d wr=%d rd=%d addr=%d dataout=%d",clk,reset,datain,wr,rd,addr,dataout);
  end
endmodule
    
    
