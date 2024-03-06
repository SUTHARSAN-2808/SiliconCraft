module memory_tb;
  reg clk,reset,wr;
  reg [4:0]data;
 
  wire [4:0]rd_data;
  memory aa(.clk(clk),.reset(reset),.wr(wr),.data(data),.rd_data(rd_data));
  always #10 clk=~clk;
  initial begin
    clk=1;reset=0;wr=1;data=1100;
    #30 clk=1;reset=0;wr=0;
  #65  $finish;
  end
  initial begin
    $monitor("clk=%d wr=%d reset=%d rdata=%b",clk,wr,reset,rd_data);
  end
endmodule
    
