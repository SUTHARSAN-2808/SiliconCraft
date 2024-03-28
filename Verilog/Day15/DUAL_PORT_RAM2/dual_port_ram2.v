module dualport_ram2(input reg clk,
                     input reset,
                     input reg[4:0]datain,
                     input port,
                     input wr,
                     input rd,
                     input [5:0]addr0,
                     input [5:0]addr1,
                     output reg[4:0]dataout0,
                     output reg[4:0]dataout1);
  reg[4:0]mem[64:0];
  always @(posedge clk)begin
    if(reset)begin
      dataout0<=0;
      dataout1<=0;
    end
    else if(wr==1 && port==0)
      mem[addr0]<=datain;
    else if(wr==1 && port==1)
      mem[addr1]<=datain;
    else if(rd==1 && port==0)
      dataout0<=mem[addr0];
    else if(rd==1 && port==1)
      dataout1<=mem[addr1];
  end
endmodule
