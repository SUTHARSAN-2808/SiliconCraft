union packed {bit [3:0] a;
              bit [3:0] b;
             }datum;
module union_packed;
      
  initial begin
    datum.a=4'b1010;
 //   datum.b=4'b0001;
    $display(datum);
  end
endmodule
