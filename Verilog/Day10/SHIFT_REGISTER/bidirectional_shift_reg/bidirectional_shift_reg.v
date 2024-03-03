module bidirectional_shiftreg(input reg clk,input reg reset,input reg[3:0] d,output reg[3:0]q,input reg[1:0]s);
  
  always @(*)begin
    if (reset)
      q=d;
    else begin
    case(s) 
      1'b0: q=d>>1;//Shift right operation
     
      1'b1: q=d<<1;//Shift left operation
      
    endcase
    end   
  end
endmodule
    
    
    
      
