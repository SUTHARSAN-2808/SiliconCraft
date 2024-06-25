module static_type_casting;
  
  integer inte_data;
  int int_data;
  real r_data;
  byte b_data;
  logic l_data;
  longint long_data;
  
  initial begin
    
    inte_data=32'hxx01_zz11_1111_xxx1;
    $display("inte_data=%b",inte_data);
    int_data=int'(inte_data);
    $display("int_data=%b",int_data);
    
    r_data=8.4089;
    $display(r_data);
    b_data=byte'(r_data);
    $display(b_data);
  end
  
endmodule
