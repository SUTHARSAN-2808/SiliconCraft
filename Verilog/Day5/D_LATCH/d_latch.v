module d_latch(input data,
               input en,
              input reset,
               output  reg q);
  always @(en,data,reset)
   
    if(reset==1)begin
        q<=0;
    end
    else if(en==1)begin
        q<=data;
    end
endmodule
