//fixed array(Packed) single dimension
module fixed_Arrays;
  
  bit [3:0] a;
  
  initial begin
    a=4'b1010;
    $display(a);
    foreach(a[i])begin
      $display("a[%d]=%b",i,a[i]);
    end
  end
  
endmodule
