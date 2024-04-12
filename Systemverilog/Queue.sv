module queue;
  int a[$] = '{2,3,4,6,8};
  int b;
  
  initial begin
    b=2; 
    $display(b);
  a.push_front(5);
  $display(a);
    a.insert(1,9);
    $display(a);
    a.delete(3);
      $display(a);
   a.push_front(7);
    $display(a);
  a.pop_back();
      $display(a);
  end
  
endmodule
