module t_flipflop(input d,
                 input clk,
                 input reset,
                  output reg q);
  always @(negedge reset or posedge clk)
    if(!reset)begin
      q = 0;
    end
   else
     q =~d;
endmodule
    

