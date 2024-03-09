module sync_ram3(input reg clk,
                input reset,
                 input reg[4:0]datain,
                 input reg[7:0]addr,
                input wr,
                input rd,
                 output reg[4:0]dataout);
  reg[4:0]sram[256:0];
  always @(posedge clk)begin
    if(reset)
      dataout<=0;
    else if(wr==1)
      sram[addr]<=datain;
    else if (rd==1)
      dataout<=sram[addr];
  end
endmodule
