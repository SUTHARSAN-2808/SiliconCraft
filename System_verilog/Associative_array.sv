module associative_array;

  typedef enum {red,yellow,green} array;
  bit[5:0] a[array];    //associative array1
  bit[5:0] b[int];		//associative array2

  initial begin
    a[red]=63;
    a[yellow]=7;
    a[green]=9;
    foreach(a[i])
      $display("a[%s]=%0d",i.name(),a[i]);
  end
  initial begin
    b[12]=50;
    b[15]=70;
    b[18]=90;
    foreach(b[i])
      begin
        $display("b[%0d]=%0d",i,b[i]);
      end
  end
endmodule


