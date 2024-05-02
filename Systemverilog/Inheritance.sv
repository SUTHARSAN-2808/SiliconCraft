class F;
  bit[4:0] a,b,c;
  function void display();
    $display(a,",",b,",",c);
  endfunction
endclass

class G extends F;
  bit[2:0] d;
  function void dissplay();
    $display(a,",",b,",",c,",",d);
  endfunction
  
endclass

module inheritannce;
   
  initial begin
    G one=new();
    one.a=5'b10101;
    one.b=5'b11111;
    one.d=3'b000;
    one.display;
    one.dissplay;
 
  end
endmodule
