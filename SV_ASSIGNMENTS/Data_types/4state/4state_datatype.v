module four_state_datatypes;
  
  reg rdata;  // >=1 bit unsigned
  logic ldata;   //  >=1 bit unsigned
  integer idata;    //32 bit signed
  time tdata;  //64 bit unsigned
  real redata;   //64 bit unsigned
  wire wdata;  //>=1 bit unsigned
  
  initial begin
    
    
    $display("Before initialization");
    $display("rdata=%b",rdata);
    $display("ldata=%b",ldata);
    $display("idata=%b",idata);
    $display("tdata=%b",tdata);
    $display("redata=%b",redata);
    $display("wdata=%b",wdata);
    
    
    $display("After initialization");
    rdata=3'bx11;
    ldata=4'b0z1;
    idata=32'h10xz_xz11;
    tdata=64'hzzxx_xx00_1z1z_x0xz;
    redata=64'hzzzz_xxxx_1111_0000;

    $display("rdata=%b",rdata);
    $display("ldata=%b",ldata);
    $display("idata=%b",idata);
    $display("tdata=%b",tdata);
    $display("redata=%b",redata);

    
  end
  
  
endmodule
