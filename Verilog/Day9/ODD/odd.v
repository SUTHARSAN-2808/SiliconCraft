module odd_no(input a);
  
task odd(input x);    
  if(x%2!=0)
    $display("The number is odd");
    else
      $display("Enter some other number");
  endtask
    initial begin
      odd(6);
      odd(9);
    end
 endmodule
      
   

