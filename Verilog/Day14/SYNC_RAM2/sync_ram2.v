module sync_ram2(input reg clk,
                 input reset,
                 input reg[3:0] datain,
                 input reg [5:0]addr,
                input wr,
                input rd,
                 output reg[3:0] dataout);
  reg[3:0]ram[64:0];
  always @(posedge clk)begin
    if(reset)
      dataout<=0;
    else if(clk==1 && wr==1 && rd==0)
      ram[addr]<=datain;
    else if(clk==1 && wr==0 && rd==1)
      dataout<=ram[addr];
  end
endmodule
      
