module random_no(input [2:0]a);
  
  
  task rand(input [2:0]x);    
  if(x%2!=0)
    $display("The number is odd=%d",$random);
    else
      $display("Enter some other number=%d",$random);
  endtask
    initial begin
      reg[2:0] random_value;
      random_value=$random_range(0,99);
     
      rand(random_value);
    end
 endmodule
      
   
