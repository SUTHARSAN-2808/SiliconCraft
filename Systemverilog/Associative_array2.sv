module sparse_array;
  longint arra[int];
  int idx;
  initial begin
    idx=1;
    repeat(64)begin
      arra[idx]=idx;
      idx=idx<<1;
    end
    if(arra.first(idx))
      $display(idx," ",arra[idx]);
    if(arra.next(idx))
      $display(idx," ",arra[idx]);
    if(arra.last(idx))
      $display(idx," ",arra[idx]); 
    if(arra.prev(idx))
      $display(idx," ",arra[idx]);
  end
endmodule
      
