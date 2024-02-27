module sr_flipflop(input s,
                   input r,
                  input clk,
                  output reg q,
                   output reg qbar);
  always @(posedge clk)
    
    if(s==0 && r==0)begin
        q<=q;
    end
    else if(s==0 && r==1)begin
       q<=0;
    end
      else if(s==1&& r==0)begin
      q<=1;
    end
    else
     q=1'bx;
     assign qbar=~q;
    
endmodule
  
