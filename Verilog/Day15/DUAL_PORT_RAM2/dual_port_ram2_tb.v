module dualport_ram_tb;
  reg clk,reset,port,wr,rd;
  reg [4:0]datain;
  reg [5:0] addr0,addr1;
  wire [4:0] dataout0,dataout1;
  dualport_ram2 aa(.clk(clk),.reset(reset),.port(port),.wr(wr),.rd(rd),.datain(datain),.addr0(addr0),.addr1(addr1),.dataout0(dataout0),.dataout1(dataout1));
  always #1 clk=~clk;
  initial begin
    clk=0;
    reset=1;
    #3 reset=0;
  end
  initial begin    
    wr=1;rd=0;port=0;datain=5'b11011;addr0=6'b111000;
    #4 rd=1;wr=0;port=0;
    #5 wr=1;rd=0;port=1;datain=5'b10101;addr1=6'b010101;
    #4 rd=1;wr=0;port=1;
    #10 $finish;
  end
  initial begin
    $monitor("clk=%d reset=%d datain=%d addr0=%d addr1=%d dataout0=%d dataout1=%d wr=%d rd=%d port=%d",clk,reset,datain,addr0,addr1,dataout0,dataout1,wr,rd,port);
  end
endmodule
  
