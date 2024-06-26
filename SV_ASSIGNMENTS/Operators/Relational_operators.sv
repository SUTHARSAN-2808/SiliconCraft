module relational_operator;
  reg [3:0] a,b;
  int y;
  initial begin
    a=4'b1101;
    b=4'b1001;
   
    $display(a>b);
   
    $display(a<b);
   
    $display(a>=b);
   
    $display(a<=b);
  end
endmodule
