module johnson_counter #(parameter width=4) (
  input reg clk,
  input reset,
  output reg[width-1:0]cout);

 integer i;
  always @(posedge clk) begin
    if (reset)
      cout <= 4'b1100;
    else 
      
      cout[width-1]<=~cout[0];
      for( i=0;i<width-1;i=i+1)
      cout[i]=cout[i+1];
    
  end    
  initial begin
    $monitor(" clk=%d reset=%d out=%b",clk,reset, cout);
  end
endmodule

