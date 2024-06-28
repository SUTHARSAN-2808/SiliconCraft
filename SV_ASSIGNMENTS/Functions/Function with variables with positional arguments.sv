//Calling function with positional arguments
module func_posiargu;
  int a,b,c,result;
  initial begin
    result=sum(.b(3),.a(7));
    
    $display(result);
  end
  
  function int sum(int a,b);
    $display(a,b);
    c=a+b;
    return c;
  endfunction
endmodule
