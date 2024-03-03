module swapping_tb;
  reg [4:0] a,b;
  wire [4:0] out_a,out_b;
  swapping aa(a,b,out_a,out_b);
  initial begin
    a=$random;b=$random;
  
  end
endmodule
 
