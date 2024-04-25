module multidimensional_unpacked_array;
  reg my_array1[4:0][30:0];
  initial begin
    int i;
    my_array1[4][30]=1'b1;
    $display(my_array1[4][30]);    
    my_array1[29][4]=1'b1;
   $display(my_array1[29][4]);
    foreach(my_array1[4][i])begin
      my_array1[4][i]=1'b1;
  $display("my_array1[4][%0d]=%0d",i,my_array1[4][i]);
    end
  end
endmodule
