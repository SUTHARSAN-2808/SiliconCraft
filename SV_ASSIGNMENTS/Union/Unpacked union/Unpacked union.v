

union {int a;
       byte b;
      }datas;

module da;
  initial begin
   datas.a=24'h12cbffca;
    datas.b=8'hea;
    $display("a=%h",datas.a);
    $display("b=%h",datas.b);
    
  end
endmodule
