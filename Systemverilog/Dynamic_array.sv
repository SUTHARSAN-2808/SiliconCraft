
module dynamic_array;
  int a[]='{7,2,1,5,6};
  int b[];
  
  initial begin
    b=new[4];
    foreach(b[i])
      begin
        b[i]=i*2+2;
      end    
 //   $display("array in b[%0d]=%0d",i,b[i]);
    $display("Size of the array b is ",b.size);
    a.sort();
    $display(a);
    a.delete();
    $display(a);
    b.shuffle();
    $display(b);
  end
endmodule
