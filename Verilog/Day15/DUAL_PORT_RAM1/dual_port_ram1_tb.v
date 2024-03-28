module dualport_ram_tb;
  reg clk,reset,wr,port;
  reg [2:0]datain;
  reg [3:0] addr_0,addr_1;
  wire [2:0] dataout1,dataout0;
  dualport_ram aa(.clk(clk),.reset(reset),.wr(wr),.port(port),.datain(datain),.addr_0(addr_0),.addr_1(addr_1),.dataout0(dataout0),.dataout1(dataout1));
  always #1 clk=~clk;
  initial begin
    clk=0;
    reset=1;
    #2 reset=0;
  end
  initial begin
    wr=1;
    port=1;
    datain=3'b110;
    addr_1=4'b1110;
    #5 port=1;
     wr=0; 
    #2 datain=3'b101;
    port=0;wr=1;addr_0=4'b0001;
    #4 port=0;
    wr=0;
   
    #15$finish;
  end
  initial begin
    $monitor("clk=%d reset=%d  port=%d   datain=%b   addr_0=%b   addr_1=%b   dataout0=%b   dataout1=%b   wr=%d ",clk,reset,port,datain,addr_0,addr_1,dataout0,dataout1,wr);
  end
endmodule
    
