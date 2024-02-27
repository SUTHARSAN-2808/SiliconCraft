module t_flipflop(input d,
                 input clk,
                 input reset,
                  output reg q,
                 output reg qbar);
  always @(negedge reset or posedge clk)
    if(!reset)begin
    q = 0;
    qbar =~q;
    end
  else if (d == 0)begin
    q=q;
   qbar =~q;
  end
  else if(d == 1)begin
    q =~q;
     qbar =~q;
  end
endmodule
    
