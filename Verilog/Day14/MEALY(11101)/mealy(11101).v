module mealy(input reg clk,
             input reset,
             input reg in,
             output reg [2:0]state,
             output reg [2:0]next,
             output reg out);
  
  parameter [2:0]s0=3'b000,
  				 s1=3'b001,
  				 s2=3'b010,
  			     s3=3'b011,
  				 s4=3'b100;
  
  always @(posedge clk)begin
    if (reset)
      state<=s0;
    else
      state<=next;
  end
  always @(state or in)begin  
    case(state)
      s0:begin out=1'b0;
        if(in==1)
          next=s1;
        else
          next=s0;
      end
      s1:begin out=1'b0;
        if(in==1)
          next=s2;
        else
          next=s0;
      end
  
      s2:begin out=1'b0;
        if(in==1)
          next=s3;
        else
          next=s0;
      end
  
      s3:begin out=1'b0;
        if(in==0)
          next=s4;
        else
          next=s3;
      end
      s4:begin out=1'b1;
        if(in==1)
          next=s0;
        else
          next=s0;
      end      
    endcase
  end
endmodule
    
  
  
  
  
