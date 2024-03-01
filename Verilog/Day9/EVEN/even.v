module even_no(input a);
  
task even(input x);    
    if(x%2==0)
      $display("The number is even");
    else
      $display("Enter some other number");
  endtask
    initial begin
      even(6);
      even(9);
    end
 endmodule
      
   

     
