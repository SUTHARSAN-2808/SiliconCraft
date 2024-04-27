module jk_flipflop(input j,
                  input k,
                  input clk,
                  input reset,
                  output reg q,
                   output reg qbar);
  always @(posedge clk)
    if(reset)begin
      q<=0;
     
    end
  else if(j == 0 && k == 0)begin
    q<=q;  
  end
    else if(j == 0 && k == 1)begin
      q<=0;
    end
  else if(j == 1 && k ==0)begin
    q<=1;   
  end
  else 
    q<=~q;
   assign qbar=~q;
  
endmodule
     

