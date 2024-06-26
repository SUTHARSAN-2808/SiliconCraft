//unpacked 1dim array
module unpacked_1dim_array;
  
  int  a[4:0] ;
  
  initial begin
 
    a={46,23,123,600,1};
    $display(a);
    foreach(a[i])
      $display("a[%d]=%b",i,a[i]);
  end
  
endmodule
