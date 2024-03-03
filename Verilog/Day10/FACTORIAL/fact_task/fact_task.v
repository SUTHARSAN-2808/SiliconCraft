module factorial_task(input [3:0]a,output reg[15:0] factor);
  initial begin
    factor=1;
    fact(5,factor);
  end

  task fact(input[3:0] x,output [15:0] b);begin
      b=1;
      for(int i=x;i>0;i=i-1)begin
      b=b*i;
      end
    
      $display("the factorialnumber is=%d",b);
     end
    endtask
  
endmodule
    
