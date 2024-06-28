//Function calling with variables as arguments
module func_variables;
  int c,d,ans,result;
  function int mul(int c,d);
    ans=c*d;
    return ans;
  endfunction
  
  initial begin
    c=11;
    d=7;
    result=mul(c,d);
    $display("Answer is %d",result);
  end
endmodule
