module structure;     //unpacked structure
  typedef struct {
    int a;
    reg [3:0] b ;
  } practice;
  
  initial begin
    practice b1,b2;
    b1.a='hfa235_1;
    b1.b='h2;
    $display("b1=%0h",b1.a);
    $display("b1=%p",b1.b);
    
    b2='{'hfcae233,'h2};
 
    $display("b2=%p",b2);
  end
endmodule
