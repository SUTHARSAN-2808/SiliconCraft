module sv_datatype;
  integer a;   //4state;signed
  int b;  //2state;signed
  shortint c;  //2state;signed
  longint d;    //2state;signed
  byte e;    // 2state;signed
  logic [15:0] li;   //4state;unsigned
  reg [7:0] r;      //4state;unsigned
  
  initial begin
    a='hxxzz_1101;
    b='h1100_1010;
    c='h1100;
    d='h1010_0101_xxxx_zz11;
    e='hxxz1;
    li='h1110;
    r='hzx;
  end
  initial begin
    $display("a=%h b=%h c=%h d=%h e=%h li=%h r=%h",a,b,c,d,e,li,r);
  end
endmodule
