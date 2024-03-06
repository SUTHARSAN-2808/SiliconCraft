module memory(input wr,
              input clk,            
              input [4:0]data,             
              input reset,
              output [4:0]rd_data);
  reg [7:0] register;
  always @(posedge clk)begin
    if(reset)
      register<=0;
    else if( wr)
      register<=data;
  end
  assign 
    rd_data =(~wr)? register:0;
 
endmodule
