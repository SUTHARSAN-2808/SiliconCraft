//Equality operators
module eq_operators;
  integer a,b;
  initial begin
    a=4'b1101;
    b=4'b11x1;
    $display("Equaltiy a==b ",a==b);
    $display("Non Equality a!=b ",a!=b);
    $display("Case Equaltiy ",a===b);
    $display("Case Non Equaltiy ",a!==b);
  end
endmodule
