//Function calling with values from expression
module func_argu;
  bit [4:0] a,b,c,result;
  initial begin
    
    $display("Answer is=%0d",sum(1,13));
  end
  
  function int sum(int a,b);
     c=a+b;
    return c;
    
  endfunction
endmodule
