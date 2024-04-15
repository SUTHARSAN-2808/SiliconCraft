module enum_a;
  typedef enum{first=10,second,third}position;
  initial begin
    position a,b;
    $display("new=%d",a.last);
    $display("new=%d",b.first);
    $display("new=%d",a.next);
  end
endmodule
  
