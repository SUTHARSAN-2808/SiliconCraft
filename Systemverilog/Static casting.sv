module casting;
  real r;
  int i;
  initial begin
    r=(4.5*5.9);
    i=int'(r);
    $display(r,i);
  end
endmodule
