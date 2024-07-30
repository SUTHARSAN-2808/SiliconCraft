//d-flipflop
module dff(input clk,
           input reset,
           input q,
            output reg d);
 
  always @(posedge clk)begin
    if(reset==1'b1)
      d<=1'b0;
    else 
      d<=q;
  end
endmodule


