
module bitwise_code;
  reg [3:0] a,b,x,y,c;
 initial begin
 a=4'b1xx1;
 b=3'b101;
 c=4'bx010;
  $display("\n \t the value of a is %b",a);

  $display("\n \t the value of b is %0b",b);
  y=~a;

  $display("\n \t the bitwise NOT (~a) operator output is %b",y);

  y=a&b;
  $display("\n \t the bitwise AND (a&b) operator output is %b",y);

  y=a|c;
  $display("\n \t the bitwise OR (a|c) operator output is %b",y);

  y=a^b;
  $display("\n \t the bitwise XOR (a^b) operator output is %b",y);

  y= ~(a & b);
  $display("\n \t the bitwise NAND ~(a&b) operator output is %b", y);

  y=  ~(b|a);
  $display("\n \t the bitwise NOR ~(b|a) operator output is %b", y);

  y= ~(a^b);
  $display("\n \t the bitwise XNOR ~(a^b) operator output is %b", y);

end
endmodule 
