module swapping(input  [4:0]a,input  [4:0]b,output reg [4:0]out_a,output reg [4:0]out_b);
  
  always @(*) begin
    
    out_a=b;
    out_b=a;
    $display("a=%d b=%d",out_a,out_b);
  end
endmodule
  

