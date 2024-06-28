
module func_return_arr;
  
  int array[5];
  initial
  begin
    
    void'(fun_arr(array));
    $display("\treturned from function");
    $display("\n\t@ %0t ns, Array elements = %0p",$time,array);
  end
 

  function automatic int fun_arr(ref int arr[5]);
    $display("\tEntered the function");
    foreach(arr[i])begin
      arr[i]=i+1;
    end
      $display("\t values assigned to array elements starts from 1");
     
      return arr[5];
    endfunction

endmodule : func_return_arr
