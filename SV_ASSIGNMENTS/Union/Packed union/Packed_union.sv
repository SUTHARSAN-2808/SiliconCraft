

union packed {byte a;
       byte b;
      }datas;

module da;
  initial begin
   datas.a=8'hca;
    datas.b=8'hea;
    $display("a=%h",datas.a);
    $display("b=%h",datas.b);
    
      datas.b=8'hef;
     $display("a=%h",datas.a);
    $display("b=%h",datas.b);
    
  end
endmodule
