module sync_ram(datain,dataout,clk,reset,addr,wr,rd);
  
 parameter DATA=8;
  parameter ADDR=8;
  
  input reg[DATA-1:0]datain;
  output reg [DATA-1:0]dataout;
  input reg[ADDR-1:0]addr;
  input reg clk,wr,rd,reset;
  
  reg[7:0]ram[256:0];
  
  always @(posedge clk)begin
    
    if(reset)begin
      dataout=0;
    end
    else if((clk) && (wr))begin
      ram[addr]=datain;
    end
    else if((clk)  && (rd))begin
      dataout=ram[addr];
    end
  end
endmodule
    
  
  
