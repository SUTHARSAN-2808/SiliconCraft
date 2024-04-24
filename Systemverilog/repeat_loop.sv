module repeat_loop;
  int arr[3]='{2,5,8};
  int i;
  initial begin
    repeat ($size(arr))begin
      #5 $monitor("arr[%0d]=%0d",i,arr[i]);
    i++;
    end
    repeat (5)
      $display("Silicon craft");
  end
endmodule
