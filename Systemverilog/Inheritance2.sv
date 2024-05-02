//Inheritance
class parent;
  bit[5:0] addr;
 endclass

class child extends parent;
  bit [7:0] data;
endclass

  module inheritaces;
    initial begin
      child c=new();
      c.data=10;
      c.addr=5;
      $display(c.data,",",c.addr);
    end
  endmodule
