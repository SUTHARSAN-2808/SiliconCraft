module if_else;
byte a;
initial begin
  a = -1;
  
  if(a>0)begin
    $display ("Successfully enters into if block");
    $display ("a is a postive number");
 
  end 
  else 
    $display ("Number is negative");
  $display ("Out of if else block");
end 
endmodule 
