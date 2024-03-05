module shift_reg(
  input  reg clk,
  input reset,
  input reg [3:0]d,
  input din,
  input reg [1:0] s,
  output reg [3:0] q
);

    always @(posedge clk) begin
      if(reset) 
        q<=4'b0000;
      
      else
        
        case(s) 
        1'b0: q<={din,d[3:1]};
          
          1'b1: q<={d[2:0],din};
        
       endcase
      
    end
  
  always @(*)
    $display("d=%b din=%b s=%b q=%b",d,s,din,q);   
endmodule
