//parameterized classes
class god #(int size=8);
  bit [size-1:0] out;
endclass

module good;
  god #(.size(5)) bad;
  god #(7) better;
  
  initial begin
    bad=new();
    better=new();
    $display($bits(bad.out));
    $display($bits(better.out));
    
  end
endmodule
