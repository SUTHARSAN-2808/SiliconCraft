module dualport_ram(input reg clk,
                    input reg[2:0] datain,
                    input reset,
                    input wr,
                    input port,
                    input reg [3:0]addr_0,
                    input reg [3:0]addr_1,
                    output reg [2:0]dataout0,
                    output reg[2:0]dataout1);
  reg[2:0]ram[15:0];
  always @ (posedge clk)begin
    if(reset)begin
      dataout0<=0;
      dataout1<=0;
    end
     else if(port==0 && wr==1)
    ram[addr_0]<=datain;
     else if(port==1 && wr==1)
    ram[addr_1]<=datain;
     else if(port==0 && wr==0)
      dataout0<=ram[addr_0];
     else if(port==1 && wr==0)
      dataout1<=ram[addr_1];
  end
endmodule
    
