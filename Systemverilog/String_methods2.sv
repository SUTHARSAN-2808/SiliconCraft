module string_methods;
  string a="SystemVerilog";
  string b,c;
  initial begin
    $display(a);
    $display(a.getc(1));
    $display(a.toupper);
    b="3.1a";
    c={a,b};
    $display(c);
    $display(c.len);
    c.putc(c.len()-1,"b");
    $display(c);
    $display(c.substr(2,5));
  end
endmodule
