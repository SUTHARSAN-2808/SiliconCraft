typedef class c2;

class c1;
  c2 ck;
endclass

class c2;
  c1 cl;
endclass

module clas;
  initial begin
    c1 class1=new();
    c2 class2=new();
    $display("Hi");
  end
endmodule
