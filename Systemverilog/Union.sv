module union_a;
  
  typedef union{
    int a;
    logic [7:0] b;
  }students;
  initial begin
    students akash;
    
    akash.a='h86108570;
   // akash.b='h32;
    $display("akash=%p",akash);
  end
  
endmodule

