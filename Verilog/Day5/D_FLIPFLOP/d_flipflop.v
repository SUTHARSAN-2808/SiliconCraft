module d_flipflop(input d,
                 input clk,
                 input reset,
                  output reg q);
  always @(posedge clk)
    if(reset == 1)begin
       q <= 0;
    end
    else 
       q <= d;
   // end 
endmodule
      

