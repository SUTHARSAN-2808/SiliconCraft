//UP counter
module counter2(input clk,
               input reset,
                input d,
                output  reg [3:0] out );
  
  always @ (posedge clk)begin
    if(reset==1'b1 || out==4'b0101)
      out<=4'b0;
    else if(d==1'b1)
      out<=out+1;
    else
      out<=out-1;
  end
endmodule
