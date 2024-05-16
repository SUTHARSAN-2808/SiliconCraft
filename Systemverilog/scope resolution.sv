//Scope resolution operator
class scope;
 
   static int data;
  
  function disp(int a,int b);
    $display(a,b);
  endfunction
endclass

module ak;
  
  initial begin
     
  
    scope s=new();
    int data=89;
       scope::data=8;
    
    s.disp(scope::data,data);
  end
endmodule
