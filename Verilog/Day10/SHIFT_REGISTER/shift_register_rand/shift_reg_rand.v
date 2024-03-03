module shiftreg_rand(input reg clk,input reg reset,input reg [3:0]d,output reg [3:0]q);
 
  always @(posedge clk) begin
    if(reset)begin
      q=d;
      $display("q=%b d=%b",q,d);
    end
    else begin
      q=d<<1;
      $display("q=%b d=%b",q,d);
    end
  end
  
endmodule
  
