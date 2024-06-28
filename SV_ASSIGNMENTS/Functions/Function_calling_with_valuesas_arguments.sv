//Function calling values as arguments
module func_argu;
  bit [4:0] a,b,c,result;
  initial begin
    result =sum(11,13);
    $display("Answer is=%0d",result);
  end
  
  function int sum(int a,b);
     c=a+b;
    return c;
    
  endfunction
endmodule
