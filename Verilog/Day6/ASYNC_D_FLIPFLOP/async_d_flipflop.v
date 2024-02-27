
module d_flipflop(input d,
                 input clk,
                 input reset,
                  output reg q);
  always @(posedge clk or negedge reset)
    if(~reset)begin
       q <= 0;
    end
    else 
       q <= d;
   // end 
endmodule
      
