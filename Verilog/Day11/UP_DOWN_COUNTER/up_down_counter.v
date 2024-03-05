module UpDowncounter(input reg clk,
               input reg reset, 
               input reg[1:0] s,
               output reg[3:0]count);
  always @(posedge clk )begin
    if(reset)
      count <=4'b0000;
    else  
      case(s)
      1'b0:count <= count-1;//Down_counter   
      1'b1:count <= count+1;//Up_counter
      endcase
  end
    
       
  always @(*) begin
    $monitor(" clk=%d s=%d count=%d",clk,s,count );
  end
endmodule
       
