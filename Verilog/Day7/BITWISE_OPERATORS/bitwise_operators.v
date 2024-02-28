module bitwise_operators(input [5:0]a,
                         input [5:0]b,
                         output reg [5:0]o1,
                         output reg [5:0]o2,
                         output reg [5:0]o3,
                         output reg [5:0]o4,
                         output reg [5:0]o5);
  always @(*) begin
   
       o1=a & b;
       o2=a | b;
       o3=a ^ b;
       o4=~a;
       o5=~&a;
  end
endmodule
    
    
  

