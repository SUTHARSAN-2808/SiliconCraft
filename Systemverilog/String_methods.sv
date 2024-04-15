module Strings_methods;
 string s1="Jai";
  string s2="Akash";
  string s3="Surendhar";
  string s4,s5,s6;
  initial begin
  s4="sutharsan";
    $display("Length of s4 is s4=%d",s4.len);
   s5="Roja";
    s5.putc(0,"k");
    $display(" s5 is s5=%s",s5);
      s5.getc(0);
    $display(" s5 is s5=%s",s5);
      s6=s5.toupper;
    $display(" s5 is s6=%s",s6);  
    $display("s1=%s,s2=%s,s3=%s,s4=%s,s5=%s,s6=%s",s1,s2,s3,s4,s5,s6);
  end
endmodule

