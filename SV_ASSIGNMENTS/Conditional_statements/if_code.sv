module if_code;
bit [3:0]a;
initial begin 
    a=6;
    
  $display(a);
  if (a==6)begin 
      $display ("if expression is true , Successfully entered into the if block");
    $display ( "a is equal to 6 " );
     
    end 
     $display("out of if block");
  end 
  endmodule 
  
