//Associative_array
module associative_array;
  
  int a[*];
  string b[string];
  
  initial begin
    a='{2:20,3:5,90:6,7:1};
    b='{"vegetables": "Guava" ,"Season": "Rainy" };
    $display("int type a=%p",a);
    $display("String type b=%p",b);
  end
  
endmodule
