
union {int a;
       byte b;
      }datas;

module da;
  initial begin
    datas.a=24'h100011;
    datas.b=8'h10;
    $display(datas);
    
  end
endmodule
